==========
InfraUtils
==========

Overview
========

The InfraUtils project provides a low-level utility for use by other OpenDaylight projects, including:

* @Inject DI
* ``Utils`` incl. ``org.opendaylight.infrautils.utils.concurrent``
* Test Utilities
* Ready Service
* Integration Test Utilities (``itestutils``)
* ``Diagstatus``

Behavior/Feature Changes
========================
There are no changes to behavior.

New Features
============
There are no new features.

Deprecated and Removed Features
===============================
The ``Metrics`` component has been migrated to ``serviceutils`` project, as that is the only user of this
functionality.

The ``Caches`` component was removed as it has no users at all.

Resolved Issues
===============

The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: INFRAUTILS
   :versions: 3.0.0-3.0.0

Known Issues
============

The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: INFRAUTILS
   :versions: 3.0.0-3.0.0

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: INFRAUTILS
   :versions: 3.0.1-3.0.1

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: INFRAUTILS
   :versions: 3.0.1-3.0.1
