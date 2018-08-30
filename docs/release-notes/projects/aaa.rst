===
aaa
===

Major Features
==============

odl-aaa-shiro
----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob_plain;f=features/odl-aaa-shiro/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  ODL Shiro-based AAA implementation
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-fluorine/

odl-aaa-cert
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob_plain;f=features/odl-aaa-cert/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  MD-SAL based encrypted certificate management
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-fluorine/

odl-aaa-cli
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob_plain;f=features/odl-aaa-cli/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  Basic karaf CLI commands for interacting with AAA
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-fluorine/

Documentation
=============

* **User Guide(s):**

  * :ref:`aaa-user-guide`

* **Developer Guide(s):**

  * :ref:`aaa-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  No

* Other security issues?

  No

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

* `AAA-176 <https://jira.opendaylight.org/projects/AAA/issues/AAA-176>`_ Random errors while fetching JOLOKIA URLs in 3 node CSIT
* `AAA-143 <https://jira.opendaylight.org/projects/AAA/issues/AAA-143>`_ Severe security and license analysis issuess in jackson-databind and jackson-dataformat-xml on Nexus IQ server CLM Job
* `AAA-164 <https://jira.opendaylight.org/projects/AAA/issues/AAA-164>`_ AAA does not provide a feature for aaa-shiro-act bundle
* `AAA-175 <https://jira.opendaylight.org/projects/AAA/issues/AAA-175>`_ Jersey does not start when multiple features are loaded 
* `AAA-169 <https://jira.opendaylight.org/projects/AAA/issues/AAA-169>`_ Web API impl PaxWebServer as OSGi service instead of utility
* `AAA-166 <https://jira.opendaylight.org/projects/AAA/issues/AAA-166>`_ Logged ERROR org.apache.felix.metatype - 1.1.6 | fromDocuments: Error accessing document 
* `AAA-167 <https://jira.opendaylight.org/projects/AAA/issues/AAA-167>`_ Test Cert Expired causing UT failures
* `AAA-134 <https://jira.opendaylight.org/projects/AAA/issues/AAA-134>`_ unable to update/modify domain
* `AAA-147 <https://jira.opendaylight.org/projects/AAA/issues/AAA-147>`_ odl-jolokia credentials should be centrally backed by AAA
* `AAA-158 <https://jira.opendaylight.org/projects/AAA/issues/AAA-158>`_ Repeated user creation fails with SQL query error
* `AAA-149 <https://jira.opendaylight.org/projects/AAA/issues/AAA-149>`_ aaa-shiro-impl package names contain inconsistencies
* `AAA-154 <https://jira.opendaylight.org/projects/AAA/issues/AAA-154>`_ H2 Database Username/Password should be configurable 
* `AAA-159 <https://jira.opendaylight.org/projects/AAA/issues/AAA-159>`_ AAA Rest endpoints broken
* `AAA-155 <https://jira.opendaylight.org/projects/AAA/issues/AAA-155>`_ some karaf aaa cli commands not working

Known Issues
------------

* List key known issues with workarounds

  * None

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  * None

Standards
=========

* List of standards implemented and to what extent

  * LDAP, JDBC, ActiveDirectory

Release Mechanics
=================

* `TSC-86 <https://jira.opendaylight.org/browse/TSC-86>`_
