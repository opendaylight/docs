==========================================
Scalable-Group Tag eXchange Protocol (SXP)
==========================================

Major Features
==============

odl-sxp-api
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/odl-sxp-api/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:**  This feature provides models based on
  `RFC <https://tools.ietf.org/pdf/draft-smith-kandula-sxp-05.pdf>`_.
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-sxp-core
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/odl-sxp-core/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:**  This feature performs tasks for managing SXP
  devices and provides the implementation of
  `RFC <https://tools.ietf.org/pdf/draft-smith-kandula-sxp-05.pdf>`_.
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-sxp-controller
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/odl-sxp-controller/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:**  This feature performs tasks regarding managing SXP
  devices via RESTCONF.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-basic-all-oxygen/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-filtering-all-oxygen/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-topology-all-oxygen/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-periodic-clustering-all-oxygen/

odl-sxp-robot
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/odl-sxp-robot/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:**  This is a sample feature used in CSIT testing.
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-periodic-performance-all-oxygen/

odl-sxp-routing
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/odl-sxp-routing/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:**  This feature that performs managing of SXP devices
  in cluster environment.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-periodic-routing-all-oxygen/


Documentation
=============

* **Installation Guide(s):**

  * `Installation Guide <https://wiki.opendaylight.org/view/SXP:Lithium:Installation_Guide>`_

* **User Guide(s):**

  * :ref:`sxp-user-guide`

* **Developer Guide(s):**

  * :ref:`sxp-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * Yes on port 64999 based on `SXP RFC <https://tools.ietf.org/pdf/draft-smith-kandula-sxp-05.pdf>`_ secured by TCP-MD5, optionally also with SSL.

* Other security issues?

  * TCP-MD5 security option is now deprecated, and in future will replaced by TCP-AO

Quality Assurance
=================

* Link to `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.sxp%3Asxp-parent>`_ (82.4%)

* Link to CSIT Jobs

  * `CSIT Job basic <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-basic-all-oxygen/>`_
  * `CSIT Job filtering <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-filtering-all-oxygen/>`_
  * `CSIT Job topology <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-topology-all-oxygen/>`_
  * `CSIT Job clustering <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-periodic-clustering-all-oxygen/>`_
  * `CSIT Job performance <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-periodic-performance-all-oxygen/>`_
  * `CSIT Job routing <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-periodic-routing-all-oxygen/>`_

* Other manual testing and QA information

  * N/A

* Testing methodology. How extensive was it? What should be expected to work?
  What hasn't been tested as much?

  * `CSIT Test document 1 <https://wiki.opendaylight.org/view/File:SXP_Automated_testing.pdf>`_
  * `CSIT Test document 2 <https://wiki.opendaylight.org/view/File:SXP_Automated_testing_filtering.pdf>`_
  * `CSIT Test document 3 <https://wiki.opendaylight.org/view/File:SXP_Automated_testing_cluster.pdf>`_

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * Yes, no data models were changed that would break the migration.

Compatibility
-------------

* Is this release compatible with the previous release?

  * Functionality is fully backwards compatible.

* Any API changes?

  * N/A

* Any configuration changes?

  * No

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * `Fixed BUGS <https://jira.opendaylight.org/browse/SXP-130?jql=project%20in%20(GBP%2C%20SXP)%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20created%20%3E%3D%202017-08-14%20AND%20created%20%3C%3D%202018-03-07>`_

Known Issues
------------

* List key known issues with workarounds

  * N/A

* `Open Bugs <https://jira.opendaylight.org/browse/SXP-134?jql=project%20%3D%20SXP%20AND%20issuetype%20%3D%20Bug%20AND%20status%20%3D%20Open>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  * N/A

Standards
=========

* List of standards implemented and to what extent

  * `SXP <https://tools.ietf.org/pdf/draft-smith-kandula-sxp-05.pdf>`_ Fully implemented

Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/SXP:Oxygen:Release_Plan>`_

* Describe any major shifts in release schedule from the release plan

  * N/A

