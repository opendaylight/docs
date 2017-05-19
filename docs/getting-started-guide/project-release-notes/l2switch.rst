=============================================
L2Switch
=============================================

odl-l2switch-release
----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=l2switch.git
* **Feature Description:** OpenDaylight :: L2switch :: Application
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-switch-all-carbon/
https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-integration-carbon/
https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-merge-carbon/
https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-sonar/
https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-validate-autorelease-carbon/
https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-clm-carbon/
https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-periodic-host-scalability-daily-only-carbon/
https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-scalability-all-carbon/
https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-scalability-only-carbon/
https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-switch-all-carbon/
https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-csit-1node-switch-only-carbon/
https://jenkins.opendaylight.org/releng/view/l2switch/job/l2switch-distribution-check-carbon/

Documentation
=============

* **User Guide(s):**

  * :ref:`L2switch User Guide <l2switch-user-guide>`

* **Developer Guide(s):**

  * :ref:`L2switch Developer Guide <l2switch-developer-guide>`

Security Considerations
=======================

The customized interfaces use port 8080 and are NOT protected by the AAA
project.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=50636>`_ 22.0%
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/l2switch/>`_
* The tests are using the OpenDaylight CSIT infrastructure.

  * How extensive was it? Extensive, covers functionality, scalability tests.
  * What should be expected to work? The core modules like Address tracker, Packet handler,
    Host tracker, loop removal, simple mininet ping.
  * What has not be tested as much? Basic scalablity tests exists today, extensive scalability
    could be performed.

Migration
---------

Migration with data from Boron to Carbon is supported.

Compatiblity
------------

This release is compatible with the previous release.

Since l2switch is migrating services to Blueprint, services depending on l2switch
may also need to migrate to Blueprint instead of using CONFIG subsystem.

Bugs Fixed
----------

No bug is fixed in this release.

Known Issues
------------

* `Bug 6654 <https://bugs.opendaylight.org/show_bug.cgi?id=6654>`_

l2switch does not work well when mininet is stopped/started with no delay.

End-of-life
===========
No Changes

Standards
=========
* Packet Handler
	Decodes the packets coming to the controller and dispatches them appropriately
* Loop Remover
	Removes loops in the network
* Arp Handler
	Handles the decoded ARP packets
* Address Tracker
	Learns the Addresses (MAC and IP) of entities in the network
* Host Tracker
	Tracks the locations of hosts in the network
* L2Switch Main
	Installs flows on each switch based on network traffic

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/L2_Switch:Carbon_Release_Plan>`_
*  No major changes.
