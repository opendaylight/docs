==========
Infrautils
==========

Major Features
==============

We have done a lot of clean-up and minor fixes for bugs reported via Bugzilla.

Major changes delivered in this release are:

* Job Coordinator: enables executing jobs in a parallel/sequential fashion, based on their keys (contribution from genius project)
* Ready Framework: new framework to indicate system readiness, initial version
* New JUnit Test Rules RunUntilFailureRule, LogCaptureRule, and LogRule

odl-infrautils-all
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/infrautils-features/src/main/features/features.xml;hb=stable/carbon
* **Feature Description:**  This feature exposes all infrautils framework features
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** none

.. note that this is experimental until the system test waiver is granted
.. on this thread:
.. https://lists.opendaylight.org/pipermail/infrautils-dev/2017-May/000322.html

Documentation
=============

* **User Guide(s):**

  * Infrautils provides low-level technical framework utilities and therefore has no user guide.

* **Developer Guide(s):**

  * :ref:`infrautils-dev-guide`

Security Considerations
=======================

* No external interfaces

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=66717>`_ (43.6% line coverage)
* Project infrautils provides low-level technical framework utilities
  and therefore no CSIT automated system testing is available

Migration
---------

* No additional migration steps needed

Compatibility
-------------

* This release is compatible with previous release
* Async API was removed (dead code, not used by any odl projects)
* No configuration changes made

Bugs Fixed
----------

* `List of bugs fixed since the previous release: <https://bugs.opendaylight.org/buglist.cgi?bug_status=RESOLVED&chfield=target_milestone&chfieldto=Now&component=General&f1=cf_target_milestone&f2=cf_target_milestone&f3=cf_target_milestone&f4=cf_target_milestone&f5=cf_target_milestone&j_top=AND_G&list_id=78956&o1=substring&product=infrautils&query_format=advanced&resolution=FIXED&resolution=INVALID&resolution=WONTFIX&resolution=DUPLICATE&resolution=WORKSFORME&v1=Nitrogen>`_

Known Issues
------------

* There are no currently known issues

End-of-life
===========

* This section is N/A

Standards
=========

* This section is N/A

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/Infrastructure_Utilities:Nitrogen:Release_Plan>`_
