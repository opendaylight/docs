========
ODL SDNi
========

Major Features
==============

odl-sdninterfaceapp-all
-----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=sdninterfaceapp.git;a=blob;f=features/features-sdninterfaceapp/src/main/features/features.xml;hb=stable/carbon
* **Feature Description:** This feature installs the odl-sdni application which
  connects with switch, topology, hosttracker managers of controller, fetches
  the topology and QoS data and exchanges the same to the peer controllers.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/sdninterfaceapp/

Documentation
=============

* **User Guide(s):**

  * :ref:`sdni-user-guide`

* **Developer Guide(s):**

  * :ref:`sdni-dev-guide`


Security Considerations
=======================

ODL SDNi uses BGP to exchange information and leaves securing the BGP
connections and any implications of (not) doing so out of scope.

There are no other known security issues.

Quality Assurance
=================

* 8 APIs, tested via REST API

  Topology:

  * Self Topology:1 API
  * Peer Topology:1 API

  QoS:

  * Self Qos :1 API
  * Peer Qos :1 API

  Peer Controller configuration:

  * 4 APIs(Addition, deletion, fetching the configured controllers etc)

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=57255>`_ (11.9 %)

* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/sdninterfaceapp/>`_


Migration
---------

* Is is possible migrate from the previous release? If so, how?
  No, current release is backward incompatible.


Compatiblity
------------

* Is this release compatible with the previous release?
  No

* Any API changes?
  Yes, four new REST APIs are added for peer controller configuration are added in this release.

* Any configuration changes?
  No


Bugs Fixed
----------

* `Bug 6202 <https://bugs.opendaylight.org/show_bug.cgi?id=6202>`_
  Refactored sdninterfaceapp and removed the copies of bgpcep artifacts.


Known Issues
------------

* N/A


End-of-life
===========

* N/A


Standards
=========

* The ODL SDNi project leverages BGP to exchange state.

Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/ODL-SDNi_App:Carbon_Release_Plan>`_
* Bug 6202 which was targeted for M3 is resolved in M5
