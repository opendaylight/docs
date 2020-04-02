====
AAA
====

Overview
========

AAA (Authentication, Authorization, and Accounting) are services that help improve the security posture of an OpenDaylight deployment.
By default, the majority of OpenDaylight’s northbound APIs (and all RESTCONF APIs) are protected by AAA after installing the +odl-restconf+ feature.


Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - `AAA-180 <https://jira.opendaylight.org/browse/AAA-180>`_
     -  Fixed the MDSAL Dynamic Authorization

   * - `AAA-186 <https://jira.opendaylight.org/browse/AAA-186>`_
     - Fixed the typo in rpc URL

   * - `AAA-191 <https://jira.opendaylight.org/browse/AAA-191>`_
     -  Certificates to be used can be placed in any location other than default.

   * - `AAA-193 <https://jira.opendaylight.org/browse/AAA-193>`_
     -  Fixed the idmtool to with with Python3


Known Issues
============

* `Open Issues <https://jira.opendaylight.org/browse/AAA-196?jql=project%20%3D%20aaa%20%20and%20status%20in%20(Open)>`_
