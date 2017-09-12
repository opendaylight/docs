=================
LISP Flow Mapping
=================

Major Features
==============

odl-lispflowmapping-msmr
------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=lispflowmapping.git;a=blob;f=features/features-lispflowmapping/src/main/features/features.xml
* **Feature Description:**  This is the core feature that provides the Mapping Services and includes the LISP southbound plugin feature as well.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/lispflowmapping/job/lispflowmapping-csit-1node-msmr-all-carbon/

odl-lispflowmapping-neutron
---------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=lispflowmapping.git;a=blob;f=features/features-lispflowmapping/src/main/features/features.xml
* **Feature Description:**  This feature provides neutron integration.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

odl-lispflowmapping-ui
----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=lispflowmapping.git;a=blob;f=features/features-lispflowmapping/src/main/features/features.xml
* **Feature Description:** This feature provides a GUI to access the Mapping Service data.
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

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=31299>`_ (68%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/lispflowmapping/>`_
* All modules have been unit tested. Integration tests have been performed for all major features. System tests have been performed on most major features.
* Registering and retrieval of basic mappings have been tested more thoroughly. More complicated mapping policies have gone through less testing.


Migration
---------

* Is it possible migrate from the previous release? If so, how?

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

* List of bugs fixed since the previous release:

* `6536 <https://bugs.opendaylight.org/show_bug.cgi?id=8679>`_ MappingSystem#getWidestNegativePrefix(Eid) returns incorrect results
* `6754 <https://bugs.opendaylight.org/show_bug.cgi?id=9023>`_ Merging of negative prefixes is incorrect
* `6759 <https://bugs.opendaylight.org/show_bug.cgi?id=7947>`_ Subscribers from both Northbound and Southbound origin are stored in SimpleMapCache
* `6634 <https://bugs.opendaylight.org/show_bug.cgi?id=8469>`_ SMR scheduler task tracking unreliable
* `6782 <https://bugs.opendaylight.org/show_bug.cgi?id=8506>`_ RNegative mapping subscriptions on SB take into account NB mappings too
* `6925 <https://bugs.opendaylight.org/show_bug.cgi?id=8764>`_ Newly added mapping is removed when it has the same EID prefix as the old one
* `7018 <https://bugs.opendaylight.org/show_bug.cgi?id=9037>`_ Negative mapping in SB masking overlapping more specific positive added later to NB
* `7035 <https://bugs.opendaylight.org/show_bug.cgi?id=6537>`_ Expired mapping removed from map-cache, not removed from MD-SAL
* `6361 <https://bugs.opendaylight.org/show_bug.cgi?id=8503>`_ DAO: Empty sub-tables are not removed
* `7293 <https://bugs.opendaylight.org/show_bug.cgi?id=8112>`_ Integration tests: multi-site doesn't send SMR-invoked Map-Request on SMR
* `7586 <https://bugs.opendaylight.org/show_bug.cgi?id=8591>`_ Authentication cannot be properly disabled
* `7789 <https://bugs.opendaylight.org/show_bug.cgi?id=8775>`_ Upon negative mapping removal, subscribers should be notified to delete the negative


Known Issues
------------

* Clustering is still an experimental feature and may have some issues particularly related to operational datastore consistency.

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=__open__&list_id=78877&order=Importance&product=lispflowmapping&query_format=specific>`_

End-of-life
===========

* None

Standards
=========

* The LISP implementation module and southbound plugin conforms to the IETF `RFC6830 <https://tools.ietf.org/html/rfc6830>`_ and `RFC6833 <https://tools.ietf.org/html/rfc6833>`_ , with the following exceptions:

  - In Map-Request message, M bit(Map-Reply Record exist in the MapRequest) is processed but any mapping data at the bottom of a Map-Request are discarded.
  - LISP LCAFs are limited to only up to one level of recursion, as described in the IETF `LISP YANG draft <https://tools.ietf.org/html/draft-ietf-lisp-yang-04>`_.
  - No standards exist for the LISP Mapping System northbound API as of this date.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OpenDaylight_Lisp_Flow_Mapping:Nitrogen_Release_Plan>`_

  * No major shifts from the release plan.
