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
   * - **Renderer and OLM**
     - The renderer and OLM (Optical Line Management) bundles allow configuring OpenROADM devices
       through a southbound NETCONF/YANG interface (based on the MSA device models).
       This release supports the OpenROADM devices version 1.2.1 version 2.2.1.
   * - **Topology Management**
     - This bundle is based on the defined MSA network model.
   * - **Path Calculation Engine (PCE)**
     - PCE here has a different meaning than the BGPCEP project since it is not based on (G)MPLS.

The internal RPCs between those modules are defined in the Transport Service Path models.

Behavior/Feature Changes
========================

This release introduces the following behavior changes:

*

New Features
============

This release provides the following new features:

*

Deprecated Features
===================

This release removed the following features:

*

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - <bug ID>
     -

Known Issues
============

The following table lists the known issues that exist in this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - <bug ID>
     -
