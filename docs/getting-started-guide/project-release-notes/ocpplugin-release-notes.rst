==========
OCP-plugin
==========

Major Features
==============

odl-ocpplugin-southbound
------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ocpplugin.git;a=blob;f=features/features-ocpplugin/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Handling of OCP request/response messages
* **Top Level:** No
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/ocpplugin/job/ocpplugin-csit-1node-get-all-carbon


odl-ocpplugin-app-ocp-service
-----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ocpplugin.git;a=blob;f=features/features-ocpplugin/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  User facing interface and rrh-agent registration and lifecycle management
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/ocpplugin/job/ocpplugin-csit-1node-get-all-carbon

Documentation
=============

* **User Guide(s):**

  * :ref:`ocpplugin-user-guide`

* **Developer Guide(s):**

  * :ref:`ocpplugin-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No external interfaces

* Other security issues?

  * No other security issue

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=64810>`_ (61.7%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/ocpplugin/job/ocpplugin-csit-1node-get-all-carbon>`_
* Other manual testing and QA information

  * More detail testing, https://wiki.opendaylight.org/view/OCP_Plugin:Carbon_System_Test_Report

Migration
---------

* Is is possible migrate from the previous release? If so, how?

  * There are no additional steps needed for migration to this release

Compatiblity
------------

* Is this release compatible with the previous release?

  * Release is compatible with previous.

* Any API changes?

  * N/A

* Any configuration changes?

  * N/A

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * `7634 <https://bugs.opendaylight.org/show_bug.cgi?id=7634>`_

Known Issues
------------

* List key known issues with workarounds

  * N/A

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  * Nothing deprecated, EOL.

Standards
=========
* List of standards implemented and to what extent
  * OCP(ORI [Open Radio Interface] C&M [Control and Management]) protocol
  * The ocpplugin poeject extended connection establishment and state machines used on both ends of the connection.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OCP_Plugin:Carbon:Release_Plan>`_

* Describe any major shifts in release schedule from the release plan

  * N/A
