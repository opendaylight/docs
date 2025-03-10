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
We have switched to Galois/Counter in `AAA-267 <https://lf-opendaylight.atlassian.net/browse/AAA-267>`__ to be default
mode of operation algorithm for symmetric keys.

New Features
============
* `AAA-267 <https://lf-opendaylight.atlassian.net/browse/AAA-267>`__

Deprecated and Removed Features
===============================
There are no deprecated or removed features.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: AAA
   :versions: 0.20.0-0.20.1

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: AAA
   :versions: 0.20.0-0.20.1

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: AAA
   :versions: 0.20.2-0.20.3

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: AAA
   :versions: 0.20.2-0.20.3

Resolved Issues in SR2
======================
The following table lists the issues resolved in Service Release 2.

.. jira_fixed_issues::
   :project: AAA
   :versions: 0.20.4-0.20.8

Known Issues in SR2
===================
The following table lists the known issues that exist in Service Release 2.

.. jira_known_issues::
   :project: AAA
   :versions: 0.20.4-0.20.8
