=======================================
Bit Indexed Explicit Replication (BIER)
=======================================

odl-bier-all
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bier.git;a=blob;f=features/features-bier/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  This is a summary feature containing the default functionalities provided by BIER project.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/bier/job/bier-csit-1node-basic-all-nitrogen/

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

  * The required security issues are provided in the RESTCONF, NETCONF and BGP-LS project.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=72693>`_ 76.7%
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/bier/job/bier-csit-1node-basic-all-nitrogen/>`_
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?
* There are unit tests and integration test available under folder "test" and system test in CSIT but the NETCONF
  interface is not tested and will be completed in next release.

Migration
---------

* Is is possible migrate from the previous release? If so, how?

* Migration with data from Carbon to Nitrogen is not supported.

Compatibility
-------------

* Is this release compatible with the previous release? Yes.
* Any API changes? Yes. Some BIER-TE APIs have been added.
* Any configuration changes? Yes. BGP-LS should be used instead of OpenFlow to get topology information.

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

* `Link to release plan <https://wiki.opendaylight.org/view/BIER:Nitrogen:Release_Plan>`_
* No major changes.
