.. _snmp4sdn-user-guide:

SNMP4SDN User Guide
===================

Overview
--------

We propose a southbound plugin that can control the off-the-shelf
commodity Ethernet switches for the purpose of building SDN using
Ethernet switches. For Ethernet switches, forwarding table, VLAN table,
and ACL are where one can install flow configuration on, and this is
done via SNMP and CLI in the proposed plugin. In addition, some settings
required for Ethernet switches in SDN, e.g., disabling STP and flooding,
are proposed.

.. figure:: ./images/snmp4sdn_in_odl_architecture.jpg
   :alt: SNMP4SDN as an OpenDaylight southbound plugin

   SNMP4SDN as an OpenDaylight southbound plugin

Configuration
-------------

Just follow the steps:

Prepare the switch list database file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A sample is
`here <https://wiki.opendaylight.org/view/SNMP4SDN:switch_list_file>`__,
and we suggest to save it as */etc/snmp4sdn\_swdb.csv* so that SNMP4SDN
Plugin can automatically load this file. Note that the first line is
title and should not be removed.

Prepare the vendor-specific configuration file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A sample is
`here <https://wiki.opendaylight.org/view/SNMP4SDN:snmp4sdn_VendorSpecificSwitchConfig_file>`__,
and we suggest to save it as
*/etc/snmp4sdn\_VendorSpecificSwitchConfig.xml* so that SNMP4SDN Plugin
can automatically load this file.

Install SNMP4SDN Plugin
-----------------------

If using SNMP4SDN Plugin provided in OpenDaylight release, just do the
following from the Karaf CLI:

::

    feature:repo-add mvn:org.opendaylight.snmp4sdn/features-snmp4sdn/0.8.1-SNAPSHOT/xml/features

::

    feature:install odl-snmp4sdn-all

Troubleshooting
---------------

Installation Troubleshooting
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Feature installation failure
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When trying to install a feature, if the following failure occurs:

::

    Error executing command: Could not start bundle ...
    Reason: Missing Constraint: Require-Capability: osgi.ee; filter="(&(osgi.ee=JavaSE)(version=1.7))"

A workaround: exit Karaf, and edit the file
<karaf\_directory>/etc/config.properties, remove the line
*${services-${karaf.framework}}* and the ", \\" in the line above.

Runtime Troubleshooting
~~~~~~~~~~~~~~~~~~~~~~~

Problem starting SNMP Trap Interface
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

It is possible to get the following exception during controller startup.
(The error would not be printed in Karaf console, one may see it in
<karaf\_directory>/data/log/karaf.log)

::

    2014-01-31 15:00:44.688 CET [fileinstall-./plugins] WARN  o.o.snmp4sdn.internal.SNMPListener - Problem starting SNMP Trap Interface: {}
     java.net.BindException: Permission denied
            at java.net.PlainDatagramSocketImpl.bind0(Native Method) ~[na:1.7.0_51]
            at java.net.AbstractPlainDatagramSocketImpl.bind(AbstractPlainDatagramSocketImpl.java:95) ~[na:1.7.0_51]
            at java.net.DatagramSocket.bind(DatagramSocket.java:376) ~[na:1.7.0_51]
            at java.net.DatagramSocket.<init>(DatagramSocket.java:231) ~[na:1.7.0_51]
            at java.net.DatagramSocket.<init>(DatagramSocket.java:284) ~[na:1.7.0_51]
            at java.net.DatagramSocket.<init>(DatagramSocket.java:256) ~[na:1.7.0_51]
            at org.snmpj.SNMPTrapReceiverInterface.<init>(SNMPTrapReceiverInterface.java:126) ~[org.snmpj-1.4.3.jar:na]
            at org.snmpj.SNMPTrapReceiverInterface.<init>(SNMPTrapReceiverInterface.java:99) ~[org.snmpj-1.4.3.jar:na]
            at org.opendaylight.snmp4sdn.internal.SNMPListener.<init>(SNMPListener.java:75) ~[bundlefile:na]
            at org.opendaylight.snmp4sdn.core.internal.Controller.start(Controller.java:174) [bundlefile:na]
    ...

This indicates that the controller is being run as a user which does not
have sufficient OS privileges to bind the SNMPTRAP port (162/UDP)

Switch list file missing
~~~~~~~~~~~~~~~~~~~~~~~~

The SNMP4SDN Plugin needs a switch list file, which is necessary for
topology discovery and should be provided by the administrator (so
please prepare one for the first time using SNMP4SDN Plugin, here is the
`sample <https://wiki.opendaylight.org/view/SNMP4SDN:switch_list_file>`__).
The default file path is /etc/snmp4sdn\_swdb.csv. SNMP4SDN Plugin would
automatically load this file and start topology discovery. If this file
is not ready there, the following message like this will pop up:

::

    2016-02-02 04:21:52,476 | INFO| Event Dispatcher | CmethUtil                        | 466 - org.opendaylight.snmp4sdn - 0.3.0.SNAPSHOT | CmethUtil.readDB() err: {}
    java.io.FileNotFoundException: /etc/snmp4sdn_swdb.csv (No such file or directory)
        at java.io.FileInputStream.open0(Native Method)[:1.8.0_65]
        at java.io.FileInputStream.open(FileInputStream.java:195)[:1.8.0_65]
        at java.io.FileInputStream.<init>(FileInputStream.java:138)[:1.8.0_65]
        at java.io.FileInputStream.<init>(FileInputStream.java:93)[:1.8.0_65]
        at java.io.FileReader.<init>(FileReader.java:58)[:1.8.0_65]
        at org.opendaylight.snmp4sdn.internal.util.CmethUtil.readDB(CmethUtil.java:66)
        at org.opendaylight.snmp4sdn.internal.util.CmethUtil.<init>(CmethUtil.java:43)
    ...

Configuration
-------------

Just follow the steps:

1. Prepare the switch list database file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A sample is
`here <https://wiki.opendaylight.org/view/SNMP4SDN:switch_list_file>`__,
and we suggest to save it as */etc/snmp4sdn\_swdb.csv* so that SNMP4SDN
Plugin can automatically load this file.

.. note::

    The first line is title and should not be removed.

2. Prepare the vendor-specific configuration file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A sample is
`here <https://wiki.opendaylight.org/view/SNMP4SDN:snmp4sdn_VendorSpecificSwitchConfig_file>`__,
and we suggest to save it as
*/etc/snmp4sdn\_VendorSpecificSwitchConfig.xml* so that SNMP4SDN Plugin
can automatically load this file.

3. Install SNMP4SDN Plugin
~~~~~~~~~~~~~~~~~~~~~~~~~~

If using SNMP4SDN Plugin provided in OpenDaylight release, just do the
following:

Launch Karaf in Linux console:

::

    cd <Boron_controller_directory>/bin
    (for example, cd distribution-karaf-x.x.x-Boron/bin)

::

    ./karaf

Then in Karaf console, execute:

::

    feature:install odl-snmp4sdn-all

4. Load switch list
~~~~~~~~~~~~~~~~~~~

For initialization, we need to feed SNMP4SDN Plugin the switch list.
Actually SNMP4SDN Plugin automatically try to load the switch list at
/etc/snmp4sdn\_swdb.csv if there is. If so, this step could be skipped.
In Karaf console, execute:

::

    snmp4sdn:ReadDB <switch_list_path>
    (For example, snmp4sdn:ReadDB /etc/snmp4sdn_swdb.csv)
    (in Windows OS, For example, snmp4sdn:ReadDB D://snmp4sdn_swdb.csv)

A sample is
`here <https://wiki.opendaylight.org/view/SNMP4SDN:switch_list_file>`__,
and we suggest to save it as */etc/snmp4sdn\_swdb.csv* so that SNMP4SDN
Plugin can automatically load this file.

.. note::

    The first line is title and should not be removed.

5. Show switch list
~~~~~~~~~~~~~~~~~~~

::

    snmp4sdn:PrintDB

Tutorial
--------

Topology Service
~~~~~~~~~~~~~~~~

Execute topology discovery
^^^^^^^^^^^^^^^^^^^^^^^^^^

The SNMP4SDN Plugin automatically executes topology discovery on
startup. One may use the following commands to invoke topology discovery
manually. Note that you may need to wait for seconds for itto complete.

.. note::

    Currently, one needs to manually execute *snmp4sdn:TopoDiscover*
    first (just once), then later the automatic topology discovery can
    be successful. If switches change (switch added or removed),
    *snmp4sdn:TopoDiscover* is also required. A future version will fix
    it to eliminate these requirements.

::

    snmp4sdn:TopoDiscover

If one like to discover all inventory (i.e. switches and their ports)
but not edges, just execute "TopoDiscoverSwitches":

::

    snmp4sdn:TopoDiscoverSwitches

If one like to only discover all edges but not inventory, just execute
"TopoDiscoverEdges":

::

    snmp4sdn:TopoDiscoverEdges

You can also trigger topology discovery via the REST API by using
``curl`` from the Linux console (or any other REST client):

::

    curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/topology:rediscover

You can change the periodic topology discovery interval via a REST API:

::

    curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/topology:set-discovery-interval -d "{"input":{"interval-second":'<interval_time>'}}"
    For example, set the interval as 15 seconds:
    curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/topology:set-discovery-interval -d "{"input":{"interval-second":'15'}}"

Show the topology
^^^^^^^^^^^^^^^^^

SNMP4SDN Plugin supports to show topology via REST API:

-  Get topology

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/topology:get-edge-list

-  Get switch list

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/topology:get-node-list

-  Get switches' ports list

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/topology:get-node-connector-list

-  The three commands above are just for user to get the latest topology
   discovery result, it does not trigger SNMP4SDN Plugin to do topology
   discovery.

-  To trigger SNMP4SDN Plugin to do topology discover, as described in
   aforementioned *Execute topology discovery*.

Flow configuration
~~~~~~~~~~~~~~~~~~

FDB configuration
^^^^^^^^^^^^^^^^^

SNMP4SDN supports to add entry on FDB table via REST API:

-  Get FDB table

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/fdb:get-fdb-table -d "{input:{"node-id":<switch-mac-address-in-number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/fdb:get-fdb-table -d "{input:{"node-id":158969157063648}}"

-  Get FDB table entry

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/fdb:get-fdb-entry -d "{input:{"node-id":<switch-mac-address-in-number>, "vlan-id":<vlan-id-in-number>, "dest-mac-addr":<destination-mac-address-in-number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/fdb:get-fdb-entry -d "{input:{"node-id":158969157063648, "vlan-id":1, "dest-mac-addr":158969157063648}}"

-  Set FDB table entry

   (Notice invalid value: (1) non unicast mac (2) port not in the VLAN)

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/fdb:set-fdb-entry -d "{input:{"node-id":<switch-mac-address-in-number>, "vlan-id":<vlan-id-in-number>, "dest-mac-addr":<destination-mac-address-in-number>, "port":<port-in-number>, "type":'<type>'}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/fdb:set-fdb-entry -d "{input:{"node-id":158969157063648, "vlan-id":1, "dest-mac-addr":187649984473770, "port":23, "type":'MGMT'}}"

-  Delete FDB table entry

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/fdb:del-fdb-entry -d "{input:{"node-id":<switch-mac-address-in-number>, "vlan-id":<vlan-id-in-number>, "dest-mac-addr":<destination-mac-address-in-number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/fdb:del-fdb-entry -d "{input:{"node-id":158969157063648, "vlan-id":1, "dest-mac-addr":187649984473770}}"

VLAN configuration
^^^^^^^^^^^^^^^^^^

SNMP4SDN supports to add entry on VLAN table via REST API:

-  Get VLAN table

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/vlan:get-vlan-table -d "{input:{node-id:<switch-mac-address-in-number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/vlan:get-vlan-table -d "{input:{node-id:158969157063648}}"

-  Add VLAN

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/vlan:add-vlan -d "{"input":{"node-id":<switch-mac-address-in-number>, "vlan-id":<vlan-id-in-number>, "vlan-name":'<vlan-name>'}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/vlan:add-vlan -d "{"input":{"node-id":158969157063648, "vlan-id":123, "vlan-name":'v123'}}"

-  Delete VLAN

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/vlan:delete-vlan -d "{"input":{"node-id":<switch-mac-address-in-number>, "vlan-id":<vlan-id-in-number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/vlan:delete-vlan -d "{"input":{"node-id":158969157063648, "vlan-id":123}}"

-  Add VLAN and set ports

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/vlan:add-vlan-and-set-ports -d "{"input":{"node-id":<switch-mac-address-in-number>, "vlan-id":<vlan-id-in-number>, "vlan-name":'<vlan-name>', "tagged-port-list":'<tagged-ports-separated-by-comma>', "untagged-port-list":'<untagged-ports-separated-by-comma>'}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/vlan:add-vlan-and-set-ports -d "{"input":{"node-id":158969157063648, "vlan-id":123, "vlan-name":'v123', "tagged-port-list":'1,2,3', "untagged-port-list":'4,5,6'}}"

-  Set VLAN ports

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/vlan:set-vlan-ports -d "{"input":{"node-id":<switch-mac-address-in-number>, "vlan-id":<vlan-id-in-number>, "tagged-port-list":'<tagged-ports-separated-by-comma>', "untagged-port-list":'<untagged-ports-separated-by-comma>'}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/vlan:set-vlan-ports -d "{"input":{"node-id":"158969157063648", "vlan-id":"123", "tagged-port-list":'4,5', "untagged-port-list":'2,3'}}"

ACL configuration
^^^^^^^^^^^^^^^^^

SNMP4SDN supports to add flow on ACL table via REST API. However, it is
so far only implemented for the D-Link DGS-3120 switch.

ACL configuration via CLI is vendor-specific, and SNMP4SDN will support
configuration with vendor-specific CLI in future release.

To do ACL configuration using the REST APIs, use commands like the
following:

-  Clear ACL table

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/acl:clear-acl-table -d "{"input":{"nodeId":<switch-mac-address-in-number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/acl:clear-acl-table -d "{"input":{"nodeId":158969157063648}}"

-  Create ACL profile (IP layer)

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/acl:create-acl-profile -d "{input:{"nodeId":<switch-mac-address-in-number>,"profile-id":<profile_id_in_number>,"profile-name":'<profile_name>',"acl-layer":'IP',"vlan-mask":<vlan_mask_in_number>,"src-ip-mask":'<src_ip_mask>',"dst-ip-mask":"<destination_ip_mask>"}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/acl:create-acl-profile -d "{input:{"nodeId":158969157063648,"profile-id":1,"profile-name":'profile_1',"acl-layer":'IP',"vlan-mask":1,"src-ip-mask":'255.255.0.0',"dst-ip-mask":'255.255.255.255'}}"

-  Create ACL profile (MAC layer)

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/acl:create-acl-profile -d "{input:{"nodeId":<switch-mac-address-in-number>,"profile-id":<profile_id_in_number>,"profile-name":'<profile_name>',"acl-layer":'ETHERNET',"vlan-mask":<vlan_mask_in_number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/acl:create-acl-profile -d "{input:{"nodeId":158969157063648,"profile-id":2,"profile-name":'profile_2',"acl-layer":'ETHERNET',"vlan-mask":4095}}"

-  Delete ACL profile

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/acl:del-acl-profile -d "{input:{"nodeId":<switch-mac-address-in-number>,"profile-id":<profile_id_in_number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/acl:del-acl-profile -d "{input:{"nodeId":158969157063648,"profile-id":1}}"

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/acl:del-acl-profile -d "{input:{"nodeId":<switch-mac-address-in-number>,"profile-name":"<profile_name>"}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/acl:del-acl-profile -d "{input:{"nodeId":158969157063648,"profile-name":'profile_2'}}"

-  Set ACL rule

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/acl:set-acl-rule -d "{input:{"nodeId":<switch-mac-address-in-number>,"profile-id":<profile_id_in_number>,"profile-name":'<profile_name>',"rule-id":<rule_id_in_number>,"port-list":[<port_number>,<port_number>,...],"acl-layer":'<acl_layer>',"vlan-id":<vlan_id_in_number>,"src-ip":"<src_ip_address>","dst-ip":'<dst_ip_address>',"acl-action":'<acl_action>'}}"
       (<acl_layer>: IP or ETHERNET)
       (<acl_action>: PERMIT as permit, DENY as deny)

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/acl:set-acl-rule -d "{input:{"nodeId":158969157063648,"profile-id":1,"profile-name":'profile_1',"rule-id":1,"port-list":[1,2,3],"acl-layer":'IP',"vlan-id":2,"src-ip":'1.1.1.1',"dst-ip":'2.2.2.2',"acl-action":'PERMIT'}}"

-  Delete ACL rule

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/acl:del-acl-rule -d "{input:{"nodeId":<switch-mac-address-in-number>,"profile-id":<profile_id_in_number>,"profile-name":'<profile_name>',"rule-id":<rule_id_in_number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/acl:del-acl-rule -d "{input:{"nodeId":158969157063648,"profile-id":1,"profile-name":'profile_1',"rule-id":1}}"

Special configuration
~~~~~~~~~~~~~~~~~~~~~

SNMP4SDN supports setting the following special configurations via REST
API:

-  Set STP port state

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/config:set-stp-port-state -d "{input:{"node-id":<switch-mac-address-in-number>, "port":<port_number>, enable:<true_or_false>}}"
       (true: enable, false: disable)

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/config:set-stp-port-state -d "{input:{"node-id":158969157063648, "port":2, enable:false}}"

-  Get STP port state

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/config:get-stp-port-state -d "{input:{"node-id":<switch-mac-address-in-number>, "port":<port_number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/config:get-stp-port-state -d "{input:{"node-id":158969157063648, "port":2}}"

-  Get STP port root

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/config:get-stp-port-root -d "{input:{"node-id":<switch-mac-address-in-number>, "port":<port_number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/config:get-stp-port-root -d "{input:{"node-id":158969157063648, "port":2}}"

-  Enable STP

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/config:enable-stp -d "{input:{"node-id":<switch-mac-address-in-number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/config:enable-stp -d "{input:{"node-id":158969157063648}}"

-  Disable STP

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/config:disable-stp -d "{input:{"node-id":<switch-mac-address-in-number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/config:disable-stp -d "{input:{"node-id":158969157063648}}"

-  Get ARP table

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/config:get-arp-table -d "{input:{"node-id":<switch-mac-address-in-number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/config:get-arp-table -d "{input:{"node-id":158969157063648}}"

-  Set ARP entry

   (Notice to give IP address with subnet prefix)

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/config:set-arp-entry -d "{input:{"node-id":<switch-mac-address-in-number>, "ip-address":'<ip_address>', "mac-address":<mac_address_in_number>}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/config:set-arp-entry -d "{input:{"node-id":158969157063648, "ip-address":'10.217.9.9', "mac-address":1}}"

-  Get ARP entry

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/config:get-arp-entry -d "{input:{"node-id":<switch-mac-address-in-number>, "ip-address":'<ip_address>'}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/config:get-arp-entry -d "{input:{"node-id":158969157063648, "ip-address":'10.217.9.9'}}"

-  Delete ARP entry

   ::

       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://<controller_ip_address>:8181/restconf/operations/config:delete-arp-entry -d "{input:{"node-id":<switch-mac-address-in-number>, "ip-address":'<ip_address>'}}"

       For example:
       curl --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X POST http://localhost:8181/restconf/operations/config:delete-arp-entry -d "{input:{"node-id":158969157063648, "ip-address":'10.217.9.9'}}"

Using Postman to invoke REST API
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Besides using the curl tool to invoke REST API, like the examples
aforementioned, one can also use GUI tool like Postman for better data
display.

-  Install Postman: `Install Postman in the Chrome
   browser <https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en>`__

-  In the chrome browser bar enter

   ::

       chrome://apps/

-  Click on Postman.

Example: Get VLAN table using Postman
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

As the screenshot shown below, one needs to fill in required fields.

::

    URL:
    http://<controller_ip_address>:8181/restconf/operations/vlan:get-vlan-table

    Accept header:
    application/json

    Content-type:
    application/json

    Body:
    {input:{"node-id":<node_id>}}
    for example:
    {input:{"node-id":158969157063648}}

.. figure:: ./images/snmp4sdn_getvlantable_postman.jpg
   :alt: Example: Get VLAN table using Postman

   Example: Get VLAN table using Postman

Multi-vendor support
--------------------

So far the supported vendor-specific configurations:

-  Add VLAN and set ports

-  (More functions are TBD)

The SNMP4SDN Plugin would examine whether the configuration is described
in the vendor-specific configuration file. If yes, the configuration
description would be adopted, otherwise just use the default
configuration. For example, adding VLAN and setting the ports is
supported via SNMP standard MIB. However we found some special cases,
for example, certain Accton switch requires to add VLAN first and then
allows to set the ports. So one may describe this in the vendor-specific
configuration file.

A vendor-specific configuration file sample is
`here <https://wiki.opendaylight.org/view/SNMP4SDN:snmp4sdn_VendorSpecificSwitchConfig_file>`__,
and we suggest to save it as
*/etc/snmp4sdn\_VendorSpecificSwitchConfig.xml* so that SNMP4SDN Plugin
can automatically load it.

Help
----

-  `SNMP4SDN Wiki <https://wiki.opendaylight.org/view/SNMP4SDN:Main>`__

-  SNMP4SDN Mailing Lists:
   (`user <https://lists.opendaylight.org/mailman/listinfo/snmp4sdn-users>`__,
   `developer <https://lists.opendaylight.org/mailman/listinfo/snmp4sdn-dev>`__)

-  Latest
   `troubleshooting <https://wiki.opendaylight.org/view/SNMP4SDN:User_Guide#Troubleshooting>`__
   in Wiki
