====
Dlux
====

Major Features
==============

odl-dlux-core
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dlux.git;a=blob;f=features/odl-dlux-core/pom.xml;h=8226826118c376b79924327acc656945938fcb14;hb=refs/heads/stable/oxygen
* **Feature Description:**  Core DLUX functionality
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

Documentation
=============

* **Developer Guide(s):**

  * `Dlux Getting Started <https://wiki.opendaylight.org/view/OpenDaylight_dlux:Getting_started>`_

Security Considerations
=======================

* There are no security issues found.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=72613>`_
* GUI is tested mostly manually, CSITs are on the way.

Migration
---------

* All applications are moved from Dlux project to DluxApps. Only odl-dlux-core feature remains.

Compatibility
-------------

* Release is compatible with previous.

Bugs Fixed
----------

https://jira.opendaylight.org/browse/DLUX-115?jql=project%20%3D%20DLUX%20AND%20resolution%20in%20(Done)

Known Issues
------------

* `Link to Open Bugs <https://jira.opendaylight.org/projects/DLUX/issues/DLUX-67?filter=allopenissues>`_

End-of-life
===========

* N/A

Standards
=========

* List of standards implemented and to what extent

  * N/A

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OpenDaylight_dlux:Oxygen_Release_Plan>`_
