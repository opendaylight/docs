==================
Neutron Northbound
==================

Major Features
==============

* Yang model for openstack Neutron integration
* REST API for openstack Neutron integration which stores necessary
  info into Neutron yang model
* Logger to log activity on Neutron yang models
* helper library to support for openstack service providers

odl-neutron-service
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/features-neutron/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This is a top level feature to load neutron northbound functionality.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  openstack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl

odl-neutron-northbound-api
--------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/features-neutron/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This feature provides REST API for openstack neutron
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  openstack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl


odl-neutron-spi
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/features-neutron/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  SPI for neutron northbound feature
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  openstack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl

odl-neutron-transcriber
-----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/features-neutron/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Data converter from/to rest api to/from MD-SAL yang model
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  openstack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl

odl-neutron-logger
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/features-neutron/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Logger on activity on neutron yang models
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  openstack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl

odl-neutron-hostconfig-ovs
--------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/features-neutron/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Helper library to support hostconfig for openstack service provider with open vswitch
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  openstack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl

odl-neutron-hostconfig-vpp
--------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=neutron.git;a=blob;f=features/production/features-neutron/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Helper library to support hostconfig for openstack service provider with vpp
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** no CSIT tests as test weiver had been requested.
  openstack CI results can be found from
  https://review.openstack.org/#/q/project:openstack/networking-odl


Documentation
=============

* **User Guide(s):**

  * `Neutron Service User Guide <http://docs.opendaylight.org/en/stable-boron/user-guide/neutron-service-user-guide.html>`_

* **Developer Guide(s):**

  * `Neutron Northbound <http://docs.opendaylight.org/en/stable-boron/developer-guide/neutron-northbound.html>`_
  * `Neutron Service Developer Guide <http://docs.opendaylight.org/en/stable-boron/developer-guide/neutron-service-developer-guide.html>`_

.. Commented out because Colin doens't think it provides any value.
.. Architectural Issues
.. --------------------

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?
  Yes. REST API for openstack Neutron.

  * If so, how are they secure?
    It's authenticated by AAA.
  * What port numbers do they use?
    8080 and 8181 by default
    8087 is also used by networking-odl/devstack

* Other security issues?
  None.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=org.opendaylight.neutron%3Aproject-neutron>`_ (78.2%)
* `Link to CSIT Jobs <URL>`_ N/A
* Other manual testing and QA information
** openstack CI results can be found from
   https://review.openstack.org/#/q/project:openstack/networking-odl
** failure rate of openstack CI
   http://grafana.openstack.org/dashboard/db/networking-odl-failure-rate

* Testing methodology. How extensive was it? What should be expected to work? What hasn't been tested as much?
** Unit test: coverage 26.5%
** Integration test(Karaf 3): coverage 75.9%
** Integration test(karaf 4): doens't work reliably.
   https://git.opendaylight.org/gerrit/#/c/55128/ is pending to migrate
   integration test to karaf4
** openstack CI

Migration
---------

* Is it possible migrate from the previous release? If so, how?
No as incompatble change was introduced.

Compatiblity
------------

* Is this release compatible with the previous release?
Yes.

* Any API changes?
Yes. adding new yang models/nodes and rest API.
** <https://git.opendaylight.org/gerrit/#/c/50615/>_ trunk API
** <https://git.opendaylight.org/gerrit/#/c/51817/>_ add cnfiguration string
** <https://git.opendaylight.org/gerrit/#/c/52081/>_ add service provider feature model
** <https://git.opendaylight.org/gerrit/#/c/51534/>_ Neutron yang model update

* Any configuraiton changes?
No.

Bugs Fixed
----------

* List of bugs fixed since the previous release
** <https://bugs.opendaylight.org/buglist.cgi?chfieldfrom=2016-08-09&chfieldto=2017-05-25&list_id=78675&product=neutron&query_format=advanced&resolution=FIXED>_


Known Issues
------------

* List key known issues with workarounds
None

* `Link to Open Bugs <>https://bugs.opendaylight.org/buglist.cgi?bug_status=__open__&list_id=78677&order=Importance&product=neutron&query_format=specific`_


End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release
N/A

Standards
=========

* List of standrads implemented and to what extent
N/A


Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/NeutronNorthbound:Carbon_Release_Plan>`_
* Describe any major shifts in release schedule from the release plan
** Postponed yang model change to drop tenant-id, make status operational to Nitrogen cycle

.. note:: We will also ask about your testing of the latest SR, but that should probalby not formally be part of this document.
