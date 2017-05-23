====
snmp plug-in
====

Major Features
==============

odl-snmp-plugin
--------

* **Feature URL:**  https://git.opendaylight.org/gerrit/gitweb?p=snmp.git;a=blob;f=features/features-snmp/src/main/features/features.xml;hb=stable/carbon
* **Feature Description:**  Provides NB API to SB SNMP interface
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/snmp/job/snmp-clm-carbon/

Documentation
=============

* **Getting Started:**

  * :ref:`snmp-user-guide` https://wiki.opendaylight.org/view/SNMP_Plugin:Getting_Started

* **SNMP Simulator:**

  * :ref:`snmp-dev-guide` https://wiki.opendaylight.org/view/SNMP_Plugin:SNMP_Simulator

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  No.

* Other security issues?

  None

Quality Assurance
=================

* `Link to Sonar Report -  <https://sonar.opendaylight.org/overview?id=69960>`_
* `Link to CSIT Jobs -  <https://jenkins.opendaylight.org/releng/view/snmp/job/snmp-clm-carbon/>`_
* Other manual testing and QA information - None
* Testing methodology. How extensive was it? What should be expected to work? What hasn't been tested as much?

  From Boron release review: "JUNIT testing and Integration testing"

Migration
---------

* Is is possible migrate from the previous release? If so, how?

  Yes. No functional change to features

Compatiblity
------------

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

  * `SNMP. <https://www.ietf.org/rfc/rfc1157.txt/>`_
    

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/SNMP_Plugin:Carbon_Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  None
