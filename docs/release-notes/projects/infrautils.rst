==========
Infrautils
==========

Major Features
==============

odl-infrautils-all
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-all/pom.xml;hb=stable/oxygen
* **Feature Description:**  This feature exposes all infrautils framework features
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** covered by Netvirt and Genius CSITs
  * https://jenkins.opendaylight.org/releng/view/netvirt/job/netvirt-csit-1node-openstack-queens-upstream-stateful-oxygen/
  * https://jenkins.opendaylight.org/releng/view/genius/job/genius-csit-1node-gate-all-oxygen/

.. note that this is experimental until the system test waiver is granted
.. on this thread:
.. https://lists.opendaylight.org/pipermail/infrautils-dev/2017-May/000322.html

odl-infrautils-jobcoordinator
-----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-jobcoordinator/pom.xml;hb=stable/oxygen
* **Feature Description:**  This feature exposes the jobcoordinator framework which is heavily used in genius and netvirt.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** covered by Netvirt and Genius CSITs

odl-infrautils-metrics
----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-metrics/pom.xml;hb=stable/oxygen
* **Feature Description:**  This feature exposes the new infrautils.metrics API with labels and first implementation based on Dropwizard incl. thread watcher
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** covered by Netvirt and Genius CSITs

odl-infrautils-ready
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-ready/pom.xml;hb=stable/oxygen
* **Feature Description:**  This feature exposes the system readiness framework
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** covered by Netvirt and Genius CSITs

odl-infrautils-caches
---------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-caches/pom.xml;hb=stable/oxygen
* **Feature Description:**  This feature exposes new infrautils.caches API, CLI commands for monitoring, and first implementation based on Guava
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** covered by Netvirt and Genius CSITs

odl-infrautils-diagstatus
-------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=blob;f=common/features/odl-infrautils-diagstatus/pom.xml;hb=stable/oxygen
* **Feature Description:**  This feature exposes the status and diagnostics framework
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** covered by Netvirt and Genius CSITs



Documentation
=============

* **User Guide(s):**

  * :doc:`User Guide </submodules/infrautils/docs/specs/index>`

* **Developer Guide(s):**

  * :doc:`Developer Guide </submodules/infrautils/docs/index>`

Security Considerations
=======================

* JMX RMI Registry opens on port listed at https://wiki.opendaylight.org/view/Ports

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.infrautils%3Ainfrautils>`_
* Project infrautils provides low-level technical framework utilities
  and therefore no CSIT automated system testing is available. However
  the same gets covered by the CSIT of users of infrautils (eg : Genius, Netvirt)

Migration
---------

* No additional migration steps needed

Compatibility
-------------

* Is this release compatible with the previous release?

  * Functionality is fully backwards compatible.

* Any API changes?

  * New APIs added for diagstatus
  * New APIs added for metrics
  * New APIs added for caches

* Any configuration changes?

  * No

Bugs Fixed
----------

* `List of bugs fixed since the previous release: <https://jira.opendaylight.org/browse/INFRAUTILS-29?jql=project%20%3D%20INFRAUTILS%20AND%20created%20%3E%3D%202017-10-07%20AND%20created%20%3C%3D%202018-03-08>`_

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

* `Link to release plan <https://wiki.opendaylight.org/view/InfraUtils:Oxygen:Release_Plan>`_
