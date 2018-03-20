===
AAA
===

Major Features
==============

For each top-level feature, identify the name, url, description, etc. User-facing features are used directly by end users.

odl-aaa-shiro
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob_plain;f=features/shiro/features-aaa-shiro/src/main/features/features.xml;hb=refs/heads/stable/oxygen
* **Feature Description:**  ODL Shiro-based AAA implementation
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-oxygen/

odl-aaa-cert
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob;f=features/authn/features-aaa/src/main/features/features.xml;hb=refs/heads/stable/oxygen
* **Feature Description:**  MD-SAL based encrypted certificate management
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-oxygen/

odl-aaa-cli
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob;f=features/authn/features-aaa/src/main/features/features.xml;hb=refs/heads/stable/oxygen
* **Feature Description:**  Basic karaf CLI commands for interacting with AAA
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-oxygen/


Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If the document is under review, provide a link to the change in Gerrit.

* **User Guide(s):**

  * :ref:`aaa-user-guide`

* **Developer Guide(s):**

  * :ref:`aaa-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  No.

* Other security issues?

  N/A.

Quality Assurance
=================

* `Link to Sonar Report <https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-sonar/>`_ (54% code coverage)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/aaa/>`_

Migration
---------

N/A.

Compatibility
-------------

* Is this release compatible with the previous release?

  Yes.

* Any API changes?

  No.

* Any configuration changes?

  Some CLI commands were modified for security and ease of use purposes.  Nothing else.

Bugs Fixed
----------

* `AAA-165 <https://jira.opendaylight.org/projects/AAA/issues/AAA-165>`_ domain delete fails w/ java.lang.NoClassDefFoundError
* `AAA-163 <https://jira.opendaylight.org/projects/AAA/issues/AAA-163>`_ implement "isEnabled" flag for user accounts
* `AAA-160 <https://jira.opendaylight.org/projects/AAA/issues/AAA-160>`_ aaa-cli doesn't work
* `AAA-158 <https://jira.opendaylight.org/projects/AAA/issues/AAA-158>`_ Repeated user creation fails with SQL query error
* `AAA-156 <https://jira.opendaylight.org/projects/AAA/issues/AAA-156>`_ old password still works after changing password
* `AAA-154 <https://jira.opendaylight.org/projects/AAA/issues/AAA-154>`_ H2 Database Username/Password should be configurable
* `AAA-153 <https://jira.opendaylight.org/projects/AAA/issues/AAA-153>`_ remove "user" OOB user account
* `AAA-149 <https://jira.opendaylight.org/projects/AAA/issues/AAA-149>`_ aaa-shiro-impl package names contain inconsistencies
* `AAA-147 <https://jira.opendaylight.org/projects/AAA/issues/AAA-147>`_ odl-jolokia credentials should be centrally backed by AAA

Known Issues
------------

* List key known issues with workarounds

* `5838 <https://bugs.opendaylight.org/show_bug.cgi?id=5838>`_ token authentication fails intermittently

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?component=General&list_id=78831&product=aaa&resolution=--->`_

End-of-life
===========

* N/A

Standards
=========

* LDAP, JDBC, ActiveDirectory (less tested)

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/AAA:Oxygen:Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  None.
