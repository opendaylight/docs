===
AAA
===

Overview
========

AAA (Authentication, Authorization, and Accounting) are services that help
improve the security posture of an OpenDaylight deployment. By default,
the majority of OpenDaylight’s northbound APIs (and all RESTCONF APIs)
are protected by AAA after installing the +odl-restconf+ feature.

Behavior/Feature Changes
========================

This release introduces no behavior changes

New Features
============

This release provides the following new features:

* - <AAA-199>
  -  possibility to enable async requests

Deprecated Features
===================

This release did not deprecate any features.


Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - <AAA-198>
     - Way to control the policy order for Dynamic Authorization.

   * - <AAA-194>
     - Fixed the url pattern string in the default AAA Config file.

   * - <AAA-189>
     - Fixed the AAA Karaf Commands.

Known Issues
============

* `Open Issues <https://jira.opendaylight.org/browse/AAA-196?jql=project%20%3D%20aaa%20%20and%20status%20in%20(Open)>`_
