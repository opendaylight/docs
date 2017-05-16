==========================
FaaS - Fabric As A Service
==========================

Major Features
==============

odl-faas-all
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=faas.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This is a top level wrapper feature which includes
  all the sub features faas offers.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

Documentation
=============

* **User Guide(s):**

  * `Guide Name <http://docs.opendaylight.org/en/stable-boron/user-guide/faas-user-guide.html>`_

* **Developer Guide(s):**

  * `Guide Name <http://docs.opendaylight.org/en/stable-boron/developer-guide/faas-developer-guide.html>`_

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * N/A

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=58232>`_ (N/A)
* Other manual testing and QA information
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?
* There are unit tests and integration test scripts available under folder
  "demo" in the faas repo, these scripts can be manually invoked for testing.
  These tests only depends on minnet and ovs which can easily been installed on
  one VM.

Migration
---------

* Is is possible migrate from the previous release? If so, how?
There is no additonal steps for migration.

Compatiblity
------------

* Is this release compatible with the previous release? Yes
* Any API changes? No.
* Any configuraiton changes? No.

Bugs Fixed
----------

* List of bugs fixed since the previous release
N/A

Known Issues
------------

* List key known issues with workarounds
* `Link to Open Bugs <URL>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release
* N/A

Standards
=========

* List of standrads implemented and to what extent
* N/A

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/FaaS:Carbon_Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

* N/A

.. note::

   We will also ask about your testing of the latest SR, but that should
   probably not formally be part of this document.
