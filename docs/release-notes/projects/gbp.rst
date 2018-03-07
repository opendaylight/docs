======================
Groupbasedpolicy (GBP)
======================

Major Features
==============

* GBP UI - Groupbasedpoilicy User Interface
* Neutron Provider - maps neutron configuration to GBP service model
* FaaS Renderer - maps GBP service model to the common abstraction logical network models of the Fabric As A Service
* IOS-XE Renderer - maps GBP service model to IOS-XE based devices
* IOvisor Renderer - maps GBP service model to agents of the IOVisor Linux Foundation project
* Netconf Renderer - maps GBP service model to NETCONF based network elements
* OpenFlow Overlay Renderer - enable network virtualization behavior using OpenFlow
* SXP Distribution Service - enables SGT Exchange Protocol
* VPP Renderer - enable network virtualization behavior for VPP devices

odl-groupbasedpolicy-ofoverlay
------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/odl-groupbasedpolicy-ofoverlay/src/main/feature/features.xml;h=cd8aa7f1c4a08cc4d197135674d29806f71a886e;hb=refs/heads/stable/oxygen
* **Feature Description:** Feature can be added to the base to enable a Network Virtualization behavior using OpenFlow
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-3-node-all-oxygen/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-6node-all-oxygen/

odl-groupbasedpolicy-iovisor
----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/odl-groupbasedpolicy-iovisor/src/main/feature/features.xml;h=9c3df4b13a08a90d6e9fb0d32adc1eea7520d4af;hb=refs/heads/stable/oxygen
* **Feature Description:**  This renderer maps GBP service model to agents of the IOVisor Linux Foundation project
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A


odl-groupbasedpolicy-neutronmapper
----------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/odl-groupbasedpolicy-neutronmapper/src/main/feature/features.xml;h=072eb849b39c4399863241818495ad460fb41663;hb=refs/heads/stable/oxygen
* **Feature Description:**  This renderer maps Neutron northbound configuration to GBP service model
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-neutron-and-ofoverlay
------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/odl-groupbasedpolicy-neutron-and-ofoverlay/src/main/feature/features.xml;h=57c0b759454d00aa97a18e82b31168b37b74908d;hb=refs/heads/stable/oxygen
* **Feature Description:**  Neutron and OpenFlow Overlay
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-3-node-all-oxygen/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-6node-all-oxygen/

odl-groupbasedpolicy-vpp
------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/odl-groupbasedpolicy-vpp/src/main/feature/features.xml;h=05c6a72e95aa9f51c98f466da77569ffc4d9d012;hb=refs/heads/stable/oxygen
* **Feature Description:**  This renderer maps GBP service model to VPP devices
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-neutron-vpp-mapper
---------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/odl-groupbasedpolicy-neutron-vpp-mapper/src/main/feature/features.xml;h=394dd02b54093f4c8767889c3935cb1c4a18c45a;hb=refs/heads/stable/oxygen
* **Feature Description:**  Neutron Northbound services for VPP renderer
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-ui
-----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=tree;f=features/odl-groupbasedpolicy-ui;h=af30b7c9fc6d20de755d071b2d2e3da556d7b4a5;hb=refs/heads/stable/oxygen
* **Feature Description:**  Groupbasedpolicy User Interface
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-ip-sgt-distribution-service
------------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/odl-groupbasedpolicy-ip-sgt-distribution-service/src/main/feature/features.xml;h=f421db3463d86751dde6a161466db309bc7e33a7;hb=refs/heads/stable/oxygen
* **Feature Description:**  SXP Distribution Service
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-ios-xe
---------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/odl-groupbasedpolicy-ios-xe/src/main/feature/features.xml;h=b2498a4da528d8f43da84778516ba0677a0fbafe;hb=refs/heads/stable/oxygen
* **Feature Description:**  This renderer maps GBP service model to IOS-XE devices
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-sxp-ep-provider
------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/odl-groupbasedpolicy-sxp-ep-provider/src/main/feature/features.xml;h=4b3aa65f93776134d75e7c76305ca23300043f98;hb=refs/heads/stable/oxygen
* **Feature Description:**  SXP integration: Endpoint provider
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-sxp-ise-adapter
------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/odl-groupbasedpolicy-sxp-ise-adapter/src/main/feature/features.xml;h=14559f62741cee2809f92c43a27eb517a5fbef79;hb=refs/heads/stable/oxygen
* **Feature Description:**  SXP integration: ISE adapter
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

Documentation
=============

* **Installation Guide(s):**

  * `Groupbasedpolicy Installation Guide <https://wiki.opendaylight.org/view/Group_Based_Policy_(GBP)/Installation_guide>`_

* **User Guide(s):**

  * :ref:`gbp-user-guide`

Security Considerations
=======================

* No other external interfaces than RESTCONF
* No known security issues

Quality Assurance
=================

`Sonar report (64.3%) <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.groupbasedpolicy%3Agroupbasedpolicy.project>`_

Groupbasedpolicy CSIT:

* https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-3-node-all-oxygen/
* https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-6node-all-oxygen/
* https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-3node-clustering-all-oxygen/

Other manual testing and QA information

* GBP devstack demo
* GBP-SFC demo
* VPP demo

Guides about how to run demo can be found on GBP wiki under `Demo <https://wiki.opendaylight.org/view/Group_Based_Policy_(GBP)/Consumability/Demo>`_

Migration
---------

Migration from previous releases is not supported.

Compatibility
-------------
* Is this release compatible with the previous release?

  Yes

* Any API changes?

  N/A


* Any configuration changes?

  N/A

Bugs Fixed
----------

* `Fixed Bugs <https://jira.opendaylight.org/issues/?jql=project%20%3D%20GBP%20AND%20issuetype%20%3D%20Bug%20AND%20status%20%3D%20Resolved%20AND%20created%20%3E%3D%202017-08-14%20AND%20created%20%3C%3D%202018-03-07>`_

Known Issues
------------

* List key known issues with workarounds

  N/A

* `Open Bugs <https://jira.opendaylight.org/browse/GBP-289?jql=project%20%3D%20GBP%20AND%20issuetype%20%3D%20Bug%20AND%20status%20%3D%20Open>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  N/A

Standards
=========

* List of standards implemented and to what extent

  N/A

Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/Group_Based_Policy_(GBP)/Releases/Oxygen/Release_plan>`_

* Describe any major shifts in release schedule from the release plan

  N/A
