==================
Data Export/Import
==================

Major Features
==============

odl-daexim
----------

* **Feature URL:** `Daexim <https://git.opendaylight.org/gerrit/gitweb?p=daexim.git;a=blob;f=features/odl-daexim/src/main/feature/feature.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** This wrapper feature includes all the sub features provided by Daexim project.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `Single node <https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-csit-1node-basic-only-neon/>`_. `Three node cluster <https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-csit-3node-clustering-basic-only-neon/>`_.


Documentation
=============

* **User Guide(s):**

  * :ref:`Data Export/Import User Guide <daexim-user-guide>`

* **Developer Guide(s):**

  * :ref:`Data Export/Import Developer Guide <daexim-dev-guide>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * None

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.daexim%3Adaexim>`_
* Code coverage is 78.8%.
* There are extensive unit-tests in the code.


Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * Migration should work across all releases.


Compatibility
-------------

* Is this release compatible with the previous release?

 * Yes

* Any API changes?

 * No.

* Any configuration changes?

 * No.


Bugs Fixed
----------

* List of bugs fixed since the previous release

  * All known bugs have been resolved.

Known Issues
------------

* None.
* `Current list of bugs <https://jira.opendaylight.org/projects/DAEXIM/issues/?filter=allopenissues>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in
  this release

  * None

Standards
=========

* List of standards implemented and to what extent

  * None

Release Mechanics
=================

* Describe any major shifts in release schedule from the release plan

  * None
