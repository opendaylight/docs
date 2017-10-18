===========
PacketCable
===========

Major Features
==============

odl-packetcable-policy-server
-----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=packetcable.git;a=blob;f=features-packetcable-policy/features-packetcable-policy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** Plugin that provides PCMM model implementation based
  on CMTS structure and COPS protocol and provides the implementation of
  `RFC 2748 <https://tools.ietf.org/html/rfc2748>`_.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-csit-1node-pcmm-all-carbon/

Documentation
=============

* **User Guide(s):**

  * :ref:`packetcable-user-guide`

* **Developer Guide(s):**

  * :ref:`packetcable-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF? No.

* The PacketCable project talks to southbound devices using the COPS protocol.
  Securing this communication is outslide the scope of this project.


Quality Assurance
=================

* `Link to Sonar Report <https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-sonar>`_ ( Test coverage percent - 53.21% )
* Link to CSIT Jobs:

  * https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-csit-1node-pcmm-only-carbon
  * https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-csit-1node-pcmm-all-carbon

* Other manual testing and QA information - While the CSIT jobs run the
  PacketCable plugin against a simple "emulated" instance of a CMTS network
  device, the code is frequently tested during the development cycle against
  actual CMTS devices.
* Testing methodology. There is substantial unit testing associated with the
  project build process and CSIT testing is executed against an "emulated" CMTS
  device.  All product APIs are validated during the development cycle but CSIT
  testing has not been upgraded to cover some of the most recent feature
  additions that are incorporated in the Carbon release.

Migration
---------

* Is it possible to migrate from the previous release?  Yes
* Migration from PacketCable Boron version to Carbon version can be
  accomplished by replacement of the PacketCable plugin components.

  * Any data stored in COPS models will need to be manually copied over.

* All previous API calls will work with the new release.

Compatibility
-------------

* Is this release compatible with the previous release?  Yes
* Any API changes?  No
* Any configuration changes?  No

Bugs Fixed
----------

* List of Bugzilla bugs fixed since the previous release
* `6302 <https://bugs.opendaylight.org/show_bug.cgi?id=6302>`_
* `6762 <https://bugs.opendaylight.org/show_bug.cgi?id=6762>`_
* `6763 <https://bugs.opendaylight.org/show_bug.cgi?id=6763>`_
* `7108 <https://bugs.opendaylight.org/show_bug.cgi?id=7108>`_
* `7109 <https://bugs.opendaylight.org/show_bug.cgi?id=7109>`_
* `7110 <https://bugs.opendaylight.org/show_bug.cgi?id=7110>`_
* `7111 <https://bugs.opendaylight.org/show_bug.cgi?id=7111>`_
* `7112 <https://bugs.opendaylight.org/show_bug.cgi?id=7112>`_
* `7113 <https://bugs.opendaylight.org/show_bug.cgi?id=7113>`_
* `7114 <https://bugs.opendaylight.org/show_bug.cgi?id=7114>`_
* `7115 <https://bugs.opendaylight.org/show_bug.cgi?id=7115>`_
* `7636 <https://bugs.opendaylight.org/show_bug.cgi?id=7636>`_

Known Issues
------------

* There are no known issues with the Carbon release of PacketCable

End-of-life
===========

* No PacketCable features or APIs are EOLed, deprecated, or removed in this
  release

Standards
=========

* CableLabs "PacketCable 1.5 Specification: MTA Device Provisioning"
  PKT-SP-PROV1.5-I04-090624
  The Packetcable plug-in implements a subset of the provisioning operations
  defined in this specification.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/PacketCablePCMM:Release_Plan_Carbon>`_
* There were no major shifts in release schedule from the release plan
