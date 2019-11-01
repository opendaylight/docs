============
SERVICEUTILS
============

ServiceUtils is an infrastructure project for OpenDaylight. It provides the
utilities that will assist in Operation and Maintenance of different services
provided by OpenDaylight. A service is a functionality provided by the ODL
controller as seen by the operator. These services can be categorized as
networking services (for example, L2, L3/VPN, NAT, etc.) and infra services
(for example, Openflow). These services are provided by different ODL projects,
such as NetVirt, Genius and Openflow plugin. They are comprised of a set of Java
Karaf bundles and associated MD-SAL datastores.

Features
========

odl-serviceutils-srm
--------------------

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Feature**
     - **Description**

   * - **Feature URL**
     - `Serviceutils SRM <https://git.opendaylight.org/gerrit/gitweb?p=serviceutils.git;a=blob;f=features/odl-serviceutils-srm/pom.xml;hb=refs/heads/stable/sodium>`_
   * - **Feature Description**
     - This feature provides service recovery functionality for ODL services.
   * - **Top Level**
     - Yes
   * - **User Facing**
     - Yes
   * - **Experimental**
     - No
   * - **CSIT**
     - `ServiceRecovery <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-gate-only-sodium>`_
       is tested by Genius CSIT.

odl-serviceutils-tools
----------------------

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Feature**
     - **Description**

   * - **Feature URL**
     - `serviceutils-tools <https://git.opendaylight.org/gerrit/gitweb?p=serviceutils.git;a=blob;f=features/odl-serviceutils-tools/pom.xml;hb=refs/heads/stable/sodium>`_
   * - **Feature Description**
     - This feature currently has utilities for datatree listeners, as well as Upgrade support.
   * - **Top Level**
     - Yes
   * - **User Facing**
     - Yes
   * - **Experimental**
     - No
   * - **CSIT**
     - Does not have CSIT on its own, but heavily tested by genius and NetVirt CSITs.

Documentation
=============

* **Installation Guide(s):**

  * N/A

* **User Guide(s):**

  * N/A

* **Developer Guide(s):**

  The project was spun off from GENIUS, and most of the associated documentation is still with GENIUS.

  * :doc:`Developer Guide <genius:index>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * N/A

Quality Assurance
=================

* Link to `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.serviceutils%3Aserviceutils-aggregator>`_

* Link to CSIT Jobs

  .. note:: Serviceutils is used extensively in Genius, NetVirt and SFC, so the respective project CSITs cover the serviceutils functionality.

  * `CSIT Job basic <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-gate-only-sodium/>`_

  * `CSIT Job clustering <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-3node-gate-only-sodium/>`_

  * `NetVirt CSIT for Serviceutils patches <https://jenkins.opendaylight.org/releng/job/serviceutils-patch-test-netvirt-sodium/>`_

  * `NetVirt cluster CSIT for Serviceutils patches <https://jenkins.opendaylight.org/releng/job/serviceutils-patch-test-cluster-netvirt-sodium/>`_

  * `Genius Cluster CSIT for Serviceutils patches <https://jenkins.opendaylight.org/releng/job/serviceutils-patch-test-genius-sodium/>`_

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

  * NIL

Known Issues
------------

* List key known issues with workarounds

  * N/A

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  * N/A

Standards
=========

* List of standards implemented and to what extent

  * N/A

Release Mechanics
=================

* `Release plan <https://jira.opendaylight.org/browse/TSC-215>`_
   Describe any major shifts in release schedule from the release plan

* No shifts
