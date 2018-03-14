========
SNMP4SDN
========

Major Features
==============

odl-snmp4sdn-snmp4sdn
---------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=snmp4sdn.git;a=tree;f=features;h=d6ff42ff4a927b3f772f63dbc1abceab17cd9e90;hb=db0ab7a12ef59e24fd0d63f1dc21fc60e7fe4c7a
* **Feature Description:**  This feature will install all bundles required for SNMP4SDN Plugin
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** NA, system test waiver


Documentation
=============

* **User Guide:**

  * :ref:`snmp4sdn-user-guide`

* **Developer Guide(s):**

  * :ref:`snmp4sdn-dev-guide`

Security Considerations
=======================

* Switch list file, which is a plain-text file, contains security information such as SNMP community. File access privilege would be carefully set.

* SNMP protocol v2c is used by SNMP4SDN Plugin. SNMP4SDN Plugin configures switches and listens to SNMP
  listen port for link-up/down trap, via SNMP protocol.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=44354>`_ (Test coverage percent NA)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/snmp4sdn/>`_
* Other manual testing and QA information
* For each function of SNMP4SDN Plugin, use REST API to confirm it's
  availability and correctness. Existing functions includes flow configuration
  (such as VLAN and forwarding table) and topology discovery.

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  No

Compatibility
-------------

* Is this release compatible with the previous release?

  Yes

* Any API changes?

  No

* Any configuration changes?

  No


Bugs Fixed
----------

* None (no bugs reported since the previous release)

Known Issues
------------

* List key known issues with workarounds

  None

* `Link to Open Bugs <https://jira.opendaylight.org/projects/SNMP4SDN/>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  None

Standards
=========

* List of standards implemented and to what extent

  None (no standards implemented, and use a third-party library to configure switches in standard SNMP protocol)

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/SNMP4SDN:Release_Plan_Nitrogen>`_
* No changes in this release
