==========
Infrautils
==========

Major Features
==============

odl-infrautils-all
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-all/pom.xml;hb=stable/nitrogen
* **Feature Description:**  This feature exposes all infrautils framework features
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** covered by netvirt and genius CSITs
  * https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-openstack-ocata-upstream-stateful-nitrogen/
  * https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-upstream-all-nitrogen/

.. note that this is experimental until the system test waiver is granted
.. on this thread:
.. https://lists.opendaylight.org/pipermail/infrautils-dev/2017-May/000322.html

Documentation
=============

* **User Guide(s):**

  * Infrautils provides low-level technical framework utilities and therefore has no user guide.

* **Developer Guide(s):**

  * :doc:`Developer Guide </submodules/infrautils/docs/index>`

Security Considerations
=======================

* No external interfaces

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=66717>`_
* Project infrautils provides low-level technical framework utilities
  and therefore no CSIT automated system testing is available. However
  the same gets covered by the CSIT of users of infrautils (eg : genius, netvirt)

Migration
---------

* No additional migration steps needed

Compatibility
-------------

* Is this release compatible with the previous release?

  * Functionality is fully backwards compatible.

* Any API changes?

  * New APIs added for system ready
  * New APIs added for jobcoordinator

* Any configuration changes?

  * No

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
