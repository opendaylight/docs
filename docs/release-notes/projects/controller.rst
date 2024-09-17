==========
Controller
==========

Overview
========

The Controller project is an infrastructure service that supports other OpenDaylight projects.
It does not have user-facing features.


Behavior/Feature Changes
========================
The ``OpenDaylight Blueprint`` extender has been trimmed down, removing support for the following
XML elements:

* ``action-implementation``
* ``action-instance``
* ``notification-listener``
* ``rpc-implementation``
* ``rpc-service``
* ``specific-reference-list``
* ``static-reference``

New Features
============
There are no new features.

Deprecated and Removed Features
===============================
Distributed Datastore's ``ask-based`` protocol has been removed in this release. The experimental
``odl-controller-exp-netty-config`` feature has been removed as well.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: CONTROLLER
   :versions: 9.0.0-9.0.2

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: CONTROLLER
   :versions: 9.0.0-9.0.2

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: CONTROLLER
   :versions: 9.0.3-9.0.4

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: CONTROLLER
   :versions: 9.0.3-9.0.4