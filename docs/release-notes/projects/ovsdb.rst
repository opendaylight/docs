=============
OVSDB Project
=============

Major Features
==============

odl-ovsdb-southbound-api
------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=southbound/southbound-features/features/src/main/features/features.xml
* **Feature Description:**  This feature provides the YANG models for northbound users to configure the OVSDB device.
  These YANG models are designed based on the `OVSDB schema <http://openvswitch.org/ovs-vswitchd.conf.db.5.pdf>`_. This
  feature does not provide the implementation of YANG models. If user/developer prefer to write their own implementation
  they can use this feature to load the YANG models in the controller.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-all-carbon/
  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-3node-upstream-clustering-only-carbon/

odl-ovsdb-southbound-impl
-------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=southbound/southbound-features/features/src/main/features/features.xml
* **Feature Description:**  This feature is the main feature of the OVSDB Southbound plugin. This plugin handle the OVS
  device that supports the `OVSDB schema <http://openvswitch.org/ovs-vswitchd.conf.db.5.pdf>`_ and uses the
  `OVSDB protocol <https://tools.ietf.org/html/rfc7047>`_. This feature provides the implementation of the defined YANG
  models. Developers developing the in-controller application and want to leverage OVSDB for device configuration can
  add dependency on this feature and it will load all the required modules.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-all-carbon/
  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-3node-upstream-clustering-only-carbon/

odl-ovsdb-southbound-impl-rest
------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=southbound/southbound-features/features/src/main/features/features.xml
* **Feature Description:**  This feature is the wrapper feature that installs the odl-ovsdb-southbound-api &
  odl-ovsdb-southbound-impl feature with other required features for restconf access to provide a functional OVSDB
  southbound plugin. Users, who want to develop application that manages the OVSDB supported devices but want to runs
  the application outside of the OpenDaylight controller must install this feature.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-all-carbon/
  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-3node-upstream-clustering-only-carbon/


odl-ovsdb-hwvtepsouthbound-api
------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=hwvtepsouthbound/hwvtepsouthbound-features/features/src/main/features/features.xml
* **Feature Description:**  This feature provides the YANG models for northbound users to configure the device
  that supports OVSDB Hardware vTEP schema. These YANG models are designed based on the
  `OVSDB Hardware vTEP schema <http://openvswitch.org/docs/vtep.5.pdf>`_. This feature does not provide the
  implementation of YANG models. If user/developer prefer to write their own implementation of the defined YANG
  model, they can use this feature to install the  YANG models in the controller.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** Currently no CSIT Tests are available, but work is in progress and will be available by nitrogen
  release.

odl-ovsdb-hwvtepsouthbound
--------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=hwvtepsouthbound/hwvtepsouthbound-features/features/src/main/features/features.xml
* **Feature Description:**  This feature is the main feature of the OVSDB Hardware vTep Southbound plugin. This plugin
  handle the OVS device that supports the `OVSDB Hardware vTEP schema <http://openvswitch.org/docs/vtep.5.pdf>`_ and
  uses the `OVSDB protocol <https://tools.ietf.org/html/rfc7047>`_. This feature provides the implementation of the
  defined YANG  models. Developers developing the in-controller application and want to leverage OVSDB Hardware vTEP
  plugin for device configuration can add dependency on this feature and it will load all the required modules.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** Currently no CSIT Tests are available, but work is in progress and will be available by nitrogen
  release.

odl-ovsdb-hwvtepsouthbound-rest
-------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=hwvtepsouthbound/hwvtepsouthbound-features/features/src/main/features/features.xml
* **Feature Description:**  This feature is the wrapper feature that installs the odl-ovsdb-hwvtepsouthbound-api &
  odl-ovsdb-hwvtepsouthbound feature with other required features for restconf access to provide a functional OVSDB
  Hardware vTEP plugin. Users, who want to develop application that manages the hardware vTEP supported devices but want
  to runs the application outside of the OpenDaylight controller must install this feature.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** Currently no CSIT Tests are available, but work is in progress and will be available by nitrogen
  release.

odl-ovsdb-library
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=library/features/features/src/main/features/features.xml
* **Feature Description:**  Encode/decoder library for OVSDB and Hardware vTEP schema.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-all-carbon/
  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-3node-upstream-clustering-only-carbon/

Documentation
=============

* **User Guide(s):**

  * :doc:`OVSDB User Guide <../../user-guide/ovsdb-user-guide>`

* **Developer Guide(s):**

  * :doc:`OVSDB Developer Guide <../../developer-guide/ovsdb-developer-guide>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF? Yes, Southbound Connection to OVSDB/Hardware vTEP devices.

* Other security issues?

  Plugin's connection to device is by default unsecured. User need to explicitly enable the TLS support through ovsdb
  library configuration file. User can refer to the wiki page
  `here <https://wiki.opendaylight.org/view/OVSDB_Integration:TLS_Communication>`_ for the instructions.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview/coverage?id=org.opendaylight.ovsdb%3Aovsdb>`_ (57%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/ovsdb/>`_
*
* OVSDB southbound plugin is extensively tested through Unit Tests, IT test and system tests. OVSDB southbound plugin
  is tested in both single node setup as well as three node cluster setup. Hardware vTEP plugin is currently tested
  through (1) Unit testing (2) NetVirt project L2 Gateway features CSIT tests and (3) Manual Testing.
  (2) https://jenkins.opendaylight.org/releng/view/netvirt/job/netvirt-csit-hwvtep-1node-openstack-newton-nodl-v2-upstream-stateful-carbon

Migration
---------

* Is is possible migrate from the previous release? If so, how?
  Yes. User facing features and interfaces are not changed, only enhancements are done.

Compatibility
-------------

* Is this release compatible with the previous release? No
* Any API changes? No changes in the YANG models from previous release. Only one minor enhancement is being done.
  https://git.opendaylight.org/gerrit/#/c/50993/

* Any configuration changes? No

Bugs Fixed
----------

* List of bugs fixed since the previous release
  https://bugs.opendaylight.org/buglist.cgi?chfieldfrom=2016-08-09&chfieldto=2017-05-25&list_id=78767&product=ovsdb&query_format=advanced&resolution=FIXED

Known Issues
------------

* List key known issues with workarounds
  None
* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_severity=blocker&bug_severity=critical&bug_severity=major&bug_severity=normal&bug_severity=minor&bug_severity=trivial&bug_status=UNCONFIRMED&bug_status=CONFIRMED&bug_status=IN_PROGRESS&bug_status=WAITING_FOR_REVIEW&list_id=78768&product=ovsdb&query_format=advanced&resolution=--->`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in thisrelease

  None

Standards
=========

* `Open vSwitch Database Management Protocol <https://tools.ietf.org/html/rfc7047>`_
* `OVSDB Schema <http://openvswitch.org/ovs-vswitchd.conf.db.5.pdf>`_
* `Hardware vTep Schema <http://openvswitch.org/docs/vtep.5.pdf>`_

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OpenDaylight_OVSDB:Carbon_Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  We planned to do some exploratory work to improve the performance, scalability and robustness, but it didn't make the
  expected progress in this release. Project will continue this effort in the next release.
