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

  Yes. Migration to this release involves migrating features to Karaf 4; see
  `the wiki <https://wiki.opendaylight.org/view/Karaf_4_migration>`_ for details.

Compatibility
-------------

* Is this release compatible with the previous release?

  No.

* Any API changes?

  All Karaf 3 features have been removed in favour of (compatible) Karaf 4 features.

* Any configuration changes?

  No. ODL Parent has no user-visible configuration.

Bugs Fixed
----------

* `4219: Milestone: Upgrade karaf to 4.0.1 or later <https://bugs.opendaylight.org/show_bug.cgi?id=4219>`_
* `6278: karaf-parent belongs in odlparent <https://bugs.opendaylight.org/show_bug.cgi?id=6278>`_
* `6523: org.osgi.service.blueprint.container.ComponentDefinitionException Caused by: java.lang.RuntimeException at org.objectweb.asm.MethodVisitor.visitParameter <https://bugs.opendaylight.org/show_bug.cgi?id=6523>`_
* `6652: Migrate to karaf-maven-plugin features generation <https://bugs.opendaylight.org/show_bug.cgi?id=6652>`_
* `6709: Migrate dependent projects off opendaylight-karaf-empty <https://bugs.opendaylight.org/show_bug.cgi?id=6709>`_
* `6730: Upgrade shiro to current compatible release <https://bugs.opendaylight.org/show_bug.cgi?id=6730>`_
* `7446: Milestone: upgrade to guava-22 <https://bugs.opendaylight.org/show_bug.cgi?id=7446>`_
* `7813: karaf: do not package spring<https://bugs.opendaylight.org/show_bug.cgi?id=7813>`_

Known Issues
------------

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=UNCONFIRMED&bug_status=CONFIRMED&bug_status=IN_PROGRESS&bug_status=WAITING_FOR_REVIEW&product=odlparent>`_

End-of-life
===========

* N/A.

Standards
=========

* N/A.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/ODL_Parent:Nitrogen_Release_Plan>`_
