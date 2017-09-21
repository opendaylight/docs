========
Cardinal
========

Major Features
==============

odl-cardinal
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=cardinal.git;a=blob;f=features/odl-cardinal/pom.xml
* **Feature Description:** This feature installs the odl-cardinal
  application which provides OpenDaylight health statistics,Karaf
  and Bundle statistics, Openflow/NETCONF specific statistics to
  a NMS server via SNMP protocol. And it also provides REST service
  to expose these statistics.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** NA


odl-cardinal-api
----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=cardinal.git;a=blob;f=features/odl-cardinal-api/pom.xml
* **Feature Description:**  This feature contains the dependencies to
  use MDSAL features in CARDINAL.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** NA


odl-cardinal-rest
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=cardinal.git;a=blob;f=features/odl-cardinal-rest/pom.xml
* **Feature Description:**  Implements a South Bound Rest interface to
  send configuration to REST-capable switches.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** NA


odl-cardinal-ui
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=cardinal.git;a=blob;f=features/odl-cardinal-ui/pom.xml
* **Feature Description:**  This feature is the CARDINAL User Interface.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** NA


Documentation
=============

* **User Guide(s):**

  * :ref:`cardinal-user-guide`

* **Developer Guide(s):**

  * :ref:`cardinal-dev-guide`


Security Considerations
=======================

* SNMP agent runs on port 161,2001,2003

  * Current support is for SNMPv2c (no encryption or authentication)

* Are all interfaces exposed using RESTCONF?

  * Cardinal supports two interfaces - SNMP and RESTCONF
  * Cardinal REST APIs are RESTCONF (authentication) enabled
  * Cardinal SNMP support is through SNMP Agent (SNMPv2c as mentioned above)
  * :ref:`Link to all RESTCONF API <cardinal-dev-guide>`

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=66521>`_ (25.8%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/cardinal/>`_
* All modules have been unit tested. Integration tests have been performed for
  all major features. System tests have been performed on most major features.

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  Yes. Migration to this release involves migrating features to Karaf 4; see
  `the wiki <https://wiki.opendaylight.org/view/Karaf_4_migration>`_ for details.

Compatibility
-------------

* Is this release compatible with the previous release?

  No.

* Any API changes?

  All Karaf 3 features have been removed in favour of (compatible) Karaf 4 features

Bugs Fixed
----------

List of bugs fixed since the previous release

  None.


Known Issues
------------

  No known issues.

End-of-life
===========

* N/A.


Standards
=========

* MIB OIDS were compiled for generating java classes using 3rd party library Open-DMK(mib-gen)

Release Mechanics
=================

* `ODL CARDINAL Nitrogen release plan <https://wiki.opendaylight.org/view/Cardinal:_Nitrogen_Release_Plan>`_
* No major shifts in the release schedule from the release plan
