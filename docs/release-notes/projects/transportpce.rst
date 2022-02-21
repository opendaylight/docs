=============
Transport PCE
=============

Overview
========

Transport PCE is an application running on top of the OpenDaylight controller. Its primary function
is to control an optical transport infrastructure using a non-proprietary South Bound Interface (SBI).

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

TransportPCE Phosphorus release provides an improved End to End support of high rates services (100GE, OTU4 and 400GE over OTUC4).
An experimental support of T-API is provided allowing service-create/delete from a T-API version 2.1.1 compliant NBI. A T-API network topology, with different levels of abstraction and service contexts are maintained in the MDSAL.
Service state is managed, monitoring device port state changes. Associated notifications are handled through Kafka and  DMaaP clients.

Changes planned in Phosphorus release stream
============================================

Impairment aware path calculation relying on GNPy for End to End high rate services (beyond 100G) will be introduced across the Phosphorus release train.
As for OTN use cases, additional use cases with more complex network configurations will be managed:
- 100GE service terminated on an OTN switch
- use of a 100G OTN switch as intermediate otn switch (with low order or high order odu switching) along a 1GE or 10GE service
- management of OTN services (100GE, ODU4) supported by several OTU4s.
T-API models should evolve towards version 2.1.3.
Finally, Phosphorus release stream will bring end to end management of services for intermediate higher rates, as 200GE or 300GE.

P-SR1 brings as new functionality the management of 100GE services terminated on an OTN switch.
P-SR1 also consolidates the T-API topology implementations (especially the topology named "Full Multi-layer topology"), strengthening the tests (JUnit and python functional tests) of this functionality.
Python code of the functional test part has also been improved, and the migration of our functional tests towards the RFC8040 has just started.
Finally, P-SR1 also brings some code improvements (highlighted by sonar) and few fixes.

P-SR2 brings a given number of improvements, whether in the business code (technical debt reduction) or again in the functional tests code.
P-SR2 includes the migration of all functional tests towards the new restconf url using RFC8040 (in complement of nb-bierman02 about to be removed).
This service release also includes the management of new OTN use cases using 100G OTN switch (see description above).
P-SR2 also includes some fixes regarding the T-API implementation (topologies and begining of the connectivity service implementation).
At last, P-SR2 brings much of developments to support the end-to-end management of services for intermediate high rates (200GE, 300GE).
Let's note also that P-SR2 improves the way to manage OLM timer values (using specific environment variables), depending on whether TransportPCE is controlling real OpenROADM devices or simulators.


New Features
============

There are no new features.

Deprecated Features
===================

There are no deprecated or removed features.

Resolved Issues
===============

The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: TRNSPRTPCE
   :versions: Phosphorus-Phosphorus

Known Issues
============

The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: TRNSPRTPCE
   :versions: Phosphorus-Phosphorus
