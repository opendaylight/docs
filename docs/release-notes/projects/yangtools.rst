==========
YANG Tools
==========

Major Features
==============

Carbon release marks the sixth release of YANG Tools components. We have fixed `56 <https://bugs.opendaylight.org/buglist.cgi?bug_severity=blocker&bug_severity=critical&bug_severity=major&bug_severity=normal&bug_severity=minor&bug_severity=trivial&bug_severity=enhancement&columnlist=product%2Ccomponent%2Cassigned_to%2Cbug_severity%2Ccf_issue_type%2Cshort_desc%2Cbug_status%2Cpriority%2Cdeadline%2Ccf_target_milestone&component=General&f1=cf_target_milestone&known_name=Carbon%3A%20Yangtools&list_id=78630&o1=substring&order=bug_id&product=yangtools&query_based_on=Carbon%3A%20Yangtools&query_format=advanced&resolution=FIXED&v1=Carbon>`_ issues ranging from small annoyances to major reworks.

New major features delivered in this release are

* Introduction of YANG 1.1 (`RFC 7950 <https://tools.ietf.org/html/rfc7950>`_)
  support in YANG parser
  (`Bug 2305 <https://bugs.opendaylight.org/show_bug.cgi?id=2305>`_)
* Introduction of deviation statements support, i.e., when assembling a
  SchemaContext, target nodes of deviations are updated according to the deviate
  type (`Bug 6261 <https://bugs.opendaylight.org/show_bug.cgi?id=6261>`_).

odl-yangtools-yang-data
-----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob;f=features/features-yangtools/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** to install YANG Data APIs and implementation.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** System test waiver request pending.

odl-yangtools-common
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob;f=features/features-yangtools/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** to install common concepts and utilities.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** System test waiver request pending.

odl-yangtools-yang-parser
-------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob;f=features/features-yangtools/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** to install YANG model APIs and YANG Parser
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/yangtools/job/yangtools-csit-1node-periodic-system-only-carbon/

Documentation
=============
* **Developer Guide(s):**

  * :ref:`yangtools-developer-guide`

Security Considerations
=======================

* YANG Tools libraries are designed to be embedded and not to be a stand-alone
  application so security concerns need to be addressed by the application
  using this library.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=13079>`_
  (Test coverage 76%)
* `Link to CSIT Jobs
  <https://jenkins.opendaylight.org/releng/view/yangtools/job/yangtools-csit-1node-periodic-system-only-carbon/>`_

Migration
---------

* It is possible to migrate from the previous release. Aside from adjusting to
  the removal of deprecated API elements and changed elements, there are no
  additional steps needed for migration to this release.

Compatibility
-------------

* Release is compatible with the previous one.
* API changes:

  * `Change of if-feature related API
    <https://wiki.opendaylight.org/view/Weather#Yangtools:_Change_of_if-feature_related_API>`_
  * `Change in yangtools's yang-model-api
    <https://wiki.opendaylight.org/view/Weather#Change_in_yangtools.27s_yang-model-api>`_
  * `Changes in yang-model-api in order to support Yang 1.1
    <https://bugs.opendaylight.org/show_bug.cgi?id=6989>`_
* No configuration changes.

Bugs Fixed
----------

* List of fixed `Bugs (56)
  <https://bugs.opendaylight.org/buglist.cgi?bug_severity=blocker&bug_severity=critical&bug_severity=major&bug_severity=normal&bug_severity=minor&bug_severity=trivial&bug_severity=enhancement&columnlist=product%2Ccomponent%2Cassigned_to%2Cbug_severity%2Ccf_issue_type%2Cshort_desc%2Cbug_status%2Cpriority%2Cdeadline%2Ccf_target_milestone&component=General&f1=cf_target_milestone&known_name=Carbon%3A%20Yangtools&list_id=78630&o1=substring&order=bug_id&product=yangtools&query_based_on=Carbon%3A%20Yangtools&query_format=advanced&resolution=FIXED&v1=Carbon>`_.

Known Issues
------------

* `Link to Open Bugs
  <https://bugs.opendaylight.org/buglist.cgi?bug_severity=blocker&bug_severity=critical&bug_severity=major&bug_severity=normal&bug_severity=minor&bug_severity=trivial&bug_severity=enhancement&columnlist=product%2Ccomponent%2Cassigned_to%2Cbug_severity%2Ccf_issue_type%2Cshort_desc%2Cbug_status%2Cpriority%2Cdeadline%2Ccf_target_milestone&component=General&f1=cf_target_milestone&known_name=Carbon%3A%20Yangtools&list_id=78805&o1=substring&product=yangtools&query_based_on=Carbon%3A%20Yangtools&query_format=advanced&resolution=---&v1=Carbon>`_

End-of-life
===========

* This release has not introduced any new deprecation of a major feature or API.
  However, there are some minor deprecations such as:

  * YangStatementSourceImpl has been deprecated
  * YinStatementSourceImpList has been deprecated
  * some methods in DataTreeFactory have been deprecated

Standards
=========

* YANG parser processing according to
  `RFC 6020 <https://tools.ietf.org/html/rfc6020>`_ and
  `RFC 7950 <https://tools.ietf.org/html/rfc7950>`_.

Release Mechanics
=================

* `Link to the release plan <https://wiki.opendaylight.org/view/YANG_Tools:Carbon:Release_Plan>`_
