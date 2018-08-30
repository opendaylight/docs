Name
----

Device Identification and Driver Management

Repo Name
---------

didm

Description
-----------

The Device Identification and Driver Management (DIDM) project addresses
the need to provide device specific functionality. Device specific
functionality is code that performs a “feature”, and the code is
knowledgeable of the capability and limitations of the device. For
example, configuring VLANs and adjusting Flowmods are features, and
there may be different implementations for different device types.
Device specific functionality is implemented as Device Drivers. Device
Drivers need to be associated with the devices they can be used with. To
determine this association requires the ability to identify the device
type.

The DIDM project creates the infrastructure to support the following
functions:

-  Discovery - Determination that a device exists in the Controller
   management domain and connectivity to the device can be established.
   For devices that support the OpenFlow protocol, the existing
   “discovery” mechanism in Opendaylight suffices. Devices that do not
   support Openflow will be discovered through “manual” means such as
   the operator entering device information via GUI or REST API.

-  Identification – Determination of the device type.

-  Driver Registration – Registration of Device Derivers as routed RPCs.

-  Synchronization – Collection of device information, device
   configuration, and link (connection) information.

-  Define Data Models for Common “Features” – Data models will be
   defined to perform common “features” such as VLAN configuration. For
   example, applications can configure a VLAN by writing the VLAN data
   to the data store as specified by the common data model.

-  Define RPCs for Common “Features” – Configuring VLANs and adjusting
   Flowmods are example of “features”. RPCs will be defined that specify
   the APIs for these features. Drivers implement features for specific
   devices and support the APIs defined by the RPCs. There may be
   different Driver implementations for different device types.

Scope
-----

The purpose of this proposal is to provide a framework that can used to
inform the Controller of new devices to be controlled, identity the type
of device, register Device Drivers as routed RPCs, collect data from the
device, update the inventory model, and invoke Device Drivers.

The framework design is in progress and will be completed as the project
progresses.

Where appropriate, this project will work with and consult existing
device / protocol teams to help ensure the framework meets the needs of
the community as opposed to any specific vendor's devices.

Dependencies
------------

The DIDM Project will use the SNMP Soutbound plugin component which has
been proposed by the SNMP project team.

Interacting with devices using protocols such as SNMP requires security
credential. The DIDM project envisions a Credential Manager that will be
used to manage security credentials. A REST API or GUI will allow the
operator to populate the credential store. It is felt that the
Credential Manager should be owned by the AAA project team. The DIDM
team will work with the AAA project team regarding the Credential
Manager.

Resources Committed (developers committed to working)
-----------------------------------------------------

Dean, Steve (sdean@hp.com) Chau, Uyen (uyen.chau@hp.com) Harmon, Nathan
(nathan.harmon@hp.com)

Initial Committers
------------------

Who would be the initial committers to the project?

Vendor Neutral
--------------

If this proposal is coming from an existing proprietary codebase, have
you ensured that all proprietary trademarks, logos, product names, etc.
have been removed? Please specify.

Meets Board Policy (including IPR)
----------------------------------
