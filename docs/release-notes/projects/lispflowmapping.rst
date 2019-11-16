=================
LISP Flow Mapping
=================

Overview
========

LISP (Locator ID Separation Protocol) Flow Mapping service provides mapping services,
including LISP Map-Server and LISP Map-Resolver services that store and serve mapping
data to dataplane nodes and to OpenDaylight applications. Mapping data can include
mapping of virtual addresses to physical network addresses where the virtual nodes
are reachable or hosted. Mapping data can also include a variety of routing policies
including traffic engineering and load balancing. To leverage this service,
OpenDaylight applications and services can use the northbound REST API to
define the mappings and policies in the LISP Mapping Service. Dataplane
devices capable of LISP control protocol can leverage this service through
a southbound LISP plugin. LISP-enabled devices must be configured to use this
OpenDaylight service, since their Map- Server and/or Map-Resolver.

Southbound LISP plugin supports the LISP control protocol (that is, Map-Register,
Map-Request, Map-Reply messages). It can also be used to register mappings in the
OpenDaylight mapping service.

Major Features
==============

odl-lispflowmapping-msmr
------------------------

* **Feature URL:** `MSMR <https://git.opendaylight.org/gerrit/gitweb?p=lispflowmapping.git;a=blob;f=features/odl-lispflowmapping-msmr/pom.xml>`_
* **Feature Description:** This is the core feature that provides the Mapping Services and includes the LISP southbound plugin feature as well.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `CSIT <https://jenkins.opendaylight.org/releng/view/lispflowmapping/job/lispflowmapping-csit-1node-msmr-all-sodium/>`_

odl-lispflowmapping-neutron
---------------------------

* **Feature URL:** `Neutron <https://git.opendaylight.org/gerrit/gitweb?p=lispflowmapping.git;a=blob;f=features/odl-lispflowmapping-neutron/pom.xml;hb=stable/sodium>`_
* **Feature Description:** This feature provides Neutron integration.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

Documentation
=============

* **User Guide(s):**

  * :ref:`lispflowmapping-user-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * Yes, the southbound plugin.

* If so, how are they secure?

  * LISP southbound plugin follows LISP `RFC6833 <https://tools.ietf.org/html/rfc6833>`_ security guidelines.

* What port numbers do they use?

  * Port used: 4342

* Other security issues?

  * None

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.lispflowmapping%3Alispflowmapping-all>`_ (59.6%)
* `CSIT Jobs <https://jenkins.opendaylight.org/releng/view/lispflowmapping/>`_
* All modules have been unit tested. Integration tests have been performed for all
  major features. System tests have been performed on most major features.
* Registering and retrieval of basic mappings have been tested more thoroughly.
  More complicated mapping policies have gone through less testing.

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * LISP Flow Mapping service will auto-populate the data structures from existing
    MD-SAL data upon service start if the data has already been migrated separately.
    No automated way for transferring the data is provided in this release.

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

* None

Known Issues
------------

* `Open Bugs <https://jira.opendaylight.org/projects/LISPMAP/issues/?filter=allopenissues>`_

End-of-life
===========

* List of features/APIs that were EOLed, deprecated, and/or removed from this release.

  * N/A

Standards
=========

* The LISP implementation module and southbound plugin conforms to the IETF `RFC6830 <https://tools.ietf.org/html/rfc6830>`_
  and `RFC6833 <https://tools.ietf.org/html/rfc6833>`_, with the following exceptions:

  - In Map-Request message, M bit(Map-Reply Record exist in the MapRequest) is processed,
    but any mapping data at the bottom of a Map-Request are discarded.
  - LISP LCAFs are limited to only up to one level of recursion, as described in the IETF
    `LISP YANG draft <https://tools.ietf.org/html/draft-ietf-lisp-yang-07>`_.
  - No standards exist for the LISP Mapping System northbound API as of this date.

Release Mechanics
=================

* `Release plan <https://docs.opendaylight.org/en/stable-sodium/release-process/release-schedule.html>`_
