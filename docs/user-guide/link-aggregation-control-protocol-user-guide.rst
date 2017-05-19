.. _lacp-user-guide:

Link Aggregation Control Protocol User Guide
============================================

Overview
--------

This section contains information about how to use the LACP plugin
project with OpenDaylight, including configurations.

Link Aggregation Control Protocol Architecture
----------------------------------------------

The LACP Project within OpenDaylight implements Link Aggregation Control
Protocol (LACP) as an MD-SAL service module and will be used to
auto-discover and aggregate multiple links between an OpenDaylight
controlled network and LACP-enabled endpoints or switches. The result is
the creation of a logical channel, which represents the aggregation of
the links. Link aggregation provides link resiliency and bandwidth
aggregation. This implementation adheres to IEEE Ethernet specification
`802.3ad <http://www.ieee802.org/3/hssg/public/apr07/frazier_01_0407.pdf>`__.

Configuring Link Aggregation Control Protocol
---------------------------------------------

This feature can be enabled in the Karaf console of the OpenDaylight
Karaf distribution by issuing the following command:

::

    feature:install odl-lacp-ui

.. note::

    1. Ensure that legacy (non-OpenFlow) switches are configured with
       LACP mode active with a long timeout to allow for the LACP plugin
       in OpenDaylight to respond to its messages.

    2. Flows that want to take advantage of LACP-configured Link
       Aggregation Groups (LAGs) must explicitly use a OpenFlow group
       table entry created by the LACP plugin. The plugin only creates
       group table entries, it does not program any flows on its own.

Administering or Managing Link Aggregation Control Protocol
-----------------------------------------------------------

LACP-discovered network inventory and network statistics can be viewed
using the following REST APIs.

1. List of aggregators available for a node:

   ::

       http://<ControllerIP>:8181/restconf/operational/opendaylight-inventory:nodes/node/<node-id>

   Aggregator information will appear within the ``<lacp-aggregators>``
   XML tag.

2. To view only the information of an aggregator:

   ::

       http://<ControllerIP>:8181/restconf/operational/opendaylight-inventory:nodes/node/<node-id>/lacp-aggregators/<agg-id>

   The group ID associated with the aggregator can be found inside the
   ``<lag-groupid>`` XML tag.

   The group table entry information for the ``<lag-groupid>`` added for
   the aggregator is also available in the ``opendaylight-inventory``
   node database.

3. To view physical port information.

   ::

       http://<ControllerIP>:8181/restconf/operational/opendaylight-inventory:nodes/node/<node-id>/node-connector/<node-connector-id>

   Ports that are associated with an aggregator will have the tag
   ``<lacp-agg-ref>`` updated with valid aggregator information.

Tutorials
---------

The below tutorial demonstrates LACP LAG creation for a sample mininet
topology.

Sample LACP Topology creation on Mininet
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    sudo mn --controller=remote,ip=<Controller IP> --topo=linear,1 --switch ovsk,protocols=OpenFlow13

The above command will create a virtual network consisting of a switch
and a host. The switch will be connected to the controller.

Once the topology is discovered, verify the presence of a flow entry
with "dl\_type" set to "0x8809" to handle LACP packets using the below
ovs-ofctl command:

::

    ovs-ofctl -O OpenFlow13 dump-flows s1
     OFPST_FLOW reply (OF1.3) (xid=0x2):
     cookie=0x300000000000001e, duration=60.067s, table=0, n_packets=0, n_bytes=0, priority=5,dl_dst=01:80:c2:00:00:02,dl_type=0x8809 actions=CONTROLLER:65535

Configure an additional link between the switch (s1) and host (h1) using
the below command on mininet shell to aggregate 2 links:

::

    mininet> py net.addLink(s1, net.get('h1'))
    mininet> py s1.attach('s1-eth2')

The LACP module will listen for LACP control packets that are generated
from legacy switch (non-OpenFlow enabled). In our example, host (h1)
will act as a LACP packet generator. In order to generate the LACP
control packets, a bond interface has to be created on the host (h1)
with mode type set to LACP with long-timeout. To configure bond
interface, create a new file bonding.conf under the /etc/modprobe.d/
directory and insert the below lines in this new file:

::

    alias bond0 bonding
    options bonding mode=4

Here mode=4 is referred to LACP and the default timeout is set to long.

Enable bond interface and associate both physical interface h1-eth0 &
h1-eth1 as members of the bond interface on host (h1) using the below
commands on the mininet shell:

::

    mininet> py net.get('h1').cmd('modprobe bonding')
    mininet> py net.get('h1').cmd('ip link add bond0 type bond')
    mininet> py net.get('h1').cmd('ip link set bond0 address <bond-mac-address>')
    mininet> py net.get('h1').cmd('ip link set h1-eth0 down')
    mininet> py net.get('h1').cmd('ip link set h1-eth0 master bond0')
    mininet> py net.get('h1').cmd('ip link set h1-eth1 down')
    mininet> py net.get('h1').cmd('ip link set h1-eth1 master bond0')
    mininet> py net.get('h1').cmd('ip link set bond0 up')

Once the bond0 interface is up, the host (h1) will send LACP packets to
the switch (s1). The LACP Module will then create a LAG through exchange
of LACP packets between the host (h1) and switch (s1). To view the bond
interface output on the host (h1) side:

::

    mininet> py net.get('h1').cmd('cat /proc/net/bonding/bond0')
    Ethernet Channel Bonding Driver: v3.7.1 (April 27, 2011)
    Bonding Mode: IEEE 802.3ad Dynamic link aggregation
    Transmit Hash Policy: layer2 (0)
    MII Status: up
    MII Polling Interval (ms): 100
    Up Delay (ms): 0
    Down Delay (ms): 0
    802.3ad info
    LACP rate: slow
    Min links: 0
    Aggregator selection policy (ad_select): stable
    Active Aggregator Info:
            Aggregator ID: 1
            Number of ports: 2
            Actor Key: 33
            Partner Key: 27
            Partner Mac Address: 00:00:00:00:01:01

::

    Slave Interface: h1-eth0
    MII Status: up
    Speed: 10000 Mbps
    Duplex: full
    Link Failure Count: 0
    Permanent HW addr: 00:00:00:00:00:11
    Aggregator ID: 1
    Slave queue ID: 0

::

    Slave Interface: h1-eth1
    MII Status: up
    Speed: 10000 Mbps
    Duplex: full
    Link Failure Count: 0
    Permanent HW addr: 00:00:00:00:00:12
    Aggregator ID: 1
    Slave queue ID: 0

A corresponding group table entry would be created on the OpenFlow
switch (s1) with "type" set to "select" to perform the LAG
functionality. To view the group entries:

::

    mininet>ovs-ofctl -O Openflow13 dump-groups s1
    OFPST_GROUP_DESC reply (OF1.3) (xid=0x2):
     group_id=60169,type=select,bucket=weight:0,actions=output:1,output:2

To apply the LAG functionality on the switches, the flows should be
configured with action set to GroupId instead of output port. A sample
add-flow configuration with output action set to GroupId:

::

    sudo ovs-ofctl -O Openflow13 add-flow s1 dl_type=0x0806,dl_src=SRC_MAC,dl_dst=DST_MAC,actions=group:60169

