==================
Data Export/Import
==================

Overview
========

Data Export/Import (Daexim) feature allows OpenDaylight administrators
to export the current system state to the file system or to import the
state from the file system.

New and Modified Features
=========================

This releases provides the following new features:

* `DAEXIM-16 <https://jira.opendaylight.org/browse/DAEXIM-16>`_: Option to batch data during import operation

Deprecated Features
===================

This release did not deprecate or remove any feature.

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - DAEXIM-15
     - Daexim import during boot fails if model file not provided

Known Issues
============

The following table lists the known issues that exist in this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - DAEXIM-14
     - Add an option to trigger a CDS snapshot after import

