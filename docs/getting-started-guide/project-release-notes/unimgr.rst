======
Unimgr
======

Major Features
==============

odl-unimgr-netvirt
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=blob;f=features/features-unimgr/src/main/features/features.xml;h=b0f4ff7998b348eef9f3e070d7583fd29dd543f6;hb=refs/heads/master
* **Feature Description:**  MEF Legato implementation using netvirt.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

odl-unimgr-cisco-xr-driver
--------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=blob;f=features/features-unimgr/src/main/features/features.xml;h=b0f4ff7998b348eef9f3e070d7583fd29dd543f6;hb=refs/heads/master
* **Feature Description:**  MEF presto implementation with cisco xr
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

Documentation
=============

* **Installation Guide(s):**
* feature:install odl-unimgr-*

* **User Guide(s):**

  * `User Guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/uni-manager-plug-in-project.rst;h=40a96f53c76f356f8d2eca0dfcdd8a906f921598;hb=52a2660c6214c64cac619f1c9eea6c0fdf362196>`_

* **Developer Guide(s):**

  * `Developer Guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/uni-manager-plug-in-developer-guide.rst;h=663b9b436174b556f78c22737cf68bc0dde66391;hb=52a2660c6214c64cac619f1c9eea6c0fdf362196>`_

Security Considerations
=======================

none

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview/coverage?id=org.opendaylight.unimgr%3Aunimgr-aggregator>`_
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/unimgr/job/unimgr-csit-1node-basic-only-carbon/>`_
* Tested Manually all main features.

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

* Only Bugs related to current release have been fixed

Known Issues
------------

* No known issues

End-of-life
===========

none

Standards
=========

* MEF PRESTO API
* MEF LEGATO API

Release Mechanics
=================

* `Link to release plan https://wiki.opendaylight.org/view/Unimgr:Release_Plan_Carbon`_
* Describe any major shifts in release schedule from the release plan
