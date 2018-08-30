Name
----

OpenFlow Extensions in support of Optical Circuit Switching

Repo Name
---------

ofextensions/circuitsw

Description
-----------

Optical Circuit Switches are used along with packet switches in many
network architectures. Primarily, Data Center network architectures are
evolving to include the use of Optical Circuit Switches
(https://en.wikipedia.org/wiki/Optical_switch,
http://www.calient.net/products/s-series-photonic-switch/). Support in
centralized (OpenDaylight) controllers for programming Optical Circuit
Switches using the OpenFlow protocol can help advance this change.

Using the “Extensions to the OpenFlow Protocol in support of Circuit
Switching Addendum to OpenFlow Protocol Specification (v1.0) – Circuit
Switch Addendum v0.3,” we have built a plugin based on AD-SAL that
doesn’t disturb the OpenFlow 1.0 AD-SAL plugin.

A link to the specification cited in the preceding paragraph is at:

http://archive.openflow.org/wk/images/8/81/OpenFlow_Circuit_Switch_Specification_v0.3.pdf

We have new Extensions written for Optical Circuit Switch with OpenFlow
1.3 as base specification. These extensions are written based on the
Optical Transport Protocol Extensions V1.0. We would like to add these
extensions to the existing openflowplugin and make it available in the
openflowplugin feature for Helium and future releases of OpenDaylight.

Optical Transport Protocol Extensions document is available at -

https://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/Optical_Transport_Protocol_Extensions_V1.0.pdf

Calient OCS Openflow protocol Extensions document is available at -

.. figure:: OCS_OF_Protocol_Extensions_Rev._0.4.pdf
   :alt: OCS_OF_Protocol_Extensions_Rev._0.4.pdf

   OCS_OF_Protocol_Extensions_Rev._0.4.pdf

Scope
-----

-  Optical switches support in the Opendaylight
-  Design and Implementation of the OpenFlow Protocol Extensions for the
   Optical Circuit Switches in the openflowjava
-  Design and Implementation of the Yang models for the Circuit
   Flows(cross-connects), Ports, Cirucit Flow and Port Statistics
-  Design and Implementation of the OpenFlow Protocol Extensions for the
   Optical Circuit Switches in the openflowplugin

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Aneesha Pailla (pailla.aneesha - apailla@calient.net)

Initial Committers
------------------

-  Aneesha Pailla (pailla.aneesha - apailla@calient.net)

Vendor Neutral
--------------

Vendor agnostic

Meets Board Policy (including IPR)
----------------------------------