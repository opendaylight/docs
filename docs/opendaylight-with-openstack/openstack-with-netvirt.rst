OpenStack with NetVirt
====================

**Prerequisites**: OpenDaylight requires Java 1.8.0.

* On the control host, `Download
  the latest OpenDaylight release <_ODL_Downloads>` (at the time of writing,
  this is Boron SR1)
* Uncompress it as root, and start OpenDaylight (you can start OpenDaylight
  by running karaf directly, but exiting from the shell will shut it down):

.. code-block:: bash

    tar xvfz distribution-karaf-0.5.1-Boron-SR1.tar.gz
    cd distribution-karaf-0.5.1-Boron-SR1
    ./bin/start # Start OpenDaylight as a server process

* Connect to the Karaf shell, and install the odl-netvirt-openstack bundle,
  dlux and their dependencies:

.. code-block:: bash

    ./bin/client # Connect to OpenDaylight with the client
    opendaylight-user@root> feature:install odl-base-all odl-aaa-authn odl-restconf odl-nsf-all odl-adsal-northbound odl-mdsal-apidocs odl-netvirt-openstack odl-ovsdb-northbound odl-dlux-core

* If everything is installed correctly, you should now be able to log in to
  the dlux interface on http://$CONTROL_HOST:8181/dlux/index.html - the
  default username and password is "admin/admin" (see screenshot below)

.. figure:: images/dlux-default.png

Ensuring OpenStack network state is clean
-----------------------------------------

When using OpenDaylight as the Neutron back-end, ODL expects to be the only
source of truth for Neutron configurations. Because of this, it is
necessary to remove existing OpenStack configurations to
give OpenDaylight a clean slate.

* Delete instances

.. code-block:: bash

    nova list
    nova delete <instance names>

* Remove link from subnets to routers

.. code-block:: bash

    neutron subnet-list
    neutron router-list
    neutron router-port-list <router name>
    neutron router-interface-delete <router name> <subnet ID or name>

* Delete subnets, nets, routers

.. code-block:: bash

    neutron subnet-delete <subnet name>
    neutron net-list
    neutron net-delete <net name>
    neutron router-delete <router name>

* Check that all ports have been cleared - at this point, this should be an
  empty list

.. code-block:: bash

    neutron port-list


Ensure Neutron is stopped
-------------------------

While Neutron is managing the OVS instances on compute and control nodes,
OpenDaylight and Neutron can be in conflict. To prevent issues, we turn off
Neutron server on the network controller, and Neutron's Open vSwitch agents
on all hosts.

* Turn off neutron-server on control node

.. code-block:: bash

    systemctl stop neutron-server
    systemctl stop neutron-l3-agent

* On each node in the cluster, shut down and disable Neutron's agent services to ensure that they do not restart after a reboot:

.. code-block:: bash

    systemctl stop neutron-openvswitch-agent
    systemctl disable neutron-openvswitch-agent
    systemctl stop neutron-l3-agent
    systemctl disable neutron-l3-agent


Configuring Open vSwitch to be managed by OpenDaylight
------------------------------------------------------

On each host (both compute and control nodes) we will clear the pre-existing
Open vSwitch config and set OpenDaylight to manage the switch:

* Stop the Open vSwitch service, and clear existing OVSDB (ODL expects to
  manage vSwitches completely)

.. code-block:: bash

    systemctl stop openvswitch
    rm -rf /var/log/openvswitch/*
    rm -rf /etc/openvswitch/conf.db
    systemctl start openvswitch

* At this stage, your Open vSwitch configuration should be empty:

.. code-block:: bash

    [root@godl-compute2 ~]# ovs-vsctl show
    9f3b38cb-eefc-4bc7-828b-084b1f66fbfd
        ovs_version: "2.1.3"

* Set OpenDaylight as the manager on all nodes

.. code-block:: bash

    ovs-vsctl set-manager tcp:${CONTROL_HOST}:6640


* You should now see a new section in your Open vSwitch configuration
  showing that you are connected to the OpenDaylight server, and OpenDaylight
  will automatically create a br-int bridge:

.. code-block:: bash

    [root@godl-compute2 ~]# ovs-vsctl show
    9f3b38cb-eefc-4bc7-828b-084b1f66fbfd
        Manager "tcp:172.16.21.56:6640"
            is_connected: true
        Bridge br-int
            Controller "tcp:172.16.21.56:6633"
            fail_mode: secure
            Port br-int
                Interface br-int
        ovs_version: "2.1.3"


* (BUG WORKAROUND) If SELinux is enabled, you may not have a security
  context in place which allows Open vSwitch remote administration. If you
  do not see the result above (specifically, if you do not see
  "is_connected: true" in the Manager section), set SELinux to Permissive
  mode on all nodes and ensure it stays that way after boot:

.. code-block:: bash

    setenforce 0
    sed -i -e 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/selinux/config

* Make sure all nodes, including the control node, are connected to
  OpenDaylight
* If you reload DLUX, you should now see that all of your Open vSwitch nodes
  are now connected to OpenDaylight

.. figure:: images/dlux-with-switches.png

* If something has gone wrong, check ``data/log/karaf.log`` under
  the OpenDaylight distribution directory. If you do not see any interesting
  log entries, set logging for netvirt to TRACE level inside Karaf and try again:

.. code-block:: bash

    log:set TRACE netvirt


Configuring Neutron to use OpenDaylight
---------------------------------------

Once you have configured the vSwitches to connect to OpenDaylight, you can
now ensure that OpenStack Neutron is using OpenDaylight.

This requires the neutron networking-odl module to be installed.
``pip install networking-odl`` # TODO is this correct?

First, ensure that port 8080 (which will be used by OpenDaylight to listen
for REST calls) is available. By default, swift-proxy-service listens on the
same port, and you may need to move it (to another port or another host), or
disable that service. I moved it to port 8081 by editing
``/etc/swift/proxy-server.conf`` and
``/etc/cinder/cinder.conf``, modifying iptables appropriately, and
restarting swift-proxy-service and OpenDaylight.
Alternatively, ODL can be configured to listen on a different port, by modifying ``etc/jetty.conf``.

* Configure Neutron to use OpenDaylight's ML2 driver:

.. code-block:: bash

    crudini --set /etc/neutron/plugins/ml2/ml2_conf.ini ml2 mechanism_drivers opendaylight
    crudini --set /etc/neutron/plugins/ml2/ml2_conf.ini ml2 tenant_network_types vxlan

    cat <<EOT>> /etc/neutron/plugins/ml2/ml2_conf.ini
    [ml2_odl]
    url = http://${CONTROL_HOST}:8080/controller/nb/v2/neutron
    password = admin
    username = admin
    EOT

* Configure Neutron to use OpenDaylight's odl-router service plugin for L3 connectivity:

.. code-block:: bash
    crudini --set /etc/neutron/plugins/neutron.conf DEFAULT service_plugins odl-router

* Configure Neutron DHCP agent to provide metadata services:

.. code-block:: bash
    crudini --set /etc/neutron/plugins/dhcp_agent.ini DEFAULT force_metadata True

* Reset Neutron's ML2 database

.. code-block:: bash

    mysql -e "drop database if exists neutron_ml2;"
    mysql -e "create database neutron_ml2 character set utf8;"
    mysql -e "grant all on neutron_ml2.* to 'neutron'@'%';"
    neutron-db-manage --config-file /usr/share/neutron/neutron-dist.conf --config-file /etc/neutron/neutron.conf \
    --config-file /etc/neutron/plugin.ini upgrade head

* Restart neutron-server:

.. code-block:: bash

    systemctl start neutron-server


Verifying it works
------------------

* Verify that OpenDaylight's ML2 interface is working:

.. code-block:: bash

    curl -u admin:admin http://${CONTROL_HOST}:8080/controller/nb/v2/neutron/networks

    {
       "networks" : [ ]
    }

If this does not work or gives an error, check Neutron's log file in
``/var/log/neutron/server.log``. Error messages here should give
some clue as to what the problem is in the connection with OpenDaylight

* Create a net, subnet, router, connect ports, and start an instance using
  the Neutron CLI:

.. code-block:: bash

    neutron router-create router1
    neutron net-create private
    neutron subnet-create private --name=private_subnet 10.10.5.0/24
    neutron router-interface-add router1 private_subnet
    nova boot --flavor <flavor> --image <image id> --nic net-id=<network id> test1
    nova boot --flavor <flavor> --image <image id> --nic net-id=<network id> test2

At this point, you have confirmed that OpenDaylight is creating network
end-points for instances on your network and managing traffic to them.

Congratulations! You're done!

Adding an external network for floating IP connectivity
-------------------------------------------------------

* TODO Provide info about provider_mappings, adding of port/bridge

Loading OpenDaylight with devstack
----------------------------------

* The easiest way to load and OpenStack setup using OpenDaylight is by using devstack.
  The following lines need to be added to your local.conf:
  More details on using devstack can be found in the following links:
  devstack: ``http://docs.openstack.org/developer/devstack/guides/single-machine.html``
  devstack networking-odl: ``https://github.com/openstack/networking-odl/blob/master/devstack/README.rst``

.. code-block:: bash

   enable_plugin networking-odl http://git.openstack.org/openstack/networking-odl <branch>
   ODL_MODE=allinone
   Q_ML2_PLUGIN_MECHANISM_DRIVERS=opendaylight,logger
   ODL_GATE_SERVICE_PROVIDER=vpnservice
   disable_service q-l3
   ML2_L3_PLUGIN=odl-router
   ODL_PROVIDER_MAPPINGS=physnet1:eth1

Debugging
---------

* TODO DHCP Issues - VM isn't receiving an IP address via DHCP:
  Check if the DHCP requests are reaching the qdhcp agent:
.. code-block:: bash

    OpenStack controller:
    sudo ip netns
    sudo ip netns exec qdhcp-xxxxx ifconfig
    sudo ip netns exec qdhcp-xxxxx tcpdump -nei tapxxxxx
   
    VM:
    sudo ifdown eth0 ; sudo ifup eth0
  
  If the requests aren't reaching qdhcp:
    * Verify VxLAN tunnels exist between compute and control nodes.
    
  If the requests are reaching qdhcp, but the response isn't arriving to the VM:

* TODO Floating IP Issues - VM can't be reached via the floating IP address:
.. code-block:: bash

    TODO
 
.. _ODL_Downloads: https://www.opendaylight.org/software/downloads
