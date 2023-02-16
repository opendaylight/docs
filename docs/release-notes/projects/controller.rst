==========
Controller
==========

Overview
========

The Controller project is an infrastructure service that supports other OpenDaylight projects.
It does not have user-facing features.


Behavior/Feature Changes
========================
No changes.

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
   :versions: 7.0.0-7.0.3

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: CONTROLLER
   :versions: 7.0.0-7.0.3
