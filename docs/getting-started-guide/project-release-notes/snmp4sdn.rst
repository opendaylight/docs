============
SNMP4SDN
============

Major Features
==============

odl-snmp4sdn-all
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=snmp4sdn.git;a=blob;f=features/features-snmp4sdn/src/main/features/features.xml;h=4dfa016a9d979ec329048bc0af931a4ecd3009db;hb=c38a5fe2947669c93489e932b59869aa9d82bfc4
* **Feature Description:**  This feature will install all features in snmp4sdn project
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** NA

odl-snmp4sdn-snmp4sdn
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=snmp4sdn.git;a=blob;f=features/features-snmp4sdn/src/main/features/features.xml;h=4dfa016a9d979ec329048bc0af931a4ecd3009db;hb=c38a5fe2947669c93489e932b59869aa9d82bfc4
* **Feature Description:**  This feature will install all bundles required for SNMP4SDN Plugin
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** NA


Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If the document is under review, provide a link to the change in Gerrit.

* **Installation Guide:**

  * `Guide Name <URL>`_
  * *Note: for most projects this shouldn't be needed since it should just be feature:install <feature-name>*

* **User Guide:**

  * `SNMP4SDN User Guide <http://docs.opendaylight.org/en/stable-boron/user-guide/snmp4sdn-user-guide.html>`_

* **Developer Guide(s):**

  * `SNMP4SDN Developer Guide <http://docs.opendaylight.org/en/stable-boron/developer-guide/snmp4sdn-developer-guide.html>`_

Security Considerations
=======================

* Switch list file, which is a plain-text file, contains security information such as snmp community.

Quality Assurance
=================

* `Link to Sonar Report <URL>`_ (Test coverage percent): NA
* `Link to CSIT Jobs <URL>`_: NA
* Other manual testing and QA information
* For each function of SNMP4SDN Plugin, use REST API to confirm it's availability and correctness. Existing functions includes flow configuration (such as VLAN and forwarding table) and topology discovery.

Migration
---------

* Is is possible migrate from the previous release? If so, how?
  * Yes. Features as well as interfaces are not changed.

Compatiblity
------------

* Is this release compatible with the previous release?
  Yes
* Any API changes?
  No
* Any configuraiton changes?
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

* List of standrads implemented and to what extent
  None (no standards implemented, and we use standard SNMP protocol to configure switches)

Release Mechanics
=================

* `Link to release plan https://wiki.opendaylight.org/view/SNMP4SDN:Release_Plan_Carbon`_
* No changes in this release


