=============
OVSDB Project
=============

Overview
========

The OVSDB Project provides the following functionality:

* OVSDB Southbound Plugin handles the OVS device that supports the OVSDB
  schema and uses the OVSDB protocol. This feature provides the implementation
  of the defined YANG models. Developers developing the in-controller application
  and want to leverage OVSDB for device configuration can leverage this functionality.
* HWvTep Southbound Plugin handles the OVS device that supports the OVSDB
  Hardware vTEP schema and uses OVSDB protocol. This feature provides the
  implementation of the project defined YANG models. Developers developing
  the in-controller application and want to leverage OVSDB Hardware vTEP
  plugin for device configuration can leverage this functionality.

Major Features
==============

odl-ovsdb-southbound-api
------------------------

* **Feature URL:** `Southbound API <https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=southbound/southbound-features/odl-ovsdb-southbound-api/pom.xml;h=7baad461a78e7dd311516ec03b7dbf7c9a0679aa;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** This feature provides the YANG models for northbound users to configure the OVSDB device.
  These YANG models are designed based on the `OVSDB schema <http://openvswitch.org/ovs-vswitchd.conf.db.5.pdf>`_. This
  feature does not provide the implementation of YANG models. If user/developer prefer to write their own implementation
  they can use this feature to load the YANG models in the controller.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * `Southbound all Magnesium <https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-all-magnesium/>`_
  * `Clustering <https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-3node-upstream-clustering-only-magnesium/>`_

odl-ovsdb-southbound-impl
-------------------------

* **Feature URL:** `Southbound IMPL <https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=southbound/southbound-features/odl-ovsdb-southbound-impl/pom.xml;h=261a85eacef24c1985a11f60d018816b1f880b10;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** This feature is the main feature of the OVSDB Southbound plugin. This plugin handles the OVS
  device that supports the `OVSDB schema <http://openvswitch.org/ovs-vswitchd.conf.db.5.pdf>`_ and uses the
  `OVSDB protocol <https://tools.ietf.org/html/rfc7047>`_. This feature provides the implementation of the defined YANG
  models. Developers developing the in-controller application that want to leverage OVSDB for device configuration can
  add a dependency on this feature and all the required modules will be loaded.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * `Southbound all Magnesium <https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-all-magnesium/>`_
  * `Clustering <https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-3node-upstream-clustering-only-magnesium/>`_

odl-ovsdb-southbound-impl-rest
------------------------------

* **Feature URL:** `Southbound IMPL Rest <https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=southbound/southbound-features/odl-ovsdb-southbound-impl-rest/pom.xml;h=6a14e3f90fceba595695d69cdab2571e1a306999;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** This feature is the wrapper feature that installs the odl-ovsdb-southbound-api &
  odl-ovsdb-southbound-impl feature with other required features for restconf access to provide a functional OVSDB
  southbound plugin. Users who want to develop applications that manage the OVSDB supported devices but want to run
  the application outside of the OpenDaylight controller must install this feature.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * `Southbound all Magnesium <https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-all-magnesium/>`_
  * `Clustering <https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-3node-upstream-clustering-only-magnesium/>`_

odl-ovsdb-hwvtepsouthbound-api
------------------------------

* **Feature URL:** `HWVT Southbound API <https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=hwvtepsouthbound/hwvtepsouthbound-features/odl-ovsdb-hwvtepsouthbound-api/pom.xml;h=e08f4233a6025da2d84dc1d87b6fb220a187e070;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** This feature provides the YANG models for northbound users to configure the device
  that supports OVSDB Hardware vTEP schema. These YANG models are designed based on the
  `OVSDB Hardware vTEP schema <http://openvswitch.org/docs/vtep.5.pdf>`_. This feature does not provide the
  implementation of YANG models. If user/developer prefer to write their own implementation of the defined YANG
  model, they can use this feature to install the  YANG models in the controller.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** Minimal set of CSIT test is already in place. More work is in progress and will have better functional
  coverage in future release: `CSIT <https://jenkins.opendaylight.org/releng/view/Patch-Test/job/ovsdb-patch-test-l2gw-magnesium/>`_

odl-ovsdb-hwvtepsouthbound
--------------------------

* **Feature URL:** `HWVTEP Southbound <https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=hwvtepsouthbound/hwvtepsouthbound-features/odl-ovsdb-hwvtepsouthbound/pom.xml;h=3bb0d9f0093d83d0a82b3b8edffc0acfc93ee93c;hb=refs/heads/stable/magnesium>`_
* **Feature Description:**  This feature is the main feature of the OVSDB Hardware vTep Southbound plugin. This plugin
  handles the OVS device that supports the `OVSDB Hardware vTEP schema <http://openvswitch.org/docs/vtep.5.pdf>`_ and
  uses the `OVSDB protocol <https://tools.ietf.org/html/rfc7047>`_. This feature provides the implementation of the
  defined YANG  models. Developers developing the in-controller application that want to leverage OVSDB Hardware vTEP
  plugin for device configuration can add a dependency on this feature, and all the required modules will be loaded.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** Minimal set of CSIT test is already in place. More work is in progress and will have better functional
  coverage in future release. `CSIT <https://jenkins.opendaylight.org/releng/view/Patch-Test/job/ovsdb-patch-test-l2gw-magnesium/>`_

odl-ovsdb-hwvtepsouthbound-rest
-------------------------------

* **Feature URL:** `HWVTEP Southbound Rest <https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=hwvtepsouthbound/hwvtepsouthbound-features/odl-ovsdb-hwvtepsouthbound-rest/pom.xml;h=8691103618cbe430994657016229b23c9b372d9d;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** This feature is the wrapper feature that installs the odl-ovsdb-hwvtepsouthbound-api &
  odl-ovsdb-hwvtepsouthbound features with other required features for restconf access to provide a functional OVSDB
  Hardware vTEP plugin. Users who want to develop applications that manage the Hardware vTEP supported devices but want
  to run the applications outside of the OpenDaylight controller must install this feature.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** Minimal set of CSIT test is already in place. More work is in progress and will have better functional
  coverage in future release. `CSIT <https://jenkins.opendaylight.org/releng/view/Patch-Test/job/ovsdb-patch-test-l2gw-magnesium/>`_

odl-ovsdb-library
-----------------

* **Feature URL:** `Library <https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=blob;f=library/features/odl-ovsdb-library/pom.xml;h=58002499237ac290071a89ca5e0b9c9297974400;hb=refs/heads/stable/magnesium>`_
* **Feature Description:**  Encode/decoder library for OVSDB and Hardware vTEP schema.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * `All Magnesium <https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-1node-upstream-southbound-all-magnesium/>`_
  * `Only Magnesium <https://jenkins.opendaylight.org/releng/view/ovsdb/job/ovsdb-csit-3node-upstream-clustering-only-magnesium/>`_

Documentation
=============

* N/A

.. * **User Guide(s):**

..   * :doc:`OVSDB User Guide <../../user-guide/ovsdb-user-guide>`

.. * **Developer Guide(s):**

..  * :doc:`OVSDB Developer Guide <../../developer-guide/ovsdb-developer-guide>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * Yes, Southbound Connection to OVSDB/Hardware vTEP devices.

* Other security issues?

  * Plugin's connection to device is by default unsecured.

Quality Assurance
=================

* `CSIT Jobs <https://jenkins.opendaylight.org/releng/view/ovsdb/>`_
* OVSDB southbound plugin is extensively tested through Unit Tests, IT test and system tests. OVSDB southbound plugin
  is tested in both a single-node and three-node cluster setup. Hardware vTEP plugin is currently tested
  through:

  * Unit testing
  * CSIT testing
  * NetVirt project L2 Gateway features CSIT tests
  * Manual testing

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * Yes. User facing features and interfaces are not changed, only enhancements are done.

Compatibility
-------------

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * No changes in the YANG models from previous release.

* Any configuration changes?

  * No

Bugs Fixed
----------

* There were no significant issues resolved in the magnesium release.

Known Issues
------------

* `Open Bugs <https://jira.opendaylight.org/browse/OVSDB-487?jql=project%20%3D%20ovsdb%20%20AND%20resolution%20%3D%20Unresolved%20ORDER%20BY%20created%20DESC%2C%20affectedVersion%20ASC%2C%20priority%20DESC%2C%20updated%20DESC)>`_

End-of-life
===========

* List of features/APIs that were EOLed, deprecated, and/or removed from this release.

  * N/A

Standards
=========

* `Open vSwitch Database Management Protocol <https://tools.ietf.org/html/rfc7047>`_
* `OVSDB Schema <http://openvswitch.org/ovs-vswitchd.conf.db.5.pdf>`_
* `Hardware vTep Schema <http://openvswitch.org/docs/vtep.5.pdf>`_

Release Mechanics
=================

* `Release plan <https://jira.opendaylight.org/browse/TSC-211>`_
