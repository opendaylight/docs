====================================
COE (Container Orchestration Engine)
====================================

COE(Container Orchestration Engine) project aims at developing a framework for
integrating Container Orchestration Engine (like Kuberenetes) and OpenDaylight.
OpendayLight Oxygen Coe provides following modules --

* **odlovs-cni plugin** A custom Kubernetes CNI Plugin developed for OpenDaylight.
* **watcher** A Kubernetes API watcher module which can communicate Kubernetes events to OpenDaylight.
* **coe-northbound** Module that provides the models necessary for consuming the Kubernetes events.

Major Features
==============

* **Features URL:** https://git.opendaylight.org/gerrit/gitweb?p=coe.git;a=blob;f=features/pom.xml;hb=stable/fluorine

odl-coe-api
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=coe.git;a=blob;f=features/odl-coe-api/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  This feature provides all APIs provided by
  COE project for downstream consumers.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/coe/job/coe-csit-1node-container-networking-all-fluorine/

Documentation
=============

* **Installation Guide(s):**

  * N/A

* **User Guide(s):**

  * :doc:`User Guide <coe:index>`

* **Developer Guide(s):**

  * :doc:`Developer Guide <coe:index>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * N/A

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/projects?search=coe&sort=-analysis_date>`_

* Link to CSIT Jobs

  * `CSIT Job basic <https://jenkins.opendaylight.org/releng/view/coe/job/coe-csit-1node-container-networking-all-fluorine/>`_

  * `Netvirt CSIT for Coe patches <https://jenkins.opendaylight.org/releng/job/netvirt-patch-test-coe-fluorine/>`_

* Testing methodology. How extensive was it? What should be expected to work?
  What hasn't been tested as much?

  * Functionality and System Tests with moderate scale is only tested
  * `Scale test CSIT patches <https://git.opendaylight.org/gerrit/#/c/75172/>`_

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * Yes, a normal upgrade of the software should work.

Compatibility
-------------

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * No

* Any configuration changes?

  * No

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * `Fixed BUGS <https://jira.opendaylight.org/issues/?jql=project%20%3D%20COE%20AND%20fixVersion%20%3D%20Fluorine>`_

Known Issues
------------

* List key known issues with workarounds

  * N/A

* Open Bugs

  * NIL

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  * N/A

Standards
=========

* List of standards implemented and to what extent

  * N/A

Release Mechanics
=================

* `Release plan <https://docs.opendaylight.org/en/stable-fluorine/release-process/release-schedule.html>`_

* Describe any major shifts in release schedule from the release plan

  * No shifts