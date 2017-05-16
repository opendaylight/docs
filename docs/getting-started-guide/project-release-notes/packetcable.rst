
============
Project Name
============

Packetcable


Major Features
==============

For each top-level feature, identify the name, url, description, etc.
User-facing features are used directly by end users.

Feature Name
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=packetcable.git;a=blob;f=features-packetcable-policy/features-packetcable-policy/src/main/features/features.xml 
* **Feature Description:** Plugin that provides PCMM model implementation based on CMTS structure and COPS protocol.  
  sample tasks and provides the implementation of RFC 0000.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-csit-1node-pcmm-all-carbon/ 

Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If the
document is under review, provide a link to the change in Gerrit.

* **Installation Guide(s):**

  * There is no separate Installation Guide for Packetcable 

* **User Guide(s):**

  * `Packetcable User Guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/packetcable-user-guide.rst>`

* **Developer Guide(s):**

  * `Packetcable Developer Guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/packetcable-developer-guide.rst>`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?   No.


Quality Assurance
=================

* `Link to Sonar Report <https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-sonar>`_ ( Test coverage percent - 53.21% )
* Link to CSIT Jobs: 
*      <https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-csit-1node-pcmm-only-carbon>
*      <https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-csit-1node-pcmm-all-carbon>
* Other manual testing and QA information - While the CSIT jobs run the Packetcable plugin against a simple "emulated" instance of a CMTS network device, the code is frequently tested during the development cycle against actual CMTS devices.
* Testing methodology. There is substantial unit testing associated with the project build process and CSIT testing is executed against an "emulated" CMTS device.  All product APIs are validated during the development cycle but CSIT testing has not been upgraded to cover some of the most recent feature additions that are incorporated in the Carbon release.  

Migration
---------

* Is is possible migrate from the previous release?  Yes
*    Migration from PacketCable Boron version to Carbon version can be
*    accomplished by replacement of the PacketCable plugin components.  
*    All previous API calls will work with the new release.

Compatiblity
------------

* Is this release compatible with the previous release?  Yes
* Any API changes?  No
* Any configuraiton changes?  No

Bugs Fixed
----------

* List of Bugzilla bugs fixed since the previous release
* 6302
* 6762
* 6763
* 7108 
* 7109 
* 7110 
* 7111 
* 7112 
* 7113 
* 7114 
* 7115 
* 7636 

Known Issues
------------

* There are no known issues with the Carbon release of Packetcable

End-of-life
===========

* No Packetcable features or APIs are EOLed, deprecated, or removed in this
  release

Standards
=========

* CableLabs "PacketCable 1.5 Specification: MTA Device Provisioning"
  PKT-SP-PROV1.5-I04-090624
  The Packetcable plug-in implements a subset of the provisioning operations defined in this specification. 

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/PacketCablePCMM:Release_Plan_Carbon>`
* There were no major shifts in release schedule from the release plan

