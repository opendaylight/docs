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

2024.09 Scandium release follows an important refactoring work that has improved the maintainability
of many code pieces and should help future developments.


New Features
============

From a business point of view, Scandium brings the following new functionalities:
- development of a debug tool dedicated to highjack proprietary augmentations in openconfig transponders
- implementation of new TAPI 2.4 functionalities associated with OMS and OTS handling
- new functionality to allow the end user to set the wavelength of its connectivity service
- augmentation of the OpenROADM topology in the controller to support Allien openconfig Xponders and heterogeneous domain interconnections
- creation of an abstracted TAPI node at the TAPI feature installation to manage any TAPI topology provided by a client Network Management System (Open Line System architecture). This is a preliminary work to support in a second step the TAPI SBI feature


Changes planned in Scandium release stream
===========================================

Throughout the Scandium release train, new developments will enrich these new features.
Developments on T-API will continue. Currently the business logic of all TransportPCE modules (service orchestration, topologies, pce, device rendering) is based on OpenROADM models. In the short term, topologies could be managed independently according to OpenROADM or T-API models. And should also follow the Path Computation module next.


Resolved Issues
===============

The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: TRNSPRTPCE
   :versions: Scandium-Scandium


Known Issues
============

The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: TRNSPRTPCE
   :versions: Scandium-Scandium

Resolved Issues in SR1
======================

The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: TRNSPRTPCE
   :versions: ScandiumSR1-ScandiumSR1


Known Issues in SR1
===================

The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: TRNSPRTPCE
   :versions: ScandiumSR1-ScandiumSR1

