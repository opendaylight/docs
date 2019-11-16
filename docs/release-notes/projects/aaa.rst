===
AAA
===

Overview
========

AAA (Authentication, Authorization, and Accounting) are services that
help improve the security posture of an OpenDaylight deployment. By
default, the majority of OpenDaylight's northbound APIs (and all RESTCONF
APIs) are protected by AAA after installing the +odl-restconf+ feature.
When an API is *not* protected by AAA, it will be noted in the release notes.

Major Features
==============

odl-aaa-shiro
-------------

* Feature URL: `ODL Shiro <https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob_plain;f=features/odl-aaa-shiro/pom.xml;hb=refs/heads/stable/sodium>`_
* Feature Description: ODL Shiro-based AAA implementation
* Top Level: Yes
* User Facing: Yes
* Experimental: Yes
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-sodium/>`_

odl-aaa-cert
------------

* Feature URL: `ODL Cert <https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob_plain;f=features/odl-aaa-cert/pom.xml;hb=refs/heads/stable/sodium>`_
* Feature Description: MD-SAL based encrypted certificate management
* Top Level: Yes
* User Facing: Yes
* Experimental: Yes
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-sodium/>`_

odl-aaa-cli
-----------

* Feature URL: `ODL CLI <https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob_plain;f=features/odl-aaa-cli/pom.xml;hb=refs/heads/stable/sodium>`_
* Feature Description: Basic karaf CLI commands for interacting with AAA
* Top Level: Yes
* User Facing: Yes
* Experimental: Yes
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-sodium/>`_

Documentation
=============

* **User Guide**

  * `Authentication, Authorization and Accounting (AAA) Services <https://docs.opendaylight.org/en/stable-oxygen/user-guide/authentication-and-authorization-services.html#aaa-user-guide>`_

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * No

Quality Assurance
=================

* `Sonar Report <https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-sonar/>`_
* `CSIT Jobs <https://jenkins.opendaylight.org/releng/view/aaa/>`_

Migration
=========

* Is it possible to migrate from the previous release? If so, how?

  * Yes, no specific steps needed.

Compatibility
=============

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * No

* Any configuration changes?

  * No

Behavior Changes
================

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Bug ID**
     - **Description**

   * - `AAA-173 <https://https://jira.opendaylight.org/browse/AAA-173>`_
     - Eliminate the Oauth2 Provider Implementation that was based on Apache Oltu.

Bug Fixes
=========

* `Closed Bugs <https://jira.opendaylight.org/browse/AAA-185?jql=project%20%3D%20aaa%20AND%20type%20%3D%20Bug%20AND%20status%20%3D%20Resolved%20%20AND%20fixVersion%20%3D%20Sodium%20>`_

Known Issues
============

* `Open Bugs <https://jira.opendaylight.org/browse/AAA-185?jql=project%20%3D%20aaa%20AND%20type%20%3D%20Bug%20AND%20status%20%3D%20Resolved%20%20AND%20fixVersion%20%3D%20Sodium%20>`_

End-of-life
===========

* List of features/APIs that were EOLed, deprecated, and/or removed from this release.

  * None

Standards
=========

* List of standards implemented and to what extent.

  * N/A

Release Mechanics
=================

* N/A
