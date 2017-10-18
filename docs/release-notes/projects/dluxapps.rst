========
DluxApps
========

Major Features
==============

For each top-level feature, identify the name, url, description, etc.
User-facing features are used directly by end users.

odl-dluxapps-nodes
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/src/main/features/features.xml;hb=621a9e576e15233177a20f89f83b3992999b9423
* **Feature Description:**  Application displays list of nodes in openflow (flow:1) topology.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-dluxapps-topology
---------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/src/main/features/features.xml;hb=621a9e576e15233177a20f89f83b3992999b9423
* **Feature Description:**  Basic topology application. Displays nodes and links from openflow (flow:1) topology.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-dluxapps-yangman
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/src/main/features/features.xml;hb=621a9e576e15233177a20f89f83b3992999b9423
* **Feature Description:**  GUI for data manipulation in controller. Generates forms based on loaded Yang models.
  User can interact with controller without knowledge of Yang models, test them, etc. Replacement of YangUI app.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/dluxapps/job/dluxapps-csit-1node-yangman-only-carbon/

odl-dluxapps-yangui
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/src/main/features/features.xml;hb=621a9e576e15233177a20f89f83b3992999b9423
* **Feature Description:**  Previous version of YangUI. Will be removed in next release.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-dluxapps-yangvisualizer
---------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/src/main/features/features.xml;hb=621a9e576e15233177a20f89f83b3992999b9423
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

https://bugs.opendaylight.org/buglist.cgi?bug_status=__closed__&content=&no_redirect=1&order=Importance&product=dluxapps&query_format=specific

Known Issues
------------

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=__open__&content=&no_redirect=1&order=Importance&product=dluxapps&query_format=specific>`_

End-of-life
===========

* odl-dluxapps-yangui - deprecated

Standards
=========

* List of standrads implemented and to what extent

  * N/A

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/DluxApps:Carbon_Release_Plan>`_
* UT coverage is not increased
* Yang Visualized refactor and redesign is not started
