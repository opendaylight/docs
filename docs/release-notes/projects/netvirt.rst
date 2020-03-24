============
Netvirt
============

Overview
========

NetVirt is a Network Virtualization application developed 
on OpenDaylight consisting of modular sub-services 
such as L2, L3, ACL, NAT, DHCP, IPv6 control, and more.

Behavior Changes
================

This release introduces the following behavior changes:

* ODL Karaf distribution requires Java 11-compliant JVM (Java Virtual Machine).

New and Modified Features
=========================

* **Feature Name:** odl-netvirt-openstack
* **Feature URL:** `odl-netvirt-openstack <https://git.opendaylight.org/gerrit/gitweb?p=netvirt.git;a=blob;f=features/odl-netvirt-openstack/pom.xml;hb=HEAD>`_
* **Feature Description:** NetVirt is a network virtualization solution that includes the following components:

  * Open vSwitch based virtualization for software switches.
  * Hardware VTEP for hardware switches.
  * Service Function Chaining support within a virtualized environment.
  * Support for OVS and DPDK-accelerated.
  * OVS data paths, L3VPN (BGPVPN), EVPN, ELAN, distributed L2 and L3, NAT and Floating IPs, IPv6, Security Groups,
    MAC and IP learning.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `NetVirt CSIT <https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-0cmb-1ctl-2cmp-openstack-queens-upstream-stateful-magnesium//>`_


Deprecated Features
===================

This releases removed the following features:

* COE project features
* SFC project features

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - NETVIRT-1651
     - NetVirt patch test failing due to SFC distro check

   * - NETVIRT-1662
     - Unable to create SNAT table entry for floating IP
	 
   * - NETVIRT-1637
     - L3VPN CSIT failure post MRI actviity
	 
   * - NETVIRT-1510
     - Get rid of 'synchronized (String.intern())'
	 
   * - NETVIRT-1641
     - neutronvpn:networkMaps update failed when add the second subnet under network
	 
   * - NETVIRT-1406
     - Few datastores and dump-groups not removed.
	 
   * - NETVIRT-1470
     - VMs dint get ipv6 address via SLAAC after VM evacuation
	 
   * - NETVIRT-1109
     - VPN OperDS entry still not updated, if neutron port was deleted
	 
   * - NETVIRT-1667
     - VNF route did not appear in fib/flows due to interface manager did not update the parentref
 
   * - NETVIRT-1665
     - Exception from NAT service on release the ID from IDManager
	 
   * - NETVIRT-1028
     - Fix unrelated types for equals in HwvtepPhysicalSwitchListener
	 
   * - NETVIRT-1620
     - Update qos for port failed
 

Known Issues
============

No Known issues in this release.