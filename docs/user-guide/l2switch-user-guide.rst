L2Switch User Guide
===================

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

Configuring L2Switch
--------------------

This sections below give details about the configuration settings for
the components that can be configured.

Configuring Loop Remover
------------------------

-  52-loopremover.xml

   -  is-install-lldp-flow

      -  "true" means a flow that sends all LLDP packets to the
         controller will be installed on each switch

      -  "false" means this flow will not be installed

   -  lldp-flow-table-id

      -  The LLDP flow will be installed on the specified flow table of
         each switch

      -  This field is only relevant when "is-install-lldp-flow" is set
         to "true"

   -  lldp-flow-priority

      -  The LLDP flow will be installed with the specified priority

      -  This field is only relevant when "is-install-lldp-flow" is set
         to "true"

   -  lldp-flow-idle-timeout

      -  The LLDP flow will timeout (removed from the switch) if the
         flow doesn’t forward a packet for *x* seconds

      -  This field is only relevant when "is-install-lldp-flow" is set
         to "true"

   -  lldp-flow-hard-timeout

      -  The LLDP flow will timeout (removed from the switch) after *x*
         seconds, regardless of how many packets it is forwarding

      -  This field is only relevant when "is-install-lldp-flow" is set
         to "true"

   -  graph-refresh-delay

      -  A graph of the network is maintained and gets updated as
         network elements go up/down (i.e. links go up/down and switches
         go up/down)

      -  After a network element going up/down, it waits
         *graph-refresh-delay* seconds before recomputing the graph

      -  A higher value has the advantage of doing less graph updates,
         at the potential cost of losing some packets because the graph
         didn’t update immediately.

      -  A lower value has the advantage of handling network topology
         changes quicker, at the cost of doing more computation.

Configuring Arp Handler
-----------------------

-  54-arphandler.xml

   -  is-proactive-flood-mode

      -  "true" means that flood flows will be installed on each switch.
         With this flood flow, each switch will flood a packet that
         doesn’t match any other flows.

         -  Advantage: Fewer packets are sent to the controller because
            those packets are flooded to the network.

         -  Disadvantage: A lot of network traffic is generated.

      -  "false" means the previously mentioned flood flows will not be
         installed. Instead an ARP flow will be installed on each switch
         that sends all ARP packets to the controller.

         -  Advantage: Less network traffic is generated.

         -  Disadvantage: The controller handles more packets (ARP
            requests & replies) and the ARP process takes longer than if
            there were flood flows.

   -  flood-flow-table-id

      -  The flood flow will be installed on the specified flow table of
         each switch

      -  This field is only relevant when "is-proactive-flood-mode" is
         set to "true"

   -  flood-flow-priority

      -  The flood flow will be installed with the specified priority

      -  This field is only relevant when "is-proactive-flood-mode" is
         set to "true"

   -  flood-flow-idle-timeout

      -  The flood flow will timeout (removed from the switch) if the
         flow doesn’t forward a packet for *x* seconds

      -  This field is only relevant when "is-proactive-flood-mode" is
         set to "true"

   -  flood-flow-hard-timeout

      -  The flood flow will timeout (removed from the switch) after *x*
         seconds, regardless of how many packets it is forwarding

      -  This field is only relevant when "is-proactive-flood-mode" is
         set to "true"

   -  arp-flow-table-id

      -  The ARP flow will be installed on the specified flow table of
         each switch

      -  This field is only relevant when "is-proactive-flood-mode" is
         set to "false"

   -  arp-flow-priority

      -  The ARP flow will be installed with the specified priority

      -  This field is only relevant when "is-proactive-flood-mode" is
         set to "false"

   -  arp-flow-idle-timeout

      -  The ARP flow will timeout (removed from the switch) if the flow
         doesn’t forward a packet for *x* seconds

      -  This field is only relevant when "is-proactive-flood-mode" is
         set to "false"

   -  arp-flow-hard-timeout

      -  The ARP flow will timeout (removed from the switch) after
         *arp-flow-hard-timeout* seconds, regardless of how many packets
         it is forwarding

      -  This field is only relevant when "is-proactive-flood-mode" is
         set to "false"

Configuring Address Tracker
---------------------------

-  56-addresstracker.xml

   -  timestamp-update-interval

      -  A last-seen timestamp is associated with each address. This
         last-seen timestamp will only be updated after
         *timestamp-update-interval* milliseconds.

      -  A higher value has the advantage of performing less writes to
         the database.

      -  A lower value has the advantage of knowing how fresh an address
         is.

   -  observe-addresses-from

      -  IP and MAC addresses can be observed/learned from ARP, IPv4,
         and IPv6 packets. Set which packets to make these observations
         from.

Configuring L2Switch Main
-------------------------

-  58-l2switchmain.xml

   -  is-install-dropall-flow

      -  "true" means a drop-all flow will be installed on each switch,
         so the default action will be to drop a packet instead of
         sending it to the controller

      -  "false" means this flow will not be installed

   -  dropall-flow-table-id

      -  The dropall flow will be installed on the specified flow table
         of each switch

      -  This field is only relevant when "is-install-dropall-flow" is
         set to "true"

   -  dropall-flow-priority

      -  The dropall flow will be installed with the specified priority

      -  This field is only relevant when "is-install-dropall-flow" is
         set to "true"

   -  dropall-flow-idle-timeout

      -  The dropall flow will timeout (removed from the switch) if the
         flow doesn’t forward a packet for *x* seconds

      -  This field is only relevant when "is-install-dropall-flow" is
         set to "true"

   -  dropall-flow-hard-timeout

      -  The dropall flow will timeout (removed from the switch) after
         *x* seconds, regardless of how many packets it is forwarding

      -  This field is only relevant when "is-install-dropall-flow" is
         set to "true"

   -  is-learning-only-mode

      -  "true" means that the L2Switch will only be learning addresses.
         No additional flows to optimize network traffic will be
         installed.

      -  "false" means that the L2Switch will react to network traffic
         and install flows on the switches to optimize traffic.
         Currently, MAC-to-MAC flows are installed.

   -  reactive-flow-table-id

      -  The reactive flow will be installed on the specified flow table
         of each switch

      -  This field is only relevant when "is-learning-only-mode" is set
         to "false"

   -  reactive-flow-priority

      -  The reactive flow will be installed with the specified priority

      -  This field is only relevant when "is-learning-only-mode" is set
         to "false"

   -  reactive-flow-idle-timeout

      -  The reactive flow will timeout (removed from the switch) if the
         flow doesn’t forward a packet for *x* seconds

      -  This field is only relevant when "is-learning-only-mode" is set
         to "false"

   -  reactive-flow-hard-timeout

      -  The reactive flow will timeout (removed from the switch) after
         *x* seconds, regardless of how many packets it is forwarding

      -  This field is only relevant when "is-learning-only-mode" is set
         to "false"

Running the L2Switch project
----------------------------

To run the L2 Switch inside the OpenDaylight distribution simply
install the ``odl-l2switch-switch-ui`` feature;

::

    feature:install odl-l2switch-switch-ui

Create a network using mininet
------------------------------

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
----------------------------------------

::

    h1 ping h2

The above command will cause host1 (h1) to ping host2 (h2)

::

    pingall

*pingall* will cause each host to ping every other host.

Checking Address Observations
-----------------------------

Address Observations are added to the Inventory data tree.

The Address Observations on a Node Connector can be checked through a
browser or a REST Client.

::

    http://10.194.126.91:8080/restconf/operational/opendaylight-inventory:nodes/node/openflow:1/node-connector/openflow:1:1

.. figure:: ./images/l2switch-address-observations.png
   :alt: Address Observations

   Address Observations

Checking Hosts
--------------

Host information is added to the Topology data tree.

-  Host address

-  Attachment point (link) to a node/switch

This host information and attachment point information can be checked
through a browser or a REST Client.

::

    http://10.194.126.91:8080/restconf/operational/network-topology:network-topology/topology/flow:1/

.. figure:: ./images/l2switch-hosts.png
   :alt: Hosts

   Hosts

Checking STP status of each link
--------------------------------

STP Status information is added to the Inventory data tree.

-  A status of "forwarding" means the link is active and packets are
   flowing on it.

-  A status of "discarding" means the link is inactive and packets are
   not sent over it.

The STP status of a link can be checked through a browser or a REST
Client.

::

    http://10.194.126.91:8080/restconf/operational/opendaylight-inventory:nodes/node/openflow:1/node-connector/openflow:1:2

.. figure:: ./images/l2switch-stp-status.png
   :alt: STP status

   STP status

Miscellaneous mininet commands
------------------------------

::

    link s1 s2 down

This will bring the link between switch1 (s1) and switch2 (s2) down

::

    link s1 s2 up

This will bring the link between switch1 (s1) and switch2 (s2) up

::

    link s1 h1 down

This will bring the link between switch1 (s1) and host1 (h1) down

