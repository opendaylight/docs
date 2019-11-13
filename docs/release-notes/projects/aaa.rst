===
AAA
===

Major Features
==============

odl-aaa-shiro
----------------

* **Feature URL:** `Shiro <https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob_plain;f=features/odl-aaa-shiro/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** ODL Shiro-based AAA implementation.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** `CSIT <https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-neon/>`_

odl-aaa-cert
------------

* **Feature URL:** `Cert <https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob_plain;f=features/odl-aaa-cert/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** MD-SAL based encrypted certificate management.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** `CIST <https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-neon/>`_

odl-aaa-cli
------------

* **Feature URL:** `CLI <https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob_plain;f=features/odl-aaa-cli/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** Basic Karaf CLI commands for interacting with AAA.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** `CSIT <https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-neon/>`_

Documentation
=============

* **User Guide(s):**

  * :ref:`aaa-user-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * No

Quality Assurance
=================

* `Link to Sonar Report <https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-sonar/>`_ (54% code coverage)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/aaa/>`_

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * Yes, no specific steps needed.

Compatibility
-------------

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * No

* Any configuration changes?

  * No

Bugs Fixed
----------

* List of bugs fixed since the previous release.

  * `Fixed BUGS <https://jira.opendaylight.org/issues/?jql=project%20%3D%20AAA%20AND%20issuetype%20%3D%20Bug%20AND%20status%20%3D%20Resolved%20AND%20resolution%20%3D%20Done%20AND%20resolutiondate%20%3E%20%272018%2F10%2F01%27%20%20%20ORDER%20BY%20resolutiondate>`_

Known Issues
------------

* List key known issues with workarounds.

  * None

End-of-life
===========

* List of features/APIs that were EOLed, deprecated, and/or removed from this release.

  * None

Standards
=========

* List of standards implemented and to what extent.

  * LDAP, JDBC, ActiveDirectory

Release Mechanics
=================

* Describe any major shifts in release schedule from the release plan.

  * None
