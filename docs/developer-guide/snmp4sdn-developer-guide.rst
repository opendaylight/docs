.. _snmp4sdn-dev-guide:

SNMP4SDN Developer Guide
========================

Overview
--------

We propose a southbound plugin that can control the off-the-shelf
commodity Ethernet switches for the purpose of building SDN using
Ethernet switches. For Ethernet switches, forwarding table, VLAN table,
and ACL are where one can install flow configuration on, and this is
done via SNMP and CLI in the proposed plugin. In addition, some settings
required for Ethernet switches in SDN, e.g., disabling STP and flooding,
are proposed.

.. figure:: ./images/snmp4sdn_in_odl_architecture.jpg
   :alt: SNMP4SDN as an OpenDaylight southbound plugin

   SNMP4SDN as an OpenDaylight southbound plugin

Architecture
------------

The modules in the plugin are depicted as the following figure.

.. figure:: ./images/snmp4sdn_modules.jpg
   :alt: Modules in the SNMP4SDN Plugin

   Modules in the SNMP4SDN Plugin

-  AclService: add/remove ACL profile and rule on the switches.

-  FdbService: add/modify/remove FDB table entry on the switches.

-  VlanService: add/modify/remove VLAN table entry on the switches.

-  TopologyService: query and acquire the subnet topology.

-  InventoryService: acquire the switches and their ports.

-  DiscoveryService: probe and resolve the underlying switches as well
   as the port pairs connecting the switches. The probing is realized by
   SNMP queries. The updates from discovery will also be reflected to
   the TopologyService.

-  MiscConfigService: do kinds of settings on switches

   -  Supported STP and ARP settings such as enable/disable STP, get
      port’s STP state, get ARP table, set ARP entry, and others

-  VendorSpecificHandler: to assist the flow configuration services to
   call the switch-talking modules with correct parameters value and
   order.

-  Switch-talking modules

   -  For the services above, when they need to read or configure the
      underlying switches via SNMP or CLI, these queries are dealt with
      the modules SNMPHandler and CLIHandler which directly talk with
      the switches. The SNMPListener is to listen to snmp trap such as
      link up/down event or switch on/off event.

Design
------

In terms of the architecture of the SNMP4SDN Plugin’s features, the
features include flow configuration, topology discovery, and
multi-vendor support. Their architectures please refer to Wiki
(`Developer Guide -
Design <https://wiki.opendaylight.org/view/SNMP4SDN:Developer_Guide#Design>`__).

Installation and Configuration Guide
------------------------------------

-  Please refer to the *Getting Started Guide* in
   https://www.opendaylight.org/downloads, find the SNMP4SDN section.

-  For the latest full guide, please refer to Wiki (`Installation
   Guide <https://wiki.opendaylight.org/view/SNMP4SDN:Installation_Guide>`__,
   `User Guide -
   Configuration <https://wiki.opendaylight.org/view/SNMP4SDN:User_Guide#Configuration>`__).

Tutorial
--------

-  For the latest full guide, please refer to Wiki (`User Guide -
   Tutorial <https://wiki.opendaylight.org/view/SNMP4SDN:User_Guide#Tutorial_.2F_How-To>`__).

Programmatic Interface(s)
-------------------------

SNMP4SDN Plugin exposes APIs via MD-SAL with YANG model. The methods
(RPC call) and data structures for them are listed below.

TopologyService
~~~~~~~~~~~~~~~

-  RPC call

   -  get-edge-list

   -  get-node-list

   -  get-node-connector-list

   -  set-discovery-interval (given interval time in seconds)

   -  rediscover

-  Data structure

   -  node: composed of node-id, node-type

   -  node-connector: composed of node-connector-id,
      node-connector-type, node

   -  topo-edge: composed of head-node-connector-id,
      head-node-connector-type, head-node-id, head-node-type,
      tail-node-connector-id, tail-node-connector-type, tail-node-id,
      tail-node-type

VlanService
~~~~~~~~~~~

-  RPC call

   -  add-vlan (given node ID, VLAN ID, VLAN name)

   -  add-vlan-and-set-ports (given node ID, VLAN ID, VLAN name, tagged
      ports, untagged ports)

   -  set-vlan-ports (given node ID, VLAN ID, tagged ports, untagged
      ports)

   -  delete-vlan (given node ID, VLAN ID)

   -  get-vlan-table (given node ID)

AclService
~~~~~~~~~~

-  RPC call

   -  create-acl-profile (given node ID, acl-profile-index, acl-profile)

   -  del-acl-profile (given node ID, acl-profile-index)

   -  set-acl-rule (given node ID, acl-index, acl-rule)

   -  del-acl-rule (given node ID, acl-index)

   -  clear-acl-table (given node ID)

-  Data structure

   -  acl-profile-index: composed of profile-id, profile name

   -  acl-profile: composed of acl-layer, vlan-mask, src-ip-mask,
      dst-ip-mask

   -  acl-layer: IP or ETHERNET

   -  acl-index: composed of acl-profile-index, acl-rule-index

   -  acl-rule-index: composed of rule-id, rule-name

   -  acl-rule: composed of port-list, acl-layer, acl-field, acl-action

   -  acl-field: composed of vlan-id, src-ip, dst-ip

   -  acl-action: PERMIT or DENY

FdbService
~~~~~~~~~~

-  RPC call

   -  set-fdb-entry (given fdb-entry)

   -  del-fdb-entry (given node-id, vlan-id, dest-mac-adddr)

   -  get-fdb-entry (given node-id, vlan-id, dest-mac-adddr)

   -  get-fdb-table (given node-id)

-  Data structure

   -  fdb-entry: composed of node-id, vlan-id, dest-mac-addr, port,
      fdb-entry-type

   -  fdb-entry-type: OTHER/INVALID/LEARNED/SELF/MGMT

MiscConfigService
~~~~~~~~~~~~~~~~~

-  RPC call

   -  set-stp-port-state (given node-id, port, is\_nable)

   -  get-stp-port-state (given node-id, port)

   -  get-stp-port-root (given node-id, port)

   -  enable-stp (given node-id)

   -  disable-stp (given node-id)

   -  delete-arp-entry (given node-id, ip-address)

   -  set-arp-entry (given node-id, arp-entry)

   -  get-arp-entry (given node-id, ip-address)

   -  get-arp-table (given node-id)

-  Data structure

   -  stp-port-state:
      DISABLE/BLOCKING/LISTENING/LEARNING/FORWARDING/BROKEN

   -  arp-entry: composed of ip-address and mac-address

SwitchDbService
~~~~~~~~~~~~~~~

-  RPC call

   -  reload-db (The following 4 RPC implemention is TBD)

   -  add-switch-entry

   -  delete-switch-entry

   -  clear-db

   -  update-db

-  Data structure

   -  switch-info: compose of node-ip, node-mac, community,
      cli-user-name, cli-password, model

Help
----

-  `SNMP4SDN Wiki <https://wiki.opendaylight.org/view/SNMP4SDN:Main>`__

-  SNMP4SDN Mailing List
   (`user <https://lists.opendaylight.org/mailman/listinfo/snmp4sdn-users>`__,
   `developer <https://lists.opendaylight.org/mailman/listinfo/snmp4sdn-dev>`__)

-  `Latest troubleshooting in
   Wiki <https://wiki.opendaylight.org/view/SNMP4SDN:User_Guide#Troubleshooting>`__
