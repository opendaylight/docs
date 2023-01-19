===
AAA
===

Overview
========

AAA (Authentication, Authorization, and Accounting) are services that help
improve the security posture of an OpenDaylight deployment. By default,
the majority of OpenDaylight’s northbound APIs (and all RESTCONF APIs)
are protected by AAA after installing the ``+odl-restconf+`` feature.

Behavior/Feature Changes
========================
There are no changes to features.

New Features
============
This release contains a major upgrade of H2 database. This impacts the ability
to perform in-place upgrades. Users perfoming an upgrade will need to remove
``data/idmlight.db.*`` files and re-populate the database.

Deprecated and Removed Features
===============================
There are no deprecated or removed features.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: AAA
   :versions: 0.16.0-0.16.3

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: AAA
   :versions: 0.16.0-0.16.3

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: AAA
   :versions: 0.16.4-0.16.6

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: AAA
   :versions: 0.16.4-0.16.6

Resolved Issues in SR2
======================
The following table lists the issues resolved in Service Release 2.

.. jira_fixed_issues::
   :project: AAA
   :versions: 0.16.7-0.16.7

Known Issues in SR2
===================
The following table lists the known issues that exist in Service Release 2.

.. jira_known_issues::
   :project: AAA
   :versions: 0.16.7-0.16.7
