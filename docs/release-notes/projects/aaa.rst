============
 AAA
============

Overview
========

AAA stands for Authentication, Authorization, and Accounting. All three of
these services can help improve the security posture of an OpenDaylight deployment.

The vast majority of OpenDaylight's northbound APIs (and all RESTCONF APIs) are
protected by AAA by default when installing the +odl-restconf+ feature. In the
cases that APIs are *not* protected by AAA, this will be noted in the
per-project release notes.

Behavior Changes
================

* Eliminate the Oauth2 Provider Implementation that was based on Apache Oltu.
  `AAA-173 <https://https://jira.opendaylight.org/browse/AAA-173>`_: https://jira.opendaylight.org/browse/AAA-173

New and Modified Features
=========================

* N/A

Deprecated Features
===================

* N/A

Resolved Issues
===============

* `Closed Bugs <https://jira.opendaylight.org/browse/AAA-185?jql=project%20%3D%20aaa%20AND%20type%20%3D%20Bug%20AND%20status%20%3D%20Resolved%20%20AND%20fixVersion%20%3D%20Sodium%20>`_

Known Issues
============

* `Open Bugs <https://jira.opendaylight.org/browse/AAA-186?jql=project%20%3D%20aaa%20AND%20type%20%3D%20Bug%20AND%20status%20in%20(Confirmed%2C%20"In%20Progress"%2C%20Open)>`_
