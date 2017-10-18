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

* Is it possible to migrate from the previous release? If so, how?

  * LISP Flow Mapping service will auto-populate the datastructures from existing MD-SAL data upon service start if the data has already been migrated separately.

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

* `6536 <https://bugs.opendaylight.org/show_bug.cgi?id=6536>`_ Clustering: operational data is not showing up in the in-memory map-cache on the replicas 2016-09-08
* `6754 <https://bugs.opendaylight.org/show_bug.cgi?id=6754>`_ No serializer defined for IPv6 prefix SimpleAddress 2016-09-20
* `6759 <https://bugs.opendaylight.org/show_bug.cgi?id=6759>`_ Expired mappings are not returned from SimpleMapCache before deletion.  2016-09-21
* `6634 <https://bugs.opendaylight.org/show_bug.cgi?id=6634>`_ LispNeutronService give exception: java.lang.NullPointerException 2016-10-13
* `6782 <https://bugs.opendaylight.org/show_bug.cgi?id=6782>`_ RadixTrie parent insertion not done correctly for non-empty children  2016-10-13
* `6925 <https://bugs.opendaylight.org/show_bug.cgi?id=6925>`_ Error during Map-Register performance test  2016-10-13
* `7018 <https://bugs.opendaylight.org/show_bug.cgi?id=7018>`_ Null pointer exception when SMR map request is received 2016-10-25
* `7035 <https://bugs.opendaylight.org/show_bug.cgi?id=7035>`_ Boron autorelease failing on lispflowmapping tests  2016-11-01
* `6361 <https://bugs.opendaylight.org/show_bug.cgi?id=6361>`_ LispSouthboundHandler is marked @ChannelHandler.Sharable but is not stateless 2016-11-23
* `7293 <https://bugs.opendaylight.org/show_bug.cgi?id=7293>`_ Radix trie node removals that update the root don't work  2016-12-05
* `7586 <https://bugs.opendaylight.org/show_bug.cgi?id=7586>`_ Fix broken lispflowmapping features failing the new extended SingleFeatureTest incl. TestBundleDiag 2017-01-23
* `7789 <https://bugs.opendaylight.org/show_bug.cgi?id=7789>`_ Odl-lispflowmapping-ui breaks DLUX  2017-02-15
* `7628 <https://bugs.opendaylight.org/show_bug.cgi?id=7628>`_ Karaf 4 migration: provide Karaf 4 lispflowmapping features 2017-03-24
* `7818 <https://bugs.opendaylight.org/show_bug.cgi?id=7818>`_ Map-Register fast path not working correctly  2017-03-27
* `6071 <https://bugs.opendaylight.org/show_bug.cgi?id=6071>`_ Map Notify Authentication Data is not computed correctly  2017-03-27
* `6381 <https://bugs.opendaylight.org/show_bug.cgi?id=6381>`_ Expired xTR-ID mappings are not removed 2017-03-27
* `8248 <https://bugs.opendaylight.org/show_bug.cgi?id=8248>`_ Intermittent SingleFeatureTest failures in autorelease  2017-04-26
* `8429 <https://bugs.opendaylight.org/show_bug.cgi?id=8429>`_ Integration tests fail intermittently with unexpected SMR (a.k.a. the Heisenbug)  04:21:56
* `7272 <https://bugs.opendaylight.org/show_bug.cgi?id=7272>`_ Map-resolver replies with wrong mapping record and TTL  05:04:17


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

* `Link to release plan <https://wiki.opendaylight.org/view/OpenDaylight_Lisp_Flow_Mapping:Carbon_Release_Plan>`_

  * No major shifts from the release plan.