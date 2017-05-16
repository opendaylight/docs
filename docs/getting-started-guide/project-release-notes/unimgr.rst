============
Unimgr
============

Major Features
==============

For each top-level feature, identify the name, url, description, etc.
User-facing features are used directly by end users.

odl-unimgr-netvirt
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=blob;f=features/features-unimgr/src/main/features/features.xml;h=b0f4ff7998b348eef9f3e070d7583fd29dd543f6;hb=refs/heads/master
* **Feature Description:**  MEF Legato implemetation using netvirt.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** yes

odl-unimgr-cisco-xr-driver
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=blob;f=features/features-unimgr/src/main/features/features.xml;h=b0f4ff7998b348eef9f3e070d7583fd29dd543f6;hb=refs/heads/master
* **Feature Description:**  MEF presto implementation with cisco xr
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If the
document is under review, provide a link to the change in Gerrit.

* **Installation Guide(s):**
* feature:install odl-unimgr-*

* **User Guide(s):**

  * `Guide Name <URL>`_ https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/uni-manager-plug-in-project.rst;h=40a96f53c76f356f8d2eca0dfcdd8a906f921598;hb=52a2660c6214c64cac619f1c9eea6c0fdf362196

* **Developer Guide(s):**

  * `Guide Name <URL>`_ https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/uni-manager-plug-in-developer-guide.rst;h=663b9b436174b556f78c22737cf68bc0dde66391;hb=52a2660c6214c64cac619f1c9eea6c0fdf362196

Security Considerations
=======================
none

Quality Assurance
=================

* `Link to Sonar Report <URL>`_ https://sonar.opendaylight.org/overview/coverage?id=org.opendaylight.unimgr%3Aunimgr-aggregator
* `Link to CSIT Jobs <URL>`_ https://jenkins.opendaylight.org/releng/view/unimgr/job/unimgr-csit-1node-basic-only-carbon/
* Other manual testing and QA information
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?
Tested Manually all main features.

Migration
---------

* Is is possible migrate from the previous release? 
No, Current release is backward incompatible.

Compatiblity
------------

* Is this release compatible with the previous release?
* Any API changes?
* Any configuraiton changes?
No, all API's are new or have been modified

Bugs Fixed
----------

* List of bugs fixed since the previous release
Only Bugs releated to current release have been fixed

Known Issues
------------

* List key known issues with workarounds
* `Link to Open Bugs <URL>`_

End-of-life
===========
none

Standards
=========
MEF PRESTO API
MEf LEGATO API

Release Mechanics
=================

* `Link to release plan <URL>`_
* Describe any major shifts in release schedule from the release plan

