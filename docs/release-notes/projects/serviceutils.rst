============
SERVICEUTILS
============

ServiceUtils is an infrastructure project for OpenDaylight aimed at providing utilities
that will assist in Operation and Maintenance of different services provided by OpenDaylight.
A service is a functionality provided by the ODL controller as seen by the operator.
These services can be categerized as Networking services, e.g. L2, L3/VPN, NAT etc., and Infra services, e.g. Openflow.
These services are provided by different ODL projects like Netvirt, Genius and Openflowplugin and are comprised
of a set of java karaf bundles and associated MD-SAL datastores.

Major Features
==============

odl-serviceutils-tools
----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=serviceutils.git;a=blob;f=features/odl-serviceutils-tools/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  This feature includes some of the commonly used datastore related utilities, as well as some upgarde related tools
  which will be useful for applications.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-upstream-all-fluorine/

  * https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-3node-upstream-all-fluorine/

odl-serviceutils-srm
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=serviceutils.git;a=blob;f=features/odl-serviceutils-srm/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  This feature provides service recovery support for opendaylight services.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-upstream-all-fluorine/

  * https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-3node-upstream-all-fluorine/

  Apart from this, the feature is well tested by the netvirt CSIT suites.

Documentation
=============

* **Installation Guide(s):**

  * N/A

* **User Guide(s):**

  * N/A

* **Developer Guide(s):**

  The project was spun off from GENIUS, and most of the assocaited documentation is still with GENIUS.

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

  * `CSIT Job basic <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-upstream-all-fluorine//>`_

  * `CSIT Job clustering <https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-3node-upstream-all-fluorine//>`_
  
  * `Netvirt CSIT for Serviceutils patches <https://jenkins.opendaylight.org/releng/job/serviceutils-patch-test-netvirt-fluorine/>`_

  * `Netvirt cluster CSIT for Serviceutils patches <https://jenkins.opendaylight.org/releng/job/serviceutils-patch-test-cluster-netvirt-fluorine/>`_

  * `Genius Cluster CSIT for Serviceutils patches <https://jenkins.opendaylight.org/releng/job/serviceutils-patch-test-genius-fluorine/>`_

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

  * N/A

* Any configuration changes?

  * No

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * `Fixed BUGS <https://jira.opendaylight.org/browse/SRVUTILS-3?jql=project%20%3D%20SRVUTILS/>`_

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

* `Release plan <https://docs.opendaylight.org/en/stable-fluorine/release-process/release-schedule.html>`_

* Describe any major shifts in release schedule from the release plan

  * No shifts
