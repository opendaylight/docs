=============
OVSDB Project
=============

Major Features
==============

odl-ovsdb-southbound-api
------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=southbound/southbound-features/odl-ovsdb-southbound-api/pom.xml;h=7baad461a78e7dd311516ec03b7dbf7c9a0679aa;hb=refs/heads/stable/flourine
* **Feature Description:**  This feature provides the YANG models for northbound users to configure the OVSDB device.
  These YANG models are designed based on the `OVSDB schema <http://openvswitch.org/ovs-vswitchd.conf.db.5.pdf>`_. This
  feature does not provide the implementation of YANG models. If user/developer prefer to write their own implementation
  they can use this feature to load the YANG models in the controller.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-all-flourine/
  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-3node-upstream-clustering-only-flourine/

odl-ovsdb-southbound-impl
-------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=southbound/southbound-features/odl-ovsdb-southbound-impl/pom.xml;h=261a85eacef24c1985a11f60d018816b1f880b10;hb=refs/heads/stable/flourine
* **Feature Description:**  This feature is the main feature of the OVSDB Southbound plugin. This plugin handle the OVS
  device that supports the `OVSDB schema <http://openvswitch.org/ovs-vswitchd.conf.db.5.pdf>`_ and uses the
  `OVSDB protocol <https://tools.ietf.org/html/rfc7047>`_. This feature provides the implementation of the defined YANG
  models. Developers developing the in-controller application and want to leverage OVSDB for device configuration can
  add dependency on this feature and it will load all the required modules.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-all-flourine/
  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-3node-upstream-clustering-only-flourine/

odl-ovsdb-southbound-impl-rest
------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=southbound/southbound-features/odl-ovsdb-southbound-impl-rest/pom.xml;h=6a14e3f90fceba595695d69cdab2571e1a306999;hb=refs/heads/stable/flourine
* **Feature Description:**  This feature is the wrapper feature that installs the odl-ovsdb-southbound-api &
  odl-ovsdb-southbound-impl feature with other required features for restconf access to provide a functional OVSDB
  southbound plugin. Users, who want to develop application that manages the OVSDB supported devices but want to runs
  the application outside of the OpenDaylight controller must install this feature.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-all-flourine/
  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-3node-upstream-clustering-only-flourine/


odl-ovsdb-hwvtepsouthbound-api
------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=hwvtepsouthbound/hwvtepsouthbound-features/odl-ovsdb-hwvtepsouthbound-api/pom.xml;h=e08f4233a6025da2d84dc1d87b6fb220a187e070;hb=refs/heads/stable/flourine
* **Feature Description:**  This feature provides the YANG models for northbound users to configure the device
  that supports OVSDB Hardware vTEP schema. These YANG models are designed based on the
  `OVSDB Hardware vTEP schema <http://openvswitch.org/docs/vtep.5.pdf>`_. This feature does not provide the
  implementation of YANG models. If user/developer prefer to write their own implementation of the defined YANG
  model, they can use this feature to install the  YANG models in the controller.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** Minimal set of CSIT test is already in place. More work is in progress and will have better functional
  coverage in future release.

  * https://jenkins.opendaylight.org/releng/view/Patch-Test/job/ovsdb-patch-test-l2gw-flourine/

odl-ovsdb-hwvtepsouthbound
--------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=hwvtepsouthbound/hwvtepsouthbound-features/odl-ovsdb-hwvtepsouthbound/pom.xml;h=3bb0d9f0093d83d0a82b3b8edffc0acfc93ee93c;hb=refs/heads/stable/flourine
* **Feature Description:**  This feature is the main feature of the OVSDB Hardware vTep Southbound plugin. This plugin
  handle the OVS device that supports the `OVSDB Hardware vTEP schema <http://openvswitch.org/docs/vtep.5.pdf>`_ and
  uses the `OVSDB protocol <https://tools.ietf.org/html/rfc7047>`_. This feature provides the implementation of the
  defined YANG  models. Developers developing the in-controller application and want to leverage OVSDB Hardware vTEP
  plugin for device configuration can add dependency on this feature and it will load all the required modules.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** Minimal set of CSIT test is already in place. More work is in progress and will have better functional
  coverage in future release.

  * https://jenkins.opendaylight.org/releng/view/Patch-Test/job/ovsdb-patch-test-l2gw-flourine/

odl-ovsdb-hwvtepsouthbound-rest
-------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=hwvtepsouthbound/hwvtepsouthbound-features/odl-ovsdb-hwvtepsouthbound-rest/pom.xml;h=8691103618cbe430994657016229b23c9b372d9d;hb=refs/heads/stable/flourine
* **Feature Description:**  This feature is the wrapper feature that installs the odl-ovsdb-hwvtepsouthbound-api &
  odl-ovsdb-hwvtepsouthbound feature with other required features for restconf access to provide a functional OVSDB
  Hardware vTEP plugin. Users, who want to develop application that manages the hardware vTEP supported devices but want
  to runs the application outside of the OpenDaylight controller must install this feature.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** Minimal set of CSIT test is already in place. More work is in progress and will have better functional
  coverage in future release.

  * https://jenkins.opendaylight.org/releng/view/Patch-Test/job/ovsdb-patch-test-l2gw-flourine/

odl-ovsdb-library
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=library/features/odl-ovsdb-library/pom.xml;h=58002499237ac290071a89ca5e0b9c9297974400;hb=refs/heads/stable/flourine
* **Feature Description:**  Encode/decoder library for OVSDB and Hardware vTEP schema.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-all-flourine/
  * https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-3node-upstream-clustering-only-flourine/

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
  through (1) Unit testing (2) CSIT Tests (3) NetVirt project L2 Gateway features CSIT tests and (4) Manual Testing.
  (3) https://jenkins.opendaylight.org/releng/job/netvirt-csit-1node-openstack-queens-upstream-stateful-flourine

Migration
---------

* Is it possible to migrate from the previous release? If so, how?
  Yes. User facing features and interfaces are not changed, only enhancements are done.

Compatibility
-------------

* Is this release compatible with the previous release? Yes
* Any API changes? No changes in the YANG models from previous release.

* Any configuration changes? No

Bugs Fixed
----------

* `List of bugs fixed since the previous release <https://jira.opendaylight.org/issues/?jql=project%20%3D%20OVSDB%20AND%20resolution%20%3D%20Done%20AND%20affectedVersion%20%3D%20Flourine%20`_

Known Issues
------------

* List key known issues with workarounds
  None
* `Link to Open Bugs <https://jira.opendaylight.org/issues/?jql=project%20%3D%20NETVIRT%20AND%20resolution%20%3D%20Unresolved%20AND%20affectedVersion%20%3D%20Flourine%20`_

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

* `Link to release plan <https://jira.opendaylight.org/browse/TSC-137>`_


