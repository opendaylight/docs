Name
----

TransportPCE

Repo Name
---------

transportpce

Description
-----------

TransportPCE describes an application running on top of the OpenDaylight
controller. Its primary functions are to create, modify or delete paths
according to service requirements on OTN/WDM transmission networks. Path
determination can be either performed within the application according
to a set of metrics or can be provided by an external application
(typically a planning tool). From an architecture point of view, this
external application can either transmit directly the path to the
controller or towards Transport PCE application. The second option
avoids potential resource conflicts in case of nearly simultaneous path
implementation requests from both applications on a dedicated link but
requires an interface from this application to the external one. The
implementation is left open for the time being. Thanks to the presence
of OTN switches, path determination is multilayer by nature. Path
creation, modification or deletion shall be performed with
user-interface (UI) providing a global view of the network and simple UI
dialogs for path management.

The nodes in the network are ROADMs and OTN switches. They run GMPLS
with link-state routing protocols (e.g. OSPF-TE) to exchange topology,
capabilities... The abstracted topology view and path setup dialogs
conceptually enables TransportPCE to manage any connection-oriented
network technology including Generalized MPLS (GMPLS) networks.

Topology recovery shall be performed in two ways. Network Management
System conveys the link-state database through its own API (e.g. Corba
or REST). Preferred option is the development of a dedicated IGP-TE
plug-in in Opendaylight that is capable of listening IGP-TE link-state
messages coming from a designated node. A plugin interface towards NMS
shall be implemented only for legacy transport networks that can not
activate GMPLS. Cases may appear where two subdomains managed by a
single PCE are connected by another domain managed by another
organization (still belonging to the same operator). It shall be
therefore possible to model this interconnection link with some
properties left intentionally empty (typically latency…) and
TransportPCE shall be able to manage such links.

All nodes that are candidate path sources and sinks are configured with
either a path computation element protocol (PCEP) session to the
OpenDaylight PCEP plug-in or Netconf session to the Netconf plug-in.
PCEP or Netconf is used to convey path create, modify and delete
information between OpenDaylight and specific path end-point nodes.
TransportPCE employs PCEP RESTCONF APIs to communicate desired path
management actions to OpenDaylight which in turn are passed down via
PCEP/Netconf to specific endpoint nodes. Endpoint nodes propagate path
management actions through GMPLS (RSVP-TE) for path implementation. In
case of legacy transport networks that can not run GMPLS, a plugin
interface towards NMS shall be used instead in order to activate in all
concerned nodes.

TransportPCE is implemented using the either DLUX UI or NeXt UI
framework (to be decided). If path computation in electrical domain (OTN
switching) does not raise unsolvable issues when confined to a limited
set of metrics, path computation in optical domain is a much more
complex topic and is strongly vendor-dependent. Therefore, the objective
is to limit path computation to an agreed limited set of optical metrics
that should be accessible from the abstracted network topology. The
strategy of verifying the physical implementation of the path is left
for further study (a first step will consist in listing the failure
cases depending on abstracted topology view). It should also be possible
for TransportPCE to consult with or import path computation results
generated from external components.

Network resource management can become cumbersome and generate lengthy
delays for implementation in the field especially when it involves IP,
OTN and WDM layers. TransportPCE is an OpenDaylight application that
aims to offer a simple, fast, user-friendly and automated way to see and
manage paths traversing an OTN/WDM network through a DLUX/NeXt UI.
Networks must become more and more agile in order to face the evolution
of new services and SDN enabled WAN management is a necessity. Beyond
the need for a more agile transmission network, WAN SDN management shall
ultimately combine IP traffic engineering and connection management at
OTN/WDM layer in order to optimize network resources.

Scope
-----

TransportPCE is an application implemented in the DLUX/NeXt UI. It will
communicate with the OpenDaylight controller across current and future
model-driven RESTCONF APIs.

Potential changes needed in OpenDaylight to support TransportPCE are:

• implementation of an IGP-TE YANG model that in turn yield new RESTCONF
APIs towards upper layers

• implementation of an IGP-TE plug-in

• implementation of NMS plug-in for topology acquisition if IGP-TE can
not be activated (legacy transport networks)

• updates to PCEP-related YANG models that in turn yield new RESTCONF
APIs towards upper layers

• updates to Netconf-related YANG models that in turn yield new RESTCONF
APIs

Data requiring persistence will be handled within the TransportPCE
application

Initial Committers
------------------

Xavier Pougnard, Orange - xavier.pougnard@orange.com / XavierP

Guillaume Lambert, Orange - guillaume.lambert@orange.com

Patrice Robert, Orange - patrice.robert@orange.com

Johan Gustawsson, TeliaSonera - johan.gustawsson@teliasonera.com

Martin Birk, AT&T - mb4962@att.com

Vendor Neutral
--------------

All contributed code will adhere to OpenDaylight's copyright and license
policies.

Meets Board Policy (including IPR)
----------------------------------

Retrieved from
"https://wiki.opendaylight.org/index.php?title=Project_Proposals:PCEapp&oldid=34472"