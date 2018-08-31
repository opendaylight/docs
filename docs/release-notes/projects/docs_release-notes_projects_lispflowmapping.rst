=================
LISP Flow Mapping
=================

Major Features
==============

odl-lispflowmapping-msmr
------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=lispflowmapping.git;a=blob;f=features/odl-lispflowmapping-msmr/pom.xml
* **Feature Description:**  This is the core feature that provides the Mapping Services and includes the LISP southbound plugin feature as well.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/lispflowmapping/job/lispflowmapping-csit-1node-msmr-all-fluorine/

odl-lispflowmapping-neutron
---------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=lispflowmapping.git;a=blob;f=features/odl-lispflowmapping-neutron/pom.xml;hb=stable/fluorine
* **Feature Description:**  This feature provides Neutron integration.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

Documentation
=============

* **User Guide(s):**
    :ref:`lispflowmapping-user-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?
* Yes, the southbound plugin

  * If so, how are they secure?
    * LISP southbound plugin follows LISP `RFC6833 <https://tools.ietf.org/html/rfc6833>`_ security guidelines.

  * What port numbers do they use?
    * Port used: 4342

* Other security issues?
  * None

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.lispflowmapping%3Alispflowmapping-all>`_ (59.5%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/lispflowmapping/>`_
* All modules have been unit tested. Integration tests have been performed for all major features. System tests have been performed on most major features.
* Registering and retrieval of basic mappings have been tested more thoroughly. More complicated mapping policies have gone through less testing.


Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * LISP Flow Mapping service will auto-populate the datastructures from existing MD-SAL data upon service start if the data has already been migrated separately. No automated way for transfering the data is provided in this release.

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

* Clustering is still an experimental feature and may have some issues particularly related to operational datastore consistency.

* `Link to Open Bugs <https://jira.opendaylight.org/projects/LISPMAP/issues/>`_

End-of-life
===========

* None

Standards
=========

* The LISP implementation module and southbound plugin conforms to the IETF `RFC6830 <https://tools.ietf.org/html/rfc6830>`_ and `RFC6833 <https://tools.ietf.org/html/rfc6833>`_ , with the following exceptions:

  - In Map-Request message, M bit(Map-Reply Record exist in the MapRequest) is processed but any mapping data at the bottom of a Map-Request are discarded.
  - LISP LCAFs are limited to only up to one level of recursion, as described in the IETF `LISP YANG draft <https://tools.ietf.org/html/draft-ietf-lisp-yang-07>`_.
  - No standards exist for the LISP Mapping System northbound API as of this date.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OpenDaylight_Lisp_Flow_Mapping:fluorine_Release_Plan>`_

  * No major shifts from the release plan.
