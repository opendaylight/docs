========
SNMP4SDN
========

Major Features
==============

odl-snmp4sdn-snmp4sdn
---------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=snmp4sdn.git;a=blob;f=features/odl-snmp4sdn-snmp4sdn/pom.xml;h=eece899425487cf81e81e3d87bff78a2f3d2797c;hb=HEAD
* **Feature Description:**  This feature will install all bundles required for SNMP4SDN Plugin
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** NA


Documentation
=============

* **User Guide:**

  * :ref:`snmp4sdn-user-guide`

* **Developer Guide(s):**

  * :ref:`snmp4sdn-dev-guide`

Security Considerations
=======================

* The interface or configurable resource exposed to users includes RESTCONF API
  and the switch list file. Switch list file, which is a plain-text file,
  contains security information such as SNMP community.

* SNMP4SDN Plugin configures switches via SNMP protocol, and listens to SNMP
  listen port for link-up/down trap. SNMP v2c is used.

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

* Is it possible migrate from the previous release? If so, how?

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

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=__open__&list_id=78998&order=Importance&product=snmp4sdn&query_format=specific>`_

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
