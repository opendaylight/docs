==========
Controller
==========

Overview
========

The Controller project is an infrastructure service that supports other OpenDaylight projects.
It does not have user-facing features.


Behavior/Feature Changes
========================
The default configuration of the Distributed Datastore has been changed to take advantage
of the ``tell-based protocol`` which has been long in the works. This prevents the dreaded
``AskTimeoutException`` from being reported to applications. It also has much more modest
requirements on native memory when coupled with Akka Artery.

The ``ask-based protocol`` remains a configurable option and will remain for at least one
release, but its use should be avoided unless necessary.

New Features
============
There are no new features.

Deprecated and Removed Features
===============================
No deprecated or removed features.

Resolved Issues
===============

The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: CONTROLLER
   :versions: 5.0.0-5.0.3

Known Issues
============

The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: CONTROLLER
   :versions: 5.0.0-5.0.3

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: CONTROLLER
   :versions: 5.0.4-5.0.5

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: CONTROLLER
   :versions: 5.0.4-5.0.5
