=============
OVSDB Project
=============

Overview
========

The OVSDB Project provides the following functionality:

* OVSDB Southbound Plugin handles the OVS device that supports the OVSDB
  schema and uses the OVSDB protocol. This feature provides the implementation
  of the defined YANG models. Developers developing the in-controller application
  and want to leverage OVSDB for device configuration can leverage this functionality.
* HWvTep Southbound Plugin handles the OVS device that supports the OVSDB
  Hardware vTEP schema and uses OVSDB protocol. This feature provides the
  implementation of the project defined YANG models. Developers developing
  the in-controller application and want to leverage OVSDB Hardware vTEP
  plugin for device configuration can leverage this functionality.

Behavior Changes
================
* Ovsdb delete reconciliation support `<https://git.opendaylight.org/gerrit/c/ovsdb/+/71845>`

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
     - Optimization to get the nodeIid from the DeviceOperCache in HwvtepPhysicalPortUpdateCommand.

   * - OVSDB-484
     - Check for the SHARD Status before opening the OVSDB port/HwvtepSouthboundProvider initialization.

   * - OVSDB-485
     - Optimization to read the HwvtepNode from the cache.

   * - OVSDB-491
     - Optimize the OvsdbPortUpdateCommand during the ODL reboot/Ovsdb connection.

   * - OVSDB-494
     - Fix Hwvtep Port reconciliation to handle Physical_Port Delete and Add from switch.

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