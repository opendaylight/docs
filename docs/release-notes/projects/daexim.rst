======
DAEXIM
======

Overview
========
Daexim (Data Export/Import) allows OpenDaylight administrators to either
export a system state to a file system or to import a system state from
the file system.

Behavior Changes
================

Daexim is a mature feature. No behavior changes were introduced in this
release.

New and Modified Features
=========================

This release provides the following new and modified features:

.. list-table::
   :widths: 20 50
   :header-rows: 1

   * - **Feature**
     - **Description**

   * - **Feature URL**
     - `Daexim Feature <https://git.opendaylight.org/gerrit/gitweb?p=daexim.git;a=blob;f=features/odl-daexim/src/main/feature/feature.xml;hb=refs/heads/stable/sodium>`_
   * - **Feature Description**
     - This wrapper feature includes all the sub-features provided by the Daexim project.
   * - **Top Level**
     - Yes
   * - **User Facing**
     - Yes
   * - **Experimental**
     - Yes
   * - **CSIT Test**
     - `Single node tests <https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-csit-1node-basic-only-sodium/>`_
       and `Three node cluster tests <https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-csit-3node-clustering-basic-only-sodium/>`_

Deprecated Features
===================

This release did not remove any feature.

Resolved Issues
===============

The following table lists the resolved issues fixed in this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - General commit
     - Address Sonar warnings found in the code. No behavior changes.

Known Issues
============

* `DAEXIM-14 <https://jira.opendaylight.org/projects/DAEXIM/issues>`_
