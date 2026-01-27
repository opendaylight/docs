=============
Transport PCE
=============

Overview
========

Transport PCE is an OpenDaylight controller feature whose primary function is to control high rate transport services.
To that end, it controls the infrastructure of an optical transport network using a non-proprietary South Bound Interface (SBI).

The controlled transport infrastructure includes a WDM (Wave Division Multiplexing) layer and an OTN
(optical transport network) layer. The WDM layer is built from ROADMs (reconfigurable optical add-drop multiplexer)
with colorless, directionless and contention-less features. The OTN layer is built from transponders,
muxponders or switchponders which include OTN switching functionalities.

Transport PCE leverages OpenROADM Multi-Source-Agreement (MSA), which defines interoperability specifications,
consisting of both optical interoperability and YANG data models.

The TransportPCE implementation includes:

.. list-table:: Transport PCE implementation
   :widths: 20 50
   :header-rows: 1

   * - **Feature**
     - **Description**

   * - **Northbound API**
     - These APIs are for higher level applications, implemented in the Service Handler bundle.
       It relies on the service model defined in the MSA.
       A minimal experimental support of TAPI topology is also proposed but is not installed by default.
   * - **Renderer and OLM**
     - The renderer and OLM (Optical Line Management) bundles allow configuring OpenROADM devices
       through a southbound NETCONF/YANG interface (based on the MSA device models).
       This release supports the OpenROADM devices version 1.2.1 version 2.2.1.
   * - **Topology Management**
     - This feature is based on the defined MSA network model.
   * - **Path Calculation Engine (PCE)**
     - PCE here has a different meaning than the BGPCEP project since it is not based on (G)MPLS.
       This bundle allows to compute path across the topology to create services. Impairment aware path computation
       can be delegated to a GNPy server (hardcoded server address configuration and limited support at that time)
   * - **Inventory**
     - This feature is not installed by default.
       It proposes an experimental support for an external inventory DB currently limited to 1.2.1 OpenROADM devices.

The internal RPCs between those modules are defined in the Transport Service Path models.


Behavior/Feature Changes
========================

None.


New Features
============

None.


Deprecated Features
===================

None.


Resolved Issues
===============

The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: TRNSPRTPCE
   :versions: Vanadium-Vanadium


Known Issues
============

The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: TRNSPRTPCE
   :versions: Vanadium-Vanadium

Also, swagger does not work for TransportPCE with controller resources (see https://jira.opendaylight.org/browse/NETCONF-1279)
