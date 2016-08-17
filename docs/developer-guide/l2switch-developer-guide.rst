L2Switch Developer Guide
========================

Overview
--------

The L2Switch project provides Layer2 switch functionality.

L2Switch Architecture
---------------------

-  Packet Handler

   -  Decodes the packets coming to the controller and dispatches them
      appropriately

-  Loop Remover

   -  Removes loops in the network

-  Arp Handler

   -  Handles the decoded ARP packets

-  Address Tracker

   -  Learns the Addresses (MAC and IP) of entities in the network

-  Host Tracker

   -  Tracks the locations of hosts in the network

-  L2Switch Main

   -  Installs flows on each switch based on network traffic

Key APIs and Interfaces
-----------------------

-  Packet Handler

-  Loop Remover

-  Arp Handler

-  Address Tracker

-  Host Tracker

-  L2Switch Main

Packet Dispatcher
~~~~~~~~~~~~~~~~~

Classes
^^^^^^^

-  AbstractPacketDecoder

   -  Defines the methods that all decoders must implement

-  EthernetDecoder

   -  The base decoder which decodes the packet into an Ethernet packet

-  ArpDecoder, Ipv4Decoder, Ipv6Decoder

   -  Decodes Ethernet packets into the either an ARP or IPv4 or IPv6
      packet

Further development
^^^^^^^^^^^^^^^^^^^

There is a need for more decoders. A developer can write

-  A decoder for another EtherType, i.e. LLDP.

-  A higher layer decoder for the body of the IPv4 packet or IPv6
   packet, i.e. TCP and UDP.

How to write a new decoder

-  extends AbstractDecoder<A, B>

   -  A refers to the notification that the new decoder consumes

   -  B refers to the notification that the new decoder produces

-  implements xPacketListener

   -  The new decoder must specify which notification it is listening to

-  canDecode method

   -  This method should examine the consumed notification to see
      whether the new decoder can decode the contents of the packet

-  decode method

   -  This method does the actual decoding of the packet

Loop Remover
~~~~~~~~~~~~

Classes
^^^^^^^

-  **LoopRemoverModule**

   -  Reads config subsystem value for *is-install-lldp-flow*

      -  If *is-install-lldp-flow* is true, then an
         **InitialFlowWriter** is created

   -  Creates and initializes the other LoopRemover classes

-  **InitialFlowWriter**

   -  Only created when *is-install-lldp-flow* is true

   -  Installs a flow, which forwards all LLDP packets to the
      controller, on each switch

-  **TopologyLinkDataChangeHandler**

   -  Listens to data change events on the Topology tree

   -  When these changes occur, it waits *graph-refresh-delay* seconds
      and then tells **NetworkGraphImpl** to update

   -  Writes an STP (Spanning Tree Protocol) status of "forwarding" or
      "discarding" to each link in the Topology data tree

      -  Forwarding links can forward packets.

      -  Discarding links cannot forward packets.

-  **NetworkGraphImpl**

   -  Creates a loop-free graph of the network

Configuration
^^^^^^^^^^^^^

-  graph-refresh-delay

   -  Used in TopologyLinkDataChangeHandler

   -  A higher value has the advantage of doing less graph updates, at
      the potential cost of losing some packets because the graph didn’t
      update immediately.

   -  A lower value has the advantage of handling network topology
      changes quicker, at the cost of doing more computation.

-  is-install-lldp-flow

   -  Used in LoopRemoverModule

   -  "true" means a flow that sends all LLDP packets to the controller
      will be installed on each switch

   -  "false" means this flow will not be installed

-  lldp-flow-table-id

   -  The LLDP flow will be installed on the specified flow table of
      each switch

-  lldp-flow-priority

   -  The LLDP flow will be installed with the specified priority

-  lldp-flow-idle-timeout

   -  The LLDP flow will timeout (removed from the switch) if the flow
      doesn’t forward a packet for *x* seconds

-  lldp-flow-hard-timeout

   -  The LLDP flow will timeout (removed from the switch) after *x*
      seconds, regardless of how many packets it is forwarding

Further development
^^^^^^^^^^^^^^^^^^^

No suggestions at the moment.

Validating changes to Loop Remover
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

STP Status information is added to the Inventory data tree.

-  A status of "forwarding" means the link is active and packets are
   flowing on it.

-  A status of "discarding" means the link is inactive and packets are
   not sent over it.

The STP status of a link can be checked through a browser or a REST
Client.

::

    http://10.194.126.91:8080/restconf/operational/opendaylight-inventory:nodes/node/openflow:1/node-connector/openflow:1:2

The STP status should still be there after changes are made.

Arp Handler
~~~~~~~~~~~

Classes
^^^^^^^

-  **ArpHandlerModule**

   -  Reads config subsystem value for *is-proactive-flood-mode*

      -  If *is-proactive-flood-mode* is true, then a
         ProactiveFloodFlowWriter is created

      -  If *is-proactive-flood-mode* is false, then an
         InitialFlowWriter is created

-  **ProactiveFloodFlowWriter**

   -  Only created when *is-proactive-flood-mode* is true

   -  Installs a flood flow on each switch. With this flood flow, a
      packet that doesn’t match any other flows will be
      flooded/broadcast from that switch.

-  **InitialFlowWriter**

   -  Only created when *is-proactive-flood-mode* is false

   -  Installs a flow, which sends all ARP packets to the controller, on
      each switch

-  **ArpPacketHandler**

   -  Only created when *is-proactive-flood-mode* is false

   -  Handles and processes the controller’s incoming ARP packets

   -  Uses **PacketDispatcher** to send the ARP packet back into the
      network

-  **PacketDispatcher**

   -  Only created when *is-proactive-flood-mode* is false

   -  Sends packets out to the network

   -  Uses **InventoryReader** to determine which node-connector to a
      send a packet on

-  **InventoryReader**

   -  Only created when *is-proactive-flood-mode* is false

   -  Maintains a list of each switch’s node-connectors

Configuration
^^^^^^^^^^^^^

-  is-proactive-flood-mode

   -  "true" means that flood flows will be installed on each switch.
      With this flood flow, each switch will flood a packet that doesn’t
      match any other flows.

      -  Advantage: Fewer packets are sent to the controller because
         those packets are flooded to the network.

      -  Disadvantage: A lot of network traffic is generated.

   -  "false" means the previously mentioned flood flows will not be
      installed. Instead an ARP flow will be installed on each switch
      that sends all ARP packets to the controller.

      -  Advantage: Less network traffic is generated.

      -  Disadvantage: The controller handles more packets (ARP requests
         & replies) and the ARP process takes longer than if there were
         flood flows.

-  flood-flow-table-id

   -  The flood flow will be installed on the specified flow table of
      each switch

-  flood-flow-priority

   -  The flood flow will be installed with the specified priority

-  flood-flow-idle-timeout

   -  The flood flow will timeout (removed from the switch) if the flow
      doesn’t forward a packet for *x* seconds

-  flood-flow-hard-timeout

   -  The flood flow will timeout (removed from the switch) after *x*
      seconds, regardless of how many packets it is forwarding

-  arp-flow-table-id

   -  The ARP flow will be installed on the specified flow table of each
      switch

-  arp-flow-priority

   -  The ARP flow will be installed with the specified priority

-  arp-flow-idle-timeout

   -  The ARP flow will timeout (removed from the switch) if the flow
      doesn’t forward a packet for *x* seconds

-  arp-flow-hard-timeout

   -  The ARP flow will timeout (removed from the switch) after
      *arp-flow-hard-timeout* seconds, regardless of how many packets it
      is forwarding

Further development
^^^^^^^^^^^^^^^^^^^

The **ProactiveFloodFlowWriter** needs to be improved. It does have the
advantage of having less traffic come to the controller; however, it
generates too much network traffic.

Address Tracker
~~~~~~~~~~~~~~~

Classes
^^^^^^^

-  AddressTrackerModule

   -  Reads config subsystem value for *observe-addresses-from*

   -  If *observe-addresses-from* contains "arp", then an
      AddressObserverUsingArp is created

   -  If *observe-addresses-from* contains "ipv4", then an
      AddressObserverUsingIpv4 is created

   -  If *observe-addresses-from* contains "ipv6", then an
      AddressObserverUsingIpv6 is created

-  AddressObserverUsingArp

   -  Registers for ARP packet notifications

   -  Uses **AddressObservationWriter** to write address observations
      from ARP packets

-  AddressObserverUsingIpv4

   -  Registers for IPv4 packet notifications

   -  Uses **AddressObservationWriter** to write address observations
      from IPv4 packets

-  AddressObserverUsingIpv6

   -  Registers for IPv6 packet notifications

   -  Uses **AddressObservationWriter** to write address observations
      from IPv6 packets

-  AddressObservationWriter

   -  Writes new Address Observations to the Inventory data tree

   -  Updates existing Address Observations with updated "last seen"
      timestamps

      -  Uses the *timestamp-update-intervval* configuration variable to
         determine whether or not to update

Configuration
^^^^^^^^^^^^^

-  timestamp-update-interval

   -  A last-seen timestamp is associated with each address. This
      last-seen timestamp will only be updated after
      *timestamp-update-interval* milliseconds.

   -  A higher value has the advantage of performing less writes to the
      database.

   -  A lower value has the advantage of knowing how fresh an address
      is.

-  observe-addresses-from

   -  IP and MAC addresses can be observed/learned from ARP, IPv4, and
      IPv6 packets. Set which packets to make these observations from.

Further development
^^^^^^^^^^^^^^^^^^^

Further improvements can be made to the **AddressObservationWriter** so
that it (1) doesn’t make any unnecessary writes to the DB and (2) is
optimized for multi-threaded environments.

Validating changes to Address Tracker
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Address Observations are added to the Inventory data tree.

The Address Observations on a Node Connector can be checked through a
browser or a REST Client.

::

    http://10.194.126.91:8080/restconf/operational/opendaylight-inventory:nodes/node/openflow:1/node-connector/openflow:1:1

The Address Observations should still be there after changes.

Developer’s Guide for Host Tracker
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Validationg changes to Host Tracker
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Host information is added to the Topology data tree.

-  Host address

-  Attachment point (link) to a node/switch

This host information and attachment point information can be checked
through a browser or a REST Client.

::

    http://10.194.126.91:8080/restconf/operational/network-topology:network-topology/topology/flow:1/

Host information should still be there after changes.

L2Switch Main
~~~~~~~~~~~~~

Classes
^^^^^^^

-  L2SwitchMainModule

   -  Reads config subsystem value for *is-install-dropall-flow*

      -  If *is-install-dropall-flow* is true, then an
         **InitialFlowWriter** is created

   -  Reads config subsystem value for *is-learning-only-mode*

      -  If *is-learning-only-mode* is false, then a
         **ReactiveFlowWriter** is created

-  InitialFlowWriter

   -  Only created when *is-install-dropall-flow* is true

   -  Installs a flow, which drops all packets, on each switch. This
      flow has low priority and means that packets that don’t match any
      higher-priority flows will simply be dropped.

-  ReactiveFlowWriter

   -  Reacts to network traffic and installs MAC-to-MAC flows on
      switches. These flows have matches based on MAC source and MAC
      destination.

   -  Uses **FlowWriterServiceImpl** to write these flows to the
      switches

-  FlowWriterService / FlowWriterServiceImpl

   -  Writes flows to switches

Configuration
^^^^^^^^^^^^^

-  is-install-dropall-flow

   -  "true" means a drop-all flow will be installed on each switch, so
      the default action will be to drop a packet instead of sending it
      to the controller

   -  "false" means this flow will not be installed

-  dropall-flow-table-id

   -  The dropall flow will be installed on the specified flow table of
      each switch

   -  This field is only relevant when "is-install-dropall-flow" is set
      to "true"

-  dropall-flow-priority

   -  The dropall flow will be installed with the specified priority

   -  This field is only relevant when "is-install-dropall-flow" is set
      to "true"

-  dropall-flow-idle-timeout

   -  The dropall flow will timeout (removed from the switch) if the
      flow doesn’t forward a packet for *x* seconds

   -  This field is only relevant when "is-install-dropall-flow" is set
      to "true"

-  dropall-flow-hard-timeout

   -  The dropall flow will timeout (removed from the switch) after *x*
      seconds, regardless of how many packets it is forwarding

   -  This field is only relevant when "is-install-dropall-flow" is set
      to "true"

-  is-learning-only-mode

   -  "true" means that the L2Switch will only be learning addresses. No
      additional flows to optimize network traffic will be installed.

   -  "false" means that the L2Switch will react to network traffic and
      install flows on the switches to optimize traffic. Currently,
      MAC-to-MAC flows are installed.

-  reactive-flow-table-id

   -  The reactive flow will be installed on the specified flow table of
      each switch

   -  This field is only relevant when "is-learning-only-mode" is set to
      "false"

-  reactive-flow-priority

   -  The reactive flow will be installed with the specified priority

   -  This field is only relevant when "is-learning-only-mode" is set to
      "false"

-  reactive-flow-idle-timeout

   -  The reactive flow will timeout (removed from the switch) if the
      flow doesn’t forward a packet for *x* seconds

   -  This field is only relevant when "is-learning-only-mode" is set to
      "false"

-  reactive-flow-hard-timeout

   -  The reactive flow will timeout (removed from the switch) after *x*
      seconds, regardless of how many packets it is forwarding

   -  This field is only relevant when "is-learning-only-mode" is set to
      "false"

Further development
^^^^^^^^^^^^^^^^^^^

The **ReactiveFlowWriter** needs to be improved to install the
MAC-to-MAC flows faster. For the first ping, the ARP request and reply
are successful. However, then the ping packets are sent out. The first
ping packet is dropped sometimes because the MAC-to-MAC flow isn’t
installed quickly enough. The second, third, and following ping packets
are successful though.

API Reference Documentation
---------------------------

Further documentation can be found by checking out the L2Switch project.

Checking out the L2Switch project
---------------------------------

::

    git clone https://git.opendaylight.org/gerrit/p/l2switch.git

The above command will create a directory called "l2switch" with the
project.

Testing your changes to the L2Switch project
--------------------------------------------

Running the L2Switch project
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To run the base distribution, you can use the following command

::

    ./distribution/base/target/distributions-l2switch-base-0.1.0-SNAPSHOT-osgipackage/opendaylight/run.sh

If you need additional resources, you can use these command line
arguments:

::

    -Xms1024m -Xmx2048m -XX:PermSize=512m -XX:MaxPermSize=1024m'

To run the karaf distribution, you can use the following command:

::

    ./distribution/karaf/target/assembly/bin/karaf

Create a network using mininet
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    sudo mn --controller=remote,ip=<Controller IP> --topo=linear,3 --switch ovsk,protocols=OpenFlow13
    sudo mn --controller=remote,ip=127.0.0.1 --topo=linear,3 --switch ovsk,protocols=OpenFlow13

The above command will create a virtual network consisting of 3
switches. Each switch will connect to the controller located at the
specified IP, i.e. 127.0.0.1

::

    sudo mn --controller=remote,ip=127.0.0.1 --mac --topo=linear,3 --switch ovsk,protocols=OpenFlow13

The above command has the "mac" option, which makes it easier to
distinguish between Host MAC addresses and Switch MAC addresses.

Generating network traffic using mininet
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    h1 ping h2

The above command will cause host1 (h1) to ping host2 (h2)

::

    pingall

*pingall* will cause each host to ping every other host.

Miscellaneous mininet commands
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    link s1 s2 down

This will bring the link between switch1 (s1) and switch2 (s2) down

::

    link s1 s2 up

This will bring the link between switch1 (s1) and switch2 (s2) up

::

    link s1 h1 down

This will bring the link between switch1 (s1) and host1 (h1) down

