Name
----

PCEapp

Repo Name
---------

pceapp

Description
-----------

PCEapp describes an application running on top of the OpenDaylight
controller. Its primary functions are to visualize an IP/MPLS network
topology and enable the user to create, modify or delete MPLS TE or
Segment Routed (SR) TE Paths between two or more nodes in the network.
PCEapp replaces the cumbersome and time-consuming per-router CLI
approach to explicit path configuration with a user-interface (UI)
providing a global view of the network and simple UI dialogs for path
management.

The nodes in the network are IP/MPLS label switch routers (LSR). They
run link-state routing protocols (e.g. ISIS or OSPF) and control
protocols to exchange topology, segment IDs and labels. PCEapp manages
MPLS TE tunnels and segment routing (SR) TE tunnels. Indeed the
abstracted topology view and path setup dialogs conceptually enables
PCEapp to manage any connection-oriented network technology including
but not limited to multi-layer Generalized MPLS (GMPLS) networks.

A node configured as a BGP-LS speaker conveys the link-state database
across a BGP session to the BGP-LS plug-in OpenDaylight. PCEapp consumes
the topology across BGP RESTCONF APIs. All nodes that are candidate path
sources and sinks are configured with a path computation element
protocol (PCEP) session to the OpenDaylight PCEP plug-in. PCEP is used
to convey path create, modify and delete information between
OpenDaylight and specific path end-point routers. PCEapp employs PCEP
RESTCONF APIs communicate desired path management actions to
OpenDaylight which in turn are passed down via PCEP to specific routers.
PCEapp is implemented using the DLUX UI framework.

Name notwithstanding, PCEapp is not designed to be a Path Computation
Element (PCE) server. To that end it does not impose a specific path
computation implementation but rather can accomodate a number of
techniques that include centralized or distributed path computation as
well as an operator-driven manual process. It should also be possible
for PCEapp to consult with or import path computation results generated
from external components.

Traffic engineering as a means to optimize WAN resource utilization and
maximize performance is a mature and well-understood disciple. Oddly
enough applying TE principles to real network infrastructure is still
rooted in operator-driven CLI and operator-maintained scripts. PCEapp is
an OpenDaylight DLUX UI-based application that offers a simple, fast,
user-friendly and automated way to see and manage paths traversing an
IP/MPLS network.

As cloud content and services proliferate the need for SDN WAN
management grows. PCEapp can serve in that role to efficiently manage
path placement across the WAN portion of a cloud-based service. Indeed
it would be possible to extend PCEapp to manage WAN link placement in a
service function chain traversing remote clouds.

Scope
-----

PCEapp is an application implemented in the DLUX UI. It will communicate
with the OpenDaylight controller across current and future model-driven
RESTCONF APIs.

Potential changes needed in OpenDaylight to support PCEapp are:

-  updates to BGP-related YANG models that in turn yield new RESTCONF
   APIs

-  updates to PCEP-related YANG models that in turn yield new RESTCONF
   APIs

-  in the case that OpenDaylight clustering is supported for scale and
   HA, an adapter to manage OpenDaylight PCE node availability and
   delegated LSP ownership should be developed to isolate this from
   PCEapp. In other words, PCEapp should operate unchanged in single or
   multi-node clustered environments.

Data requiring persistence will be handled within the PCEapp application

Resources Committed (developers committed to working)
-----------------------------------------------------

TBD

Initial Committers
------------------

Chris Metz, chmetz@cisco.com

Niklas Montin, nmontin@cisco.com

Tyler Levine, tylevine@cisco.com

Vendor Neutral
--------------

The functionality described in this proposal has been implemented in a
Cisco distribution of the OpenDaylight controller. Some Cisco code may
be leveraged for use in OpenDaylight. All contributed code will adhere
to OpenDaylight's copyright and license policies.

Meets Board Policy (including IPR)
----------------------------------
