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

Potassium GA release follows an important refactoring work that has improved the maintainability
of many code pieces (first implementation of the Catalog, functional tests,
verification of the lighty.io build needed after the removal of all blueprint xml files of the projet, etc).
From a business point of view, Potassium brings the following new functionalities:
- ability to create a 400Gbps service between add/drop ports of a ROADM using the openroadm 'OC' service format
- migration of OpenROADM network and service yang models from version 10.1 to the latest 13.1
- the start of the developement of a big epic: the Alien Wavelength Use Case. To that end, Potassium covers testing and
resolved issues related to the implementation of the 'temp-service' within TransportPCE.

Changes planned in Potassium release stream
===========================================

The Netconf device simulator used until now to perform TransportPCE functional tests (honeynode, based on the archived
fd.io/honeycomb project) becomes difficult to maintain. It will eventually be replaced by lightynode, optical device
emulator developped over the lighty-netconf-simulator proposed by PANTHEONtech
(https://github.com/PANTHEONtech/lighty-netconf-simulator/tree/main).
With Potassium GA, part of TransportPCE functional tests have migrated towards this new netconf device emulator.
However, Potassium release stream will finalyze this TransportPCE functional test migration from honeynode towards lightynode.

New Features
============

No new feature as such in Potassium.

Deprecated Features
===================

There are no deprecated or removed features.

Resolved Issues
===============

The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: TRNSPRTPCE
   :versions: Potassium-Potassium

Known Issues
============

The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: TRNSPRTPCE
   :versions: Potassium-Potassium

Resolved Issues in SR1
======================

The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: TRNSPRTPCE
   :versions: PotassiumSR1-PotassiumSR1

Known Issues in SR1
===================

The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: TRNSPRTPCE
   :versions: PotassiumSR1-PotassiumSR1

Resolved Issues in SR2
======================

The following table lists the issues resolved in Service Release 2.

.. jira_fixed_issues::
   :project: TRNSPRTPCE
   :versions: PotassiumSR2-PotassiumSR2

Known Issues in SR1
===================

The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: TRNSPRTPCE
   :versions: PotassiumSR2-PotassiumSR2
