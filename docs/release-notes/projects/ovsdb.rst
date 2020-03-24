=============
OVSDB Project
=============

Overview
========

The OVSDB Project provides the following functionality:

* The OVSDB southbound plugin handles any OVS device that supports both the
  OVSDB schema and uses the OVSDB protocol. This feature implements a defined
  YANG model. Developers can use this functionality to develop in-controller
  applications that leverage OVSDB for device configuration.
* The HWvTep southbound plugin handles any OVS device that supports both the
  OVSDB hardware vTEP schema and uses OVSDB protocol. This feature implements
  a defined YANG model. Developers can use this functionality to develop
  in-controller applications that leverage OVSDB hardware vTEP plugin for
  device configuration.

Behavior Changes
================
* `Ovsdb delete reconciliation support` to take care of removing stale tunnels.
  `<https://git.opendaylight.org/gerrit/c/ovsdb/+/71845>`

New and Modified Features
=========================
* No new or modified features in this release.

Deprecated Features
===================
* No Deprecated Features in this release.

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - OVSDB-481
     - Hwvtep TransactionHistory improvements.

   * - OVSDB-482
     - Optimization to get the NodeID from the DeviceOperCache in HwvtepPhysicalPortUpdateCommand.

   * - OVSDB-484
     - Check for the shard status before opening the OVSDB port/HwvtepSouthboundProvider initialization.

   * - OVSDB-485
     - Optimization to read the HwvtepNode from the cache.

   * - OVSDB-491
     - Optimize the OvsdbPortUpdateCommand during the ODL reboot/OVSDB connection.

   * - OVSDB-494
     - Fix HWvTep Port reconciliation to handle Physical_Port Delete and Add from switch.

   * - OVSDB-459
     - Avoid Bulk Topology Read During Reconciliation.

Known Issues
============
The following table lists the known issues that exists in this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - OVSDB-487
     - Migrate to MD-SAL APIs