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
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/of-config/job/of-config-csit-1node-basic-all-oxygen/

Documentation
=============

* **User Guide(s):**

  * :ref:`ofconfig-user-guide`

* **Developer Guide(s):**

  * :ref:`ofconfig-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No. This project indirectly uses the NETCONF project to connect to devices.

* Other security issues?

  * Security issues are provided in the RESTCONF and NETCONF projects.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=org.opendaylight.of-config%3Aofconf>`_ (71.4% code coverage)
* Other manual testing and QA information
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?
* External System Test is almost done manually. The test has coverd all external APIs of OF-CONFIG and all supplementary options based on OF-CONFIG 1.2.

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

Yes, there are no additional steps for migration.

Compatibility
-------------

* Is this release compatible with the previous release? Yes.
* Any API changes? No.
* Any configuration changes? No.

Bugs Fixed
----------

None.

Known Issues
------------

* No known issues.

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  N/A

Standards
=========

* List of standrads implemented and to what extent
* `OF-CONFIG 1.2 <https://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow-config/of-config-1.2.pdf>`_

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OF-CONFIG:Oxygen:Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  N/A
