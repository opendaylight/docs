========
L2Switch
========

odl-l2switch-switch
-------------------
* **Feature Description:** Provides a basic L2 Switch abstraction over multiple switches using OpenFlow
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-switch-all-oxygen/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-merge-oxygen/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-sonar/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-validate-autorelease-oxygen/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-maven-clm-oxygen/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-periodic-host-scalability-daily-only-oxygen/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-scalability-all-oxygen/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-switch-all-oxygen/
  * https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-distribution-check-oxygen/

Documentation
=============

* **User Guide(s):**

  * :ref:`l2switch-user-guide`

* **Developer Guide(s):**

  * :ref:`l2switch-dev-guide`

Security Considerations
=======================

* `CVE-2015-1610 <https://www.cvedetails.com/cve/CVE-2015-1610/>`_: Hosttracker data may be manipulated via MAC address spoofing.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=org.opendaylight.l2switch%3Al2switch>`_
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/l2switch/>`_
* The tests are using the OpenDaylight CSIT infrastructure.

  * How extensive was it? *Covers functionality and basic scalability*
  * What should be expected to work? *Basic functions: packet handling, address tracking, host discovery, mininet pingall success (with flood mode enabled)*
  * What has not be tested as much? *Extensive scalability testing, clustering*

Migration
---------

Data should be migratable from Nitrogen to Oxygen.

Compatibility
-------------

This release is compatible with the previous release.

Bugs Fixed
----------

No bug is fixed in this release.

Known Issues
------------

* `L2SWITCH-81 <https://jira.opendaylight.org/browse/L2SWITCH-81>`_: l2switch does not work well when mininet is stopped/started with no delay.

End-of-life
===========
No Changes

Standards
=========

None.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/L2_Switch:Oxygen_Release_Plan>`_
*  No major changes.
