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
* Diag status
* Metrics

Major Features
==============

odl-infrautils-all
------------------

.. list-table::
   :widths: 20 50
   :header-rows: 1

   * - **Feature**
     - **Description**

   * - **Feature URL**
     - `Infrautils Features <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-all/pom.xml;hb=stable/sodium>`_
   * - **Feature Description**
     - This feature exposes all infrautils framework features
   * - **Top Level**
     - Yes
   * - **User Facing**
     - No
   * - **Experimental**
     - Yes
   * - **CSIT**
     - Covered by NetVirt and Genius CSITs: `NetVirt <https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-1cmb-0ctl-0cmp-openstack-rocky-upstream-stateful-sodium>`_ and `Genius <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-gate-only-sodium>`_

odl-infrautils-jobcoordinator
-----------------------------

.. list-table::
   :widths: 20 50
   :header-rows: 1

   * - **Feature**
     - **Description**

   * - **Feature URL**
     - `Job Coordinator <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-jobcoordinator/pom.xml;hb=stable/sodium>`_
   * - **Feature Description**
     - This feature provides technical utilities and infrastructures for other projects to use.
   * - **Top Level**
     - Yes
   * - **User Facing**
     - No
   * - **Experimental**
     - No
   * - **CSIT**
     - Covered by NetVirt and Genius CSITs

odl-infrautils-metrics
----------------------

.. list-table::
   :widths: 20 50
   :header-rows: 1

   * - **Feature**
     - **Description**

   * - **Feature URL**
     - `Infrautils metrics <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-metrics/pom.xml;hb=stable/sodium>`_
   * - **Feature Description**
     - This feature exposes the new infrautils.metrics API with labels and first
       implementation based on Dropwizard including thread watcher.
   * - **Top Level**
     - Yes
   * - **User Facing**
     - No
   * - **Experimental**
     - Yes
   * - **CSIT**
     - Covered by NetVirt and Genius CSITs

odl-infrautils-ready
--------------------

.. list-table::
   :widths: 20 50
   :header-rows: 1

   * - **Feature**
     - **Description**

   * - **Feature URL**
     - `Infrautils Ready <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-ready/pom.xml;hb=stable/sodium>`_
   * - **Feature Description**
     - This feature exposes the system readiness framework.
   * - **Top Level**
     - Yes
   * - **User Facing**
     - Yes
   * - **Experimental**
     - No
   * - **CSIT**
     - Covered by NetVirt and Genius CSITs

odl-infrautils-caches
---------------------

.. list-table::
   :widths: 20 50
   :header-rows: 1

   * - **Feature URL**
     - `Infrautils cache <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-caches/pom.xml;hb=stable/sodium>`_
   * - **Feature Description**
     - This feature exposes new infrautils.caches API, CLI commands for monitoring,
       and first implementation based on Guava
   * - **Top Level**
     - Yes
   * - **User Facing**
     - Yes
   * - **Experimental**
     - Yes
   * - **CSIT**
     - Covered by NetVirt and Genius CSITs

odl-infrautils-diagstatus
-------------------------

.. list-table::
   :widths: 20 50
   :header-rows: 1

   * - **Feature URL**
     - `Infrautils Diagstatus <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-diagstatus/pom.xml;hb=stable/sodium>`_
   * - **Feature Description**
     - This feature exposes the status and diagnostics framework.
   * - **Top Level**
     - Yes
   * - **User Facing**
     - Yes
   * - **Experimental**
     - No
   * - **CSIT**
     - Covered by NetVirt and Genius CSITs

odl-infrautils-metrics-prometheus
---------------------------------

.. list-table::
   :widths: 20 50
   :header-rows: 1

   * - **Feature URL**
     - `Sodium <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-metrics-prometheus/pom.xml;hb=stable/sodium>`_
   * - **Feature Description**
     - This feature exposes metrics by HTTP on /metrics/prometheus from the
        local ODL to an external Prometheus set up to scrape that.
   * - **Top Level**
     - Yes
   * - **User Facing**
     - No
   * - **Experimental**
     - Yes
   * - **CSIT**
     - None

Documentation
=============

* **Installation Guide(s):**

  * N/A

* **User Guide(s):**

  * :doc:`Developer Guide <infrautils:index>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * N/A

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.infrautils%3Ainfrautils>`_

* Project infrautils provides low-level technical framework utilities
  and therefore no CSIT automated system testing is available. However
  the same gets covered by the CSIT of users of infrautils (for example, Genius, NetVirt)

* Link to CSIT Jobs

  * `Genius CSIT Job <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-upstream-only-sodium//>`_

  * `NetVirt CSIT Job for Infrautils patches <https://jenkins.opendaylight.org/releng/job/infrautils-patch-test-netvirt-sodium/>`_

  * `GENIUS CSIT Job for Infrautils patches <https://jenkins.opendaylight.org/releng/job/infrautils-patch-test-genius-sodium/>`_

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

No major bug fixes.

Known Issues
------------

* `Open Bugs <https://jira.opendaylight.org/browse/INFRAUTILS-53?jql=project%20%3D%20INFRAUTILS%20AND%20issuetype%20%3D%20Bug%20AND%20status%20%3D%20Open%20AND%20fixVersion%20%3D%20Sodium/>`_

End-of-life
===========

* List of features/APIs that are EOLed, deprecated, and/or removed in this release.

  * Counters infrastructure (replaced by metrics).

Standards
=========

* List of standards implemented and to what extent.

  * N/A

Release Mechanics
=================

* `Release plan <https://jira.opendaylight.org/browse/TSC-219>`_

* Describe any major shifts in release schedule from the release plan.

  * No shifts
