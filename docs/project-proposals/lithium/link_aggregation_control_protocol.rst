Name
----

LACP

Repo Name
---------

lacp

Description
-----------

LACP Project within Open Daylight implements Link Aggregation Control
Protocol (LACP) as a MD-SAL service module and will be used to
auto-discover and aggregate multiple links between Opendaylight
controlled network and LACP enabled endpoints or switches, which are
external to Opendaylight controller. The result is the creation of
logical channel, which represents the aggregation of the links.Link
aggregation provides link resiliency and also provides bandwidth
aggregation. Initial LACP protocol is released as IEEE Ethernet
specification 802.3ad, but later moved to Bridging and Management Group
as 802.1AX specification.

| Operational Model
| LACP module within Open Daylight will receive and process the LACP
  control packets through SAL “Packet Processing” Service. It also sends
  out the LACP control packets through all the active switch ports using
  SAL packet processing service at regular intervals based on the timer
  interval configuration. Since this module is designed to aggregate
  only the external links, it ignores the LACP packets received through
  internal links. It uses “SAL-FLOW service” to create LAGs within the
  switch.

LACP module will have the following internal service components.

+-----------------------------------+-----------------------------------+
| Component                         | Description                       |
+===================================+===================================+
| Receive Machine                   | This state machine receives       |
|                                   | LACPDUs from the Partner, records |
|                                   | the information contained,        |
|                                   | evaluates the incoming            |
|                                   | information from the Partner to   |
|                                   | determine whether the Actor and   |
|                                   | Partner have both agreed upon the |
|                                   | protocol information exchanged to |
|                                   | the extent that the port can now  |
|                                   | be safely used, either in an      |
|                                   | aggregation with other ports or   |
|                                   | as an individual port; if not, it |
|                                   | asserts NTT in order to transmit  |
|                                   | fresh protocol information to the |
|                                   | Partner.                          |
+-----------------------------------+-----------------------------------+
| Periodic Transmission machine     | This state machine determines     |
|                                   | whether the Actor and its Partner |
|                                   | will exchange LACPDUs             |
|                                   | periodically in order to maintain |
|                                   | an aggregation (periodic LACPDU   |
|                                   | exchanges occur if either or both |
|                                   | are configured for Active LACP).  |
+-----------------------------------+-----------------------------------+
| Selection Logic Machine           | The Selection Logic is            |
|                                   | responsible for selecting the     |
|                                   | Aggregator to be associated with  |
|                                   | this port. All the ports within a |
|                                   | system that have the same         |
|                                   | operational LACP Key are          |
|                                   | aggregated as single aggregator,  |
|                                   | except for the ports are          |
|                                   | configured as ‘Individual’ (ports |
|                                   | that are configured to be not     |
|                                   | aggregated).                      |
+-----------------------------------+-----------------------------------+
| MUX Machine                       | This component is responsible for |
|                                   | attaching the port to a selected  |
|                                   | Aggregator, detaching the port    |
|                                   | from a de-selected Aggregator,    |
|                                   | and for turning on/off collecting |
|                                   | and distributing at the port as   |
|                                   | required by the current protocol  |
|                                   | information.                      |
+-----------------------------------+-----------------------------------+
| TX Engine                         | This component transmits LACPDUs, |
|                                   | both on demand from the other     |
|                                   | state machines, and on a periodic |
|                                   | basis.                            |
+-----------------------------------+-----------------------------------+
| LACP Flow Utils                   | This component provide service to |
|                                   | transform Link Aggregation        |
|                                   | requests to SAL flow service      |
|                                   | requests.                         |
+-----------------------------------+-----------------------------------+

Here is the LACP module component diagram. |Lacp_image.png|

Scope
-----

LACP Aggregation module scope is as follows:

-  Implement LACP protocol.
-  Supports only passive mode with long-timeout.
-  LACP peer device should be outside the controller's domain, i.e., the
   peer device should not be managed by the same controller.
-  Notify all listeners when LAG is created/destroyed, through MD-SAL.
   Interested applications must register with MD-SAL to be notified
   about additions, deletions and updates to the LAG data store.
-  Program the group-table for LAG functionality, through openflow
   plugin

Presentations
-------------

.. figure:: LACP_Proposal.pptx
   :alt:  LACP_Proposal.pptx

    LACP_Proposal.pptx

Resources Committed (developers committed to working)
-----------------------------------------------------

-  `Venkataraghavan C (Dell) <mailto:C_Venkataraghavan@DELL.com>`__ -
   raghavclv

-  `Rajesh Sindagi (Dell) <mailto:Rajesh_Sindagi@Dell.com>`__ -
   Rajesh_Sindagi

-  `Kavitha Ramalingham (Dell) <mailto:Kavitha_Ramalingham@Dell.com>`__
   - Kavitha_Ramalingam

-  `Kalaiselvi K (Dell) <mailto:Kalaiselvi_K@Dell.com>`__ - kalaiselvik

-  `Abhijit Kumbhare
   (Ericsson) <mailto:abhijit.kumbhare@ericsson.com>`__

-  `Arun Yerra (Dell) <mailto:Arun_Yerra@DELL.com>`__ - arun_yerra

-  `Mohnish Anumala (Dell) <mailto:Mohnish_Anumala@Dell.com>`__ -
   manumala

Initial Committers
------------------

-  `Rajesh Sindagi (Dell) <mailto:Rajesh_Sindagi@Dell.com>`__ -
   Rajesh_Sindagi

-  `Kavitha Ramalingham (Dell) <mailto:Kavitha_Ramalingham@Dell.com>`__
   - Kavitha_Ramalingam

-  `Arun Yerra (Dell) <mailto:Arun_Yerra@DELL.com>`__ - arun_yerra

-  `Venkataraghavan C (Dell) <mailto:C_Venkataraghavan@DELL.com>`__ -
   raghavclv

-  `Mohnish Anumala (Dell) <mailto:Mohnish_Anumala@Dell.com>`__ -
   manumala

Vendor Neutral
--------------

The base functionality described in this proposal is implemented in the
Dell Active Fabric controller. Some code may be leveraged for use in
OpenDaylight. All contributed code will adhere to OpenDaylight's
copyright and license policies.

Meets Board Policy (including IPR)
----------------------------------

No significant code being contributed at project creation. Inbound Code
Review unneeded. (Phil Robb - 11/24/2014))

.. |Lacp_image.png| image:: Lacp_image.png

