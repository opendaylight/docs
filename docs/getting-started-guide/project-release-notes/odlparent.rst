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

  No

* Other security issues?

  No

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=23179>`_ (6.9% coverage)
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

  Yes. There are no specific migration aspects related to ODL Parent.

Compatibility
-------------

* Is this release compatible with the previous release?

  Yes.

* Any API changes?

  Yes, but they are backwards-compatible.

* Any configuration changes?

  No. ODL Parent has no user-visible configuration.

Bugs Fixed
----------

* `6236: Code generation performance optimization required in YangTemplate <https://bugs.opendaylight.org/show_bug.cgi?id=6236>`_
* `6523: RuntimeException at MethodVisitor.visitParameter <https://bugs.opendaylight.org/show_bug.cgi?id=6523>`_
* `6790: Karaf ssh EOFError <https://bugs.opendaylight.org/show_bug.cgi?id=6790>`_
* `7537: Add git.properties <https://bugs.opendaylight.org/show_bug.cgi?id=7537>`_
* `7745: Port already in use: 1099 <https://bugs.opendaylight.org/show_bug.cgi?id=7745>`_
* `7813: Karaf: do not package Spring <https://bugs.opendaylight.org/show_bug.cgi?id=7813>`_

Known Issues
------------

* The Karaf 4 distribution doesn’t work; the workaround is to use Karaf 3 for Carbon.
* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=UNCONFIRMED&bug_status=CONFIRMED&bug_status=IN_PROGRESS&bug_status=WAITING_FOR_REVIEW&product=odlparent>`_

End-of-life
===========

* All the Karaf 3 features are deprecated and will be removed in Nitrogen.

Standards
=========

* N/A.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/ODL_Parent:Carbon_Release_Plan>`_
* We failed to implement the switch to Karaf 4; this has been postponed to Nitrogen.
