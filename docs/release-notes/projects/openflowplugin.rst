===============
OpenFlow Plugin
===============

Overview
========

The OpenFlow Plugin project provides the following functionality:

* **OpenFlow 1.0/1.3 implementation project**: This provides the implementation of the
  OpenFlow 1.0 and OpenFlow 1.3 specification.
* **ONF Approved Extensions Project**: This provides the implementation of following ONF
  OpenFlow 1.4 feature, which is approved as extensions for the OpenFlow 1.3
  specification:

  * **Nicira Extensions Project**: This provides the implementation of the Nicira extensions.
    Some of the important extensions implemented are **Connection Tracking Extension**
    and **Group Add-Mod Extension**

* **OpenFlow-Based Applications Project**: This provides the following applications that user can
  leverage out-of-the-box in developing their application or as a direct end consumer:

  .. list-table:: OpenFlow-Based Applications
     :widths: 15 55
     :header-rows: 1

     * - **Application**
       - **Description**

     * - **Forwarding Rules Manager**
       -  Application provides functionality to add/remove/update flow/groups/meters.
     * - **LLDP Speaker**
       - Application sends periodic LLDP packet out on each OpenFlow switch port for link discovery.
     * - **Topology LLDP Discovery**
       - Application intercept the LLDP packets and discover the link information.
     * - **Topology Manager**
       - Application receives the discovered links information from Topology LLDP
         Discovery application and stores in the topology yang model datastore.
     * - **Reconciliation Framework**
       - Framework that exposes the APIs that consumer application (in-controller) can
         leverage to participate in the switch reconciliation process in the event of
         switch connection/reconnection.
     * - **Arbitrator Reconciliation**
       - Application exposes the APIs that consumer application or direct user can
         leverage to trigger the device configuration reconciliation.
     * - **OpenFlow Java Library Project**
       - Provides the OpenFlow Java Library that converts the data based on OpenFlow
         plugin data models to the OpenFlow java models before sending it down the
         wire to the device.
     * - **Reconciliation**
       - Reconciles the state using Openflow 1.4 bundles.

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
