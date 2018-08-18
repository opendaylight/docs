.. _didm-user-guide:

DIDM User Guide
===============

Overview
--------

The Device Identification and Driver Management (DIDM) project addresses
the need to provide device-specific functionality. Device-specific
functionality is code that performs a feature, and the code is
knowledgeable of the capability and limitations of the device. For
example, configuring VLANs and adjusting FlowMods are features, and
there may be different implementations for different device types.
Device-specific functionality is implemented as Device Drivers. Device
Drivers need to be associated with the devices they can be used with. To
determine this association requires the ability to identify the device
type.

DIDM Architecture
-----------------

The DIDM project creates the infrastructure to support the following
functions:

-  **Discovery** - Determination that a device exists in the controller
   management domain and connectivity to the device can be established.
   For devices that support the OpenFlow protocol, the existing
   discovery mechanism in OpenDaylight suffices. Devices that do not
   support OpenFlow will be discovered through manual means such as the
   operator entering device information via GUI or REST API.

-  **Identification** – Determination of the device type.

-  **Driver Registration** – Registration of Device Drivers as routed
   RPCs.

-  **Synchronization** – Collection of device information, device
   configuration, and link (connection) information.

-  **Data Models for Common Features** – Data models will be defined to
   perform common features such as VLAN configuration. For example,
   applications can configure a VLAN by writing the VLAN data to the
   data store as specified by the common data model.

-  **RPCs for Common Features** – Configuring VLANs and adjusting
   FlowMods are example of features. RPCs will be defined that specify
   the APIs for these features. Drivers implement features for specific
   devices and support the APIs defined by the RPCs. There may be
   different Driver implementations for different device types.

Atrium Support
--------------

The Atrium implements an open source router that speaks BGP to other
routers, and forwards packets received on one port/vlan to another,
based on the next-hop learnt via BGP peering. A BGP peering application
for the Open Daylight Controller and a new model for flow objective
drivers for switches integrated with the Open Daylight Atrium
distribution was developed for this project. The implementation has the
same level of feature partly that was introduced by the Atrium 2015/A
distribution on the ONOS controller. An overview of the architecture is
available at here
(https://github.com/onfsdn/atrium-docs/wiki/ODL-Based-Atrium-Router-16A).

Atrium stack is implemented in OpenDaylight using Atrium and DIDM
project. Atrium project provides the application implementation for BGP
peering and the DIDM project provides implementation for FlowObjectives.
FlowObjective provides an abstraction layer and present the pipeline
agnostic api to application to consume.

FlowObjective
~~~~~~~~~~~~~

Flow Objectives describe an SDN application’s objective (or intention)
behind a flow it is sending to a device.

Application communicates the flow installation requirement using Flow
Objectives. DIDM drivers translates the Flow Objectives to device
specific flows as per the device pipeline.

There are three FlowObjectives (already implemented in ONOS controller)
:

-  Filtering Objective

-  Next Objective

-  Forwarding Objective

Installing DIDM
---------------

To install DIDM, download OpenDaylight and use the Karaf console to
install the following features:

-  odl-openflowplugin-all

-  odl-didm-all

odl-didm-all installs the following required features:

-  odl-didm-ovs-all

-  odl-didm-ovs-impl

-  odl-didm-util

-  odl-didm-identification

-  odl-didm-drivers

-  odl-didm-hp-all

Configuring DIDM
----------------

This section shows an example configuration steps for installing a
driver (HP 3800 OpenFlow switch driver).

Install DIDM features:
----------------------

::

    feature:install odl-didm-identification-api
    feature:install odl-didm-drivers

In order to identify the device, device driver needs to be installed
first. Identification Manager will be notified when a new device
connects to the controller.

Install HP driver
-----------------

feature:install odl-didm-hp-all installs the following features

-  odl-didm-util

-  odl-didm-identification

-  odl-didm-drivers

-  odl-didm-hp-all

-  odl-didm-hp-impl

Now at this point, the driver has written all of the identification
information in to the MD-SAL datastore. The identification manager
should have that information so that it can try to identify the HP 3800
device when it connects to the controller.

Configure the switch and connect it to the controller from the switch
CLI.

Run REST GET command to verify the device details:
--------------------------------------------------

http://<CONTROLLER-IP:8181>/restconf/operational/opendaylight-inventory:nodes

Run REST adjust-flow command to adjust flows and push to the device
-------------------------------------------------------------------

**Flow mod driver for HP 3800 device**

This driver adjusts the flows and push the same to the device. This API
takes the flow to be adjusted as input and displays the adjusted flow as
output in the REST output container. Here is the REST API to adjust and
push flows to HP 3800 device:

http://<CONTROLLER-IP:8181>/restconf/operations/openflow-feature:adjust-flow

FlowObjectives API
------------------

FlowObjective presents the OpenFlow pipeline agnostic API to Application
to consume. Application communicate their intent behind installation of
flow to Drivers using the FlowObjective. Driver translates the
FlowObjective in device specific flows and uses the OpenFlowPlugin to
install the flows to the device.

Filter Objective
~~~~~~~~~~~~~~~~

http://<CONTROLLER-IP>:8181/restconf/operations/atrium-flow-objective:filter

Next Objective
~~~~~~~~~~~~~~

http://<CONTROLLER-IP>:8181/restconf/operations/atrium-flow-objective:next

Forward Objective
~~~~~~~~~~~~~~~~~

http://<CONTROLLER-IP>:8181/restconf/operations/atrium-flow-objective:forward
