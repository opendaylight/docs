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
* Caches
* ``Diagstatus``
* Metrics

Behavior/Feature Changes
========================
Error Prone execution for pom.xmls inherited from ``org.opendaylight.infrautils:parent``  is now enabled
on JDKs 11 through 17. This was previously disabled on JDK 16 and JDK 17 due to compatibility issues.

New Features
============
There are no new features.

Deprecated and Removed Features
===============================
Job Coordinator was a rather troublesome attempt at coordinating datastore updates, but in that it made
reasoning about updates and recovery from failures nigh impossible. It is not used by any active projects
and has been removed without a replacement.

The ``shell`` artifact has been removed, as it has no users and provided no meaningful functionality.

Resolved Issues
===============

The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: INFRAUTILS
   :versions: 2.0.0-2.0.5

Known Issues
============

The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: INFRAUTILS
   :versions: 2.0.0-2.0.5

