====
eman
====

Major Features
==============


Feature Name
------------

* **Feature URL:** odl-eman
* **Feature Description:**  This provides a Northbound API to the eman Information Model
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** none

Documentation
=============

* **User Guide(s):**

  * `eman user guide <https://git.opendaylight.org/gerrit/56215>`_

* **Developer Guide(s):**

  * `eman developer guide <https://git.opendaylight.org/gerrit/56215>`_


Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?
  No

  * If so, how are they secure?
  * What port numbers do they use?

* Other security issues?
  None

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=69960>`_ (Test Coverage 3.5%)
* `Link to CSIT Jobs <URL>`_ NA
* Other manual testing and QA information - NA
* Testing methodology. How extensive was it? What should be expected to work? What hasn't been tested as much?
  Testing has been manual interaction via DLUX

Migration
---------

* Is is possible migrate from the previous release? If so, how?
  NA

Compatiblity
------------

* Is this release compatible with the previous release?
* Any API changes?
* Any configuraiton changes?
  NA

Bugs Fixed
----------

* List of bugs fixed since the previous release
  NA

Known Issues
------------

* List key known issues with workarounds
* `Link to Open Bugs <URL>`_
  NA

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release
  NA

Standards
=========

* List of standrads implemented and to what extent
  IETF Energy Management (eman) Information Model. Only powerMeasurement table
  currently implemented

Release Mechanics
=================

* `Link to release plan <URL>`_ NA
* Describe any major shifts in release schedule from the release plan
