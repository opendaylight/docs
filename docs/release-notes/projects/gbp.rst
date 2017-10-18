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

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** Feature can be added to the base to enable a Network Virtualization behavior using OpenFlow
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-3-node-only-carbon/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-6node-only-carbon/

odl-groupbasedpolicy-ovssfc
---------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** Feature can be added to the base to enable a Network Virtualization behavior using OpenFlow that integrates with the SFC project
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-3-node-only-carbon/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-6node-only-carbon/

odl-groupbasedpolicy-faas
-------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This renderer maps GBP service model to the common abstraction logical network models of the Fabric As A Service (FAAS). In turns, FAAS maps those abstraction models to the physical networks.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-iovisor
----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This renderer maps GBP service model to agents of the IOVisor Linux Foundation project
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-netconf
----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This renderer maps GBP service model to NETCONF based network elements
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-neutronmapper
----------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This renderer maps Neutron northbound configuration to GBP service model
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-openstack-liberty-openstack-carbon/

odl-groupbasedpolicy-neutron-and-ofoverlay
------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Neutron and OpenFlow Overlay
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-3-node-only-carbon/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-6node-only-carbon/
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-openstack-liberty-openstack-carbon/

odl-groupbasedpolicy-vpp
------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This renderer maps GBP service model to VPP devices
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-neutron-vpp-mapper
---------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Neutron Northbound services for VPP renderer
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-openstack-liberty-openstack-carbon/

odl-groupbasedpolicy-ui
-----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Groupbasedpolicy User Interface
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-ip-sgt-distribution-service
------------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  SXP Distribution Service
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-ios-xe
---------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  This renderer maps GBP service model to IOS-XE devices
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-sxp-ep-provider
------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  SXP integration: Endpoint provider
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-groupbasedpolicy-sxp-ise-adapter
------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=groupbasedpolicy.git;a=blob;f=features/features-groupedpolicy/src/main/features/features.xml;hb=refs/heads/stable/carbon
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

`Sonar report (67%) <https://sonar.opendaylight.org/overview?id=51201>`_

Groupbasedpolicy CSIT:

* https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-3-node-all-carbon/
* https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-6node-all-carbon/
* https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-1node-openstack-liberty-openstack-carbon/
* https://jenkins.opendaylight.org/releng/view/groupbasedpolicy/job/groupbasedpolicy-csit-3node-clustering-all-carbon/

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

  Yes

  https://git.opendaylight.org/gerrit/#/c/49041/ - Minor updates in names and descriptions for VPP renderer and adapter model to make it more readable.

  https://git.opendaylight.org/gerrit/#/c/49190/ - Replacing InstanceIdentifier in VPP renderer model with NodeId.


* Any configuration changes?

  N/A

Bugs Fixed
----------

* `Fixed Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=RESOLVED&chfield=[Bug%20creation]&chfieldfrom=2016-09-21&chfieldto=2017-05-25&list_id=78798&product=groupbasedpolicy&query_format=advanced&resolution=FIXED>`_

Known Issues
------------

* List key known issues with workarounds

  N/A

* `Open Bugs <bugs.opendaylight.org/buglist.cgi?bug_status=CONFIRMED&bug_status=OPEN&bug_status=IN_PROGRESS&chfield=[Bug creation]&chfieldfrom=2016-09-21&chfieldto=2017-05-25&list_id=78797&product=groupbasedpolicy&query_format=advanced&resolution=--->`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  N/A

Standards
=========

* List of standrads implemented and to what extent

  N/A

Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/Group_Based_Policy_(GBP)/Releases/Carbon/Release_plan>`_

* Describe any major shifts in release schedule from the release plan

  N/A