==============
NetIDE Project
==============

Major Features
==============

odl-netide-api
--------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netide.git;a=blob;f=features/features-netide/src/main/features/features.xml
* **Feature Description:**  This feature provides the YANG models for
  NetIDE interoperability layer for SDN Applications written for other
  SDN Controllers to run on OpenDaylight managed infrastructure.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netide/job/netide-csit-1node-basic-all-carbon/
  https://jenkins.opendaylight.org/releng/view/netide/job/netide-csit-1node-basic-only-carbon/

odl-netide-impl
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netide.git;a=blob;f=features/features-netide/src/main/features/features.xml
* **Feature Description:**  This feature is the main feature of NetIDE. This
  plugin provides the implementation to transfer Openflow commands from other
  SDN controllers to the switches.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netide/job/netide-csit-1node-basic-all-carbon/
  https://jenkins.opendaylight.org/releng/view/netide/job/netide-csit-1node-basic-only-carbon/

odl-netide-rest
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netide.git;a=blob;f=features/features-netide/src/main/features/features.xml
* **Feature Description:**  This feature is the wrapper feature that installs
  the odl-netide-api & odl-netide-impl feature with other required features for
  restconf access to provide a functional Openflow commands to the switches.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netide/job/netide-csit-1node-basic-all-carbon/
  https://jenkins.opendaylight.org/releng/view/netide/job/netide-csit-1node-basic-only-carbon/

Documentation
=============

* **User Guide(s):**

  * :ref:`netide-user-guide`

* **Developer Guide(s):**

  * :ref:`netide-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF? No
* Other security issues? none

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview/coverage?id=org.opendaylight.netide%3Anetide-aggregator>`_ (74.4)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/netide/>`_
* NetIDE was tested through Unit Tests, IT test and system tests. A manual
  testing plan was also completed. See `Carbon Test Plan <https://wiki.opendaylight.org/view/NetIDE:Carbon:System_Test>`_

Migration
---------

* Is is possible migrate from the previous release? If so, how?

  Yes. No state data kept in datastore. User facing features and interfaces have not changed between releases, only
  enhancements/bugfixes were added.

Compatibility
-------------

* Is this release compatible with the previous release? Yes
* Any API changes? No changes in the yang models from previous release. Only enhancements completed.
* Any configuration changes? No

Bugs Fixed
----------

* List of bugs fixed since the previous release: None

Known Issues
------------

* List key known issues with workarounds: None


End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release: None

Standards
=========

Openflow versions: 

* `OpenFlow1.3.2 <https://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-spec-v1.3.2.pdf>`_
* `OpenFlow1.0.0 <https://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-spec-v1.0.0.pdf>`_


Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/NetIDE:Carbon_Release_Plan>`_
* Describe any major shifts in release schedule from the release plan: None
