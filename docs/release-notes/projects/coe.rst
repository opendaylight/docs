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

* **Features URL:** https://git.opendaylight.org/gerrit/gitweb?p=coe.git;a=blob;f=features/pom.xml;hb=stable/oxygen

odl-coe-api
-----------

* **Feature Description:**  This feature provides all APIs provided by
  COE project for downstream consumers.

* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Tests:**
  * WIP CSIT patch- https://git.opendaylight.org/gerrit/#/c/68920/
  * Jenkins Job Patch - https://git.opendaylight.org/gerrit/#/c/67227/
  * Patches to enable Vagrant for CSIT VMs - https://git.opendaylight.org/gerrit/#/c/68856/


New capabilities and enhancements added in Oxygen
=================================================

Planned new capability added
----------------------------

* :doc:`/submodules/netvirt/docs/specs/coe-integration`


Enhancements added to project
-----------------------------

#. L2 support for PODs
#. L3 support for PODs


Documentation
=============

* **Installation Guide(s):**

  * N/A

* **User Guide(s):**

  * N/A

* **Developer Guide(s):**

  * :doc:`Developer Guide </submodules/coe/docs/index>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * N/A

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/projects?search=coe&sort=-analysis_date>`_

* Other manual testing and QA information

  * CSIT activities are all in progress.
  * Manual testing is done with integrating with 3 node Kubernetes cluster on stable\oxygen distribution.

* Testing methodology. How extensive was it? What should be expected to work?
  What hasn't been tested as much?

  * Functionality and System Tests with moderate scale is only tested
  * Scale tests yet to start

Migration
---------

* N/A

Compatibility
-------------

* Is this release compatible with the previous release?

  * Functionality is fully backwards compatible.

* Any API changes?

  * No

* Any configuration changes?

  * No

Bugs Fixed
----------

* COE was in basic development phase in Oxygen, and hence no external bugs have been filed.


Known Issues
------------

* List key known issues with workarounds

  * None


End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  * N/A

Standards
=========

* List of standards implemented and to what extent

  * N/A

Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/Coe:Oxygen:Release_Plan>`_

* Describe any major shifts in release schedule from the release plan

  * N/A
