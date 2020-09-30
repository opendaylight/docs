=======
NetVirt
=======

Overview
========

Developed on OpenDaylight, the NetVirt (Network Virtualization)
application consists of modular sub-services, including
network protocols L2, L3, ACL, NAT, DHCP, QOS, IPv6 control, etc.

Behavior/Feature Changes
========================

No behaviour change in this release.

New Features
============

* **Feature Name:** No new or modified features in this release.
* **Feature URL:** `odl-netvirt-openstack <https://git.opendaylight.org/gerrit/gitweb?p=netvirt.git;a=blob;f=features/odl-netvirt-openstack/pom.xml;hb=HEAD>`_
* **Feature Description:** NetVirt is a network virtualization solution that includes the following components:

  * Open vSwitch-based virtualization for software switches.
  * Hardware VTEP for hardware switches.
  * Service function chaining support within a virtualized environment.
  * Support for OVS and DPDK-accelerated.
  * OVS datapaths, L3VPN (BGPVPN), EVPN, ELAN, distributed L2 and L3, NAT and Floating IPs, IPv6, Security Groups,
    MAC and IP learning.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `NetVirt CSIT <https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-0cmb-1ctl-2cmp-openstack-rocky-upstream-stateful-aluminium/>`_

Deprecated Features
===================

No features has been deprecated in this release.

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - Netvirt L3VPN Improvements
     - Create l3vpn & asso with ext-nw failed
	 
   * - Netvirt Improvements
     - Remove unneeded osgi-core dependencies
	 
   * - Netvirt Improvements
     - Migrate JdkFutures users	 

Known Issues
============

There are no known issues in this release.
