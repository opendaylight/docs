========
DluxApps
========

Major Features
==============

odl-dluxapps-nodes
------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/odl-dluxapps-nodes/pom.xml;h=672a6a317ccfe4b51c8fddd25e3e285b3018581e;hb=3eedd3072f269d652d0ddb664a0b8bf20cf81e6e
* **Feature Description:**  Application displays list of nodes in openflow (flow:1) topology.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-dluxapps-topology
---------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/odl-dluxapps-topology/pom.xml;h=5796edc2869cc2cf98b92b7c7bc4813848659bf7;hb=3eedd3072f269d652d0ddb664a0b8bf20cf81e6e
* **Feature Description:**  Basic topology application. Displays nodes and links from openflow (flow:1) topology.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-dluxapps-yangman
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/odl-dluxapps-yangman/pom.xml;h=2a743ba9667bf60d144a8cb527a41f5323cd5a29;hb=3eedd3072f269d652d0ddb664a0b8bf20cf81e6e
* **Feature Description:**  GUI for data manipulation in controller. Generates forms based on loaded Yang models.
  User can interact with controller without knowledge of Yang models, test them, etc. Replacement of YangUI app.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/dluxapps/job/dluxapps-csit-1node-yangman-only-carbon/

odl-dluxapps-yangui
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/odl-dluxapps-yangui/pom.xml;h=fe56512415f35f145cdd7925812533466182399c;hb=3eedd3072f269d652d0ddb664a0b8bf20cf81e6e
* **Feature Description:**  Previous version of YangUI. Will be removed in next release.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-dluxapps-yangvisualizer
---------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=dluxapps.git;a=blob;f=features/odl-dluxapps-yangvisualizer/pom.xml;h=daf31e33454403f8d8f5cc8c3bce4a3938cc4a35;hb=3eedd3072f269d652d0ddb664a0b8bf20cf81e6e
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

* `Link to release plan <https://wiki.opendaylight.org/view/DluxApps:Nitrogen_Release_Plan>`_
* UT coverage is not increased
* Yang Visualized refactor and redesign is not started
