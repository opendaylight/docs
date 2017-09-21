======
Unimgr
======

Major Features
==============

odl-unimgr
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=blob;f=features/odl-unimgr/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  MEF Presto core infrastructure.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

odl-unimgr-netvirt
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=blob;f=features/odl-unimgr-netvirt/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  MEF Legato implementation using netvirt.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

features/odl-unimgr/pom.xml

odl-unimgr-cisco-xr-driver
--------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=blob;f=features/odl-unimgr-cisco-xr-driver/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  MEF presto implementation with cisco xr
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes


odl-unimgr-ovs-driver
--------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=unimgr.git;a=blob;f=features/odl-unimgr-ovs-driver/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  MEF presto implementation with ovsdb
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

* `Link to Sonar Report <https://sonar.opendaylight.org/overview/coverage?id=org.opendaylight.unimgr%3Aunimgr-aggregator>`_ (50.7% code coverage)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/unimgr/job/unimgr-csit-1node-basic-all-nitrogen/>`_
* Tested Manually all main features.

  We have added unit and integration tests for Presto layer. Presto and Legato APIs were tested manually.

Migration
---------

* Is is possible to migrate from the previous release?
  No, Current release is backward incompatible.

Compatibility
-------------

* Is this release compatible with the previous release?
* Any API changes?
* Any configuration changes?

Presto API replaces with completely new Presto NRP model

Bugs Fixed
----------

* Only Bugs related to current release have been fixed

Only bugs related to current release has been fixed.

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

* `Link to release plan <https://wiki.opendaylight.org/view/Unimgr:Release_Plan_Nitrogen>`_
