LACP Developer Guide
====================

LACP Overview
-------------

The OpenDaylight LACP (Link Aggregation Control Protocol) project can be
used to aggregate multiple links between OpenDaylight controlled network
switches and LACP enabled legacy switches or hosts operating in active
LACP mode.

OpenDaylight LACP passively negotiates automatic bundling of multiple
links to form a single LAG (Link Aggregation Group). LAGs are realised
in the OpenDaylight controlled switches using OpenFlow 1.3+ group table
functionality.

LACP Architecture
-----------------

-  **inventory**

   -  Maintains list of OpenDaylight controlled switches and port
      information

   -  List of LAGs created and physical ports that are part of the LAG

   -  Interacts with MD-SAL to update LACP related information

-  **inventorylistener**

   -  This module interacts with MD-SAL for receiving
      node/node-connector notifications

-  **flow**

   -  Programs the switch to punt LACP PDU (Protocol Data Unit) to
      controller

-  **packethandler**

   -  Receives and transmits LACP PDUs to the LACP enabled endpoint

   -  Provides infrastructure services for group table programming

-  **core**

   -  Performs LACP state machine processing

How LAG programming is implemented
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The LAG representing the aggregated multiple physical ports are realized
in the OpenDaylight controlled switches by creating a group table entry
(Group table supported from OpenFlow 1.3 onwards). The group table entry
has a group type **Select** and action referring to the aggregated
physical ports. Any data traffic to be sent out through the LAG can be
sent through the **group entry** available for the LAG.

Suppose there are ports P1-P8 in a node. When LACP project is installed,
a group table entry for handling broadcast traffic is automatically
created on all the switches that have registered to the controller.

+--------------------------+--------------------------+--------------------------+
| GroupID                  | GroupType                | EgressPorts              |
+==========================+==========================+==========================+
| <B’castgID>              | ALL                      | P1,P2,…P8                |
+--------------------------+--------------------------+--------------------------+

Now, assume P1 & P2 are now part of LAG1. The group table would be
programmed as follows:

+--------------------------+--------------------------+--------------------------+
| GroupID                  | GroupType                | EgressPorts              |
+==========================+==========================+==========================+
| <B’castgID>              | ALL                      | P3,P4,…P8                |
+--------------------------+--------------------------+--------------------------+
| <LAG1>                   | SELECT                   | P1,P2                    |
+--------------------------+--------------------------+--------------------------+

When a second LAG, LAG2, is formed with ports P3 and P4,

+--------------------------+--------------------------+--------------------------+
| GroupID                  | GroupType                | EgressPorts              |
+==========================+==========================+==========================+
| <B’castgID>              | ALL                      | P5,P6,…P8                |
+--------------------------+--------------------------+--------------------------+
| <LAG1>                   | SELECT                   | P1,P2                    |
+--------------------------+--------------------------+--------------------------+
| <LAG2>                   | SELECT                   | P3,P4                    |
+--------------------------+--------------------------+--------------------------+

How applications can program OpenFlow flows using LACP-created LAG groups
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

OpenDaylight controller modules can get the information of LAG by
listening/querying the LACP Aggregator datastore.

When any application receives packets, it can check, if the ingress port
is part of a LAG by verifying the LAG Aggregator reference
(lacp-agg-ref) for the source nodeConnector that OpenFlow plugin
provides.

When applications want to add flows to egress out of the LAG, they must
use the group entry corresponding to the LAG.

From the above example, for a flow to egress out of LAG1,

**add-flow eth\_type=<xxxx>,ip\_dst=<x.x.x.x>,actions=output:<LAG1>**

Similarly, when applications want traffic to be broadcasted, they should
use the group table entries **<B’castgID>,<LAG1>,<LAG2>** in output
action.

For all applications, the group table information is accessible from
LACP Aggregator datastore.

