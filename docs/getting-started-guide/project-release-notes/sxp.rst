==========================================
Scalable-Group Tag eXchange Protocol (SXP)
==========================================

Major Features
==============

odl-sxp-api
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/features-sxp/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This feature provides models based on `RFC <https://tools.ietf.org/pdf/draft-smith-kandula-sxp-05.pdf>`_.
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-sxp-core
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/features-sxp/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This feature performs tasks for managing SXP devices and provides the implementation of `RFC <https://tools.ietf.org/pdf/draft-smith-kandula-sxp-05.pdf>`_.
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-sxp-controller
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/features-sxp/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This feature performs tasks regarding managing SXP devices via RESTCONF.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-basic-all-carbon/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-filtering-all-carbon/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-topology-all-carbon/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-periodic-clustering-all-carbon/

odl-sxp-robot
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/features-sxp/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This is a sample feature used in CSIT testing.
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-periodic-performance-all-carbon/

odl-sxp-route
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/features-sxp/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This feature that performs managing of SXP devices in cluster environment.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-periodic-routing-all-carbon/


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

* Link to `Sonar Report <https://sonar.opendaylight.org/overview?id=45270>`_ (80%)

* Link to CSIT Jobs

  * `CSIT Job basic <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-basic-all-carbon/>`_
  * `CSIT Job filtering <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-filtering-all-carbon/>`_
  * `CSIT Job topology <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-topology-all-carbon/>`_
  * `CSIT Job clustering <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-periodic-clustering-all-carbon/>`_
  * `CSIT Job performance <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-periodic-performance-all-carbon/>`_
  * `CSIT Job routing <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-periodic-routing-all-carbon/>`_

* Other manual testing and QA information

  * N/A

* Testing methodology. How extensive was it? What should be expected to work? What hasn't been tested as much?

  * `CSIT Test document 1 <https://wiki.opendaylight.org/view/File:SXP_Automated_testing.pdf>`_
  * `CSIT Test document 2 <https://wiki.opendaylight.org/view/File:SXP_Automated_testing_filtering.pdf>`_
  * `CSIT Test document 3 <https://wiki.opendaylight.org/view/File:SXP_Automated_testing_cluster.pdf>`_

Migration
---------

* Is is possible migrate from the previous release? If so, how?

  * Yes, no data models were changed that would break the migration.

Compatibility
-------------

* Is this release compatible with the previous release?

  * Functionality is fully backwards compatible.

* Any API changes?

  * Add SSL option to be used for security `Patch 1 <https://git.opendaylight.org/gerrit/#/c/52278/>`_
  * Add models for configuring routed SXP devices in cluster `Patch 2 <https://git.opendaylight.org/gerrit/#/c/49656/>`_

* Any configuration changes?

  * N/A

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * `Fixed BUGS <https://bugs.opendaylight.org/buglist.cgi?chfieldfrom=2016-08-9&chfieldto=2017-05-25&list_id=78466&product=sxp&query_format=advanced&resolution=FIXED>`_

Known Issues
------------

* List key known issues with workarounds

  * N/A

* `Open Bugs <https://bugs.opendaylight.org/buglist.cgi?chfieldfrom=2016-08-9&chfieldto=2017-05-25&list_id=78466&product=sxp&query_format=advanced&bug_status=__open__>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  * Added models for managing of feature odl-sxp-route `API <https://git.opendaylight.org/gerrit/#/c/49656/>`_

Standards
=========

* List of standards implemented and to what extent

  * `SXP <https://tools.ietf.org/pdf/draft-smith-kandula-sxp-05.pdf>`_ Fully implemented

Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/SXP:Carbon:Release_Plan>`_

* Describe any major shifts in release schedule from the release plan

  * N/A

