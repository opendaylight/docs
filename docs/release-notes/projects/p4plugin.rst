=========
P4 Plugin
=========

odl-p4plugin-all
----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=p4plugin.git;a=blob;f=features/features-p4plugin/pom.xml
* **Feature Description:**  This is a summary feature containing the default functionalities provided by P4Plugin project.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/p4plugin/job/p4plugin-csit-1node-basic-all-oxygen/

Documentation
=============

* **User Guide(s):**

  *  :ref:`p4plugin-user-guide`

* **Developer Guide(s):**

  *  :ref:`p4plugin-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * P4Plugin project needs to get node interface resources via NETCONF and the deployed table, and
    to get the channel via gRPC.

* Other security issues?

  * Security issues are provided in the RESTCONF and NETCONF projects.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.p4plugin%3Ap4plugin-aggregator>`_
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/p4plugin/job/p4plugin-csit-1node-basic-all-oxygen/>`_
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?
  There are unit tests and integration test available under folder "test",
  but we are now busy with system test in CSIT.

Migration
---------

* Is it possible to migrate from the previous release? If so, how?
No, we have no previous release.

Compatibility
-------------

* Is this release compatible with the previous release? No, we have no previous release.
* Any API changes? No.
* Any configuration changes? No.

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

* None.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/P4_Plugin:Oxygen:Release_Plan>`_
* Describe any major shifts in release schedule from the release plan
  None.
