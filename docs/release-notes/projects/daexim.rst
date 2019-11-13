==================
Data Export/Import
==================

Overview
========

Data Export/Import (Daexim) feature allows OpenDaylight administrators
to export the current system state to the file system or to import the
state from the file system.

Major Features
==============

This release provides the following features:

* **Feature URL:** `Daexim Feature <https://git.opendaylight.org/gerrit/gitweb?p=daexim.git;a=blob;f=features/odl-daexim/src/main/feature/feature.xml;hb=refs/heads/stable/sodium>`_
* **Feature Description:** This wrapper feature includes all the sub-features provided by the Daexim project.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:**

  * `Single node tests <https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-csit-1node-basic-only-sodium/>`_
  * `Three node cluster tests <https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-csit-3node-clustering-basic-only-sodium/>`_

Documentation
=============

* User Guide:

  * `Data Export/Import User Guide <https://docs.opendaylight.org/en/stable-oxygen/user-guide/daexim-user-guide.html#daexim-user-guide>`_

* Developer Guide:

  * `Data Export/Import Developer Guide <https://docs.opendaylight.org/en/stable-oxygen/developer-guide/daexim-developer-guide.html#daexim-dev-guide>`_

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * None

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.daexim%3Adaexim>`_
* Code coverage is 78.8%
* There are extensive unit-tests in the code.

Migration
=========

* Is it possible to migrate from the previous release? If so, how?

  * Migration should work across all releases.

Compatibility
=============

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * No

* Any configuration changes?

  * No

Bug Fixes
=========

The following table lists the resolved issues fixed in this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - General commit
     - Address Sonar warnings found in the code. No behavior changes.

Known Issues
============

* `Open issues <https://jira.opendaylight.org/projects/Daexim/issues>`_

End-of-life
===========

* List of features/APIs that were EOLed, deprecated, and/or removed from this release

  * None

Standards
=========

* List of standards implemented.

  * None

Release Mechanics
=================

* Describe any major shifts in release schedule from the release plan.

  * None
