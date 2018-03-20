==========
YANG Tools
==========

Major Features
==============

Oxygen release marks the eighth release of YANG Tools components. The focus
of this release was to clean up deprecated APIs and perform maintenance
which requires breaking API compatibility -- hence producing a 2.0.x release
train.

Major items delivered are:
* Split up yang-parser-impl, allowing components to be plugged more cleanly
* Remove use of Guava's Optional in favor of Java 8's equivalent
* Define yang-parser-api
* Mandatory leaves are enforced by default
* RFC7951-compliant JSON codec
* Features have been split into stable and experimental
* Old XML parser has been removed
* YANG model revisions are represented via a dedicated class, not Date
* YANG type empty is represented as a dedicated class, not Void

odl-triemap
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob_plain;f=features/odl-triemap/pom.xml;hb=refs/tags/v2.0.1
* **Feature Description:** to install concurrent-hash-trie-based Map implementation
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** System test waiver request pending.

odl-yangtools-codec
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob_plain;f=features/odl-yangtools-common/pom.xml;hb=refs/tags/v2.0.1
* **Feature Description:** to install JSON and XML parsers
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** System test waiver request pending.

odl-yangtools-common
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob_plain;f=features/odl-yangtools-common/pom.xml;hb=refs/tags/v2.0.1
* **Feature Description:** to install common concepts and utilities.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** System test waiver request pending.

odl-yangtools-data-api
----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob_plain;f=features/odl-yangtools-data-api/pom.xml;hb=refs/tags/v2.0.1
* **Feature Description:** to install YANG Data APIs.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** System test waiver request pending.

odl-yangtools-data
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob_plain;f=features/odl-yangtools-data/pom.xml;hb=refs/tags/v2.0.1
* **Feature Description:** to install YANG Data implementation.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** System test waiver request pending.

odl-yangtools-export
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob_plain;f=features/odl-yangtools-export/pom.xml;hb=refs/tags/v2.0.1
* **Feature Description:** to install YANG model export utilities.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** System test waiver request pending.

odl-yangtools-parser-api
------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob_plain;f=features/odl-yangtools-parser-api/pom.xml;hb=refs/tags/v2.0.1
* **Feature Description:** to install YANG model APIs
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** System test waiver request pending.

odl-yangtools-parser
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob_plain;f=features/odl-yangtools-parser/pom.xml;hb=refs/tags/v2.0.1
* **Feature Description:** to install YANG Parser
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/yangtools/job/yangtools-csit-1node-periodic-system-only-oxygen/

odl-yangtools-xpath
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob_plain;f=features/odl-yangtools-xpath/pom.xml;hb=refs/tags/v2.0.1
* **Feature Description:** to install XPath evaluation engine
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** System test waiver request pending.

odl-exp-objcache
----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=yangtools.git;a=blob_plain;f=features/odl-exp-objcache/pom.xml;hb=refs/tags/v2.0.1
* **Feature Description:** to install Object Cache APIs and implementation
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** System test waiver request pending.

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

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.yangtools%3Ayangtools-aggregator>`_
  Test coverage 62.3%, which constitutes a drop by 12%. This is caused by the parser being more modular, hence tests which
  previously accounted to code coverage are no longer counted. We will address this with targeted unit tests if following
  releases.
* `Link to CSIT Jobs
  <https://jenkins.opendaylight.org/releng/view/yangtools/job/yangtools-csit-1node-periodic-system-only-oxygen/>`_

Migration
---------

* This release constitutes a major shift in all APIs exposed by yangtools. Code
  users need to adjust their feature refences and adjust to changed method
  signatures. Most users should not be impacted as they should be interacting
  with MD-SAL.

Compatibility
-------------

* Release is not compatible with the previous one. The APIs changed are too numerous to list here.

* No configuration changes.

* Behavior changes:
  * Mandatory leaf presence is enforced by default
  * Pattern invert-match modifier is honored in both JSON and XML codecs

Bugs Fixed
----------

* List of fixed `Bugs <https://jira.opendaylight.org/issues/?jql=project%20%3D%20YANGTOOLS%20AND%20fixVersion%20%3D%202.0.0%20OR%20fixVersion%20%3D%202.0.1>`

Known Issues
------------

* List of open `Bugs <https://jira.opendaylight.org/issues/?jql=project%20%3D%20YANGTOOLS%20AND%20affectedVersion%20%3D%202.0.1?`

End-of-life
===========

* odl-exp-objcache is marked as experimental and will be removed in the next
  major (3.0.0) release.

* This release contains deprecated API elements in all code artifacts. These
  will be removed in the next major (3.0.0) release.

* All API elements are expected to remain compatible for at least the duration
  of Fluorine release cycle.

Standards
=========

* YANG and YIN parser processing according to
  `RFC 6020 <https://tools.ietf.org/html/rfc6020>`_,
  `RFC 6536 <https://tools.ietf.org/html/rfc6536>`_,
  `RFC 7950 <https://tools.ietf.org/html/rfc7950>`_,
  `RFC 7952 <https://tools.ietf.org/html/rfc7950>`_ and
  `RFC 8040 <https://tools.ietf.org/html/rfc8040>`_
* XML parser for YANG-modeled data according to
  `RFC 6020 <https://tools.ietf.org/html/rfc6020>`_ and
  `RFC 7950 <https://tools.ietf.org/html/rfc7950>`_.
* JSON parser for YANG-modeled data according to
  `RFC 7951 <https://tools.ietf.org/html/rfc7951>`_

Release Mechanics
=================

* `Link to the release plan <https://wiki.opendaylight.org/view/Simultaneous_Release:Oxygen_Release_Plan>`_
