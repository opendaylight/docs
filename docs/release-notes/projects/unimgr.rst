======
Unimgr
======

Major Features
==============

odl-unimgr-netvirt
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=blob;f=features/features-unimgr/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  MEF Legato implementation using netvirt.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

odl-unimgr-cisco-xr-driver
--------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=blob;f=features/features-unimgr/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  MEF presto implementation with cisco xr
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

Documentation
=============

* **User Guide(s):**

  * :ref:`unimgr-user-guide`

* **Developer Guide(s):**

  * :ref:`unimgr-dev-guide`

Security Considerations
=======================

No known security issues

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview/coverage?id=org.opendaylight.unimgr%3Aunimgr-aggregator>`_ (49.4% code coverage)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/unimgr/job/unimgr-csit-1node-basic-only-carbon/>`_
* Tested Manually all main features.

  I installed the feature, connect to the dlux ui, configured some services, and run traffic between the ports configured in the services.

Migration
---------

* Is it possible to migrate from the previous release?
  No, Current release is backward incompatible.

Compatibility
-------------

* Is this release compatible with the previous release?
* Any API changes?
* Any configuration changes?

No, all API's are new or have not been modified.

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
