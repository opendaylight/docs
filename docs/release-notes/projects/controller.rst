==========
Controller
==========

Overview
========

The Controller project is an infrastructure service that supports other OpenDaylight projects.
It does not have user-facing features.


Behavior/Feature Changes
========================
This release does not support running mixed-versions clusters. This precludes in-place on-line upgrades,
as 2023.09 Potassium nodes cannot interchange data with nodes running previous versions in a compatible
manner. In order to perform the upgrade to 2023.09 Potassium, upgrade one node to this version, then reduce
the cluster to that single node, then upgrade all the other nodes and then re-grow the cluster to include
those nodes.

This upgrade is not directly reversible, once upgraded, a node cannot be downgraded to below 2023.09 Potassium.

New Features
============
There are no new features.

Deprecated and Removed Features
===============================
Distributed Datastore's ``ask-based`` protocol has been deprecated in this release. Enabling it
will cause a warning to be logged. Configuration knob along with the actual implementation
is schedule for removal in a future release.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: CONTROLLER
   :versions: 8.0.0-8.0.0

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: CONTROLLER
   :versions: 8.0.0-8.0.0
