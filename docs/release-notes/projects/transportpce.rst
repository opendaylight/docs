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
       can be delegated to a GNPy server (hardcoded configuration and limited support at that time)
   * - **Inventory**
     - This feature is not installed by default.
       It proposes an experimental support for an external inventory DB currently limited to 1.2.1 OpenROADM devices.

The internal RPCs between those modules are defined in the Transport Service Path models.

Behavior/Feature Changes
========================

This release introduces the following behavior changes:

* GNPy support now uses BindingDOMCodecServices instead of mdsal.binding.dom.codec.impl to process exchanges payload.
* Some RPC return codes changed from "not found" to "conflict" because of YangTools upgrade.
  https://git.opendaylight.org/gerrit/c/transportpce/+/92349

New Features
============

This release provides the following new features:

* OTN end-to-end service creation directly from the NorthBound API.
* experimental introduction of Flex-Grid (TRNSPRTPCE-253).

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - TRNSPRTPCE-183
     - Adding SAPI/DAPI to Renderer

   * - TRNSPRTPCE-186
     - UUID stabilization in TAPI Topology abstractio

   * - TRNSPRTPCE-275
     - Fix TAPI execution NPE

   * - N/A
     - SpanLoss uses now BigDecimal and is better handled

   * - N/A
     - OTN link update issue

   * - TRNSPRTPCE-288
     - Missing modulation format for 2.2.1 OCH interface

Known Issues
============

The following table lists the known issues that exist in this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - TRNSPRTPCE-287
     - Handling Port capabilities in topology

   * - TRNSPRTPCE-329
     - TAPI Karaf feature can cause heap memory size issues.
       The heap memory size can be increased at Karaf start-up to palliate this problem.
