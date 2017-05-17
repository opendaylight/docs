===
AAA
===

Major Features
==============

For each top-level feature, identify the name, url, description, etc. User-facing features are used directly by end users.

Feature Name
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sample.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This is a sample feature that performs various sample tasks and provides the implementation of RFC 0000.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sample/job/sample-csit-1node-feature-all-boron/

odl-aaa-shiro
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob_plain;f=features/shiro/features-aaa-shiro/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  ODL Shiro-based AAA implementation
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-carbon/

odl-aaa-authn
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob;f=features/authn/features-aaa/src/main/features/features.xml;h=6c4eb853d527593662553e96e002df3b05e46f76;hb=refs/heads/stable/carbon
* **Feature Description:**  Existing AAA infrastructure, now wrapped by odl-aaa-shiro
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-carbon/

odl-aaa-cert
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob;f=features/authn/features-aaa/src/main/features/features.xml;h=6c4eb853d527593662553e96e002df3b05e46f76;hb=refs/heads/stable/carbon
* **Feature Description:**  MD-SAL based encrypted certificate management
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-carbon/

odl-aaa-cli
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=aaa.git;a=blob;f=features/authn/features-aaa/src/main/features/features.xml;h=6c4eb853d527593662553e96e002df3b05e46f76;hb=refs/heads/stable/carbon
* **Feature Description:**  Basic karaf CLI commands for interacting with AAA
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-csit-1node-authn-all-carbon/


Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If the document is under review, provide a link to the change in Gerrit.

* **User Guide(s):**

  * `Guide Name http://docs.opendaylight.org/en/latest/user-guide/authentication-and-authorization-services.html`_

* **Developer Guide(s):**

  * `Guide Name http://docs.opendaylight.org/en/latest/developer-guide/authentication-and-authorization-services.html`_

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

No.

* Other security issues?

N/A.

Quality Assurance
=================

* `Link to Sonar Report https://jenkins.opendaylight.org/releng/view/aaa/job/aaa-sonar/`_ (56.39)
* `Link to CSIT Jobs https://jenkins.opendaylight.org/releng/view/aaa/`_

Migration
---------

* No data model changes occurred, so everything should work.  You can either copy the existing idmlight.db.mv.db into the new karaf distribution folder, or just start fresh with a new one.

Compatiblity
------------

* Is this release compatible with the previous release?

Yes.

* Any API changes?

No.

* Any configuraiton changes?

Some CLI commands were modified for security and ease of use purposes.  Nothing else.

Bugs Fixed
----------

* 8373
* 8062
* 8214
* 8313
* 8157
* 7527
*

Known Issues
------------

* List key known issues with workarounds

N/A

* `Link to Open Bugs https://bugs.opendaylight.org/buglist.cgi?component=General&list_id=78831&product=aaa&resolution=---`_

End-of-life
===========

* N/A

Standards
=========

* LDAP, ActiveDirectory (less tested)

Release Mechanics
=================

* `Link to release plan https://wiki.opendaylight.org/view/AAA:Carbon:Release_Plan`_
* Describe any major shifts in release schedule from the release plan
