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

