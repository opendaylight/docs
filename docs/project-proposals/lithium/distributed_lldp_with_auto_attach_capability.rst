https://wiki.opendaylight.org/view/File:ODL_TSC_slides.pptx

Name
----

Distributed LLDP with Auto Attach Capability

Repo Name
---------

aalldp

Description
-----------

Adds the ability to utilize and configure LLDP and IEEE Auto Attach
extensions to run locally in SDN switches like OVS for specified ports
for the purposes of improving, scaling, latency, and resiliency.

Scope
-----

Create a network service function plugin to configure the use of
distributed lldp. The plugin will also manage the creation, deletion,
etc. of i-sid to vlan mappings for PBB capable devices

-  Effects the OVSDB plugin - OVS version 2.4 will include auto attach
   functionality which uses ovsdb to store mapping & LLDP information.
   We have locally modified OVSDB plugin to understand these new
   database entries
-  [STRIKEOUT:Effects the controller project - Auto attach relies on the
   discovery of other capable devices via LLDP, which the controller
   consumes. We have locally modified the controller code to not consume
   LLDP packets (changed PacketResult.CONSUME in
   controller/protocol_plugin/openflow/internal/DiscoveryService.java)]
   *As we transition to an MD-SAL plugin, this should no longer be an
   issue*

The project includes the following standards in its scope:

-  802.1ah PBB
-  802.1aq SPB
-  802.1Qcj Pre-standard

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Carl Keene <ckeene@avaya.com>
-  Dennis Flynn <drflynn@avaya.com>
-  Paul Unbehagen <unbehagen@avaya.com>

Initial Committers
------------------

-  Name: Dennis Flynn, ODL Account: drflynn, Email: <drflynn@avaya.com>

Vendor Neutral
--------------

The project is made from scratch: no vendor code, logos, nor anything
else proprietary is included.

Meets Board Policy (including IPR)
----------------------------------
