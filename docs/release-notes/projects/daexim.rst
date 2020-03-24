============
Data Export/Import
============

Overview
========

Data Export/Import (Daexim) feature allows OpenDaylight administrators
to export the current system state to the file system or to import the
state from the file system.

Behavior Changes
================

This release introduces the following behavior changes:

* `DAEXIM-16 <https://jira.opendaylight.org/browse/DAEXIM-16>`_: Option to batch data during import operation

New and Modified Features
=========================

This releases provides the following new and modified features:

* **Feature URL:** `Daexim Feature <https://git.opendaylight.org/gerrit/gitweb?p=daexim.git;a=blob;f=features/odl-daexim/src/main/feature/feature.xml;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** This wrapper feature includes all the sub-features provided by the Daexim project.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * `Single node tests <https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-csit-1node-basic-only-magnesium/>`_
  * `Three node cluster tests <https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-csit-3node-clustering-basic-only-magnesium/>`_

Deprecated Features
===================

This releases removed the following features:

* None

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

