
============
eman
============

Major Features
==============

For each top-level feature, identify the name, url, description, etc. User-facing features are used directly by end users.

odl-eman
------------

* **Feature URL:**  `link <https://git.opendaylight.org/gerrit/gitweb?p=eman.git;a=blob;f=features/features-eman/src/main/features/features.xml;hb=stable/carbon>`_
* **Feature Description:**  This provides a Northbound API to the eman Information Model 
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** none

Documentation
=============

* **User Guide(s):**

  * :ref:`eman_user_guide`

* **Developer Guide(s):**

  * :ref:`eman_dev_guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?
    No

* Other security issues?
    None

Quality Assurance
=================

* `Link to Sonar Report -  <https://sonar.opendaylight.org/overview?id=69960>`_ 
* Link to CSIT Jobs -  No CSIT jobs for this experimental release
* Other manual testing and QA information - Manual testing via RESTConf anf DLUX
* Testing methodology. How extensive was it? What should be expected to work? What hasn't been tested as much?
    Testing has been manual interaction via DLUX using an SNMP simulator as described in User Guide

Migration
---------

* Is is possible migrate from the previous release? If so, how?
    NA as this is first release

Compatiblity
------------

* Is this release compatible with the previous release?
* Any API changes?
* Any configuraiton changes?
    NA as this is frist release

Bugs Fixed
----------

* List of bugs fixed since the previous release
    NA as this is first release

Known Issues
------------

* List key known issues with workarounds
* Link to Open Bugs
    no open bugs

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release
    NA as this is first release

Standards
=========

* List of standards implemented and to what extent
    `Link to IETF Energy Management (eman) standards. <https://datatracker.ietf.org/wg/eman/charter/>`_ 
    Only powerMeasurement table currently implemented

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/Eman:Carbon_Release_Plan>`_ 
* Describe any major shifts in release schedule from the release plan - None

