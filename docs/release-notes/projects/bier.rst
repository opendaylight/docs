=======================================
Bit Indexed Explicit Replication (BIER)
=======================================

odl-bier-all
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bier.git;a=blob;f=features/features-bier/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:**  This is a summary feature containing the default functionalities provided by BIER project.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/bier/job/bier-csit-1node-basic-all-oxygen/

Documentation
=============

* **User Guide(s):**

  *  :ref:`bier-user-guide`

* **Developer Guide(s):**

  *  :ref:`bier-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * BIER project needs to get topology information via BGP-LS and BIER configuration via NETCONF.

* Other security issues?

  * The required security issues are provided in the RESTCONF, NETCONF and BGP-LS projects.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.bier%3Abier>`_ 69.5%
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/bier/job/bier-csit-1node-basic-all-oxygen/>`_
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?
* There are unit tests and integration test available under folder "test" and system test in CSIT but the NETCONF
  interface is not tested and will be completed in next release.

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * No additional migration steps needed.

Compatibility
-------------

* Is this release compatible with the previous release? Yes.
* Any API changes? Yes.
  Some BIER-TE APIs have been added and listed as following:

  * bier/bierman/api/src/main/yang/bier-te-config-api.yang
  * configure-te-node
  * configure-te-label
  * delete-te-babel
  * delete-te-bsl
  * delete-te-si
  * delete-te-bp
  * bier/oam/api/src/main/yang/bier-oam-api@2017-08-08.yang
  * start-echo-request
  * receive-echo-reply

* Any configuration changes? None.

Bugs Fixed
----------

* None.

Known Issues
------------

* None.

End-of-life
===========

* None.

Standards
=========

* `Multicast using Bit Index Explicit Replication <https://datatracker.ietf.org/doc/draft-ietf-bier-architecture>`_
* `YANG Data Model for BIER Protocol <https://datatracker.ietf.org/doc/draft-ietf-bier-bier-yang>`_

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/BIER:Oxygen:Release_Plan>`_
* No major changes.
