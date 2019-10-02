
======
DAEXIM
======

Overview
========

DAEXIM or Data Export/Import feature allows OpenDaylight administrators
to export the current system state to the file system or to import the
state from the file system.


Behavior Changes
================

DAEXIM is a mature feature. No behavior changes were introduced in this
release.


New and Modified Features
=========================

This releases provides the following new and modified features:

* **Feature URL:** `DAEXIM Feature <https://git.opendaylight.org/gerrit/gitweb?p=daexim.git;a=blob;f=features/odl-daexim/src/main/feature/feature.xml;hb=refs/heads/stable/sodium>`_
* **Feature Description:** This is a wrapper feature which includes all the sub features provided by daexim project.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:**  `Single node tests <https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-csit-1node-basic-only-sodium/>`_,  `Three node cluster tests <https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-csit-3node-clustering-basic-only-sodium/>`_


Deprecated Features
===================

This release did not remove any features.


Resolved Issues
===============

The following table lists the resolved issues fixed in this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - General commit
     - Address Sonar warnings found in the code. No behavior change.




Known Issues
============

There are no known issues that exist in this release. List of open
issues can be found `here <https://jira.opendaylight.org/projects/DAEXIM/issues>`_.

