==========================
FaaS - Fabric As A Service
==========================

Major Features
==============

odl-faas-all
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=faas.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This is a top level wrapper feature which includes all the sub features faas offers.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

Documentation
=============

* **User Guide(s):**

  * :ref:`faas_user_guide`

* **Developer Guide(s):**

  * :ref:`faas_dev_guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * N/A

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=58232>`_ (N/A)
* There are unit tests and integration test scripts available under folder "demo" in the faas repo,
  these scripts can be manually invoked for testing. these tests only depends on minnet and ovs
  which can easily been installed on one VM.

Migration
---------

* Is is possible migrate from the previous release? If so, how?

  * No

Compatibility
-------------

* Is this release compatible with the previous release? Yes
* Any API changes? No.
* Any configuration changes? No.

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * None

Known Issues
------------

https://bugs.opendaylight.org/buglist.cgi?quicksearch=faas

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  * None

Standards
=========

* List of standrads implemented and to what extent

  * None

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/FaaS:Nitrogen_Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  * None
