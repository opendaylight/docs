============
SNMP Plug-in
============

Major Features
==============

odl-snmp-plugin
---------------

* **Feature URL:**  https://git.opendaylight.org/gerrit/gitweb?p=snmp.git;a=blob;f=features/features-snmp/src/main/features/features.xml;hb=stable/oxygen
* **Feature Description:**  Provides NB API to SB SNMP interface
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:**

Documentation
=============

* **Getting Started:**

  * `SNMP Plugin:Getting Started
    <https://wiki.opendaylight.org/view/SNMP_Plugin:Getting_Started>`_

* **User Guide:**

  * :ref:`snmp-plugin-user-guide`

* **SNMP Simulator:**

  * `SNMP simulator guide <https://wiki.opendaylight.org/view/SNMP_Plugin:SNMP_Simulator>`_

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  Yes, this plugin provides SNMP endpoints for talking to southbound devices.

* Other security issues?

  Securing communication to devices (or not) over SNMP is outside the scope of\
  this project and left to users.

Quality Assurance
=================

* No Sonar Report
* No CSIT Jobs
* Other manual testing and QA information: None

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  Yes, no specific steps needed.

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

* List of bugs fixed since the previous release

  None - no functional change to features

Known Issues
------------

* List key known issues with workarounds

  No known issues


End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  None

Standards
=========

* List of standards implemented and to what extent

  * `SNMP <https://www.ietf.org/rfc/rfc1157.txt/>`_


Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/SNMP_Plugin:Oxygen_Release_Plan>`_
