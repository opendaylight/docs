=======
NetVirt
=======

Major Features
==============

Feature Name
------------

* **Feature Name:** odl-netvirt-openstack
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netvirt.git;a=blob_plain;f=vpnservice/features/src/main/features/features.xml
* **Feature Description:**  This feature provides a network virtualization solution.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-openstack-newton-nodl-v2-upstream-stateful-carbon/

Documentation
=============

* **User Guide(s):**

  * :doc:`../../submodules/netvirt/docs/user-guide/index`
  * :doc:`../../submodules/netvirt/docs/openstack-guide/index`

* **Developer Guide(s):**

  * :doc:`../../submodules/netvirt/docs/developer-guide/index`

* **Contributor Guide(s):**

  * :doc:`../../submodules/netvirt/docs/contributor-guide/index`

Security Considerations
=======================

No known issues.

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/overview?id=64219>`_
* `All CSIT Jobs <https://jenkins.opendaylight.org/releng/view/netvirt-csit>`_
* `Default stateful tests <https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-openstack-newton-nodl-v2-upstream-stateful-carbon>`_
* `Conntrack SNAT stateful tests <https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-openstack-newton-nodl-v2-upstream-stateful-snat-conntrack-carbon>`_
* `v1 tests <https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-openstack-newton-upstream-stateful-carbon>`_
* `Learn tests <https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-openstack-newton-nodl-v2-upstream-learn-carbon>`_
* `Transparent tests <https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-openstack-newton-nodl-v2-upstream-transparent-carbon>`_

Migration
---------

Nothing beyond general Carbon migration requirements.

Compatibility
-------------

Nothing beyond general Carbon Compatibility requirements.

Bugs Fixed
----------

* `Closed Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=RESOLVED&bug_status=VERIFIED&component=General&list_id=78695&order=changeddate%2Cpriority%2Cbug_severity&product=netvirt&query_based_on=&query_format=advanced&resolution=FIXED&resolution=INVALID&resolution=WONTFIX&resolution=DUPLICATE&resolution=WORKSFORME&version=Carbon>`_

Known Issues
------------

* `Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=UNCONFIRMED&bug_status=CONFIRMED&bug_status=IN_PROGRESS&bug_status=WAITING_FOR_REVIEW&component=General&list_id=78574&order=bugs.bug_severity%2Cbugs.priority&product=netvirt&query_format=advanced&resolution=--->`_

End-of-life
===========

* odl-ovsdb-openstack: the feature was replaced with odl-netvirt-openstack

Standards
=========

N/A

Release Mechanics
=================

* `Release Plan <https://wiki.opendaylight.org/view/NetVirt:Carbon:Release_Plan>`_
* Project was on schedule
