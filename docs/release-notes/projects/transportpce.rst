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

2024.03 Calcium release follows an important refactoring work that has improved the maintainability
of many code pieces and should help future developments (rpc and listener registrations, code optimizations...)


New Features
============

From a business point of view, Calcium brings the following new functionalities:
- migration of all the TransportPCE T-API implementation based on T-API models version 2.1.1 to T-API models in version 2.4
- management of the spectrum filling rules defined in the controller-customization module. That functionality may be used by the user to set manually a specific wavelength range when we create an optical transport service.
- finalization of the migration of all transportpce functional tests towards the new netconf device simulator based on lightynode. Lightynode is a netconf device emulator running currently configuration compatible with OpenROADM device models in versions 1.2.1, 2.2.1 or 7.1.0. The emulator is based on the lighty-netconf-simulator project proposed by lighty.io (see https://github.com/PANTHEONtech/lighty-netconf-simulator).
- compilation of new official yang models available for future implementations in transportpce. Especially:

  * set of openconfig models in version pre-release 1
  * openroadm-device models in version 13.1.0


Changes planned in Potassium release stream
===========================================

Throughout the calcium release train, new developments will enrich these new features.
Developments on T-API will continue. Currently the business logic of all TransportPCE modules (service orchestration, topologies, pce, device rendering) is based on OpenROADM models. In the short term, topologies could be managed independently according to OpenROADM or T-API models. And should also follow the Path Computation module next.


Deprecated Features
===================

In 2024.03 Calcium release, T-API yang modules in version 2.1.1 are no longer used (implementation relies on models in version 2.4) but still present in transportpce-models repository. They will be removed in next 2024.09 Scandium release.


Resolved Issues
===============

The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: TRNSPRTPCE
   :versions: Calcium-Calcium


Known Issues
============

The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: TRNSPRTPCE
   :versions: Calcium-Calcium

Also, swagger does not work for TransportPCE with controller resources (see https://jira.opendaylight.org/browse/NETCONF-1279)
