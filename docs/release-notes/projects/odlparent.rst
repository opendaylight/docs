==========
ODL Parent
==========

Major Features
==============

There are no user-visible features.

Documentation
=============

* **Developer Guide(s):**

  * :ref:`odl-parent-developer-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  No.

* Other security issues?

  No.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=23179>`_ (6.4% coverage)
* There are no CSIT jobs, ODL Parent has a system test waiver
* ODL Parent is tested by all builds, and manually tested by running the basic
  Karaf container and verifying the scripts we modify (``client`` in
  particular).
* We verify the following:

  * ``start`` starts the Karaf container.
    (in a working state, capable of installing features)
  * ``client`` can connect to a running Karaf container.
  * ``stop`` stops a running Karaf container.

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  Yes. Projects may encounter issues upgrading to Karaf 4.1, which is used in
  this release; however there aren’t generic upgrade instructions.

Compatibility
-------------

* Is this release compatible with the previous release?

  No.

* Any API changes?

  The ``odl-triemap-0.2`` feature wrapping
  ``com.github.romix:java-concurrent-hash-trie-map`` was rendered obsolete by
  YANG Tools' implementation and has been removed.

  The following third-party dependencies have been removed from dependency
  management:

    * Chameleon MBeans
    * Eclipse Link
    * Equinox HTTP service bridge
    * ``equinoxSDK381`` artifacts
    * Coda Hale Metrics, which are mostly unused and should eventually be wrapped
      by InfraUtils
    * ``com.google.code.findbugs:jsr305`` (which *must not* be used; this is
      enforced — ``annotations`` should be used instead)
    * Felix File Install and Web Console
    * Gemini Web
    * Orbit
    * ``org.mockito:mockito-all`` (which *must not* be used; this is enforced —
      ``mockito-core`` should be used instead)
    * Spring Framework
    * ``txw2``
    * Xerces
    * ``xml-apis``

* Any configuration changes?

  No. ODL Parent has no user-visible configuration.

Bugs Fixed
----------

* `66: Consolidate web services to bind to a single port <https://jira.opendaylight.org/browse/ODLPARENT-66>`_
* `86: Milestone: Upgrade karaf to 4.1.2 or later <https://jira.opendaylight.org/browse/ODLPARENT-86>`_
* `121: Upgrade maven-javadoc-plugin to 3.0.0 <https://jira.opendaylight.org/browse/ODLPARENT-121>`_
* `132: odlparent 2.0.5 depends on servlet-api/3.0.1, whereas Karaf 4 depends on /3.1.0 <https://jira.opendaylight.org/browse/ODLPARENT-132>`_
* `133: Our base distribution doesn’t include webconsole <https://jira.opendaylight.org/browse/ODLPARENT-133>`_
* `135: Karaf feature:installation “deadlock” <https://jira.opendaylight.org/browse/ODLPARENT-135>`_

Known Issues
------------

* `Link to Open Bugs <https://jira.opendaylight.org/browse/ODLPARENT>`_

End-of-life
===========

* N/A.

Standards
=========

* N/A.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/ODL_Parent:Oxygen_Release_Plan>`_
