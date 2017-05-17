=======================================
Bit Indexed Explicit Replication (BIER)
=======================================

odl-bier-all
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bier.git;a=blob;f=features/features-bier/src/main/features/features.xml
* **Feature Description:**  This is a summary feature containing the default functionalities provided by BIER project.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/bier/job/bier-csit-1node-basic-all-carbon/

Documentation
=============

* **User Guide(s):**

  *  :ref:`bier-user-guide`

* **Developer Guide(s):**

  *  :ref:`bier-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * BIER project needs to get topology infomation via OPENFLOW and BIER configuration via NETCONF.

* Other security issues?

  * The required security issues are provided in the RESTCONF,NETCONF and OPENFLOW project.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=72693>`_ 76.5%
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/bier/job/bier-csit-1node-basic-all-carbon/>`_
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?
* There are unit tests and integration test available under folder "test" and system test in CSIT but the netconf
  interface is not tested and will be completed in next release.

Migration
---------

* Is is possible migrate from the previous release? If so, how?

* Not applicable as there is no previous release.

Compatiblity
------------

* Is this release compatible with the previous release? No previous release.
* Any API changes? No.
* Any configuraiton changes? No.

Bugs Fixed
----------

* Not applicable as there is no previous release.

Known Issues
------------

* Not applicable as there is no previous release.

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release
* N/A

Standards
=========

* List of standrads implemented and to what extent

https://datatracker.ietf.org/doc/draft-ietf-bier-architecture/
https://datatracker.ietf.org/doc/draft-ietf-bier-bier-yang/

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/BIER:Carbon:Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

* N/A
