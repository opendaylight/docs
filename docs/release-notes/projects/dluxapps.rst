========
DluxApps
========

Major Features
==============

odl-dluxapps-nodes
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/odl-dluxapps-nodes/pom.xml;h=6537095c40efaa4edc62ef8da13c029420e0198b;hb=refs/heads/stable/oxygen
* **Feature Description:**  Application displays list of nodes in openflow (flow:1) topology.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-dluxapps-topology
---------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/odl-dluxapps-topology/pom.xml;h=bbdb1350db72a6db6bd112cbc5e413b8a428788d;hb=refs/heads/stable/oxygen
* **Feature Description:**  Basic topology application. Displays nodes and links from openflow (flow:1) topology.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-dluxapps-yangman
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/odl-dluxapps-yangman/pom.xml;h=c7ed37b942fb9b66feccafec6834c555568f0e30;hb=refs/heads/stable/oxygen
* **Feature Description:**  GUI for data manipulation in controller. Generates forms based on loaded Yang models.
  User can interact with controller without knowledge of Yang models, test them, etc. Replacement of YangUI app.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/dluxapps/job/dluxapps-csit-1node-yangman-all-oxygen/

odl-dluxapps-yangui
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/odl-dluxapps-yangui/pom.xml;h=8a94f323a4590a64aeb8ded162cd539fbc328b9e;hb=refs/heads/stable/oxygen
* **Feature Description:**  Previous version of YangUI. Will be removed in next release.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-dluxapps-yangvisualizer
---------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/odl-dluxapps-yangvisualizer/pom.xml;h=0697a5427261df4a391a70908a794ac3a9614bcd;hb=refs/heads/stable/oxygen
* **Feature Description:**  Topology-like visualization of Yang models loaded in controller.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

Documentation
=============

* **Developer Guide(s):**

  * `DluxApps Developer Guide <https://wiki.opendaylight.org/view/DluxApps:DeveloperGuide>`_

Security Considerations
=======================

* There are no security issues found.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=72613>`_
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/dluxapps/search/?q=dluxapps-csit>`_
* GUI is tested mostly manually, CSITs are on the way.

Migration
---------

* All applications are moved from Dlux project to DluxApps. Also feature names
  changed, so instead odl-dlux-\* use odl-dluxapps-\*. Everything else works same.

Compatibility
-------------

* Release is compatible with previous.
* API changes are in feature names - odl-dlux-\* changes to odl-dluxapps-\*

Bugs Fixed
----------

https://jira.opendaylight.org/browse/DLUXAPPS-29?jql=project%20%3D%20DLUXAPPS%20AND%20resolution%20in%20(Done)

Known Issues
------------

* `Link to Open Bugs <https://jira.opendaylight.org/projects/DLUXAPPS/issues/DLUXAPPS-25?filter=allopenissues>`_

End-of-life
===========

* odl-dluxapps-yangui - deprecated

Standards
=========

* List of standrads implemented and to what extent

  * N/A

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/DluxApps:Oxygen_Release_Plan>`_
* Yang UI not removed
