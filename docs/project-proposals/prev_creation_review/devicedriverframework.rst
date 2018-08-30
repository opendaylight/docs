Name
----

Device Driver Framework Project

Repo Name
---------

ddf

Goal
----

The goal of the Device Driver Framework is to provide a standard and
consistent way to add device specific functionality. The framework
should be extensible to allow new device specific functionality to be
dynamically added. It should also allow dynamic support for new device
types.

Use Cases
---------

The framework should allow any device specific functionality to be
implemented. A few examples include:

-  Validate and adjust FlowMods to be sent to a device based on
   knowledge of the type of device. Allows FlowMods to be adjusted to
   take advantage of the capabilities and limitations of the device.
-  Perform VLAN CRUD operations using communication protocols such as
   SNMP and NetConf.
-  Perform VxLAN CRUD operations using communication protocols such as
   SNMP and NetConf.

Features
--------

The Device Driver Framework Project will aim to provide the following
features:

-  Maintain identity information about the types of physical devices
   recognized by the framework.
-  Determines the type of each physical device (or Data Path) using
   information discovered through the OpenFlow handshake, as well as
   direct interaction with the device.
-  Communicate directly with the physical device to acquire
   configuration information, and information to better determine the
   type of device.
-  Maintain (persist) the discovered device information including:
   device type, configuration information, and interface (port) list.
-  Allow device-specific software components to be written to interact
   with devices. These software implementations are associated with a
   specific device type.
-  Maintain (persist) security credentials to allow interaction with
   devices using protocols such as SNMP and NetConf.

Scope
-----

The first phase of the project will include:

-  Define how the framework will be implemented in the ODL. The intent
   is to work within the framework of the MD-SAL.
-  Implement the Device Driver Framework.
-  Implement a few “drivers” that provide device specific functionality.
   The drivers to be implemented will be defined as the project
   progresses and staffing is determined.

Resources Committed (developers committed to working)
-----------------------------------------------------

TBD

Initial Committers
------------------

Steve Dean (sdean@hp.com)

Vendor Neutral
--------------

This project will consist of contributing some existing code as well as
developing new code. Code will be made available for review by ODP and
Linux Foundation after it has been approved by contributing
organizations.

Meets Board Policy (including IPR)
----------------------------------
