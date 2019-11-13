==========
Infrautils
==========

Infrautils project provides low level utilities for use by other OpenDaylight projects, including:

* @Inject DI
* Utils incl. org.opendaylight.infrautils.utils.concurrent
* Test Utilities
* Job Coordinator
* Ready Service
* Integration Test Utilities (itestutils)
* Caches
* Diagstatus
* Metrics


Major Features
==============

odl-infrautils-all
------------------

* **Feature URL:** `All features <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-all/pom.xml;hb=stable/sodium>`_
* **Feature Description:** This feature exposes all infrautils framework features.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:**

  * `Netvirt <https://jenkins.opendaylight.org/releng/view/netvirt/job/netvirt-csit-1node-0cmb-1ctl-2cmp-openstack-queens-upstream-stateful-sodium/>`_

  * `Genius <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-gate-only-sodium/>`_

odl-infrautils-jobcoordinator
-----------------------------

* **Feature URL:** `Jobcoordinator <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-jobcoordinator/pom.xml;hb=stable/sodium>`_
* **Feature Description:** This feature provides technical utilities and infrastructures for other projects to use.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** Covered by Netvirt and Genius CSITs

odl-infrautils-metrics
----------------------

* **Feature URL:** `Metrics <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-metrics/pom.xml;hb=stable/sodium>`_
* **Feature Description:** This feature exposes the new infrautils.metrics API with labels and first implementation based on Dropwizard incl. thread watcher.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** Covered by Netvirt and Genius CSITs.

odl-infrautils-ready
--------------------

* **Feature URL:** `Ready <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-ready/pom.xml;hb=stable/sodium>`_
* **Feature Description:** This feature exposes the system readiness framework.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** Covered by Netvirt and Genius CSITs.

odl-infrautils-caches
---------------------

* **Feature URL:** `Cache <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-caches/pom.xml;hb=stable/sodium>`_
* **Feature Description:** This feature exposes new infrautils.caches API, CLI commands for monitoring, and first implementation based on Guava.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** Covered by Netvirt and Genius CSITs.

odl-infrautils-diagstatus
-------------------------

* **Feature URL:** `Diagstatus <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-diagstatus/pom.xml;hb=stable/sodium>`_
* **Feature Description:** This feature exposes the status and diagnostics framework.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** Covered by Netvirt and Genius CSITs.

odl-infrautils-metrics-prometheus
---------------------------------

* **Feature URL:** `Prometheus <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-metrics-prometheus/pom.xml;hb=stable/sodium>`_
* **Feature Description:** This feature exposes metrics by HTTP on /metrics/prometheus from the local
  ODL to an external Prometheus setup.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** None

Documentation
=============

* **Developer Guide(s):**

  * :doc:`Developer Guide <infrautils:index>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * JMX RMI Registry opens on port listed at https://wiki.opendaylight.org/view/Ports.

* Other security issues?

  * N/A

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.infrautils%3Ainfrautils>`_.
* Project infrautils provides low-level technical framework utilities
  and therefore no CSIT automated system testing is available. However
  the same gets covered by the CSIT of users of infrautils (eg : Genius, Netvirt).
* Link to CSIT Jobs:

  * `Genius CSIT Job <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-upstream-only-sodium//>`_

  * `Netvirt CSIT Job for Infrautils patches <https://jenkins.opendaylight.org/releng/job/infrautils-patch-test-netvirt-sodium/>`_

  * `GENIUS CSIT Job for Infrautils patches <https://jenkins.opendaylight.org/releng/job/infrautils-patch-test-netvirt-sodium/>`_

* Other manual testing and QA information.

  * N/A

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * Yes, a normal upgrade of the software should work.

Compatibility
-------------

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * No

* Any configuration changes?

  * No

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * Fixed 5 major bugs related to diagstatus (INFRAUTILS-44, INFRAUTILS-39, INFRAUTILS-38, INFRAUTILS-36, INFRAUTILS-37),
  * `Fixed bugs <https://jira.opendaylight.org/browse/INFRAUTILS-59?jql=project%20%3D%20INFRAUTILS%20AND%20issuetype%20%3D%20Bug%20AND%20fixVersion%20%3D%20Sodium//>`_
  * Added 2 noteworthy improvements (INFRAUTILS-33, INFRAUTILS-31) related to diagstatus.
  * Also fixed many minor bugs and technical enhancements.

Known Issues
------------

* `All open BUGS <https://jira.opendaylight.org/browse/INFRAUTILS-53?jql=project%20%3D%20INFRAUTILS%20AND%20issuetype%20%3D%20Bug%20AND%20status%20%3D%20Open%20AND%20fixVersion%20%3D%20Sodium//>`_

End-of-life
===========

* List of features/APIs that were EOLed, deprecated, and/or removed from this release.

  * Counters infrastructure (replaced by metrics).

Standards
=========

* List of standards implemented and to what extent.

  * N/A

Release Mechanics
=================

* `Release plan <https://docs.opendaylight.org/en/stable-sodium/release-process/release-schedule.html>`_
