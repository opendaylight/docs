=========
OF-CONFIG
=========

Major Features
==============

odl-of-config-all
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=of-config.git;a=blob;f=features/features-of-config/src/main/features/features.xml;hb=stable/carbon
* **Feature Description:**  This is a top level wrapper feature which includes all the sub features OF-CONFIG offers.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

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

  * N/A

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=org.opendaylight.of-config%3Aofconf>`_ (71.4% code coverage)
* Other manual testing and QA information
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?
* External System Test is almost done manually, since the sandbox environment
  could not satisfy OF-CONFIG's requirement. The test has covered all external
  APIs of OF-CONFIG and all supplementary options based on OF-CONFIG 1.2.

Migration
---------

* Is is possible migrate from the previous release? If so, how?

  There is no additional support for migration in OF-CONFIG than there is in
  general. User configuration and state will need to be manually migrated when
  upgrading between major versions of OpenDaylight.

Compatibility
-------------

* Is this release compatible with the previous release? Yes.
* Any API changes? No.
* Any configuration changes? No.

Bugs Fixed
----------

* List of bugs fixed since the previous release

  `Replace mockito-all by mockito-core <https://git.opendaylight.org/gerrit/#/c/50878/>`_

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

* `Link to release plan <https://wiki.opendaylight.org/view/OF-CONFIG:Carbon:Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  N/A
