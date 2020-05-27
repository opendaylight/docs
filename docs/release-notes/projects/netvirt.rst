============
Netvirt
============

Overview
========

Developed on OpenDaylight, the NetVirt (Network Virtualization)
application consists of modular sub-services, including
network protocols L2, L3, ACL, NAT, DHCP, IPv6 control, etc.

Behavior Changes
================

There are no behavior changes in this release.

New and Modified Features
=========================

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
* **CSIT Test:** `NetVirt CSIT <https://jenkins.opendaylight.org/releng/view/netvirt-csit/job/netvirt-csit-1node-0cmb-1ctl-2cmp-openstack-queens-upstream-stateful-magnesium//>`_


Deprecated Features
===================

This release removed the following features:

* COE (Container Orchestration Engine) project features
* SFC (Service Function Chaining) project features

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - `NETVIRT-1651 <https://jira.opendaylight.org/browse/NETVIRT-1651>`_
     - NetVirt patch test failing due to SFC distro check

   * - `NETVIRT-1662 <https://jira.opendaylight.org/browse/NETVIRT-1662>`_
     - Unable to create SNAT table entry for floating IP

   * - `NETVIRT-1637 <https://jira.opendaylight.org/browse/NETVIRT-1637>`_
     - L3VPN CSIT failure post MRI activity

   * - `NETVIRT-1510 <https://jira.opendaylight.org/browse/NETVIRT-1510>`_
     - Get rid of 'synchronized (String.intern())'

   * - `NETVIRT-1641 <https://jira.opendaylight.org/browse/NETVIRT-1641>`_
     - neutronvpn:networkMaps update failed when add the second subnet under network

   * - `NETVIRT-1406 <https://jira.opendaylight.org/browse/NETVIRT-1406>`_
     - Few datastores and dump-groups not removed

   * - `NETVIRT-1470 <https://jira.opendaylight.org/browse/NETVIRT-1470>`_
     - VMs did not get ipv6 address via SLAAC after VM evacuation

   * - `NETVIRT-1109 <https://jira.opendaylight.org/browse/NETVIRT-1109>`_
     - VPN OperDS entry still not updated, if neutron port was deleted

   * - `NETVIRT-1667 <https://jira.opendaylight.org/browse/NETVIRT-1667>`_
     - VNF route did not appear in fib/flows due to interface manager did not update the parentref

   * - `NETVIRT-1665 <https://jira.opendaylight.org/browse/NETVIRT-1665>`_
     - Exception from NAT service on release the ID from IDManager

   * - `NETVIRT-1028 <https://jira.opendaylight.org/browse/NETVIRT-1028>`_
     - Fix unrelated types for equals in HwvtepPhysicalSwitchListener

   * - `NETVIRT-1620 <https://jira.opendaylight.org/browse/NETVIRT-1620>`_
     - Update QOS for port failed

Known Issues
============

There are no known issues in this release.
