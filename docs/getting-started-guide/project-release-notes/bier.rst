============================
Bit Indexed Explicit Replication 
============================

odl-bier-all
----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bier.git;a=blob;f=features/features-bier/src/main/features/features.xml
* **Feature Description:**  This is a summary feature containing the default functionalities provided by BIER project.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/bier/job/bier-csit-1node-basic-all-carbon/

Documentation
===========

Please provide the URL to each document at docs.opendaylight.org. If the
document is under review, provide a link to the change in Gerrit.

* **User Guide(s):**

  * `BIER User Guide <http://docs.opendaylight.org/en/latest/user-guide/bier-user-guide.html>

* **Developer Guide(s):**

  * `BIER Developer Guide <http://docs.opendaylight.org/en/latest/developer-guide/bier-developer-guide.html>

Security Considerations
====================

* Do you have any external interfaces other than RESTCONF?

No.

* Other security issues?
No.

Quality Assurance
===============

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=72693>   76.5%
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/bier/job/bier-csit-1node-basic-all-carbon/>
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?
  There are unit tests and integration test available under folder "test" and system test in CSIT.

Migration
--------

* Is is possible migrate from the previous release? If so, how?
There is no additonal steps for migration.

Compatiblity
-----------

* Is this release compatible with the previous release? No previous release.
* Any API changes? No.
* Any configuraiton changes? No.

Bugs Fixed
---------

* List of bugs fixed since the previous release

https://bugs.opendaylight.org/show_bug.cgi?id=8092

Known Issues
-----------
* List key known issues with workarounds
* `Link to Open Bugs <URL>

None

End-of-life
==========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release
  
None

Standards
========

* List of standrads implemented and to what extent
https://datatracker.ietf.org/doc/draft-ietf-bier-architecture/
https://datatracker.ietf.org/doc/draft-ietf-bier-bier-yang/

Release Mechanics
===============

* `Link to release plan <https://wiki.opendaylight.org/view/BIER:Carbon:Release_Plan>
* Describe any major shifts in release schedule from the release plan

N/A