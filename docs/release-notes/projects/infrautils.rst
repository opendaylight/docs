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

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-all/pom.xml;hb=stable/fluorine
* **Feature Description:**  This feature exposes all infrautils framework features
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** covered by Netvirt and Genius CSITs
  * https://jenkins.opendaylight.org/releng/view/netvirt/job/netvirt-csit-1node-0cmb-1ctl-2cmp-openstack-pike-upstream-stateful-fluorine/
  * https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-gate-all-fluorine/

odl-infrautils-jobcoordinator
-----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-jobcoordinator/pom.xml;hb=stable/fluorine
* **Feature Description:**  This feature exposes the jobcoordinator framework which is heavily used in genius and netvirt.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** covered by Netvirt and Genius CSITs

odl-infrautils-metrics
----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-metrics/pom.xml;hb=stable/fluorine
* **Feature Description:**  This feature exposes the new infrautils.metrics API with labels and first implementation based on Dropwizard incl. thread watcher
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** covered by Netvirt and Genius CSITs

odl-infrautils-ready
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-ready/pom.xml;hb=stable/fluorine
* **Feature Description:**  This feature exposes the system readiness framework
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** covered by Netvirt and Genius CSITs

odl-infrautils-caches
---------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-caches/pom.xml;hb=stable/fluorine
* **Feature Description:**  This feature exposes new infrautils.caches API, CLI commands for monitoring, and first implementation based on Guava
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** covered by Netvirt and Genius CSITs

odl-infrautils-diagstatus
-------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-diagstatus/pom.xml;hb=stable/fluorine
* **Feature Description:**  This feature exposes the status and diagnostics framework
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** covered by Netvirt and Genius CSITs

odl-infrautils-metrics-prometheus
---------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-metrics-prometheus/pom.xml;hb=stable/fluorine
* **Feature Description:**  This feature exposes metrics by HTTP on /metrics/prometheus from the local ODL to an external Prometheus set up to scrape that.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** None

Documentation
=============

* **Installation Guide(s):**

  * N/A

* **User Guide(s):**

  * :doc:`Developer Guide <infrautils:index>`

* **Developer Guide(s):**

  * :doc:`Developer Guide <infrautils:index>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * JMX RMI Registry opens on port listed at https://wiki.opendaylight.org/view/Ports

* Other security issues?

  * N/A

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.infrautils%3Ainfrautils>`_

* Project infrautils provides low-level technical framework utilities
  and therefore no CSIT automated system testing is available. However
  the same gets covered by the CSIT of users of infrautils (eg : Genius, Netvirt)

* Link to CSIT Jobs

  * `Genius CSIT Job <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-upstream-all-fluorine//>`_

  * `Netvirt CSIT Job for Infrautils patches <https://jenkins.opendaylight.org/releng/job/infrautils-patch-test-netvirt-fluorine/>`_

  * `GENIUS CSIT Job for Infrautils patches <https://jenkins.opendaylight.org/releng/job/infrautils-patch-test-netvirt-fluorine/>`_

* Other manual testing and QA information

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

  * fixed 5 major bugs related to diagstatus (INFRAUTILS-44, INFRAUTILS-39, INFRAUTILS-38, INFRAUTILS-36, INFRAUTILS-37),
  * `All fixed BUGS <https://jira.opendaylight.org/browse/INFRAUTILS-44?jql=project%20%3D%20INFRAUTILS%20AND%20issuetype%20%3D%20Bug%20AND%20fixVersion%20%3D%20Fluorine>`_
  * added 2 noteworthy improvements (INFRAUTILS-33, INFRAUTILS-31) related to diagstatus, 
  * also fixed a lot of more minor bugs and technical enhancements.

Known Issues
------------

* List key known issues with workarounds

  * N/A

* Open Bugs

  * INFRAUTILS-47: HTTP GET on /diagstatus returns 200 instead error when state is NOK (fixed for Fluorine SR-1)

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  * counters infrastructure (replaced by metrics)

Standards
=========

* List of standards implemented and to what extent

  * N/A

Release Mechanics
=================

* `Release plan <https://docs.opendaylight.org/en/stable-fluorine/release-process/release-schedule.html>`_

* Describe any major shifts in release schedule from the release plan

  * No shifts
