=====
OVSDB
=====

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

Behavior/Feature Changes
========================

This release introduces the following behavior changes:

* No behavior change in this release.

New Features
============

This release provides the following new features:

* HWVTEP disconnect command support from ODL for L2GW devices which can be used to flap
  the connection with ODL to explicitly trigger hwvtep reconciliation.
  command format : hwvtep:disconnect -nodeid <Hwvtep Node ID> from karaf console

Deprecated Features
===================

This release removed the following features:

* No features has been deprecated in this release.

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - OVSDB-487
     - Migrate to MD-SAL APIs 

   * - OVSDB-495
     - Eliminate ControllerMdsalUtils

   * - OVSDB-494
     - Fix Hwvtep Port reconciliation to handle Physical_Port Delete and Add from switch

Known Issues
============
There are no known issues in this release.