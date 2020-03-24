============
SERVICEUTILS
============

ServiceUtils is an infrastructure project for OpenDaylight aimed at providing utilities
that will assist in Operation and Maintenance of different services provided by OpenDaylight.
A service is a functionality provided by the ODL controller as seen by the operator.
These services can be categorized as Networking services, e.g. L2, L3/VPN, NAT etc., and Infra services, e.g. Openflow.
These services are provided by different ODL projects like Netvirt, Genius and Openflowplugin and are comprised
of a set of Java Karaf bundles and associated MD-SAL datastores.

Major Features
==============

odl-serviceutils-srm
--------------------

* **Feature URL:** `SRM <https://git.opendaylight.org/gerrit/gitweb?p=serviceutils.git;a=blob;f=features/odl-serviceutils-srm/pom.xml;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** This feature provides service recovery functionaility for ODL services.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * ServiceRecovery is tested by `Genius CSIT <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-gate-only-magnesium>`_.

odl-serviceutils-tools
----------------------

* **Feature URL:** `Tools <https://git.opendaylight.org/gerrit/gitweb?p=serviceutils.git;a=blob;f=features/odl-serviceutils-tools/pom.xml;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** This feature currently has utilities for datatree listeners, as well as Upgrade support.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** Does not have CSIT on its own, but heavily tested by Genius and Netvirt CSITs.

Documentation
=============

* **Developer Guide(s):**

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

  * `CSIT Job basic <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-gate-only-magnesium/>`_

  * `CSIT Job clustering <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-3node-gate-only-magnesium/>`_

  * `Netvirt CSIT for Serviceutils patches <https://jenkins.opendaylight.org/releng/job/serviceutils-patch-test-netvirt-magnesium/>`_

  * `Netvirt cluster CSIT for Serviceutils patches <https://jenkins.opendaylight.org/releng/job/serviceutils-patch-test-cluster-netvirt-magnesium/>`_

  * `Genius Cluster CSIT for Serviceutils patches <https://jenkins.opendaylight.org/releng/job/serviceutils-patch-test-genius-magnesium/>`_

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

* List of bugs fixed since the previous release.

  * None

Known Issues
------------

* List key known issues with workarounds

  * None

End-of-life
===========

* List of features/APIs that were EOLed, deprecated, and/or removed from this release.

  * None

Standards
=========

* List of standards implemented and to what extent.

  * N/A

Release Mechanics
=================

* `Release plan <https://docs.opendaylight.org/en/latest/release-process/release-schedule.html>`_
