==================
Neutron Northbound
==================

Major Features
==============

* Tap-as-a-Service (TapAAS) for port mirroring
* Minimum bandwidth QoS rule
* Various code clean up(checkstyle, findbugs, and pom cleanup)

odl-neutron-service
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/odl-neutron-service/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:** This is a top level feature to load Neutron
  northbound functionality.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  OpenStack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl

odl-neutron-northbound-api
--------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/odl-neutron-northbound-api/pom.xml;hhb=refs/heads/stable/nitrogen
* **Feature Description:** This feature provides REST API for
  OpenStack Neutron
* **Top Level:** No
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  OpenStack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl


odl-neutron-spi
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/odl-neutron-spi/pom.xml;hb=stable/nitrogen
* **Feature Description:**  SPI for Neutron northbound feature
* **Top Level:** No
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  OpenStack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl

odl-neutron-transcriber
-----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/odl-neutron-transcriber/pom.xml;hb=stable/nitrogen
* **Feature Description:** Data converter from/to REST API to/from
  MD-SAL YANG model
* **Top Level:** No
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  OpenStack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl

odl-neutron-logger
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/odl-neutron-logger/pom.xml;hb=stable/nitrogen
* **Feature Description:**  Logger on activity on Neutron YANG models
* **Top Level:** No
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  OpenStack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl

odl-neutron-hostconfig-ovs
--------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/odl-neutron-hostconfig-ovs/pom.xml;hb=stable/nitrogen
* **Feature Description:** Helper library to support hostconfig for
  OpenStack service provider with Open vSwitch
* **Top Level:** No
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  OpenStack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl

odl-neutron-hostconfig-vpp
--------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/odl-neutron-hostconfig-vpp/pom.xml;hb=stable/nitrogen
* **Feature Description:** Helper library to support hostconfig for
  OpenStack service provider with VPP
* **Top Level:** No
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  OpenStack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl


Documentation
=============

* **User Guide(s):**

  * :ref:`neutron-service-user-guide` is a guide for cloud admin who
    deploys OpenStack with OpenDaylight.

* **Developer Guide(s):**

  * :ref:`neutron-northbound-developer-guide` is a guide for those who
    develops new Neutron Northbound API which OpenStack Neutron talks to.
  * :ref:`neutron-service-developer-guide` is a guide for those who
    develops new OpenStack Service Provider like netvirt,
    group-based-policy.

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  Yes. REST API for OpenStack Neutron.

  * If so, how are they secure?
    It's authenticated by AAA.
  * What port numbers do they use?
    8080 and 8181 by default. 8087 is also used by networking-odl/devstack.

* Other security issues?

  None.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=org.opendaylight.neutron%3Aproject-neutron>`_ (55.3%)
* Link to CSIT Jobs N/A
* Other manual testing and QA information

  * OpenStack CI results can be found from
    https://review.openstack.org/#/q/project:openstack/networking-odl
  * failure rate of OpenStack CI
    http://grafana.openstack.org/dashboard/db/networking-odl-failure-rate
  * Other OpenDaylight projects which provides OpenStack Service
    (e.g. netvirt, group-based-policy and vtn etc..) have their own system
    tests which also exercise Neutron Norhtbound. Which give coverage.


* Testing methodology. How extensive was it? What should be expected
  to work? What hasn't been tested as much?

  * Unit test: coverage 53.4%
  * Integration test:
  * OpenStack CI

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  No as incompatble change was introduced.

Compatibility
-------------

* Is this release compatible with the previous release?

  Yes.

* Any API changes?

  New API (TapAAS, minimum bandwidth qos rule) were introduced. Not change
  to the existing API.

* Any configuration changes?

  No.

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * `Link to Bugs fixed
    <https://jira.opendaylight.org/issues/?jql=project%20%3D%20NEUTRON%20AND%20issuetype%20%3D%20Bug%20AND%20status%20%3D%20Resolved%20AND%20fixVersion%20%3D%20Oxygen>`_


Known Issues
------------

* List key known issues with workarounds

  None

* `Link to Open Bugs
  <https://jira.opendaylight.org/projects/NEUTRON/>`_


End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  N/A

Standards
=========

* List of standrads implemented and to what extent

  `OpenStack Neutron API
  <https://developer.openstack.org/api-ref/networking/v2/>`_
  ODL Neutron Northbound REST API is based on OpenStack Neutron API
  and OpenStack Neutron implementation. So the two REST APIs are
  similar inherently, but different if necessary for technical
  reason. The goal of ODL Neutron Northbound project is to help
  OpenStack ODL driver for OpenStack Neutron (networking-odl) and ODL
  OpenStack Service Provider(netvirt, group-based-policy, and vtn
  etc...). Not re-implement OpenStack Neutron API.


Release Mechanics
=================

* `Link to release plan
  <https://wiki.opendaylight.org/view/NeutronNorthbound:Oxygen_Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  * Postponed YANG model change to drop tenant-id, make status
    operational to Fluorine cycle
