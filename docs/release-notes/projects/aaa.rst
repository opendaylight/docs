===
AAA
===

Overview
========

AAA (Authentication, Authorization, and Accounting) provides the services
that help improve the security posture of an OpenDaylight deployment.
By default, the vast majority of OpenDaylight’s northbound APIs
(and all RESTCONF APIs) are protected by AAA when installing the
+odl-restconf+ feature. When an API is not protected by AAA, it
is noted in the project’s release notes.

Behavior Changes
================

* `AAA-173 <https://https://jira.opendaylight.org/browse/AAA-173>`_: Eliminate the Oauth2 Provider Implementation that was based on Apache Oltu.

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
