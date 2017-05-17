========
Cardinal
========

Major Features
==============

odl-cardinal
------------

* **Feature URL:** <https://github.com/opendaylight/cardinal/blob/master/features/cardinal-features/src/main/features/features.xml>_
* **Feature Description:** This feature installs the odl-cardinal application which provides opendaylight health statistics, Karaf and Bundle statistics, Openflow/NETCONF specific statistics to a NMS server via SNMP protocol. And it also provides REST service to expose these statistics.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** NA


Documentation
=============

* **User Guide(s):**

  * `ODL-Cardinal User Guide
    <http://docs.opendaylight.org/en/latest/user-guide/cardinal_-opendaylight-monitoring-as-a-service.html>`_

* **Developer Guide(s):**

  * `ODL-Cardinal Developer Guide
    <http://docs.opendaylight.org/en/latest/developer-guide/cardinal_-opendaylight-monitoring-as-a-service.html>`_


Security Considerations
=======================
* SNMP agent runs on port 161,2001,2003

* Are all interfaces exposed using RESTCONF?
* Interfaces are exposed using snmpget/snmpwalk and also with REST API
* `Link to all RESTCONF API <http://docs.opendaylight.org/en/latest/developer-guide/cardinal_-opendaylight-monitoring-as-a-service.html>`_


Quality Assurance
=================


* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=66521>`_
* Code coverage is 25.7%(User required to be as root to cover more coverage)

* `Link to CSIT Jobs  NA

* `Other manual testing and QA information <https://wiki.opendaylight.org/view/Cardinal:Boron_Feature_Integration_System_Test>`_
* There are some manual tests written to check if snmp daemon started on feature installation and snmpget/snmpwalk command is working.

* `Link to Karaf4 migration <https://git.opendaylight.org/gerrit/#/c/54250/>`_
* Karaf4 migration completed using above link


Compatiblity
------------

* Any API changes:

*  `<https://git.opendaylight.org/gerrit/#/c/50715/>`_
*  Patch for monitoring Multiple Openflow Devices statistics via SNMP and REST

*  `<https://git.opendaylight.org/gerrit/#/c/51145/>`_
*  Patch for monitoring multiple NETCONF devices statistics via SNMP and REST

Bugs Fixed
----------

* Bug 7617
* this bug fixed the Karaf 4 migration.

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
* `Another functionality was added - Cardinal as an "SNMP Agent as a Service" in M4 <https://git.opendaylight.org/gerrit/#/c/52204/>`_
