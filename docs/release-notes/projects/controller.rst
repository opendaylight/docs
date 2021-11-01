==========
Controller
==========

Overview
========

The Controller project is an infrastructure service that supports other OpenDaylight projects.
It does not have user-facing features.


Behavior/Feature Changes
========================

The implementation of Entity Ownership Service has been rewritten from scratch. It is now completely
independent of ``sal-distributed-datastore``. See `this issue <https://jira.opendaylight.org/browse/CONTROLLER-1982>`__ for details.

As per upstream advice from Akka, we have now switched our communications to use Akka Artery. See
`this issue <https://jira.opendaylight.org/browse/CONTROLLER-1968>`__ for details.

New Features
============
There are no new features.

Deprecated and Removed Features
===============================
There are no deprecated features in this release, but there is a large number of feature removals:
* ``opendaylight-inventory`` and ``opendaylight-topology`` models have been moved to OpenFlow Plugin
* support for upgrading from versions before ``Sodium SR`` was removed
* prefix-based shards have been completely removed
* the proof-of-concept ``messagebus`` component was removed

Resolved Issues
===============

The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: CONTROLLER
   :versions: 4.0.0-4.0.6

Known Issues
============

The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: CONTROLLER
   :versions: 4.0.0-4.0.6

