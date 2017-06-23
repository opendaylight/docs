*************
Release Notes
*************

Target Environment
==================

For Execution
-------------

The OpenDaylight Karaf container, OSGi bundles, and Java class files
are portable and should run on any Java 7- or Java 8-compliant JVM to
run. Certain projects and certain features of some projects may have
additional requirements. Those are noted in the project-specific
release notes.

Projects and features which have known additional requirements are:

* TCP-MD5 requires 64-bit Linux
* TSDR has extended requirements for external databases
* Persistence has extended requirements for external databases
* SFC requires addition features for certain configurations
* SXP depends on TCP-MD5 on thus requires 64-bit Linux
* SNBI has requirements for Linux and Docker
* OpFlex requires Linux
* DLUX requires a modern web browser to view the UI
* AAA when using federation has additional requirements for external tools
* VTN has components which require Linux

For Development
---------------

OpenDaylight is written primarily in Java project and primarily uses
Maven as a build tool Consequently the two main requirements to develop
projects within OpenDaylight are:

* A Java 8-compliant JDK
* Maven 3.1.1 or later

Applications and tools built on top of OpenDaylight using it's REST
APIs should have no special requirements beyond whatever is needed to
run the application or tool and make the REST calls.

In some places, OpenDaylight makes use of the Xtend language. While
Maven will download the appropriate tools to build this, additional
plugins may be required for IDE support.

The projects with additional requirements for execution typically have
similar or more extensive additional requirements for development. See
the project-specific release notes for details.

Known Issues and Limitations
============================

Other than as noted in project-specific release notes, we know of the
following limitations:

* Migration from Helium, Lithium and Beryllium to Boron has not been
  extensively tested. The per-project release notes include migration and
  compatibility information when it is known.
* There are scales beyond which the controller has been unreliable when
  collecting flow statistics from OpenFlow switches. In tests, these
  issues became apparent when managing thousands of OpenFlow
  switches, however this may vary depending on deployment and use cases.

Security Advisories
-------------------

All OpenDaylight Security Advisories can be found on the `Security Advisories
wiki page <https://wiki.opendaylight.org/view/Security:Advisories>`_. Of
particular note to OpenDaylight Boron users are:

* CVE-2017-1000357
* CVE-2017-1000358
* CVE-2017-1000361

There are known and documented mitigations described on the Security Advisory
page linked above. Because of the efficacy of the mitigations, we do not intend
to release another version of Beryllium to address them. Instead, we encourage
all of those who are using Beryllium to carefully understand the mitigations in
the context of their deployments.

The following two CVEs were fixed in Boron-SR3, but affect Boron-SR2 and
before:

* CVE-2017-1000359
* CVE-2017-1000360

Major Changes
=============

* `Bug 2594 <https://bugs.opendaylight.org/show_bug.cgi?id=2594>`_
  Restconf PUT now returns 201 status code instead of 200 when a resource has been created.
  Before, when creating new resource with PUT method, status code 200 OK is returned.
  But RESTCONF Protocol draft-bierman-netconf-restconf-04 says:
  Consistent with [RFC2616], if the PUT method creates a new resource,
  a "201 Created" Status-Line is returned.  If an existing resource is
  modified, either "200 OK" or "204 No Content" are returned.

.. _proj_rel_notes:

Project Specific Release Notes
==============================

For the release notes of individual projects, please see the following pages on the OpenDaylight Wiki.

* `ALTO <https://wiki.opendaylight.org/view/ALTO:Boron:Release_Notes>`_
* `Atrium Router <https://wiki.opendaylight.org/view/Atrium:Boron_Release_Notes>`_
* `Authentication, Authorization and Accounting (AAA) <https://wiki.opendaylight.org/view/AAA:Boron:Release_Notes>`_
* `BGP PCEP <https://wiki.opendaylight.org/view/BGP_LS_PCEP:Boron_Release_Notes>`_
* `Cardinal <https://wiki.opendaylight.org/view/Cardinal:Boron:Release_Notes>`_
* `Centinel <https://wiki.opendaylight.org/view/Centinel:Boron:Release_Notes>`_
* `Control And Provisioning of Wireless Access Points (CAPWAP) <https://wiki.opendaylight.org/view/CAPWAP:Boron:Release_Notes>`_
* `Controller <https://wiki.opendaylight.org/view/OpenDaylight_Controller:Boron:Release_Notes>`_
* `Controller Shield <https://wiki.opendaylight.org/view/Controller_Shield:Boron_Release_Notes>`_
* `DLUX <https://wiki.opendaylight.org/view/OpenDaylight_DLUX:Boron:Release_Notes>`_
* `Device Identification and Driver Management (DIDM) <https://wiki.opendaylight.org/view/DIDM:_Boron_Release_Notes>`_
* `Documentation <https://wiki.opendaylight.org/view/Documentation/Boron/Release_Notes>`_
* `Energy Management Plugin <https://wiki.opendaylight.org/view/Eman:Boron_Release_Notes>`_
* `Fabric As A Service (FaaS) <https://wiki.opendaylight.org/view/FaaS:Boron_Release_Notes>`_
* `Genius <https://wiki.opendaylight.org/view/Genius:Boron:Release_Note>`_
* `Group Based Policy (GBP) <https://wiki.opendaylight.org/view/Group_Based_Policy_(GBP)/Releases/Boron/Release_review>`_
* `Honeycomb Virtual Bridge Domain <https://wiki.opendaylight.org/view/Honeycomb/vbd:Boron:Release_Notes>`_
* `Infrastructure Utilities <https://wiki.opendaylight.org/view/Infrastructure_Utilities:BoronReleaseNotes>`_
* `Integration/Distribution <https://wiki.opendaylight.org/view/Integration/Distribution/Boron_Release_Notes>`_
* `Internet of Things Data Management (IoTDM) <https://wiki.opendaylight.org/view/Iotdm:Boron_Release_Notes>`_
* `L2 Switch <https://wiki.opendaylight.org/view/L2_Switch:Boron:Release_Notes>`_
* `LISP Flow Mapping <https://wiki.opendaylight.org/view/OpenDaylight_Lisp_Flow_Mapping:Boron_Release_Notes>`_
* `Link Aggregation Control Protocol (LACP) <https://wiki.opendaylight.org/view/LACP:Release_Notes>`_
* `MD-SAL <https://wiki.opendaylight.org/view/MD-SAL:Boron:Release_Notes>`_
* `NAT Application Plugin <https://wiki.opendaylight.org/view/NATApp_Plugin:Boron_Release_Notes>`_
* `NETCONF <https://wiki.opendaylight.org/view/NETCONF:Boron:Release_Notes>`_
* `NEtwork MOdeling (NEMO) <https://wiki.opendaylight.org/view/NEMO:Boron:Release_Notes>`_
* `NeXt UI Toolkit <https://wiki.opendaylight.org/view/NeXt:Boron_Release_Notes>`_
* `NetIDE <https://wiki.opendaylight.org/view/NetIDE:Boron_Release_Notes>`_
* `Network Intent Composition (NIC) <https://wiki.opendaylight.org/view/Network_Intent_Composition:Boron:Release_Notes>`_
* `Network Virtualization <https://wiki.opendaylight.org/view/NetVirt:Boron_Release_Notes>`_
* `Neutron Northbound <https://wiki.opendaylight.org/view/NeutronNorthbound:Boron:Release_Notes>`_
* `ODL Root Parent <https://wiki.opendaylight.org/view/ODL_Parent:Boron:Release_Notes>`_
* `ORI C&M Protocol (OCP) <https://wiki.opendaylight.org/view/OCP_Plugin:Boron_Release_Notes>`_
* `OVSDB Integration <https://wiki.opendaylight.org/view/OpenDaylight_OVSDB:Boron_Release_Notes>`_
* `OpenFlow Configuration Protocol (OF-CONFIG) <https://wiki.opendaylight.org/view/OF-CONFIG:Boron:Release_Notes>`_
* `OpenFlow Plugin <https://wiki.opendaylight.org/view/OpenDaylight_OpenFlow_Plugin:Boron_Release_Notes>`_
* `OpenFlow Protocol Library <https://wiki.opendaylight.org/view/Openflow_Protocol_Library:Release_Notes:Boron_Release_Notes>`_
* `Packet Cable/PCMM <https://wiki.opendaylight.org/view/PacketCablePCMM:BoronReleaseNotes>`_
* `SDN Interface Application (SDNi) <https://wiki.opendaylight.org/view/ODL-SDNi:Boron_Release_Notes>`_
* `SNMP Plugin <https://wiki.opendaylight.org/view/SNMP_Plugin:Boron:Release_Notes>`_
* `SNMP4SDN <https://wiki.opendaylight.org/view/SNMP4SDN:Boron_Release_Note>`_
* `Secure Network Bootstrapping Infrastructure (SNBI) <https://wiki.opendaylight.org/view/SNBI_Boron_Release_Notes>`_
* `Secure tag eXchange Protocol (SXP) <https://wiki.opendaylight.org/view/SXP:Boron:Release_Notes>`_
* `Service Function Chaining <https://wiki.opendaylight.org/view/Service_Function_Chaining:Boron_Release_Notes>`_
* `Table Type Patterns (TTP) <https://wiki.opendaylight.org/view/Table_Type_Patterns/Boron/Release_Notes>`_
* `Time Series Data Repository (TSDR) <https://wiki.opendaylight.org/view/Boron_Release_Notes>`_
* `Topology Processing Framework <https://wiki.opendaylight.org/view/Topology_Processing_Framework:BORON_Release_Notes>`_
* `Unified Secure Channel (USC) <https://wiki.opendaylight.org/view/USC:Boron:Release_Notes>`_
* `User Network Interface Manager (UNIMGR) <https://wiki.opendaylight.org/view/Unimgr:BoronReleaseNotes>`_
* `Virtual Tenant Network (VTN) <https://wiki.opendaylight.org/view/VTN:Boron:Release_Notes>`_
* `YANG PUBSUB <https://wiki.opendaylight.org/view/YANG_PUBSUB:Boron:Release_Notes>`_
* `YANG Tools <https://wiki.opendaylight.org/view/YANG_Tools:Boron:Release_Notes>`_

Boron-SR1 Release Notes
=======================

This page details changes and bug fixes between the Boron Release and the Boron Stability Release 1 (Boron-SR1) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------

The following projects had no noteworthy changes in the Boron-SR1 Release:

* ALTO
* Atrium Router
* Cardinal
* Control And Provisioning of Wireless Access Points (CAPWAP)
* Controller Shield
* Device Identification and Driver Management (DIDM)
* Energy Management Plugin
* Fabric As A Service (FaaS)
* Integration/Distribution
* Internet of Things Data Management (IoTDM)
* Link Aggregation Control Protocol (LACP)
* NAT Application Plugin
* NEtwork MOdeling (NEMO)
* NeXt UI Toolkit
* Network Intent Composition (NIC)
* ORI C&M Protocol (OCP)
* OpenFlow Configuration Protocol (OF-CONFIG)
* Packet Cable/PCMM
* SNMP Plugin
* SNMP4SDN
* Secure Network Bootstrapping Infrastructure (SNBI)
* Table Type Patterns (TTP)
* Time Series Data Repository (TSDR)
* Topology Processing Framework
* Unified Secure Channel (USC)
* YANG PUBSUB

Authentication, Authorization and Accounting (AAA)
--------------------------------------------------
* `304660 <https://git.opendaylight.org/gerrit/#/q/304660c0f1a12840e3d524e31630fbc173b7d7b5>`_ `BUG-6956 <https://bugs.opendaylight.org/show_bug.cgi?id=6956>`_ - Do not wrap Guava as a bundle in the feature definition
* `b4aacb <https://git.opendaylight.org/gerrit/#/q/b4aacb937264f3cb172f817bf5c95b4ccc1fa3f0>`_ Auto-detect secure HTTP in the idmtool script

BGP PCEP
--------
* `40a2e9 <https://git.opendaylight.org/gerrit/#/q/40a2e9a540863b5bfefdd8d252dadf7e7a1ec741>`_ `BUG-6737 <https://bugs.opendaylight.org/show_bug.cgi?id=6737>`_: bgp:show-stats Karaf CLI causes NPE
* `81050d <https://git.opendaylight.org/gerrit/#/q/81050d598744b6d5fab63302f747c70ff03c366f>`_ `BUG-6781 <https://bugs.opendaylight.org/show_bug.cgi?id=6781>`_: Inbound and outbound connection attempts from controller are not synchronized - created new peer session listener registry in BGPPeerRegistry for the   outbound connection establishment logic to get notified when new peer   session is created or destroyed - updated outbound connection establishment logic to attempt a connection   only when no existing session is present - updated unit-tests
* `7309aa <https://git.opendaylight.org/gerrit/#/q/7309aa7129e23dda57754ce786a2f330ec914331>`_ `BUG-7004 <https://bugs.opendaylight.org/show_bug.cgi?id=7004>`_: NPE when configuring BGP peer using OpenConfig API twice - handle scenario where peer not having AFI-SAFI info is   reconfigured using OpenConfig API - updated unit-test
* `e789e8 <https://git.opendaylight.org/gerrit/#/q/e789e8f5d8e4038f36c59047a6d7bd12c09ed74d>`_ `BUG-6622 <https://bugs.opendaylight.org/show_bug.cgi?id=6622>`_ - ClusterSingletonService registration race condition
* `e07ac3 <https://git.opendaylight.org/gerrit/#/q/e07ac3381e49f1b90423bc11008a701df6da64ed>`_ Do not wrap Guava as a bundle in features' definition
* `617ca0 <https://git.opendaylight.org/gerrit/#/q/617ca03430bde5614118d514204a086a9300b1d1>`_ `BUG-6889 <https://bugs.opendaylight.org/show_bug.cgi?id=6889>`_: BGPCEP Boron Autorelease Breaking - if server is not ready when client connects, wait for client reconnection   before checking for test pass/fail criteria
* `53e8e4 <https://git.opendaylight.org/gerrit/#/q/53e8e4d827f2b053c9bdb62b2e20065b678e1551>`_ `BUG-6955 <https://bugs.opendaylight.org/show_bug.cgi?id=6955>`_: Fix BGP TestTool
* `827a46 <https://git.opendaylight.org/gerrit/#/q/827a46a5bb181dea5e922daf4c80ce870c2d0fcb>`_ `BUG-6954 <https://bugs.opendaylight.org/show_bug.cgi?id=6954>`_: Create Application Peer with Route Counter
* `67dcc4 <https://git.opendaylight.org/gerrit/#/q/67dcc42b8a142fbc92f8c57ace57825e673dbf6c>`_ `BUG-6809 <https://bugs.opendaylight.org/show_bug.cgi?id=6809>`_: PMSI attribute's mandatory leaves are always enforced
* `3093fa <https://git.opendaylight.org/gerrit/#/q/3093faf20d0b0a6c6ce1f71a81c47c286ba2e945>`_ `BUG-6257 <https://bugs.opendaylight.org/show_bug.cgi?id=6257>`_: Implement PMSI tunnel attribute handler
* `7b0516 <https://git.opendaylight.org/gerrit/#/q/7b051638579c0a389db9298bd506a4be0dee3252>`_ BUG6257 Add BGP attribute PMSI tunnel to the EVPN Yang
* `bf9d2b <https://git.opendaylight.org/gerrit/#/q/bf9d2ba0f80146b8ded3cc61c2472d89ade35f3d>`_ `BUG-6889 <https://bugs.opendaylight.org/show_bug.cgi?id=6889>`_: BGPCEP Boron Autorelease Breaking
* `873f97 <https://git.opendaylight.org/gerrit/#/q/873f97ea36179b6a33b523178b3b0a6d3e8f2b4b>`_ `BUG-6788 <https://bugs.opendaylight.org/show_bug.cgi?id=6788>`_: peer singleton service closed just after initialization
* `4fbc6b <https://git.opendaylight.org/gerrit/#/q/4fbc6bb2b9781884964677b99051f34304a251da>`_ `BUG-6811 <https://bugs.opendaylight.org/show_bug.cgi?id=6811>`_: wrong namespace for binding-codec-tree-factory
* `15baa0 <https://git.opendaylight.org/gerrit/#/q/15baa00f1cef45d2b6446d2aadab508429999349>`_ `BUG-6835 <https://bugs.opendaylight.org/show_bug.cgi?id=6835>`_: Missing "simple-routing-policy" knob in OpenConfig BGP Neighbor configuration
* `363448 <https://git.opendaylight.org/gerrit/#/q/363448e4603852a49cd925f3635602b061d930fc>`_ `BUG-6675 <https://bugs.opendaylight.org/show_bug.cgi?id=6675>`_: add missing cluster-id configuration knob
* `efe39b <https://git.opendaylight.org/gerrit/#/q/efe39b06d82622014aac14b769536113206b28a3>`_ `BUG-6616 <https://bugs.opendaylight.org/show_bug.cgi?id=6616>`_: BGP synchronization can happen after the session was closed
* `9f31c0 <https://git.opendaylight.org/gerrit/#/q/9f31c097e5311e2a194872f8c93d5d63ed2f1a30>`_ `BUG-6747 <https://bugs.opendaylight.org/show_bug.cgi?id=6747>`_: Race condition on peer connection
* `a55a84 <https://git.opendaylight.org/gerrit/#/q/a55a847b5353c4fab6d134e93e702ade7f65858d>`_ `BUG-6647 <https://bugs.opendaylight.org/show_bug.cgi?id=6647>`_ Increase code coverage and clean up IV
* `078654 <https://git.opendaylight.org/gerrit/#/q/078654f0e8a465021e1298216570e1c9828ccb77>`_ `BUG-6647 <https://bugs.opendaylight.org/show_bug.cgi?id=6647>`_ Increase code coverage and clean up III
* `adbc08 <https://git.opendaylight.org/gerrit/#/q/adbc08dcd74ca243edfb974738cf01b5edf70076>`_ `BUG-6734 <https://bugs.opendaylight.org/show_bug.cgi?id=6734>`_: Generate correct L3VPN route key
* `5b10d8 <https://git.opendaylight.org/gerrit/#/q/5b10d8a668342fefdad8c65437cd6ec7cce314c3>`_ `BUG-6799 <https://bugs.opendaylight.org/show_bug.cgi?id=6799>`_: IllegalAccessException on install bgp
* `9c40c9 <https://git.opendaylight.org/gerrit/#/q/9c40c9c560a5417c59fa67f6e7aafda7281af4db>`_ `BUG-6647 <https://bugs.opendaylight.org/show_bug.cgi?id=6647>`_ Increase code coverage and clean up II
* `c807b0 <https://git.opendaylight.org/gerrit/#/q/c807b0a218942fb394479bb09333257c740707d5>`_ `BUG-6647 <https://bugs.opendaylight.org/show_bug.cgi?id=6647>`_ Increase code coverage and clean up I
* `98fc76 <https://git.opendaylight.org/gerrit/#/q/98fc7676fa1adf68a13ca30351537a2676288788>`_ `BUG-6784 <https://bugs.opendaylight.org/show_bug.cgi?id=6784>`_ - Failed to fully assemble schema context for ..
* `a1b3b8 <https://git.opendaylight.org/gerrit/#/q/a1b3b896930c9b0c684d76ee983692fb2f37f930>`_ `BUG-6662 <https://bugs.opendaylight.org/show_bug.cgi?id=6662>`_: On connection reset by peer, sometimes re-connection attempt stops after HoldTimer expired error
* `63cd93 <https://git.opendaylight.org/gerrit/#/q/63cd933b76740bd76ed9120dc2a1a61f481939f1>`_ `BUG-4827 <https://bugs.opendaylight.org/show_bug.cgi?id=4827>`_ - BGP add-path unit tests
* `ef40e4 <https://git.opendaylight.org/gerrit/#/q/ef40e433159d5ff41b4d5b670bcf5cc730834d8a>`_ OpenConfig BGP more defensive
* `1a0e80 <https://git.opendaylight.org/gerrit/#/q/1a0e802ab3309d33f66d656958190adb56474947>`_ `BUG-6651 <https://bugs.opendaylight.org/show_bug.cgi?id=6651>`_:  Route Advertisement improvement

Centinel
--------
* `a1d4a7 <https://git.opendaylight.org/gerrit/#/q/a1d4a7a1a57bcec02a53812fb69771dcbe8c808e>`_ `BUG-7040 <https://bugs.opendaylight.org/show_bug.cgi?id=7040>`_ - Deploy centinel UI to Nexus

Controller
----------
* `c8356b <https://git.opendaylight.org/gerrit/#/q/c8356bd932505654871a03ab2ca3f45481c20692>`_ Do not wrap Guava as a bundle in features' definition
* `13c9db <https://git.opendaylight.org/gerrit/#/q/13c9db31d5985272a37d099b04cbfdde37b46948>`_ Configurable update-strategy for clusteredAppConfig
* `5ef954 <https://git.opendaylight.org/gerrit/#/q/5ef954d2526435636e6378accb477a595b4a7fd9>`_ `BUG-5700 <https://bugs.opendaylight.org/show_bug.cgi?id=5700>`_ - Backwards compatibility of sharding api's with old api's
* `e12c3c <https://git.opendaylight.org/gerrit/#/q/e12c3c9d369c6f04fbbf68dfdf11052c8e2bd9ab>`_ `BUG-6910 <https://bugs.opendaylight.org/show_bug.cgi?id=6910>`_: Fix anyxml node streaming
* `c5b1b3 <https://git.opendaylight.org/gerrit/#/q/c5b1b3f0851d8e56710d8e60384f6799e1b0a68b>`_ `BUG-6540 <https://bugs.opendaylight.org/show_bug.cgi?id=6540>`_: EOS - handle edge case with pruning pending owner change commits
* `7c89dc <https://git.opendaylight.org/gerrit/#/q/7c89dcd01fdbdcc6d784b55230123f890e4b6146>`_ DataBrokerTestModule: use AbstractDataBrokerTest without inheritance
* `87cdec <https://git.opendaylight.org/gerrit/#/q/87cdecd4b8a1ca5a1d111701822d7dbb0760f106>`_ `BUG-5280 <https://bugs.opendaylight.org/show_bug.cgi?id=5280>`_: expose backing client actor reference
* `35dbc0 <https://git.opendaylight.org/gerrit/#/q/35dbc0f7940cb35aa10ac1f392abb8ff8f75c08c>`_ `BUG-5280 <https://bugs.opendaylight.org/show_bug.cgi?id=5280>`_: make EmptyQueue public
* `f6d208 <https://git.opendaylight.org/gerrit/#/q/f6d208dc56bdd615a5894bab4dcb1bfe01412c60>`_ `BUG-5280 <https://bugs.opendaylight.org/show_bug.cgi?id=5280>`_: fix a few warnings
* `d82a58 <https://git.opendaylight.org/gerrit/#/q/d82a580cc10c67767326023c35757895cde1a3ab>`_ `BUG-5280 <https://bugs.opendaylight.org/show_bug.cgi?id=5280>`_: add ExplicitAsk utility class
* `c2964f <https://git.opendaylight.org/gerrit/#/q/c2964fb0b40d6a06b4723008e89509b117acf98c>`_ `BUG-5280 <https://bugs.opendaylight.org/show_bug.cgi?id=5280>`_: Create AbstractProxyHistory class
* `44d363 <https://git.opendaylight.org/gerrit/#/q/44d363664f580998dbec730232c6f734c0ceaf0d>`_ `BUG-5280 <https://bugs.opendaylight.org/show_bug.cgi?id=5280>`_: move proxy instantiation to AbstractClientHistory
* `ee7e56 <https://git.opendaylight.org/gerrit/#/q/ee7e56a14d93d70f232ebbf640769c93691ddf80>`_ `BUG-5280 <https://bugs.opendaylight.org/show_bug.cgi?id=5280>`_: separate request sequence and transmit sequence
* `6e2480 <https://git.opendaylight.org/gerrit/#/q/6e24804afba563d2a3f501f092b5cff37170c45d>`_ `BUG-5280 <https://bugs.opendaylight.org/show_bug.cgi?id=5280>`_: split out cds akka client substrate
* `e70b8f <https://git.opendaylight.org/gerrit/#/q/e70b8fb7b35ef4b94cbcbe0523db44eca8b8d2df>`_ Move MessageTrackerTest
* `081550 <https://git.opendaylight.org/gerrit/#/q/081550a518548a077dd6542d95b82796272ac093>`_ `BUG-5280 <https://bugs.opendaylight.org/show_bug.cgi?id=5280>`_: add maxMessages field to ConnectClientSuccess
* `d833b7 <https://git.opendaylight.org/gerrit/#/q/d833b7bcd1300cae765fbb952a67d499a76d76d4>`_ `BUG-5280 <https://bugs.opendaylight.org/show_bug.cgi?id=5280>`_: add FrontendMetadata
* `cc9e36 <https://git.opendaylight.org/gerrit/#/q/cc9e36025f69fd006c117b169f0f40c1a751a1f6>`_ `BUG-6540 <https://bugs.opendaylight.org/show_bug.cgi?id=6540>`_: EOS - Prune pending owner change commits on leader change
* `692916 <https://git.opendaylight.org/gerrit/#/q/69291624b6dbfedd126e9caff2bf2806f88e9dd8>`_ `BUG-6540 <https://bugs.opendaylight.org/show_bug.cgi?id=6540>`_: Fix journal issues on leader changes
* `82f5b4 <https://git.opendaylight.org/gerrit/#/q/82f5b445c9a7ca309baf269d0ae3598ad7ae9a48>`_ `BUG-6540 <https://bugs.opendaylight.org/show_bug.cgi?id=6540>`_: Move LeaderInstallSnapshotState to FollowerLogInformation
* `12c069 <https://git.opendaylight.org/gerrit/#/q/12c069ad709b2c70cb8fb2f8b4544c4ef19b2c10>`_ `BUG-6540 <https://bugs.opendaylight.org/show_bug.cgi?id=6540>`_: Refactor FollowerToSnapshot to its own class
* `54d6e3 <https://git.opendaylight.org/gerrit/#/q/54d6e3cbf243e6e8f3928a269af5f4bca6641237>`_ Fix relativePaths for mdsal-it-parent under controller

DLUX
----
* `771965 <https://git.opendaylight.org/gerrit/#/q/7719655c78be37258edd1de2ebaf25077858f22e>`_ `BUG-6956 <https://bugs.opendaylight.org/show_bug.cgi?id=6956>`_ - Do not wrap Guava as a bundle in the feature definition

Documentation
-------------
* `ce7361 <https://git.opendaylight.org/gerrit/#/q/ce7361ed4c73cf079d5f04c045607025f377da8f>`_ Update requirements for Tox
* `5f1abe <https://git.opendaylight.org/gerrit/#/q/5f1abe641f1289fd4719d9625ad3b6f5b25da242>`_ BGP user guide reworked
* `2449ff <https://git.opendaylight.org/gerrit/#/q/2449fff03897865ac08457bd98f67f59b60b12f9>`_ Add warning about RtD not cleaning up between runs
* `ce5b0b <https://git.opendaylight.org/gerrit/#/q/ce5b0be0623a89879fa9772983f711f7569cf842>`_ Replace supported admonitions with rst directives
* `d39f1b <https://git.opendaylight.org/gerrit/#/q/d39f1bc9a85f4b488ac5d10f245d543ba0393e6e>`_ Note that nested formatting isn't supported
* `1364a2 <https://git.opendaylight.org/gerrit/#/q/1364a2e880185c841032328dfbb7ca8e458c8aa9>`_ Fix two typos
* `0c45de <https://git.opendaylight.org/gerrit/#/q/0c45deb348ebe8646adba94fe05c0fbdc6107945>`_ Update PacketCable User-Guide
* `8ce9c9 <https://git.opendaylight.org/gerrit/#/q/8ce9c98f45ad28344c48e37b1ad8259013ecfbb4>`_ Update Unimgr Documentation for Boron Release
* `2347d5 <https://git.opendaylight.org/gerrit/#/q/2347d50199e76e114c59d3b65aa99d2e3ca42ac7>`_ Remove non-participating project's features from Boron docs
* `ca9eb6 <https://git.opendaylight.org/gerrit/#/q/ca9eb6b51f870734978ff7c18edcbc493a909ee8>`_ Change image to figure
* `d036d7 <https://git.opendaylight.org/gerrit/#/q/d036d7d0b2738dafc5af00b118aa42a96bbc393d>`_ Fix sphinx warnings (and some formatting)
* `8fbdde <https://git.opendaylight.org/gerrit/#/q/8fbdde79c4996e8fe100520a2d6029f6646c1fdf>`_ Update tutorial to use OOR instead of LISP
* `668436 <https://git.opendaylight.org/gerrit/#/q/668436c261bca1fb66e5db225b0dd3bb32b549b2>`_ Add documentation for SalFlatBatchService in OFP
* `648a06 <https://git.opendaylight.org/gerrit/#/q/648a063cbf0177f11eaddff8f02c8adaf36220f7>`_ Update tutorial docs to replace add mapping RPCs with RESTCONF calls

Genius
------
* `cecdfc <https://git.opendaylight.org/gerrit/#/q/cecdfca33a60e5b61a70d08b252409e277607959>`_ `BUG-6765 <https://bugs.opendaylight.org/show_bug.cgi?id=6765>`_: Overriding in_port in table0 with Zero value
* `2f201d <https://git.opendaylight.org/gerrit/#/q/2f201db79f427f25220f01b31f904270a653b30c>`_ Fixes for IT base
* `eb07cb <https://git.opendaylight.org/gerrit/#/q/eb07cbadaed370673e1f6ddb15919b0a2fe869f2>`_ Add pom for commons
* `d10198 <https://git.opendaylight.org/gerrit/#/q/d101988057a9820580481111dfce1cdb33f2d11d>`_ `BUG-6278 <https://bugs.opendaylight.org/show_bug.cgi?id=6278>`_: Switch to use odlparent's karaf-parent
* `ec321a <https://git.opendaylight.org/gerrit/#/q/ec321a46ba1c7c2c91c8139dd66a14663d989c36>`_ IdManager Performance Improvements
* `f5be80 <https://git.opendaylight.org/gerrit/#/q/f5be800d8e4638e47ff558ec73a2b7cf51d194e0>`_ Enhancements to improve DJC transaction retry mechanisms
* `e49433 <https://git.opendaylight.org/gerrit/#/q/e49433123811bf6acd6ed19e910ad6965c6650dd>`_ Upstreaming ITM cache impl and monitoring bug fix
* `bb9f02 <https://git.opendaylight.org/gerrit/#/q/bb9f027aa2931363d210ee726e5b728c16acb7b2>`_ ODL `BUG-6095 <https://bugs.opendaylight.org/show_bug.cgi?id=6095>`_, bundle:diag failing for ITM bundle. UT:- RemoveExternalEndpoint is pointing to a vpnservice package which is causing the issue, Started the Karaf and checked the bundle status and diag. coming up jjst fine.
* `b16704 <https://git.opendaylight.org/gerrit/#/q/b167043c23bf5956f438354e2a152b058e9dd561>`_ Make local variables creation and assignment in a single statement. Some other minor formatting (removing commented code, etc.)
* `8be9b2 <https://git.opendaylight.org/gerrit/#/q/8be9b26a2c4d0f7c784b6b61984daf6fbb9f9d1c>`_ Checkstyle and formatting.
* `d76bde <https://git.opendaylight.org/gerrit/#/q/d76bde80e480fb1859b5d21f514a9c32a20e1dcf>`_ `BUG-6786 <https://bugs.opendaylight.org/show_bug.cgi?id=6786>`_:  L3VPN is not honoring VTEP add or delete in operational cloud
* `1826f3 <https://git.opendaylight.org/gerrit/#/q/1826f3e230c3b93f5ef73dc7675446ed784b8e4e>`_ `BUG-6726 <https://bugs.opendaylight.org/show_bug.cgi?id=6726>`_ : Loss of traffic during ODL Cluster reboot
* `08b545 <https://git.opendaylight.org/gerrit/#/q/08b5457ca3dd1cdb418bfdf1241e74a12dca5396>`_ Arp cache feature changes
* `9e74d4 <https://git.opendaylight.org/gerrit/#/q/9e74d40018480660756213326dc3de74645dbddd>`_ `BUG-6776 <https://bugs.opendaylight.org/show_bug.cgi?id=6776>`_ - Bad instructions returned by genius RPC
* `c977fb <https://git.opendaylight.org/gerrit/#/q/c977fb06abba134690e7743affa572d6a0a2eaf6>`_ Intro. new TestIMdsalApiManager implements IMdsalApiManager
* `46b8e6 <https://git.opendaylight.org/gerrit/#/q/46b8e6115f5db8d7f703df549c3f7a487d159e6f>`_ Adding the Add/Remove ExternalEndpoint commands.
* `42e57e <https://git.opendaylight.org/gerrit/#/q/42e57e0c8c0cd62652449b9bf45b6f453d6c6e86>`_ `BUG-6838 <https://bugs.opendaylight.org/show_bug.cgi?id=6838>`_: Retry Mechanism for Batched Transaction
* `3aac36 <https://git.opendaylight.org/gerrit/#/q/3aac3630e06fa436ed0fa40bbdad57eda960ed4f>`_ `BUG-6642 <https://bugs.opendaylight.org/show_bug.cgi?id=6642>`_ - Improvising Batching code
* `8bdc93 <https://git.opendaylight.org/gerrit/#/q/8bdc9348cc8f389d717488ddca2efd7073cd984b>`_ Implement an action type nx_load_in_port
* `14e9d6 <https://git.opendaylight.org/gerrit/#/q/14e9d67cafa3fe7399f12b186999f4386f2cea9f>`_ Fixing overflow in long-to-IPv4 address conversion
* `c547a9 <https://git.opendaylight.org/gerrit/#/q/c547a95ca9218f59a1d409041448c09bd9eaf151>`_ Replace some collection.size() > 0 for !collection.isEmpty() to improve readability. Some other minor changes.
* `338db8 <https://git.opendaylight.org/gerrit/#/q/338db8d696ccbdeaf61d95b78ea85da61b5a3be3>`_ Add SFC relevant service binding constants
* `3c1775 <https://git.opendaylight.org/gerrit/#/q/3c1775e3fe078bc949084ca71c35cdc9a4a84624>`_ Add JavaDoc to AsyncDataTreeChangeListenerBase init() re. @PostConstruct
* `5c8895 <https://git.opendaylight.org/gerrit/#/q/5c8895e60a5bde5827a1e8341ff8b33f52915195>`_ Add support to the ITM to create Transport Zones with different UDP:   VxLAN: default port   VxLAN-GPE: 4880
* `9c5d78 <https://git.opendaylight.org/gerrit/#/q/9c5d782b2b1f38d84a980a6f8f8baa3b2a77519d>`_ Improved error message for jobs
* `a36863 <https://git.opendaylight.org/gerrit/#/q/a36863288d7d3b071104453930477bbb2c5f2ce3>`_ Add fcapsapplication-impl XML config to features/pom.xml
* `f18f59 <https://git.opendaylight.org/gerrit/#/q/f18f5900625f8638a0bc7330d6f3801c3a06de9c>`_ AsyncDataTreeChangeListenerBase @PreDestroy close() for easier DI
* `2e8028 <https://git.opendaylight.org/gerrit/#/q/2e8028972b25fb5abdbf6e7efb74a31e7651f9bc>`_ NPE in InterfaceTopologyStateListener
* `631a2e <https://git.opendaylight.org/gerrit/#/q/631a2e2aea9dab1d95fea0ec4bbda770ad4518d8>`_ Reverting Overriding in_port in table0 with Zero value
* `eddde4 <https://git.opendaylight.org/gerrit/#/q/eddde4c272565b251d3c5bceb4693ea071cf3c70>`_ Implement action types required for ping responder
* `749c4b <https://git.opendaylight.org/gerrit/#/q/749c4b2ada02e5a1696770e3e98d3b3fe28c7092>`_ Performs a residual cleanup of ElanPseudoPort flows
* `20d32c <https://git.opendaylight.org/gerrit/#/q/20d32cb01df74966f5b1a2b4c3ffdb3e44e98ed1>`_ `BUG-6765 <https://bugs.opendaylight.org/show_bug.cgi?id=6765>`_ : Overriding in_port in table0 with Zero value
* `b7834a <https://git.opendaylight.org/gerrit/#/q/b7834a3bda67bffce27de803a50b5495bedcd891>`_ `BUG-6748 <https://bugs.opendaylight.org/show_bug.cgi?id=6748>`_: Added support for match on nxm_reg5
* `d9fbcb <https://git.opendaylight.org/gerrit/#/q/d9fbcb92b02215b5e2659058e571d2b014a936cd>`_ VM Migration: Flows not programmed in new DPN
* `6bd6b9 <https://git.opendaylight.org/gerrit/#/q/6bd6b94a9d6b222fe0c2288f7f9cf68f94001a11>`_ Arp cache feature changes
* `3e0a4e <https://git.opendaylight.org/gerrit/#/q/3e0a4e9baf65ec39ce95d310fee66490f9c062df>`_ `BUG-6689 <https://bugs.opendaylight.org/show_bug.cgi?id=6689>`_ - long delays between vm boot and flow installation
* `a45578 <https://git.opendaylight.org/gerrit/#/q/a455789b710b63ce73dac9b8f9127182df762a4d>`_ Add VxLAN-GPE to the interface types list handled by the IFM
* `0b877b <https://git.opendaylight.org/gerrit/#/q/0b877b6cd84fd2cbbd2bc3cf48eeec8c76407c3f>`_ `BUG-6493 <https://bugs.opendaylight.org/show_bug.cgi?id=6493>`_ - Interface-Manager performance optimizations
* `de231c <https://git.opendaylight.org/gerrit/#/q/de231cc52684710939239bd490b3d73a1836da51>`_ `BUG-6557 <https://bugs.opendaylight.org/show_bug.cgi?id=6557>`_ : NPE thrown during Interface-mgr RPCs call
* `01704e <https://git.opendaylight.org/gerrit/#/q/01704e8413aad5626cb5d988382024de257241d5>`_ `BUG-6610 <https://bugs.opendaylight.org/show_bug.cgi?id=6610>`_ Moving ACL service as highest among all the services.

Group Based Policy (GBP)
------------------------
* `6e665c <https://git.opendaylight.org/gerrit/#/q/6e665c0ddcf207ac558008e1d3891ace7f85eb21>`_ `BUG-6953 <https://bugs.opendaylight.org/show_bug.cgi?id=6953>`_: fix renderer-node overwriting
* `375d4c <https://git.opendaylight.org/gerrit/#/q/375d4c013b1db48cc1f5db63a4482c608f02e981>`_ Increasing coverage on faas-renderer
* `334cef <https://git.opendaylight.org/gerrit/#/q/334cefff590c0f8e102a2d14c3117bef492c5566>`_ introducing vpp-demo
* `ca2892 <https://git.opendaylight.org/gerrit/#/q/ca2892a641585f98cd31e9507e6b9260fa8244d9>`_ Improved GBP-VBD communication process
* `dfe97d <https://git.opendaylight.org/gerrit/#/q/dfe97dfd48667a052b36a8a6a81379f172440496>`_ `BUG-6858 <https://bugs.opendaylight.org/show_bug.cgi?id=6858>`_: adapt to ise api, fix sgt-generator
* `ebba85 <https://git.opendaylight.org/gerrit/#/q/ebba85849d74d3438500bebc5be84ad6cb8665ad>`_ `BUG-6858 <https://bugs.opendaylight.org/show_bug.cgi?id=6858>`_: adapt to ise api, fix NPE in listener when missing masterDB
* `27a291 <https://git.opendaylight.org/gerrit/#/q/27a291d46621e5763e9e38986cc2ac858e4e1fb1>`_ `BUG-6858 <https://bugs.opendaylight.org/show_bug.cgi?id=6858>`_: adapt to ise api, wire harvestAll to template-provider
* `4adb23 <https://git.opendaylight.org/gerrit/#/q/4adb237ca9080a70c76f996fcefcbba2c3677124>`_ `BUG-6858 <https://bugs.opendaylight.org/show_bug.cgi?id=6858>`_: adapt to ise api, change lookup from ise
* `91afd6 <https://git.opendaylight.org/gerrit/#/q/91afd65cfa15ac78b3243d7e9e9dda85a3ac1850>`_ `BUG-6858 <https://bugs.opendaylight.org/show_bug.cgi?id=6858>`_: adapt to ise api, simultaneous queries
* `e19aad <https://git.opendaylight.org/gerrit/#/q/e19aad7a9fa8d4dacfd01c42029e09b0c1ed93bd>`_ `BUG-6650 <https://bugs.opendaylight.org/show_bug.cgi?id=6650>`_: ep-ip/sgt, bump sxp dep.version to SR1
* `ce403c <https://git.opendaylight.org/gerrit/#/q/ce403cb4a1eecdcc65c15f6cdd6973e828dc5e72>`_ `BUG-6650 <https://bugs.opendaylight.org/show_bug.cgi?id=6650>`_: ep-ip/sgt, remove sxp-mapper
* `36336d <https://git.opendaylight.org/gerrit/#/q/36336d2b176dc6ed23170f5771b72f4f43d6a861>`_ `BUG-6650 <https://bugs.opendaylight.org/show_bug.cgi?id=6650>`_: ep-ip/sgt, update/rename models and yangs for sxp-ise-adapter
* `ed1db1 <https://git.opendaylight.org/gerrit/#/q/ed1db1fa56f6dfc88d1c390ffb8c63b2cdc2f5a8>`_ `BUG-6650 <https://bugs.opendaylight.org/show_bug.cgi?id=6650>`_: ep-ip/sgt, propose sxp-generator
* `7f9c8a <https://git.opendaylight.org/gerrit/#/q/7f9c8ab38339cfb126e49982d29d8d6366416f20>`_ `BUG-6650 <https://bugs.opendaylight.org/show_bug.cgi?id=6650>`_: ep-ip/sgt, implement and wire template provider
* `0a5a00 <https://git.opendaylight.org/gerrit/#/q/0a5a0040ac71d4ef087c7a3d174f7edc19f7b1d8>`_ `BUG-6650 <https://bugs.opendaylight.org/show_bug.cgi?id=6650>`_: ep-ip/sgt, prepare removal of deprecated sxp-mapper
* `82d300 <https://git.opendaylight.org/gerrit/#/q/82d3007c73f367e36b0833a9e650f0df17c8bbfd>`_ `BUG-6650 <https://bugs.opendaylight.org/show_bug.cgi?id=6650>`_: ep-ip/sgt, propose initial template provider api
* `152d62 <https://git.opendaylight.org/gerrit/#/q/152d62feaad519d59d544d7e53282bf6a5a9a4d3>`_ `BUG-6650 <https://bugs.opendaylight.org/show_bug.cgi?id=6650>`_: ep-ip/sgt, rename groupbasedpolicy-ise-adapter to sxp-ise-adapter
* `68133e <https://git.opendaylight.org/gerrit/#/q/68133ec166f262b2642472dd3f69a5ef58d9159b>`_ `BUG-6650 <https://bugs.opendaylight.org/show_bug.cgi?id=6650>`_: ep-ip/sgt, move groupbasedpolicy-ise-adapter into sxp-integration
* `e97dcf <https://git.opendaylight.org/gerrit/#/q/e97dcf9add5c5738035b28d970a7bb937be5f8c1>`_ `BUG-6650 <https://bugs.opendaylight.org/show_bug.cgi?id=6650>`_: ep-sgt/ip, propose initial sxp-ep-provider
* `508454 <https://git.opendaylight.org/gerrit/#/q/50845497a7e831c9937430fcc4108956fcfe308a>`_ [ios-xe-renderer] Increases coverage for PolicyWriterUtil
* `8d1960 <https://git.opendaylight.org/gerrit/#/q/8d1960b69d5f07c3ad7d98e913e973f39fedf3f2>`_ `BUG-6743 <https://bugs.opendaylight.org/show_bug.cgi?id=6743>`_ switch to clustered data listener
* `eeeec5 <https://git.opendaylight.org/gerrit/#/q/eeeec5dd858f40e6510fbe18f5f0697e17d71748>`_ `BUG-6743 <https://bugs.opendaylight.org/show_bug.cgi?id=6743>`_: Service group identifier set for neutron-vpp-mapper and vpp-renderer

Honeycomb Virtual Bridge Domain
-------------------------------
* `f92940 <https://git.opendaylight.org/gerrit/#/q/f9294072cb725204d9fb02a04f08b1e9f4c87be0>`_ Reference to DataBroker added into VBD blueprint/instance
* `2b7628 <https://git.opendaylight.org/gerrit/#/q/2b7628baf0266930fd7f059b5a2e42d572a831a8>`_ Added current status about bridge domain processing
* `c323d9 <https://git.opendaylight.org/gerrit/#/q/c323d9a414e48105c3d56adf20a3c49669839381>`_ added support for blueprint and ClusterSingletonService

Infrastructure Utilities
------------------------
* `58ca84 <https://git.opendaylight.org/gerrit/#/q/58ca8489e3c0a1cd81aa9c0bb1dcebf3a87f4245>`_ Remove SingletonWithLifecycle, because @Singleton is not inherited
* `6c5388 <https://git.opendaylight.org/gerrit/#/q/6c5388190af66d52eb625c7f28e2d4253ebb3c46>`_ Fix broken build
* `b14251 <https://git.opendaylight.org/gerrit/#/q/b14251606b1e965c4635a66c94ae2cedaaf288de>`_ @Inject convenience helper (org.opendaylight.infrautils.inject)

L2 Switch
---------
* `29f52d <https://git.opendaylight.org/gerrit/#/q/29f52d8738546efdeffb63a8baaac641c0777253>`_ `BUG-6655 <https://bugs.opendaylight.org/show_bug.cgi?id=6655>`_ - arphandler unable to flood arp packet
* `0aea1f <https://git.opendaylight.org/gerrit/#/q/0aea1fc4d1df3b0343e080af8ec71ae94cf1ff3a>`_ Using incremental numbers for initial flow can easily conflict with the flows installed through config data store. To make a simple fix, this patch adds L2switch prefix with the incremental flow-id
* `430922 <https://git.opendaylight.org/gerrit/#/q/430922440525ec5019c289235f3be29110f25efe>`_ `BUG-6278 <https://bugs.opendaylight.org/show_bug.cgi?id=6278>`_: Switch to use odlparent's karaf-parent

LISP Flow Mapping
-----------------
* `9d63b2 <https://git.opendaylight.org/gerrit/#/q/9d63b25fa5d0c97532a892270d254ce4a6203d17>`_ `BUG-7035 <https://bugs.opendaylight.org/show_bug.cgi?id=7035>`_: Fix race condition in HashMapDbTest
* `e56d74 <https://git.opendaylight.org/gerrit/#/q/e56d747fcfb933cb1fc87b208f230a7dac6648d3>`_ `BUG-5047 <https://bugs.opendaylight.org/show_bug.cgi?id=5047>`_: Use Netty Epoll in SB when available
* `6bd3b1 <https://git.opendaylight.org/gerrit/#/q/6bd3b168e05bd031ff5cd9b640a9a30953f0f663>`_ JUnit Test - RadixTrie test with random IPs.
* `95a77d <https://git.opendaylight.org/gerrit/#/q/95a77d1bf375ed0e1b383593eecf1bf7e3cc3493>`_ `BUG-6925 <https://bugs.opendaylight.org/show_bug.cgi?id=6925>`_: Fix NPE in SimpleMapCache
* `387553 <https://git.opendaylight.org/gerrit/#/q/3875534af84ec2b79e589fbca66302ec48fdf7b7>`_ `BUG-6782 <https://bugs.opendaylight.org/show_bug.cgi?id=6782>`_: Fix parent insertions for empty children
* `31ef90 <https://git.opendaylight.org/gerrit/#/q/31ef9000bc59bf906d39b313b671faa011220ba9>`_ Add RadixTrie parent insertion unit test
* `2a6b14 <https://git.opendaylight.org/gerrit/#/q/2a6b14b2bfd1df661346740ac412122e91936f7f>`_ `BUG-6782 <https://bugs.opendaylight.org/show_bug.cgi?id=6782>`_: Fix RadixTrie parent insertions
* `d95b1b <https://git.opendaylight.org/gerrit/#/q/d95b1bb94a67790d3d62765c69769a6a6265c82b>`_ `BUG-6759 <https://bugs.opendaylight.org/show_bug.cgi?id=6759>`_: Fix NPE when request for expired mapping
* `0e94ae <https://git.opendaylight.org/gerrit/#/q/0e94aee5a0e3bab17e4d102d974084f6d6e0db6c>`_ `BUG-6754 <https://bugs.opendaylight.org/show_bug.cgi?id=6754>`_: Add serializer for IPv6 prefix SimpleAddress
* `8d605d <https://git.opendaylight.org/gerrit/#/q/8d605db7c8710066d6d26c3cd33843ec0c5844c5>`_ Add OOR conf files in tutorial
* `238406 <https://git.opendaylight.org/gerrit/#/q/2384066cb283579e3f61eb8ea1e4a460d68ee3c1>`_ Fix RESTCONF collection for delete IPv4 Key call.

MD-SAL
------
* `67197e <https://git.opendaylight.org/gerrit/#/q/67197eaaa42b6501917e0dfa59e815bc6994b2a9>`_ `BUG-7009 <https://bugs.opendaylight.org/show_bug.cgi?id=7009>`_: fix invalid model
* `999641 <https://git.opendaylight.org/gerrit/#/q/9996417cb9569e39e2aed4a82a9b69a2fc9ab583>`_ Remove augmentableToAugmentations maps
* `6f071d <https://git.opendaylight.org/gerrit/#/q/6f071d8474f75208e112f542d2759147889fe978>`_ Clean up apparently dead (and not thread safe) code
* `efc5ff <https://git.opendaylight.org/gerrit/#/q/efc5fff4e5e7a52821bb44eb6f8cdab772897024>`_ `BUG-5561 <https://bugs.opendaylight.org/show_bug.cgi?id=5561>`_: retain SchemaContext order for bits
* `d07e90 <https://git.opendaylight.org/gerrit/#/q/d07e90fde95e989da40376771b8e96abdffddfa8>`_ Convert to using BatchedListenerInvoker
* `f17c5a <https://git.opendaylight.org/gerrit/#/q/f17c5ab39d43de758c3f3c7bd642d7fa436a6983>`_ Move transaction-invariants into producer
* `7723a3 <https://git.opendaylight.org/gerrit/#/q/7723a349513ae47974fa014586e887cc731f69ce>`_ Add cursor lookup fast-path
* `e47199 <https://git.opendaylight.org/gerrit/#/q/e47199a976bce4ed4949b840f7aaf175253ec144>`_ Fix a raw type warning
* `13ed3b <https://git.opendaylight.org/gerrit/#/q/13ed3bf48711e76a4e2bd2b277d12e557ade02b6>`_ Fix raw types
* `d49ac5 <https://git.opendaylight.org/gerrit/#/q/d49ac5a3f5512614b3b0c2c5c25ae5f940f47dec>`_ Make sure we optimize DOMDataTreeIdentifier
* `fb75a6 <https://git.opendaylight.org/gerrit/#/q/fb75a602fddfdbbb97c10596c632b25f79096bb0>`_ Do not allow transaction creation with an empty shard map.
* `9d2575 <https://git.opendaylight.org/gerrit/#/q/9d2575e58dc95a35ea097dd95453b45a3e33063c>`_ Remove public keyword
* `c182e1 <https://git.opendaylight.org/gerrit/#/q/c182e1d32720044c42a187725e5effc57313b31d>`_ Encapsulate ShardedDOMDataTreeProducer layout
* `7452aa <https://git.opendaylight.org/gerrit/#/q/7452aa04ddc0b919c768efc454cd5e2493a1c276>`_ Fix warnings in AbstractDOMShardTreeChangePublisher
* `3653b3 <https://git.opendaylight.org/gerrit/#/q/3653b34fe4de5af40a9f9c99dc50c72775794f0a>`_ Do not instantiate iterator for debugging
* `1b1273 <https://git.opendaylight.org/gerrit/#/q/1b1273f401e6eb1e8a6216d4d6df2c0f03970d06>`_ Perform delegate cursor enter/exit first
* `23e32b <https://git.opendaylight.org/gerrit/#/q/23e32be97e2f7b5f98c779e6c3e992dd9da929d6>`_ Move lookup check
* `a2aa3d <https://git.opendaylight.org/gerrit/#/q/a2aa3dee79b0facf9b9e75d41378f5bb85894770>`_ Eliminate ShardedDOMDataTreeWriteTransaction.doSubmit()'s return
* `d64f50 <https://git.opendaylight.org/gerrit/#/q/d64f504392ed8348735d7c609022c7eebcd38d29>`_ Do not use entrySet() where values() or keySet() suffices
* `0b4eee <https://git.opendaylight.org/gerrit/#/q/0b4eee8d787f1c4871e6fc44047d6f5f89e22ba6>`_ Do not use ExecutorService unnecessarily
* `b143da <https://git.opendaylight.org/gerrit/#/q/b143dad18b24cf971beb360783bbd276f37378d8>`_ Use ImmutableMap instead of Collections.emptyMap()
* `41c7b4 <https://git.opendaylight.org/gerrit/#/q/41c7b41f761ff4c150a9e55455e8598e420ac984>`_ Speed up InmemoryDOMDataTreeShardWriteTransaction's operations
* `2ea7c1 <https://git.opendaylight.org/gerrit/#/q/2ea7c184fa28c47e390ea26ace13bbfd9a7868a3>`_ Switch to using StampedLock
* `11da30 <https://git.opendaylight.org/gerrit/#/q/11da30fa7af8ce1bd6c02798a4958e548146d185>`_ Remove mdsal-binding-util from features because it's only a pom file
* `5f693a <https://git.opendaylight.org/gerrit/#/q/5f693add15c8702d72e0018ef2d30af076a5e537>`_ Improve ShardedDOMDataTreeProducer locking
* `4c7bb2 <https://git.opendaylight.org/gerrit/#/q/4c7bb26126048b161f545ccc203b8bdb7d1b040f>`_ Improve ShardedDOMDataTreeProducer locking
* `6ffa81 <https://git.opendaylight.org/gerrit/#/q/6ffa8194f3ae4630f958bf4ab36c79709b951799>`_ Improve ShardedDOMDataTreeWriteTransaction performance
* `74425f <https://git.opendaylight.org/gerrit/#/q/74425faef2cc216605188e70e2d2916398d85301>`_ Optimize InMemoryDOMDataTreeShardProducer
* `dca009 <https://git.opendaylight.org/gerrit/#/q/dca009bba2d4ceb2e13537f3ac6f9a5f1b05302f>`_ Fix InMemory shard transaction chaining.
* `395348 <https://git.opendaylight.org/gerrit/#/q/395348596fcc6296e1a9ed0d9899b5aa16f08625>`_ Add batching of non-isolated transaction in ShardedDOMDataTreeProducer
* `c37d38 <https://git.opendaylight.org/gerrit/#/q/c37d38386002ed12b279938051813f99a4de70ff>`_ checkStyleViolationSeverity=error implemented for mdsal-dom-broker Resolved the merge conflicts. Implemented code review comments. Implemented another set of code review comments.
* `093b38 <https://git.opendaylight.org/gerrit/#/q/093b38a5c2a4f6ed8b015916e4765be29e3d51e2>`_ Use a bounded blocking queue in InmemoryDOMDataTreeShards.
* `41c34c <https://git.opendaylight.org/gerrit/#/q/41c34ca065881c748d1811b7ba6a5145ce6ed608>`_ checkStyleViolationSeverity=error implemented for mdsal-dom-inmemory-datastore Changed the local variable indVal to index. An unwanted folder was added accidentally, removed. Code review comments are implemented.

NETCONF
-------
* `c16afa <https://git.opendaylight.org/gerrit/#/q/c16afa5c7ee98c04a907e194b79c41258a53a63c>`_ Remove unused imports
* `b7c112 <https://git.opendaylight.org/gerrit/#/q/b7c112db4b2bf1d971c99e1e9bcc89d3d867d330>`_ Update netconf-topology-singleton.xml file formatting
* `38935a <https://git.opendaylight.org/gerrit/#/q/38935ab893a1c39b51d267c8ce81cfc371c21847>`_ Add serialVersionUID to all java.io.Serializable messages
* `a7f406 <https://git.opendaylight.org/gerrit/#/q/a7f406e41c52253d3e9e5cbdfed10ce77ba7c8be>`_ Add the RemoteDeviceId at the begining of the log
* `d4e0ec <https://git.opendaylight.org/gerrit/#/q/d4e0ecaeb1e2fae65e50b14b7270ded16cf2f6b2>`_ `BUG-6714 <https://bugs.opendaylight.org/show_bug.cgi?id=6714>`_ - Use singleton service in clustered netconf topology
* `07000c <https://git.opendaylight.org/gerrit/#/q/07000c2571eb3d437b3a48b4a241418b8e053947>`_ `BUG-6256 <https://bugs.opendaylight.org/show_bug.cgi?id=6256>`_ - OpenDaylight RESTCONF XML selects wrong YANG model for southbound NETCONF
* `1ebd12 <https://git.opendaylight.org/gerrit/#/q/1ebd12993444b186f84ae845f8c003bb80e72a0d>`_ Fix tests after merging Change 47121 to Yangtools
* `7999d7 <https://git.opendaylight.org/gerrit/#/q/7999d7d7f0eb0300df263f859b2010f157a0ca67>`_ `BUG-6272 <https://bugs.opendaylight.org/show_bug.cgi?id=6272>`_ - support RESTCONF PATCH for mounted NETCONF nodes
* `1ad4d5 <https://git.opendaylight.org/gerrit/#/q/1ad4d5b06c69ee20e72742e6ec4c7c7e97953fb3>`_ Add xml config dependency to features pom
* `08a3d1 <https://git.opendaylight.org/gerrit/#/q/08a3d1ab7f3110a520a93974ab86129853fe87b3>`_ `BUG-6023 <https://bugs.opendaylight.org/show_bug.cgi?id=6023>`_ - Adress for config subsystem netconf endpoint is not configurable
* `91be81 <https://git.opendaylight.org/gerrit/#/q/91be81c2b1f60a73f6baa1d2b5520c6e681c3b49>`_ `BUG-6936 <https://bugs.opendaylight.org/show_bug.cgi?id=6936>`_ - Fix post request
* `362ab0 <https://git.opendaylight.org/gerrit/#/q/362ab0db04c7a8431ee771fbf3df8e879a81296c>`_ Unit test for PostDataTransactionUtil class
* `c389ac <https://git.opendaylight.org/gerrit/#/q/c389acda66a92a03d358f1fa1340ec784c76e2b6>`_ Unit test for RestconfInvokeOperationsUtil class
* `a90a3e <https://git.opendaylight.org/gerrit/#/q/a90a3ea4d95712c6023e18c6842551ebff1b6d1e>`_ `BUG-5615 <https://bugs.opendaylight.org/show_bug.cgi?id=5615>`_ - Netconf connector update overwriting existing topology data
* `6d5c49 <https://git.opendaylight.org/gerrit/#/q/6d5c4984c04ea0e1f4ac345c921f039136e994b2>`_ `BUG-6848 <https://bugs.opendaylight.org/show_bug.cgi?id=6848>`_ - update url pattern of restconf from 16 to 17
* `054442 <https://git.opendaylight.org/gerrit/#/q/0544423b481d0d1a699175f3c62f1fed762a8169>`_ `BUG-6848 <https://bugs.opendaylight.org/show_bug.cgi?id=6848>`_ - repackage providers for jersey+create xml and json reader for restconf draft17
* `14efd6 <https://git.opendaylight.org/gerrit/#/q/14efd63caf23df80943613d16dadff144ae222bd>`_ `BUG-6848 <https://bugs.opendaylight.org/show_bug.cgi?id=6848>`_ - upgrade XML media type
* `2e946b <https://git.opendaylight.org/gerrit/#/q/2e946b43c88218c56861ce6282fb8e0e930c4425>`_ `BUG-6848 <https://bugs.opendaylight.org/show_bug.cgi?id=6848>`_ - upgrade namespace of notification container
* `3608c0 <https://git.opendaylight.org/gerrit/#/q/3608c04278804cc61c24d1eeaa552aa4d1a82b55>`_ `BUG-6848 <https://bugs.opendaylight.org/show_bug.cgi?id=6848>`_ - Renaming to draft17
* `d575fc <https://git.opendaylight.org/gerrit/#/q/d575fcc19692affa6a0677bbf48fd276552acef4>`_ Do a proper disconnect when deleting a connector.
* `efe5c7 <https://git.opendaylight.org/gerrit/#/q/efe5c7dfe820b42414e1dc3d433630d7059c673a>`_ `BUG-6099 <https://bugs.opendaylight.org/show_bug.cgi?id=6099>`_ - ControllerContext#addKeyValue ignores key type when key is derived type from instance-identifier
* `5db0cc <https://git.opendaylight.org/gerrit/#/q/5db0cc7926ff0f153ecfb2ef94413fa842856816>`_ `BUG-6797 <https://bugs.opendaylight.org/show_bug.cgi?id=6797>`_ - Fix deadlock on cached schema-changed notifications
* `11655d <https://git.opendaylight.org/gerrit/#/q/11655db49111c6d58fb44340563c0c4c63d88b84>`_ `BUG-6664 <https://bugs.opendaylight.org/show_bug.cgi?id=6664>`_ - upgrade draft15 to draft16 - change media types
* `b996bc <https://git.opendaylight.org/gerrit/#/q/b996bcb19480f327ae1568becebe0db8c783beff>`_ `BUG-6664 <https://bugs.opendaylight.org/show_bug.cgi?id=6664>`_ - upgrade draft15 to draft16 - renaming
* `1f5873 <https://git.opendaylight.org/gerrit/#/q/1f5873056667db3a8e13d2174d266aac755a4aa8>`_ Fix broken ApiDocGeneratorTest
* `0607c0 <https://git.opendaylight.org/gerrit/#/q/0607c0f4dd7ee388a9df962c664a6f11656b29ad>`_ `BUG-6343 <https://bugs.opendaylight.org/show_bug.cgi?id=6343>`_ - Incorrect handling of configuration failures in SAL netconf connector

NetIDE
------
* `464082 <https://git.opendaylight.org/gerrit/#/q/46408255fd98761c5a1ff3bfd280e5cfcab9a700>`_ `BUG-6812 <https://bugs.opendaylight.org/show_bug.cgi?id=6812>`_: Add fix to handing of NetIP protocol version

Network Virtualization
----------------------
* `815885 <https://git.opendaylight.org/gerrit/#/q/815885d9aabaf4fdf380c8ca3c1d5de9e845250d>`_ Fix for `BUG-7059 <https://bugs.opendaylight.org/show_bug.cgi?id=7059>`_
* `1ca70c <https://git.opendaylight.org/gerrit/#/q/1ca70c114f0f6d1d71d1b5951f27543362a40e39>`_ `BUG-7024 <https://bugs.opendaylight.org/show_bug.cgi?id=7024>`_: When router is associated to L3VPN , VRF entry creations takes long time
* `2ea687 <https://git.opendaylight.org/gerrit/#/q/2ea687bf15e9fc4eda20a8787a088e3100b16290>`_ `BUG-6089 <https://bugs.opendaylight.org/show_bug.cgi?id=6089>`_: Fix the wrong implementation for ICMPV6
* `e7917c <https://git.opendaylight.org/gerrit/#/q/e7917ce882886eb998aaab6ab48394a7dbc6ca8a>`_ `BUG-7031 <https://bugs.opendaylight.org/show_bug.cgi?id=7031>`_: Implement ping responder for router interfaces
* `56fe0c <https://git.opendaylight.org/gerrit/#/q/56fe0c97f63df280cbfeb89c848c4178e8062017>`_ `BUG-6476 <https://bugs.opendaylight.org/show_bug.cgi?id=6476>`_ : After configuring NAPT, table 26 and table 46 are not programmed
* `4793ff <https://git.opendaylight.org/gerrit/#/q/4793ff9f1b924000f398905e1c93a30ffe0f947d>`_ Changed the AsyncDataChangeListenerBase to AsyncDataTreeChangeListenerBase in the NAT reated files
* `f55516 <https://git.opendaylight.org/gerrit/#/q/f55516cfed80403b64e52982535d15532e2e29dc>`_ Fix missing init for VpnPseudoPortListener
* `594ad8 <https://git.opendaylight.org/gerrit/#/q/594ad80285cfbfdccc07fe0af36799df141c6fdd>`_ `BUG-6717 <https://bugs.opendaylight.org/show_bug.cgi?id=6717>`_ - Output to external network group entry is not installed on NAPT FIB table for new DPN
* `456698 <https://git.opendaylight.org/gerrit/#/q/456698965b2b62754d121c6cfe9864e60e62ef6b>`_ `BUG-6831 <https://bugs.opendaylight.org/show_bug.cgi?id=6831>`_: support for l3 directly connected subnet After the fix only  unique mac values will be stored in the vpn interface adjacency. This values will be used for the group programming. No duplicate groups will be created.
* `59afa8 <https://git.opendaylight.org/gerrit/#/q/59afa8ffc4774a56118c6e27fa0622c6df818e1b>`_ `BUG-6778 <https://bugs.opendaylight.org/show_bug.cgi?id=6778>`_ - VPN interface for external port is deleted when clearing router gw interface
* `3ec9cd <https://git.opendaylight.org/gerrit/#/q/3ec9cd8763a3b2ab656ab0f910e7de19980392b1>`_ `BUG-6395 <https://bugs.opendaylight.org/show_bug.cgi?id=6395>`_: Fixed the Problems in using ODL and neutron-l3-agent in Openstack
* `4297eb <https://git.opendaylight.org/gerrit/#/q/4297eb840fedd5c2a2d6f0ccfbccc65cf4a783dc>`_ `BUG-6089 <https://bugs.opendaylight.org/show_bug.cgi?id=6089>`_:Fix for TCP/UDP and ICMP communication between VM's using learn Action according to SG
* `eb448b <https://git.opendaylight.org/gerrit/#/q/eb448b3399f8f03d6189a84c1468bd9d6f129a43>`_ InterVpnLink cache
* `5366c3 <https://git.opendaylight.org/gerrit/#/q/5366c388d5bbaa5a0e488d1cb8593c04b80ac15d>`_ `BUG-6934 <https://bugs.opendaylight.org/show_bug.cgi?id=6934>`_: VpnPseudoPort flows not moved to a new DPN
* `8d24e4 <https://git.opendaylight.org/gerrit/#/q/8d24e4601f5e658875c16942f20c29c942fd6508>`_ `BUG-6863 <https://bugs.opendaylight.org/show_bug.cgi?id=6863>`_ - Router interfaces incorrectly include network interfaces
* `57a4b6 <https://git.opendaylight.org/gerrit/#/q/57a4b660c992188e9eb8faca29b015aa4e100236>`_ AclServiceTest with http://immutables.org "depluralize" option
* `acc05f <https://git.opendaylight.org/gerrit/#/q/acc05f6d04792693482f39538616eeb11dd51f01>`_ Cleanup: remove unnecessary boxing/unboxing
* `8919f8 <https://git.opendaylight.org/gerrit/#/q/8919f8808a8c4ba3e98a1d8b21af688e8e684964>`_ Cleanup: use Java 8 lambdas
* `29e541 <https://git.opendaylight.org/gerrit/#/q/29e541a8db119419a48362fa68c5f3602539fd99>`_ `BUG-6482 <https://bugs.opendaylight.org/show_bug.cgi?id=6482>`_: ERROR Log Observations - CSIT (Boron-Legacy)
* `e5fdbf <https://git.opendaylight.org/gerrit/#/q/e5fdbf28cc2260351ad38fa85d7def16dbfb5551>`_ Fixes `BUG-6909 <https://bugs.opendaylight.org/show_bug.cgi?id=6909>`_ ACLs TCP/UDP port ranges for the case of all ports 1-65535) should not use port masking at all
* `3b63e9 <https://git.opendaylight.org/gerrit/#/q/3b63e907762cfeab726f4a4f8b7dde56b51a6a7c>`_ fix learn security groups
* `4ee773 <https://git.opendaylight.org/gerrit/#/q/4ee7730fd2faffed407f8af4a5e156b71cd76749>`_ Arp cache feature changes
* `69affd <https://git.opendaylight.org/gerrit/#/q/69affdb36ff44a763b5bc8456e7c20e1c6a7ffa9>`_ `BUG-6643 <https://bugs.opendaylight.org/show_bug.cgi?id=6643>`_ fixed broken l2gw functionality
* `001624 <https://git.opendaylight.org/gerrit/#/q/0016249d09f948a81cd06139078be42452681929>`_ `BUG-6816 <https://bugs.opendaylight.org/show_bug.cgi?id=6816>`_: NAT breakage fix for GRE provider type
* `8607b7 <https://git.opendaylight.org/gerrit/#/q/8607b793b0f3dbcc2ae59b01e1ac2c936e93b74a>`_ `BUG-6831 <https://bugs.opendaylight.org/show_bug.cgi?id=6831>`_: Retain subnetroute with l3 directly-connected subnet
* `8b8b63 <https://git.opendaylight.org/gerrit/#/q/8b8b639e41102bd9def28fbccc3240d552c95f80>`_ `BUG-6843 <https://bugs.opendaylight.org/show_bug.cgi?id=6843>`_ :  NPE in router-add leading to failure of router related cases
* `7c8e2e <https://git.opendaylight.org/gerrit/#/q/7c8e2ec28f95102fe8e30d8326c3087a7aa04246>`_ `BUG-6779 <https://bugs.opendaylight.org/show_bug.cgi?id=6779>`_ -After a Cluster Reboot, 10 VPNintfs seen
* `01f9ab <https://git.opendaylight.org/gerrit/#/q/01f9ab874eb2d138115de1a039dcc885a61874fb>`_ `BUG-6824 <https://bugs.opendaylight.org/show_bug.cgi?id=6824>`_ - floating IP rules deleted upon unrelated neutron port delete
* `44f658 <https://git.opendaylight.org/gerrit/#/q/44f658aa53ea25cf44ba451d05478b6c3b6516ac>`_ Increase AclServiceTest coverage significantly (from 66% to 84%)
* `104259 <https://git.opendaylight.org/gerrit/#/q/10425903f028d1ed8c7c13b5dc192d75da17637f>`_ `BUG-6923 <https://bugs.opendaylight.org/show_bug.cgi?id=6923>`_ - sfc-translation-layer : OVS data path locator options (nsp,nsi,nshc*) are not required.
* `58a846 <https://git.opendaylight.org/gerrit/#/q/58a8460482cb02b6dd59b68ea39b73ffb0312ecd>`_ `BUG-6922 <https://bugs.opendaylight.org/show_bug.cgi?id=6922>`_ - sfc-translation-layer : Do not explictly set RSP name
* `3e7fcd <https://git.opendaylight.org/gerrit/#/q/3e7fcda20b01066e80ac458ba18a868c0200edf6>`_ `BUG-6921 <https://bugs.opendaylight.org/show_bug.cgi?id=6921>`_ - SFC-Translation-Layer : Skip acl classifier write before chain creation
* `48fc20 <https://git.opendaylight.org/gerrit/#/q/48fc2005dc6018fbe7420ff8941b774d017f3810>`_ `BUG-6395 <https://bugs.opendaylight.org/show_bug.cgi?id=6395>`_: Fixed the Problems in using ODL and neutron-l3-agent in Openstack
* `54d0ee <https://git.opendaylight.org/gerrit/#/q/54d0eec0231e1d9f1860c948ed2b6deab7ed6d94>`_ `BUG-6920 <https://bugs.opendaylight.org/show_bug.cgi?id=6920>`_ : Fix for ACL portSecurityUpdate to work with DjC + listed fixes
* `b75028 <https://git.opendaylight.org/gerrit/#/q/b750282f61ea83f129d26dde33598c316ccb732f>`_ De-static-ify aclservice utility classes methods and fields
* `3818f1 <https://git.opendaylight.org/gerrit/#/q/3818f178152dcb51b537a403dc65a738e2380999>`_ aclservice end-to-end test, with a bunch of cool new patterns
* `4c4488 <https://git.opendaylight.org/gerrit/#/q/4c4488fd4f5e409636d259d1d797fd84e751814f>`_ Remove unneeded alivenessmonitor-xml css dependency
* `785cad <https://git.opendaylight.org/gerrit/#/q/785cad3f8e64f44c8af0e28739a81e0592318a8a>`_ `BUG-6474 <https://bugs.opendaylight.org/show_bug.cgi?id=6474>`_ : Fixed the issue when using ODL with VXLAN Gateway
* `83f1d4 <https://git.opendaylight.org/gerrit/#/q/83f1d4a69103398768ec47c5c733d27941886933>`_ Add clear ping status
* `e02b38 <https://git.opendaylight.org/gerrit/#/q/e02b38699762c04f5e5444c6687bf291a47f0236>`_ Fix BROKEN aclservice listeners
* `d4e1ca <https://git.opendaylight.org/gerrit/#/q/d4e1ca7c82096c996cf8a3abc100df41cb6fb481>`_ Fixes logging exceptions, plus few formatting changes
* `0a2af8 <https://git.opendaylight.org/gerrit/#/q/0a2af8745b1864e16e7fae77d7c0d23909375c98>`_ Drop Maven prerequisite
* `759bea <https://git.opendaylight.org/gerrit/#/q/759bea88641384f4528fd2a444bf91392e48929d>`_ ipv6: Use versions from odlparent
* `2199c7 <https://git.opendaylight.org/gerrit/#/q/2199c77dd644665e541519df53702d642443694c>`_ Remove duplicate lockmanager bean
* `82979d <https://git.opendaylight.org/gerrit/#/q/82979d774100da133a0fcc08dedac73fec3b4632>`_ Modification cloud-servicechain-state.yang key
* `28597f <https://git.opendaylight.org/gerrit/#/q/28597f914e3fb31e89b1e9adbf2a8d1ea37bf889>`_ `BUG-6861 <https://bugs.opendaylight.org/show_bug.cgi?id=6861>`_ : Fix for proper tableId in punt action
* `e9160f <https://git.opendaylight.org/gerrit/#/q/e9160fb939656fe970e5a696b8146354ceae7503>`_ Clean up logging tests
* `f39b5a <https://git.opendaylight.org/gerrit/#/q/f39b5a2759d1bec088f80a75b6d34a1b0324bead>`_ `BUG-6841 <https://bugs.opendaylight.org/show_bug.cgi?id=6841>`_: Few Remote flows not deleted on DPNs
* `9d0dda <https://git.opendaylight.org/gerrit/#/q/9d0ddaee0460889594edd317a4acbf9846d4b5d8>`_ `BUG-6840 <https://bugs.opendaylight.org/show_bug.cgi?id=6840>`_: New karaf CLI commands
* `19b1d3 <https://git.opendaylight.org/gerrit/#/q/19b1d30f9cbd249e035edbb5b4b831bae399da5c>`_ Fixes bgpmanager-api folder structure
* `98d6cb <https://git.opendaylight.org/gerrit/#/q/98d6cba6ae0604deba1e04320de8d6e743c1b2d1>`_ `BUG-6589 <https://bugs.opendaylight.org/show_bug.cgi?id=6589>`_ adding support for hwvtep devices ha
* `f8921c <https://git.opendaylight.org/gerrit/#/q/f8921cf2d8879ba65d4f258389f8d15e2c7dceb9>`_ `BUG-6842 <https://bugs.opendaylight.org/show_bug.cgi?id=6842>`_ :  Incorrect error msg upon associating router to VPN with non-existing VPN-ID
* `b71f78 <https://git.opendaylight.org/gerrit/#/q/b71f78d0e1cab42281c08dc382d38c7f763ac79e>`_ `BUG-6823 <https://bugs.opendaylight.org/show_bug.cgi?id=6823>`_ : Performance improvement in DHCP
* `edba2b <https://git.opendaylight.org/gerrit/#/q/edba2b1db1729d5d42eef89910069db759467595>`_ `BUG-6770 <https://bugs.opendaylight.org/show_bug.cgi?id=6770>`_ - Fixes DjC for NPortCL + snmaps serialized + listed changes
* `f683c3 <https://git.opendaylight.org/gerrit/#/q/f683c3f0ecf6e3cfeafc7655665e57a7290b1590>`_ `BUG-6825 <https://bugs.opendaylight.org/show_bug.cgi?id=6825>`_:- "BgpManager not started" error when trying to configure Bgp peer For commands class, bgpmanager not supplied as parameter
* `4eb05b <https://git.opendaylight.org/gerrit/#/q/4eb05bdded8a75b8d522ded20b5485d8ca0065a6>`_ BGP-configuration read is failing as shard leader is not available implemeted retry mechanism in bgp-get-config (100Seconds) for MDSAL read
* `76abf7 <https://git.opendaylight.org/gerrit/#/q/76abf770d37ea82153a2a13cd76bd77a7412b0e0>`_ fix whitespace
* `93d86e <https://git.opendaylight.org/gerrit/#/q/93d86e9930027ddeb3b294f4fbaec209ed4a326d>`_ modified stale route cleanup timer to 600Sec, in case nothing configured. enabled route removal on stale-path timer expiry
* `a5f5de <https://git.opendaylight.org/gerrit/#/q/a5f5de9b604e589c5b1cefaf07aadb562897f8ec>`_ minor fixes related to BGP - command output: F-bit always set to true and fetch Stale-path time from config,       show GR-stalepathTime as default in case not-configured.
* `cc5d42 <https://git.opendaylight.org/gerrit/#/q/cc5d42f4d2eab48d25df06fcca58f80a74902033>`_ set FBIT for bgp to true (always), as we expect to keep the forwarding state (of CSS) eventhough the controller goes down.
* `b715b9 <https://git.opendaylight.org/gerrit/#/q/b715b91a593be571f5b2b5a79c25e1cd8601cbba>`_ BGP networks update callback is triggered even if the content remain same Fix: On Update callback, verify old and new values and act on it
* `81ae16 <https://git.opendaylight.org/gerrit/#/q/81ae1614ecfb1d04c1de89902bad6c28fab0d90e>`_ `BUG-6839 <https://bugs.opendaylight.org/show_bug.cgi?id=6839>`_: Fixes for import/export RT and router dissociation in L3Vpn
* `dbd173 <https://git.opendaylight.org/gerrit/#/q/dbd173f75c618f2439ed37042009c11eb9c63662>`_ `BUG-6673 <https://bugs.opendaylight.org/show_bug.cgi?id=6673>`_: DCN to DTCN changes
* `58abb3 <https://git.opendaylight.org/gerrit/#/q/58abb3d30903161c7c41343df335ea15951c95dc>`_ `BUG-6725 <https://bugs.opendaylight.org/show_bug.cgi?id=6725>`_: fix contains below issues
* `e66046 <https://git.opendaylight.org/gerrit/#/q/e66046ce3e804a4ced4c3d4bc88ff6bb0bb44134>`_ `BUG-6446 <https://bugs.opendaylight.org/show_bug.cgi?id=6446>`_: Concurrency changes related to NeutronPortChangeListener
* `35e7c6 <https://git.opendaylight.org/gerrit/#/q/35e7c655203a355afdf9f64175599fc6da002781>`_ `BUG-6668 <https://bugs.opendaylight.org/show_bug.cgi?id=6668>`_ -  Security Groups (all implementations) - port_security extension and default DHCP/ICMP drop rules
* `5a158d <https://git.opendaylight.org/gerrit/#/q/5a158ded632798bc607dea282be9b708c2cd803f>`_ `BUG-6831 <https://bugs.opendaylight.org/show_bug.cgi?id=6831>`_: support for l3 directly connected subnet
* `e2f944 <https://git.opendaylight.org/gerrit/#/q/e2f94444492f76240b12421e1d1fa815d2f24a5f>`_ Flow Entries to match ARP packets in GwMacTable(19)
* `aa8246 <https://git.opendaylight.org/gerrit/#/q/aa82462012880009a07e55143a73d8f877ab57ef>`_ `BUG-6721 <https://bugs.opendaylight.org/show_bug.cgi?id=6721>`_: first few ping requests to a floating IP are receiving multiple responses
* `94efae <https://git.opendaylight.org/gerrit/#/q/94efae87c009cdb7c63bb8113bb1676326a0c1e1>`_ `BUG-6773 <https://bugs.opendaylight.org/show_bug.cgi?id=6773>`_: Floating IP response answered from all
* `f58d8b <https://git.opendaylight.org/gerrit/#/q/f58d8b74fbc21006af654269dbbfd9a83c833d98>`_ Performs a residual cleanup of ElanPseudoPort flows
* `fd8fd4 <https://git.opendaylight.org/gerrit/#/q/fd8fd45bf4116690e995ac971937ebfb7b6d1c82>`_ `BUG-6758 <https://bugs.opendaylight.org/show_bug.cgi?id=6758>`_: Remove inter-VPN link state even if error
* `57d40e <https://git.opendaylight.org/gerrit/#/q/57d40e3682d2972767bea3756868f26b98d35f45>`_ `BUG-6673 <https://bugs.opendaylight.org/show_bug.cgi?id=6673>`_ : DCN to DTCN Changes for various modules
* `adc66f <https://git.opendaylight.org/gerrit/#/q/adc66f76004a3100862e7a16640dd8fdea4f3e24>`_ `BUG-6691 <https://bugs.opendaylight.org/show_bug.cgi?id=6691>`_: Fix exceptions in natservice for a dual-stack network
* `e13013 <https://git.opendaylight.org/gerrit/#/q/e130135709d36e3edb5709e4a68e774200b16af7>`_ `BUG-6089 <https://bugs.opendaylight.org/show_bug.cgi?id=6089>`_: Fix for communication between VM's according to SG.
* `e98862 <https://git.opendaylight.org/gerrit/#/q/e988624b46844df89a30a20dc8756755ae9f5724>`_ Thrift interface changes to support EVPN operations over Quagga BGP stack
* `e2e329 <https://git.opendaylight.org/gerrit/#/q/e2e32923acc7654681eaef7468d7df89001e10f3>`_ `BUG-6716 <https://bugs.opendaylight.org/show_bug.cgi?id=6716>`_:Fix NPE in NeutronvpnNatManager
* `033052 <https://git.opendaylight.org/gerrit/#/q/0330521d33997ce7404a08b333290b54259b2b59>`_ Mask IPv6Prefix in ACL flows
* `28d2f3 <https://git.opendaylight.org/gerrit/#/q/28d2f3ad106e9906de4b1114cec4ee1cc82f8fdf>`_ `BUG-6589 <https://bugs.opendaylight.org/show_bug.cgi?id=6589>`_ adding support for hwvtep devices ha
* `d2e1ad <https://git.opendaylight.org/gerrit/#/q/d2e1adc41ad0733df78a01e3b17c1e3eb12d8328>`_ bgp logging fixes
* `9c217e <https://git.opendaylight.org/gerrit/#/q/9c217eea2ffd252fd62a233d639c43f05f26b85b>`_ aclservice-impl Listener without dumb @PreDestroy super.close()
* `863fd2 <https://git.opendaylight.org/gerrit/#/q/863fd2de327746001ed3ddb26855e8b4b985c87a>`_ Fix WARNING when port is updated with allowed_address_pairs
* `749762 <https://git.opendaylight.org/gerrit/#/q/749762b2d7e6796c5b5e6a6529d4f2d996d5185c>`_ Fix 6693 -DHCP Server responds to DHCP requests punted from its table(60) only -DHCP server should not run at all when the controller-dhcp-enabled flag is false
* `a3d16b <https://git.opendaylight.org/gerrit/#/q/a3d16bac4ec2eb03a9fb129533e89c5b37be7eb6>`_ `BUG-6708 <https://bugs.opendaylight.org/show_bug.cgi?id=6708>`_ Neighbor NAPT switches group table buckets remain empty Fix race by triggering NAPT neighbor group table update upon tunnel interface state addition
* `e9c655 <https://git.opendaylight.org/gerrit/#/q/e9c6555dea76b6db3c439416d0ebf7af9d6994f8>`_ `BUG-6727 <https://bugs.opendaylight.org/show_bug.cgi?id=6727>`_ ExternalRouterListener ignore multiple routers implementation
* `f41a80 <https://git.opendaylight.org/gerrit/#/q/f41a802a367624aeccc6cda96107bb019a012a89>`_ `BUG-6628 <https://bugs.opendaylight.org/show_bug.cgi?id=6628>`_ - DMAC for L3 entities flows installation only after reversal
* `a303b5 <https://git.opendaylight.org/gerrit/#/q/a303b57fbcc154594f00c9439fe354e058c7ee60>`_ Fix wiring issue in openstack.sfc-translator-impl
* `eea48c <https://git.opendaylight.org/gerrit/#/q/eea48ce55790b5a4df9bb2b5cb61521595fd1d99>`_ `BUG-6741 <https://bugs.opendaylight.org/show_bug.cgi?id=6741>`_: eth1 flows on table 0 are missing from d2 ovs
* `307a1e <https://git.opendaylight.org/gerrit/#/q/307a1ecccb56d686d72fa3a7dddbbefd1a15cec7>`_ `BUG-6707 <https://bugs.opendaylight.org/show_bug.cgi?id=6707>`_ - FIB table rules are not created when DPNTEPInfo is not available
* `d88d71 <https://git.opendaylight.org/gerrit/#/q/d88d717924c6efbc72ec8d33f2a58e0e780455bf>`_ `BUG-6732 <https://bugs.opendaylight.org/show_bug.cgi?id=6732>`_: ARP Replies Intermittent for Floating IP Addresses
* `047979 <https://git.opendaylight.org/gerrit/#/q/047979394229d2e4230d441d79e9b73d18034f98>`_ `BUG-6690 <https://bugs.opendaylight.org/show_bug.cgi?id=6690>`_ - when mixing dpdk & non-dpdk OVS with the same ODL no way to configure different datapath types
* `3a57d5 <https://git.opendaylight.org/gerrit/#/q/3a57d5b30dccb2bbd513d638110d3a5a8adf3e27>`_ `BUG-6742 <https://bugs.opendaylight.org/show_bug.cgi?id=6742>`_ FloatingIPHanlder should use the external interface-name
* `ded594 <https://git.opendaylight.org/gerrit/#/q/ded594be46dc79ce3df2428e7ddfe5bee8ca4484>`_ `BUG-6756 <https://bugs.opendaylight.org/show_bug.cgi?id=6756>`_: Fix related to missing ACL flows
* `3e2f52 <https://git.opendaylight.org/gerrit/#/q/3e2f523f15c53cc9b2216f6987d9389192f90a91>`_ `BUG-6748 <https://bugs.opendaylight.org/show_bug.cgi?id=6748>`_: ACL mechanism uses reg5 instead of reg6.
* `dbedee <https://git.opendaylight.org/gerrit/#/q/dbedeebab3ba6103daa6c4a9d04e5686f059f250>`_ Fixes default SG remote groups rules. 1))Remote default SG rules are not added with Ip addres asn same is fixed 2)Flow id is fixed for ipv4 and ipv6 rules.
* `5a1ae8 <https://git.opendaylight.org/gerrit/#/q/5a1ae835eb5b6711032e57e5f80159c91344c98a>`_ `BUG-6752 <https://bugs.opendaylight.org/show_bug.cgi?id=6752>`_: DHCP service is not bound
* `837ac6 <https://git.opendaylight.org/gerrit/#/q/837ac6023a0d701e4fa89e580479fa1119b653f3>`_ aclservice-impl use infrautils AbstractLifecycle
* `68766e <https://git.opendaylight.org/gerrit/#/q/68766e46584bed36dff7613a80ca9a11268b3eb1>`_ `BUG-6452 <https://bugs.opendaylight.org/show_bug.cgi?id=6452>`_: Error logs when deleting neutron network
* `fd9b21 <https://git.opendaylight.org/gerrit/#/q/fd9b211569b9456bde0f0d229376d57c7f2b3eec>`_ aclservice AclInterfaceStateListener update() TODO replace with comment
* `0c7c0a <https://git.opendaylight.org/gerrit/#/q/0c7c0a96d387ce190d520e38be625f4070c674a2>`_ `BUG-6677 <https://bugs.opendaylight.org/show_bug.cgi?id=6677>`_: Create ext-routers when a router is created with ext-gw
* `9feab4 <https://git.opendaylight.org/gerrit/#/q/9feab4746b86f44a17a34106ee6abf62c685eba5>`_ `BUG-6687 <https://bugs.opendaylight.org/show_bug.cgi?id=6687>`_: Fix NPE when updating ExternalNetwork
* `1876ba <https://git.opendaylight.org/gerrit/#/q/1876ba3f89017727d435495cd67d1fbc9e484140>`_ `BUG-6688 <https://bugs.opendaylight.org/show_bug.cgi?id=6688>`_ - Patch port is not correctly associated to ELAN
* `3f99ad <https://git.opendaylight.org/gerrit/#/q/3f99ad50a6cf88cfe770751dfd59155067fe7e29>`_ Code for myMAC in the L3VPN pipeline
* `9ff1e5 <https://git.opendaylight.org/gerrit/#/q/9ff1e57b509e3db557004925963c274cc186d80e>`_ `BUG-6666 <https://bugs.opendaylight.org/show_bug.cgi?id=6666>`_: Making sure no 0 datapathID is used when adding interfaces to the model, and when the node updated with the datapathID, create the relevant interfaces
* `80ccfd <https://git.opendaylight.org/gerrit/#/q/80ccfd380f2a8244c85b9c7631c48760c87c3959>`_ `BUG-6628 <https://bugs.opendaylight.org/show_bug.cgi?id=6628>`_ - Handling missing router entities DMAC table flows
* `b3d85d <https://git.opendaylight.org/gerrit/#/q/b3d85d4e9dff599ef7f0fc67295dde3c54a42c17>`_ Support multiple routers per external GW
* `4a0531 <https://git.opendaylight.org/gerrit/#/q/4a0531a3c5dada4d5b5f93db8f60fd8a5fd4b383>`_ Fix bad design of AclClusterUtil to make it pluggable for e2e tests
* `ee219d <https://git.opendaylight.org/gerrit/#/q/ee219d6c23f6ca0f9c781bc471ca243ee73a2255>`_ `BUG-6609 <https://bugs.opendaylight.org/show_bug.cgi?id=6609>`_: when 2 vm belonging to the same NETWORK/SUBNET get created in different COMOUTE NODE - ping between those 2 did not work

Neutron Northbound
------------------
* `21ae38 <https://git.opendaylight.org/gerrit/#/q/21ae385a48dfa07a55bd006f204ad32e92fb2b53>`_ `BUG-6865 <https://bugs.opendaylight.org/show_bug.cgi?id=6865>`_ - Transcriber skips the uppercase protocol field
* `7ac89e <https://git.opendaylight.org/gerrit/#/q/7ac89e09352af7a786d51fec71999b07d0e1bba8>`_ `BUG-6736 <https://bugs.opendaylight.org/show_bug.cgi?id=6736>`_: Fix incorrect destination ip prefix value

ODL Root Parent
---------------
* `597e62 <https://git.opendaylight.org/gerrit/#/q/597e622c5da9ffa5fb6c5863a2a579f6fca68ca1>`_ Disable stack trace trimming
* `7d99fd <https://git.opendaylight.org/gerrit/#/q/7d99fd11c424f12df42c87da103958eb0861afad>`_ Copy in supporting bouncycastle PKIX/CMS/EAC/PKCS/OCSP/TSP/OPENSSL packages
* `817ade <https://git.opendaylight.org/gerrit/#/q/817ade40845eae9d639153f27bc3631879d7c350>`_ `BUG-6790 <https://bugs.opendaylight.org/show_bug.cgi?id=6790>`_: use non-blocking /dev/urandom
* `6125cd <https://git.opendaylight.org/gerrit/#/q/6125cd25918e065d3b5d6094cf32e4c0b74ae439>`_ `BUG-6712 <https://bugs.opendaylight.org/show_bug.cgi?id=6712>`_: fix bin/shell's classpath

OVSDB Integration
-----------------
* `18c226 <https://git.opendaylight.org/gerrit/#/q/18c22618faced8388b69e0cd4a52b00c58ed3276>`_ `BUG-6851 <https://bugs.opendaylight.org/show_bug.cgi?id=6851>`_ fix: handling OtherConfig column clear
* `2c79ca <https://git.opendaylight.org/gerrit/#/q/2c79cabee925f967f920648b277c3d44e7db1b92>`_ `BUG-6692 <https://bugs.opendaylight.org/show_bug.cgi?id=6692>`_: don't mock Optional
* `9ee9ec <https://git.opendaylight.org/gerrit/#/q/9ee9ec144ed57c7dec08c0687dc751a15a528753>`_ `BUG-6692 <https://bugs.opendaylight.org/show_bug.cgi?id=6692>`_: remove InstanceIdentifierCodec instance from SBU
* `ff745e <https://git.opendaylight.org/gerrit/#/q/ff745eeb5227af7157929e622d9d661d23408ffb>`_ Change cipher suites for SSL connection
* `31f29c <https://git.opendaylight.org/gerrit/#/q/31f29cbc4a6262917469d32cca2f0717eca5d487>`_ `BUG-6854 <https://bugs.opendaylight.org/show_bug.cgi?id=6854>`_: remove unnecessary generics from OVSDB schema classes
* `1ffd3c <https://git.opendaylight.org/gerrit/#/q/1ffd3cab9cdc2e363f4b2e6c5569d2ef54486e9b>`_ `BUG-5995 <https://bugs.opendaylight.org/show_bug.cgi?id=5995>`_: remove org.json
* `bca1f7 <https://git.opendaylight.org/gerrit/#/q/bca1f7cd05ea23194b197257a3ca6f2d5783a455>`_ `BUG-6692 <https://bugs.opendaylight.org/show_bug.cgi?id=6692>`_: use non-deprecated firstKeyOf() variant
* `194a08 <https://git.opendaylight.org/gerrit/#/q/194a08cf62f33523e62cdd43c8e6f081399514a0>`_ `BUG-6692 <https://bugs.opendaylight.org/show_bug.cgi?id=6692>`_: improve TyperUtils tests (first pass)
* `41c08b <https://git.opendaylight.org/gerrit/#/q/41c08b1c8b04614d6b6b31aba0f81ec7e2101297>`_ Fixed inappropriate WARN message.
* `46366f <https://git.opendaylight.org/gerrit/#/q/46366fcad259124e42b7422f78c45a67cbcadf44>`_ `BUG-6692 <https://bugs.opendaylight.org/show_bug.cgi?id=6692>`_: clean up MonitorRequestBuilder
* `43b759 <https://git.opendaylight.org/gerrit/#/q/43b759881437b15676538bf5255517d819f02f17>`_ Clean up SouthboundConstants
* `aa1893 <https://git.opendaylight.org/gerrit/#/q/aa189319f0c80ea9d3227815e2c8095da73803f6>`_ Fix clear bug related to "num" in JSON Node

OpenFlow Plugin
---------------
* `d2ad11 <https://git.opendaylight.org/gerrit/#/q/d2ad11ee8d25733be58b740c7259b36eb5c250ac>`_ Fix direct statistics
* `ff2b50 <https://git.opendaylight.org/gerrit/#/q/ff2b50f49c0f28c14bd848928078b986919d459b>`_ Fix flow matching function
* `a3e97a <https://git.opendaylight.org/gerrit/#/q/a3e97a1f137b7a30851fc6e18972bf4c9e49f4ef>`_ Remove RoleManager and RoleContext
* `e8c17a <https://git.opendaylight.org/gerrit/#/q/e8c17a4317b95c7c5dae9c5ad3d26a8c5a88c013>`_ `BUG-6890 <https://bugs.opendaylight.org/show_bug.cgi?id=6890>`_: Edit to cfg file reflecting that statistics collection is turned on by default
* `0641dc <https://git.opendaylight.org/gerrit/#/q/0641dc3ed62f5264ddca2c9f70d62f8cd64be34e>`_ `BUG-6890 <https://bugs.opendaylight.org/show_bug.cgi?id=6890>`_:
* `7f05ed <https://git.opendaylight.org/gerrit/#/q/7f05ed115fe006111356ee1b55d180c2e82d0b82>`_ `BUG-6930 <https://bugs.opendaylight.org/show_bug.cgi?id=6930>`_ Notiifcation-suppliers was broken
* `ee3af8 <https://git.opendaylight.org/gerrit/#/q/ee3af80a232be72af5faeb893c185fba22e87eeb>`_ `BUG-6890 <https://bugs.opendaylight.org/show_bug.cgi?id=6890>`_: Updated the cfg file with detailed description of usage
* `c7e373 <https://git.opendaylight.org/gerrit/#/q/c7e373ced437c006452f35a71d78ecdd6671ba2a>`_ `BUG-6890 <https://bugs.opendaylight.org/show_bug.cgi?id=6890>`_: Enabling statistics collection through a config parameter in openflowplugin.cfg
* `983cb0 <https://git.opendaylight.org/gerrit/#/q/983cb09d49b5b5bc91cf16761c986e2467b08cfa>`_ `BUG-6890 <https://bugs.opendaylight.org/show_bug.cgi?id=6890>`_: Enabling echo timout configurable through config file
* `e1d998 <https://git.opendaylight.org/gerrit/#/q/e1d99863374af8594f296b39cc26962f9a3cabe9>`_ `BUG-6890 <https://bugs.opendaylight.org/show_bug.cgi?id=6890>`_: Enabling barrier configurability through cfg file
* `37cdc5 <https://git.opendaylight.org/gerrit/#/q/37cdc51b6d2576f20c34c2599edd2450bbb1ddbb>`_ Optimize LLDP packet check
* `a6fece <https://git.opendaylight.org/gerrit/#/q/a6fecefa8e6bc1349af38760ea1ab7b75bd7370d>`_ `BUG-6745 <https://bugs.opendaylight.org/show_bug.cgi?id=6745>`_ SimplifiedOperationalListener optimation
* `4e32df <https://git.opendaylight.org/gerrit/#/q/4e32dfa5a37728be87d4410d0c8ffd850735f830>`_ `BUG-6745 <https://bugs.opendaylight.org/show_bug.cgi?id=6745>`_ Do not skip first data for reconciliation
* `4eca5f <https://git.opendaylight.org/gerrit/#/q/4eca5f950c57b467a175e254062b83caff661556>`_ Create SemaphoreKeeper inside decorators
* `82b167 <https://git.opendaylight.org/gerrit/#/q/82b1671fb718bbf5b6a18761c41ce8f8be2e2898>`_ `BUG-6745 <https://bugs.opendaylight.org/show_bug.cgi?id=6745>`_ Improve compression queue locking and handle InterruptedException
* `1dd929 <https://git.opendaylight.org/gerrit/#/q/1dd9291cbd748c1eca5678f00a497cec1f1f9cf3>`_ Add finals and move thread name constant to provider
* `be6a07 <https://git.opendaylight.org/gerrit/#/q/be6a071a6ea167f144307755ff20909ebb4cef91>`_ `BUG-6745 <https://bugs.opendaylight.org/show_bug.cgi?id=6745>`_ Set compression semaphore to fair
* `4bc17c <https://git.opendaylight.org/gerrit/#/q/4bc17cdd66b71a4fbf95cd032e31aeb52ac366aa>`_ `BUG-6745 <https://bugs.opendaylight.org/show_bug.cgi?id=6745>`_ Do not ignore syncup return value
* `a2299a <https://git.opendaylight.org/gerrit/#/q/a2299a1d768815eb29f37c54f6512cbe75ac85ed>`_ `BUG-6745 <https://bugs.opendaylight.org/show_bug.cgi?id=6745>`_ Remove thread renaming and unnecessary logging
* `2b99a1 <https://git.opendaylight.org/gerrit/#/q/2b99a1082a4a6cd6fd987a863a7c431ef92ce8bc>`_ `BUG-6745 <https://bugs.opendaylight.org/show_bug.cgi?id=6745>`_ Fix replacing in compression queue
* `0d0777 <https://git.opendaylight.org/gerrit/#/q/0d0777a182dc880cddaa376b0f99e013359c3edc>`_ Write SwitchFeatures to operational datastore
* `bb1ea2 <https://git.opendaylight.org/gerrit/#/q/bb1ea2d67a61c5b3e14f85fcc83dcde1c59a7516>`_ Remove excessive (trace) logging in FRS
* `c44de6 <https://git.opendaylight.org/gerrit/#/q/c44de6771bda0e32f07cafc5da8f98091f3b26b4>`_ Fix translation to packet.received.MatchBuilder
* `8da0e5 <https://git.opendaylight.org/gerrit/#/q/8da0e5766b0bd2eb693a291f7ad2cce6dcf44972>`_ Create DeviceMasterShipManager before forwarders
* `c63deb <https://git.opendaylight.org/gerrit/#/q/c63deb33470cfb1b3518038639479814327faf3d>`_ `BUG-6633 <https://bugs.opendaylight.org/show_bug.cgi?id=6633>`_ : NXM_OF_IN_PORT support in openflowplugin
* `0ab612 <https://git.opendaylight.org/gerrit/#/q/0ab612aa5635b4612fbee5cb7cde456f0bf538a5>`_ Update comments and imports after DataChangeListener changes
* `01f583 <https://git.opendaylight.org/gerrit/#/q/01f583e04d2f62d8c2bd647db6976190ab4a4510>`_ `BUG-6749 <https://bugs.opendaylight.org/show_bug.cgi?id=6749>`_: Set the openflow connection config at xml file
* `5fffad <https://git.opendaylight.org/gerrit/#/q/5fffad88c5940f04001bee1ac4190d47f5fea34b>`_ Fix connection closing before initialization
* `56def6 <https://git.opendaylight.org/gerrit/#/q/56def6d49145bb0371ecaaa112627368dae06841>`_ `BUG-6665 <https://bugs.opendaylight.org/show_bug.cgi?id=6665>`_ Clean code
* `ab966a <https://git.opendaylight.org/gerrit/#/q/ab966aac8b75f051fbd18d69b47338b5a77a2865>`_ ClusterSingletonService cleaning FRM/FRS
* `74500b <https://git.opendaylight.org/gerrit/#/q/74500b868f8cdce042c53d7bdd994a9c7ff7314c>`_ SONAR TD - StatisticsContextImpl, StatisticsManagerImpl
* `db2f2f <https://git.opendaylight.org/gerrit/#/q/db2f2fefe1a46abc151a07498d14eb0565ef6d86>`_ Update comments around flat-batch service
* `f12541 <https://git.opendaylight.org/gerrit/#/q/f12541e7fcde220dae7cf9f62616744340294fcc>`_ Convert openflowplugin-it to use DTCL instead of DCL
* `731845 <https://git.opendaylight.org/gerrit/#/q/7318454368be093d0e1f0eff98ca90f08f4bfab0>`_ Convert OF samples to use DTCL instead of DCL
* `9a08ed <https://git.opendaylight.org/gerrit/#/q/9a08edede0be699b0f40fe654989a1728d524b9f>`_ Update old links in code to deprecated DataChangeListener
* `4dec3f <https://git.opendaylight.org/gerrit/#/q/4dec3fed43ec4be8f71964cc07c1e76740d304ca>`_ `BUG-6665 <https://bugs.opendaylight.org/show_bug.cgi?id=6665>`_ - Fix switches scalability
* `018ab3 <https://git.opendaylight.org/gerrit/#/q/018ab358c128db9ef389935fec96cfe752e1cdf0>`_ `BUG-6118 <https://bugs.opendaylight.org/show_bug.cgi?id=6118>`_: making the OFentityListener aware of the InJeopardy() flag
* `aba015 <https://git.opendaylight.org/gerrit/#/q/aba015594c05accaec81d508806042f51afc76b2>`_ `BUG-6542 <https://bugs.opendaylight.org/show_bug.cgi?id=6542>`_ FRS - prevent concurrent reconciliation node config add

OpenFlow Protocol Library
-------------------------
* `0d1629 <https://git.opendaylight.org/gerrit/#/q/0d1629bee1803e3059897143f2b7345ac8f5cbca>`_ `BUG-6744 <https://bugs.opendaylight.org/show_bug.cgi?id=6744>`_ - the parameters of the function of registerMeterBandSerializer need to be more refined
* `d068a6 <https://git.opendaylight.org/gerrit/#/q/d068a6ec5bb54c05e7546207a200dcc0edd398cb>`_ `BUG-6674 <https://bugs.opendaylight.org/show_bug.cgi?id=6674>`_ - the key of the serialization function registered by the vendor is not refinement enough

SDN Interface Application (SDNi)
--------------------------------
* `ddc016 <https://git.opendaylight.org/gerrit/#/q/ddc0169af867c06052e5558bf1c35c4f783dfa5b>`_ Use of DataBroker from CSS instead of OFP for boron branch OF SDNINTERFACEAPP

Secure tag eXchange Protocol (SXP)
----------------------------------
* `a36aee <https://git.opendaylight.org/gerrit/#/q/a36aee834c03c772d8737be1c8cec7b1b08fe38e>`_ `BUG-6849 <https://bugs.opendaylight.org/show_bug.cgi?id=6849>`_ - PurgeAll message is not propagated to other domains
* `02a8a0 <https://git.opendaylight.org/gerrit/#/q/02a8a052f0728d2bf26a1c78ac10146bb2590f89>`_ `BUG-6448 <https://bugs.opendaylight.org/show_bug.cgi?id=6448>`_ - Add blueprint and clustering support to sxp-controller
* `c5a4ab <https://git.opendaylight.org/gerrit/#/q/c5a4ab804aae046e3b61472787e6f4a84d8fb64c>`_ `BUG-6448 <https://bugs.opendaylight.org/show_bug.cgi?id=6448>`_ - Add blueprint and clustering support to sxp-controller

Service Function Chaining
-------------------------
* `07b43c <https://git.opendaylight.org/gerrit/#/q/07b43cc65cb1948c2cb6f2a1d9942bd48c16f9ef>`_ `BUG-7039 <https://bugs.opendaylight.org/show_bug.cgi?id=7039>`_: Fixing when RSPs are deleted by SF/SFF updates

User Network Interface Manager (UNIMGR)
---------------------------------------
* `f49cbd <https://git.opendaylight.org/gerrit/#/q/f49cbd4c58a271e8c19c0090367f7049d159f505>`_ `BUG-6767 <https://bugs.opendaylight.org/show_bug.cgi?id=6767>`_ - Null pointer exception when adding an EVC with no UNIs

Virtual Tenant Network (VTN)
----------------------------
* `5e248d <https://git.opendaylight.org/gerrit/#/q/5e248dbc78ba54c7a149aa754e055c13fe82f941>`_ `BUG-6278 <https://bugs.opendaylight.org/show_bug.cgi?id=6278>`_: Use odlparent's karaf-parent to build local distro only for IT.
* `b33c56 <https://git.opendaylight.org/gerrit/#/q/b33c56996ee7a6364fcd4a3a67f536099ded28f4>`_ `BUG-6846 <https://bugs.opendaylight.org/show_bug.cgi?id=6846>`_: Fixed bug in VTN Coordinator shutdown sequence.
* `69cf85 <https://git.opendaylight.org/gerrit/#/q/69cf85fcd733ac42298c9e2dcb10afaa82475b31>`_ `BUG-6278 <https://bugs.opendaylight.org/show_bug.cgi?id=6278>`_: Switch to use odlparent's karaf-parent.
* `e9b37c <https://git.opendaylight.org/gerrit/#/q/e9b37c999efb2dd4b0ba3a624996ecca6f8a54dc>`_ `BUG-6715 <https://bugs.opendaylight.org/show_bug.cgi?id=6715>`_:Fixed issue in maven-site generation.
* `beb01e <https://git.opendaylight.org/gerrit/#/q/beb01e34af7c909e3a63912200c682ff79170a09>`_ `BUG-6632 <https://bugs.opendaylight.org/show_bug.cgi?id=6632>`_: Fixed VTN coordinator build error on Fedora 24.

YANG Tools
----------
* `3a6559 <https://git.opendaylight.org/gerrit/#/q/3a65590fbedd5c6c5bf9399548a004ef3e637da0>`_ Hide BuildGlobalContext methods
* `3ae284 <https://git.opendaylight.org/gerrit/#/q/3ae284eca4438de2ea80d5a1cf2c006e54fdc1d2>`_ `BUG-4456 <https://bugs.opendaylight.org/show_bug.cgi?id=4456>`_: rework leaker integration
* `9774e1 <https://git.opendaylight.org/gerrit/#/q/9774e100ad46b9bd3153e4cf58d84d56394c26ab>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: do not re-read models
* `4705f8 <https://git.opendaylight.org/gerrit/#/q/4705f8012b52d48f45c0a2eb4cc76a9c24ced3e0>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: grow namespaces lazily
* `fc760c <https://git.opendaylight.org/gerrit/#/q/fc760cddecbd779c3387011c9e9a579e93f676d6>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: Optimize toString() methods
* `ab7e06 <https://git.opendaylight.org/gerrit/#/q/ab7e06a283615ea5f8595ce7a2c002418507628d>`_ Cleanup SupportedExtensionsMapping
* `e3757f <https://git.opendaylight.org/gerrit/#/q/e3757f971d2a6f67995026b9f29ae22ad303699c>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: streamline QNameToStatementDefinitionMap API
* `05cf5b <https://git.opendaylight.org/gerrit/#/q/05cf5b72fea08ffc57b8d7b429ebab73ccae69a4>`_ `BUG-6964 <https://bugs.opendaylight.org/show_bug.cgi?id=6964>`_: reuse StatementDefinitionNamespace
* `fb8b10 <https://git.opendaylight.org/gerrit/#/q/fb8b10c420cd458ea4451a9795bf4e8c507f91fc>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: intern cached QNames
* `fd79ee <https://git.opendaylight.org/gerrit/#/q/fd79ee1fa169f1ceab339abb377afc08ba29f2e3>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: Remove an unneeded branch
* `4e6f54 <https://git.opendaylight.org/gerrit/#/q/4e6f543113c39b77354c6ca6c573af4076a11524>`_ `BUG-7025 <https://bugs.opendaylight.org/show_bug.cgi?id=7025>`_: make the parser tree immutable
* `89a15d <https://git.opendaylight.org/gerrit/#/q/89a15d03fdc1fed74eca4b2cbd70de25bba50747>`_ `BUG-7025 <https://bugs.opendaylight.org/show_bug.cgi?id=7025>`_: Use ParseTreeWalker.DEFAULT
* `57fee4 <https://git.opendaylight.org/gerrit/#/q/57fee412b50da4a41a75e71d42061251916b11a8>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: lower map sizing
* `3f498d <https://git.opendaylight.org/gerrit/#/q/3f498d3b1b1d6d09a1926a70607d1dad7ba87b92>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: do not accidentally grow lists
* `d4b39b <https://git.opendaylight.org/gerrit/#/q/d4b39b9de4fac2f214444f893f36b9c73d9888d3>`_ `BUG-6972 <https://bugs.opendaylight.org/show_bug.cgi?id=6972>`_: optimize SourceSpecificContext
* `936f49 <https://git.opendaylight.org/gerrit/#/q/936f49c81f8e69826ef2c5a5923dfe697853675f>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: Improve parser reactor logging
* `032498 <https://git.opendaylight.org/gerrit/#/q/032498569b883d97a7a514056dbca2426b51df1f>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: grow StatementContext collections lazily
* `f40575 <https://git.opendaylight.org/gerrit/#/q/f4057501941de73f146c908a0a109bf89ba81fd9>`_ `BUG-6972 <https://bugs.opendaylight.org/show_bug.cgi?id=6972>`_: refactor copy checking
* `613764 <https://git.opendaylight.org/gerrit/#/q/613764aa6c8a0d57bf5c8bf5a78335acb70d3a73>`_ `BUG-6972 <https://bugs.opendaylight.org/show_bug.cgi?id=6972>`_: Remove GroupingUtils.needToCreateNewQName()
* `65e018 <https://git.opendaylight.org/gerrit/#/q/65e0184cc3aa82dcf42122154184afbebb922afc>`_ `BUG-6972 <https://bugs.opendaylight.org/show_bug.cgi?id=6972>`_: eliminate AugmentUtils
* `bedd5f <https://git.opendaylight.org/gerrit/#/q/bedd5fb29190060101877b3d36ca891e7de303ff>`_ `BUG-6669 <https://bugs.opendaylight.org/show_bug.cgi?id=6669>`_: Mandatory nodes cannot be added to node from another module via augment
* `5f14ad <https://git.opendaylight.org/gerrit/#/q/5f14ad62021743476c4e5a6c71aba3d7165cb194>`_ `BUG-6972 <https://bugs.opendaylight.org/show_bug.cgi?id=6972>`_: Consolidate copy operations
* `bbde9e <https://git.opendaylight.org/gerrit/#/q/bbde9e23036db9c5cf029ab9da8d01042ef48446>`_ `BUG-6979 <https://bugs.opendaylight.org/show_bug.cgi?id=6979>`_ - yang.model.util.EffectiveAugmentationSchema is mutable
* `a7427e <https://git.opendaylight.org/gerrit/#/q/a7427ef38846c04dd09d90052df2e6a0a16c92a9>`_ `BUG-6329 <https://bugs.opendaylight.org/show_bug.cgi?id=6329>`_: Parser fails when target node of uses-augment is an unknown node
* `e6ceb0 <https://git.opendaylight.org/gerrit/#/q/e6ceb049c4e6bdff58a76a2d718a7186a05516de>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: create a specialized CopyHistory object
* `75ec31 <https://git.opendaylight.org/gerrit/#/q/75ec3145e6d9124a4a654759b76ffe5ac18fb0d1>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: share instances of Config(Effective)Statement
* `992f98 <https://git.opendaylight.org/gerrit/#/q/992f987ef71f9e13dbf5da39fe721ee2763952de>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: allocate copyHistory lazily
* `954cfd <https://git.opendaylight.org/gerrit/#/q/954cfda6950fcbd91ecc3e66660e2ac12e2fb95f>`_ `BUG-6522 <https://bugs.opendaylight.org/show_bug.cgi?id=6522>`_: Adjust collection sizes
* `056f73 <https://git.opendaylight.org/gerrit/#/q/056f7377fbac6ef8ebe27f45fa18c2e8704af39d>`_ Improve ContextBuilder error reporting
* `3182c7 <https://git.opendaylight.org/gerrit/#/q/3182c71548bf8c2b9394c2f7c4333bcbb3d5e31d>`_ `BUG-6965 <https://bugs.opendaylight.org/show_bug.cgi?id=6965>`_: introduce BuiltinDeclaredStatements
* `c157a9 <https://git.opendaylight.org/gerrit/#/q/c157a9dd65426473b7cd87de68d6639c9e91f403>`_ `BUG-6964 <https://bugs.opendaylight.org/show_bug.cgi?id=6964>`_: define a namespace to hold model-defined statements
* `9d06db <https://git.opendaylight.org/gerrit/#/q/9d06db90139388fff727f3be349c7d0e310a6e64>`_ `BUG-6491 <https://bugs.opendaylight.org/show_bug.cgi?id=6491>`_: Some imports are not exposed in Module.getImports
* `755a50 <https://git.opendaylight.org/gerrit/#/q/755a50a76b06f89ee5d4905145fe0e124e42aea4>`_ `BUG-6961 <https://bugs.opendaylight.org/show_bug.cgi?id=6961>`_: SchemaContext.getAllModuleIdentifiers() doesnt work for submodules
* `124100 <https://git.opendaylight.org/gerrit/#/q/124100376e7885a74b1e26957979eec3de618ee3>`_ Reuse cardinality constants
* `29c174 <https://git.opendaylight.org/gerrit/#/q/29c174b87c0075c6adc8ec78e2b2443a6253a6c6>`_ Fix inefficient ConstraintEffectiveStatements
* `97896a <https://git.opendaylight.org/gerrit/#/q/97896a806e6a52a89ab385b93a06f180c3d6a529>`_ Fix GroupingEffectiveStatementImpl's unknown nodes
* `80c95e <https://git.opendaylight.org/gerrit/#/q/80c95e16025e2531b722edb3c486df75105f013f>`_ `BUG-4456 <https://bugs.opendaylight.org/show_bug.cgi?id=4456>`_: add RecursiveExtensionResolver
* `91f43b <https://git.opendaylight.org/gerrit/#/q/91f43b1ce6453fef9e04e6673e7637fb5dba8b38>`_ `BUG-6757 <https://bugs.opendaylight.org/show_bug.cgi?id=6757>`_: revert fix for `BUG-4456 <https://bugs.opendaylight.org/show_bug.cgi?id=4456>`_
* `0de136 <https://git.opendaylight.org/gerrit/#/q/0de136825605fc7c15b49bdb1841ff5ea48d8a21>`_ Fix failing unit test in QueuedNotificationManagerTest
* `ad1f74 <https://git.opendaylight.org/gerrit/#/q/ad1f7479a9c886e7c358cc4191a787fd39108d7b>`_ Use lambdas instead of anonymous classes
* `29596d <https://git.opendaylight.org/gerrit/#/q/29596dac02aa54e632490709bc065607ac7468d7>`_ Use lambdas instead of StmtContextUtils.build{Declared,Effecive}
* `0e2419 <https://git.opendaylight.org/gerrit/#/q/0e241927ffcdf246f947d61fac6c8b8c2427b094>`_ `BUG-5561 <https://bugs.opendaylight.org/show_bug.cgi?id=5561>`_: use canonical Bits order
* `e4b8cc <https://git.opendaylight.org/gerrit/#/q/e4b8cc31f1030825b3482cc7e33c3de3c13ff679>`_ Fix a bunch of warnings
* `903b93 <https://git.opendaylight.org/gerrit/#/q/903b9333f1c01ed554ac26b853617f5137266998>`_ Intro. new yangtools.testutils artifacts (incl. Mikito)
* `086f01 <https://git.opendaylight.org/gerrit/#/q/086f01c2be55b4ec548276e3d096923cc1517b74>`_ Add YangInstanceIdentifier fast paths
* `a92b31 <https://git.opendaylight.org/gerrit/#/q/a92b31ce920f2677d7cce93eb94cfff37547bce8>`_ Use YangInstanceIdentifier.EMPTY
* `c87622 <https://git.opendaylight.org/gerrit/#/q/c876221202e810d12a3f3c36d79fd22b69233763>`_ `BUG-6771 <https://bugs.opendaylight.org/show_bug.cgi?id=6771>`_: Problem with typedefs nested in augment
* `0ab997 <https://git.opendaylight.org/gerrit/#/q/0ab9979b537056119507bbed776f1b5ff668844b>`_ Allow QueuedNotificationManager to batch notifications
* `21782e <https://git.opendaylight.org/gerrit/#/q/21782e414bc65f82975f62fb560c12f23c5d2acb>`_ Add batching to QueuedNotificationManager
* `8fb1f4 <https://git.opendaylight.org/gerrit/#/q/8fb1f4dda6d063c1a3b11139ec21e1d5ee880075>`_ Cleanup QueuedNotificationManager
* `920c87 <https://git.opendaylight.org/gerrit/#/q/920c8711850b01440ecf9967744e970d14fb6326>`_ `BUG-6551 <https://bugs.opendaylight.org/show_bug.cgi?id=6551>`_: Support for third-party Yang extensions implementation
* `c55522 <https://git.opendaylight.org/gerrit/#/q/c555220106c810ceaf2ac91b7428553edb5271f1>`_ Fix ConstraintDefinition inconsistency

Boron-SR2 Release Notes
=======================

This page details changes and bug fixes between the Boron Stability Release 1 (Boron-SR1) and the Boron Stability Release 2 (Boron-SR2) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------

The following projects had no noteworthy changes in the Boron-SR2 Release:

* ALTO
* Atrium Router
* Authentication, Authorization and Accounting (AAA)
* Cardinal
* Centinel
* Control And Provisioning of Wireless Access Points (CAPWAP)
* Controller Shield
* Device Identification and Driver Management (DIDM)
* Energy Management Plugin
* Fabric As A Service (FaaS)
* Infrastructure Utilities
* Integration/Distribution
* Internet of Things Data Management (IoTDM)
* L2 Switch
* Link Aggregation Control Protocol (LACP)
* NAT Application Plugin
* NEtwork MOdeling (NEMO)
* NeXt UI Toolkit
* NetIDE
* ORI C&M Protocol (OCP)
* OpenFlow Configuration Protocol (OF-CONFIG)
* OpenFlow Protocol Library
* Packet Cable/PCMM
* SNMP Plugin
* SNMP4SDN
* Secure Network Bootstrapping Infrastructure (SNBI)
* Table Type Patterns (TTP)
* Time Series Data Repository (TSDR)
* Topology Processing Framework
* Unified Secure Channel (USC)
* Virtual Tenant Network (VTN)
* YANG PUBSUB

BGP PCEP
--------
* `20f0ea <https://git.opendaylight.org/gerrit/#/q/20f0ead22adb474614a5efc83555db5627a0c27e>`_ `BUG-7222 <https://bugs.opendaylight.org/show_bug.cgi?id=7222>`_: Fix clustering BGPPeer NPE
* `2bbe79 <https://git.opendaylight.org/gerrit/#/q/2bbe797ade7139a2552184ff77fb74a37d00c372>`_ Pcepy: Address pep8 violations
* `537319 <https://git.opendaylight.org/gerrit/#/q/537319c9fd4c82146579706f32464dc05fa34a6f>`_ `BUG-7003 <https://bugs.opendaylight.org/show_bug.cgi?id=7003>`_: Remove Thread.sleep() calls in tests
* `0ab7e5 <https://git.opendaylight.org/gerrit/#/q/0ab7e50af15c4969dc3940b7d871d97b146f104f>`_ `BUG-7006 <https://bugs.opendaylight.org/show_bug.cgi?id=7006>`_: Unit-tests sometimes hangs during execution
* `e931d3 <https://git.opendaylight.org/gerrit/#/q/e931d35ddbabb3d4832e5f4c5278f5ea69eb96ab>`_ `BUG-7003 <https://bugs.opendaylight.org/show_bug.cgi?id=7003>`_: Introduce CheckUtil
* `0cbce4 <https://git.opendaylight.org/gerrit/#/q/0cbce45c997cc85d05c66e355730da65a4ee36b7>`_ `BUG-7098 <https://bugs.opendaylight.org/show_bug.cgi?id=7098>`_: Fix Sonar complains

Controller
----------
* `d6e8fd <https://git.opendaylight.org/gerrit/#/q/d6e8fdcdbab2f72bd60c3f4f9c150af64748c28d>`_ `BUG-6003 <https://bugs.opendaylight.org/show_bug.cgi?id=6003>`_: Create config-filtering-parent

DLUX
----
* `834781 <https://git.opendaylight.org/gerrit/#/q/8347818ffbdec42ba9eb1dd7f536947a39e8eb5d>`_ YangUI - quickfix operational list form Yangman - fix mountpoint disconnect Yangman - fix loading Yin schemas for mountpoints
* `335429 <https://git.opendaylight.org/gerrit/#/q/3354297bcaa1c6c559d5360b896557bae98864e6>`_ Yangman - requests settings
* `0b8364 <https://git.opendaylight.org/gerrit/#/q/0b83643488b7b7d9cc32931505cd55084eb0f58c>`_ Logout button added
* `be6883 <https://git.opendaylight.org/gerrit/#/q/be688333c146067c51a571080d5184e7e466a07e>`_ Yangman - make elements accessible via ids - part3
* `d49783 <https://git.opendaylight.org/gerrit/#/q/d49783382c1b3761afa521a4b843cea09f38f431>`_ Yangman - make elements accessible via ids - part2
* `59e637 <https://git.opendaylight.org/gerrit/#/q/59e637e6597167951161a5b6ee6c424257aa7302>`_ Yangman - make elements accessible via ids - part1
* `a06cbb <https://git.opendaylight.org/gerrit/#/q/a06cbb21c47c8d5df63abeb3aea4362f79ca5ce7>`_ Yangman - view switched to json when request is run from history
* `4666bf <https://git.opendaylight.org/gerrit/#/q/4666bfa3f1aaa1962290764dadcbc333e0ab6ac6>`_ Yangman - hide show previous item icon if there are no data
* `7fceb3 <https://git.opendaylight.org/gerrit/#/q/7fceb3d2730d400b0b991bda4eebfea1b89e4393>`_ Remove version tags from modules pom.xml
* `6c1e09 <https://git.opendaylight.org/gerrit/#/q/6c1e0964269d702fb1afb103eb5408df8dfff449>`_ Yangman - delayed progress bar is displayed
* `268a48 <https://git.opendaylight.org/gerrit/#/q/268a484ddde619f9a5dc0ef4a5562883f519d9af>`_ Yangman - zero out Status and Time-update
* `70fd6d <https://git.opendaylight.org/gerrit/#/q/70fd6d9b2d084b1f8a5d57dd034ab3767f004752>`_ Yangman - Show all items box showed for a moment-update
* `9b42a6 <https://git.opendaylight.org/gerrit/#/q/9b42a63b03b8931b3d8b8a1f02f7e37b6f14e8ba>`_ Yangman - Rpc output list is appending elements instead of replacing
* `0b06e2 <https://git.opendaylight.org/gerrit/#/q/0b06e2310a1c9fa80f78f1575b3a675563d63d3a>`_ Nodes app doesn't display nodes at all

Genius
------
* `5d42fc <https://git.opendaylight.org/gerrit/#/q/5d42fcbe32d510d1cae49176be36beb220934e3b>`_ Enhancing DataStoreJobCoordinaor logs
* `ad7d96 <https://git.opendaylight.org/gerrit/#/q/ad7d96bd3819c44ab3c5ccff7da5b8a176438a27>`_ Add utility apis
* `882092 <https://git.opendaylight.org/gerrit/#/q/88209264d3eef2ebab68d73c86635a4cfd18abca>`_ Introduce DataStoreJobCoordinator counters
* `91e5fa <https://git.opendaylight.org/gerrit/#/q/91e5fabc3d34d29ff4ec3d100f6224c0a7a8965d>`_ Cleanup unwanted exceptions in interfacemanager
* `ba5a09 <https://git.opendaylight.org/gerrit/#/q/ba5a09a682ef8b2c4b82966092df12744160ccf2>`_ `BUG-7220 <https://bugs.opendaylight.org/show_bug.cgi?id=7220>`_ :port updates are not getting reflected in Table 220
* `80c847 <https://git.opendaylight.org/gerrit/#/q/80c847b75b73622b88c24e319100928adf67483f>`_ New match Reg4 type and temporary SMAC table definitions
* `adde04 <https://git.opendaylight.org/gerrit/#/q/adde04b06f5d37504c97332ff41ffcfa7a1c195f>`_ `BUG-7220 <https://bugs.opendaylight.org/show_bug.cgi?id=7220>`_ - OVS egress table (220) contains stale rules that send the packet to the wrong port
* `ac8710 <https://git.opendaylight.org/gerrit/#/q/ac87105051c6679f857d3f5db3b861c1b6277bc2>`_ Fcaps: changing alarm text parameter to be same while raising and clearing
* `c46818 <https://git.opendaylight.org/gerrit/#/q/c46818a79841a194b5cb328a9c13de877a818989>`_ Gateway mac table should have unique MAC address for vhu hosts other than 00:00:00:00:00:00
* `f6bd5b <https://git.opendaylight.org/gerrit/#/q/f6bd5b94498de4c454fac475e988310176924900>`_ `BUG-6952 <https://bugs.opendaylight.org/show_bug.cgi?id=6952>`_: DPN can't be added in multiple TZ
* `f3fccb <https://git.opendaylight.org/gerrit/#/q/f3fccb18d2acd1abbf56a262bd4796f8e5374547>`_ `BUG-6791 <https://bugs.opendaylight.org/show_bug.cgi?id=6791>`_ adding async clustered listeners for hwvtep
* `4560ed <https://git.opendaylight.org/gerrit/#/q/4560ed2610a806c0745669f4f35620aa0b6800c3>`_ `BUG-7230 <https://bugs.opendaylight.org/show_bug.cgi?id=7230>`_: tun_id from vxlan tunnel is incorrectly stored into gre key
* `4d10ae <https://git.opendaylight.org/gerrit/#/q/4d10ae3650a0d4192d6c86e5d7d2c6efc4579cb1>`_ Upstreaming BFD monitoring fixes
* `b05d26 <https://git.opendaylight.org/gerrit/#/q/b05d260aa0e7403d38e94c121f7e8ab56ce23646>`_ Addition of constants for ARP Responder
* `5871b9 <https://git.opendaylight.org/gerrit/#/q/5871b96b2639212a882f70bf0e6d01729ec1cde3>`_ `BUG-7205 <https://bugs.opendaylight.org/show_bug.cgi?id=7205>`_ l2gw itm mesh is not getting built
* `ec7d05 <https://git.opendaylight.org/gerrit/#/q/ec7d05fc1329590a1ecfea0642cba8e59485dfe1>`_ Bug Fix: 7203 Wrong handling of binding service to a tunnel
* `21791d <https://git.opendaylight.org/gerrit/#/q/21791ddc886d8562a1edae06212ead2ba1f78042>`_ `BUG-6589 <https://bugs.opendaylight.org/show_bug.cgi?id=6589>`_ adding support for hwvtep devices ha
* `90983b <https://git.opendaylight.org/gerrit/#/q/90983b551a530bf2f595b4d77a90dc1951c4cab8>`_ `BUG-7178 <https://bugs.opendaylight.org/show_bug.cgi?id=7178>`_: DataStoreCoordinator code and related classes missing
* `4a5654 <https://git.opendaylight.org/gerrit/#/q/4a5654baeefd133cff350cfc372ac0e51b1807ce>`_ move interface utilities from ElanUtils, undeprecate Genius IIM
* `990095 <https://git.opendaylight.org/gerrit/#/q/9900956745f0be5471bf05e4fe1f2c528546fe5e>`_ Add egress split horizon drop flows for external interfaces
* `fa6b37 <https://git.opendaylight.org/gerrit/#/q/fa6b3793707eb5c1d40d7ab55a22ab90c6dec870>`_ Cleanup: use plain String concatenation
* `fcf814 <https://git.opendaylight.org/gerrit/#/q/fcf8144c4c8598b875e2fc4584d83687107031e7>`_ Cleanup: various performance issues
* `d6c81e <https://git.opendaylight.org/gerrit/#/q/d6c81e17e07951c8cd0a1132164aace326f92b47>`_ Cleanup: remove unnecessary type casts
* `9870ee <https://git.opendaylight.org/gerrit/#/q/9870eefcf2f2cd0b93b06ade1f589b485acceee0>`_ Cleanup: remove redundant type declarations
* `0b7dce <https://git.opendaylight.org/gerrit/#/q/0b7dcefb0cba788c948a37a27c125a801b3ed798>`_ Cleanup: remove redundant modifiers
* `947ce3 <https://git.opendaylight.org/gerrit/#/q/947ce390a92f82bd0bfc0b92b763e3c52149c233>`_ `BUG-6726 <https://bugs.opendaylight.org/show_bug.cgi?id=6726>`_ : Loss of traffic during ODL Cluster reboot
* `dc01a8 <https://git.opendaylight.org/gerrit/#/q/dc01a815a6f5570a0555442577bfa586ba2b5f7b>`_ `BUG-6836 <https://bugs.opendaylight.org/show_bug.cgi?id=6836>`_ - No access to external network
* `73b09a <https://git.opendaylight.org/gerrit/#/q/73b09a29728e471bd9136d883b798f73fc70bf7e>`_ `BUG-6836 <https://bugs.opendaylight.org/show_bug.cgi?id=6836>`_ - No access to external network
* `792862 <https://git.opendaylight.org/gerrit/#/q/79286209bcfc5f1791df63b794e6449fe9989294>`_ Add info to log message with ARP response details on transmit
* `c4b0a1 <https://git.opendaylight.org/gerrit/#/q/c4b0a16109c4d1e6d30627e1a84cc94ee5815e24>`_ Fix for merge build breakage
* `bbb993 <https://git.opendaylight.org/gerrit/#/q/bbb9934a259e792a778c541e8da95c0850af354f>`_ `BUG-6626 <https://bugs.opendaylight.org/show_bug.cgi?id=6626>`_ Packet IN handler thread in deadlock after high ARP rate
* `db93f4 <https://git.opendaylight.org/gerrit/#/q/db93f4151fcc8dc3190d9954c2dccf5181a159ee>`_ Added postman collections for id-manager
* `b3697e <https://git.opendaylight.org/gerrit/#/q/b3697ef68125bf61a83616e7c73f1879005f19c3>`_ Adding resourcemanager postman collection
* `ad917b <https://git.opendaylight.org/gerrit/#/q/ad917b8832107f0a2272361422b6c57729ea1498>`_ target-ide/ on .gitignore
* `716657 <https://git.opendaylight.org/gerrit/#/q/716657ace6e94703fcb055ea5d564efa9cf98b4d>`_ `BUG-7048 <https://bugs.opendaylight.org/show_bug.cgi?id=7048>`_ - Update to OF port does not change 220 flow
* `f011dc <https://git.opendaylight.org/gerrit/#/q/f011dc40a18a7a007aa0382a008b4949ea3fe725>`_ Fix for fcaps application module config push error

Group Based Policy (GBP)
------------------------
* `af0d40 <https://git.opendaylight.org/gerrit/#/q/af0d4015a02a26084b3c190574b90ac0ccfd2c31>`_ `BUG-6898 <https://bugs.opendaylight.org/show_bug.cgi?id=6898>`_ - fixed too slow build in GBPSFC demo
* `47c806 <https://git.opendaylight.org/gerrit/#/q/47c8061f2e0e53a0b4db4fa789ec42bbf18bbf70>`_ Wire ip-sgt-distribution-service - renderer part
* `ddb351 <https://git.opendaylight.org/gerrit/#/q/ddb35108bc484b15a29ae74179aa533cb1020144>`_ Wire ip-sgt-distribution-service - service part
* `e04b67 <https://git.opendaylight.org/gerrit/#/q/e04b67e50991946be1dba7b7ff12bc5f0ec325ff>`_ ip-sgt-distribution-service
* `3bb3a7 <https://git.opendaylight.org/gerrit/#/q/3bb3a7f665cb6dab9e3ec582b03ea2f9651d85d6>`_ Fix collision between VBD UI and GBP UI
* `253e7b <https://git.opendaylight.org/gerrit/#/q/253e7bdce4b5758d418264a1b4eb87abd1abd82d>`_ `BUG-7241 <https://bugs.opendaylight.org/show_bug.cgi?id=7241>`_: Fix logging for VPP node
* `5ebf40 <https://git.opendaylight.org/gerrit/#/q/5ebf40be12e2412b45ed40b1f29f5502aca4161c>`_ `BUG-7174 <https://bugs.opendaylight.org/show_bug.cgi?id=7174>`_: stop propagating mandatory/min-elements in configuration nodes
* `f652ad <https://git.opendaylight.org/gerrit/#/q/f652adc76d00517846466ada5bc469153240127c>`_ Stop manadatory flag propagation in range-value/*

Honeycomb Virtual Bridge Domain
-------------------------------
* `010d7c <https://git.opendaylight.org/gerrit/#/q/010d7cce2d170c2004285319fb71066c6bbb82bc>`_ GUI - fixed various REST calls

LISP Flow Mapping
-----------------
* `0b94ac <https://git.opendaylight.org/gerrit/#/q/0b94aca4ea1d19ee48398a9abf5f4f8c0c89f6e0>`_ Fix radix trie lookup exact
* `8fa29b <https://git.opendaylight.org/gerrit/#/q/8fa29b064deec032dc70e34a4f95096b89eff910>`_ `BUG-7272 <https://bugs.opendaylight.org/show_bug.cgi?id=7272>`_: Fix prefix removal in MultiTableMapCache
* `a6d25c <https://git.opendaylight.org/gerrit/#/q/a6d25ce6fb09570db2845ed3b06da69401b34ca3>`_ `BUG-7293 <https://bugs.opendaylight.org/show_bug.cgi?id=7293>`_: Fix radix trie removals that update the root (2)
* `0429b7 <https://git.opendaylight.org/gerrit/#/q/0429b736bd285a619b745572ce1ba18bd7544beb>`_ `BUG-7293 <https://bugs.opendaylight.org/show_bug.cgi?id=7293>`_: Fix radix trie node removals that update the root
* `ad596c <https://git.opendaylight.org/gerrit/#/q/ad596ce58f2cf3328fc8fb606a6934a828a4c6f8>`_ `BUG-7018 <https://bugs.opendaylight.org/show_bug.cgi?id=7018>`_: Fix NPE when SMR and no locators

MD-SAL
------
* `1b56fa <https://git.opendaylight.org/gerrit/#/q/1b56fa17938e8afc2a306ce7b61ce15515802e13>`_ `BUG-6163 <https://bugs.opendaylight.org/show_bug.cgi?id=6163>`_: fixed number of argument when resolving rpc input
* `ecbf2b <https://git.opendaylight.org/gerrit/#/q/ecbf2bf2d0398d008f8eeb9c7200e72f450a120a>`_ `BUG-6135 <https://bugs.opendaylight.org/show_bug.cgi?id=6135>`_: Java binding v1: IAE from provideTypeForLeafref
* `62a591 <https://git.opendaylight.org/gerrit/#/q/62a591d105563555955efeeddb4f16af38529d57>`_ `BUG-6710 <https://bugs.opendaylight.org/show_bug.cgi?id=6710>`_ - Close ClusterSingletonServiceRegistration fix
* `8216db <https://git.opendaylight.org/gerrit/#/q/8216dbb9b22b70155a583e7d5444c0f6da78b0a1>`_ `BUG-7013 <https://bugs.opendaylight.org/show_bug.cgi?id=7013>`_: do not rely on default character encoding
* `3abb16 <https://git.opendaylight.org/gerrit/#/q/3abb1680f36ece1f05e6bca3f326a9430ae1405b>`_ `BUG-7064 <https://bugs.opendaylight.org/show_bug.cgi?id=7064>`_: yang-to-source error on description

NETCONF
-------
* `f5d851 <https://git.opendaylight.org/gerrit/#/q/f5d85147d570a735e222e36673b98896a8ccc9ec>`_ `BUG-6911 <https://bugs.opendaylight.org/show_bug.cgi?id=6911>`_ - RPC support in singleton
* `10de38 <https://git.opendaylight.org/gerrit/#/q/10de3839b43f052c8879d191052f6018c354cd14>`_ Add mdsal-singleton-common-api to singleton pom
* `8f4b6f <https://git.opendaylight.org/gerrit/#/q/8f4b6f2c815e88e490510e931a5e00dca3cb18e9>`_ Remove old clustered netconf topology implementation
* `84ff02 <https://git.opendaylight.org/gerrit/#/q/84ff029f8dd16a86a83c573045d7f22d47b5657b>`_ `BUG-7172 <https://bugs.opendaylight.org/show_bug.cgi?id=7172>`_ - Correct error-info for missing-attribute errors
* `90c9b6 <https://git.opendaylight.org/gerrit/#/q/90c9b68c357411e079f8703db9f9ea5654b791fa>`_ `BUG-7240 <https://bugs.opendaylight.org/show_bug.cgi?id=7240>`_ - Restconf returns Status.Ok if delete fails
* `655930 <https://git.opendaylight.org/gerrit/#/q/655930e448934c1187a669f0186c16a64ba6806b>`_ `BUG-6324 <https://bugs.opendaylight.org/show_bug.cgi?id=6324>`_ - Notifications stream output is not same as restconf data
* `d2591f <https://git.opendaylight.org/gerrit/#/q/d2591fc3f2fb81a1013b13a9c9dc89a3ea4af716>`_ Set mdsal version to Boron-SR2 version
* `ba253b <https://git.opendaylight.org/gerrit/#/q/ba253bbefed3bf18a37f6c04fa989237574f0956>`_ Add logging in tx facade along with the RemoteDeviceId
* `9651a9 <https://git.opendaylight.org/gerrit/#/q/9651a9c795e8a5714505e6f7123a81106bba3855>`_ Move SubmitFailedReply in the appropriate package
* `43302f <https://git.opendaylight.org/gerrit/#/q/43302f3e798920ea37a6caf6b5b3bfdb5aab28a0>`_ Use SerializationUtils to (de)serialize NormalizedNode and YangInstanceIdentifier

Network Intent Composition (NIC)
--------------------------------
* `b02d45 <https://git.opendaylight.org/gerrit/#/q/b02d45ba6642f92f7942999e89e34c3b872be424>`_ Fix FlowBuilder issue
* `2206ff <https://git.opendaylight.org/gerrit/#/q/2206ff3f4ee910ce2cd956115238b8e58951814f>`_ Fix issue related to 'Flows aren't pushed to switches'
* `ead10c <https://git.opendaylight.org/gerrit/#/q/ead10c2b6a45864789684620ba782ab0a55ee54e>`_ Removed 'min-element' restriction in Intent

Network Virtualization
----------------------
* `1d12f3 <https://git.opendaylight.org/gerrit/#/q/1d12f362da4790bd5fd72544ff553ce690133a9c>`_ `BUG-7368 <https://bugs.opendaylight.org/show_bug.cgi?id=7368>`_: VPN Engine unable to process external interfaces
* `54d7e3 <https://git.opendaylight.org/gerrit/#/q/54d7e39652ac80016174b2955e96c22a550c8117>`_ `BUG-7343 <https://bugs.opendaylight.org/show_bug.cgi?id=7343>`_ - NETVIRT Boron Autorelease Breaking
* `6a2d10 <https://git.opendaylight.org/gerrit/#/q/6a2d10457a78970e7e2dfa6ff3b2e64f26ca5ed9>`_ Cleanup ArpNotificationHandler code
* `5e4b78 <https://git.opendaylight.org/gerrit/#/q/5e4b784ceee1bedb68da637929111a6b7d1171d3>`_ `BUG-7077 <https://bugs.opendaylight.org/show_bug.cgi?id=7077>`_ - NAPT inbound rules never Expire
* `c6f457 <https://git.opendaylight.org/gerrit/#/q/c6f457c85eee849f60f932d343f651a79496af1e>`_ `BUG-7333 <https://bugs.opendaylight.org/show_bug.cgi?id=7333>`_: Fix for Arp flows were not deleted for DHCP port in Control node.
* `c7638e <https://git.opendaylight.org/gerrit/#/q/c7638ef799cc06080eb1ca901658b21a6fcdd7f6>`_ `BUG-7319 <https://bugs.opendaylight.org/show_bug.cgi?id=7319>`_: thread.sleep in group installation
* `72d9a5 <https://git.opendaylight.org/gerrit/#/q/72d9a53338cca3032384cee62aabb4e88c13b18b>`_ `BUG-7305 <https://bugs.opendaylight.org/show_bug.cgi?id=7305>`_: DHCP fails for Dual stack ports
* `6b8760 <https://git.opendaylight.org/gerrit/#/q/6b8760b2a1f936e95f7501d083be0b60e144c906>`_ `BUG-7312 <https://bugs.opendaylight.org/show_bug.cgi?id=7312>`_: modify param reference of AclNodeListener
* `5dfd60 <https://git.opendaylight.org/gerrit/#/q/5dfd602fe8080b01e8224297d9eba7d117baf375>`_ Netvirt IT: Assert return value of ping in Netvirt IT tests
* `48a428 <https://git.opendaylight.org/gerrit/#/q/48a4289e3890d19f05f231d9bf73d4b7351e7bed>`_ Fixed BGP AS number field size
* `d6a948 <https://git.opendaylight.org/gerrit/#/q/d6a948dff758db1a77777bd8dfe89b85f0dc09f3>`_ `BUG-7331 <https://bugs.opendaylight.org/show_bug.cgi?id=7331>`_: CLI command to create VPNs allows creation of two VPNs with the same RD
* `ac846f <https://git.opendaylight.org/gerrit/#/q/ac846fe3b6d60e81944710416e0080994972b7c7>`_ `BUG-6589 <https://bugs.opendaylight.org/show_bug.cgi?id=6589>`_ Adding retry mechanism to listener
* `b6cca3 <https://git.opendaylight.org/gerrit/#/q/b6cca36b7a27837442ce38258aa4eb75d5c9fd30>`_ `BUG-7264 <https://bugs.opendaylight.org/show_bug.cgi?id=7264>`_ Fix missing flows for Remote SG rule   Problem: Missing SG remote flows to the first VM associated   with the SG. The sample reproduction scenario as below:     1. create empty SG1     2. create VM1 with the SG1     3. add custom TCP rule to SG1 with remote group id as SG1     4. create VM2 with the SG1   There is flow for TCP rule added for VM1 to VM2 but the flow   from VM2 to VM1 is missing
* `4ed9a5 <https://git.opendaylight.org/gerrit/#/q/4ed9a51ae645c688eb7bedc858a55e620b07a76b>`_ `BUG-7324 <https://bugs.opendaylight.org/show_bug.cgi?id=7324>`_: Stale FIB Entries are not getting Removed
* `1768e8 <https://git.opendaylight.org/gerrit/#/q/1768e8fce374621d23bb8ae1546f71116d66ef87>`_ 7280 - ARP Responder fix for Floating Ips (extension of `BUG-6726 <https://bugs.opendaylight.org/show_bug.cgi?id=6726>`_)
* `2f454b <https://git.opendaylight.org/gerrit/#/q/2f454b1ea4eb73d4334eb3e881bf074ade7da1af>`_ `BUG-7236 <https://bugs.opendaylight.org/show_bug.cgi?id=7236>`_: handle high rate of src mac learning packet-ins
* `b50fe0 <https://git.opendaylight.org/gerrit/#/q/b50fe0a546a2690f92633ac70b7623de1bd2f5b5>`_ `BUG-7081 <https://bugs.opendaylight.org/show_bug.cgi?id=7081>`_ - NAPT is not functional
* `2d0fdb <https://git.opendaylight.org/gerrit/#/q/2d0fdb7bed074d369aeaaa2703ada3a9bc9409e1>`_ `BUG-7081 <https://bugs.opendaylight.org/show_bug.cgi?id=7081>`_ - NAPT is not functional
* `53d48f <https://git.opendaylight.org/gerrit/#/q/53d48f4a845d29f3162064fa467a77089cb0e783>`_ `BUG-7253 <https://bugs.opendaylight.org/show_bug.cgi?id=7253>`_: Added learn support for other protocols rule (protocol Number)
* `ea6d27 <https://git.opendaylight.org/gerrit/#/q/ea6d27ab8d2b8217e5ef2f0524fc0582ab3ae6c6>`_ `BUG-7128 <https://bugs.opendaylight.org/show_bug.cgi?id=7128>`_: Added learn support for other protocols rule (ANY)
* `0bd8b8 <https://git.opendaylight.org/gerrit/#/q/0bd8b82f55cfbcf8c174ea22acf5d07482ad714d>`_ `BUG-7250 <https://bugs.opendaylight.org/show_bug.cgi?id=7250>`_: Add IPv6 integration tests
* `55cf96 <https://git.opendaylight.org/gerrit/#/q/55cf965c16311585113e2fb15cd978ee64779896>`_ `BUG-6998 <https://bugs.opendaylight.org/show_bug.cgi?id=6998>`_: Fix for VM Instance . Ip Address Not Assigned
* `846d06 <https://git.opendaylight.org/gerrit/#/q/846d067777744f9c03bbe899ebece26b0dd0fcae>`_ `BUG-7302 <https://bugs.opendaylight.org/show_bug.cgi?id=7302>`_: Enable Ping Responder for router interface IPs , on a BGPVPN that has this router associated.
* `5f8434 <https://git.opendaylight.org/gerrit/#/q/5f84343ac5841623c8e507ae114ed8c31020dd1b>`_ IT for provider network
* `db8803 <https://git.opendaylight.org/gerrit/#/q/db8803ce17d8ee9a7975489efcdfa4da1613487a>`_ cleanup unused dependencies for ipv6
* `c8031e <https://git.opendaylight.org/gerrit/#/q/c8031e92d5d8fea1a7eeb5edf24d9746e0bdc937>`_ cleanup unused dependencies for it
* `b3a97e <https://git.opendaylight.org/gerrit/#/q/b3a97e8677f15799055ff477e07dc9e9d0d84d40>`_ cleanup from previous cherry-picks
* `ba807d <https://git.opendaylight.org/gerrit/#/q/ba807dea1312d01e630363d931ef42c1c35a2ee0>`_ `BUG-7236 <https://bugs.opendaylight.org/show_bug.cgi?id=7236>`_: Add temporary SMAC learning table
* `fc38df <https://git.opendaylight.org/gerrit/#/q/fc38df36a44622d183571410cc470edb49cc6a08>`_ `BUG-7239 <https://bugs.opendaylight.org/show_bug.cgi?id=7239>`_ : Multiple FIB entries for extra route get created when neutron route-update is done
* `1bdc3e <https://git.opendaylight.org/gerrit/#/q/1bdc3e92b0e3bd6a164a3a83ee2605772d11bec8>`_ `BUG-7298 <https://bugs.opendaylight.org/show_bug.cgi?id=7298>`_: NPE in vpn manager
* `209217 <https://git.opendaylight.org/gerrit/#/q/209217c2747418253b68f6daa76ea0361a155bab>`_ `BUG-7294 <https://bugs.opendaylight.org/show_bug.cgi?id=7294>`_: Use delete_learned flag on learn flows
* `b25b7a <https://git.opendaylight.org/gerrit/#/q/b25b7a61b449c7820b4a720af66fab50ceb7cfa6>`_ `BUG-6589 <https://bugs.opendaylight.org/show_bug.cgi?id=6589>`_ Logging exception
* `44e845 <https://git.opendaylight.org/gerrit/#/q/44e845ec6a253545350310e7c814ce1da42c9cd4>`_ Fcaps: changing alarm text parameter to be same while raising and clearing
* `c3ee9c <https://git.opendaylight.org/gerrit/#/q/c3ee9c6b8257d21e050c3c5476f36306c46e4535>`_ `BUG-7239 <https://bugs.opendaylight.org/show_bug.cgi?id=7239>`_ : Multiple FIB entries for extra route get created when neutron route-update is done
* `c54c8a <https://git.opendaylight.org/gerrit/#/q/c54c8a7106b20f69aa3e2b02fb92d44ba058a9ef>`_ Fix Bug #7289 Set delete_learned flag to Acl Learn flow Entries
* `9d5885 <https://git.opendaylight.org/gerrit/#/q/9d5885f13f465cba1b09cd5b27224b6c7d13bcc6>`_ `BUG-7263 <https://bugs.opendaylight.org/show_bug.cgi?id=7263>`_: Spread InterVpnLinks among available DPNs
* `c75d04 <https://git.opendaylight.org/gerrit/#/q/c75d0408a5f4395f1165e686d355d459d8971713>`_ `BUG-6589 <https://bugs.opendaylight.org/show_bug.cgi?id=6589>`_ adding support for hwvtep devices ha
* `fa0d4d <https://git.opendaylight.org/gerrit/#/q/fa0d4d414d096c6a7d40c7bb63693cc389b7002f>`_ `BUG-6589 <https://bugs.opendaylight.org/show_bug.cgi?id=6589>`_ adding support for hwvtep devices ha
* `773a1c <https://git.opendaylight.org/gerrit/#/q/773a1c23f96182ab0ee2034beecf8af45c2a44f6>`_ `BUG-6668 <https://bugs.opendaylight.org/show_bug.cgi?id=6668>`_ - Security Groups (all implementations) - port_security extension and default DHCP/ICMP drop rules
* `9b78ad <https://git.opendaylight.org/gerrit/#/q/9b78adca08a995089336f6b7d112d308b4b729be>`_ `BUG-6833 <https://bugs.opendaylight.org/show_bug.cgi?id=6833>`_: InterVpnLink FIB routes not populated when no VM on VPN
* `c80380 <https://git.opendaylight.org/gerrit/#/q/c80380e18b38b49e5b608b0606348bd29b0b9520>`_ `BUG-7283 <https://bugs.opendaylight.org/show_bug.cgi?id=7283>`_: Fix exception in VpnInterfaceManager for IPv6 subnets
* `9d0413 <https://git.opendaylight.org/gerrit/#/q/9d04133be0b05e116756d59c92753754fcb7c74d>`_  `BUG-7233 <https://bugs.opendaylight.org/show_bug.cgi?id=7233>`_: Multiple VLAN external network communication failed while using compute nodes.
* `9c1ffe <https://git.opendaylight.org/gerrit/#/q/9c1ffed0a7416da8db21da4cb049754807d5cd4b>`_ `BUG-7247 <https://bugs.opendaylight.org/show_bug.cgi?id=7247>`_-The BGP configuration is getting configured as "router bgp 0"
* `86e1ae <https://git.opendaylight.org/gerrit/#/q/86e1ae9ca2d4dd17ace65ba3a6d258fecbfb99a7>`_ `BUG-7233 <https://bugs.opendaylight.org/show_bug.cgi?id=7233>`_: Multiple VLAN external network communication failed while using compute nodes.
* `f6b06c <https://git.opendaylight.org/gerrit/#/q/f6b06c37bbf5a15de8998968f47df00cf168a5be>`_ `BUG-7278 <https://bugs.opendaylight.org/show_bug.cgi?id=7278>`_ - SC to Elan handover flows priority is wrong
* `8d8505 <https://git.opendaylight.org/gerrit/#/q/8d850563ee5a41df6d9a77eb21bdc954009a9687>`_ `BUG-7170 <https://bugs.opendaylight.org/show_bug.cgi?id=7170>`_: ARP thread is sleeping 2s
* `a078b6 <https://git.opendaylight.org/gerrit/#/q/a078b64f0282250e9d0debe41cdeabd1b88628dc>`_ `BUG-7282 <https://bugs.opendaylight.org/show_bug.cgi?id=7282>`_ - The egress table flows(table 220) are not deleted on port delete.
* `debe02 <https://git.opendaylight.org/gerrit/#/q/debe02d814030b97e2e82ebf1cb0e710273a7755>`_ `BUG-6589 <https://bugs.opendaylight.org/show_bug.cgi?id=6589>`_ adding support for hwvtep devices ha
* `b0f5aa <https://git.opendaylight.org/gerrit/#/q/b0f5aa5d8499490566c87691a99af7841a5d2c9a>`_ Add configurable timeouts for acl security groups in Legacy NetVirt. Also sync up default timeout values with those in current new NetVirt (see aclservice-config.yang)
* `a95429 <https://git.opendaylight.org/gerrit/#/q/a954291872e57501bc8390dbdbfdac23d2aade16>`_ `BUG-6589 <https://bugs.opendaylight.org/show_bug.cgi?id=6589>`_ adding support for hwvtep devices ha
* `07dea3 <https://git.opendaylight.org/gerrit/#/q/07dea30fd9bb36449a55058154a2fcf08015d2ad>`_ legacy netvirt: forcibly disable port security for network port
* `47558e <https://git.opendaylight.org/gerrit/#/q/47558e4df89c0d8e59d353a4cb51af8f1d57b82a>`_ Listen on Topology Node instead of Inventory's
* `f7a9d7 <https://git.opendaylight.org/gerrit/#/q/f7a9d708260515aeb26c6784edeb2c75b361e8c3>`_ `BUG-7234 <https://bugs.opendaylight.org/show_bug.cgi?id=7234>`_ : Placeholder for BGP minor fixes
* `d2f8c9 <https://git.opendaylight.org/gerrit/#/q/d2f8c9533a22293130972edbcb9eb04db4ee2276>`_ `BUG-6786 <https://bugs.opendaylight.org/show_bug.cgi?id=6786>`_: L3VPN is not honoring VTEP add or delete in operational cloud
* `df867d <https://git.opendaylight.org/gerrit/#/q/df867d40dd6a67fbc0e9e9f877a53aeeb7585345>`_ `BUG-6726 <https://bugs.opendaylight.org/show_bug.cgi?id=6726>`_ : Arp Responder for Internal Subnet Gateway IPAddress
* `a212e4 <https://git.opendaylight.org/gerrit/#/q/a212e4699561f952187ba968416fa3cdf1d12e4c>`_ `BUG-6589 <https://bugs.opendaylight.org/show_bug.cgi?id=6589>`_ adding support for hwvtep devices ha
* `947917 <https://git.opendaylight.org/gerrit/#/q/9479174769ec3c41008ca8fd75400e7e3e958218>`_ `BUG-6589 <https://bugs.opendaylight.org/show_bug.cgi?id=6589>`_ adding support for hwvtep devices ha
* `54a2d9 <https://git.opendaylight.org/gerrit/#/q/54a2d9542aa9b0ff8b56b7e37e05ed65b72641d5>`_ `BUG-7096 <https://bugs.opendaylight.org/show_bug.cgi?id=7096>`_:  After disassociation/association of Router to VPN , it takes 2minutes to update in FIB table
* `ca50b0 <https://git.opendaylight.org/gerrit/#/q/ca50b0d803d85a4f1d7ddc3fe2819f8f389582a5>`_ `BUG-6786 <https://bugs.opendaylight.org/show_bug.cgi?id=6786>`_: L3VPN is not honoring VTEP add or delete in operational cloud
* `1c8b4e <https://git.opendaylight.org/gerrit/#/q/1c8b4e7eebeee04420228d8e6ba29c57b0cc0703>`_ Refactor the code that updates the vpn-to-dpn list
* `0ee5c8 <https://git.opendaylight.org/gerrit/#/q/0ee5c86413204e8c4a0d23a4613dd589e746ecae>`_ `BUG-7192 <https://bugs.opendaylight.org/show_bug.cgi?id=7192>`_ - Inter-VPN link routes BGP leaking not working
* `320bb6 <https://git.opendaylight.org/gerrit/#/q/320bb652b80fbf2b99fbfa99a25e5b3ac91f3d21>`_ Added default Security Group to test modes other than transparent.
* `193b5d <https://git.opendaylight.org/gerrit/#/q/193b5d504cbcfdf5884686d6a8c9c72898db2d24>`_ Apply checkstyle fixes on cloud-servicechain
* `05de78 <https://git.opendaylight.org/gerrit/#/q/05de781d8bc97a441d9d65c11de8da2e4344c748>`_ `BUG-7208 <https://bugs.opendaylight.org/show_bug.cgi?id=7208>`_: Import-Export RT feature is not working on stable-boron
* `dcf199 <https://git.opendaylight.org/gerrit/#/q/dcf199075b1624c3cee85539c95258f99bf43af4>`_ `BUG-7119 <https://bugs.opendaylight.org/show_bug.cgi?id=7119>`_: gw arp didn't resolve
* `0d1472 <https://git.opendaylight.org/gerrit/#/q/0d1472663b7690837c0f69f4c7f87ea4864754a6>`_ `BUG-7188 <https://bugs.opendaylight.org/show_bug.cgi?id=7188>`_: VpnInterface creation is delayed for 90s
* `e29938 <https://git.opendaylight.org/gerrit/#/q/e299384166b2f57f6e674ca8c24d83a6ad3cf1d8>`_ legacy netvirt: forcibly disable port security for network port
* `c0db2c <https://git.opendaylight.org/gerrit/#/q/c0db2cde3b1d481752c952bbd0a30374523b0b57>`_ Checkstyle for dhcpservice-impl
* `fa7b58 <https://git.opendaylight.org/gerrit/#/q/fa7b5869759060c922a7bd24ca5ffc068778fb0d>`_ `BUG-7168 <https://bugs.opendaylight.org/show_bug.cgi?id=7168>`_ - MAC Learning from ARP to be allowed on Ext-Interfaces
* `7f250a <https://git.opendaylight.org/gerrit/#/q/7f250a4b6d275a969c3b75e9e9d84f85033cb0a3>`_ Switch the NeutronFloatingIP listener to DTCL
* `229228 <https://git.opendaylight.org/gerrit/#/q/2292285ee5b649bc8ff6c9085092ec303cadc207>`_ Checkstyle for dhcpservice-api
* `d93bc9 <https://git.opendaylight.org/gerrit/#/q/d93bc990a7b7399abbc73ca148ab8074772842eb>`_ Fix version warning
* `14894a <https://git.opendaylight.org/gerrit/#/q/14894a48f7895c9e6ac2bf85f6cfe4e89ae75b4f>`_ `BUG-6089 <https://bugs.opendaylight.org/show_bug.cgi?id=6089>`_:Add support for All ICMP code and type in SG using learn
* `ec6f3d <https://git.opendaylight.org/gerrit/#/q/ec6f3d3d20b3af72d7539ecdd0924443acefbbe2>`_ Add aggregator pom for commons
* `7b0640 <https://git.opendaylight.org/gerrit/#/q/7b0640ddfd8f8b1cac57d0f8035825d8cb6b7f18>`_ Make aggregator poms consistent
* `9a48ee <https://git.opendaylight.org/gerrit/#/q/9a48eebd9ddcb9924798b7c49d8ee51141e79627>`_ Implement InterVpnLink update operation
* `527429 <https://git.opendaylight.org/gerrit/#/q/5274292df0b8cf164e87ced08317c46abfe90aeb>`_ `BUG-7162 <https://bugs.opendaylight.org/show_bug.cgi?id=7162>`_ - legacy netvirt: null pointer exception
* `1fc33f <https://git.opendaylight.org/gerrit/#/q/1fc33f46923412d527e8fc4d8eefbc8eefdeceed>`_ `BUG-7105 <https://bugs.opendaylight.org/show_bug.cgi?id=7105>`_: Fix learned matches for all TCP/UDP SG
* `bf38b8 <https://git.opendaylight.org/gerrit/#/q/bf38b863db30a33770fc96316a49adf7511c3739>`_ `BUG-7075 <https://bugs.opendaylight.org/show_bug.cgi?id=7075>`_: AlivenessMonitor skip non-neutron ports
* `8d5cb9 <https://git.opendaylight.org/gerrit/#/q/8d5cb9d7c501daf06408aa6ad78c755504636c15>`_ `BUG-7093 <https://bugs.opendaylight.org/show_bug.cgi?id=7093>`_
* `a0ec4b <https://git.opendaylight.org/gerrit/#/q/a0ec4b42a780d5b9eb70fb92bc40ff07c7f000a3>`_ `BUG-7127 <https://bugs.opendaylight.org/show_bug.cgi?id=7127>`_ - legacy netvirt: null pointer exception SecurityServicesImpl
* `e79020 <https://git.opendaylight.org/gerrit/#/q/e79020f41eb1103353224f377ef667b3457d94a5>`_ Support for IPv6 East-West Routing
* `421acd <https://git.opendaylight.org/gerrit/#/q/421acdbaf8bc5e38629f6102d4221331f1ee02bc>`_ `BUG-7126 <https://bugs.opendaylight.org/show_bug.cgi?id=7126>`_ - legacy netvirt: null pointer exception NeutronSubnetInterface.fromMd
* `cb4087 <https://git.opendaylight.org/gerrit/#/q/cb4087fdf44a357ae72f773ed8eee1df59614888>`_ `BUG-7016 <https://bugs.opendaylight.org/show_bug.cgi?id=7016>`_ flows fix the bug that flows is not corrrect after the reconnection of ovs
* `a24a12 <https://git.opendaylight.org/gerrit/#/q/a24a129e68a615cdf685ae3f32b97e72696fea9c>`_ `BUG-7157 <https://bugs.opendaylight.org/show_bug.cgi?id=7157>`_: Modify inter-VPN link model to enable route leaking
* `1c3ef2 <https://git.opendaylight.org/gerrit/#/q/1c3ef2ff29c2a7bad219b42a059710eae5cb1af5>`_ `BUG-7125 <https://bugs.opendaylight.org/show_bug.cgi?id=7125>`_ - legacy: ConcurrentModificationException
* `0bc43c <https://git.opendaylight.org/gerrit/#/q/0bc43c898e30ef0d711fd4e351d29f26ac819970>`_ `BUG-7147 <https://bugs.opendaylight.org/show_bug.cgi?id=7147>`_: VpnInterfaces not removed when InterVpnLink is removed
* `f15d95 <https://git.opendaylight.org/gerrit/#/q/f15d952ff0d4ae8e1d5aec6194a3c26e1d7b1bc8>`_ `BUG-7124 <https://bugs.opendaylight.org/show_bug.cgi?id=7124>`_ - legacy netvirt: null pointer exception in SouthboundHandler
* `6270ac <https://git.opendaylight.org/gerrit/#/q/6270ac6f6393f3e343f5d265e9a1c15770151751>`_ `BUG-6786 <https://bugs.opendaylight.org/show_bug.cgi?id=6786>`_: L3VPN is not honoring VTEP add or delete in operational cloud
* `f4663f <https://git.opendaylight.org/gerrit/#/q/f4663fd19b9a951216d31f6144dfd864a061fffa>`_ `BUG-6822 <https://bugs.opendaylight.org/show_bug.cgi?id=6822>`_: IVpnLink Static routes not removed on cascade
* `903ea2 <https://git.opendaylight.org/gerrit/#/q/903ea2ac3382a4c8ef98ef86ea89e87aaf93b5b1>`_ `BUG-6853 <https://bugs.opendaylight.org/show_bug.cgi?id=6853>`_ : Directly removing floatingip doesn't rmv mac entries from T19
* `5ecc07 <https://git.opendaylight.org/gerrit/#/q/5ecc07e18824b2c424a02c7898843ccf67f57b07>`_ `BUG-6777 <https://bugs.opendaylight.org/show_bug.cgi?id=6777>`_ - FIB entries for RNH routed to VxLAN tunnel for flat/VLAN provider networks
* `ebb9ed <https://git.opendaylight.org/gerrit/#/q/ebb9ed4abc6a033eaf517d5629537ce585af5c32>`_ `BUG-7116 <https://bugs.opendaylight.org/show_bug.cgi?id=7116>`_: Change in TunnelInterfaceStateListener.java
* `5eb3b8 <https://git.opendaylight.org/gerrit/#/q/5eb3b8e365b51994ed3e150ca6b11fa307ab5afa>`_ `BUG-6934 <https://bugs.opendaylight.org/show_bug.cgi?id=6934>`_: VpnPseudoPort flows not moved to a new DPN (II)
* `304089 <https://git.opendaylight.org/gerrit/#/q/304089d4bb61386a12ca192476468341f524d0da>`_ `BUG-6904 <https://bugs.opendaylight.org/show_bug.cgi?id=6904>`_ : ELANInstance read causing NPE on cluster reboot while sending notifs.
* `13cdf6 <https://git.opendaylight.org/gerrit/#/q/13cdf63bd044bfffac97376c52acab6e361990f4>`_ Fixed UT failure in AclServiceTest
* `c3c46c <https://git.opendaylight.org/gerrit/#/q/c3c46c3c889006d6abb44069130d8a139adb2188>`_ `BUG-7020 <https://bugs.opendaylight.org/show_bug.cgi?id=7020>`_: Deletion issue when VM has multiple SGs with same rules
* `ea39a9 <https://git.opendaylight.org/gerrit/#/q/ea39a94132477ad8c798f21fdb3b21e51f5a5116>`_ `BUG-7106 <https://bugs.opendaylight.org/show_bug.cgi?id=7106>`_: Handles static routes at InterVpnLink creation
* `a6ad9e <https://git.opendaylight.org/gerrit/#/q/a6ad9ecdbf2d4f5a11720d4cfc1f50f3174f4373>`_ `BUG-7086 <https://bugs.opendaylight.org/show_bug.cgi?id=7086>`_: ELAN broadcast group for VLAN network
* `3f04b6 <https://git.opendaylight.org/gerrit/#/q/3f04b6ec9165f8e9fea0e549cdc0ab212cd54b47>`_ `BUG-7107 <https://bugs.opendaylight.org/show_bug.cgi?id=7107>`_: RouteOrigin updated to support Local routes
* `cede4c <https://git.opendaylight.org/gerrit/#/q/cede4c173af4e4b9c313f964836793704e5b7520>`_ `BUG-7101 <https://bugs.opendaylight.org/show_bug.cgi?id=7101>`_: Restrict ARP to only learn non-neutron IPs
* `c25143 <https://git.opendaylight.org/gerrit/#/q/c25143816a4889cbfb390ce7a0ead609889e9a77>`_ `BUG-7120 <https://bugs.opendaylight.org/show_bug.cgi?id=7120>`_ : NAT Support For GRE TEP add/del is missing
* `14a21b <https://git.opendaylight.org/gerrit/#/q/14a21b9c8e1fe5df0e9271ebc370744c41827eb3>`_ Fixes `BUG-7076 <https://bugs.opendaylight.org/show_bug.cgi?id=7076>`_ SSH between vm in different network on same compute is blocked even with an allow rule.
* `5a39d5 <https://git.opendaylight.org/gerrit/#/q/5a39d50bf3fcd04d7a6cf0539521ba3c71352a98>`_ Fix one of the Netvirt IT test cases failure.
* `ea3930 <https://git.opendaylight.org/gerrit/#/q/ea39306a8961a0cb3a76f1f11ba18a4d461898d0>`_ Listens to Network-topology nodes instead of inventory ones
* `13938b <https://git.opendaylight.org/gerrit/#/q/13938b34c6482c478beeb7237d3040bb70920e06>`_ `BUG-7034 <https://bugs.opendaylight.org/show_bug.cgi?id=7034>`_ : Replace all write_actions by apply_actions.
* `deb9d2 <https://git.opendaylight.org/gerrit/#/q/deb9d2eba8250a6c30fe3cf816d35d24fe77ad08>`_ small fixes related to `BUG-7031 <https://bugs.opendaylight.org/show_bug.cgi?id=7031>`_
* `38b5e7 <https://git.opendaylight.org/gerrit/#/q/38b5e7d0a0a921d7041906020ab9d7d68d96caa0>`_ `BUG-7091 <https://bugs.opendaylight.org/show_bug.cgi?id=7091>`_ : When Primary NAPT switch goes down, NAPT switch re-election is not happening.
* `c2648d <https://git.opendaylight.org/gerrit/#/q/c2648d5c94e8148e8b1be333ec8a4fcfc7343596>`_ `BUG-7074 <https://bugs.opendaylight.org/show_bug.cgi?id=7074>`_ Fix wrong validation check in dynamic tunnel creation logic
* `11b2f8 <https://git.opendaylight.org/gerrit/#/q/11b2f8a134da66f19aeaef0d276f70fc25228453>`_ `BUG-7055 <https://bugs.opendaylight.org/show_bug.cgi?id=7055>`_: Interface removals donot keep Op DS and Cfg DS consistent.
* `ccdff1 <https://git.opendaylight.org/gerrit/#/q/ccdff11848587db64b6ae27ec4c80f28f8482f9e>`_ `BUG-7084 <https://bugs.opendaylight.org/show_bug.cgi?id=7084>`_: Fix for IP is  not assigned in single OpenStack node while creating more than one VM at a time.
* `8f0fab <https://git.opendaylight.org/gerrit/#/q/8f0fabb08def29f6568ea74a6828491221be0e1c>`_ `BUG-6940 <https://bugs.opendaylight.org/show_bug.cgi?id=6940>`_ - Avoid TZ subnet per neutron subnet
* `731423 <https://git.opendaylight.org/gerrit/#/q/7314238d55895dfd46287f5212ee78d13ca20478>`_ `BUG-7045 <https://bugs.opendaylight.org/show_bug.cgi?id=7045>`_: ACL: Default flows are not programmed in Cluster environment
* `ee8c12 <https://git.opendaylight.org/gerrit/#/q/ee8c126ea990de82a2c6b09e99e3d368a74eaaaa>`_ Fix for ACL UT failure
* `df93c2 <https://git.opendaylight.org/gerrit/#/q/df93c2e2e81a3020f0ebd1fe8429af9d426c0f62>`_ `BUG-6992 <https://bugs.opendaylight.org/show_bug.cgi?id=6992>`_ - legacy: ignore IPv6 router interface
* `c23e4f <https://git.opendaylight.org/gerrit/#/q/c23e4f7b82daa7ba910b9d2607ca1c6e510eab7e>`_ Disable SG IT test until learn test is included
* `eb6f82 <https://git.opendaylight.org/gerrit/#/q/eb6f826f1d23287edf5d9061a885c882a9e3354d>`_ Do not add br-int when manually deleted
* `b2b3eb <https://git.opendaylight.org/gerrit/#/q/b2b3eb81fa047b4e6dc4413032762ff249c720fe>`_ IT - L3 tests
* `0340d3 <https://git.opendaylight.org/gerrit/#/q/0340d3b8ffc3eb1b0e0ad6263f80e1ecea9683bd>`_ Do not log frequest NeutronHostConfig updates

Neutron Northbound
------------------
* `f40027 <https://git.opendaylight.org/gerrit/#/q/f400276294c1969c926fd2579802a91f940fbb9d>`_ NeutornLogger: print data when node is deleted

ODL Root Parent
---------------
* `1b6ded <https://git.opendaylight.org/gerrit/#/q/1b6ded38b027f39585dba457ae1bac977349f660>`_ `BUG-6577 <https://bugs.opendaylight.org/show_bug.cgi?id=6577>`_: package fixed TrieMap
* `a82ccf <https://git.opendaylight.org/gerrit/#/q/a82ccfd92155dc9140d2a7f7dcb5e319666cbca8>`_ Blacklist the Triple DES cipher suite

OVSDB Integration
-----------------
* `b8c692 <https://git.opendaylight.org/gerrit/#/q/b8c6924dc62ece22071713ca78913fc8c9406ba9>`_ Add docs for OVSDB
* `2aa094 <https://git.opendaylight.org/gerrit/#/q/2aa0947fd12e91f16dc6ba11bb38f5d36d671e85>`_ Prep for provider network IT
* `d5a921 <https://git.opendaylight.org/gerrit/#/q/d5a921d09c065f6008476b596c546cc4044f2a38>`_ Checkstyle clean-up: Remove useless "final" in interfaces
* `cd1bbd <https://git.opendaylight.org/gerrit/#/q/cd1bbd3e4dd3890394449cd3d121d227d1b6bb16>`_ `BUG-7201 <https://bugs.opendaylight.org/show_bug.cgi?id=7201>`_ skip monitoring stats tables
* `d54079 <https://git.opendaylight.org/gerrit/#/q/d540796f9ca173487ba752a04bbb3ffaa9192ac0>`_ `BUG-7202 <https://bugs.opendaylight.org/show_bug.cgi?id=7202>`_ upon node reboot hwvtep op ds is missing
* `5a3245 <https://git.opendaylight.org/gerrit/#/q/5a324508b3927cbd848893bc903820dc2faa8c2b>`_ `BUG-6643 <https://bugs.opendaylight.org/show_bug.cgi?id=6643>`_ hwvtep configuration reconcilation
* `121f89 <https://git.opendaylight.org/gerrit/#/q/121f890a0f24045e418b6461d93f04873560e064>`_ Corrected data type for "src-mac" in hwvtep.yang

OpenFlow Plugin
---------------
* `5a9a2b <https://git.opendaylight.org/gerrit/#/q/5a9a2b6b99d6f6574016c9e23469de646c63160f>`_ `BUG-6820 <https://bugs.opendaylight.org/show_bug.cgi?id=6820>`_ - Implement SalExperimenterMpMessageService
* `e9deca <https://git.opendaylight.org/gerrit/#/q/e9deca32b7e455ba805adc35aa49d635b2a2537e>`_ `BUG-7209 <https://bugs.opendaylight.org/show_bug.cgi?id=7209>`_ - Null Pointer Exception in LearnCodecUtil when add learn flow for ipv6
* `a47ccf <https://git.opendaylight.org/gerrit/#/q/a47ccf345dcabb0dbd3f2b15cce79e587149c572>`_ `BUG-6890 <https://bugs.opendaylight.org/show_bug.cgi?id=6890>`_:Flow-Removed Notification configuration
* `ac114e <https://git.opendaylight.org/gerrit/#/q/ac114ea16d60aff29106fdf687e2f35a33f7e0d6>`_ lower log level when stats come before flow is written to deviceflowregistry
* `6990bb <https://git.opendaylight.org/gerrit/#/q/6990bb0fe2e30c0d3985b8a53d5e13a35e01fa0a>`_ Implement SalExperimenterMpMessageService
* `4ac927 <https://git.opendaylight.org/gerrit/#/q/4ac927548dfd7f66ded8a636b518fbac3f17ec8c>`_ Improve cleanup after device disconnected event
* `fe3ece <https://git.opendaylight.org/gerrit/#/q/fe3ece2fa855e8dcefea3f1630f25864065c1932>`_ `BUG-7058 <https://bugs.opendaylight.org/show_bug.cgi?id=7058>`_ - [Helium Plugin]Stats collection issue when controller disconnect the device
* `e65e86 <https://git.opendaylight.org/gerrit/#/q/e65e86cc688f636fc5dbf75bea938bdf7609f734>`_ `BUG-6890 <https://bugs.opendaylight.org/show_bug.cgi?id=6890>`_: Statistics-polling configuration
* `9d78c3 <https://git.opendaylight.org/gerrit/#/q/9d78c397b981b614ea31053a9660eb1065a6f285>`_ Optimize port number lookups
* `e790c2 <https://git.opendaylight.org/gerrit/#/q/e790c278d1ce0090f364dcc5fef240adddf02f46>`_ `BUG-7011 <https://bugs.opendaylight.org/show_bug.cgi?id=7011>`_ - Race condition in statistics collection related transaction chain handling

SDN Interface Application (SDNi)
--------------------------------
* `c92ed0 <https://git.opendaylight.org/gerrit/#/q/c92ed00fc2e1c8a71c72fb86582e81103848fd97>`_ Do not skip deployment of UI artifacts

Secure tag eXchange Protocol (SXP)
----------------------------------
* `9d4992 <https://git.opendaylight.org/gerrit/#/q/9d499262817cb9da6ebe4314ac365cf092e1367b>`_ `BUG-7121 <https://bugs.opendaylight.org/show_bug.cgi?id=7121>`_ - SXP filtering model does not contain presence statement
* `e0a7da <https://git.opendaylight.org/gerrit/#/q/e0a7da153e5967705522702e735c1ce9c9ad5ed2>`_ `BUG-6760 <https://bugs.opendaylight.org/show_bug.cgi?id=6760>`_ - Connections in both mode need to be handled separately
* `2a9beb <https://git.opendaylight.org/gerrit/#/q/2a9beb22dc3cdcbdac008c07107a72ebd5c5143c>`_ `BUG-6999 <https://bugs.opendaylight.org/show_bug.cgi?id=6999>`_ - Node Listener closes its own datastore access

Service Function Chaining
-------------------------
* `a6d185 <https://git.opendaylight.org/gerrit/#/q/a6d185e0f5f8e0816e8faf9d807737dade572ce6>`_ `BUG-7243 <https://bugs.opendaylight.org/show_bug.cgi?id=7243>`_ : Modify the checkbox text color to be visible

User Network Interface Manager (UNIMGR)
---------------------------------------
* `ce8ddf <https://git.opendaylight.org/gerrit/#/q/ce8ddf83165a4123e9386c61ef2e726799f5fcfa>`_ `BUG-7100 <https://bugs.opendaylight.org/show_bug.cgi?id=7100>`_ - Fix null pointer exception

YANG Tools
----------
* `2bb7fc <https://git.opendaylight.org/gerrit/#/q/2bb7fc03c0c5f79c3a1bbc8868ad5b6f043c5b28>`_ `BUG-5968 <https://bugs.opendaylight.org/show_bug.cgi?id=5968>`_: Mandatory leaf enforcement does not work in some cases
* `cf932e <https://git.opendaylight.org/gerrit/#/q/cf932ef18598b624e4079b1cf99c2fa7d5481fd5>`_ Eliminate use of environment variables
* `42475e <https://git.opendaylight.org/gerrit/#/q/42475e5eb7c4f57542837f1521efe221c1bb928a>`_ Fix IT test instantiation
* `f55a31 <https://git.opendaylight.org/gerrit/#/q/f55a3162fe8c64357f0d28805c0c91095afe513d>`_ `BUG-5717 <https://bugs.opendaylight.org/show_bug.cgi?id=5717>`_: eliminate StmtContext.substatements()
* `cbe54f <https://git.opendaylight.org/gerrit/#/q/cbe54fe28185409bba130b076343791846fdde5c>`_ `BUG-6150 <https://bugs.opendaylight.org/show_bug.cgi?id=6150>`_: add an import statement special-case
* `f10946 <https://git.opendaylight.org/gerrit/#/q/f109466c50f313fe3b7ea172a3643c1ce6a8ea84>`_ `BUG-5968 <https://bugs.opendaylight.org/show_bug.cgi?id=5968>`_: Mandatory leaf enforcement does not work in some cases
* `ff8790 <https://git.opendaylight.org/gerrit/#/q/ff87907590ae538c938c0d395298cc7ebefceda0>`_ Intern SchemaContext.NAME
* `146a53 <https://git.opendaylight.org/gerrit/#/q/146a533809751c119a5962df201daf6a2f9d2077>`_ `BUG-6814 <https://bugs.opendaylight.org/show_bug.cgi?id=6814>`_: Fix (de)serialization of anyxml in JSON
* `a125b1 <https://git.opendaylight.org/gerrit/#/q/a125b129dd6359ca3c08361b713c44a57135e8f8>`_ `BUG-7057 <https://bugs.opendaylight.org/show_bug.cgi?id=7057>`_: introduce UntrustedXML class
* `655c13 <https://git.opendaylight.org/gerrit/#/q/655c13c48277155b02706b75c88554c4a05ce673>`_ `BUG-5968 <https://bugs.opendaylight.org/show_bug.cgi?id=5968>`_: Mandatory leaf enforcement does not work in some cases

Boron-SR3 Release Notes
=======================

This page details changes and bug fixes between the Boron Stability Release 2 (Boron-SR2) and the Boron Stability Release 3 (Boron-SR3) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------

The following projects had no noteworthy changes in the Boron-SR3 Release:

* Atrium Router
* Control And Provisioning of Wireless Access Points (CAPWAP)
* DLUX
* Device Identification and Driver Management (DIDM)
* Group Based Policy (GBP)
* Infrastructure Utilities
* Link Aggregation Control Protocol (LACP)
* NeXt UI Toolkit
* Network Intent Composition (NIC)
* OpenFlow Protocol Library
* Packet Cable/PCMM
* SNMP Plugin
* Secure Network Bootstrapping Infrastructure (SNBI)
* Table Type Patterns (TTP)
* Time Series Data Repository (TSDR)
* Topology Processing Framework
* YANG PUBSUB

ALTO
----
* `2502cc <https://git.opendaylight.org/gerrit/#/q/2502cc9b78774034111ac62981b68f1ace478f24>`_ Remove missed import of odl-mdsal-all
* `75de1f <https://git.opendaylight.org/gerrit/#/q/75de1f71dbc061310604fdcf62bf9a85e40f2808>`_ Do not pull in odl-mdsal-all
* `2d452b <https://git.opendaylight.org/gerrit/#/q/2d452b83648ccbe4899febfe61bc40935be0e500>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql

Authentication, Authorization and Accounting (AAA)
--------------------------------------------------
* `82b267 <https://git.opendaylight.org/gerrit/#/q/82b26750e34e118d1c3641ef412a38591597d096>`_ `BUG-7774 <https://bugs.opendaylight.org/show_bug.cgi?id=7774>`_: Cherry pick aaa-cert refactoring from master branch
* `c6ba3c <https://git.opendaylight.org/gerrit/#/q/c6ba3c74b8f3f85ddfbb0e43e633a4ab0a8e148e>`_ move aaa-encrypiotn service to blueprint
* `1414a8 <https://git.opendaylight.org/gerrit/#/q/1414a8f95e48efbce98d204d0744b7704697171e>`_ Remove RBAC rule implementation

BGP PCEP
--------
* `5a3311 <https://git.opendaylight.org/gerrit/#/q/5a331178e6cb001ff80983c18b178c98a71f25b8>`_ Correct XSD pattern
* `1b62e3 <https://git.opendaylight.org/gerrit/#/q/1b62e3aa22bfae955d8e60f684388ae9e766c892>`_ Fix NPE under TopologyProviderTest test
* `7b48d5 <https://git.opendaylight.org/gerrit/#/q/7b48d57ba01775ff48b1686ea8093b009df2ee3c>`_ `BUG-7964 <https://bugs.opendaylight.org/show_bug.cgi?id=7964>`_: IllegalStateException under testReconectClient test
* `5fd9a9 <https://git.opendaylight.org/gerrit/#/q/5fd9a9408b18f19ffa344e085449a897f5d019f1>`_ `BUG-7958 <https://bugs.opendaylight.org/show_bug.cgi?id=7958>`_: Fix IllegalArgumentException
* `2f0a98 <https://git.opendaylight.org/gerrit/#/q/2f0a98de2a2def1fca8c8911b318c45f952c7676>`_ `BUG-7003 <https://bugs.opendaylight.org/show_bug.cgi?id=7003>`_: Remove sleeping from Tests
* `412963 <https://git.opendaylight.org/gerrit/#/q/41296399260357ea6280f5b1ebab4aeca6a78d2a>`_ `BUG-7937 <https://bugs.opendaylight.org/show_bug.cgi?id=7937>`_: Fix BGPTerminationReason
* `45fc10 <https://git.opendaylight.org/gerrit/#/q/45fc103ec2653e3411d2f10a2cc0da3fd71cc104>`_ `BUG-7505 <https://bugs.opendaylight.org/show_bug.cgi?id=7505>`_: Conflict Modification
* `0148d9 <https://git.opendaylight.org/gerrit/#/q/0148d933a5325bd4495c51715f8494508b02af62>`_ `BUG-7386 <https://bugs.opendaylight.org/show_bug.cgi?id=7386>`_ Remove blocking gracefulshutdown
* `259f28 <https://git.opendaylight.org/gerrit/#/q/259f2849339461f4a1e5c88b93741b3cffa9160d>`_ `BUG-7768 <https://bugs.opendaylight.org/show_bug.cgi?id=7768>`_ Fix missing registration
* `8b71ff <https://git.opendaylight.org/gerrit/#/q/8b71ffb11b3c04870b644c16e239d806cc4e5cf4>`_ `BUG-7614 <https://bugs.opendaylight.org/show_bug.cgi?id=7614>`_: LocRibWriter does not recover well from transaction chain failure
* `d2849f <https://git.opendaylight.org/gerrit/#/q/d2849ff56cf15906a89cce26df40275213d1787c>`_ `BUG-7222 <https://bugs.opendaylight.org/show_bug.cgi?id=7222>`_: Make BGP DS clean up asynchronous
* `5e1eb9 <https://git.opendaylight.org/gerrit/#/q/5e1eb98f43719f020e978e954474be0b03d7a43d>`_ `BUG-4808 <https://bugs.opendaylight.org/show_bug.cgi?id=4808>`_: remove reference to IdentityHashMap
* `7a866e <https://git.opendaylight.org/gerrit/#/q/7a866eee4dec5dc368ef11c90473b3c2a256f281>`_ `BUG-7768 <https://bugs.opendaylight.org/show_bug.cgi?id=7768>`_ Synchronize ServerSessionManager for PCEP
* `ec57bc <https://git.opendaylight.org/gerrit/#/q/ec57bcaaaee06edc2288029df2a7a78442375b56>`_ `BUG-7732 <https://bugs.opendaylight.org/show_bug.cgi?id=7732>`_: Improve BGPDeployer synchronization
* `16e0aa <https://git.opendaylight.org/gerrit/#/q/16e0aa31e782252f25860556bd3eb4fd59431789>`_ `BUG-7708 <https://bugs.opendaylight.org/show_bug.cgi?id=7708>`_: Invalid Route Distinguisher error while processing withdraw update containing VPN route
* `7bb4e2 <https://git.opendaylight.org/gerrit/#/q/7bb4e26afe870e17e8d16d68583d0bb1035a21c6>`_ `BUG-7723 <https://bugs.opendaylight.org/show_bug.cgi?id=7723>`_ Change BGP connection failure log level
* `fdce89 <https://git.opendaylight.org/gerrit/#/q/fdce899f5b755b1f0d4f1b080759ae6715829a9a>`_ `BUG-7351 <https://bugs.opendaylight.org/show_bug.cgi?id=7351>`_: Update IRO reference
* `dbd80d <https://git.opendaylight.org/gerrit/#/q/dbd80d32e002caef370b88fdbabfd61821f10dde>`_ `BUG-7673 <https://bugs.opendaylight.org/show_bug.cgi?id=7673>`_: Improve synchonization under BGP/PCEP Session
* `6f6317 <https://git.opendaylight.org/gerrit/#/q/6f6317790870cc1f142711b1bdc4412d22d3c5fa>`_ `BUG-7673 <https://bugs.opendaylight.org/show_bug.cgi?id=7673>`_: Fix PCC Mock test failures
* `dbc2f5 <https://git.opendaylight.org/gerrit/#/q/dbc2f57ac03dff97d9c0b87841a5bc456c8856ae>`_ `BUG-7215 <https://bugs.opendaylight.org/show_bug.cgi?id=7215>`_: Fix App Peer ModifiedNodeDoesNotExistException

Cardinal
--------
* `a54a34 <https://git.opendaylight.org/gerrit/#/q/a54a34510d7fd44126b0e956ef191b4b3b50a886>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql

Centinel
--------
* `492742 <https://git.opendaylight.org/gerrit/#/q/4927426675147983ccfebafc61bfbd3b33983d47>`_ Do not pull in odl-mdsal-all
* `58a4d4 <https://git.opendaylight.org/gerrit/#/q/58a4d49187e13badc884eb69feec09c4ae30e96d>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql

Controller
----------
* `8c9dfe <https://git.opendaylight.org/gerrit/#/q/8c9dfeed77628d346219f3e7acd8a246ea68b642>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: remove xsql from archetype
* `faf24d <https://git.opendaylight.org/gerrit/#/q/faf24d4688f47ebeacd3d8e32be4979d416d1ad4>`_ `BUG-7814 <https://bugs.opendaylight.org/show_bug.cgi?id=7814>`_: Fix InvalidActorNameException
* `cbdd5d <https://git.opendaylight.org/gerrit/#/q/cbdd5d2a5c233a00fe057bd0359cdeefdb7de4da>`_ Fix timing issue in testChangeToVotingWithNoLeader
* `adcd0c <https://git.opendaylight.org/gerrit/#/q/adcd0c4fe3ce5477a7713fa9e9b209e41f180656>`_ `BUG-6856 <https://bugs.opendaylight.org/show_bug.cgi?id=6856>`_: Rpc definition should implicitly define input/output
* `bc9977 <https://git.opendaylight.org/gerrit/#/q/bc9977c2b59023f882910e1b03717caf62eaabb2>`_ `BUG-7746 <https://bugs.opendaylight.org/show_bug.cgi?id=7746>`_: Fix intermittent EOS test failure and synchronization
* `be7c84 <https://git.opendaylight.org/gerrit/#/q/be7c8496b92dec6ee77e86fc166c7df45e9e5eab>`_ Fix intermittent failure in testCloseCandidateRegistrationInQuickSuccession
* `c71eca <https://git.opendaylight.org/gerrit/#/q/c71ecaf8a0d2d04c343dbfec0a9cfd5162c277f6>`_ Usage of Collections.unmodifiableCollection is unsafe
* `8dfdfb <https://git.opendaylight.org/gerrit/#/q/8dfdfb5627c0434a4d253945a8f590f9c66f4777>`_ Add OnDemandShardState to report additional Shard state
* `65f9c2 <https://git.opendaylight.org/gerrit/#/q/65f9c2ce82b354a6b3e022be309783886b5d2184>`_ Add DOMDataTreeCommitCohort example for the cars model
* `5b78f9 <https://git.opendaylight.org/gerrit/#/q/5b78f9fc29eda0f2f023c74b9f0ac4078748a174>`_ Add more info logging in sal-akka-raft
* `944822 <https://git.opendaylight.org/gerrit/#/q/94482209080ff3b75968ab86f859e783254cb13f>`_ CDS: updateMinReplicaCount on RemoveServer
* `25f26d <https://git.opendaylight.org/gerrit/#/q/25f26d7425475eab989a0a5ee591595f08335f25>`_ `BUG-7608 <https://bugs.opendaylight.org/show_bug.cgi?id=7608>`_: activate action-service element
* `c6b367 <https://git.opendaylight.org/gerrit/#/q/c6b367ebd6c635689493af20203931e3db5bd340>`_ `BUG-7573 <https://bugs.opendaylight.org/show_bug.cgi?id=7573>`_: add BucketStore source monitoring
* `1b1643 <https://git.opendaylight.org/gerrit/#/q/1b164355ea2d868bcc92052ce78160f5244231f2>`_ `BUG-3128 <https://bugs.opendaylight.org/show_bug.cgi?id=3128>`_: cache ActorSelections
* `cf005e <https://git.opendaylight.org/gerrit/#/q/cf005e61579cc0848b2f76524db84aa7a65de178>`_ `BUG-3128 <https://bugs.opendaylight.org/show_bug.cgi?id=3128>`_: rework sal-remoterpc-connector
* `9d1222 <https://git.opendaylight.org/gerrit/#/q/9d1222a1f001c9249f4a6b3dba6b067c65de5b4a>`_ `BUG-7608 <https://bugs.opendaylight.org/show_bug.cgi?id=7608>`_: Clarify DOMRpc routing/invocation/listener interactions
* `e247eb <https://git.opendaylight.org/gerrit/#/q/e247eb2421a473c4916d6fcc3f1539707d2a2355>`_ `BUG-7697 <https://bugs.opendaylight.org/show_bug.cgi?id=7697>`_: add defences against nulls
* `03f387 <https://git.opendaylight.org/gerrit/#/q/03f387f3997e608a3d1fc41b31334954b2ce38f2>`_ `BUG-6937 <https://bugs.opendaylight.org/show_bug.cgi?id=6937>`_: Add ReachableMember case to Gossiper
* `600bba <https://git.opendaylight.org/gerrit/#/q/600bbae9ce3809f39dbc988cac5b7c035db0cd15>`_ `BUG-3128 <https://bugs.opendaylight.org/show_bug.cgi?id=3128>`_: do not open-code routed RPC identification
* `285d96 <https://git.opendaylight.org/gerrit/#/q/285d96ffafe14f863f8a0094c6b99a676905fa11>`_ Remove DOMRpcIdentifier.GLOBAL_CONTEXT
* `eb7470 <https://git.opendaylight.org/gerrit/#/q/eb7470e5bf7ccbb423d4977f7bdb963c726f2905>`_ `BUG-7594 <https://bugs.opendaylight.org/show_bug.cgi?id=7594>`_: Expand NormalizedNodeData{Input,Output} to handle SchemaPath
* `fc008d <https://git.opendaylight.org/gerrit/#/q/fc008d6c7ed466c3542d33b6ae8f996017400b36>`_ `BUG-6937 <https://bugs.opendaylight.org/show_bug.cgi?id=6937>`_: correct format string
* `fa66b0 <https://git.opendaylight.org/gerrit/#/q/fa66b0fd9b54c732da2d06339d8dc7a52adebe77>`_ Cleanup RemoteDOMRpcFuture
* `d78711 <https://git.opendaylight.org/gerrit/#/q/d787111c6bf6743f142cea1ac564ab16373edae0>`_ `BUG-7608 <https://bugs.opendaylight.org/show_bug.cgi?id=7608>`_: Add ActionServiceMetadata and ActionProviderBean
* `0361c9 <https://git.opendaylight.org/gerrit/#/q/0361c989786073139a4053287f7532f816515329>`_ `BUG-7506 <https://bugs.opendaylight.org/show_bug.cgi?id=7506>`_: use common DocumentBuilderFactory
* `90fc6d <https://git.opendaylight.org/gerrit/#/q/90fc6d978ba3f608f72410971e480d5e782a52eb>`_ `BUG-7608 <https://bugs.opendaylight.org/show_bug.cgi?id=7608>`_: OpendaylightNamespaceHandler methods can be static
* `f2a7e4 <https://git.opendaylight.org/gerrit/#/q/f2a7e4c96858871aa9eeab228c84049be5884bd4>`_ `BUG-7608 <https://bugs.opendaylight.org/show_bug.cgi?id=7608>`_: restructure exception throws
* `01941a <https://git.opendaylight.org/gerrit/#/q/01941a54f14c92c26ec81d2f0cbb7b441cff8c81>`_ `BUG-7326 <https://bugs.opendaylight.org/show_bug.cgi?id=7326>`_: Fix ConcurrentModificationException in Blueprint
* `4f323d <https://git.opendaylight.org/gerrit/#/q/4f323d3074caeecd415e915930b81b21af59c263>`_ Fix FindBugs warnings in blueprint and enable enforcement
* `08a954 <https://git.opendaylight.org/gerrit/#/q/08a95495724e3c3c9907b3de23f3f961039c407e>`_ Checkstyle compliant src/main|test/resources
* `98b630 <https://git.opendaylight.org/gerrit/#/q/98b63083a6709b1c69ee31471e28aef23d3ab457>`_ Fix CS warnings in blueprint and enable enforcement
* `416a6b <https://git.opendaylight.org/gerrit/#/q/416a6bcaf1bb07ece21b5d65dc9ba306627eb535>`_ `BUG-3128 <https://bugs.opendaylight.org/show_bug.cgi?id=3128>`_: Update RPC router concepts
* `c3f368 <https://git.opendaylight.org/gerrit/#/q/c3f368fb047b919991c84eba039e1d3f54f2d446>`_ Update dependendency desc properly in RpcServiceMetadata
* `1f0eea <https://git.opendaylight.org/gerrit/#/q/1f0eeaead0e76d2198601aa3954dda47d01577e1>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: offload XSQLBluePrint creation to first access
* `707da8 <https://git.opendaylight.org/gerrit/#/q/707da80f72962d05fad69998bd137569fd72116e>`_ `BUG-7469 <https://bugs.opendaylight.org/show_bug.cgi?id=7469>`_: Advertise CDS DOMDataTreeCommitCohortRegistry
* `d3293c <https://git.opendaylight.org/gerrit/#/q/d3293cf5dce9f4379f3c7c3d90bf04dd7a02930a>`_ `BUG-7391 <https://bugs.opendaylight.org/show_bug.cgi?id=7391>`_: Fix out-of-order LeaderStateChange events

Controller Shield
-----------------
* `3824fe <https://git.opendaylight.org/gerrit/#/q/3824fe89ef11d8bb61654e6e61d93c340de926e3>`_ Removed fixed (and ancient) version of maven-bundle-plugin

Energy Management Plugin
------------------------
* `9e2e52 <https://git.opendaylight.org/gerrit/#/q/9e2e52bdad42f5bca71cb23654851fb67f7878f1>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql

Fabric As A Service (FaaS)
--------------------------
* `44a7cc <https://git.opendaylight.org/gerrit/#/q/44a7cc27e4c4964ac626509f950b4d64996a2c5d>`_ fix demo scripts

Genius
------
* `9da81f <https://git.opendaylight.org/gerrit/#/q/9da81f477df9b3d1bd69e2c9e8549afb92d4734f>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql
* `864b9f <https://git.opendaylight.org/gerrit/#/q/864b9fed0adfd8fb7578b655ee9e4c826d6099af>`_ `BUG-8048 <https://bugs.opendaylight.org/show_bug.cgi?id=8048>`_: Potential fix for ID Duplication on 1-node
* `8c0ebc <https://git.opendaylight.org/gerrit/#/q/8c0ebc03e70ed1492947f1864278474ee0d976e2>`_ `BUG-8048 <https://bugs.opendaylight.org/show_bug.cgi?id=8048>`_ : Ensure unique ids are allocated
* `894e9e <https://git.opendaylight.org/gerrit/#/q/894e9e070614a693396aba656d0a6fe238a57aab>`_ `BUG-8049 <https://bugs.opendaylight.org/show_bug.cgi?id=8049>`_ runOnlyInLeaderNode() - out of order event processing
* `b7c672 <https://git.opendaylight.org/gerrit/#/q/b7c67241292b48ec711bb3d73decac2f51e2ca9d>`_ Updated TestIMdsalApiManager.java to support installFlow() with CheckedFuture return value
* `757219 <https://git.opendaylight.org/gerrit/#/q/757219ff846bd2657d0207719cbae4da1ac8a523>`_ `BUG-7864 <https://bugs.opendaylight.org/show_bug.cgi?id=7864>`_: Specified Id key does not exist in id pool vpnservices
* `88bbb1 <https://git.opendaylight.org/gerrit/#/q/88bbb1e3e9e82aab7b4d699239fb5662d7053999>`_ Improving ITM performance in a scale setup
* `c3141a <https://git.opendaylight.org/gerrit/#/q/c3141a49e252a99c7483e86f819889de8053ecc8>`_ Handling RACE conditions in bind/unbind service
* `9a49c9 <https://git.opendaylight.org/gerrit/#/q/9a49c9466721fc04465bf28f57ee3d96469e38ce>`_ Harden BFD configuration parameters
* `cc7f5e <https://git.opendaylight.org/gerrit/#/q/cc7f5ed7f515afbb1ae4c474015a5d68b6b9a477>`_ Bind/Unbind Service should work irrespective of Port Status
* `a5ee0b <https://git.opendaylight.org/gerrit/#/q/a5ee0bdb28541f9056d0ea055bbd352c38f5f844>`_ Enhancing interface-manager logging
* `33ec80 <https://git.opendaylight.org/gerrit/#/q/33ec8046492a837e1cff0f70e703b43397c43f2d>`_ Adding job retries for DJC bind/unbind service jobs
* `eb8e18 <https://git.opendaylight.org/gerrit/#/q/eb8e182b4f1fc8f73ccafdbf7d66a6e6cb97715f>`_ `BUG-7531 <https://bugs.opendaylight.org/show_bug.cgi?id=7531>`_ : Different ids allocated for same key
* `44a670 <https://git.opendaylight.org/gerrit/#/q/44a670aafeaba51ed5cbd3e89b4abc9cad0e2cdf>`_ Tunnels in DOWN state in scaled scenario
* `0e0c30 <https://git.opendaylight.org/gerrit/#/q/0e0c30e0ba6bd35ffb85d8936fac186bc9fcea38>`_ Optimizing southbound Tunnel Events
* `8c514f <https://git.opendaylight.org/gerrit/#/q/8c514fd209f094746590dacfb3f4cebb75a576b2>`_ getInterfaceInfoFromOperationalDS Optimisation
* `4664b9 <https://git.opendaylight.org/gerrit/#/q/4664b9cd5596268865a363d4d9ba48f4d2af6ad9>`_ Fix for id duplication for different id keys
* `a0939e <https://git.opendaylight.org/gerrit/#/q/a0939e17e4ae00d1aced6c6aced30678b0748c03>`_ To fix grep not working for tep:show & tep:show-state on karaf console
* `b92562 <https://git.opendaylight.org/gerrit/#/q/b9256259aaf00b975c7ef68d6b55e58c24adf8a6>`_ Inconsistent Maven Bundle Plugin version in ITM
* `ab1866 <https://git.opendaylight.org/gerrit/#/q/ab1866784c97834f6329ea4cdbb86c0d026bb575>`_ Optimizing tunnel configuration
* `446aca <https://git.opendaylight.org/gerrit/#/q/446aca1f7bffc33f882429f9234af5f4e414e1ae>`_ Enhancing service binding logic to support more services
* `9a08b3 <https://git.opendaylight.org/gerrit/#/q/9a08b3076a39ce9c3ecc5efdc5cd1f4595216126>`_ Ignoring a Junit test case in Idmanager to unblock autorelease
* `89af25 <https://git.opendaylight.org/gerrit/#/q/89af25ab90e2acd37d2700f375472b678117366b>`_ `BUG-7466 <https://bugs.opendaylight.org/show_bug.cgi?id=7466>`_ - NPE thrown for interface without lport tag
* `648c66 <https://git.opendaylight.org/gerrit/#/q/648c668ce0647c1a3f08660445552fc32f76f0a3>`_ Fix Idmanager JUnit test case
* `7b80d1 <https://git.opendaylight.org/gerrit/#/q/7b80d1cad78b521a1a673951260f96df75a60748>`_ `BUG-7494 <https://bugs.opendaylight.org/show_bug.cgi?id=7494>`_ : Idmanager returns the same Id from the same pool for different threads with different id keys
* `b42464 <https://git.opendaylight.org/gerrit/#/q/b424640608cf5fe83a1b22092e4551d222135640>`_ Fixes for duplicate tunnels
* `4c281f <https://git.opendaylight.org/gerrit/#/q/4c281fd9559a891b51f3367d7ea42dacbb2adc2e>`_ `BUG-7486 <https://bugs.opendaylight.org/show_bug.cgi?id=7486>`_: ITM perf and scale fixes
* `c73bbe <https://git.opendaylight.org/gerrit/#/q/c73bbe6c776230b2cb89cc9174acb67fad90ff0e>`_ Allow Nicira Extension Actions in BoundServices
* `ff7b93 <https://git.opendaylight.org/gerrit/#/q/ff7b93b395cc0d5b66e3b6f9b4332506d8d3d7d6>`_ `BUG-7450 <https://bugs.opendaylight.org/show_bug.cgi?id=7450>`_ : suppressing unnecessary warning logs
* `ca237e <https://git.opendaylight.org/gerrit/#/q/ca237e431963b134fd16aa5109116d4c09454f37>`_ Add new ActionInfo implementations for reg load/move
* `85112e <https://git.opendaylight.org/gerrit/#/q/85112e50d436e1e1a6d3f3396a2b2014b2c4e1b4>`_ Moving interface-manager CLI utils to use cached entries
* `ee165f <https://git.opendaylight.org/gerrit/#/q/ee165f6a023cb8d5123aba59471b4059c10861a4>`_ `BUG-7419 <https://bugs.opendaylight.org/show_bug.cgi?id=7419>`_ : Ids from id pool exhausted
* `77a356 <https://git.opendaylight.org/gerrit/#/q/77a356693f71e924edb75850417874165d903a77>`_ flow entries for multiple subports not getting created
* `c58a30 <https://git.opendaylight.org/gerrit/#/q/c58a30f862297a74408f2fc4ea91711fce623a6a>`_ Add isIpInSubnet utility API to NwUtil
* `032d4b <https://git.opendaylight.org/gerrit/#/q/032d4b1d39be0bd4e2aca54bf4a7f978408113d0>`_ `BUG-7270 <https://bugs.opendaylight.org/show_bug.cgi?id=7270>`_ Duplicate remote Mcast mac entry in TOR .

Honeycomb Virtual Bridge Domain
-------------------------------
* `06db2c <https://git.opendaylight.org/gerrit/#/q/06db2ce8ac4ab872327c49f257f2be2fcc66064f>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql

Integration/Distribution
------------------------
* `009615 <https://git.opendaylight.org/gerrit/#/q/00961592b1bf411ff30b0302e8e42eccf8b5631b>`_ `BUG-4296 <https://bugs.opendaylight.org/show_bug.cgi?id=4296>`_: Version to inherit from config-filtering-parent

Internet of Things Data Management (IoTDM)
------------------------------------------
* `4b2567 <https://git.opendaylight.org/gerrit/#/q/4b2567be0540692a7f7e0514cf1999bf9b49faec>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql

L2 Switch
---------
* `47082d <https://git.opendaylight.org/gerrit/#/q/47082dcc8747b6a1af9cac1790bfc0c1bc93a4d1>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql
* `63bffe <https://git.opendaylight.org/gerrit/#/q/63bffef470ec2a7df897fd164c36ca617d69528e>`_ `BUG-5452 <https://bugs.opendaylight.org/show_bug.cgi?id=5452>`_ - Adding comments that details the configuration.

LISP Flow Mapping
-----------------
* `ad58d1 <https://git.opendaylight.org/gerrit/#/q/ad58d16ebeaa6fb07b4d37433080be2f303fac20>`_ `BUG-6071 <https://bugs.opendaylight.org/show_bug.cgi?id=6071>`_: Fix fast path Map-Notify auth data
* `5af5ce <https://git.opendaylight.org/gerrit/#/q/5af5ce473aed62cd598b218475a9d9e5032a043f>`_ Add postman collection in FD.io tutorial
* `ec27bf <https://git.opendaylight.org/gerrit/#/q/ec27bfa462c1e8ff337472d1839ef540310c89e5>`_ WIP: Update Tutorial for FD.io and OOR

MD-SAL
------
* `0c8723 <https://git.opendaylight.org/gerrit/#/q/0c8723bfe18073eddc0a996b18bc1b221dddf056>`_ `BUG-7759 <https://bugs.opendaylight.org/show_bug.cgi?id=7759>`_ - TEST - Getter of BA object fails to construct class instance
* `7b7b26 <https://git.opendaylight.org/gerrit/#/q/7b7b266da5becc659df7be24ebafd78ef4639d52>`_ BindingGenerator v1 "copy-paste" bug in RPCs
* `db2d6f <https://git.opendaylight.org/gerrit/#/q/db2d6f91b55a28d5da6e6b362295b1d412d8d363>`_ `BUG-7759 <https://bugs.opendaylight.org/show_bug.cgi?id=7759>`_ - TEST - Getter of BA object fails to construct class instance
* `ea12e8 <https://git.opendaylight.org/gerrit/#/q/ea12e80106a48a60c9eb61e5d19def4d493c7755>`_ `BUG-6856 <https://bugs.opendaylight.org/show_bug.cgi?id=6856>`_: Rpc definition should implicitly define input/output
* `e54d13 <https://git.opendaylight.org/gerrit/#/q/e54d13bf867f7f7ff392b5746f028a6743717417>`_ `BUG-6856 <https://bugs.opendaylight.org/show_bug.cgi?id=6856>`_: Rpc definition should implicitly define input/ouput
* `abb67f <https://git.opendaylight.org/gerrit/#/q/abb67fcf38fdf119522795cc8adab2c265216daf>`_ `BUG-6028 <https://bugs.opendaylight.org/show_bug.cgi?id=6028>`_: check value types for encapsulation
* `0819d4 <https://git.opendaylight.org/gerrit/#/q/0819d4e1d990d844a7b1e09f0adcf220bcc43676>`_ Fix generate of comma before augmentations in toString generator
* `0f6902 <https://git.opendaylight.org/gerrit/#/q/0f690288f7dbd4f7fb6fdc89a3689a7b757c0bee>`_ `BUG-7222 <https://bugs.opendaylight.org/show_bug.cgi?id=7222>`_: Improve ClusterSingletonService error handling.
* `9c244e <https://git.opendaylight.org/gerrit/#/q/9c244e2fa7e6b2762529d6273485e4068cc326ce>`_ `BUG-3147 <https://bugs.opendaylight.org/show_bug.cgi?id=3147>`_ - Binding spec v1: auto generated code by YANGTOOLS could be more efficient
* `d92aa2 <https://git.opendaylight.org/gerrit/#/q/d92aa291ec070cfaf7b680d99f015f4402dcfe60>`_ Fix getValue() of bits in union
* `3c156c <https://git.opendaylight.org/gerrit/#/q/3c156c1ca8c7bb91a2579811c6b0cbe555997a91>`_ `BUG-3147 <https://bugs.opendaylight.org/show_bug.cgi?id=3147>`_ - Binding spec v1: auto generated code by YANGTOOLS could            be more efficient
* `96d661 <https://git.opendaylight.org/gerrit/#/q/96d661e192255c52c590110268ea464527b71b45>`_ Don't use deprecated SourceIdentifier.create() method anymore
* `7b1ef1 <https://git.opendaylight.org/gerrit/#/q/7b1ef1557ab6e21cc2dc54c8696af1c9aacde296>`_ `BUG-7425 <https://bugs.opendaylight.org/show_bug.cgi?id=7425>`_: Recognize instance-identifier in union template
* `edcae2 <https://git.opendaylight.org/gerrit/#/q/edcae2f21cb1cc11787ac8e3d1a0953c6db538cb>`_ Fix backport damage
* `9be1c8 <https://git.opendaylight.org/gerrit/#/q/9be1c8eb16a03c9189fb7a53e34a299650e32f1b>`_ New test utility AssertDataObjects
* `f8094a <https://git.opendaylight.org/gerrit/#/q/f8094ae576dda50fe5f94e2a75ded464b936ed49>`_ `BUG-6236 <https://bugs.opendaylight.org/show_bug.cgi?id=6236>`_: Introduce "mdsal.skip.verbose" property, for build speed

NAT Application Plugin
----------------------
* `822933 <https://git.opendaylight.org/gerrit/#/q/822933541df647494946bd0f82f0f40a54ec9a3b>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql

NETCONF
-------
* `1dc51d <https://git.opendaylight.org/gerrit/#/q/1dc51de283065160a63f4f938ad2789f79bff9b3>`_ `BUG-7906 <https://bugs.opendaylight.org/show_bug.cgi?id=7906>`_: Fixed json parsing on patch request
* `6779d4 <https://git.opendaylight.org/gerrit/#/q/6779d4984608836e28d5d38aef245c827e299df2>`_ `BUG-7987 <https://bugs.opendaylight.org/show_bug.cgi?id=7987>`_: Json HTTP PATCH: Problem parsing simple leaf value
* `610d85 <https://git.opendaylight.org/gerrit/#/q/610d858fc0b716dea78bb89ffa70990d3ffbcdba>`_ Fix autorelease fail
* `fb4d06 <https://git.opendaylight.org/gerrit/#/q/fb4d0699e1a05f320aaddce08e414cd77ad8b421>`_ `BUG-6856 <https://bugs.opendaylight.org/show_bug.cgi?id=6856>`_: Rpc definition should implicitly define input/output
* `0d35db <https://git.opendaylight.org/gerrit/#/q/0d35db00651a1f0161079a1f0eb5b29719bde217>`_ `BUG-7728 <https://bugs.opendaylight.org/show_bug.cgi?id=7728>`_ - modules-state conflict kills rest-connector-default-impl
* `44a6e6 <https://git.opendaylight.org/gerrit/#/q/44a6e680c43f90f691b7a171bd26a9a53a6de9cb>`_ `BUG-7728 <https://bugs.opendaylight.org/show_bug.cgi?id=7728>`_ - modules-state conflict kills rest-connector-default-impl
* `ae1a78 <https://git.opendaylight.org/gerrit/#/q/ae1a78857c108ca7d4240c80019eebf485459c18>`_ Fix error reporting for PUT/POST
* `b2a304 <https://git.opendaylight.org/gerrit/#/q/b2a304ab25042c634709b564d6f263e1ce3f2fb3>`_ `BUG-7686 <https://bugs.opendaylight.org/show_bug.cgi?id=7686>`_ - Make notifications defined by yangs automatic loaded for streaming
* `f23b06 <https://git.opendaylight.org/gerrit/#/q/f23b06f092c198fafc9e09b9e47f234a61482dc2>`_ `BUG-7295 <https://bugs.opendaylight.org/show_bug.cgi?id=7295>`_ - Incorrect handling of device transactions in clustered setting
* `994506 <https://git.opendaylight.org/gerrit/#/q/9945067c4e118198c4ffacc85a73250d66792a71>`_ Clear out tx reference immediately after submit.
* `58e0b7 <https://git.opendaylight.org/gerrit/#/q/58e0b7ab5e3a2d31994ebfbcc5656b04d2442af8>`_ Remove blocking get in read transaction
* `363f5d <https://git.opendaylight.org/gerrit/#/q/363f5d3cec95393b94a98f0f6cf1d2a24045db76>`_ `BUG-5581 <https://bugs.opendaylight.org/show_bug.cgi?id=5581>`_: Merge empty map instead of exist check
* `c30a4c <https://git.opendaylight.org/gerrit/#/q/c30a4c3847d591a10f96280ef49c47d7677abce0>`_ `BUG-5581 <https://bugs.opendaylight.org/show_bug.cgi?id=5581>`_: Minor Exi decoder optimization
* `864eda <https://git.opendaylight.org/gerrit/#/q/864eda5c4fa9a3e0b27ff1d953e7dc9d8640bb4d>`_ Clean up Rfc8040
* `e20c6e <https://git.opendaylight.org/gerrit/#/q/e20c6ea2ee0eb1ed81ade03214a8aaa98db66a6a>`_ `BUG-7735 <https://bugs.opendaylight.org/show_bug.cgi?id=7735>`_ - Update restconf models by RFC 8040
* `fff87a <https://git.opendaylight.org/gerrit/#/q/fff87ab9fd135d603a1da10e0cc168c7d16e05b9>`_ `BUG-7429 <https://bugs.opendaylight.org/show_bug.cgi?id=7429>`_ - Upgrade docgen in restconf to the latest draft of ietf-restconf
* `2c7043 <https://git.opendaylight.org/gerrit/#/q/2c70435bc9b07c409debd6e9ceb64db4871939ab>`_ `BUG-7206 <https://bugs.opendaylight.org/show_bug.cgi?id=7206>`_ - Chinese improper code problem.
* `edac43 <https://git.opendaylight.org/gerrit/#/q/edac43f52d3791bd9d3de9ad9484aac044682739>`_ `BUG-5679 <https://bugs.opendaylight.org/show_bug.cgi?id=5679>`_ - implement new service RestconfService
* `56f1b9 <https://git.opendaylight.org/gerrit/#/q/56f1b96f1b494bb645772941d41dd383b2663af5>`_ `BUG-5679 <https://bugs.opendaylight.org/show_bug.cgi?id=5679>`_ - add new module ietf-restconf
* `6a6144 <https://git.opendaylight.org/gerrit/#/q/6a6144e7f0c59613c2fd449a89b57cb7ad17489c>`_ `BUG-5679 <https://bugs.opendaylight.org/show_bug.cgi?id=5679>`_ - implement ietf-restconf-monitoring - cleanup
* `bbf615 <https://git.opendaylight.org/gerrit/#/q/bbf615b184ce8e2291a21c0e7d967380961ced9c>`_ `BUG-5679 <https://bugs.opendaylight.org/show_bug.cgi?id=5679>`_ - implement ietf-restconf-monitoring - streams
* `285fb8 <https://git.opendaylight.org/gerrit/#/q/285fb8ac463d5085c897ccf6e7b9702932815a57>`_ `BUG-5679 <https://bugs.opendaylight.org/show_bug.cgi?id=5679>`_ - implement ietf-restconf-monitoring - capabilities
* `d0faba <https://git.opendaylight.org/gerrit/#/q/d0faba3a377725ed773cedbfa56c1a1a4df6f025>`_ `BUG-5679 <https://bugs.opendaylight.org/show_bug.cgi?id=5679>`_ - prepare constants for ietf-yang-library model
* `c00740 <https://git.opendaylight.org/gerrit/#/q/c0074097361fe9a541d52bbd87e7c10b11df038c>`_ `BUG-5679 <https://bugs.opendaylight.org/show_bug.cgi?id=5679>`_ - add new module ietf-restconf-monitoring to restconf
* `2be9e7 <https://git.opendaylight.org/gerrit/#/q/2be9e792834ac2e463714d8d433699159ffe6add>`_ `BUG-5679 <https://bugs.opendaylight.org/show_bug.cgi?id=5679>`_ - fix generating of schema by ietf-yang-library and path of RestconfSchemaService
* `38c8d0 <https://git.opendaylight.org/gerrit/#/q/38c8d03dae74170d1348067503baa244311f1875>`_ `BUG-5679 <https://bugs.opendaylight.org/show_bug.cgi?id=5679>`_ - ietf-yang-library module implemetation
* `f061af <https://git.opendaylight.org/gerrit/#/q/f061afa8a84c9053d53eb88ca3849320636720a4>`_ `BUG-5679 <https://bugs.opendaylight.org/show_bug.cgi?id=5679>`_ - prepare constants for ietf-yang-library model
* `31b18b <https://git.opendaylight.org/gerrit/#/q/31b18b3a96bd911b95d85ac81c819613cc3d755c>`_ `BUG-5679 <https://bugs.opendaylight.org/show_bug.cgi?id=5679>`_ - new module 'models' for new models in restconf
* `f440bd <https://git.opendaylight.org/gerrit/#/q/f440bdd7b68f453b1d1bd74f717ad279b3b9b760>`_ `BUG-5679 <https://bugs.opendaylight.org/show_bug.cgi?id=5679>`_ - renamed package rest.services to base.services
* `132121 <https://git.opendaylight.org/gerrit/#/q/13212176e7a19319d28ad6c298a969f5f6730f5c>`_ Add missing yang - sal-remote
* `f08db0 <https://git.opendaylight.org/gerrit/#/q/f08db04b475debddfd2c60a13482e6e21dcbd7e0>`_ Do not attempt to construct invalid QNames
* `7a5c4a <https://git.opendaylight.org/gerrit/#/q/7a5c4a37c4d2b46cdc031e2c45ffdc44ad08e105>`_ `BUG-7231 <https://bugs.opendaylight.org/show_bug.cgi?id=7231>`_ - Upgrade ietf-restconf draft17 to draft18
* `41429f <https://git.opendaylight.org/gerrit/#/q/41429f5dcf2cc849f353362fed79fcc045366f89>`_ `BUG-7207 <https://bugs.opendaylight.org/show_bug.cgi?id=7207>`_ - Bad parsing of identityref in typedef for last ietf-restconf draft
* `ff6f68 <https://git.opendaylight.org/gerrit/#/q/ff6f680ca740bd10fbef0b8515e8391402964bd4>`_ `BUG-6951 <https://bugs.opendaylight.org/show_bug.cgi?id=6951>`_ - Implement Query parameters - with-defaults
* `b262be <https://git.opendaylight.org/gerrit/#/q/b262be2e1351f83f58634f4820d6dc790fa43cfd>`_ `BUG-6947 <https://bugs.opendaylight.org/show_bug.cgi?id=6947>`_ / `BUG-6948 <https://bugs.opendaylight.org/show_bug.cgi?id=6948>`_ - implement point and insert query params
* `4ada21 <https://git.opendaylight.org/gerrit/#/q/4ada21094175465dea12d92b51a1edb68f0adf13>`_ `BUG-4883 <https://bugs.opendaylight.org/show_bug.cgi?id=4883>`_ - implement query parameter - filter
* `fd7a91 <https://git.opendaylight.org/gerrit/#/q/fd7a9191ae990df3318bc6674510f6537e04b1f3>`_ `BUG-6949 <https://bugs.opendaylight.org/show_bug.cgi?id=6949>`_ / `BUG-6950 <https://bugs.opendaylight.org/show_bug.cgi?id=6950>`_ - Implementation of start-time and stop-time query parameters
* `05767a <https://git.opendaylight.org/gerrit/#/q/05767aee137c8cbf6363df5ab332cb623e1fa469>`_ `BUG-6935 <https://bugs.opendaylight.org/show_bug.cgi?id=6935>`_ - RPC in latest draft doesn't work - problem of parsing to instance identifier
* `c7579f <https://git.opendaylight.org/gerrit/#/q/c7579fc501e9fb5f560a697ddce961bf1be8e90b>`_ `BUG-6995 <https://bugs.opendaylight.org/show_bug.cgi?id=6995>`_ - Change event notification subscription usability PART2
* `a3ec2f <https://git.opendaylight.org/gerrit/#/q/a3ec2f39296ab25499378c29c8ce1fb83bb6f1df>`_ `BUG-6995 <https://bugs.opendaylight.org/show_bug.cgi?id=6995>`_ - Change event notification subscription usability PART1
* `d61bb8 <https://git.opendaylight.org/gerrit/#/q/d61bb8ba22b92b46d2b0f43665b342f0dee0c4ae>`_ `BUG-6903 <https://bugs.opendaylight.org/show_bug.cgi?id=6903>`_ - Implement Query parameters - fields
* `cca10c <https://git.opendaylight.org/gerrit/#/q/cca10cbd8a9a9da00183cea858bddbac8f23b739>`_ `BUG-6895 <https://bugs.opendaylight.org/show_bug.cgi?id=6895>`_ - Implement Query parameters - depth
* `693e5b <https://git.opendaylight.org/gerrit/#/q/693e5b30fa0c60ccf278b3d6679a467a28388c31>`_ `BUG-6382 <https://bugs.opendaylight.org/show_bug.cgi?id=6382>`_ - add apidoc for latest restconf draft
* `0aa729 <https://git.opendaylight.org/gerrit/#/q/0aa72978633b42dd330246e160f0f18925c38186>`_ `BUG-6731 <https://bugs.opendaylight.org/show_bug.cgi?id=6731>`_ - add valid example values
* `ef4102 <https://git.opendaylight.org/gerrit/#/q/ef4102da1765316e954649878b360cd99a8c7bd7>`_ `BUG-6931 <https://bugs.opendaylight.org/show_bug.cgi?id=6931>`_ - Fix unsupported specific type of leaf
* `5019be <https://git.opendaylight.org/gerrit/#/q/5019be3bd6c34ad37a65b8a6489efe4f3fec8e6d>`_ Use UTF-8 as the standard output
* `62406a <https://git.opendaylight.org/gerrit/#/q/62406ad5419b8f021d08e139725a1627257b6207>`_ InstanceIdentifierCodecImpl JUnit test
* `75b2cc <https://git.opendaylight.org/gerrit/#/q/75b2cc3618533699eecf3eefa2aa2b9f10763766>`_ `BUG-6679 <https://bugs.opendaylight.org/show_bug.cgi?id=6679>`_ - api explorer creates false examples
* `74f910 <https://git.opendaylight.org/gerrit/#/q/74f910a3441f84558bb223cde6d44cbf17c05432>`_ `BUG-6272 <https://bugs.opendaylight.org/show_bug.cgi?id=6272>`_ - support RESTCONF PATCH for mounted NETCONF nodes
* `5e5f9d <https://git.opendaylight.org/gerrit/#/q/5e5f9d97f62f1a77ed75da446afcea52762d74d8>`_ `BUG-6746 <https://bugs.opendaylight.org/show_bug.cgi?id=6746>`_ - Restconf: Not working GET operation on mount points
* `9b0c35 <https://git.opendaylight.org/gerrit/#/q/9b0c354a5c05d4f43024b54c526cbe057ee5b71d>`_ Fix close() in provider
* `2c244f <https://git.opendaylight.org/gerrit/#/q/2c244f3929d22c5ab4753aff95ae257a0a575e62>`_ Fix autorelease - stub channel and eventLoop

NEtwork MOdeling (NEMO)
-----------------------
* `9bf2a1 <https://git.opendaylight.org/gerrit/#/q/9bf2a121b9b5f2f94809f06ca9635ba6e69a43fa>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql

NetIDE
------
* `4256d4 <https://git.opendaylight.org/gerrit/#/q/4256d4ce0ff44c70341bc7b8b8929deffc97c7c3>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql

Network Virtualization
----------------------
* `990076 <https://git.opendaylight.org/gerrit/#/q/990076136eb431ebf4009df8f5634be50e47a7e6>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql
* `d6622e <https://git.opendaylight.org/gerrit/#/q/d6622e79c1767ad28ad8abc39ac7c1b76eb13a56>`_ `BUG-8046 <https://bugs.opendaylight.org/show_bug.cgi?id=8046>`_ fix for mac movement issue
* `a71e06 <https://git.opendaylight.org/gerrit/#/q/a71e06c8c9409213fa3c575f09e10dfc136939c1>`_ `BUG-7984 <https://bugs.opendaylight.org/show_bug.cgi?id=7984>`_: IDLE_TIMEOUT check required in onFlowRemoved.
* `978717 <https://git.opendaylight.org/gerrit/#/q/97871769835114e4deee5a65ea5b387a138666d7>`_ `BUG-7387 <https://bugs.opendaylight.org/show_bug.cgi?id=7387>`_ : Netvirt: qos policy applied on the network, not applied on newly created ports of same network
* `f345d0 <https://git.opendaylight.org/gerrit/#/q/f345d08a623fcfadfbe6f889abfc121f6d5dd8c6>`_ `BUG-7966 <https://bugs.opendaylight.org/show_bug.cgi?id=7966>`_: Fix route origin for some vrfEntries after VM migration
* `5729c6 <https://git.opendaylight.org/gerrit/#/q/5729c60b6f45e66cb84673f926a01227244ca0a6>`_ `BUG-7842 <https://bugs.opendaylight.org/show_bug.cgi?id=7842>`_: ACL: Arp flows missing in ACL tables for overlapping MAC address
* `aa12b7 <https://git.opendaylight.org/gerrit/#/q/aa12b7829903049dc23d475e4f77e20db6fc59de>`_ `BUG-7826 <https://bugs.opendaylight.org/show_bug.cgi?id=7826>`_: proper elan djc job retries
* `c804af <https://git.opendaylight.org/gerrit/#/q/c804affe0bff5b0cefd69b5920016b94fb2816d5>`_ `BUG-7896 <https://bugs.opendaylight.org/show_bug.cgi?id=7896>`_ OptimisticLockFailedException
* `e72a98 <https://git.opendaylight.org/gerrit/#/q/e72a989bd341221d5056a4991ebd87f2e68ed9e7>`_ `BUG-7863 <https://bugs.opendaylight.org/show_bug.cgi?id=7863>`_ - Add Layer 4 Match for flow entries for TCP/UDP security group rule with no min/max
* `1eb928 <https://git.opendaylight.org/gerrit/#/q/1eb928d9286a0ee1fbb3ea07cff407b3bba8cf22>`_ `BUG-7727 <https://bugs.opendaylight.org/show_bug.cgi?id=7727>`_ : Local and Connected routes do not get imported
* `e54df1 <https://git.opendaylight.org/gerrit/#/q/e54df13a58d70dd4bdb245184add3703c46682b1>`_ Fix potential NPEs in ELAN tunnel handling
* `603a74 <https://git.opendaylight.org/gerrit/#/q/603a74830133f1d838ead52e56d495210c8754f9>`_ `BUG-7418 <https://bugs.opendaylight.org/show_bug.cgi?id=7418>`_ Run local group creation as async task with key equal to subsequent tasks.
* `795d5d <https://git.opendaylight.org/gerrit/#/q/795d5d186edc2fdfad50ccb2797779a38a232e1b>`_ `BUG-7725 <https://bugs.opendaylight.org/show_bug.cgi?id=7725>`_:  AAP with prefix 0.0.0.0/0 not supported in ACL
* `0d0dd6 <https://git.opendaylight.org/gerrit/#/q/0d0dd6d24b1948b05761235db22c58ef5823dbc9>`_ Fix for GwMac flow deletion during interface delete
* `8b06f0 <https://git.opendaylight.org/gerrit/#/q/8b06f06f4d31edd4124a90d4637c488a61e11cac>`_ `BUG-7875 <https://bugs.opendaylight.org/show_bug.cgi?id=7875>`_: Separated out snmap create and update workflow
* `416e01 <https://git.opendaylight.org/gerrit/#/q/416e01c400d4e5230cc9814c1f0fb22236bd28cd>`_ Adding some more debug logs to elan module
* `dbaaa3 <https://git.opendaylight.org/gerrit/#/q/dbaaa3de03b8597ebaafb39cfcf9ee146aeb9c4b>`_ `BUG-7817 <https://bugs.opendaylight.org/show_bug.cgi?id=7817>`_ & `BUG-7838 <https://bugs.opendaylight.org/show_bug.cgi?id=7838>`_: DHCP ARP flow is not added and irrelevant ARP flows                      are installed in compute node.
* `47b3a7 <https://git.opendaylight.org/gerrit/#/q/47b3a729188fef328d9dcef8cf446e6d335855fa>`_ `BUG-7888 <https://bugs.opendaylight.org/show_bug.cgi?id=7888>`_: handle update of floating ip port
* `d46817 <https://git.opendaylight.org/gerrit/#/q/d4681773266d9507444a792096b274214b949e91>`_ `BUG-7878 <https://bugs.opendaylight.org/show_bug.cgi?id=7878>`_: provider interface MACs are installed on remote DPNs
* `1ed61e <https://git.opendaylight.org/gerrit/#/q/1ed61e81b0f6e477fb2e4b0c35d7101d3741d9e2>`_ Rectified incorrect help usage displayed for BGP add-neighbor cli command
* `b28049 <https://git.opendaylight.org/gerrit/#/q/b28049cff05f46725102e9f678cbf0ca8b7825b0>`_ `BUG-7787 <https://bugs.opendaylight.org/show_bug.cgi?id=7787>`_ - missing flows in T21
* `d26650 <https://git.opendaylight.org/gerrit/#/q/d26650886358e945a673b963aead58895f94de49>`_ `BUG-7931 <https://bugs.opendaylight.org/show_bug.cgi?id=7931>`_:  SubnetRoue re-election to be triggered on disconnected nodes
* `987db2 <https://git.opendaylight.org/gerrit/#/q/987db2384925c49681315146457ab9c10b2c690a>`_ `BUG-7876 <https://bugs.opendaylight.org/show_bug.cgi?id=7876>`_ : After router association to L3vpn, one of the VM ip is not removed from router interface to BGPVPN
* `a626bd <https://git.opendaylight.org/gerrit/#/q/a626bd9f7e0b209db988e3a143085351d72d58da>`_ `BUG-7885 <https://bugs.opendaylight.org/show_bug.cgi?id=7885>`_ - CSIT Sporadic failures - tempest.scenario.test_port_security_macspoofing_port
* `24ef0a <https://git.opendaylight.org/gerrit/#/q/24ef0a568980b609fad9f2ca6bf19674cb043eca>`_ `BUG-7839 <https://bugs.opendaylight.org/show_bug.cgi?id=7839>`_: ACL: ACL flows are not deleted from source host during VM migration
* `085965 <https://git.opendaylight.org/gerrit/#/q/085965082529398e4f1dc6866c3c7c34de941a1d>`_ Use the right service name when binding service
* `8eadc9 <https://git.opendaylight.org/gerrit/#/q/8eadc96456ac554e971ccf7b519ac928b44c711a>`_ corrected the population of BGP Total Prefixes counter
* `6cacda <https://git.opendaylight.org/gerrit/#/q/6cacdafe2e9482de476a27e4ecc1f94472964f1f>`_ `BUG-7856 <https://bugs.opendaylight.org/show_bug.cgi?id=7856>`_: Reverse SNAT flows order to minimize race possibility
* `cec17e <https://git.opendaylight.org/gerrit/#/q/cec17ee2ef9f64d24ddf3331af18e3ceb5a69bd2>`_ `BUG-7714 <https://bugs.opendaylight.org/show_bug.cgi?id=7714>`_: VPN Operational Interfaces not getting removed at all.
* `11509a <https://git.opendaylight.org/gerrit/#/q/11509a60b7acbe907390a506255645574bdc1a5d>`_ `BUG-7831 <https://bugs.opendaylight.org/show_bug.cgi?id=7831>`_ : BgpRouter receives unnecessary events
* `19da79 <https://git.opendaylight.org/gerrit/#/q/19da798780887c7ac0379c5d35f742954b5f699b>`_ `BUG-7881 <https://bugs.opendaylight.org/show_bug.cgi?id=7881>`_ - Traffic drops when not matching UL SC starting in a VPNPseudoPort
* `c82cf8 <https://git.opendaylight.org/gerrit/#/q/c82cf8d5537aa0b32d9851b4f832221792c48b15>`_ `BUG-7861 <https://bugs.opendaylight.org/show_bug.cgi?id=7861>`_: No ping response from FIP on 1st router when adding 2nd FIP
* `021f7c <https://git.opendaylight.org/gerrit/#/q/021f7c1c3f9787a7f6d3f15d8c7cf2c30bf6dd86>`_ `BUG-7824 <https://bugs.opendaylight.org/show_bug.cgi?id=7824>`_ ModifiedNodeDoesNotExistException
* `9352c7 <https://git.opendaylight.org/gerrit/#/q/9352c765f3944dbf1f80ea7d4eee8c50fa30cc5c>`_ Cleanup errors for networks of unsupported type
* `56d147 <https://git.opendaylight.org/gerrit/#/q/56d147035abd6cb351c598fd1789bf6565f59601>`_ `BUG-7775 <https://bugs.opendaylight.org/show_bug.cgi?id=7775>`_: Using DJC for NAT Interface-state Listeners
* `87a7d7 <https://git.opendaylight.org/gerrit/#/q/87a7d70173a48628381b4c9be1160cc811a478dd>`_ `BUG-7824 <https://bugs.opendaylight.org/show_bug.cgi?id=7824>`_ - ModifiedNodeDoesNotExistException
* `bd0183 <https://git.opendaylight.org/gerrit/#/q/bd01838697561a81be7ca86145c3312d4d233dd5>`_ releasing dcn thread once tunnel interface state dcn delivered
* `25cdfd <https://git.opendaylight.org/gerrit/#/q/25cdfdb8332eb59225869facd52e7247869859a9>`_ `BUG-7780 <https://bugs.opendaylight.org/show_bug.cgi?id=7780>`_ : NAT RPC's for getting SNAT/DNAT translation information.
* `520a8c <https://git.opendaylight.org/gerrit/#/q/520a8cd2454d1d3c414f39794634de155bf43533>`_ `BUG-7815 <https://bugs.opendaylight.org/show_bug.cgi?id=7815>`_: Using DJC for VpnManager Interface-state Listeners
* `c60308 <https://git.opendaylight.org/gerrit/#/q/c60308141800bffcb4d457d8a849eae8fa305157>`_ `BUG-7843 <https://bugs.opendaylight.org/show_bug.cgi?id=7843>`_ - Missing buckets in ELAN BC group installation during OVS restart
* `36406c <https://git.opendaylight.org/gerrit/#/q/36406c667555f740997f58fbe8731227efbe7858>`_ `BUG-7786 <https://bugs.opendaylight.org/show_bug.cgi?id=7786>`_ Delete and re add of access port handling
* `8d36d5 <https://git.opendaylight.org/gerrit/#/q/8d36d5fc528360a5ceeef951988ae39d0e0bd297>`_ `BUG-7772 <https://bugs.opendaylight.org/show_bug.cgi?id=7772>`_ - Service Chaining is not being applied to VMs in the L3VPN
* `1079dc <https://git.opendaylight.org/gerrit/#/q/1079dc0b460b5da8e2fe11e59a0050c1ba17ab6b>`_ Adding debug statements to track caching of Operational Vpn Instances
* `5f4c62 <https://git.opendaylight.org/gerrit/#/q/5f4c62a3d021670e7229661171d16c7da98ec5f8>`_ Fix priority in IntervpnLink flows installed in LFIB
* `5e3b48 <https://git.opendaylight.org/gerrit/#/q/5e3b48f202a8d13220f59c1b22bbf6c9c6a7bdb9>`_ adding lport tag for temporary mac learning
* `e9b04d <https://git.opendaylight.org/gerrit/#/q/e9b04d7d54c1b2f478d03f40a3f89d306ca50f52>`_ Fix several NPEs showing up in CSIT
* `ff40ea <https://git.opendaylight.org/gerrit/#/q/ff40eae4a6eeb5be9321a0239b84a27035343254>`_ Fix BFD regression
* `c8cab0 <https://git.opendaylight.org/gerrit/#/q/c8cab09f29cf26ea151a9f39c0363767c1ba1c20>`_ BUG7748: Subnet-op-data empty after cluster reboot
* `cd4b0f <https://git.opendaylight.org/gerrit/#/q/cd4b0f6d5f54aa10765788b46499153028523522>`_ `BUG-7790 <https://bugs.opendaylight.org/show_bug.cgi?id=7790>`_ - Attempting to install RNH on local DPN for FIB with custom instructions
* `cd0b95 <https://git.opendaylight.org/gerrit/#/q/cd0b9568baf53e380bc3857e340e0ae19a82aa19>`_ Use Objects equals instead of == where necessary
* `479c6a <https://git.opendaylight.org/gerrit/#/q/479c6afb5fa53bd0e4de9bb55020b79be20a2e41>`_ Update netvirt guide - correct DB DROP procedure
* `826aa4 <https://git.opendaylight.org/gerrit/#/q/826aa42f9c8ebbd4136df31d8bce71561a99e914>`_ `BUG-7599 <https://bugs.opendaylight.org/show_bug.cgi?id=7599>`_ added l2gw validate cli
* `3dfb74 <https://git.opendaylight.org/gerrit/#/q/3dfb74fd00669575cb853d7b45cb259cb11e6c50>`_ `BUG-6589 <https://bugs.opendaylight.org/show_bug.cgi?id=6589>`_ l2gw cluster reboot fixes
* `7e6eb4 <https://git.opendaylight.org/gerrit/#/q/7e6eb44893e9416c70ef0df4e2cba93d6b7dea0e>`_ `BUG-7606 <https://bugs.opendaylight.org/show_bug.cgi?id=7606>`_: Fix for missed tunnel flows, after VM live migration
* `9098a7 <https://git.opendaylight.org/gerrit/#/q/9098a712ef82e0e7df87ba115b952b5377646273>`_ `BUG-7773 <https://bugs.opendaylight.org/show_bug.cgi?id=7773>`_: Objects should be compared with "equals()".
* `209df4 <https://git.opendaylight.org/gerrit/#/q/209df47ae9f7fafb4017c3b78e01e03a1739838d>`_ Improve log messages.
* `afdb29 <https://git.opendaylight.org/gerrit/#/q/afdb2934eeea67006631cd313c6581772ed4230d>`_ `BUG-7392 <https://bugs.opendaylight.org/show_bug.cgi?id=7392>`_: L2 Forwarding Table=110 Flows Missing
* `a3a91c <https://git.opendaylight.org/gerrit/#/q/a3a91c1c01d294a8e36662284c4cc82a2749c2e1>`_ `BUG-7729 <https://bugs.opendaylight.org/show_bug.cgi?id=7729>`_: Remove redundant tunnel drop flow in table 110
* `079b07 <https://git.opendaylight.org/gerrit/#/q/079b071c122cc3918b419d0ac62e504a3d89030a>`_ BUG7748: Subnet-op-data empty after cluster reboot
* `f7137f <https://git.opendaylight.org/gerrit/#/q/f7137f52b4f5dca3f25ad061ebd42beaa1e45de6>`_ `BUG-7680 <https://bugs.opendaylight.org/show_bug.cgi?id=7680>`_: Fix Nexthop when advertising to DCGW
* `59eb41 <https://git.opendaylight.org/gerrit/#/q/59eb41af829777313970c0fe3948b0ac1297664c>`_ `BUG-7680 <https://bugs.opendaylight.org/show_bug.cgi?id=7680>`_: leaked routes not advertised to DC-GW
* `f89bce <https://git.opendaylight.org/gerrit/#/q/f89bce1740e0382795b8a69c5b31fca688ad683b>`_ `BUG-7372 <https://bugs.opendaylight.org/show_bug.cgi?id=7372>`_ - Supress error of NAPT switch selection failure before router-dpn association
* `9002f3 <https://git.opendaylight.org/gerrit/#/q/9002f34fe2998df19f82818650115afa21d9f73a>`_ Setup SMAC on routed packets destined to virtual endpoints
* `adb379 <https://git.opendaylight.org/gerrit/#/q/adb379614a2cafe0ca1b225e7b239dfd14a5c5c0>`_ `BUG-7445 <https://bugs.opendaylight.org/show_bug.cgi?id=7445>`_: Improve the performance on bulk create.
* `62b919 <https://git.opendaylight.org/gerrit/#/q/62b919d30cf2db9ab19dc86b9399d86ab5026668>`_ `BUG-7733 <https://bugs.opendaylight.org/show_bug.cgi?id=7733>`_: NeutronVPN: Error out if VxLAN/VLAN network configured without seg-id
* `cf78ad <https://git.opendaylight.org/gerrit/#/q/cf78ad57f64e1c94722ace7b8d556d9991ceadf4>`_ `BUG-7714 <https://bugs.opendaylight.org/show_bug.cgi?id=7714>`_ - Vpn Interface not deleted from oper DS
* `e5d465 <https://git.opendaylight.org/gerrit/#/q/e5d4650157c5c4c34b0e8fba750f48fb5fec4b1b>`_ `BUG-7720 <https://bugs.opendaylight.org/show_bug.cgi?id=7720>`_: create/delete VPN CLI handling addition/removal of subnets
* `51f044 <https://git.opendaylight.org/gerrit/#/q/51f04417d1b85d2516bed1c368cce1b6304ef1d8>`_ `BUG-7601 <https://bugs.opendaylight.org/show_bug.cgi?id=7601>`_: Cleanup Elan instances when a network is deleted
* `d42502 <https://git.opendaylight.org/gerrit/#/q/d4250272f0f814be66dabfa3f820ac3886ec4964>`_ `BUG-7717 <https://bugs.opendaylight.org/show_bug.cgi?id=7717>`_ Fix OOM when defining large number of networks
* `e2f333 <https://git.opendaylight.org/gerrit/#/q/e2f3335eb971f2d1a792e28db54139b8d0d69035>`_ `BUG-7488 <https://bugs.opendaylight.org/show_bug.cgi?id=7488>`_ Add option to disable auto bridge creation
* `3e8f3e <https://git.opendaylight.org/gerrit/#/q/3e8f3e50ea31ed72342681b474ca0775f4e636b2>`_ `BUG-7591 <https://bugs.opendaylight.org/show_bug.cgi?id=7591>`_: Allow configuration of inactivity_probe and max_backoff for OVS
* `18628c <https://git.opendaylight.org/gerrit/#/q/18628cc267bf4a16e7fbdd22a78403a395a95d5a>`_ `BUG-7667 <https://bugs.opendaylight.org/show_bug.cgi?id=7667>`_: SNAT table 46&44 are not getting programmed when private BGPVPN
* `b83b1c <https://git.opendaylight.org/gerrit/#/q/b83b1c54f1859ef78c1cc242a2bdfeec9cf79160>`_ `BUG-7489 <https://bugs.opendaylight.org/show_bug.cgi?id=7489>`_: Add startup config file for elanmanager-config
* `95cd2c <https://git.opendaylight.org/gerrit/#/q/95cd2cd97ee967bc4604acf9ab3418d4e41ff1d1>`_ `BUG-7700 <https://bugs.opendaylight.org/show_bug.cgi?id=7700>`_: create-l3vpn (REST/CLI) should not allow another VPN to use the same VPNID
* `ac59b7 <https://git.opendaylight.org/gerrit/#/q/ac59b72c8f1ceacd9ef88e0691d9b175119d4b3c>`_ Fix ElanStatusMonitorJMX failing upon bundle reinitialization.
* `b89e52 <https://git.opendaylight.org/gerrit/#/q/b89e527db18ec66bd1d5433079f21cbb4b4ffc02>`_ SNAT tests failures
* `36a01f <https://git.opendaylight.org/gerrit/#/q/36a01ff5fa64c26da8890634af2f2aca1652bef8>`_ BUG7308: fix leaf to leaf traffic
* `d7d621 <https://git.opendaylight.org/gerrit/#/q/d7d621ad732bb596cce5cb5aeb02e53bc53f0de1>`_ `BUG-7461 <https://bugs.opendaylight.org/show_bug.cgi?id=7461>`_
* `d25478 <https://git.opendaylight.org/gerrit/#/q/d25478a241d7abaabf4c1edbcc79df4bed475209>`_ `BUG-7669 <https://bugs.opendaylight.org/show_bug.cgi?id=7669>`_: Add multi-provider network support to NetVirt for L2 Gateway.
* `bfdc0f <https://git.opendaylight.org/gerrit/#/q/bfdc0fdf1c3a8fb463d4e8b5dc3a9c6c764a5c1b>`_ Lower debug level when truncating provider port name
* `cb9359 <https://git.opendaylight.org/gerrit/#/q/cb9359be9b78a0ac8eaf0bab94003df7f1eece3e>`_ [`BUG-7543 <https://bugs.opendaylight.org/show_bug.cgi?id=7543>`_] Replace the request function used by restangular
* `0f1728 <https://git.opendaylight.org/gerrit/#/q/0f17280a67749e636991808e12ff53ec68efbdd8>`_ `BUG-7660 <https://bugs.opendaylight.org/show_bug.cgi?id=7660>`_ Infinite loop while vpn instance removal
* `0b8e3f <https://git.opendaylight.org/gerrit/#/q/0b8e3ffcfc745d73630e670ad45846990012932a>`_ `BUG-7384 <https://bugs.opendaylight.org/show_bug.cgi?id=7384>`_: CSIT Exception: NPE in deleteVpnInterface
* `8aa1ee <https://git.opendaylight.org/gerrit/#/q/8aa1ee9de52f7845ea25a875b953e93a955c5c07>`_ `BUG-7532 <https://bugs.opendaylight.org/show_bug.cgi?id=7532>`_ - arp responder rule sometimes missing after vm reboot
* `908b42 <https://git.opendaylight.org/gerrit/#/q/908b4219ad6090c54e055c026565a34ea0b2560d>`_ `BUG-7601 <https://bugs.opendaylight.org/show_bug.cgi?id=7601>`_ - Cleanup Elan instances when a network is deleted
* `1599b4 <https://git.opendaylight.org/gerrit/#/q/1599b49658a2ef3106998af702042483bf176574>`_ `BUG-7436 <https://bugs.opendaylight.org/show_bug.cgi?id=7436>`_: Handle VpnInterfaces of VpnInstance
* `fcef7b <https://git.opendaylight.org/gerrit/#/q/fcef7b674314cbfe154e5bf25decedb7c14e7de8>`_ `BUG-7536 <https://bugs.opendaylight.org/show_bug.cgi?id=7536>`_: Static routes not handled when ivpnlink becomes active
* `b3afca <https://git.opendaylight.org/gerrit/#/q/b3afcaf173483536ab496a7bcfa7dbd3363a3b05>`_ `BUG-7530 <https://bugs.opendaylight.org/show_bug.cgi?id=7530>`_ : ElanPacketInHandler mutexes are too coarse
* `e04ffc <https://git.opendaylight.org/gerrit/#/q/e04ffc6091b3e3f020e8c76b961efbccca7da204>`_ `BUG-7533 <https://bugs.opendaylight.org/show_bug.cgi?id=7533>`_ : Fix for bind/unbind in DHCP service
* `d68ba3 <https://git.opendaylight.org/gerrit/#/q/d68ba30c0c233a4215806684185cd5104071becb>`_ `BUG-7567 <https://bugs.opendaylight.org/show_bug.cgi?id=7567>`_: External subnet group is not updated with external gwmac
* `eb9509 <https://git.opendaylight.org/gerrit/#/q/eb95098699d00aab74a4b14013d3176847ef7ade>`_ `BUG-7528 <https://bugs.opendaylight.org/show_bug.cgi?id=7528>`_ : Don't learn the DMAC flows from other DPNs
* `eeb431 <https://git.opendaylight.org/gerrit/#/q/eeb43100fc69728f69cefdf8dd32356fecc6d1c4>`_ `BUG-7525 <https://bugs.opendaylight.org/show_bug.cgi?id=7525>`_ - Inter-VPN link static/connected routes leaking not working
* `eb0618 <https://git.opendaylight.org/gerrit/#/q/eb06188f53caffc0f5beaa5d429c9197377e43e5>`_ `BUG-7547 <https://bugs.opendaylight.org/show_bug.cgi?id=7547>`_ : Ping from DC-GW to invisible ip configured in VM is failing
* `d96917 <https://git.opendaylight.org/gerrit/#/q/d96917352911d4e09f4148636d1cfacf02118d91>`_ `BUG-7497 <https://bugs.opendaylight.org/show_bug.cgi?id=7497>`_ - NAPT rules missed for second DPN
* `669678 <https://git.opendaylight.org/gerrit/#/q/669678ebc3112fa43c9049469000f307d32496d9>`_ Fix links to openstack images
* `1a03d6 <https://git.opendaylight.org/gerrit/#/q/1a03d63f823f31dd0646111303e9f49b03a178ba>`_ `BUG-7478 <https://bugs.opendaylight.org/show_bug.cgi?id=7478>`_ : SNAT traffic to use router GW MAC
* `4d6439 <https://git.opendaylight.org/gerrit/#/q/4d6439e569c5dd97ca79b194734e82cb3f9c35a7>`_ Spec to setup SMAC on routed packets destined to virtual endpoints
* `5e20e6 <https://git.opendaylight.org/gerrit/#/q/5e20e63ece2934bbc19eb8f9db25f78759a18e3e>`_ Minor updates to openstack doc
* `6dcb23 <https://git.opendaylight.org/gerrit/#/q/6dcb23673439646fb0f267787920ddf2fce9136c>`_ `BUG-7405 <https://bugs.opendaylight.org/show_bug.cgi?id=7405>`_: IVpnLink routes not removed from BGP on cascade
* `f9473e <https://git.opendaylight.org/gerrit/#/q/f9473eae74ae7ca88bc1c92b6fdc9504ee622211>`_ BUG7318: ETREE ODL learning leaf MACS on wrong tag
* `edd071 <https://git.opendaylight.org/gerrit/#/q/edd07127a9ab150424e40a972f9cb4dc91142258>`_ `BUG-7520 <https://bugs.opendaylight.org/show_bug.cgi?id=7520>`_: Avoid creating auto-tunnels for VLAN tenant networks
* `c83656 <https://git.opendaylight.org/gerrit/#/q/c83656339980e8817a42ea0fd52dd17a90a5f6aa>`_ `BUG-7488 <https://bugs.opendaylight.org/show_bug.cgi?id=7488>`_: Autobridge overwrites DpnId if bridge already exists
* `55d659 <https://git.opendaylight.org/gerrit/#/q/55d659d2a63983540cdb3f59329ae21ba99c7e0c>`_ `BUG-7363 <https://bugs.opendaylight.org/show_bug.cgi?id=7363>`_: Fix for Flows are overlapped when we add custom SG along with ANY rule.
* `beac12 <https://git.opendaylight.org/gerrit/#/q/beac122d2cb42626554143b56bc9bc0a350ca5fe>`_ Use Developer Guide text in place of Documentation
* `5badc1 <https://git.opendaylight.org/gerrit/#/q/5badc1fd137c1d9a369c8bb09bb6aad349889d61>`_ Updates to NetVirt docs from some user feedback
* `2d3c0b <https://git.opendaylight.org/gerrit/#/q/2d3c0b22dfe54a13ae3a37a2c0852a8568c2121b>`_ Add basic initial docs for new layout
* `8d3814 <https://git.opendaylight.org/gerrit/#/q/8d381431396402e712b814fb07feb4eb3bab80e6>`_ Update specs template
* `d19a3b <https://git.opendaylight.org/gerrit/#/q/d19a3bc6a0946a86692b81728f41e9a339c54d55>`_ Initial layout for NetVirt docs migration
* `368a0b <https://git.opendaylight.org/gerrit/#/q/368a0b001f1a4a61e7f25ab498f45bac442b4a8a>`_ Added Creative Commons attribution
* `18f52b <https://git.opendaylight.org/gerrit/#/q/18f52b747558a0430a40a4f0d4beb55a16dfb9a3>`_ Update specs-template
* `384e74 <https://git.opendaylight.org/gerrit/#/q/384e74290cc51c4539b931b8c8249b808908546b>`_ Add link to specs
* `927522 <https://git.opendaylight.org/gerrit/#/q/92752291bb66efe8655beb40c86731a7988a07f0>`_ Add template for design spec documents
* `c71d28 <https://git.opendaylight.org/gerrit/#/q/c71d28ecb1fc7a3548e9fe7b7bcb68b00c80b70c>`_ BUG7339:EtreeLeafBG isn't updated with new remotes
* `f8be23 <https://git.opendaylight.org/gerrit/#/q/f8be238ac6dcf8b471492c22d604351f63d0a17a>`_ `BUG-7476 <https://bugs.opendaylight.org/show_bug.cgi?id=7476>`_: Configure Reachable Time in IPv6 Router Advt
* `ab565a <https://git.opendaylight.org/gerrit/#/q/ab565a9533ee1bf7d742bb16cf1b264115244106>`_ Remove unnecessary page headings
* `968884 <https://git.opendaylight.org/gerrit/#/q/9688843038246340265eb6efe62cc4d7f0a8378b>`_ Remove unneeded code from VpnUtil
* `a2ef06 <https://git.opendaylight.org/gerrit/#/q/a2ef0679cf9dd2126d995120d423cb0afe3e2692>`_ `BUG-7403 <https://bugs.opendaylight.org/show_bug.cgi?id=7403>`_ : getl3vpn RPC behavioural issues
* `962e39 <https://git.opendaylight.org/gerrit/#/q/962e39ba824e3346b1018cd21c16d3de86367ff7>`_ `BUG-7355 <https://bugs.opendaylight.org/show_bug.cgi?id=7355>`_: Remove Vrf Entries in a single transaction
* `186314 <https://git.opendaylight.org/gerrit/#/q/1863141a2cdd2355e50024a4730c677a3b049438>`_ `BUG-7406 <https://bugs.opendaylight.org/show_bug.cgi?id=7406>`_: The flows are overridden.
* `35fdd5 <https://git.opendaylight.org/gerrit/#/q/35fdd5334f7bef890aec99f0ec6634a6a82995ea>`_ `BUG-7393 <https://bugs.opendaylight.org/show_bug.cgi?id=7393>`_: Flows are not getting removed from table:20 and table:90
* `8aaf43 <https://git.opendaylight.org/gerrit/#/q/8aaf43d8502eb9d8b63dc7abfa3e9ca4fab795fb>`_ Add Docs for netvirt
* `de2eea <https://git.opendaylight.org/gerrit/#/q/de2eea8377175bfe6a855dcc0becfaa6b8aa989d>`_ `BUG-7496 <https://bugs.opendaylight.org/show_bug.cgi?id=7496>`_: Errors and exceptions handling
* `d9ff04 <https://git.opendaylight.org/gerrit/#/q/d9ff04145fafcf9cc62695fedcfb8838c8c17f8f>`_ Scalability of ServiceChainTag
* `1d7fb1 <https://git.opendaylight.org/gerrit/#/q/1d7fb14b9ed91dd613cfa908b847787c3074bb24>`_ `BUG-7447 <https://bugs.opendaylight.org/show_bug.cgi?id=7447>`_: Unexpected flows from T21 to T44 for FIP
* `4d1355 <https://git.opendaylight.org/gerrit/#/q/4d1355e9eedcc62193b72139e37d3680a080b069>`_ `BUG-7358 <https://bugs.opendaylight.org/show_bug.cgi?id=7358>`_ - Inter-VPN traffic is drop when out_port == in_port
* `a9471b <https://git.opendaylight.org/gerrit/#/q/a9471be997b786429a84c8e08330164626e62ba1>`_ `BUG-7382 <https://bugs.opendaylight.org/show_bug.cgi?id=7382>`_: NPE while getting the napt primary-switch-id
* `2f759b <https://git.opendaylight.org/gerrit/#/q/2f759b5fac1511619b25033865b831eb4447da06>`_ `BUG-7229 <https://bugs.opendaylight.org/show_bug.cgi?id=7229>`_: Allow certain ICMPv6 NDP packets by default
* `5ea13d <https://git.opendaylight.org/gerrit/#/q/5ea13decc4ba57bf8e4669a98f3ab18c2b3af760>`_ `BUG-7423 <https://bugs.opendaylight.org/show_bug.cgi?id=7423>`_: Clean unnecessary leaked flows and fibEntries
* `0ed778 <https://git.opendaylight.org/gerrit/#/q/0ed778c036b478d27a3e9c4cdf6d820a9daa90f0>`_ `BUG-7448 <https://bugs.opendaylight.org/show_bug.cgi?id=7448>`_ - External network recreation fails in newton nodl v2
* `a5861d <https://git.opendaylight.org/gerrit/#/q/a5861d0b20ea0d1e5c2281059f2364d486857a00>`_ `BUG-7340 <https://bugs.opendaylight.org/show_bug.cgi?id=7340>`_: overwritten rule in T28 for multi-tenant
* `46ae4a <https://git.opendaylight.org/gerrit/#/q/46ae4a9b225cc3e5596d5bd08692722fdbe2be95>`_ `BUG-7422 <https://bugs.opendaylight.org/show_bug.cgi?id=7422>`_ Resolve checkstyle errors
* `43a2ac <https://git.opendaylight.org/gerrit/#/q/43a2acfa4acc52edef55108a8e88aad0d0f55592>`_ `BUG-7426 <https://bugs.opendaylight.org/show_bug.cgi?id=7426>`_ Adding elantag along with mac-address as key to synchronized block
* `35904c <https://git.opendaylight.org/gerrit/#/q/35904c271aed3a46581399646bd50a7846c2717b>`_ `BUG-7444 <https://bugs.opendaylight.org/show_bug.cgi?id=7444>`_ : External routes are not getting populated
* `83c0d3 <https://git.opendaylight.org/gerrit/#/q/83c0d3e5f839cb738b75af513ce1c62624664bd4>`_ `BUG-7463 <https://bugs.opendaylight.org/show_bug.cgi?id=7463>`_: nexthop in leaked routes is wrongly set
* `727b6f <https://git.opendaylight.org/gerrit/#/q/727b6f33a034d41d1937dc74671c563ca04587c1>`_ `BUG-6866 <https://bugs.opendaylight.org/show_bug.cgi?id=6866>`_ - missed NAPT rules for second router
* `4cd390 <https://git.opendaylight.org/gerrit/#/q/4cd39005195a623e31e19c4d0e2573c5846b1363>`_ `BUG-7142 <https://bugs.opendaylight.org/show_bug.cgi?id=7142>`_ - all VpnPortIpToPort entries are lost from ODL cache after reboot.
* `a1655c <https://git.opendaylight.org/gerrit/#/q/a1655c1156a2246bd9d384846e918d1f704ebd75>`_ `BUG-7321 <https://bugs.opendaylight.org/show_bug.cgi?id=7321>`_: ELAN Pseudo-port flows not installed on new DPNs
* `d453e7 <https://git.opendaylight.org/gerrit/#/q/d453e7e0a7b2a3d1a8e66e9164d6182b7e868fdd>`_ `BUG-7439 <https://bugs.opendaylight.org/show_bug.cgi?id=7439>`_: Discard internal VPNs for InterVpnLink purposes
* `18a85c <https://git.opendaylight.org/gerrit/#/q/18a85c6497fc3557a71605a835750a497351b62a>`_ `BUG-7409 <https://bugs.opendaylight.org/show_bug.cgi?id=7409>`_ - Traffic Drop from NFip VM to FIP VM
* `623731 <https://git.opendaylight.org/gerrit/#/q/6237311db2c8bae766b0265934818fc061573cf8>`_ subnet-op-data and port-op-data is empty after cluster reboot
* `8bbec1 <https://git.opendaylight.org/gerrit/#/q/8bbec13ccec5143d4c8fbe432fb6c726190e7719>`_ `BUG-7377 <https://bugs.opendaylight.org/show_bug.cgi?id=7377>`_, `BUG-7383 <https://bugs.opendaylight.org/show_bug.cgi?id=7383>`_: handling unnecessary error log
* `d02fbe <https://git.opendaylight.org/gerrit/#/q/d02fbeff6f0e749dc79fe30e408c0569f2d2d5f2>`_ `BUG-7260 <https://bugs.opendaylight.org/show_bug.cgi?id=7260>`_: no rules in table 26 for default route
* `bdeb09 <https://git.opendaylight.org/gerrit/#/q/bdeb097513bf32a5091640371f2c2c23a9079c0f>`_ `BUG-7359 <https://bugs.opendaylight.org/show_bug.cgi?id=7359>`_: duplicate local broadcast group backets

Neutron Northbound
------------------
* `6ef259 <https://git.opendaylight.org/gerrit/#/q/6ef2598b6fde21eb8d97d6095ca9796559606363>`_ `BUG-7848 <https://bugs.opendaylight.org/show_bug.cgi?id=7848>`_: Allow neutron port create with security disabled.

ODL Root Parent
---------------
* `c52629 <https://git.opendaylight.org/gerrit/#/q/c5262947fd4624f0fa85a00a7f7c14116d26890a>`_ Bump bouncycastle dependencies from 1.54 to 1.56
* `70436d <https://git.opendaylight.org/gerrit/#/q/70436d9528fef06bbe1c1c848bb4b8d24981b4e0>`_ Bump netty to 4.0.44
* `93acc9 <https://git.opendaylight.org/gerrit/#/q/93acc989469e0fc8c9ed13d08a10d7e1936b57c1>`_ git-commit-id-plugin skipped on mvn -Pq, because it slows down a little
* `6cc350 <https://git.opendaylight.org/gerrit/#/q/6cc350b4e62b4f2392d3f0990bc4916e25180627>`_ [eclipse] git-commit-id-plugin ignored in M2E by lifecycle-mapping
* `95d620 <https://git.opendaylight.org/gerrit/#/q/95d6205366e076aa329b2cc350e99e080e4cff19>`_ git-commit-id-plugin cannot fail build for new projects w.o. .git/
* `44163f <https://git.opendaylight.org/gerrit/#/q/44163fdb1c880a0883633697c020752a8cc01ffb>`_ git-commit-id-plugin to put a META-INF/git.properties in all built JAR
* `6fffad <https://git.opendaylight.org/gerrit/#/q/6fffad02b8ed26006c6cd6c798ff1922afea2fe5>`_ Skip Jacoco in SingleFeatureTest
* `7b8f97 <https://git.opendaylight.org/gerrit/#/q/7b8f973b3fcbba08fc8fc09e498dd3d1cbdfe6cb>`_ Bump netty to 4.0.43
* `c6391b <https://git.opendaylight.org/gerrit/#/q/c6391b9851bf1855bfb48bfbcca32dc53bac782f>`_ `BUG-6236 <https://bugs.opendaylight.org/show_bug.cgi?id=6236>`_: Add mdsal.skip.verbose to -Pq Quick profile

ORI C&M Protocol (OCP)
----------------------
* `3d6cd8 <https://git.opendaylight.org/gerrit/#/q/3d6cd88b5a9a360e685643f5b71bfb824ef90d1e>`_ This patch remove ^ and $ signs due to https://git.opendaylight.org/gerrit/#/c/53224/.

OVSDB Integration
-----------------
* `d62858 <https://git.opendaylight.org/gerrit/#/q/d62858b9752f0a749259d96ef8a844299a388bbc>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql
* `66f070 <https://git.opendaylight.org/gerrit/#/q/66f070b7f131a29ebaae4493bb67750bd4b7d1e3>`_ `BUG-7160 <https://bugs.opendaylight.org/show_bug.cgi?id=7160>`_ - operational store still has node after ovs disconnects
* `d06892 <https://git.opendaylight.org/gerrit/#/q/d068922c53ed6f4f17b210464aa2a1bd49adb7f1>`_ `BUG-5306 <https://bugs.opendaylight.org/show_bug.cgi?id=5306>`_: Enable the SSL connection for ovs manager
* `ec389f <https://git.opendaylight.org/gerrit/#/q/ec389f845eae183d55c6682b4f2f3159e589013f>`_ `BUG-7836 <https://bugs.opendaylight.org/show_bug.cgi?id=7836>`_ - Make OVSDB southbound plugin listener port configurable
* `9b5598 <https://git.opendaylight.org/gerrit/#/q/9b5598c67f4eefe10cf2fb715d3b8cd29618e787>`_ `BUG-2487 <https://bugs.opendaylight.org/show_bug.cgi?id=2487>`_ - Too large configuration file from OVS
* `c880b5 <https://git.opendaylight.org/gerrit/#/q/c880b5972f0a3b2b27bf7060d389ae4803723cc3>`_ Checkstyle: fix ParenPad violations
* `05afaa <https://git.opendaylight.org/gerrit/#/q/05afaa315319b573b11516d7b04773b024e9546e>`_ `BUG-7023 <https://bugs.opendaylight.org/show_bug.cgi?id=7023>`_ - NPE at org.opendaylight.ovsdb.southbound.OvsdbConnectionManager.getClient
* `9af401 <https://git.opendaylight.org/gerrit/#/q/9af401d7f08a3c4916dd7dede9624d5b634a8817>`_ `BUG-7563 <https://bugs.opendaylight.org/show_bug.cgi?id=7563>`_: Add config for inactivity_probe and max_backoff
* `da65cb <https://git.opendaylight.org/gerrit/#/q/da65cb6ace86207ddaa0e8310ce2c8d9d4d11000>`_ `BUG-7559 <https://bugs.opendaylight.org/show_bug.cgi?id=7559>`_: Add utilities to expose TP by ext-id, get dpnId from TP
* `3c3451 <https://git.opendaylight.org/gerrit/#/q/3c34510c27a864899c9e530aafeaf81c48c71df9>`_ `BUG-6579 <https://bugs.opendaylight.org/show_bug.cgi?id=6579>`_ removed boilerplate code
* `5eb9b5 <https://git.opendaylight.org/gerrit/#/q/5eb9b508c54f302e4d204e3b228b41abfa1087d3>`_ `BUG-6579 <https://bugs.opendaylight.org/show_bug.cgi?id=6579>`_ checking the depency before transaction
* `d7306b <https://git.opendaylight.org/gerrit/#/q/d7306bd1b2a06291eb1946215906133c9cb38083>`_ `BUG-6579 <https://bugs.opendaylight.org/show_bug.cgi?id=6579>`_ added dependency queue
* `b1426c <https://git.opendaylight.org/gerrit/#/q/b1426c3bff15635c5f4b9c063a4a184af6cf4a58>`_ `BUG-6579 <https://bugs.opendaylight.org/show_bug.cgi?id=6579>`_ handling back to back tx updates
* `e96963 <https://git.opendaylight.org/gerrit/#/q/e969632ca138215526f1260294481cc5bab2f267>`_ `BUG-7310 <https://bugs.opendaylight.org/show_bug.cgi?id=7310>`_: Add configurable option to skip columns
* `941b7e <https://git.opendaylight.org/gerrit/#/q/941b7edd3efc41688c652f97d84a21db95fe6e51>`_ `BUG-6579 <https://bugs.opendaylight.org/show_bug.cgi?id=6579>`_ added basic unit tests
* `2b9dca <https://git.opendaylight.org/gerrit/#/q/2b9dcab4ec4e79eae4a1badf164cee83d993b5e8>`_ `BUG-7373 <https://bugs.opendaylight.org/show_bug.cgi?id=7373>`_ - ConflictingModificationAppliedException: Node was created by other transaction
* `f83cd3 <https://git.opendaylight.org/gerrit/#/q/f83cd38008840cf96dbb14bfc6022433e8d04915>`_ `BUG-7414 <https://bugs.opendaylight.org/show_bug.cgi?id=7414>`_: Tunnel pushed to wrong OVS

OpenFlow Configuration Protocol (OF-CONFIG)
-------------------------------------------
* `eda88e <https://git.opendaylight.org/gerrit/#/q/eda88e01ff874665760524ad3624d271bb4578cc>`_ fix UT error

OpenFlow Plugin
---------------
* `501d4d <https://git.opendaylight.org/gerrit/#/q/501d4d64c806ad39e90b97def853fa043dda5f30>`_ Fix statistics race condition on big flows
* `86fd39 <https://git.opendaylight.org/gerrit/#/q/86fd396bd6142c58db119096f1badb4fd55719fa>`_ `BUG-7915 <https://bugs.opendaylight.org/show_bug.cgi?id=7915>`_ - Zero flows populated in all switches when connected to Leader Node
* `49b07d <https://git.opendaylight.org/gerrit/#/q/49b07d9d643504f2f8d596e207ef4cf4b9ab8946>`_ Add arbitrary mask for nxm-reg
* `308285 <https://git.opendaylight.org/gerrit/#/q/308285f1cdc36da1b5812d1db7e6e78f862eb14f>`_ Fix connection closing on switch IDLE state
* `9b95b1 <https://git.opendaylight.org/gerrit/#/q/9b95b127c39f6dd18ed3afbbaffaa42a0991aafe>`_ `BUG-7910 <https://bugs.opendaylight.org/show_bug.cgi?id=7910>`_ - Flow with ethernet mask (ff:ff:ff:ff:ff:ff), get stored under alien-id in operational data store
* `11f1b6 <https://git.opendaylight.org/gerrit/#/q/11f1b6ef32ccaaf54a21fa937fe91f8638090deb>`_ Fix comparison between port numbers in match
* `e0030a <https://git.opendaylight.org/gerrit/#/q/e0030a34c3d65a6777804265e724ec57c26817cf>`_ `BUG-7763 <https://bugs.opendaylight.org/show_bug.cgi?id=7763>`_ - Openflow plugin deletes switch from topology while changing mastership from one controller to another
* `5ea445 <https://git.opendaylight.org/gerrit/#/q/5ea4457df89af38b98553b5a9be824f25c545447>`_ `BUG-7736 <https://bugs.opendaylight.org/show_bug.cgi?id=7736>`_ - Forwarding Rules application cluster singleton id should not use the same cluster singleton id as the openflow switch singleton connection handler
* `d813c7 <https://git.opendaylight.org/gerrit/#/q/d813c7f656b4dd6f460b66a2fa303a448f6a4e07>`_ `BUG-7764 <https://bugs.opendaylight.org/show_bug.cgi?id=7764>`_ - Do no throw warning on explicit task cancellation
* `ed16f7 <https://git.opendaylight.org/gerrit/#/q/ed16f7523bac69cf6057b4cb2e16be5689b1df32>`_ `BUG-7501 <https://bugs.opendaylight.org/show_bug.cgi?id=7501>`_ - Ensure delete old statistics and create new ones are executed sequentially to ensure stats are updated properly.
* `4683e5 <https://git.opendaylight.org/gerrit/#/q/4683e5748682a4739139fd11d426bb193385f346>`_ `BUG-7500 <https://bugs.opendaylight.org/show_bug.cgi?id=7500>`_ - TransactionChainManager: fix synchronization issues and error handling when mdsal throws an error.
* `8cdd80 <https://git.opendaylight.org/gerrit/#/q/8cdd80470a2a1aee6b492ea879b845fbe7cd7926>`_ Fix PacketInV10TranslatorTest
* `adbc13 <https://git.opendaylight.org/gerrit/#/q/adbc1301b56bcef7fce70e1233b2e41abca958a3>`_ `BUG-7608 <https://bugs.opendaylight.org/show_bug.cgi?id=7608>`_: use blueprint action-provider/action-service
* `32a99f <https://git.opendaylight.org/gerrit/#/q/32a99fdf314b35f62610b733b10fd25d5793e177>`_ `BUG-7499 <https://bugs.opendaylight.org/show_bug.cgi?id=7499>`_ - ensure statistics scheduler does not die and keep trying while the controller keeps the ownership of the device
* `371c65 <https://git.opendaylight.org/gerrit/#/q/371c65647d29712b92836dcc2b178d42aecbf9c7>`_ `BUG-7453 <https://bugs.opendaylight.org/show_bug.cgi?id=7453>`_ - FlowRemoved doesn't have Removed Reason Information
* `5ea638 <https://git.opendaylight.org/gerrit/#/q/5ea63885f11c0b0a9af7f83ffa03f62ebc9c1b4f>`_ `BUG-6110 <https://bugs.opendaylight.org/show_bug.cgi?id=6110>`_: Fixed bugs in statistics manager due to race condition.
* `de64a9 <https://git.opendaylight.org/gerrit/#/q/de64a9f6fb2da03236885800cc65a4fb10349511>`_ Fix Direct statistics RPC - actions part
* `747013 <https://git.opendaylight.org/gerrit/#/q/747013cb1ff4694645b243ab33af2b990f5a774e>`_ RPC opendaylight-direct-statistics:get-flow-statistics not taking nicira extension match
* `dd7f35 <https://git.opendaylight.org/gerrit/#/q/dd7f3513ffac6dc623f9baf16338213ce58e41c3>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql
* `7d65e9 <https://git.opendaylight.org/gerrit/#/q/7d65e998390d6bc7d8885634e165502c5198f2ce>`_ Bug7485 Make statistics poller parameters configurable.
* `ffc6b3 <https://git.opendaylight.org/gerrit/#/q/ffc6b31b4ff2e620a350e4974048ac3380a89c0c>`_ `BUG-7071 <https://bugs.opendaylight.org/show_bug.cgi?id=7071>`_: adding support for fin-timeout
* `8917aa <https://git.opendaylight.org/gerrit/#/q/8917aaa832af80f4a32071963dc6f0b7454fff1a>`_ `BUG-7481 <https://bugs.opendaylight.org/show_bug.cgi?id=7481>`_ - Flows with nicira actions get corrupted after cluster failure
* `32b316 <https://git.opendaylight.org/gerrit/#/q/32b316e33f931b6126f3fee5169221a4665e4d2f>`_ `BUG-6997 <https://bugs.opendaylight.org/show_bug.cgi?id=6997>`_ supporting OXM_OF_MPLS_LABEL in nicira extensiona
* `e059b1 <https://git.opendaylight.org/gerrit/#/q/e059b1b26590113f7e102c4b0e5127e9c4276dfc>`_ `BUG-7415 <https://bugs.opendaylight.org/show_bug.cgi?id=7415>`_ Reducing the severity of the log message
* `66c19f <https://git.opendaylight.org/gerrit/#/q/66c19f4bbb00399056dce40db7d3312375558bc1>`_ `BUG-7349 <https://bugs.opendaylight.org/show_bug.cgi?id=7349>`_ - Flow ID not updated in operational after removing and adding a flow with same match
* `f9f165 <https://git.opendaylight.org/gerrit/#/q/f9f16550a8c108c18a5024fb778078383161d81e>`_ Add LOG.isDebugEnabled to add performance.
* `3456c4 <https://git.opendaylight.org/gerrit/#/q/3456c4ce718df61277042189b1a2f0e113ee689c>`_ Improve class with lambdas. Change wrong parameters and variables.
* `d1ace0 <https://git.opendaylight.org/gerrit/#/q/d1ace018558f4573567178b12d03aecf8eac3e56>`_ Split long lines (>120)
* `41b15d <https://git.opendaylight.org/gerrit/#/q/41b15da9007b690a3f3e3f74b8af5a1e2bd3ecec>`_ Remove unused imports, repair checkstyle first sentence.
* `84a143 <https://git.opendaylight.org/gerrit/#/q/84a143bc9d5adee46250b8c2633abbd2c91c923b>`_ `BUG-7335 <https://bugs.opendaylight.org/show_bug.cgi?id=7335>`_ - Flow update rejected by switch generates faulty flow entry in operational DS

SDN Interface Application (SDNi)
--------------------------------
* `267746 <https://git.opendaylight.org/gerrit/#/q/26774604697193529f8034a869611b863d49cb44>`_ Do not pull in odl-mdsal-all
* `b53576 <https://git.opendaylight.org/gerrit/#/q/b535761edff80b1afacd848c8a132d3ebe92734a>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql
* `800459 <https://git.opendaylight.org/gerrit/#/q/800459eb1bd53b68b3ef44a588228385489382e3>`_ Removed fixed (and ancient) version of maven-bundle-plugin

SNMP4SDN
--------
* `dbb4de <https://git.opendaylight.org/gerrit/#/q/dbb4de8c78845dab5b05137582e249f65926d554>`_ Fix TopologyServices related internal interface binding failure, and TopologyServiceUtil is removed since no effect

Secure tag eXchange Protocol (SXP)
----------------------------------
* `103831 <https://git.opendaylight.org/gerrit/#/q/103831a39c2878f0676066c4a472631dcf4225b1>`_ `BUG-7347 <https://bugs.opendaylight.org/show_bug.cgi?id=7347>`_ - NodeIdentity listener does not check security fields
* `ecc595 <https://git.opendaylight.org/gerrit/#/q/ecc59522cdb37e206c6241f3ca5019dc8a0def5c>`_ `BUG-7517 <https://bugs.opendaylight.org/show_bug.cgi?id=7517>`_ - Both mode does not send PurgeAll on close

Service Function Chaining
-------------------------
* `b6646c <https://git.opendaylight.org/gerrit/#/q/b6646c9632484cdf52cc8c4bff86ffce3af4f17c>`_ Support VxLAN-gpe in sfc103 demo setup
* `a83a70 <https://git.opendaylight.org/gerrit/#/q/a83a7026d4d9687528dd12c64ccee4ce5b3a801f>`_ `BUG-7548 <https://bugs.opendaylight.org/show_bug.cgi?id=7548>`_ : Delete SFF vxgpe port on SFF delete

Unified Secure Channel (USC)
----------------------------
* `3f9677 <https://git.opendaylight.org/gerrit/#/q/3f96770e9682e6171894ea7d1c260de635753084>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql
* `e1a370 <https://git.opendaylight.org/gerrit/#/q/e1a3708abe46698e78b029f4634d344d62105a4a>`_ Update to work with BouncyCastle 1.55

User Network Interface Manager (UNIMGR)
---------------------------------------
* `a11ecd <https://git.opendaylight.org/gerrit/#/q/a11ecd28858856eb78f56c91ffde16fc8ac09942>`_ `BUG-5222 <https://bugs.opendaylight.org/show_bug.cgi?id=5222>`_: do not pull in odl-mdsal-xsql

Virtual Tenant Network (VTN)
----------------------------
* `b1971f <https://git.opendaylight.org/gerrit/#/q/b1971f8c400e27724712a1ab5be8786bbfa596a3>`_ Fix `BUG-7969 <https://bugs.opendaylight.org/show_bug.cgi?id=7969>`_, to avoid incompatible database queries contructed
* `679f6d <https://git.opendaylight.org/gerrit/#/q/679f6dea38021aa44a25da41fff2f0607d361b0f>`_ `BUG-7402 <https://bugs.opendaylight.org/show_bug.cgi?id=7402>`_: Upgrade Apache Tomcat for VTN coordinator to 7.0.73.
* `8a18c4 <https://git.opendaylight.org/gerrit/#/q/8a18c4c253bd187055a118a3a3d69a608f80be35>`_ `BUG-7360 <https://bugs.opendaylight.org/show_bug.cgi?id=7360>`_: Fixed VTN coordinator build error on Fedora 25.

YANG Tools
----------
* `a26d18 <https://git.opendaylight.org/gerrit/#/q/a26d183c4b9849b374d58ea180e5ad83c9a2932a>`_ `BUG-7759 <https://bugs.opendaylight.org/show_bug.cgi?id=7759>`_: return deserialized type
* `5ff949 <https://git.opendaylight.org/gerrit/#/q/5ff9493871c2beb02cfb35434b0ce9847778f51c>`_ `BUG-6392 <https://bugs.opendaylight.org/show_bug.cgi?id=6392>`_: Fix lenient parsing of unkeyed list entries
* `66a191 <https://git.opendaylight.org/gerrit/#/q/66a19187c088a07b22bdbca2a4e709071b4790c2>`_ `BUG-5410 <https://bugs.opendaylight.org/show_bug.cgi?id=5410>`_ - XSD regular expressions are interpreted as Java regexes (2/2)
* `63d9db <https://git.opendaylight.org/gerrit/#/q/63d9dbf1e0245901b8031b340daa55f173126eb2>`_ `BUG-5410 <https://bugs.opendaylight.org/show_bug.cgi?id=5410>`_ - XSD regular expressions are interpreted as Java regexes (1/2)
* `3cbea0 <https://git.opendaylight.org/gerrit/#/q/3cbea02072d6beb7a2fe04799a089a5bbb9929b1>`_ `BUG-6856 <https://bugs.opendaylight.org/show_bug.cgi?id=6856>`_: Rpc definition should implicitly define input/output
* `0e755b <https://git.opendaylight.org/gerrit/#/q/0e755bdaad93f44337ce5e389724e4cf0713e464>`_ `BUG-7879 <https://bugs.opendaylight.org/show_bug.cgi?id=7879>`_ - refine target node was not found
* `62235f <https://git.opendaylight.org/gerrit/#/q/62235f7f137451e80a4e89ed062c7cd49c16d36b>`_ `BUG-7182 <https://bugs.opendaylight.org/show_bug.cgi?id=7182>`_: YangToSourcesProcessor deletes output directory
* `2d4178 <https://git.opendaylight.org/gerrit/#/q/2d4178791a19e6f882b36cd8acf68241dd958d16>`_ `BUG-7182 <https://bugs.opendaylight.org/show_bug.cgi?id=7182>`_: add M2E lifecycle mapping
* `f5080e <https://git.opendaylight.org/gerrit/#/q/f5080ebb2e33e0160ae3bfd7995b965b6671977c>`_ `BUG-7568 <https://bugs.opendaylight.org/show_bug.cgi?id=7568>`_: silence YangTextSchemaContextResolver
* `c6bbca <https://git.opendaylight.org/gerrit/#/q/c6bbca468071df29cba43bb3a9f692ac4ed270fc>`_ SourceIdentifier.create() method deprecation explained
* `fc8713 <https://git.opendaylight.org/gerrit/#/q/fc8713f66b8ecef5336b4b07cb01b8bb8718143a>`_ Do not confuse statement and argument names
* `7d5cf4 <https://git.opendaylight.org/gerrit/#/q/7d5cf42b0fcc4bc9c26643a584c8895dfdee355d>`_ Fix mandatory statement checking
* `5c0d83 <https://git.opendaylight.org/gerrit/#/q/5c0d8324cb06dddec864b40e222813f63ad702d4>`_ `BUG-7440 <https://bugs.opendaylight.org/show_bug.cgi?id=7440>`_: Fix empty parent in deviate "replace"
* `380048 <https://git.opendaylight.org/gerrit/#/q/380048b098e7366adf1662c6382b28a731873ece>`_ `BUG-7267 <https://bugs.opendaylight.org/show_bug.cgi?id=7267>`_: catch RuntimeExceptions when processing sources
* `1a712d <https://git.opendaylight.org/gerrit/#/q/1a712d2a2ebf17d7b19818a36caa2e78f75219b3>`_ `BUG-7038 <https://bugs.opendaylight.org/show_bug.cgi?id=7038>`_: cleanup parser listener
* `1fd63e <https://git.opendaylight.org/gerrit/#/q/1fd63e4e1c78822abbc105ed2b8f348e9651e10f>`_ `BUG-7161 <https://bugs.opendaylight.org/show_bug.cgi?id=7161>`_: Do not tolerate source-level exceptions
* `cf0eb8 <https://git.opendaylight.org/gerrit/#/q/cf0eb84c185ebd032d41e453c21e6aa709c0776b>`_ `BUG-7267 <https://bugs.opendaylight.org/show_bug.cgi?id=7267>`_: catch null path offenders

Boron-SR4 Release Notes
=======================

This page details changes and bug fixes between the Boron Stability Release 3 (Boron-SR3) and the Boron Stability Release 4 (Boron-SR4) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------

The following projects had no noteworthy changes in the Boron-SR4 Release:

* Atrium Router
* Authentication, Authorization and Accounting (AAA)
* Cardinal
* Centinel
* Control And Provisioning of Wireless Access Points (CAPWAP)
* Controller Shield
* DLUX
* Device Identification and Driver Management (DIDM)
* Energy Management Plugin
* Fabric As A Service (FaaS)
* Group Based Policy (GBP)
* Honeycomb Virtual Bridge Domain
* Infrastructure Utilities
* Internet of Things Data Management (IoTDM)
* L2 Switch
* LISP Flow Mapping
* Link Aggregation Control Protocol (LACP)
* NAT Application Plugin
* NEtwork MOdeling (NEMO)
* NeXt UI Toolkit
* NetIDE
* Network Intent Composition (NIC)
* Neutron Northbound
* ORI C&M Protocol (OCP)
* OpenFlow Configuration Protocol (OF-CONFIG)
* OpenFlow Protocol Library
* Packet Cable/PCMM
* SDN Interface Application (SDNi)
* SNMP Plugin
* SNMP4SDN
* Secure Network Bootstrapping Infrastructure (SNBI)
* Service Function Chaining
* Table Type Patterns (TTP)
* Time Series Data Repository (TSDR)
* Topology Processing Framework
* Unified Secure Channel (USC)
* User Network Interface Manager (UNIMGR)
* YANG PUBSUB

ALTO
----
* `4f45d0 <https://git.opendaylight.org/gerrit/#/q/4f45d078faaf4c9fb3508c019519e6d036e0b342>`_ Fix yang model validity

BGP PCEP
--------
* `e5ec0b <https://git.opendaylight.org/gerrit/#/q/e5ec0b2550df1084588006d0e89d1b9164b21328>`_ `BUG-8292 <https://bugs.opendaylight.org/show_bug.cgi?id=8292>`_ Fix BGP flowspec NLRI length read
* `83214e <https://git.opendaylight.org/gerrit/#/q/83214ec093fa10b5b12157560ff994f85f874dda>`_ `BUG-8548 <https://bugs.opendaylight.org/show_bug.cgi?id=8548>`_: Pass missing parameter to
* `2801f2 <https://git.opendaylight.org/gerrit/#/q/2801f2b71ca49dcee50b643ef5ed4f53938609fc>`_ `BUG-8156 <https://bugs.opendaylight.org/show_bug.cgi?id=8156>`_ Fix PCEP topology registration
* `4b1b55 <https://git.opendaylight.org/gerrit/#/q/4b1b55c3b2a28df1de05887e0e1abed7855bc95c>`_ Fix RD pattern in RouteDistinguisherBuilder
* `042b3e <https://git.opendaylight.org/gerrit/#/q/042b3e5ff2fd7371342693948a282546c2a6165a>`_ `BUG-4491 <https://bugs.opendaylight.org/show_bug.cgi?id=4491>`_: Race condition under PCEP Topology Provider
* `859728 <https://git.opendaylight.org/gerrit/#/q/8597287b7fbffbe1b7eec154812f89509a397102>`_ `BUG-8306 <https://bugs.opendaylight.org/show_bug.cgi?id=8306>`_: Fix Pcep failing test
* `c99daf <https://git.opendaylight.org/gerrit/#/q/c99dafd24386a2ed1d12b972c6e6229877176e24>`_ `BUG-8202 <https://bugs.opendaylight.org/show_bug.cgi?id=8202>`_: Fix Conflict Modification on odl-programming
* `732599 <https://git.opendaylight.org/gerrit/#/q/7325992cf67b8190cd22f1aa3b3285754def18dc>`_ `BUG-8275 <https://bugs.opendaylight.org/show_bug.cgi?id=8275>`_: Close ReadOnly transaction
* `c3c46c <https://git.opendaylight.org/gerrit/#/q/c3c46c780c191c0a93ab77e4b5cb2066085cd832>`_ `BUG-8198 <https://bugs.opendaylight.org/show_bug.cgi?id=8198>`_: Fix InferenceException
* `66199e <https://git.opendaylight.org/gerrit/#/q/66199e71903bdec43d8753287a7c594bde59a19d>`_ `BUG-8252 <https://bugs.opendaylight.org/show_bug.cgi?id=8252>`_ Fix IP prefix length util
* `a41992 <https://git.opendaylight.org/gerrit/#/q/a419922b34fc1a1b1f896fd4bfcaacb1b39a8d08>`_ `BUG-6973 <https://bugs.opendaylight.org/show_bug.cgi?id=6973>`_: Implement test for InstructionDeployer
* `85bc55 <https://git.opendaylight.org/gerrit/#/q/85bc555fe0329b8ff301ab9d317ee331406ccdf6>`_ Rework CheckUtil Test
* `24ecbf <https://git.opendaylight.org/gerrit/#/q/24ecbf1bc54c9f75a66d514b67bc3c22b34d998f>`_ `BUG-8007 <https://bugs.opendaylight.org/show_bug.cgi?id=8007>`_: Code Clean Up
* `036b01 <https://git.opendaylight.org/gerrit/#/q/036b018b24c065f3e9cda42d53b5d8a63773f951>`_ `BUG-8007 <https://bugs.opendaylight.org/show_bug.cgi?id=8007>`_: Code clean Up
* `560438 <https://git.opendaylight.org/gerrit/#/q/5604385a16f8b0080fd3c859d2268d45b816c3eb>`_ `BUG-8007 <https://bugs.opendaylight.org/show_bug.cgi?id=8007>`_: Code Clean Up
* `7576c5 <https://git.opendaylight.org/gerrit/#/q/7576c5924cc21997ff456635659f5c7c162f2804>`_ `BUG-8007 <https://bugs.opendaylight.org/show_bug.cgi?id=8007>`_: Code clean up
* `a58c6b <https://git.opendaylight.org/gerrit/#/q/a58c6bba601d090861dc3b79fd7f37e7b364441d>`_ `BUG-6975 <https://bugs.opendaylight.org/show_bug.cgi?id=6975>`_: Integrate Topology Provider with CS Service
* `d53c03 <https://git.opendaylight.org/gerrit/#/q/d53c0309de375b68e9fa4ea9878fc6312c976c0b>`_ `BUG-6973 <https://bugs.opendaylight.org/show_bug.cgi?id=6973>`_: Wire topology-provider with BP
* `feee36 <https://git.opendaylight.org/gerrit/#/q/feee36e9412f34d2e2c930d9e13bdc7eed6eacfe>`_ `BUG-8213 <https://bugs.opendaylight.org/show_bug.cgi?id=8213>`_: Add missing mandatory attribute on tests
* `aa7617 <https://git.opendaylight.org/gerrit/#/q/aa76178904dc5435d9cfd6530d38ad235e8292a6>`_ `BUG-8007 <https://bugs.opendaylight.org/show_bug.cgi?id=8007>`_: Programming Clean up
* `ac6687 <https://git.opendaylight.org/gerrit/#/q/ac6687e4092c7b27310896ae5b1b1f5d664175ec>`_ `BUG-6975 <https://bugs.opendaylight.org/show_bug.cgi?id=6975>`_: Integrate Programming with Cluster Singleton Service
* `636a1b <https://git.opendaylight.org/gerrit/#/q/636a1b17601f5506f423286c779c84accee3a393>`_ `BUG-6973 <https://bugs.opendaylight.org/show_bug.cgi?id=6973>`_: Implement Programming config via DS
* `fea98e <https://git.opendaylight.org/gerrit/#/q/fea98eb05cfc8d996eaca38b7fd121563b63331d>`_ `BUG-6973 <https://bugs.opendaylight.org/show_bug.cgi?id=6973>`_: Wire Programming with BP
* `5f0f0e <https://git.opendaylight.org/gerrit/#/q/5f0f0e8fd6e12fccd621fbc8de7e8ec5bf7dd690>`_ `BUG-8203 <https://bugs.opendaylight.org/show_bug.cgi?id=8203>`_: update Netty isRoot method name
* `6c16df <https://git.opendaylight.org/gerrit/#/q/6c16dff2e36c65b58bf0e67d3435e46bc4f6000c>`_ Restrict powermock dependency scope to test
* `aa71d4 <https://git.opendaylight.org/gerrit/#/q/aa71d43f58dc8b5242553ecc75a196fb5c0ca5e6>`_ `BUG-7976 <https://bugs.opendaylight.org/show_bug.cgi?id=7976>`_: Race between peer removal and routes update

Controller
----------
* `b11aa4 <https://git.opendaylight.org/gerrit/#/q/b11aa4da9a8a80025332c2f1da225e4b581176f3>`_ `BUG-8038 <https://bugs.opendaylight.org/show_bug.cgi?id=8038>`_: Ignore testLeadershipTransferOnShutdown
* `ca7d83 <https://git.opendaylight.org/gerrit/#/q/ca7d831361dd318158b7737104a9a52d63e09944>`_ `BUG-8327 <https://bugs.opendaylight.org/show_bug.cgi?id=8327>`_: GlobalBundleScanningSchemaServiceImpl should be a proxy
* `eff76f <https://git.opendaylight.org/gerrit/#/q/eff76fdd3d3ed3570aed964f8715312a01ef3a37>`_ `BUG-7927 <https://bugs.opendaylight.org/show_bug.cgi?id=7927>`_: stop scanning bundles on framework stop
* `869a74 <https://git.opendaylight.org/gerrit/#/q/869a7497b9e7f6c765626848dbcc9a1f4db0a3d2>`_ Turn off visibility of GlobalBundleScanningSchemaServiceImpl#start()
* `09f442 <https://git.opendaylight.org/gerrit/#/q/09f44218611fb5a1439d1b2c7ffef401449c354b>`_ Remove artifacts entries for long-gone RESTCONF
* `5515ab <https://git.opendaylight.org/gerrit/#/q/5515abe04abc3913871c11b896c1c93699d9ce89>`_ Move sal-remote to sal-rest-connector
* `8edc82 <https://git.opendaylight.org/gerrit/#/q/8edc82760c423e16da02213251b5231de59e9dc8>`_ `BUG-8219 <https://bugs.opendaylight.org/show_bug.cgi?id=8219>`_: optimize empty CompositeDataTreeCohort case
* `1374a9 <https://git.opendaylight.org/gerrit/#/q/1374a9e6f072862b5144b7af7a5cfd078f42e31a>`_ `BUG-7783 <https://bugs.opendaylight.org/show_bug.cgi?id=7783>`_: increase precision of execution times
* `7b9477 <https://git.opendaylight.org/gerrit/#/q/7b94771d6216ebb5217e3412ecc7f496ff6cee52>`_ `BUG-7814 <https://bugs.opendaylight.org/show_bug.cgi?id=7814>`_: Add counter to make tx actor names unique

Genius
------
* `5c7f36 <https://git.opendaylight.org/gerrit/#/q/5c7f36f8f2da6153f90fff0e82e9bf2ce2ebc87a>`_ Workaround for `BUG-7451 <https://bugs.opendaylight.org/show_bug.cgi?id=7451>`_
* `dbfd73 <https://git.opendaylight.org/gerrit/#/q/dbfd73fc1abf517d25f3f16d54963aae9d5c6b01>`_ Add getChildInterfaces to IInterfaceManager
* `5d68e4 <https://git.opendaylight.org/gerrit/#/q/5d68e4338fd86b7008dba550ccb9ffd2d31a0225>`_ `BUG-8023 <https://bugs.opendaylight.org/show_bug.cgi?id=8023>`_ CSIT failures with ELAN drop rule

Integration/Distribution
------------------------
* `18eade <https://git.opendaylight.org/gerrit/#/q/18eade956f7e6c9d6c0c7c784f81d6219f278238>`_ `BUG-8197 <https://bugs.opendaylight.org/show_bug.cgi?id=8197>`_: Remove CAPWAP from compatible

MD-SAL
------
* `ba557d <https://git.opendaylight.org/gerrit/#/q/ba557dbadcac933b6be48e509299f5e899fd6f29>`_ `BUG-8449 <https://bugs.opendaylight.org/show_bug.cgi?id=8449>`_ - BindingToNormalizedNodeCodec fails to deserialize union of leafrefs
* `33f90b <https://git.opendaylight.org/gerrit/#/q/33f90b7b47a33eddae0df31437aa0070e5456901>`_ `BUG-8237 <https://bugs.opendaylight.org/show_bug.cgi?id=8237>`_ - BI to BA conversion not resolving nested nodes
* `14f049 <https://git.opendaylight.org/gerrit/#/q/14f04995729708e2ac192df2bdfce6fe6a5a9aaf>`_ `BUG-8327 <https://bugs.opendaylight.org/show_bug.cgi?id=8327>`_: Introduce DOMYangTextSourceProvider and implement it
* `262d02 <https://git.opendaylight.org/gerrit/#/q/262d0237b17d4596b167f49a644c1dbe8f7505bc>`_ `BUG-7927 <https://bugs.opendaylight.org/show_bug.cgi?id=7927>`_: stop scanning bundles on framework stop
* `98bc46 <https://git.opendaylight.org/gerrit/#/q/98bc46847cda68e350c3d498e2bd718f7f82cafa>`_ Lazily create schema context in GlobalBundleScanning*
* `c2c61d <https://git.opendaylight.org/gerrit/#/q/c2c61de266b41416a11f381d3dba79d5866d7e76>`_ Turn off visibility of OsgiBundleScanningSchemaService#start()
* `45dfd0 <https://git.opendaylight.org/gerrit/#/q/45dfd0c8f23a157ea64a9acd5b88b6f62e324776>`_ Speed up OsgiBundleScanningSchemaService close
* `eba650 <https://git.opendaylight.org/gerrit/#/q/eba6505fa7ca734ff895fcf753664f3d73f1324b>`_ `BUG-8004 <https://bugs.opendaylight.org/show_bug.cgi?id=8004>`_: handle implicit RPC input

NETCONF
-------
* `8dfd6a <https://git.opendaylight.org/gerrit/#/q/8dfd6ad2518483494941b90da43c87da19213336>`_ `BUG-8085 <https://bugs.opendaylight.org/show_bug.cgi?id=8085>`_: create missing parent augmentation node
* `5fc76d <https://git.opendaylight.org/gerrit/#/q/5fc76d99368f3b1c0c9aeba0512992819123eff3>`_ `BUG-8566 <https://bugs.opendaylight.org/show_bug.cgi?id=8566>`_ direct writes to ordered list fail
* `6fdf99 <https://git.opendaylight.org/gerrit/#/q/6fdf99175b9327f84feb8b32313087e5f4b56aa6>`_ `BUG-8455 <https://bugs.opendaylight.org/show_bug.cgi?id=8455>`_: Yang Patch response is not having the error details
* `e76019 <https://git.opendaylight.org/gerrit/#/q/e76019dc20112db9c60a403b12647d84299c95ea>`_ `BUG-8289 <https://bugs.opendaylight.org/show_bug.cgi?id=8289>`_ - 409 in cluster restperfclient test
* `e98774 <https://git.opendaylight.org/gerrit/#/q/e9877415e15d5c5098b20aa7f96cbb31837c3e9c>`_ `BUG-8405 <https://bugs.opendaylight.org/show_bug.cgi?id=8405>`_: Add close check to NetconfDevice
* `09a3b0 <https://git.opendaylight.org/gerrit/#/q/09a3b011ff481d384766126159eefc16a4c9c014>`_ `BUG-8311 <https://bugs.opendaylight.org/show_bug.cgi?id=8311>`_ - Apidoc: Incomprehensible 500 id model is wrong `BUG-8266 <https://bugs.opendaylight.org/show_bug.cgi?id=8266>`_ - Apidoc explorer is broken after installing Boron SR3
* `cfa555 <https://git.opendaylight.org/gerrit/#/q/cfa555d8286e24291eac986dada2e89084964bdf>`_ `BUG-8197 <https://bugs.opendaylight.org/show_bug.cgi?id=8197>`_: Deregister schema sources on actor stop
* `0569f0 <https://git.opendaylight.org/gerrit/#/q/0569f044b41bc19ffc61c6448a41a3ae5e75dd0c>`_ Remove references to controller's sal-remote
* `da2126 <https://git.opendaylight.org/gerrit/#/q/da2126ecf60a994578c2ef654f4ff73ae727f6b5>`_ Refactor netconf clustered topology tests
* `46bc71 <https://git.opendaylight.org/gerrit/#/q/46bc71d8f6dd54db48abb0f6365910d337f3eab0>`_ `BUG-8152 <https://bugs.opendaylight.org/show_bug.cgi?id=8152>`_: Add way to configure idle timeout
* `3cf390 <https://git.opendaylight.org/gerrit/#/q/3cf390bc42cd5df19408387ba2a93d30752fb9d3>`_ Do not include duplicate models
* `d57368 <https://git.opendaylight.org/gerrit/#/q/d573686ff91c5bb92486287e3e95207972bbcfb7>`_ `BUG-8152 <https://bugs.opendaylight.org/show_bug.cgi?id=8152>`_: Transaction is already opened
* `c27b52 <https://git.opendaylight.org/gerrit/#/q/c27b52008dcfe785b0aad79e0900d829ec7bf3d4>`_ Change handling of netconf cluster transactions
* `a4199d <https://git.opendaylight.org/gerrit/#/q/a4199d37ca3d4a8c81d4e3cfd3bc0b4488ed60dd>`_ Close read-only transactions
* `7f898e <https://git.opendaylight.org/gerrit/#/q/7f898edbc352f41c212146994f8409c89d855ef5>`_ `BUG-7868 <https://bugs.opendaylight.org/show_bug.cgi?id=7868>`_: perform checks before starting modifications
* `574d8b <https://git.opendaylight.org/gerrit/#/q/574d8beb3e081cf6da0d7306cbc3ec5eaa9ca2bd>`_ `BUG-8115 <https://bugs.opendaylight.org/show_bug.cgi?id=8115>`_: Change URI decoding from ISO-8859-1 to UTF-8
* `b936ff <https://git.opendaylight.org/gerrit/#/q/b936ffc1e85ab2c9365f36ba30620a5af4e8199d>`_ `BUG-8084 <https://bugs.opendaylight.org/show_bug.cgi?id=8084>`_ - FilterContentValidator.getKeyValues creates invalid YII key values
* `a728c0 <https://git.opendaylight.org/gerrit/#/q/a728c028309ef356c4179f3c510b8e0a66a6a62f>`_ `BUG-5581 <https://bugs.opendaylight.org/show_bug.cgi?id=5581>`_: Optimize subtree filtering
* `614388 <https://git.opendaylight.org/gerrit/#/q/6143889e3ac88c0b19e4da61a2ddf41b42389268>`_ `BUG-8072 <https://bugs.opendaylight.org/show_bug.cgi?id=8072>`_: Fix decoding of URLs with external identityref
* `751b3f <https://git.opendaylight.org/gerrit/#/q/751b3f739cb75bef573f0c9390a84800f5e4dcce>`_ Fix LibraryModulesSchemasTest failure
* `d44c83 <https://git.opendaylight.org/gerrit/#/q/d44c83d26c063caf97fdda6160188e02a7f651fd>`_ `BUG-7812 <https://bugs.opendaylight.org/show_bug.cgi?id=7812>`_: NPE when NetconfDeviceSalProvider.close
* `c52b7e <https://git.opendaylight.org/gerrit/#/q/c52b7e26101d1a141818299d86c69f46408e6362>`_ `BUG-8037 <https://bugs.opendaylight.org/show_bug.cgi?id=8037>`_ YANG Patch using "replace" instead of "merge"

Network Virtualization
----------------------
* `3ddaa2 <https://git.opendaylight.org/gerrit/#/q/3ddaa2d2d020c34b615e74feb13b5a118610e887>`_ `BUG-8696 <https://bugs.opendaylight.org/show_bug.cgi?id=8696>`_ fix elan blueprint xml
* `72e3e2 <https://git.opendaylight.org/gerrit/#/q/72e3e247636fa9ea0ec6fbd5598e974f9f68ecbc>`_ `BUG-7988 <https://bugs.opendaylight.org/show_bug.cgi?id=7988>`_ - Cluster reboot fix
* `995d2d <https://git.opendaylight.org/gerrit/#/q/995d2d3db6e2c5f4362afa41f8daa85d8b68938a>`_ `BUG-7809 <https://bugs.opendaylight.org/show_bug.cgi?id=7809>`_ - NAT snatGroupIdPool is overlapping with Elan Groups
* `34fae9 <https://git.opendaylight.org/gerrit/#/q/34fae92facefdf3c3276b42a8780d5c0f72b56b2>`_ Bug8484: Non-NAPT Group action is drop for router associated with BGP-VPN
* `32175d <https://git.opendaylight.org/gerrit/#/q/32175d56bbfa9538fab587d33d4ee2af5907cf70>`_ `BUG-8376 <https://bugs.opendaylight.org/show_bug.cgi?id=8376>`_: Fix DHCP for external tunnels
* `a9945a <https://git.opendaylight.org/gerrit/#/q/a9945a7e9f0f1ce5251fcebcff7b5ffd24509e76>`_ `BUG-7866 <https://bugs.opendaylight.org/show_bug.cgi?id=7866>`_ fixing remote bc group for vlan provider network
* `022afb <https://git.opendaylight.org/gerrit/#/q/022afb3a8e60d63ff97e50e0180319ce996a96d9>`_ `BUG-7599 <https://bugs.opendaylight.org/show_bug.cgi?id=7599>`_  hwvtep ucast mac add performance improv
* `55da67 <https://git.opendaylight.org/gerrit/#/q/55da67182f0298c56ad63094e8279572bc2dd137>`_ `BUG-7866 <https://bugs.opendaylight.org/show_bug.cgi?id=7866>`_ adding retries for remote dmac programming during tunnel up event
* `7c94c9 <https://git.opendaylight.org/gerrit/#/q/7c94c96ef068646cc5a3c7ac2ac04c13622ddaea>`_ `BUG-7758 <https://bugs.opendaylight.org/show_bug.cgi?id=7758>`_: Use Trunk instead of Transparent port for Flat networks
* `f3b171 <https://git.opendaylight.org/gerrit/#/q/f3b171c984c9e4b51c26d1fb8409b95ba49ca6de>`_ `BUG-8142 <https://bugs.opendaylight.org/show_bug.cgi?id=8142>`_ : DHCP timeout issue.
* `348193 <https://git.opendaylight.org/gerrit/#/q/34819334b9ef66593df81853cc9f95857161856d>`_ `BUG-8229 <https://bugs.opendaylight.org/show_bug.cgi?id=8229>`_: fix bad git merge of handleFloatingIpPortUpdated
* `1e3242 <https://git.opendaylight.org/gerrit/#/q/1e3242f767b5631c531ca1eea5b709081594ae5f>`_ `BUG-8023 <https://bugs.opendaylight.org/show_bug.cgi?id=8023>`_ Handling ELAN remote DMAC programming correctly
* `a6d99b <https://git.opendaylight.org/gerrit/#/q/a6d99b0a698e79e59cb5faeda6f721088f5cce12>`_ `BUG-7606 <https://bugs.opendaylight.org/show_bug.cgi?id=7606>`_: Fix for missing table 110 flow in OVS 2.4 after VM live migration
* `8e23ff <https://git.opendaylight.org/gerrit/#/q/8e23ffcb123b95252893444faac2ab7b11050852>`_ `BUG-7778 <https://bugs.opendaylight.org/show_bug.cgi?id=7778>`_: VM's FIP are not able communicate to each other in external network provider
* `a3a54f <https://git.opendaylight.org/gerrit/#/q/a3a54f227737f1b542bce6811faea7d9487cd1a7>`_ `BUG-8165 <https://bugs.opendaylight.org/show_bug.cgi?id=8165>`_ - Learnt IP route does not reappear on DC-GW after OVSRestart
* `31f21b <https://git.opendaylight.org/gerrit/#/q/31f21ba76b7223acaca57b9d5acb09de2c4fb306>`_ `BUG-7922 <https://bugs.opendaylight.org/show_bug.cgi?id=7922>`_ - Use counter to keep track of duplicate flow entries
* `99a36e <https://git.opendaylight.org/gerrit/#/q/99a36e584168ac8bbf9e2b05925a16809a6bd82e>`_ `BUG-7939 <https://bugs.opendaylight.org/show_bug.cgi?id=7939>`_ - Remote flows missing in Table 21
* `4ed33a <https://git.opendaylight.org/gerrit/#/q/4ed33ac63f597a999af34b95f20ce483a40ae0b6>`_ `BUG-7939 <https://bugs.opendaylight.org/show_bug.cgi?id=7939>`_, 7938, 7968, 7997: Potential fix for the four L3VPN bugs
* `770c08 <https://git.opendaylight.org/gerrit/#/q/770c08d6d48e59d9a2a4da3fc2b2407d36f4fbab>`_ `BUG-7939 <https://bugs.opendaylight.org/show_bug.cgi?id=7939>`_:  VpnService Suite and Tempest failures
* `9521be <https://git.opendaylight.org/gerrit/#/q/9521be701bab521e742e1d26d5ebed194b0639f5>`_ `BUG-8019 <https://bugs.opendaylight.org/show_bug.cgi?id=8019>`_: when the neutron port acting as gateway is deleted, invisible ip is not removed from FIB
* `b7d79b <https://git.opendaylight.org/gerrit/#/q/b7d79b3650489979d0fc75726efa453b3c2f212a>`_ `BUG-7816 <https://bugs.opendaylight.org/show_bug.cgi?id=7816>`_: NullPointerException while create a router in external network provider
* `d6b892 <https://git.opendaylight.org/gerrit/#/q/d6b89205460ee9bf2c7bad9e6fbc80a05708e615>`_ Fix ACL IPv6 flows to match on ipv6_src/ipv6_dst for remote SG
* `72359b <https://git.opendaylight.org/gerrit/#/q/72359b80a0c2010872f80779691f20744cba8c65>`_ `BUG-7952 <https://bugs.opendaylight.org/show_bug.cgi?id=7952>`_: ACLService to treat Ethertype=IPv6 and Protocol=icmp as a request for ICMPv6
* `96117b <https://git.opendaylight.org/gerrit/#/q/96117b5185cac34c166afed2383c264dfcc20a2c>`_ `BUG-7979 <https://bugs.opendaylight.org/show_bug.cgi?id=7979>`_: Fix issue where VM is unable to acquire address during IPv6 tests
* `261ad3 <https://git.opendaylight.org/gerrit/#/q/261ad33a4c51e9e6f371db878173b45341b863f2>`_ `BUG-7913 <https://bugs.opendaylight.org/show_bug.cgi?id=7913>`_: QosInterfaceStateChangeListener IllegalArgumentException
* `c74e6c <https://git.opendaylight.org/gerrit/#/q/c74e6c4e411f4274d406003216a53482788e8e20>`_ Migrate l3vpn service docs to netvirt
* `4c2608 <https://git.opendaylight.org/gerrit/#/q/4c26089391036631cd7ecdbd7282e2636851beb5>`_ `BUG-8023 <https://bugs.opendaylight.org/show_bug.cgi?id=8023>`_: Making ELAN to use StateTunnelList listener
* `d0c2e1 <https://git.opendaylight.org/gerrit/#/q/d0c2e142a2082eafc85c263c0a80ec4c02b0a969>`_ Correct several equals() bugs

ODL Root Parent
---------------
* `195c5b <https://git.opendaylight.org/gerrit/#/q/195c5be2b917364ae4b33ff2e70ec55a73a7eb37>`_ Bump netty to 4.0.45
* `0bb105 <https://git.opendaylight.org/gerrit/#/q/0bb105904f2f882e1a739aa1240732ec96186788>`_ Add cli property to un-skip git-commit-id skip flag

OVSDB Integration
-----------------
* `d55457 <https://git.opendaylight.org/gerrit/#/q/d554578cf11073c314ebd0e22f7092b0b490583e>`_ `BUG-8280 <https://bugs.opendaylight.org/show_bug.cgi?id=8280>`_: TerminationPoint reconciliation fails
* `5145a7 <https://git.opendaylight.org/gerrit/#/q/5145a76b3600913bd171047408239b5a78b4ba50>`_ `BUG-6692 <https://bugs.opendaylight.org/show_bug.cgi?id=6692>`_ - Fix checkstyle problems not detected by the current version
* `25f0d0 <https://git.opendaylight.org/gerrit/#/q/25f0d037873174ed83ab618ce35ed7ebea6954b7>`_ `BUG-7781 <https://bugs.opendaylight.org/show_bug.cgi?id=7781>`_ update vlan bindings and tunnel ips
* `c4b95f <https://git.opendaylight.org/gerrit/#/q/c4b95fc389c99e3e4a2187898902439644713360>`_ Don't ignore .gitignore
* `20613e <https://git.opendaylight.org/gerrit/#/q/20613e570aca1d66e61031eed545453c19211454>`_ `BUG-7599 <https://bugs.opendaylight.org/show_bug.cgi?id=7599>`_ rename opData method as operData
* `018c31 <https://git.opendaylight.org/gerrit/#/q/018c316db61228536ab1db395ecc3b177bf85d12>`_ `BUG-7599 <https://bugs.opendaylight.org/show_bug.cgi?id=7599>`_ improve perf of ucast mcas
* `3db9fe <https://git.opendaylight.org/gerrit/#/q/3db9fe3ace592d7f2b12351077b886af313dc639>`_ `BUG-7599 <https://bugs.opendaylight.org/show_bug.cgi?id=7599>`_ avoid mdsal read
* `602d82 <https://git.opendaylight.org/gerrit/#/q/602d82a44cc2dd32859b82054ca88836556c9159>`_ `BUG-7599 <https://bugs.opendaylight.org/show_bug.cgi?id=7599>`_ performance improvement for ucast macs
* `d02b70 <https://git.opendaylight.org/gerrit/#/q/d02b700d51144cac9af0bed1b97e68f2f36a41a2>`_ `BUG-7781 <https://bugs.opendaylight.org/show_bug.cgi?id=7781>`_ update vlan bindings and tunnel ips
* `c23fdc <https://git.opendaylight.org/gerrit/#/q/c23fdccdaa7e95a57cc6072bf0ca4d2df4a6c274>`_ `BUG-7779 <https://bugs.opendaylight.org/show_bug.cgi?id=7779>`_: Adding try-catch in hwvtep transactions.
* `2d7190 <https://git.opendaylight.org/gerrit/#/q/2d7190af186557ab6d8bd03338497fcdfa056674>`_ Fix Checkstyle "Redundant Modifier: Redundant 'final' modifier."
* `672607 <https://git.opendaylight.org/gerrit/#/q/6726074e646b7a102007544ade6a565a3b1303f4>`_ Fix NPE in OvsdbConnectionService updateConfigParameter
* `8c8e25 <https://git.opendaylight.org/gerrit/#/q/8c8e2512d1c74de91894b5d7323126ee7382cbb4>`_ `BUG-8055 <https://bugs.opendaylight.org/show_bug.cgi?id=8055>`_: remove unnecessary type parameters
* `2399d5 <https://git.opendaylight.org/gerrit/#/q/2399d57fbd0cc92bf2de0df44f26cfb67b5cc82d>`_ `BUG-8055 <https://bugs.opendaylight.org/show_bug.cgi?id=8055>`_: remove all unused imports
* `8b259d <https://git.opendaylight.org/gerrit/#/q/8b259dccc319ba3b0be1f708e90ce971ef809faf>`_ `BUG-8055 <https://bugs.opendaylight.org/show_bug.cgi?id=8055>`_: various performance issues
* `752044 <https://git.opendaylight.org/gerrit/#/q/7520449b84e80e2708d366b841932c5fdd2c96ae>`_ `BUG-8055 <https://bugs.opendaylight.org/show_bug.cgi?id=8055>`_: remove unnecessary type arguments
* `a2dc83 <https://git.opendaylight.org/gerrit/#/q/a2dc83e2f71270a0e4751ca8f5d587cd352cb22b>`_ `BUG-8055 <https://bugs.opendaylight.org/show_bug.cgi?id=8055>`_: remove redundant array creation
* `cf13e3 <https://git.opendaylight.org/gerrit/#/q/cf13e304e501347cd635a70cec39f0ff62ae0e2d>`_ `BUG-8055 <https://bugs.opendaylight.org/show_bug.cgi?id=8055>`_: remove unnecessary type casts
* `45e38d <https://git.opendaylight.org/gerrit/#/q/45e38dad23239a319e837d4c8c8eac3d44c71984>`_ `BUG-8055 <https://bugs.opendaylight.org/show_bug.cgi?id=8055>`_: simplify a couple of streams
* `c8a4f9 <https://git.opendaylight.org/gerrit/#/q/c8a4f9ca61faeef5028f32ae747c0cb8ad35cc70>`_ `BUG-8055 <https://bugs.opendaylight.org/show_bug.cgi?id=8055>`_: use method references instead of lambdas
* `7acf2d <https://git.opendaylight.org/gerrit/#/q/7acf2ddcae2d380cec58d2e1bd6860d608a9eccf>`_ `BUG-8055 <https://bugs.opendaylight.org/show_bug.cgi?id=8055>`_: use Java 8 predicates instead of Guava
* `3e88dc <https://git.opendaylight.org/gerrit/#/q/3e88dc24d535541b418498d7fe45b65e0a35ecdf>`_ `BUG-8055 <https://bugs.opendaylight.org/show_bug.cgi?id=8055>`_: use lambdas instead of anonymous classes

OpenFlow Plugin
---------------
* `c4fe3d <https://git.opendaylight.org/gerrit/#/q/c4fe3dd3371abc597bd28ef04d6099c85d297011>`_ Optimize port status and hello message handling
* `b25cf4 <https://git.opendaylight.org/gerrit/#/q/b25cf49f7e7b7918845df710f5188099a952464e>`_ `BUG-8497 <https://bugs.opendaylight.org/show_bug.cgi?id=8497>`_ - Provide config knob to disable the Forwarding Rule Manager reconciliation
* `62dc27 <https://git.opendaylight.org/gerrit/#/q/62dc27ce6a90435febe4744309a4c040cd07fe39>`_ Fix logging of exception in HandshakeListenerImpl
* `c94d17 <https://git.opendaylight.org/gerrit/#/q/c94d17e938e1577e25f0743eb3d31f8ffc49529d>`_ Improve property-based configuration
* `438465 <https://git.opendaylight.org/gerrit/#/q/438465fbd0748e1b6d76a18facb38912774412bd>`_ Fix masked NXM reg length
* `53428e <https://git.opendaylight.org/gerrit/#/q/53428e6279ede1bb6b01d45389c56335ef5c60ed>`_ Fix checkstyle api.openflow.md.util
* `a1adc8 <https://git.opendaylight.org/gerrit/#/q/a1adc80dd2ac1c5fe50f15b777ca67a5de2a28a4>`_ Fix checkstyle - api.openflow.md.queue
* `53d724 <https://git.opendaylight.org/gerrit/#/q/53d7246c283845a76d1ea48807f1ee69c534fba4>`_ Fix checkstyle warnings.
* `c1e1ce <https://git.opendaylight.org/gerrit/#/q/c1e1ce0808419c67ffcba5b18c93ee4fa6af59bf>`_ Fix checkstyle warnings
* `88445a <https://git.opendaylight.org/gerrit/#/q/88445a3f880e07dc462737c4fbc94d38ce10127b>`_ Fix modifiers order to comply with Java coding guidelines
* `4d9a32 <https://git.opendaylight.org/gerrit/#/q/4d9a3256580180a769a2abcb38fcdd2b3c2ef20a>`_ Fix minor issues regarding checkstyle
* `f10e19 <https://git.opendaylight.org/gerrit/#/q/f10e19e003d2b769c1626f610acc65afb3fab0c6>`_ `BUG-8217 <https://bugs.opendaylight.org/show_bug.cgi?id=8217>`_: Set error information into direct statistics RPC result.
* `c7c10d <https://git.opendaylight.org/gerrit/#/q/c7c10dfc36437fdf724f3ae6515cfe9478b7408d>`_ `BUG-7901 <https://bugs.opendaylight.org/show_bug.cgi?id=7901>`_: fix unsynchronized transaction access
* `55623d <https://git.opendaylight.org/gerrit/#/q/55623dbd3effdbb92784a312524518f2414094ef>`_ Fix DeviceFlowRegistry performance regression
* `36aaf6 <https://git.opendaylight.org/gerrit/#/q/36aaf674a8d3033e2b7462866bf3536ba2606ff3>`_ Fix table miss flow push

Secure tag eXchange Protocol (SXP)
----------------------------------
* `b7a538 <https://git.opendaylight.org/gerrit/#/q/b7a5384c511a3afe0519f58fd06a71d571a822e2>`_ `BUG-8368 <https://bugs.opendaylight.org/show_bug.cgi?id=8368>`_ - UT - ThreadsWorker tests consist of race conditions

Virtual Tenant Network (VTN)
----------------------------
* `826e06 <https://git.opendaylight.org/gerrit/#/q/826e06b5a17c0a43b970614a91965feef4763a1a>`_ `BUG-8211 <https://bugs.opendaylight.org/show_bug.cgi?id=8211>`_: Fixed bug that failed to associate MD-SAL flow with VTN flow.
* `ab723c <https://git.opendaylight.org/gerrit/#/q/ab723cf5bbdc925fcda35790af22198ca7833817>`_ `BUG-8212 <https://bugs.opendaylight.org/show_bug.cgi?id=8212>`_: Accept data-flow-source that contains no vlan-id.
* `83e8b1 <https://git.opendaylight.org/gerrit/#/q/83e8b1020fbec41032e5202b498e2c0edc0ce6de>`_ `BUG-8184 <https://bugs.opendaylight.org/show_bug.cgi?id=8184>`_: Suppress unnecessary send-barrier RPC error logs.
* `fadf81 <https://git.opendaylight.org/gerrit/#/q/fadf8163eea4b8df79739bd09f317e364c5ca494>`_ `BUG-8191 <https://bugs.opendaylight.org/show_bug.cgi?id=8191>`_: Suppress warning detected by FindBugs.

YANG Tools
----------
* `848b1f <https://git.opendaylight.org/gerrit/#/q/848b1fc4212f5cb60553c4625def992074a58e0b>`_ Do not create temporary array for module sorting
* `bd168f <https://git.opendaylight.org/gerrit/#/q/bd168fb05c425bbf1992157b2ec0981c5a6b73c7>`_ `BUG-8566 <https://bugs.opendaylight.org/show_bug.cgi?id=8566>`_ Introduce a fallback for ChoiceSchemaNode lookup
* `b70220 <https://git.opendaylight.org/gerrit/#/q/b702209198f4b13651b1bf4021a727ad7c6c737e>`_ `BUG-7844 <https://bugs.opendaylight.org/show_bug.cgi?id=7844>`_ - Unable to create LeafRefContext for leafref
* `83d0e1 <https://git.opendaylight.org/gerrit/#/q/83d0e11dbf26fc492789f4b38fb25b7577230e11>`_ `BUG-8123 <https://bugs.opendaylight.org/show_bug.cgi?id=8123>`_: fix URL naming mixup
* `5fdb34 <https://git.opendaylight.org/gerrit/#/q/5fdb3481e6fcc916a20377639e606129003106cd>`_ `BUG-7954 <https://bugs.opendaylight.org/show_bug.cgi?id=7954>`_: Throw an exception when parsing duplicate (sub)modules
* `9f3901 <https://git.opendaylight.org/gerrit/#/q/9f390185b2869fd215a7cb1ee86b1760506d8662>`_ `BUG-8123 <https://bugs.opendaylight.org/show_bug.cgi?id=8123>`_: be better at guessing identifiers
* `c36433 <https://git.opendaylight.org/gerrit/#/q/c364332ceeb3c60ac43f9869f1f74537e728e3e0>`_ `BUG-7062 <https://bugs.opendaylight.org/show_bug.cgi?id=7062>`_: add revision awareness to Yin/YangTextSchemaSource
* `83fe83 <https://git.opendaylight.org/gerrit/#/q/83fe839b6429be95230ac07750dc4b451d517cb1>`_ `BUG-8039 <https://bugs.opendaylight.org/show_bug.cgi?id=8039>`_: Enforce binary/string type length
