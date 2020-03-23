=============
Transport PCE
=============

Overview
========

TransportPCE describes an application running on top of the OpenDaylight controller.
Its primary function is to control an optical transport infrastructure using a non-proprietary South Bound Interface (SBI).

The controlled transport infrastructure includes a WDM layer and an OTN layer.
The WDM layer is built from ROADMs with colourless, directionless and possibly contention-less features.
The OTN layer is built from transponders, muxponders or switchponders which include OTN switching functionalities.

TransportPCE leverages OpenROADM Multi-Source-Agreement (MSA) which defines interoperability specifications,
consisting of both Optical interoperability and Yang data models.
The TransportPCE implementation includes:

* a Northbound API for higher level applications, implemented in the Service Handler bundle.
  It relies on the Service Model defined in the MSA.
* The Renderer and the OLM (Optical Line Management) bundles to allow configuring OpenROADM devices
  through a southbound Netconf/Yang interface (based on the MSA’s device models).
  This release supports the OpenROADM devices version 1.2.1 version 2.2.1 .
* a Topology Management bundle also based on the MSA Network models defined.
* a Path Calculation Engine (PCE, here in a different meaning than the BGPCEP project since it is not based on (G)MPLS )

The internal RPCs between those modules are defined in the Transport Service Path models.

Behavior Changes
================

This release introduces the following behavior changes:

* a first experimental support for OTN on top of the already existing OpenROADM WDM support.
  This concerns for Magnesium SR0 portmapping, topology, renderer and PCE (Service Handler not yet ready)
  Honeynode simulators were upgraded to support OTN as well as the migration to Java 11 for functional tests.
* OpenROADM service (Northbound API) upgraded to version 5.1.0
* Service Path API upgraded to new version 1.7
* GNPy server connection support.
  This allows to offload PCE impairment aware  path calculation to a GNPy server,
  or to validate a path precomputed by transportPCE, including the impacts of non linear effects .
* External database connector experimental support.
  This connector allows to populate an external (MariaDB) Inventory Database, currently limited to OpenROADM version 1.2.1 devices.
* a limited support of TAPI version 2.1.2.
  It is used to expose (through a TAPI compliant Northbound Interface) an abstracted WDM/OTN topology
  that masks the OpenROADM topology complexity to higher layer controllers/orchestrator.
  - TAPI:get-topology-details rpc to abstract nodes from OpenROADM openroadm-topology (WDM and OTN)

OTN XPONDERS in the abstracted T-API topology appear as one node in the DSR/ODU layer (with 1GE/ODU0, 10GE/ODU2e or 100GE/ODU4 Node Edge Points (NEP)), and one node in the photonic-Media layer with a single OMS/OTSI NEP. Both nodes are interconnected through a transitional link. Couples of 100GE Transponders are represented through a single node ( layer-protocol-name = ETH).

New and Modified Features
=========================

This releases provides the following new and modified features:

* odl-transportpce  the main feature that installs all the OpenROADM based core components of transportPCE for WDM control.
  The OTN support provided in portmapping, topology, renderer and PCE bundles is **Experimental** .
* odl-transportpce-tapi a limited support of TAPI version 2.1.2 (through a TAPI compliant Northbound Interface)
  to retrieve an abstracted WDM/OTN topology.
* odl-transportpce-inventory a new **Experimental** feature to connect an External MariaDB inventory database.
  Its supports is currently limited to OpenROADM version 1.2.1 devices.

Deprecated Features
===================

This releases removed the following features:

* features-transportpce deprecated by odl-transportpce. It was previously introduced for Karaf3/4 compatibility.
* odl-transportpce-ordmodels moved to several bundles integrated in odl-transportpce
* odl-transportpce-api now integrated in odl-transportpce
* odl-transportpce-stubmodels (previously used only in tests)

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - TRNSPRTPCE-169
     - Make the PCE more deterministic

Known Issues
============

No known issues were identified in this release.

