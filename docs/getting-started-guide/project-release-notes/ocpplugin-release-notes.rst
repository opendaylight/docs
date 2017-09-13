==========
OCP-plugin
==========

Major Features
==============

odl-ocpplugin-southbound
------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ocpplugin.git;a=blob;f=features/features-ocpplugin/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  Handling of OCP v4.1.1 request/response messages
* **Top Level:** No
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/ocpplugin/job/ocpplugin-csit-1node-get-all-nitrogen


odl-ocpplugin-app-ocp-service
-----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ocpplugin.git;a=blob;f=features/features-ocpplugin/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  User facing interface and rrh-agent registration and lifecycle management
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/ocpplugin/job/ocpplugin-csit-1node-get-all-nitrogen

Documentation
=============

* **User Guide(s):**

  * :ref:`ocpplugin-user-guide`

* **Developer Guide(s):**

  * :ref:`ocpplugin-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * There is no futher secure description on the OCP 4.1.1 spec, it's out of our design scope, so there is no extenal security interface other than RESTCONF.

* Other security issues?

  * No other security issue

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=64810>`_ (60.8%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/ocpplugin/job/ocpplugin-csit-1node-get-all-nitrogen>`_
* Other manual testing and QA information

  * More detail testing, https://wiki.opendaylight.org/view/OCP_Plugin:Nitrogen_System_Test_Report

Migration
---------

* Is is possible migrate from the previous release? If so, how?

  * Yes, there is no change in config and no need to migrate data in the datastore.

Compatibility
-------------

* Is this release compatible with the previous release?

  * Release is compatible with previous.

* Any API changes?

  * N/A

* Any configuration changes?

  * N/A

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * `Fixed BUGS <https://bugs.opendaylight.org/buglist.cgi?chfieldfrom=2017-05-25&chfieldto=2017-08-09&list_id=78466&product=ocpplugin&query_format=advanced&resolution=FIXED>`_

Known Issues
------------

* List key known issues with workarounds

  * N/A

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  * Migrated from using the CSS to blueprint, deprecated CSS

Standards
=========
* List of standards implemented and to what extent

  * `OCP(ORI [Open Radio Interface] C&M [Control and Management]) v4.1.1 <http://www.etsi.org/deliver/etsi_gs/ORI/001_099/00202/04.01.01_60/gs_ORI00202v040101p.pdf>`_

  * The ocpplugin poeject extended connection establishment and state machines used on both ends of the connection.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OCP_Plugin:Nitrogen:Release_Plan>`_

* Describe any major shifts in release schedule from the release plan

  * N/A
