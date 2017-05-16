======
Unimgr
======

Major Features
==============

odl-unimgr-netvirt
------------------

* **Feature URL:** <https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=blob;f=features/features-unimgr/src/main/features/features.xml;h=b0f4ff7998b348eef9f3e070d7583fd29dd543f6;hb=refs/heads/master>
* **Feature Description:**  MEF Legato implementation using netvirt.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

odl-unimgr-cisco-xr-driver
--------------------------

* **Feature URL:** <https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=blob;f=features/features-unimgr/src/main/features/features.xml;h=b0f4ff7998b348eef9f3e070d7583fd29dd543f6;hb=refs/heads/master>
* **Feature Description:**  MEF presto implementation with cisco xr
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

Documentation
=============

* **Installation Guide(s):**

* **User Guide(s):**

  * :ref:`uni-user-guide`

* **Developer Guide(s):**

  * :ref:`uni-dev-guide`

Security Considerations
=======================

No known security issues

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview/coverage?id=org.opendaylight.unimgr%3Aunimgr-aggregator>`_ (49.4% code coverage)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/unimgr/job/unimgr-csit-1node-basic-only-carbon/>`_
* Tested Manually all main features. - i installed the feature, connect to the dlux ui, configured some services, and run traffic between the ports configured in the services.

Migration
---------

* Is is possible migrate from the previous release?
  No, Current release is backward incompatible.

Compatibility
-------------

* Is this release compatible with the previous release?
* Any API changes?
* Any configuration changes?

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

* `MEF PRESTO API <https://wiki.mef.net/display/CESG/LSO+Presto>`_
* `MEF LEGATO API <https://wiki.mef.net/display/CESG/LSO+Legato>`_

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/Unimgr:Release_Plan_Carbon>`_
