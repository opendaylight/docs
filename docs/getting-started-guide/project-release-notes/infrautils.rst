============
Infrautils
============

Major Features
==============

odl-infrautils-all
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=features/src/main/features/features.xml
* **Feature Description:**  This feature exposes all infraautils framework features
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** none 

Documentation
=============

* **User Guide(s):**

  * Infrautils provides low-level technical framework utilities and therefore has no user guide

* **Developer Guide(s):**

  * `developer guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/infrautils-developer-guide.rst>`_

Security Considerations
=======================

* No external interfaces

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=66717>`_ (82.8% line coverage)

* Project infrautils provides low-level technical framework utilities 
  and therefore no CSIT automated system testing is available

Migration
---------

* No additional migration steps needed

Compatiblity
------------

* This release is compatible with previous release 
* Async API was removed (dead code, not used by any odl projects)
* No configuration changes made

Bugs Fixed
----------

* `List of bugs fixed since the previous release: <https://bugs.opendaylight.org/buglist.cgi?bug_status=RESOLVED&chfield=target_milestone&chfieldto=Now&component=General&f1=cf_target_milestone&f2=cf_target_milestone&f3=cf_target_milestone&f4=cf_target_milestone&f5=cf_target_milestone&j_top=AND_G&list_id=78956&o1=substring&product=infrautils&query_format=advanced&resolution=FIXED&resolution=INVALID&resolution=WONTFIX&resolution=DUPLICATE&resolution=WORKSFORME&v1=Carbon>`_


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

* `Link to release plan <https://wiki.opendaylight.org/view/Infrastructure_Utilities:Carbon_Release_Plan>`_
