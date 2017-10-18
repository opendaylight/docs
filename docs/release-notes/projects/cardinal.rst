========
Cardinal
========

Major Features
==============

odl-cardinal
------------

* **Feature URL:** https://github.com/opendaylight/cardinal/blob/stable/carbon/features/cardinal-features/src/main/features/features.xml
* **Feature Description:** This feature installs the odl-cardinal application which provides opendaylight health statistics, Karaf and Bundle statistics, Openflow/NETCONF specific statistics to a NMS server via SNMP protocol. And it also provides REST service to expose these statistics.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** NA


Documentation
=============

* **User Guide(s):**

  * :ref:`Cardinal User Guide <cardinal-user-guide>`

* **Developer Guide(s):**

  * :ref:`Cardinal Developer Guide <cardinal-dev-guide>`


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


* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=66521>`_

  Code coverage is 25.7% (User required to be as root to cover more coverage)

* Link to CSIT Jobs

  N/A

* `Other manual testing and QA information <https://wiki.opendaylight.org/view/Cardinal:Boron_Feature_Integration_System_Test>`_

  There are some manual tests written to check if snmp daemon started on feature installation and snmpget/snmpwalk command is working.


Compatibility
-------------

* Any API changes:

* `Change 50715 <https://git.opendaylight.org/gerrit/50715>`_
  Patch for monitoring Multiple Openflow Devices statistics via SNMP and REST

* `Change 51145 <https://git.opendaylight.org/gerrit/51145>`_
  Patch for monitoring multiple NETCONF devices statistics via SNMP and REST

Bugs Fixed
----------

* `Bug 7617 <https://bugs.opendaylight.org/show_bug.cgi?id=7617>`_
  Karaf 4 migration: provide Karaf 4 cardinal features

Known Issues
------------

* N/A

End-of-life
===========

* N/A


Standards
=========

* MIB OIDS were compiled for generating java classes using 3rd party library Open-DMK(mib-gen)


Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/Cardinal:_Carbon_Release_Plan>`_
* `Another functionality was added - Cardinal as an "SNMP Agent as a Service" in M4 <https://git.opendaylight.org/gerrit/52204>`_
