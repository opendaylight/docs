============
SNMP Plug-in
============

Major Features
==============

odl-snmp-plugin
---------------

* **Feature URL:**  https://git.opendaylight.org/gerrit/gitweb?p=snmp.git;a=blob;f=features/features-snmp/src/main/features/features.xml;hb=stable/carbon
* **Feature Description:**  Provides NB API to SB SNMP interface
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/snmp/job/snmp-csit-1node-basic-all-nitrogen/

Documentation
=============

* **Getting Started:**

  * `SNMP Plugin:Getting Started
    <https://wiki.opendaylight.org/view/SNMP_Plugin:Getting_Started>`_

* **User Guide:**

  * :ref:`snmp-user-guide`

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

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=69960>`_ (3.5% code coverage)
* Link to CSIT Jobs:

  * https://jenkins.opendaylight.org/releng/view/snmp/job/snmp-csit-1node-basic-all-carbon/

* Other manual testing and QA information: None

Migration
---------

* Is is possible migrate from the previous release? If so, how?

  It is possible to seamlessly migrate consumers to this iteration of the plug-in as there has been no functional
  change to features. Migration of state data is not defined.

Compatibility
-------------

Compatible with previous release. No functional change to features

Bugs Fixed
----------

* List of bugs fixed since the previous release

  None. No functional change to features

Known Issues
------------

* List key known issues with workarounds

  No known issues

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?component=General&list_id=29216&product=snmp>`_



End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  none

Standards
=========

* List of standards implemented and to what extent

  * `SNMP <https://www.ietf.org/rfc/rfc1157.txt/>`_


Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/SNMP_Plugin:Carbon_Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  None
