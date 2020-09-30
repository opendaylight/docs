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

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - OPNFLWPLUG-1087
     - ODL Controller should provide a view of openflow node reconciliation status

   * - OPNFLWPLUG-1098
     - Migrate addAugmentation(Class, Augmentation) users

   * - OPNFLWPLUG-1099
     - Migrate call sites using legacy narrowing to Uint types

New Features
============

This release does not modify any existing features.


Deprecated Features
===================

None

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - OPNFLWPLUG-1080
     - Nodes not populated in operational/opendaylight-inventory:nodes after Controller Isolation

   * - OPNFLWPLUG-1082
     - When switch changes owner, all cluster members delete switch inventory operational

   * - OPNFLWPLUG-1090
     - ConcurrentModificationException: null when connecting cbench switches

   * - OPNFLWPLUG-1093
     - Exceptions Multiple entries with same key seen in openflowplugin

   * - OPNFLWPLUG-1094
     - Include switch certificate key attributes in TLS Authentication Failure notification

   * - OPNFLWPLUG-1101
     - Flow descriptors are not cleared when using delete all flows RPC

Known Issues
============

No Known issues in this release.
