==========
YANG Tools
==========

Major Features
==============

Nitrogen release marks the seventh release of YANG Tools components. We have fixed lot of issues ranging from small annoyances to major reworks.

Major changes delivered in this release are

* Migration to new XML Parser
  `Bug 5824 <https://bugs.opendaylight.org/show_bug.cgi?id=5824>`_
  `Bug 5825 <https://bugs.opendaylight.org/show_bug.cgi?id=5825>`_
* Fix of new XML parser design flaws
  `Bug 8675 <https://bugs.opendaylight.org/show_bug.cgi?id=8675>`_
  `Bug 8715 <https://bugs.opendaylight.org/show_bug.cgi?id=8715>`_
  `Bug 8745 <https://bugs.opendaylight.org/show_bug.cgi?id=8745>`_.
* InMemoryDataTree can be configured to perform full mandatory leaf validation
  `Bug 8291 <https://bugs.opendaylight.org/show_bug.cgi?id=8291>`_
* Deviation statements are properly activated
  `Bug 8307 <https://bugs.opendaylight.org/show_bug.cgi?id=8307>`_
* TrieMap implementation
  `Bug 7464 <https://bugs.opendaylight.org/show_bug.cgi?id=7464>`_
* Improvements, bug fixing and clean up yang-model-export, yang-parser-impl, yang-model-api, yang-data-impl, yang-data-api 


odl-yangtools-yang-data
-----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob_plain;f=features/odl-yangtools-yang-data/pom.xml;hb=refs/heads/v1.2.x
* **Feature Description:** to install YANG Data APIs and implementation.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** System test waiver request pending.

odl-yangtools-common
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob;f=features/odl-yangtools-common/pom.xml;hb=refs/heads/v1.2.x
* **Feature Description:** to install common concepts and utilities.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** System test waiver request pending.

odl-yangtools-yang-parser
-------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob;f=features/odl-yangtools-yang-parser/pom.xml;hb=refs/heads/v1.2.x
* **Feature Description:** to install YANG model APIs and YANG Parser
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/yangtools/job/yangtools-csit-1node-periodic-system-only-nitrogen/

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
  (Test coverage 75.4%)
* `Link to CSIT Jobs
  <https://jenkins.opendaylight.org/releng/view/yangtools/job/yangtools-csit-1node-periodic-system-only-nitrogen/>`_

Migration
---------

* It is possible to migrate from the previous release. Aside from adjusting to
  the removal of deprecated API elements and changed elements, there are no
  additional steps needed for migration to this release.

Compatibility
-------------

* Release is compatible with the previous one.
* API changes:

  * `XmlParserStream.traverse (DOMSource)
    <https://git.opendaylight.org/gerrit/#/c/60864/5>`_
  * `Added UnrecognizedStatement and refactoring of StmtContextUtils
    <https://git.opendaylight.org/gerrit/#/c/61571/>`_
  * `Moving of SubstatementValidator into spi.meta package
    <https://git.opendaylight.org/gerrit/#/c/61570/>`_
  * EffectiveSchemaContext was moved, users are advised to use SimpleSchemaContext
  * org.opendaylight.yangtools.yang.parser.spi package was adjusted

* No configuration changes.

* Behavior changes:
  * concepts.Registration does not allow nulls
  * SemVer and the associated Semantic Version is now bound to OpenConfig
  * YANG/YIN parser is less forgiving in face of ambiguous constructs (like 'mandatory ture' or 'status foobar')

Bugs Fixed
----------

* List of fixed `Bugs
  <https://bugs.opendaylight.org/buglist.cgi?bug_severity=blocker&bug_severity=critical&bug_severity=major&bug_severity=normal&bug_severity=minor&bug_severity=trivial&bug_severity=enhancement&columnlist=product%2Ccomponent%2Cassigned_to%2Cbug_severity%2Ccf_issue_type%2Cshort_desc%2Cbug_status%2Cpriority%2Cdeadline%2Ccf_target_milestone&component=General&f1=cf_target_milestone&known_name=Nitrogen%3A%20Yangtools&list_id=78630&o1=substring&order=bug_id&product=yangtools&query_based_on=Nitrogen%3A%20Yangtools&query_format=advanced&resolution=FIXED&v1=Nitrogen>`_.

Known Issues
------------

* `Link to Open Bugs
  <https://bugs.opendaylight.org/buglist.cgi?bug_severity=blocker&bug_severity=critical&bug_severity=major&bug_severity=normal&bug_severity=minor&bug_severity=trivial&bug_severity=enhancement&columnlist=product%2Ccomponent%2Cassigned_to%2Cbug_severity%2Ccf_issue_type%2Cshort_desc%2Cbug_status%2Cpriority%2Cdeadline%2Ccf_target_milestone&component=General&f1=cf_target_milestone&known_name=Nitrogen%3A%20Yangtools&list_id=78805&o1=substring&product=yangtools&query_based_on=Nitrogen%3A%20Yangtools&query_format=advanced&resolution=---&v1=Nitrogen>`_

End-of-life
===========

* This release has not introduced any new deprecation of a major feature or API.
  However, there are some minor deprecations such as:

  * Yang-data-impl XML codec has been deprecated `<https://git.opendaylight.org/gerrit/#/c/60558/>`_
  * YangParseException has been deprecated `<https://git.opendaylight.org/gerrit/#/c/58751/>`_

* Major development is shifting to 2.0.0 version, which is guaranteed to be API incompatible.
  Users are advised to eliminate any reliance on @Deprecated components as soon as possible after adopting his release.
  Furthermore, the use of CheckedFuture will be eliminated, hence users should reduce their reliance on this class.
  Next release will also move Optional, Function, Predicate and others from Guava to java.util equivalents.

Standards
=========

* YANG and YIN parser processing according to
  `RFC 6020 <https://tools.ietf.org/html/rfc6020>`_,
  `RFC 7950 <https://tools.ietf.org/html/rfc7950>`_ and
  `RFC 8040 <https://tools.ietf.org/html/rfc8040>`_
* XML parser for YANG-modeled data according to
  `RFC 6020 <https://tools.ietf.org/html/rfc6020>`_ and
  `RFC 7950 <https://tools.ietf.org/html/rfc7950>`_.
* JSON parser for YANG-modeled data according to
  `RFC 7951 <https://tools.ietf.org/html/rfc7951>`_

Release Mechanics
=================

* `Link to the release plan <https://wiki.opendaylight.org/view/Simultaneous_Release:Nitrogen_Release_Plan>`_
