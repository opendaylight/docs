=========
OF-CONFIG
=========

Major Features
==============

odl-of-config-all
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=of-config.git;a=blob;f=features/features-of-config/src/main/features/features.xml;h=86615e2f22ebc8f21b403185d3a600aa2a463588;hb=HEAD
* **Feature Description:**  This is a top level wrapper feature which includes all the sub features of-config offers. 
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

Documentation
=============

* **User Guide(s):**

  * `OF-CONFIG User Guide <http://docs.opendaylight.org/en/stable-boron/user-guide/of-config-user-guide.html>`_

* **Developer Guide(s):**

  * `OF-CONFIG Developer Guide <http://docs.opendaylight.org/en/stable-boron/developer-guide/of-config-developer-guide.html>`_

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * N/A

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=org.opendaylight.of-config%3Aofconf>`_ (N/A)
* Other manual testing and QA information
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?
* External System Test is almost done manually. The test has coverd all external APIs of OF-CONFIG and all supplementary options based on OF-CONFIG 1.2.

Migration
---------

* Is is possible migrate from the previous release? If so, how?

Yes. There is no additonal steps for migration. 

Compatiblity
------------

* Is this release compatible with the previous release? Yes
* Any API changes? No.
* Any configuraiton changes? No.

Bugs Fixed
----------

* List of bugs fixed since the previous release

https://git.opendaylight.org/gerrit/#/c/61025/2


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
* OF-CONFIG 1.2

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OF-CONFIG:Nitrogen:Release_Plan>`_
* Describe any major shifts in release schedule from the release plan 

* N/A

.. note::

   We will also ask about your testing of the latest SR, but that should
   probably not formally be part of this document.
