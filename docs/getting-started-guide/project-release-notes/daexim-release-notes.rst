==================
Data Export/Import
==================

Major Features
==============

odl-daexim-all
--------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=daexim.git;a=blob;f=features/odl-daexim-all/src/main/feature/feature.xml
* **Feature Description:** This is a wrapper feature which includes all
  the sub features provided by daexim project.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/daexim/job/daexim-csit-1node-basic-only-nitrogen/

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

  * N/A

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=71877>`
  Code coverage is 79.3%.
* There are extensive unit-tests in the code.


Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * This is the first release of the project. However, migration
    should work across all releases.


Compatibility
-------------

* Is this release compatible with the previous release? Yes
* Any API changes? No.
* Any configuration changes? No.

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * First release of project

Known Issues
------------

https://bugs.opendaylight.org/buglist.cgi?quicksearch=daexim

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in
  this release

  * None

Standards
=========

* List of standrads implemented and to what extent

  * None

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/Daexim:Nitrogen:Release_Plan>`
* Describe any major shifts in release schedule from the release plan

  * None
