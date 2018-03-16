===========
PacketCable
===========

Major Features
==============

odl-packetcable-policy-server
-----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=packetcable.git;a=blob;f=features-packetcable-policy/features4-packetcable-policy/pom.xml;h=0945b9287711a1ce9a7bd6cc0b457607a3cd6248;hb=refs/heads/stable/nitrogen
* **Feature Description:** Plugin that provides a PCMM model implementation
  based on CMTS structure and COPS protocol.  It implements
  `RFC 2748 <https://tools.ietf.org/html/rfc2748>`.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-csit-1node-pcmm-all-oxygen/

Documentation
=============

* **User Guide(s):**

  * :doc:`Packetcable User Guide <../../user-guide/packetcable-user-guide>`

* **Developer Guide(s):**

  * :doc:`Packetcable Developer Guide <../../user-guide/packetcable-user-guide>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF? No.

* The PacketCable project interfaces to southbound devices using the
  COPS protocol.  Securing communication on this interface is outslide
  the scope of this project.


Quality Assurance
=================

* `Link to Sonar Report <https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-sonar>`_ ( Test coverage percent - 53.39% )

* Link to CSIT Job:
* https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-csit-1node-pcmm-all-oxygen/

* Other manual testing and QA information - The CSIT job runs the
  PacketCable plugin in a simple cable access controller emulation
  environment. The code is manually tested during the development
  cycle with an actual (controller).

* Testing methodology. There is substantial unit testing executed in
  the project build process; CSIT testing is executed in an "emulated"
  cable access network environment.  All product APIs are validated
  during the development cycle.  CSIT testing would benefit from an
  upgrade to cover some of the post-Carbon feature additions.

Migration
---------

* Is it possible to migrate from the previous release?  Yes
  Migration from PacketCable Nitrogen version to the Oxygen version is
  accomplished by replacement of the PacketCable plugin components.

* Any data stored in COPS models will need to be manually replicated.

* All previous API calls will work with the new release.

Compatibility
-------------

* Is this release compatible with the previous release?  Yes
* Any API changes?  No
* Any configuration changes?  No

Bugs Fixed
----------

* List of bugs fixed since the previous release
  NONE
* The only change for the Oxygen release of Packetcable
  is the upgrade in odlparent version from 2.0.5 to 3.0.2.

 Known Issues
-------------

* There are no known issues with the Oxygen release of PacketCable

End-of-life
===========

* No PacketCable features or APIs are EOLed, deprecated, or removed
  in this release

Standards
=========

* The Packetcable plug-in implements a subset of the provisioning operations
  defined in these specifications.

* CableLabs "PacketCable 1.5 Specification: MTA Device Provisioning"
  PKT-SP-PROV1.5-I04-090624

* COPS protocol
  RFC 2748 <https://tools.ietf.org/html/rfc2748>

Release Mechanics
=================

* Link to Packetcable Oxygen release plan:
  <https://wiki.opendaylight.org/view/PacketCablePCMM:Release_Plan_Oxygen>
* There were no major shifts in release schedule from the release plan
