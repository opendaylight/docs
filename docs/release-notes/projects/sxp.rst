==========================================
Scalable-Group Tag eXchange Protocol (SXP)
==========================================

Major Features
==============
* Distributed implementation of binding databases backed by Hazelcast
* Configurable binding origins with priorities

odl-sxp-api
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/odl-sxp-api/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  This feature provides models based on
  `RFC <https://tools.ietf.org/pdf/draft-smith-kandula-sxp-06.pdf>`_.
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-sxp-core
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/odl-sxp-core/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  This feature performs tasks for managing SXP
  devices and provides the implementation of
  `RFC <https://tools.ietf.org/pdf/draft-smith-kandula-sxp-06.pdf>`_.
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-sxp-controller
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/odl-sxp-controller/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  This feature performs tasks regarding managing SXP
  devices via RESTCONF.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-basic-all-fluorine/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-binding-origin-all-fluorine/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-clustering-all-fluorine/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-filtering-all-fluorine/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-topology-all-fluorine/

odl-sxp-routing
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/odl-sxp-routing/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  This feature that performs managing of SXP devices
  in cluster environment.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-routing-all-fluorine/

odl-sxp-robot
-------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sxp.git;a=blob;f=features/odl-sxp-robot/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  Contains JRobot libraries used in CSIT tests
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-performance-all-fluorine/

Documentation
=============

* **Installation Guide(s):**

  * N/A

* **User Guide(s):**

  * :ref:`User guide <sxp-user-guide>`

* **Developer Guide(s):**

  * :ref:`Developer guide <sxp-dev-guide>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * Yes on port 64999 based on `SXP RFC <https://tools.ietf.org/pdf/draft-smith-kandula-sxp-06.pdf>`_ secured by TCP-MD5, optionally also with SSL.

* Other security issues?

  * TCP-MD5 security option is now deprecated, and in future will replaced by TCP-AO

Quality Assurance
=================

* Link to `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.sxp%3Asxp-parent>`_ (84.2%)

* Link to CSIT Jobs

  * `CSIT Job basic <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-basic-all-fluorine/>`_
  * `CSIT Job binding origin <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-binding-origin-all-fluorine/>`_
  * `CSIT Job clustering <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-clustering-all-fluorine/>`_
  * `CSIT Job filtering <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-filtering-all-fluorine/>`_
  * `CSIT Job performance <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-performance-all-fluorine/>`_
  * `CSIT Job routing <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-3node-routing-all-fluorine/>`_
  * `CSIT Job topology <https://jenkins.opendaylight.org/releng/view/sxp/job/sxp-csit-1node-topology-all-fluorine/>`_

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

  * No.

Compatibility
-------------

* Is this release compatible with the previous release?

  * No.

* Any API changes?

  * (sxp-core) Removed MasterDatabaseInf#addLocalBindings method
  * (sxp-core) Removed MasterDatabaseInf#deleteBindingsLocal method
  * (sxp-core) Removed MasterDatabaseInf#getLocalBindings method
  * (sxp-core) Added OriginType filed to SxpBindingFields class

* Any configuration changes?

  * No

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * `Fixed BUGS <https://jira.opendaylight.org/browse/SXP-143?jql=project%20in%20(GBP%2C%20SXP)%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20created%20%3E%3D%202018-03-07%20AND%20created%20%3C%3D%202018-08-07>`_

Known Issues
------------

* List key known issues with workarounds

  * N/A

* `Open Bugs <https://jira.opendaylight.org/browse/SXP-134?jql=project%20%3D%20SXP%20AND%20issuetype%20%3D%20Bug%20AND%20status%20%3D%20Open>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  * (sxp-core) Removed MasterDatabaseInf#addLocalBindings method
  * (sxp-core) Removed MasterDatabaseInf#deleteBindingsLocal method
  * (sxp-core) Removed MasterDatabaseInf#getLocalBindings method

  * (sxp-controller) Removed deprecated REST call: restconf/operations/sxp-controller:add-entry:add-entry
  * (sxp-controller) Removed deprecated REST call: restconf/operations/sxp-controller:add-entry:update-entry
  * (sxp-controller) Removed deprecated REST call: restconf/operations/sxp-controller:add-entry:delete-entry
  * (sxp-controller) Removed config-persistence input field from restconf/operations/sxp-controller:add-entry:add-bindings
  * (sxp-controller) Removed config-persistence input field from restconf/operations/sxp-controller:add-entry:add-domain
  * (sxp-controller) Removed binding list input field from restconf/operations/sxp-controller:add-entry:add-node

Standards
=========

* List of standards implemented and to what extent

  * `SXP <https://tools.ietf.org/pdf/draft-smith-kandula-sxp-06.pdf>`_ Fully implemented

Release Mechanics
=================

* `Release plan <https://docs.opendaylight.org/en/stable-fluorine/release-process/release-schedule.html>`_

* Describe any major shifts in release schedule from the release plan

  * No shifts
