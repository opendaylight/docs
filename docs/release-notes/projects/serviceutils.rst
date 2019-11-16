============
SERVICEUTILS
============

The ServiceUtils infrastructure project provides the utilities that assist in
the operation and maintenance of different services that are provided by OpenDaylight.
A service is a functionality provided by the ODL controller. These services can be
categorized as Networking services (that is, L2, L3/VPN, NAT, etc.) and Infra services
(that is, Openflow). These services are provided by different ODL projects, such as Netvirt,
Genius and the Openflow plugin. They are comprised of a set of Java Karaf bundles and
associated MD-SAL datastores.

Major Features
==============

odl-serviceutils-srm
--------------------

* **Feature URL:** `SRM <https://git.opendaylight.org/gerrit/gitweb?p=serviceutils.git;a=blob;f=features/odl-serviceutils-srm/pom.xml;hb=refs/heads/stable/sodium>`_
* **Feature Description:** This feature provides service recovery functionality for ODL services.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * ServiceRecovery is tested by `Genius CSIT <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-gate-only-sodium>`_.

odl-serviceutils-tools
----------------------

* **Feature URL:** `Tools <https://git.opendaylight.org/gerrit/gitweb?p=serviceutils.git;a=blob;f=features/odl-serviceutils-tools/pom.xml;hb=refs/heads/stable/sodium>`_
* **Feature Description:** This feature currently has utilities for datatree listeners, as well as Upgrade support.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** Does not have CSIT on its own, but heavily tested by Genius and Netvirt CSITs.

Documentation
=============

* **Developer Guide:**

  * :doc:`Developer Guide <genius:index>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * N/A

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.serviceutils%3Aserviceutils-aggregator>`_

* Link to CSIT Jobs:

  .. note:: Serviceutils is used extensively in Genius, NetVirt and SFC, so the respective project CSITs cover the serviceutils functionality.

  * `CSIT Job basic <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-gate-only-sodium/>`_

  * `CSIT Job clustering <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-3node-gate-only-sodium/>`_

  * `Netvirt CSIT for Serviceutils patches <https://jenkins.opendaylight.org/releng/job/serviceutils-patch-test-netvirt-sodium/>`_

  * `Netvirt cluster CSIT for Serviceutils patches <https://jenkins.opendaylight.org/releng/job/serviceutils-patch-test-cluster-netvirt-sodium/>`_

  * `Genius Cluster CSIT for Serviceutils patches <https://jenkins.opendaylight.org/releng/job/serviceutils-patch-test-genius-sodium/>`_

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

* There were no significant issues resolved in the sodium release.

Known Issues
------------

* There were no significant issues known in the sodium release.

End-of-life
===========

* List of features/APIs that were EOLed, deprecated, and/or removed from this release.

  * None

Standards
=========

* List of standards implemented.

  * N/A

Release Mechanics
=================

* `Release plan <https://jira.opendaylight.org/browse/TSC-215>`_
