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

* **Feature URL:** `Daexim Feature <https://git.opendaylight.org/gerrit/gitweb?p=daexim.git;a=blob;f=features/odl-daexim/src/main/feature/feature.xml;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** This wrapper feature includes all the sub-features provided by the Daexim project.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:**

  * `Single node tests <https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-csit-1node-basic-only-magnesium/>`_
  * `Three node cluster tests <https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-csit-3node-clustering-basic-only-magnesium/>`_

Documentation
=============

* User Guide:

  * `Data Export/Import User Guide <https://docs.opendaylight.org/projects/daexim/en/latest/user-guide.html>`_

* Developer Guide:

  * `Data Export/Import Developer Guide <https://docs.opendaylight.org/projects/daexim/en/latest/developer-guide.html>`_

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * None

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.daexim%3Adaexim>`_
* Code coverage is 81.3%
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

New and Modified Features
=========================

This releases provides the following new and modified features:

* `DAEXIM-16 <https://jira.opendaylight.org/browse/DAEXIM-16>`_: Provide option to batch data getting imported

Bug Fixes
=========

* `Fixed issues <https://jira.opendaylight.org/browse/DAEXIM-15?jql=project%20%3D%20DAEXIM%20AND%20fixVersion%20%3D%20Magnesium%20%20ORDER%20BY%20priority%20DESC%2C%20updated%20DESC>`_

Known Issues
============

* `Open issues <https://jira.opendaylight.org/projects/DAEXIM/issues/DAEXIM-14?filter=allopenissues>`_

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

* `Release plan <https://jira.opendaylight.org/browse/TSC-238>`_

