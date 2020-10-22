==========
Controller
==========

Overview
========

The Controller project is an infrastructure service that supports other OpenDaylight projects.
It does not have user-facing features.


Changes in Phosphorus release stream
====================================
There is a comprehensive list of JIRA issues
`resolved in this release <https://jira.opendaylight.org/issues/?jql=project%20%3D%20CONTROLLER%20AND%20fixVersion%20in%20(4.0.0%2C%204.0.1%2C%204.0.2%2C%204.0.3)>`__


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

.. jira_issues:: project = CONTROLLER AND resolution = Done AND fixVersion in (4.0.0,4.0.1,4.0.2,4.0.3) ORDER BY KEY ASC
   :baseurl: https://jira.opendaylight.org/
   :columns: Issue Type;Key;Summary;Status;Resolution;

Known Issues
============

The following table lists the known issues that exist in this release.

.. jira_issues:: project = CONTROLLER AND affectedVersion in (4.0.0,4.0.1,4.0.2,4.0.3) and fixVersion not in (4.0.0,4.0.1,4.0.2,4.0.3) ORDER BY KEY ASC
   :baseurl: https://jira.opendaylight.org/
   :columns: Issue Type;Key;Summary;Status;Resolution;

