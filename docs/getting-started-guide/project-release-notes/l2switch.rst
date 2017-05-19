========
L2Switch
========

odl-l2switch-switch
-------------------

* **Feature URL:** https://github.com/opendaylight/l2switch/blob/stable/carbon/features/features-l2switch/src/main/features/features.xml
* **Feature Description:** Provides a basic L2 Switch abstraction over multiple switches using OpenFlow
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-switch-all-carbon/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-integration-carbon/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-merge-carbon/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-sonar/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-validate-autorelease-carbon/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-clm-carbon/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-periodic-host-scalability-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-scalability-all-carbon/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-scalability-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-switch-all-carbon/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-switch-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-distribution-check-carbon/

Documentation
=============

* **User Guide(s):**

  * :ref:`l2switch-user-guide`

* **Developer Guide(s):**

  * :ref:`l2switch-dev-guide`

Security Considerations
=======================

* Are there any known security issues?

  None.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=50636>`_ (22.0% code coverage)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/l2switch/>`_
* The tests are using the OpenDaylight CSIT infrastructure.

  * How extensive was it? Extensive, covers functionality, scalability tests.
  * What should be expected to work? The core modules like Address tracker, Packet handler,
    Host tracker, loop removal, simple mininet ping.
  * What has not be tested as much? Basic scalablity tests exists today, extensive scalability
    could be performed.

Migration
---------

Migration with data from Boron to Carbon is not supported.

Compatibility
-------------

This release is compatible with the previous release.

Since l2switch is migrating services to Blueprint, services depending on l2switch
may also need to migrate to Blueprint instead of using CONFIG subsystem.

Bugs Fixed
----------

No bug is fixed in this release.

Known Issues
------------

* `Bug 6654 <https://bugs.opendaylight.org/show_bug.cgi?id=6654>`_

l2switch does not work well when mininet is stopped/started with no delay.

End-of-life
===========
No Changes

Standards
=========

None.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/L2_Switch:Carbon_Release_Plan>`_
*  No major changes.
