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
particular note to OpenDaylight Beryllium users are:

* CVE-2017-1000359
* CVE-2017-1000360
* CVE-2017-1000357
* CVE-2017-1000358
* CVE-2017-1000361

There are known and documented mitigations described on the Security Advisory
page linked above. Because of the efficacy of the mitigations, we do not intend
to release another version of Beryllium to address them. Instead, we encourage
all of those who are using Beryllium to carefully understand the mitigations in
the context of their deployments.

.. _proj_rel_notes:

Project-specific Release Notes
==============================

For the release notes of individual projects, please see the following pages on the OpenDaylight Wiki.

TBD: add Boron release notes

* Authentication, Authorization and Accounting (AAA_)
* ALTO_
* BGPCEP_
* Controller_
* Control And Provisioning of Wireless Access Points (CAPWAP_)
* Identification and Driver Management (DIDM_)
* DLUX_
* FaaS_
* Group_Based_Policy_ (GPB)
* Internet of Things Data Management (IoTDM_)
* L2_Switch_
* Link Aggregation Control Protocol (LACP_)
* LISP_Flow_Mapping_
* MDSAL_
* NEMO_
* NETCONF_
* NetIDE_
* NeXt_
* Network Intent Composition (NIC_)
* Neutron_Northbound_
* OF-Config_
* OpFlex_
* OpenFlow_Plugin_
* OpenFlow_Protocol_Library_
* OVSDB_Netvirt_
* Packet_Cable_ / PCMM
* SDN_Interface_Application_
* Secure Network Bootstrapping Infrastructure (SNBI_)
* SNMP4SDN_
* SNMP_Plugin_
* Secure tag eXchange Protocol (SXP_)
* Service Function Chaining (SFC_)
* TCPMD5_
* Time Series Data Repository (TSDR_)
* Table Type Patterns (TTP_)
* Topology_Processing_Framework_
* Unified Secure Channel (USC_)
* VPN_Service_
* Virtual Tenant Network (VTN_)
* YANG_Tools_

Projects without Release Notes
------------------------------

The following projects participated in Boron, but intentionally do not have release notes.

* **Documentation Project** produced this and the other downloadable documentation
* **Integration Group** hosted the OpenDaylight-wide tests and main release distribution
* **Release Engineering - autorelease** was used to build the Boron release artifacts and including the main release download.

.. _AAA: https://wiki.opendaylight.org/view/AAA:Beryllium_Release_Notes
.. _ALTO: https://wiki.opendaylight.org/view/ALTO:Beryllium:Release_Notes
.. _BGPCEP: https://wiki.opendaylight.org/view/BGP_LS_PCEP:Beryllium_Release_Notes
.. _CAPWAP: https://wiki.opendaylight.org/view/CAPWAP:Beryllium:Release_Notes
.. _Controller: https://wiki.opendaylight.org/view/OpenDaylight_Controller:Beryllium:Release_Notes
.. _DIDM: https://wiki.opendaylight.org/view/DIDM:_Beryllium_Release_Notes
.. _DLUX: https://wiki.opendaylight.org/view/OpenDaylight_DLUX:Beryllium:Release_Notes
.. _FaaS: https://wiki.opendaylight.org/view/FaaS:Beryllium_Release_Notes
.. _Group_Based_Policy: https://wiki.opendaylight.org/view/Group_Based_Policy_(GBP)/Releases/Beryllium:Beryllium_Release_Notes
.. _IoTDM: https://wiki.opendaylight.org/view/Iotdm:Beryllium_Release_Notes
.. _L2_Switch: https://wiki.opendaylight.org/view/L2_Switch:Beryllium:Release_Notes
.. _LACP: https://wiki.opendaylight.org/view/LACP:Beryllium:Release_Notes
.. _LISP_Flow_Mapping: https://wiki.opendaylight.org/view/OpenDaylight_Lisp_Flow_Mapping:Beryllium_Release_Notes
.. _MDSAL: https://wiki.opendaylight.org/view/MD-SAL:Beryllium:Release_Notes
.. _NEMO: https://wiki.opendaylight.org/view/NEMO:Beryllium:Release_Notes
.. _NETCONF: https://wiki.opendaylight.org/view/OpenDaylight_NETCONF:Beryllium_Release_Notes
.. _NetIDE: https://wiki.opendaylight.org/view/NetIDE:Release_Notes
.. _NeXt: https://wiki.opendaylight.org/view/NeXt:Beryllium_Release_Notes
.. _NIC: https://wiki.opendaylight.org/view/Network_Intent_Composition:Release_Notes
.. _Neutron_Northbound: https://wiki.opendaylight.org/view/NeutronNorthbound:Beryllium:Release_Notes
.. _OF-Config: https://wiki.opendaylight.org/view/OF-CONFIG:Beryllium:Release_Notes
.. _OpFlex: https://wiki.opendaylight.org/view/OpFlex:Beryllium_Release_Notes
.. _OpenFlow_Plugin: https://wiki.opendaylight.org/view/OpenDaylight_OpenFlow_Plugin:Beryllium_Release_Notes
.. _OpenFlow_Protocol_Library: https://wiki.opendaylight.org/view/Openflow_Protocol_Library:Release_Notes:Beryllium_Release_Notes
.. _OVSDB_Netvirt: https://wiki.opendaylight.org/view/OpenDaylight_OVSDB:Beryllium_Release_Notes
.. _Packet_Cable: https://wiki.opendaylight.org/view/PacketCablePCMM:BerylliumReleaseNotes
.. _SDN_Interface_Application: https://wiki.opendaylight.org/view/ODL-SDNi:Beryllium_Release_Notes
.. _SNBI: https://wiki.opendaylight.org/view/SNBI_Berrylium_Release_Notes
.. _SNMP4SDN: https://wiki.opendaylight.org/view/SNMP4SDN:Beryllium_Release_Note
.. _SNMP_Plugin: https://wiki.opendaylight.org/view/SNMP_Plugin:SNMP_Plugin:Beryllium_Release_Notes
.. _SXP: https://wiki.opendaylight.org/view/SXP:Beryllium:Release_Notes
.. _SFC: https://wiki.opendaylight.org/view/Service_Function_Chaining:Beryllium_Release_Notes
.. _TCPMD5: https://wiki.opendaylight.org/view/TCPMD5:Beryllium_Release_Notes
.. _TSDR: https://wiki.opendaylight.org/view/TSDR:Beryllium:Release_Notes
.. _TTP: https://wiki.opendaylight.org/view/Table_Type_Patterns/Beryllium/Release_Notes
.. _Topology_Processing_Framework: https://wiki.opendaylight.org/view/Topology_Processing_Framework:BERYLLIUM_Release_Notes
.. _USC: https://wiki.opendaylight.org/view/USC:Beryllium:Release_Notes
.. _VPN_Service: https://wiki.opendaylight.org/view/Vpnservice:Beryllium_Release_Notes
.. _VTN: https://wiki.opendaylight.org/view/VTN:Beryllium:Release_Notes
.. _YANG_Tools: https://wiki.opendaylight.org/view/YANG_Tools:Beryllium:Release_Notes

Beryllium-SR3 Release Notes
===========================

This page details changes and bug fixes between the Beryllium Stability Release 2 (Beryllium-SR2) and the Beryllium Stability Release 3 (Beryllium-SR3) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------

The following projects had no noteworthy changes in the Beryllium-SR3 Release:

* ALTO
* Centinel
* Control And Provisioning of Wireless Access Points (CAPWAP)
* Controller Shield
* Device Identification and Driver Management (DIDM)
* Messaging4Transport
* NEtwork MOdeling (NEMO)
* NeXt UI Toolkit
* Network Intent Composition (NIC)
* Neutron Northbound
* Packet Cable/PCMM
* SDN Interface Application (SDNi)
* SNMP Plugin
* Service Function Chaining
* YANG PUBSUB

Authentication, Authorization and Accounting (AAA)
--------------------------------------------------
* `ed72f9 <https://git.opendaylight.org/gerrit/#/q/ed72f9d4e34781e513ee9ef2a18e506e4716358d>`_ Fix for `BUG-6082 <https://bugs.opendaylight.org/show_bug.cgi?id=6082>`_ - idpmapping will failed for the case sensitivity
* `ee6b8d <https://git.opendaylight.org/gerrit/#/q/ee6b8d953b6c38f9eb7b08272abe2b47de576ec2>`_ Modify idmtool insecure option to work with older versions of requests
* `77d2cb <https://git.opendaylight.org/gerrit/#/q/77d2cba2257e306c2c00eb151d69692e2da7a296>`_ Enhance idmtool to allow disabling https certificate verification
* `935bab <https://git.opendaylight.org/gerrit/#/q/935babf530bd55d939d69e8cb9148fe91be41ca2>`_ Git ignore .checkstyle file create by Eclipse Checkstyle plugin

BGP PCEP
--------
* `72cba2 <https://git.opendaylight.org/gerrit/#/q/72cba2549953acbbf595c66b81641aea1ca0ae04>`_ `BUG-6264 <https://bugs.opendaylight.org/show_bug.cgi?id=6264>`_: Beryllium SR3 Build Unstable - when waiting for expected number of messages, try every 50 msecs till a max of 10 secs
* `c2572b <https://git.opendaylight.org/gerrit/#/q/c2572b86a165108e595b39de81c75e37b2c8cbc4>`_ `BUG-6120 <https://bugs.opendaylight.org/show_bug.cgi?id=6120>`_: Fix intermitent test fail
* `b07d1c <https://git.opendaylight.org/gerrit/#/q/b07d1c31f6ed622770cb8cc28658ab8f56a81102>`_ `BUG-5742 <https://bugs.opendaylight.org/show_bug.cgi?id=5742>`_: Race condition when creating Application Peer on clustering
* `d12fd5 <https://git.opendaylight.org/gerrit/#/q/d12fd53a041db0134782a35cfc7415d4699c874f>`_ `BUG-5610 <https://bugs.opendaylight.org/show_bug.cgi?id=5610>`_: PCRpt message with vendor specific object throws exception
* `a2c7a4 <https://git.opendaylight.org/gerrit/#/q/a2c7a46aa184075eb052031dca791c965e7dc1a8>`_ `BUG-6108 <https://bugs.opendaylight.org/show_bug.cgi?id=6108>`_: Fix IAE on ApplicationPeer
* `5f7b28 <https://git.opendaylight.org/gerrit/#/q/5f7b28d24f647d704f4b1e25081925d38901b101>`_ `BUG-6084 <https://bugs.opendaylight.org/show_bug.cgi?id=6084>`_: get restart time from open message error - fix size of left-shift while calculating graceful restart capability restart time
* `7b9026 <https://git.opendaylight.org/gerrit/#/q/7b90266f7b12aaec16bbb30da89c726bf5974d0f>`_ Fix failing unit tests
* `59f858 <https://git.opendaylight.org/gerrit/#/q/59f85875ce61dff020369dbffd3a9fcd90276750>`_ Fix unit test regression after netty version bump
* `95768e <https://git.opendaylight.org/gerrit/#/q/95768ea4354c69ff7ad5a7888cfc6d64de43ec32>`_ removed precondition checks for v4/v6 next-hops for v4/v6 routes
* `d14d8d <https://git.opendaylight.org/gerrit/#/q/d14d8d5b293923a4cc17b103901891b5885b34aa>`_ `BUG-6005 <https://bugs.opendaylight.org/show_bug.cgi?id=6005>`_: PCErr generated while parsing of received PCRpt message is not sent out - use Channel#writeAndFlush instead of ChannelHandlerContext#write when sending out PCEP error message so that decode handler is invoked - added listener to ChannelFuture to log result of send operation
* `694404 <https://git.opendaylight.org/gerrit/#/q/6944040e75cf865ac691aef25dac717b47c05546>`_ `BUG-6019 <https://bugs.opendaylight.org/show_bug.cgi?id=6019>`_: Wrong path name for route distinguisher
* `dc7453 <https://git.opendaylight.org/gerrit/#/q/dc745391aca824ec887428ffc725072b99c6a4b2>`_ `BUG-6001 <https://bugs.opendaylight.org/show_bug.cgi?id=6001>`_: Injecting route with missing next-hop value causes exception in reachability topology builder - added check in reachability topology builder to handle scenario when next-hop value is null - entry will be skipped from topology processing in such cases
* `f18e4f <https://git.opendaylight.org/gerrit/#/q/f18e4f51c1ac4ec7c669a0a0b38aaa08e4c5a06c>`_ `BUG-5978 <https://bugs.opendaylight.org/show_bug.cgi?id=5978>`_: Unrecognized attribute flagged Well Known - set optional bit when serializing unrecognized attributes - updated unit-test
* `cbb0ca <https://git.opendaylight.org/gerrit/#/q/cbb0ca69a9d25b60e1d4338529bf57f60888f35c>`_ `BUG-5763 <https://bugs.opendaylight.org/show_bug.cgi?id=5763>`_ Disallow redelegation for PCC-initiated LSP
* `b1550e <https://git.opendaylight.org/gerrit/#/q/b1550e898a1a003e5151312cfdd484ad708cabdc>`_ `BUG-5548 <https://bugs.opendaylight.org/show_bug.cgi?id=5548>`_: NH serializer removal
* `ad543a <https://git.opendaylight.org/gerrit/#/q/ad543ad2085eba4a961122197528471eb1e7558b>`_ `BUG-5548 <https://bugs.opendaylight.org/show_bug.cgi?id=5548>`_: Wrong NH handler picked up
* `7840f5 <https://git.opendaylight.org/gerrit/#/q/7840f52086a6ca9f9ab1847a34b4bf79fe04aa16>`_ Remove nexusproxy property as it is inherited via odlparent
* `996f5f <https://git.opendaylight.org/gerrit/#/q/996f5fa3343f7eb626b48d3fa05cfa239ab96ee7>`_ `BUG-5855 <https://bugs.opendaylight.org/show_bug.cgi?id=5855>`_: Transitive Unrecognized Attribute not transiting - added missing serializer for BGP unrecognized attributes - added unit-test to test the unrecognized attributes serializer
* `413133 <https://git.opendaylight.org/gerrit/#/q/413133175142971f3e4be6df395bfe8422255f26>`_ Remove eclipse project files, add more extensions to gitignore
* `486a89 <https://git.opendaylight.org/gerrit/#/q/486a894bed2eee66105a5f461533d7f8dbc36ce4>`_ `BUG-5731 <https://bugs.opendaylight.org/show_bug.cgi?id=5731>`_: Send Error Message if LSP-IDENTIFIERS TLV is missing
* `205e54 <https://git.opendaylight.org/gerrit/#/q/205e5416fc3bcefbff92be3eb55ceb44243eb96e>`_ `BUG-5689 <https://bugs.opendaylight.org/show_bug.cgi?id=5689>`_: Unhandled message is causing failure
* `3cfdd3 <https://git.opendaylight.org/gerrit/#/q/3cfdd3221a67b0a69112cbb73bb0ea21077145fa>`_ `BUG-5612 <https://bugs.opendaylight.org/show_bug.cgi?id=5612>`_: ODL(PCEP) infinitely waits for the response from peer for addlsp (cherry-pick) - added configurable timeout (default 30 secs) while processing RPC requests which need response from PCC - updated unit-test

Controller
----------
* `d8b664 <https://git.opendaylight.org/gerrit/#/q/d8b6646c02a56e492321ed69773775f19e072e20>`_ Change default value of parameter "auto-down-unreachable-after"
* `ca64cf <https://git.opendaylight.org/gerrit/#/q/ca64cfbc09dd36ae2da611209c0fc43c56be1af6>`_ Reduce ConflictingVersionException log level to debug
* `bac013 <https://git.opendaylight.org/gerrit/#/q/bac0137a8cb9bb78caf19cd08d446bb61724e04e>`_ Change count type in the cars model
* `302fba <https://git.opendaylight.org/gerrit/#/q/302fba3961247f35682f35b654f432da02f5fa13>`_ Force install snapshot when follower log is ahead
* `b75958 <https://git.opendaylight.org/gerrit/#/q/b75958e3afecef06f8ab45c7e7a17e3e67d32962>`_ Clear leaderId when election timeout occurs in non-voting follower
* `b8e210 <https://git.opendaylight.org/gerrit/#/q/b8e21016b85e98c31d866de7b6db51691596c9f4>`_ Add ServerConfigPayload to InstallSnapshot message
* `9583d2 <https://git.opendaylight.org/gerrit/#/q/9583d29e6bfc15b234b65d3b699bc1dbcffb2fc5>`_ Backport InstallSnapshot message serialization changes
* `7a53dd <https://git.opendaylight.org/gerrit/#/q/7a53dd074428ce5c4be767a51c509b1b8cf0f05e>`_ Add option to enable/disable basic DCL and/or DTCL
* `420761 <https://git.opendaylight.org/gerrit/#/q/420761949b87b0341d5e84906db2462d21db03b8>`_ Fix intermittent unit test failures
* `3066f5 <https://git.opendaylight.org/gerrit/#/q/3066f54d6d2c6206fa5fabc69a795993c68d2d77>`_ `BUG-6106 <https://bugs.opendaylight.org/show_bug.cgi?id=6106>`_: Prevent flood of quarantine messages
* `49ffbb <https://git.opendaylight.org/gerrit/#/q/49ffbb5a0b5e8ab177796f6c46979d3661669a65>`_ Fix intermittent test failures in ClusterAdminRpcServiceTest
* `0f0acc <https://git.opendaylight.org/gerrit/#/q/0f0accfc0a824efcb7e9cd8c533c610378589826>`_ Fix intermittent test failures in PartitionedLeadersElectionScenarioTest
* `28ecb3 <https://git.opendaylight.org/gerrit/#/q/28ecb323a3108041e8acdb3431bbd319285208a1>`_ Add voting state to shard mbean FollowerInfo
* `6ce895 <https://git.opendaylight.org/gerrit/#/q/6ce89595f9e74fb38e92f8889a5df056006f3a31>`_ Implement cluster admin RPCs to change member voting states
* `2277d0 <https://git.opendaylight.org/gerrit/#/q/2277d060b3322def1d3de5d39a2934f418a4850d>`_ `BUG-5913 <https://bugs.opendaylight.org/show_bug.cgi?id=5913>`_: Fix ISE in DefaultShardDataChangeListenerPublisher
* `716528 <https://git.opendaylight.org/gerrit/#/q/7165284351a98e19016d08c1d62af30d880ed315>`_ Fix test failures in RaftActorServerConfigurationSupportTest
* `635721 <https://git.opendaylight.org/gerrit/#/q/6357212e5d57f30e2041ad4f2c82c0f0f9afe3f0>`_ Implement change to voting with no leader
* `248a20 <https://git.opendaylight.org/gerrit/#/q/248a201b096bbb218137da8b6a760c5c3bb41e95>`_ Implement ChangeServersVotingStatus message in RaftActor
* `d6b79e <https://git.opendaylight.org/gerrit/#/q/d6b79e53ced8e884a52e0b2da8d363b262e419ea>`_ Add a few toString() methods
* `4f490f <https://git.opendaylight.org/gerrit/#/q/4f490fd1a2ccb20f94148cf9789282af60a8e425>`_ `BUG-5504 <https://bugs.opendaylight.org/show_bug.cgi?id=5504>`_: Fix IllegalStateException handling from commit
* `9eaa34 <https://git.opendaylight.org/gerrit/#/q/9eaa3422d3c65ec51e73e2443e89964fcd9671cf>`_ Debug logging in AbstractLeader is too chatty
* `f9fc8c <https://git.opendaylight.org/gerrit/#/q/f9fc8cd613d183de5b1cf226b66649777b9f4ad8>`_ Remove snapshot after startup and fix related bug
* `f896f5 <https://git.opendaylight.org/gerrit/#/q/f896f5b72f4c23d7acc102b050ae29f3500694ea>`_ Guard against duplicate log indexes
* `01c5a7 <https://git.opendaylight.org/gerrit/#/q/01c5a7cc52f8a438053d52ebb91e531493ca765a>`_ Add more debug output in AbstractLeader and Follower
* `66eee2 <https://git.opendaylight.org/gerrit/#/q/66eee2871ec83407a44f7970a2a4d486d6c3a143>`_ Update version enforcement to Java 7
* `48782a <https://git.opendaylight.org/gerrit/#/q/48782a2705d0a16b71057b6db1bd58f21d1e8b23>`_ `BUG-5414 <https://bugs.opendaylight.org/show_bug.cgi?id=5414>`_ introduce EOS inJeopardy flag
* `24ecd4 <https://git.opendaylight.org/gerrit/#/q/24ecd42ebc7f48de4975717166edea4406a19fd7>`_ Make Karaf dump heap on OOM by default

DLUX
----
* `4cf653 <https://git.opendaylight.org/gerrit/#/q/4cf653e12b3436f423ebaa4e56061e9e2e24fd23>`_ Remove unused property

Documentation
-------------
* `4c8edd <https://git.opendaylight.org/gerrit/#/q/4c8eddc4ad24a0a9482a3168f33092d60cc458cd>`_ Fix minor typo in OpenFlow Plugin dev docs
* `0a914c <https://git.opendaylight.org/gerrit/#/q/0a914c8d7025252c9ca42731aacdf11be918f852>`_ Update VTN Manager adoc for Beryllium
* `9ab283 <https://git.opendaylight.org/gerrit/#/q/9ab283b635380e083b8e394ecf67b636df72ce21>`_ ADDED UniMgr developer guide
* `c0d025 <https://git.opendaylight.org/gerrit/#/q/c0d02576837029328b9e82455ac0f60a94e89514>`_ Documentation outline for of-config.
* `65f148 <https://git.opendaylight.org/gerrit/#/q/65f148c2dd0df36a4aa9e72922622842085348d1>`_ Adding more documentation topics to nic
* `7ee3da <https://git.opendaylight.org/gerrit/#/q/7ee3dab5ec2d3427ad76d578fffce3032eee042a>`_ Topoprocessing - another minor fixes
* `1de195 <https://git.opendaylight.org/gerrit/#/q/1de195169086c7d5d6575977ead4b197686d44a4>`_ Minor fixes
* `19e882 <https://git.opendaylight.org/gerrit/#/q/19e882353c765c6642c81c07707f998fd109bf31>`_ Adding OpenFlow Plugin Lithium config subsystem docs
* `cadd5b <https://git.opendaylight.org/gerrit/#/q/cadd5b92a427563eace7f10eca82f50d273d36e4>`_ Print location of built docs
* `986636 <https://git.opendaylight.org/gerrit/#/q/9866364557383f2ee0980f0feaf5bee8a122bc16>`_ Update ALTO Docs for Beryllium
* `2b3b83 <https://git.opendaylight.org/gerrit/#/q/2b3b83deb2988f199a8f511451108f450a5517eb>`_ Draft of topoprocessing documentation
* `9ca71b <https://git.opendaylight.org/gerrit/#/q/9ca71b5fb9f333fb7edbbd162e580d847718077e>`_ Start documentation of topology processing framework
* `649c58 <https://git.opendaylight.org/gerrit/#/q/649c5804e68dd62fb45bce3fbf8e354233e91e8a>`_ Use at least 4.11 version of bootstrap theme
* `6cf489 <https://git.opendaylight.org/gerrit/#/q/6cf48959bb4cb305ddfe873773585e1c6a5eeea6>`_ Adding OpenFlow Plugin yang model docs
* `d2274b <https://git.opendaylight.org/gerrit/#/q/d2274be36a634f6edb51ae644d8c1247857a79f3>`_ Add ci-requirements.txt
* `1ab3ba <https://git.opendaylight.org/gerrit/#/q/1ab3baf785cf26e4d7c03f846f94b8c270db0cd5>`_ Force update sphinxbootstrap theme in rtd
* `057ad4 <https://git.opendaylight.org/gerrit/#/q/057ad49f56422e981c722b4d895b23409ad0fec7>`_ Force update additional dependencies
* `16e6d6 <https://git.opendaylight.org/gerrit/#/q/16e6d65e216e73ac593582a4b60293d4a66bfae3>`_ Update to follow style guide
* `5592d2 <https://git.opendaylight.org/gerrit/#/q/5592d256401a4e511bbd56921e990545801cf1f3>`_ Fix mobile site logo size too large
* `d88f8a <https://git.opendaylight.org/gerrit/#/q/d88f8af26c445a0d9e00d085d3abb774d2c93a97>`_ Added section on ovsdb-library-developer.adoc.
* `8e7057 <https://git.opendaylight.org/gerrit/#/q/8e7057cd6920860a7740ad4bc228af484afad77f>`_ Update netconf user guide
* `af0b83 <https://git.opendaylight.org/gerrit/#/q/af0b839f8ab22580330352c12851c2e7731f3e18>`_ changing version from 0.3.0 to Beryllium
* `1bcd17 <https://git.opendaylight.org/gerrit/#/q/1bcd176a7d1ebdf8c4ed822cb15a594397f913cd>`_ Documentation outline for centinel.
* `fa0cd8 <https://git.opendaylight.org/gerrit/#/q/fa0cd8ba6ffe5297e1c98b34aca42b1cf6b21d98>`_ adding .tox to .gitignore
* `e9a5f4 <https://git.opendaylight.org/gerrit/#/q/e9a5f40d2508bba541bf93ceae5ad1fb8c81256f>`_ Usecplugin Documents upload
* `f5c63a <https://git.opendaylight.org/gerrit/#/q/f5c63a03fef366b683a64fada1d0b88e27d2ca5c>`_ Switch docs to use a bootstrap theme
* `df35b0 <https://git.opendaylight.org/gerrit/#/q/df35b090f63cf37063effa844293d0ac58c578bb>`_ Added known issues to getting started guide - installation
* `0ecd9b <https://git.opendaylight.org/gerrit/#/q/0ecd9ba9f048e9727b37b424e84e5380cb643e4b>`_ Add cluster configuration scripts
* `942515 <https://git.opendaylight.org/gerrit/#/q/9425154affc7e74d34108ad366dcbf7ccf0b385e>`_ Make generated html appear in _build/html
* `083f3e <https://git.opendaylight.org/gerrit/#/q/083f3ec31a723d00db7f2b338cc0996ffaad7e26>`_ make html prettier for robot libdocs
* `94975f <https://git.opendaylight.org/gerrit/#/q/94975f645ca7702c57046bfca429b929618a730c>`_ Removing the AsciiDoc Getting Started Guide as it's all in reST
* `ee3062 <https://git.opendaylight.org/gerrit/#/q/ee30621b74c46e08866d1f41c36fe010d08435bf>`_ Migrating security considerations to reST
* `0be6ad <https://git.opendaylight.org/gerrit/#/q/0be6ad4928f00acd2c7b7dfd81e4918513621066>`_ Migrating DLUX, Clustering, Version and XSQL to reST
* `2a1e4d <https://git.opendaylight.org/gerrit/#/q/2a1e4d7d8a7f443a36583baabf2b6bb50ee6b117>`_ Migrate general installation instructions to reST
* `2dbeaf <https://git.opendaylight.org/gerrit/#/q/2dbeafca8b145c66f9b4e485c61c2198c602e073>`_ Migrating project-specific install guides from adoc to reST
* `eb590b <https://git.opendaylight.org/gerrit/#/q/eb590b365039a3a6e8504175cda5eded68c45bfc>`_ Migrating release notes from AsciiDoc to reST
* `6019cd <https://git.opendaylight.org/gerrit/#/q/6019cd627dd5d9cdc30c5fa7ff38d9150cdcbcbc>`_ Add docs-linkchecker to validate external links
* `e18c3a <https://git.opendaylight.org/gerrit/#/q/e18c3af940cdbc41a549adeac03108882450f8ae>`_ Convert be-exp-features-?.png to list-table
* `80ec96 <https://git.opendaylight.org/gerrit/#/q/80ec9679c681a0a992e44945bb93b4421fe19a38>`_ Convert be-nonfeatures.png to list-table
* `99bcb3 <https://git.opendaylight.org/gerrit/#/q/99bcb3bc2f5df38588050ab18ccbec276d4d8ecf>`_ Convert be-features-3.png to list-table
* `a4f5d7 <https://git.opendaylight.org/gerrit/#/q/a4f5d7c67256eecb1fd3e146e5c2e0ca7b9ce711>`_ Convert be-features-2.png to list-table
* `c95290 <https://git.opendaylight.org/gerrit/#/q/c952905144a5def74f824cd35ccd860e0f4dde40>`_ Convert be-features-1.png to list-table
* `a85282 <https://git.opendaylight.org/gerrit/#/q/a85282c91bd61486a9b6a45f87d3132786096965>`_ Add support to make docs build using tox
* `adf26e <https://git.opendaylight.org/gerrit/#/q/adf26e3fc54e6316b6485828ae022e256a40308e>`_ Restructure to docs folder for RTD
* `ae24a7 <https://git.opendaylight.org/gerrit/#/q/ae24a7d3e33cb242a21c33cce9d93f8d8ee8b17b>`_ Convert Getting Started Guide to Sphinx
* `e92697 <https://git.opendaylight.org/gerrit/#/q/e92697f0fb1d8fbf2311fd7cc02e44f212b0e38b>`_ Initial ReadTheDocs generation
* `876b6a <https://git.opendaylight.org/gerrit/#/q/876b6af5b3e4676aa10aa17858938d4c2c0321a4>`_ fixing case file flow_filter_example.png in user guide
* `a44758 <https://git.opendaylight.org/gerrit/#/q/a4475860fb9a39967352fb6293220ace77c9ac81>`_ adding .DS_Store to .gitignore
* `f22e29 <https://git.opendaylight.org/gerrit/#/q/f22e2956fcca58a610e5abf9efa81c492c78495d>`_ Fix indentation in root pom file.
* `20e4d9 <https://git.opendaylight.org/gerrit/#/q/20e4d90b491db8c76ae8d8a8d7312945d66dd96f>`_ Adding the feature table from Denise's GSG
* `2f99f8 <https://git.opendaylight.org/gerrit/#/q/2f99f8d6280ba70c3b3b017ae16e0997978461e8>`_ Some last-minute cleanups for Beryllium docs
* `2a4b43 <https://git.opendaylight.org/gerrit/#/q/2a4b43bac34ba3444cf7208a76e4edd95a2deb1e>`_ Modified documents with new references for Be release
* `ffde28 <https://git.opendaylight.org/gerrit/#/q/ffde28d66464420d1a9baf407f4eedd55106b077>`_ Fixing mixed case issues with images in VTN docs
* `45b561 <https://git.opendaylight.org/gerrit/#/q/45b5617122956e3bc7b6f6ef969ddffb5416a6fe>`_ Added Security related paragraph for TSDR project
* `8b9f1a <https://git.opendaylight.org/gerrit/#/q/8b9f1ac2eef9b150a956ec56e0f5b06752432ae8>`_ VTN Beryllium - Adoc changes.
* `5ce821 <https://git.opendaylight.org/gerrit/#/q/5ce821d73289fff62fc96483f75103a7104310f7>`_ Adding Beryllium-SR2 Release Notes
* `afacea <https://git.opendaylight.org/gerrit/#/q/afaceab523919b3123407c068d90ceaeebe5ba7f>`_ Update current branch to stable/beryllium
* `e2545d <https://git.opendaylight.org/gerrit/#/q/e2545d2c6b940aa9ea6755b310b60b8e56445cb4>`_ Use https to connect to ODL Nexus
* `8ffee7 <https://git.opendaylight.org/gerrit/#/q/8ffee71efb46097bd771784c3401f196269dcd64>`_ OVSDB User Guide documentation

Fabric As A Service (FaaS)
--------------------------
* `a1ce82 <https://git.opendaylight.org/gerrit/#/q/a1ce825e58de91e622c4e4fce56662c55d54900e>`_ Use utils.mdsal-openflow dependency from netvirt project

Group Based Policy (GBP)
------------------------
* `120be6 <https://git.opendaylight.org/gerrit/#/q/120be6a974a4489d8bac2603be46ce20716fe559>`_ Tests for neutron-ovsdb
* `2d3fa2 <https://git.opendaylight.org/gerrit/#/q/2d3fa219a492de2af1faee4187e26b3e1061838b>`_ Unit tests for ofoverlay
* `228238 <https://git.opendaylight.org/gerrit/#/q/228238404a52cdbce37fe90201fb0d18ac8768f4>`_ Code coverage increasing for faas-renderer
* `c551fa <https://git.opendaylight.org/gerrit/#/q/c551fa542f4705b8b19555469b8ac4b80e908892>`_ Tests for Iovisor root package
* `804531 <https://git.opendaylight.org/gerrit/#/q/80453134b08c07d36eaed054c870740fa434b953>`_ Test coverage increasing for iovisor.restclient
* `996ba3 <https://git.opendaylight.org/gerrit/#/q/996ba35d5153c98f3604581f47f3535c44bdcb25>`_ Tests coverage increasing for iovisor.endpoint
* `71ce73 <https://git.opendaylight.org/gerrit/#/q/71ce7319ac6e398f44d8dc208b3112eb85a92e6e>`_ Tests for iovisor.sf
* `e26053 <https://git.opendaylight.org/gerrit/#/q/e26053d9ba84eed3fa2179552c1251254cbdf615>`_ GBP tests: fixes for unnecessary mocking, method naming and other improvements
* `cf601d <https://git.opendaylight.org/gerrit/#/q/cf601ddcc01beb9e1a8c2e2d7cd964fb5a82a066>`_ New tests for listeners
* `76c742 <https://git.opendaylight.org/gerrit/#/q/76c7429136317ce95b1928fd6aba7f9108e9238e>`_ OFoverlay statistics test improvement
* `6eacd8 <https://git.opendaylight.org/gerrit/#/q/6eacd8a703ca91543f4a89e8731fafda6659891d>`_ GBP ofoverlay.sf test improvements

Integration/Distribution
------------------------
* `fffd4b <https://git.opendaylight.org/gerrit/#/q/fffd4b7755fc5effc715e4772efbfe29e75d2f5f>`_ `BUG-4296 <https://bugs.opendaylight.org/show_bug.cgi?id=4296>`_: Add config subsystem file with versions
* `ed716c <https://git.opendaylight.org/gerrit/#/q/ed716cf0df629ef548ccb54fd706b7a287693589>`_ Remove VPN Service from distribution check
* `febce1 <https://git.opendaylight.org/gerrit/#/q/febce1b568231e302a01493e7584a57ea0dec105>`_ Change alto feature to not-compatible list

Internet of Things Data Management (IoTDM)
------------------------------------------
* `596ed9 <https://git.opendaylight.org/gerrit/#/q/596ed97e7ba9c8def6b80e30dbb8f37ac4d5582f>`_ Changed plugin versions to match this 0.1.3 release
* `a8b54f <https://git.opendaylight.org/gerrit/#/q/a8b54fea604721bc5f5df131d7905e6e81ef3905>`_ Fix the bug when rcn=4, RSC=400 but still return the content.
* `d50cde <https://git.opendaylight.org/gerrit/#/q/d50cde348a2f843727159280a3caa85d6fbacce6>`_ Change exptime "FOREVER" to "29991231T111111" Change rcn=5, return resourceName, not latest. Fix the bug when create resource with "creator",it will throw RPC error. Remove the commented code.

L2 Switch
---------
* `d264e0 <https://git.opendaylight.org/gerrit/#/q/d264e02bb64928ba47813914da55c2437ded4118>`_ Use https to connect to ODL Nexus
* `46b674 <https://git.opendaylight.org/gerrit/#/q/46b6745b47dc061b47fdb5c9fe678ac784121e63>`_ `BUG-5854 <https://bugs.opendaylight.org/show_bug.cgi?id=5854>`_: L2Switch stable/berylliumdistribution job does not work correctly Similar `BUG-5559 <https://bugs.opendaylight.org/show_bug.cgi?id=5559>`_ seen for l2switch master. This patch is cherrypick of the bug fix 5559 - replaced hard-coded versions with properties in parent pom - removed/fixed redundant versions in pom - when karaf was run from distribution job, it was throwing exceptions.   Fixed root-cause which was that karaf.version was set to old version.   Now letting this version flow from the parent - verified using mininet that l2switch features are working as expected   when launched from distribution job
* `6e7ddd <https://git.opendaylight.org/gerrit/#/q/6e7dddd1210af89499c4d87750e0b35f610c93e8>`_ `BUG-5816 <https://bugs.opendaylight.org/show_bug.cgi?id=5816>`_ - Expired hosts never comeback after timing out
* `2d6ace <https://git.opendaylight.org/gerrit/#/q/2d6aced41fae15ff8618a9c217450f0989ce437f>`_ `BUG-5012 <https://bugs.opendaylight.org/show_bug.cgi?id=5012>`_ - adding configurable support for timing out hosts ( in interval of seconds )
* `a9b7f7 <https://git.opendaylight.org/gerrit/#/q/a9b7f7931abca9fbad7434f8b964a32fc55e15e3>`_ `BUG-2501 <https://bugs.opendaylight.org/show_bug.cgi?id=2501>`_ Reactive mode -default L2Switch timeout values
* `a0ee48 <https://git.opendaylight.org/gerrit/#/q/a0ee48b5a870854a2e6cf29ba63afc79f8654245>`_ `BUG-5629 <https://bugs.opendaylight.org/show_bug.cgi?id=5629>`_ - Cleaning up Yang files Unused imports are being removed from yang files.

LISP Flow Mapping
-----------------
* `f2ca5b <https://git.opendaylight.org/gerrit/#/q/f2ca5b02476457a29f7188b83e73a75988fcf59b>`_ `BUG-6024 <https://bugs.opendaylight.org/show_bug.cgi?id=6024>`_: Fix IPv6 datagram sending
* `864915 <https://git.opendaylight.org/gerrit/#/q/864915a8ec1c6f7b88e3621ce150a37445120b0f>`_ Inherit nexusproxy from odlparent
* `9f0737 <https://git.opendaylight.org/gerrit/#/q/9f07376143ee78c7d692ce8855bbb68b266af5ed>`_ `BUG-5795 <https://bugs.opendaylight.org/show_bug.cgi?id=5795>`_: Fix SourceDestKey type check

Link Aggregation Control Protocol (LACP)
----------------------------------------
* `bf58c1 <https://git.opendaylight.org/gerrit/#/q/bf58c10ba57f2d6088a34631dd5bff577d1b1708>`_ Cherry picked changes from https://git.opendaylight.org/gerrit/#/c/39522/ to the beryllium branch.
* `dd86f2 <https://git.opendaylight.org/gerrit/#/q/dd86f2c863f0434b79d682c8eb7b7703af5fa855>`_ Remove unused properties
* `66acb8 <https://git.opendaylight.org/gerrit/#/q/66acb8996bda3957ccbd900f2d13c7840b9f861b>`_ Modified LacpNodeExtn.java
* `ddbef8 <https://git.opendaylight.org/gerrit/#/q/ddbef8dde2f59abc0f758e867baacf47ad143ad9>`_ Modified pom.xml and LacpFlow.java

MD-SAL
------
* `7d64be <https://git.opendaylight.org/gerrit/#/q/7d64be5b1995171d040d304a9aa4f6e96bff5541>`_ `BUG-6112 <https://bugs.opendaylight.org/show_bug.cgi?id=6112>`_ - UnionTypeCodec fails to non-identityref value
* `6c7cb5 <https://git.opendaylight.org/gerrit/#/q/6c7cb52b3976b9153c2af840ec7dfb715fa71974>`_ Optimize UnionTypeCodec
* `82bb64 <https://git.opendaylight.org/gerrit/#/q/82bb64f1241ba93d81ccb56b4ceaf8701fe769d1>`_ Enforce non-null class
* `b38ccf <https://git.opendaylight.org/gerrit/#/q/b38ccf98df3551f02f72bd2b2fcc282fe0556455>`_ Optimize BitsCodec
* `89570f <https://git.opendaylight.org/gerrit/#/q/89570f5d9e9568741ac66867a8cd2e1d0ed39ed8>`_ `BUG-6006 <https://bugs.opendaylight.org/show_bug.cgi?id=6006>`_ - UnionTypeCodec fails to handle indentityref
* `142b29 <https://git.opendaylight.org/gerrit/#/q/142b293f84f2d890b61fef1be06c9e64a7130b69>`_ LazyDataObject bindingEquals fix
* `c882a2 <https://git.opendaylight.org/gerrit/#/q/c882a2cb20c20377b16a9dee608998870b23bed0>`_ `BUG-5970 <https://bugs.opendaylight.org/show_bug.cgi?id=5970>`_: do not add value to union hashCode/equals/toString
* `4204d5 <https://git.opendaylight.org/gerrit/#/q/4204d5333bf91bcd0aa044afcccad4b5a2653ff5>`_ `BUG-5883 <https://bugs.opendaylight.org/show_bug.cgi?id=5883>`_ - no constructor for indentityref in union
* `030f7d <https://git.opendaylight.org/gerrit/#/q/030f7d42bfd1e63f50387c07e2432daa1efd17ed>`_ `BUG-5882 <https://bugs.opendaylight.org/show_bug.cgi?id=5882>`_: Wrong placement of deprecated annotation
* `e1309c <https://git.opendaylight.org/gerrit/#/q/e1309cc2d2d79ba6408d53fbc0786b224e6f1944>`_ `BUG-5845 <https://bugs.opendaylight.org/show_bug.cgi?id=5845>`_: can not transform ba to bi, when keys contain boolean type
* `6d2a80 <https://git.opendaylight.org/gerrit/#/q/6d2a807f26c3cea7f9ae28253f3cd5b9602e6a14>`_ `BUG-5461 <https://bugs.opendaylight.org/show_bug.cgi?id=5461>`_: Augmenting a choice without a case from another module causes NPE
* `ed8cc4 <https://git.opendaylight.org/gerrit/#/q/ed8cc45db25fae9daf61a5fb81fa0e681634420c>`_ `BUG-5788 <https://bugs.opendaylight.org/show_bug.cgi?id=5788>`_: enum used as a key does not work
* `073183 <https://git.opendaylight.org/gerrit/#/q/07318386c834f427a4fac01db035f97281e0ca21>`_ `BUG-5446 <https://bugs.opendaylight.org/show_bug.cgi?id=5446>`_: toString() throws exception for 'type binary' binding
* `aabe7b <https://git.opendaylight.org/gerrit/#/q/aabe7b7c2872be59f7611c3b2e05667cc243dfda>`_ `BUG-4760 <https://bugs.opendaylight.org/show_bug.cgi?id=4760>`_: YANG leaf named 'class' breaks write with netconf connector
* `253697 <https://git.opendaylight.org/gerrit/#/q/2536975f4b33512467d1675224811d79b9ab98ca>`_ `BUG-1862 <https://bugs.opendaylight.org/show_bug.cgi?id=1862>`_: Incorrect type transformation in TypeProviderImpl

NETCONF
-------
* `c049f3 <https://git.opendaylight.org/gerrit/#/q/c049f34273472ed2af275921b26e019d9a0cfdcd>`_ `BUG-3959 <https://bugs.opendaylight.org/show_bug.cgi?id=3959>`_ - support netconf notification
* `7ac4a1 <https://git.opendaylight.org/gerrit/#/q/7ac4a192d02bd94fa9e3cb4346937a66e89de09e>`_ `BUG-6037 <https://bugs.opendaylight.org/show_bug.cgi?id=6037>`_ - Check if delete request was successful
* `d8f8aa <https://git.opendaylight.org/gerrit/#/q/d8f8aafb38e93544271a4549dc5cf4bf20cadbe4>`_ Remove obsolete FIXMEs
* `585535 <https://git.opendaylight.org/gerrit/#/q/585535b0e41892a2f3ac1a4c7d7923086b1780ad>`_ `BUG-5909 <https://bugs.opendaylight.org/show_bug.cgi?id=5909>`_ - PATCH does not report 409 on OptimisticLockFailedException
* `d3332c <https://git.opendaylight.org/gerrit/#/q/d3332cfb622c23f91f7198e82751af76fa7f285e>`_ `BUG-5897 <https://bugs.opendaylight.org/show_bug.cgi?id=5897>`_ - PATCH merge operation does nothing
* `204f61 <https://git.opendaylight.org/gerrit/#/q/204f61e01dc276b6cc129af47793e89edc09d236>`_ `BUG-5915 <https://bugs.opendaylight.org/show_bug.cgi?id=5915>`_ - PATCH with "target":"/" error
* `cb084f <https://git.opendaylight.org/gerrit/#/q/cb084f27c4c28285cec44f5cd11634b54b2dcc1c>`_ `BUG-5509 <https://bugs.opendaylight.org/show_bug.cgi?id=5509>`_ - HTTP Patch in Restconf doesn't support general absolute or relative target xpath
* `ccbba4 <https://git.opendaylight.org/gerrit/#/q/ccbba407d2b0febc831db6cfe87b52a82d012f19>`_ `BUG-5509 <https://bugs.opendaylight.org/show_bug.cgi?id=5509>`_ - HTTP Patch in Restconf doesn't support general absolute or relative target xpath
* `3f0395 <https://git.opendaylight.org/gerrit/#/q/3f03958e2d2f003565c307e380b3172ad9eefc47>`_ `BUG-5898 <https://bugs.opendaylight.org/show_bug.cgi?id=5898>`_ - PATCH success "ok" field has wrong JSON value
* `035daf <https://git.opendaylight.org/gerrit/#/q/035dafc2c0fb2b77613381445d28d90d3ef757e3>`_ Improve logging in netconf test tool
* `10f1f7 <https://git.opendaylight.org/gerrit/#/q/10f1f74564070ddea522b65d1beb494667091004>`_ `BUG-5730 <https://bugs.opendaylight.org/show_bug.cgi?id=5730>`_ - Delete subset of list items using PATCH?

NetIDE
------
* `10aa9e <https://git.opendaylight.org/gerrit/#/q/10aa9e64eaf6d40b09e791c48ff1554af2d98fe1>`_ Remove unused property

Network Virtualization
----------------------
* `601acd <https://git.opendaylight.org/gerrit/#/q/601acd345b6d85c5934adc257378d3a0388e0998>`_ Move old netvirt files into openstack dir
* `95f9aa <https://git.opendaylight.org/gerrit/#/q/95f9aa624cc7864536ec377cd288661db0556978>`_ `BUG-6066 <https://bugs.opendaylight.org/show_bug.cgi?id=6066>`_ - Improve the logging.
* `b44bc6 <https://git.opendaylight.org/gerrit/#/q/b44bc69b5a428a6f79158d8969c771fde886f41a>`_  `BUG-6081 <https://bugs.opendaylight.org/show_bug.cgi?id=6081>`_-ERROR Log Observations - CSIT (SG)
* `61d694 <https://git.opendaylight.org/gerrit/#/q/61d6947432773e6f826d78326dfa0c37108e3a71>`_ Reduce IT logging
* `7eb90d <https://git.opendaylight.org/gerrit/#/q/7eb90d11552359c2a55d490637989049b0c82695>`_ Fix IT failure when not running DockerOvs docker
* `868d4e <https://git.opendaylight.org/gerrit/#/q/868d4ea62f2b1ad558f46b2a469fd5cadd560578>`_ `BUG-6066 <https://bugs.opendaylight.org/show_bug.cgi?id=6066>`_ - Improve the logging.
* `8e8254 <https://git.opendaylight.org/gerrit/#/q/8e8254500d16c9075e5db4d93c172175cdec989c>`_ Reduce logging for openflow and config warnings
* `5ebe4d <https://git.opendaylight.org/gerrit/#/q/5ebe4d13e0bda843f479347d92c9728f358532b5>`_ `BUG-6066 <https://bugs.opendaylight.org/show_bug.cgi?id=6066>`_ - Improve the logging.
* `e65f79 <https://git.opendaylight.org/gerrit/#/q/e65f790935a82728e11e4a122d6155779228803d>`_ `BUG-5860 <https://bugs.opendaylight.org/show_bug.cgi?id=5860>`_ Fix port event wrong ordering
* `816462 <https://git.opendaylight.org/gerrit/#/q/816462819aca378007402a082f7b0644b3033c74>`_ Support for IT ping feature
* `3a997b <https://git.opendaylight.org/gerrit/#/q/3a997bba3136e3e836b2f82854d495b921be286c>`_ Clean up pom files
* `2a2025 <https://git.opendaylight.org/gerrit/#/q/2a20250aeedb4d16c58dc76a15b40c1687e22ae2>`_ `BUG-6017 <https://bugs.opendaylight.org/show_bug.cgi?id=6017>`_ java.lang.NullPointerException at org.opendaylight.ovsdb.openstack.netvirt.impl.BridgeConfigurationManagerImpl.          createBridges(BridgeConfigurationManagerImpl.java:407)
* `015e39 <https://git.opendaylight.org/gerrit/#/q/015e39480b8f302bd74981256eced56bc7d1b126>`_ `BUG-6021 <https://bugs.opendaylight.org/show_bug.cgi?id=6021>`_ java.lang.NullPointerException at org.opendaylight.ovsdb.openstack.netvirt.          impl.NeutronL3Adapter.storeNetworkInCleanupCache(NeutronL3Adapter.java:1564).
* `52e70a <https://git.opendaylight.org/gerrit/#/q/52e70a5c34cb9895f45ecac5d4968ffd60b95359>`_ `BUG-6066 <https://bugs.opendaylight.org/show_bug.cgi?id=6066>`_ Added log message for tunnelports creation.
* `45959e <https://git.opendaylight.org/gerrit/#/q/45959ea4542b83094465e0ad42e67f776bd27b03>`_ `BUG-6070 <https://bugs.opendaylight.org/show_bug.cgi?id=6070>`_  dpid changes as ports added to bridge
* `f037ac <https://git.opendaylight.org/gerrit/#/q/f037ac4e0861cc064ea729d5b2841aba38490975>`_ Add revision for acl.yang now that it is included in mdsal
* `c93994 <https://git.opendaylight.org/gerrit/#/q/c93994f70f6efc8eabd5288b6973a6057620f385>`_ Use <> Java 7 operator
* `c0f384 <https://git.opendaylight.org/gerrit/#/q/c0f384d6c486671e78441990df8615d8b393eb13>`_ `BUG-6056 <https://bugs.opendaylight.org/show_bug.cgi?id=6056>`_ - Wrong logging in NetvirtSfcStandaloneOF13Provider
* `eee237 <https://git.opendaylight.org/gerrit/#/q/eee23753bccf0917033aad8502e21be7710496e1>`_ Simplify boolean expressions
* `a72e09 <https://git.opendaylight.org/gerrit/#/q/a72e0929f7e9d8e4d3c9f0fe145f148f87fa4e95>`_ Mechanical clean-up: semicolons, default access
* `6b4759 <https://git.opendaylight.org/gerrit/#/q/6b4759c3a1d773e778dc4857b1c7dbbd0a712d49>`_ `BUG-6014 <https://bugs.opendaylight.org/show_bug.cgi?id=6014>`_ - Named Thread pool Executors for better debugging
* `38af11 <https://git.opendaylight.org/gerrit/#/q/38af1195f6e0fb372b63f6e88165ed4e87fdcde8>`_ `BUG-5989 <https://bugs.opendaylight.org/show_bug.cgi?id=5989>`_: Thrown nullpointerexception while updating the port.
* `a86918 <https://git.opendaylight.org/gerrit/#/q/a869181b322bd19299588584b9ee6f6c4977700b>`_ `BUG-2714 <https://bugs.opendaylight.org/show_bug.cgi?id=2714>`_ OVSDB needs to be more proactive in reporting errors with underlying OVS instances.
* `77b6f0 <https://git.opendaylight.org/gerrit/#/q/77b6f0ef822d883062ed25ac9e574ba41fe6026e>`_  `BUG-5988 <https://bugs.opendaylight.org/show_bug.cgi?id=5988>`_: throws NullPointerException while creating a network without br-int interface.   * Handled an exception properly wherever throws NullPointerException     while creating a network without br-int interface.
* `39f5d8 <https://git.opendaylight.org/gerrit/#/q/39f5d82eef04ff4a5646c407b9c8aecadf894115>`_  `BUG-2714 <https://bugs.opendaylight.org/show_bug.cgi?id=2714>`_ OVSDB needs to be more proactive in reporting errors with underlying OVS instances.
* `11fd6a <https://git.opendaylight.org/gerrit/#/q/11fd6a2cad926419241d9377dc723035c2d06ff2>`_ Enable NetVirt Maven site
* `7f3cbf <https://git.opendaylight.org/gerrit/#/q/7f3cbf3788c2e54c5a2cc0951dda20a2f021f9aa>`_ `BUG-5894 <https://bugs.opendaylight.org/show_bug.cgi?id=5894>`_ NullPointerException while deleting the interface from router.   * While deleting the interface from router,     checking the floatingIp's port uuid is null else     delete the respective floating Ip.
* `d093d8 <https://git.opendaylight.org/gerrit/#/q/d093d8392f3a05293fc8132da5eb9ba90f2d7a97>`_ Use DockerOvs + test connect to 2 OVSs
* `e75b42 <https://git.opendaylight.org/gerrit/#/q/e75b42dcf6df137785558c602bdd6cee8dcb981a>`_ `BUG-5939 <https://bugs.opendaylight.org/show_bug.cgi?id=5939>`_ - Communications through external gateway not working
* `c18d93 <https://git.opendaylight.org/gerrit/#/q/c18d93604c2ef28383afa5b0aa7d42e571306249>`_ use the right hop for more than one sf
* `716d4f <https://git.opendaylight.org/gerrit/#/q/716d4f82811e7f332de012130103d2603d374716>`_ Added support for enable/disable security on a port dynamically.
* `45c5f8 <https://git.opendaylight.org/gerrit/#/q/45c5f8c41c7e1bb52e7252e6431f00ae2d71d16e>`_ Added support in neutron and it utils for SGs
* `2e01de <https://git.opendaylight.org/gerrit/#/q/2e01de0b818a6e76ed05137ec5ba8767d69c82a7>`_ `BUG-5813 <https://bugs.opendaylight.org/show_bug.cgi?id=5813>`_: Vxlan ports should not be removed in table 110 flow entry unless last VM instance removed from the openstack node.   * Before deleting the Vxlan port in flow entry it should     check whether the deleted vm instance is last or not.     If it is the last vm instance Vxlan port should be delete from     source node in flow entry else vxlan port shouldn't be delete.
* `0c34a9 <https://git.opendaylight.org/gerrit/#/q/0c34a9c33f9f1303f772b5f8eacb10063699af33>`_ `BUG-5614 <https://bugs.opendaylight.org/show_bug.cgi?id=5614>`_: Ovsdb should not flood the packets to compute nodes unless tenant network exists in the compute node   * Before adding tunnel rules,     checking the network present or not in src and dst node.     If network present in both nodes adding the Vxlan port     in flood entry in src and dst.Else do not add vxlan ports.
* `b80dc1 <https://git.opendaylight.org/gerrit/#/q/b80dc1b4170bde770871938bf726fe43bfefc1b1>`_ Remove ovsdb related in resources
* `d8aba5 <https://git.opendaylight.org/gerrit/#/q/d8aba54e357a2a0cdb472c06a3e4e3f53d035d58>`_ postman: use 1 for netvirt table offset
* `08e1d0 <https://git.opendaylight.org/gerrit/#/q/08e1d070419038ee11e337c38632d82d99ce8cca>`_ Added isPortSecurityEnabled check to enable/disable SG.

ODL Root Parent
---------------
* `461693 <https://git.opendaylight.org/gerrit/#/q/461693ec8eaaf4fe92842e10b77061ec3b199038>`_ Quick (-Pq) should skip running tests, but not building them
* `68e5f6 <https://git.opendaylight.org/gerrit/#/q/68e5f61e58868b1db0a5b9fe46e97795db948e6f>`_ Use CustomBundleURLStreamHandlerFactory from features-test
* `e1af02 <https://git.opendaylight.org/gerrit/#/q/e1af02ba0614ddeeb0f915d8765e66c1e8aafc35>`_ Use more specific dependencies than karaf-maven-plugin
* `cbaf17 <https://git.opendaylight.org/gerrit/#/q/cbaf172a872282646501104cc059612e9c62f4c5>`_ Introduce "mvn -Pq install" to just build JAR, but no tests, QA etc.
* `7e1d3a <https://git.opendaylight.org/gerrit/#/q/7e1d3ae3b9a8927f83b80ba787e71d5afe4e9b91>`_ Upgrade Netty 4.0.33.Final -> 4.0.37.Final
* `1b688e <https://git.opendaylight.org/gerrit/#/q/1b688ef4994937631f98156ee974dcbbbcb3a499>`_ `BUG-4692 <https://bugs.opendaylight.org/show_bug.cgi?id=4692>`_: Add Netty's native epoll transport

OVSDB Integration
-----------------
* `4809f5 <https://git.opendaylight.org/gerrit/#/q/4809f5548337eacf0e1150ee65dfd5c2f0518fa2>`_ `BUG-6304 <https://bugs.opendaylight.org/show_bug.cgi?id=6304>`_ - Regression in Connection reconciliation functionality
* `bda8b6 <https://git.opendaylight.org/gerrit/#/q/bda8b612af3315f1188d198ae30a0b59869df5e6>`_ `BUG-6284 <https://bugs.opendaylight.org/show_bug.cgi?id=6284>`_ - Cancellation exceptions during operation execution
* `4a820e <https://git.opendaylight.org/gerrit/#/q/4a820e0c6ffa42bcdb2788198fa3eebab7197a3f>`_ Fix more Sonar (soon Checkstyle) constant name
* `f79ef1 <https://git.opendaylight.org/gerrit/#/q/f79ef17d5eba232cf6d30146e6d044a4aafe246d>`_ Checkstyle fixes (to be enforced)
* `cd7b87 <https://git.opendaylight.org/gerrit/#/q/cd7b87a6cc96ba71c3c93679c31e013006e35f78>`_ Add support for setting the db schema version
* `93faa9 <https://git.opendaylight.org/gerrit/#/q/93faa9782fe4c474bef8b4329f38cf89f0ce6460>`_ Checkstyle fixes for ovsdb test dirs
* `955ffe <https://git.opendaylight.org/gerrit/#/q/955ffe336aa17c6b8c027fcbb052fc7e70d7020c>`_ `BUG-6185 <https://bugs.opendaylight.org/show_bug.cgi?id=6185>`_ - southbound system tests failing when run with all other compatible OpenDaylight features.
* `4e9eac <https://git.opendaylight.org/gerrit/#/q/4e9eac73aa967ec7f75df24fc85fdcac2698c3f8>`_ Reduce IT logging
* `4fb64d <https://git.opendaylight.org/gerrit/#/q/4fb64ddac4b05d66563d738796915016fff5cba0>`_ checkstyle fixes for library
* `3ed72f <https://git.opendaylight.org/gerrit/#/q/3ed72fad5c43ff9a7841f9499cee967bca183a7e>`_ Use StandardCharsets instead of Guava
* `70310b <https://git.opendaylight.org/gerrit/#/q/70310bccb2395ac6ebd6875d455498baa78cde23>`_ Fix docker compose ps command
* `79f9f8 <https://git.opendaylight.org/gerrit/#/q/79f9f883ece924f181a688c7acbb12a4e2166ead>`_ Fix IT failure when not running DockerOvs docker
* `19cde2 <https://git.opendaylight.org/gerrit/#/q/19cde2a56c7120cc856f214e8a100e409cd1ca42>`_ Fixed check-style error caused by odl parents check-style patch
* `8eec85 <https://git.opendaylight.org/gerrit/#/q/8eec851f568f94398ce6b0ced06ff7254f0d413c>`_ `BUG-5938 <https://bugs.opendaylight.org/show_bug.cgi?id=5938>`_ - Updated the logging
* `a9e17f <https://git.opendaylight.org/gerrit/#/q/a9e17f0f2f51e73d4d3faea37c10428075b06e66>`_ Fix potential future problems re. hidden fields
* `2c7e99 <https://git.opendaylight.org/gerrit/#/q/2c7e9907cad8c4ae5fad33fe2a11781a36c68f97>`_ Checkstyle clean-up src/test/java of southbound-impl
* `01c115 <https://git.opendaylight.org/gerrit/#/q/01c11504a00f9310096a6f1882e51cf47362aa86>`_ Fix Sonar (soon Checkstyle) constant name
* `a015ca <https://git.opendaylight.org/gerrit/#/q/a015caf87d47b6e61eeeeadd606af9800cea14f2>`_ `BUG-6130 <https://bugs.opendaylight.org/show_bug.cgi?id=6130>`_ - process only qos and queue creates and updates
* `1f5786 <https://git.opendaylight.org/gerrit/#/q/1f578668d6a3812c1fe39eac031fde2d41c2a229>`_ Fix Sonar (soon Checkstyle) TrailingComment
* `95f9e6 <https://git.opendaylight.org/gerrit/#/q/95f9e683a67ec143dff6ad689da71ed30c477689>`_ Fix Checkstyle "Utility classes should not have (visible) constructor"
* `11e20f <https://git.opendaylight.org/gerrit/#/q/11e20ff868229106b6954abedaa8cc8cb79b5cce>`_ Fix ALOTOF Checkstyle violation, and switch over to enforcement.
* `36174f <https://git.opendaylight.org/gerrit/#/q/36174f205c58d0460a348f3a07481102606ca005>`_ hwvtep yang changes for 1.4.1
* `36eb90 <https://git.opendaylight.org/gerrit/#/q/36eb90e856f31ad0dffdd9a5a311f0740848cbf3>`_ Schema changes for 1.7.0 support
* `feeb46 <https://git.opendaylight.org/gerrit/#/q/feeb468ebbd01337b7f768d3142a7124c893dbea>`_ `BUG-5938 <https://bugs.opendaylight.org/show_bug.cgi?id=5938>`_ - Improve the logging.
* `ab4037 <https://git.opendaylight.org/gerrit/#/q/ab4037bbdb86a97b7ab152a657bbc93dea974418>`_ Checkstyle clean-up invalid license headers containing Authors.
* `5356fc <https://git.opendaylight.org/gerrit/#/q/5356fc12c8da10e14fc567a8cace99310a9ae01a>`_ `BUG-5938 <https://bugs.opendaylight.org/show_bug.cgi?id=5938>`_ Updated Log messages.
* `41ee2a <https://git.opendaylight.org/gerrit/#/q/41ee2a946e851c7fa86f27670c94e208f19fd163>`_ `BUG-5938 <https://bugs.opendaylight.org/show_bug.cgi?id=5938>`_ - Updated the logging.
* `07876c <https://git.opendaylight.org/gerrit/#/q/07876c2fdc905cbe1b5acfc8150b7cc749969f91>`_ Add list of contributors
* `3e1d5d <https://git.opendaylight.org/gerrit/#/q/3e1d5d1f6797b2067b55bc5ec5e23fb2d364f4ed>`_ `BUG-4790 <https://bugs.opendaylight.org/show_bug.cgi?id=4790>`_ - 'ifindex' column from Interface table on OVS
* `b9e5a6 <https://git.opendaylight.org/gerrit/#/q/b9e5a6e5e8f21bf66fc4de09cd7f2e6f724486fd>`_ Use logger instead of System.out.println (found by Checkstyle)
* `846317 <https://git.opendaylight.org/gerrit/#/q/846317ec0e44630fcf827f116f184816d8c55eac>`_ ovsdb enable checkstyle on error
* `32588e <https://git.opendaylight.org/gerrit/#/q/32588e90c07ca4a93bea9e4012b0e88668aa9b84>`_ `BUG-5746 <https://bugs.opendaylight.org/show_bug.cgi?id=5746>`_ - Ovsdb QoS and Queue model enhancements
* `f3db50 <https://git.opendaylight.org/gerrit/#/q/f3db50a2d44a1f4f4e11782b30efc0c563d2577d>`_ Fixing sonar bug 1)Add a private constructor to hide the implicit public one. 2)removing the block of commented-out lines as part of code cleanup
* `b51e87 <https://git.opendaylight.org/gerrit/#/q/b51e8789ca387830f041fe787a804181aee33ef1>`_  `BUG-6136 <https://bugs.opendaylight.org/show_bug.cgi?id=6136>`_ - Southbound plugin throws IllegalStateException when add bridge config via POST.    * Checking isPresent() while reading a OvsdbBridgeAugumentation value.
* `6610b0 <https://git.opendaylight.org/gerrit/#/q/6610b077d29dfd7d29cc424fab652a7918865226>`_ `BUG-5945 <https://bugs.opendaylight.org/show_bug.cgi?id=5945>`_: Tunnel updates through Genius not working
* `45ff90 <https://git.opendaylight.org/gerrit/#/q/45ff90125e6691fa5f20d75ea058466f43c3ddb8>`_ Remove verbose logging in TransactUtils
* `26e8bd <https://git.opendaylight.org/gerrit/#/q/26e8bd69e82fac92223885d568c8b4f8e6bf94a5>`_ Patch set 2 ------------ 1. Break this up into 2 patches, as Sam suggested. This patch will add new schema dependencies and fix ovsdb code to handle ovsdb node when both schemas are present.
* `918448 <https://git.opendaylight.org/gerrit/#/q/918448e5314ab8ed1e4d3c38219b1239434bbf8e>`_ `BUG-5938 <https://bugs.opendaylight.org/show_bug.cgi?id=5938>`_ Added log message for OvsdbDataTreeChangeListener.
* `38d337 <https://git.opendaylight.org/gerrit/#/q/38d337d88e9e0ae98f9b088effe9c26af5e21155>`_ `BUG-5721 <https://bugs.opendaylight.org/show_bug.cgi?id=5721>`_ - br-int not created in clustered setup
* `b02a48 <https://git.opendaylight.org/gerrit/#/q/b02a48713f0c3da314bc431cac1cfd242a243a73>`_ Support for IT Ping feature
* `3b76c4 <https://git.opendaylight.org/gerrit/#/q/3b76c4ab002be17843f6edaf6bdc3680ef3c30bc>`_ Make SchemaVersionMismatchException logging consistent
* `9a022b <https://git.opendaylight.org/gerrit/#/q/9a022bca7a1fcbf399b0ed8eee3880ef37d5ce12>`_ removed unused imports in HwvtepSouthboundUtil.java,  'org.opendaylight.controller.md.sal.common.api.data.TransactionCommitFailedException' and org.opendaylight.yang.gen.v1.urn.opendaylight.params.xml.ns.yang.ovsdb.hwvtep.rev150901.HwvtepLogicalSwitchAttributes'.
* `a03490 <https://git.opendaylight.org/gerrit/#/q/a03490a4949542cee325ad8186a32b8d8c38733a>`_ `BUG-5976 <https://bugs.opendaylight.org/show_bug.cgi?id=5976>`_ - Thread leak when connecting/disconnecting ovs nodes
* `250987 <https://git.opendaylight.org/gerrit/#/q/250987647482de4fee8b94a347c6aa0bac83738b>`_ Remove OvsdbDataChangeListener
* `941971 <https://git.opendaylight.org/gerrit/#/q/941971288b13e5bc1af6a8fee19358e36ed9b404>`_ `BUG-5992 <https://bugs.opendaylight.org/show_bug.cgi?id=5992>`_ - GBP + SFC integration is broken
* `abc18d <https://git.opendaylight.org/gerrit/#/q/abc18d8e41860230d661168b436788cf79e1b148>`_ Add IT for port del dtcl
* `80f927 <https://git.opendaylight.org/gerrit/#/q/80f927d043cffeeb4aa86bd99bad83dfad31bfb0>`_ Removed unused import 'org.opendaylight.ovsdb.lib.impl.OvsdbConnectionService'." from HwvtepSouthboundProvider.java
* `1229be <https://git.opendaylight.org/gerrit/#/q/1229be9ec9968df4b84e542a1981873a47d95c14>`_ Replace wildcard imports
* `7f0ec7 <https://git.opendaylight.org/gerrit/#/q/7f0ec7ba821adb70b1269a7432a9ff110c6855bf>`_ Add ability to create VxLAN-GPE tunnels
* `0ff319 <https://git.opendaylight.org/gerrit/#/q/0ff3196f5ed4745f56caceb3133d7ba77d3cae70>`_ `BUG-5944 <https://bugs.opendaylight.org/show_bug.cgi?id=5944>`_ - Looping INFO messages for UNSUPPORTED AutoAttach OVS
* `947c2a <https://git.opendaylight.org/gerrit/#/q/947c2a0ff91bf2d46b5eb5659adcc33e79dfcda7>`_ System property awareness in DockerOvs
* `5d95a3 <https://git.opendaylight.org/gerrit/#/q/5d95a35a6763bd20995dc06557a9a64ab8b804e0>`_ removed unused import 'org.opendaylight.yang.gen.v1.urn.ietf.params.xml. ns.yang.ietf.inet.types.rev100924.Ipv4Address' in HwvtepSouthboundMapper.java
* `9d8036 <https://git.opendaylight.org/gerrit/#/q/9d80362e33fb2d6a2c0dc4b7994c976e46e8799f>`_ `BUG-5479 <https://bugs.opendaylight.org/show_bug.cgi?id=5479>`_: HWVtep Southbound doesn't retry connection
* `498c94 <https://git.opendaylight.org/gerrit/#/q/498c94791d9595f7586817ec7506a62bd5fb5317>`_ `BUG-5769 <https://bugs.opendaylight.org/show_bug.cgi?id=5769>`_
* `6259ad <https://git.opendaylight.org/gerrit/#/q/6259ad2438738c4edf4b2b8b4ae46e12ef0c837c>`_ `BUG-5506 <https://bugs.opendaylight.org/show_bug.cgi?id=5506>`_: OVSDB server doesn't close connection after peer is power down
* `e68f75 <https://git.opendaylight.org/gerrit/#/q/e68f75f9c018cfd3523bb571f3afc45ab4a86f33>`_ `BUG-5885 <https://bugs.opendaylight.org/show_bug.cgi?id=5885>`_ - OVSDB plugin failure to update passive ovsdb nodes
* `aca1d4 <https://git.opendaylight.org/gerrit/#/q/aca1d43d6415468f74c87972d6dbde454c3aa862>`_ Infra for running ovs dockers
* `202672 <https://git.opendaylight.org/gerrit/#/q/202672cd875336e4f8c3101bb5d38e2a89b8f554>`_ Minor sonar listed bug fixed for coding style in HwvtepConnectionManager.java
* `504431 <https://git.opendaylight.org/gerrit/#/q/504431fe579c6e38bb309a366521da16945070b6>`_ Patch - https://git.opendaylight.org/gerrit/#/c/39061/ is broken .This patch fixes the breakage
* `666862 <https://git.opendaylight.org/gerrit/#/q/6668628bca69289dd709c2ddb2171fa5000cdaff>`_ `BUG-5177 <https://bugs.opendaylight.org/show_bug.cgi?id=5177>`_ - bridge not created if it's configured northbound while ovs node is disconnected
* `24525e <https://git.opendaylight.org/gerrit/#/q/24525e705f2437366369227500fc2fe4e1362b80>`_ Remove logging entire exception to avoid a noisy stack trace
* `5b690e <https://git.opendaylight.org/gerrit/#/q/5b690ec3d5bf398e1fb394c16c570de437b1d9bf>`_ `BUG-5737 <https://bugs.opendaylight.org/show_bug.cgi?id=5737>`_: enable OVSDB Maven site
* `5aa4a9 <https://git.opendaylight.org/gerrit/#/q/5aa4a93eff4a2b5463e94cc509586262726de1ac>`_ Remove redudnant calls for bridge updates
* `ea37b5 <https://git.opendaylight.org/gerrit/#/q/ea37b545cf855f290134bb00b61d412939b6bd20>`_ Get bridge details for delete when using dataTree
* `d8e98c <https://git.opendaylight.org/gerrit/#/q/d8e98c806b9d08ece3c6c75c8a9522a30447006d>`_ `BUG-5876 <https://bugs.opendaylight.org/show_bug.cgi?id=5876>`_ - OVSDB library: Retry when SSL handshake doesn't begin yet
* `c8c4f0 <https://git.opendaylight.org/gerrit/#/q/c8c4f09b3cc91e3d336d3458185756f2c8862ac5>`_ Add MdsalUtilsAsync to make transactions asyncrhonous
* `ae7741 <https://git.opendaylight.org/gerrit/#/q/ae7741f1104dde0572419567faef8ae0db3e1b34>`_ Remove the remaining netvirt code from ovsdb
* `d37afe <https://git.opendaylight.org/gerrit/#/q/d37afebe8adf1d63651b58223a4e2c828795ba27>`_ Fix Iid for locator-refs in HwvtepTunnelUpdate
* `a1e800 <https://git.opendaylight.org/gerrit/#/q/a1e800d4d2cf727233a5248ceabcb6deb6806c0d>`_ `BUG-5876 <https://bugs.opendaylight.org/show_bug.cgi?id=5876>`_ - OVSDB library: Retry when SSL handshake doesn't begin yet
* `802491 <https://git.opendaylight.org/gerrit/#/q/802491f63d2bc6e9a77b30036f624f6fb86c106a>`_ Fix Puppet install in OVSDB Vagrantfile
* `af097f <https://git.opendaylight.org/gerrit/#/q/af097f850b42338e07a2a3b6c4ad291f7c720ca9>`_ Use DataTreeChangeListener instead of DataChangeListener
* `0285a8 <https://git.opendaylight.org/gerrit/#/q/0285a8b6426cc3752a9cd793daa6b1c66fa18aa9>`_ Move TpId allocation out of loop
* `6a9285 <https://git.opendaylight.org/gerrit/#/q/6a9285df2b35634779b8da5ed1047e267c6aea65>`_ Fixed hard-coded port 12345 in TestClient
* `920bbd <https://git.opendaylight.org/gerrit/#/q/920bbd68f9b8426969e18a8165ab4a336804b5b7>`_ BUG5764: Hwvtep tunnel update/delete not reflected correctly

OpenFlow Configuration Protocol (OF-CONFIG)
-------------------------------------------
* `5828c8 <https://git.opendaylight.org/gerrit/#/q/5828c8edc87f7ede598adc011bf4b36f6d392a8d>`_ `BUG-5780 <https://bugs.opendaylight.org/show_bug.cgi?id=5780>`_ - can not generate ofconfig topology node

OpenFlow Plugin
---------------
* `1126d3 <https://git.opendaylight.org/gerrit/#/q/1126d372f71f119b33f84c8b2498cb258612d4ee>`_ `BUG-5390 <https://bugs.opendaylight.org/show_bug.cgi?id=5390>`_ - Adding Ipv6 L3ArbitraryBitMask feature support.
* `bf234d <https://git.opendaylight.org/gerrit/#/q/bf234d366d960c709cfa7379fd57b76ba4a2b765>`_ `BUG-5390 <https://bugs.opendaylight.org/show_bug.cgi?id=5390>`_ - Adding Ipv6 L3ArbitraryBitMask feature support.
* `6222ea <https://git.opendaylight.org/gerrit/#/q/6222eab8b0dbe91bc6c2365cbedb5b9f42564198>`_ `BUG-6073 <https://bugs.opendaylight.org/show_bug.cgi?id=6073>`_: Wait for completion of add-group RPCs as needed.
* `92670c <https://git.opendaylight.org/gerrit/#/q/92670c1788955848659142a5d16ebb4c2d9aa905>`_ Create empty match only once
* `eae9e6 <https://git.opendaylight.org/gerrit/#/q/eae9e66552e2e6e42bb9fd67ac7482796c389e52>`_ Removing duplicate dependencies in pom
* `3836c2 <https://git.opendaylight.org/gerrit/#/q/3836c289e2684aa6f4c928d357c38b3cf42fe02a>`_ `BUG-4148 <https://bugs.opendaylight.org/show_bug.cgi?id=4148>`_: Fixed the log level.
* `e4db06 <https://git.opendaylight.org/gerrit/#/q/e4db06f832ffa7bf02348d28588791eb6fe338d0>`_ `BUG-6193 <https://bugs.opendaylight.org/show_bug.cgi?id=6193>`_ - Change in length of DatapathId of a switch
* `ac4d6f <https://git.opendaylight.org/gerrit/#/q/ac4d6fedbc5feb198a8baead33178ff6d30c176d>`_ `BUG-6109 <https://bugs.opendaylight.org/show_bug.cgi?id=6109>`_: Having a null match field is totally fine.
* `88d38b <https://git.opendaylight.org/gerrit/#/q/88d38b7fcfc648c7769aad075ae6a30d48b8c1ba>`_ Use odlparent version of maven-dependency-plugin
* `4ba00e <https://git.opendaylight.org/gerrit/#/q/4ba00ef1faae380fd1cf36c6f5226bafa5cf8cd5>`_ `BUG-6145 <https://bugs.opendaylight.org/show_bug.cgi?id=6145>`_ Flows rm'ed from DeviceFlowRegistry after being updated
* `d14ca5 <https://git.opendaylight.org/gerrit/#/q/d14ca59b515aa9cc546fbdc2e8971f9cae91c8b5>`_ Added createEmptyRpcBatchResultFuture method
* `74b243 <https://git.opendaylight.org/gerrit/#/q/74b24354db15d66090bed4ff05bc49c330245783>`_ `BUG-5578 <https://bugs.opendaylight.org/show_bug.cgi?id=5578>`_ Improve FlatBatch service (cleaning)
* `41ecd5 <https://git.opendaylight.org/gerrit/#/q/41ecd5c840e70688537d617e13f3c0529634d89f>`_ `BUG-5578 <https://bugs.opendaylight.org/show_bug.cgi?id=5578>`_ Improve FlatBatch service (barriers)
* `3ec690 <https://git.opendaylight.org/gerrit/#/q/3ec690001095e70e9e07d8b0c823f484416c6b6c>`_ `BUG-5590 <https://bugs.opendaylight.org/show_bug.cgi?id=5590>`_ - writeToTransaction+submitTransaction - New interface TxFacade, DeviceContext now implements this interface - Changed constructor of SalTableServiceImpl to accept TxFacade and NodeId - Changed MultipartRequestOnTheFlyCallback to not need the DeviceContext and accept TxFacade - Updated some methods in StatisticGatheringUtils to not depend on DeviceContext (because of change above) - Updated usages of these classes according to changes. - Updated tests - Fixed submitTransaction in MultipartRequestOnTheFlyCallback endCollecting method
* `a6e0a4 <https://git.opendaylight.org/gerrit/#/q/a6e0a4aa190783d55d07272a7277f1fb3d518338>`_ `BUG-5574 <https://bugs.opendaylight.org/show_bug.cgi?id=5574>`_: added flat-bulk service registration
* `9815a7 <https://git.opendaylight.org/gerrit/#/q/9815a7c6d3cb952cdecd9c3016c456acd6edc5ab>`_ `BUG-5574 <https://bugs.opendaylight.org/show_bug.cgi?id=5574>`_: flat batch proposal
* `83f276 <https://git.opendaylight.org/gerrit/#/q/83f276cd8f3265cc5c861f519337f7823de6e6af>`_ `BUG-5574 <https://bugs.opendaylight.org/show_bug.cgi?id=5574>`_: bulk meters proposal
* `850a11 <https://git.opendaylight.org/gerrit/#/q/850a11a7f271368040b3df6e9c1f8e6635258992>`_ `BUG-5574 <https://bugs.opendaylight.org/show_bug.cgi?id=5574>`_: introduces sal-groups-batch service impl
* `91d7ac <https://git.opendaylight.org/gerrit/#/q/91d7ac222b617b6e0253c9a97cad0c09db44a1cd>`_ `BUG-5574 <https://bugs.opendaylight.org/show_bug.cgi?id=5574>`_: sal-flows-batch proposal
* `cbae6d <https://git.opendaylight.org/gerrit/#/q/cbae6d566db52df299f0f515cc86b7f55856ae49>`_ `BUG-6060 <https://bugs.opendaylight.org/show_bug.cgi?id=6060>`_ failed to push master role request occasionally
* `c83bfd <https://git.opendaylight.org/gerrit/#/q/c83bfdfeb57a574e008b3b56d52fe785cc8e5880>`_ `BUG-5924 <https://bugs.opendaylight.org/show_bug.cgi?id=5924>`_ - Reuse Threads using ThreadPool in SystemNotificationListenerImpl
* `334abf <https://git.opendaylight.org/gerrit/#/q/334abfee285d27a713971fc81154bc9ce2c3567e>`_ `BUG-6124 <https://bugs.opendaylight.org/show_bug.cgi?id=6124>`_ - onIdleSwitchEvent test fails
* `fab9f2 <https://git.opendaylight.org/gerrit/#/q/fab9f23d941af68d7518d501b9c042ec5e4f4750>`_ `BUG-5925 <https://bugs.opendaylight.org/show_bug.cgi?id=5925>`_ - Reuse Threads using ThreadPool in ConnectionManagerImpl
* `9ca68c <https://git.opendaylight.org/gerrit/#/q/9ca68c7ceb0e38a5e656031168d4dbc6b48372dc>`_ `BUG-5921 <https://bugs.opendaylight.org/show_bug.cgi?id=5921>`_ EOS inJeopardy flag
* `12366f <https://git.opendaylight.org/gerrit/#/q/12366fa9fb53ee138734f8f1e8d45e33786c5fa0>`_ `BUG-5987 <https://bugs.opendaylight.org/show_bug.cgi?id=5987>`_ - Operational Inventory data persists in datastore
* `9bb709 <https://git.opendaylight.org/gerrit/#/q/9bb7097e6fe4ed6a783346aa8d1ad8ec3226c888>`_ `BUG-5595 <https://bugs.opendaylight.org/show_bug.cgi?id=5595>`_ - RpcContext nodeId+xidSequencer (remove dependency on DeviceContext) - Changed RpcContextImpl to not depend on DeviceContext. - Moved isStatisticsRpcEnabled to DeviceManager and DeviceContext - Updated RpcContextManagerImpl to use new RpcContextImpl constructor - Updated tests
* `039e6f <https://git.opendaylight.org/gerrit/#/q/039e6f53a9e48c64b056c98b0e547eaec7d5549d>`_ `BUG-5888 <https://bugs.opendaylight.org/show_bug.cgi?id=5888>`_: moving the reconciliation process into a different thread to prevent holding on to DTCL thread while provisioning bulk flows/groups.
* `1c8441 <https://git.opendaylight.org/gerrit/#/q/1c844102c9dd43eb4234759e791ac281c7fb45cb>`_ `BUG-5916 <https://bugs.opendaylight.org/show_bug.cgi?id=5916>`_: He plugin: Wake up statistics collector thread if RPC fails.
* `88f78b <https://git.opendaylight.org/gerrit/#/q/88f78b71b9ef7ca871e0889373d4030bffe4ce6f>`_ Remove nexusproxy as it is inherited from odlparent
* `1d66f6 <https://git.opendaylight.org/gerrit/#/q/1d66f6274bf490642145f21d821dd4d10f20eceb>`_ Suppressed WARN log of forwardingrules-manager
* `336749 <https://git.opendaylight.org/gerrit/#/q/3367497902ed8e8fd297a47363e3a6bba8fc5040>`_ `BUG-6085 <https://bugs.opendaylight.org/show_bug.cgi?id=6085>`_ - Modifying config flow does not work if first flow creation failed
* `1cf810 <https://git.opendaylight.org/gerrit/#/q/1cf8101a23162ef7d22c52dc8e555b953f05ebbc>`_ `BUG-6064 <https://bugs.opendaylight.org/show_bug.cgi?id=6064>`_: switching updates off as on a node updated we need not trigger reconciliation
* `c5f8bd <https://git.opendaylight.org/gerrit/#/q/c5f8bd2dc80426ca8737c96c707c6d9726805152>`_ `BUG-5974 <https://bugs.opendaylight.org/show_bug.cgi?id=5974>`_: He plugin: Don't invalidate session context that is not valid.
* `c756e9 <https://git.opendaylight.org/gerrit/#/q/c756e963116ec1f27a733ee8867011a40d4e9d6e>`_ Fixed debug log messages.
* `f39d5d <https://git.opendaylight.org/gerrit/#/q/f39d5db715dd8b7bc05b5f4aa1d3959562a95c9c>`_ `BUG-5888 <https://bugs.opendaylight.org/show_bug.cgi?id=5888>`_ - Changing FRM from clustered DCN to clustered DTCN
* `1c9281 <https://git.opendaylight.org/gerrit/#/q/1c92813d31d8b2c134d0e57fab3e4a2d939b32c2>`_ `BUG-5953 <https://bugs.opendaylight.org/show_bug.cgi?id=5953>`_: Fixed NPE in FlowRemovedTranslator.
* `87b7ac <https://git.opendaylight.org/gerrit/#/q/87b7ac0a9f3a847aea84b8423d94f95d41a3097e>`_ Correcting test-failures during openflowplugin-periodic builds
* `99b4d1 <https://git.opendaylight.org/gerrit/#/q/99b4d1362765c8ae2ce6f82fffa5ea3aae2548ba>`_ `BUG-5888 <https://bugs.opendaylight.org/show_bug.cgi?id=5888>`_: Registering entity-ownership listerner globally
* `d13d3e <https://git.opendaylight.org/gerrit/#/q/d13d3e16c710d31450fcd71662cc556a850dbc55>`_ `BUG-5636 <https://bugs.opendaylight.org/show_bug.cgi?id=5636>`_: making table features configurable for the He plugin. DEFAULT will be ON, can be TURNED OFF.
* `3a666e <https://git.opendaylight.org/gerrit/#/q/3a666ecb0855315b56f2381a9ab5de4296d0ddf6>`_ `BUG-5839 <https://bugs.opendaylight.org/show_bug.cgi?id=5839>`_ - Removing stale-marked groups/meters durng reconciliation [cherry-pick from master]
* `cdcfe9 <https://git.opendaylight.org/gerrit/#/q/cdcfe90c2e38b9e05cc69d70bd66ced28d11a732>`_ `BUG-5914 <https://bugs.opendaylight.org/show_bug.cgi?id=5914>`_ - Flow statistics don't show up on the same flow id, if flow uses IPv6 match with subnet mask
* `d96bdb <https://git.opendaylight.org/gerrit/#/q/d96bdbc2a26ce9b67564a4e3ee60d74459c12a40>`_ `BUG-5841 <https://bugs.opendaylight.org/show_bug.cgi?id=5841>`_: Enhances bulk-o-matic to stress test Data Store and Openflowplugin RPC Added asciidoc for the same
* `0adac8 <https://git.opendaylight.org/gerrit/#/q/0adac89918230fc702fdcf9c6c1c3abf2a7ee0c6>`_ added table features skip flag
* `d3f498 <https://git.opendaylight.org/gerrit/#/q/d3f498f46273ba28360dc031c3b501b8e0449839>`_ Add custom compare for ArpMatch objects
* `6f3b6d <https://git.opendaylight.org/gerrit/#/q/6f3b6dd2a2c35dcc2058b3f0a409e0f6c53b6e6e>`_ `BUG-4099 <https://bugs.opendaylight.org/show_bug.cgi?id=4099>`_: Group pointing to ports during reconciliation will be provisioned only after the ports come up after configurable number of retries

OpenFlow Protocol Library
-------------------------
* `d7e719 <https://git.opendaylight.org/gerrit/#/q/d7e719606dab01aa28be86142b41c6ec713e1442>`_ Remove unused property
* `24de99 <https://git.opendaylight.org/gerrit/#/q/24de996f90c607914498dd536773972280a56de7>`_ Fixed netty & checkstyle failures
* `03a603 <https://git.opendaylight.org/gerrit/#/q/03a603f148b36839d67288b57c6d814a9890c94f>`_ Scenarios can be in XML file
* `c54af8 <https://git.opendaylight.org/gerrit/#/q/c54af80d10ca53721aa67020bba27ca9b893ea54>`_ Utility to test device connections
* `d39744 <https://git.opendaylight.org/gerrit/#/q/d39744833957414d4da7b7d6cec27f958986b5ba>`_ Utility to test device connections

SNMP4SDN
--------
* `299043 <https://git.opendaylight.org/gerrit/#/q/29904343b622ede39b29a66c49ca73d102533b6d>`_ Use https to connect ODL Nexus

Secure Network Bootstrapping Infrastructure (SNBI)
--------------------------------------------------
* `e6e7d4 <https://git.opendaylight.org/gerrit/#/q/e6e7d48fc8c9897423b0980ac1035d96325fd195>`_ Remove nexusproxy as it is inherited from odlparent
* `655937 <https://git.opendaylight.org/gerrit/#/q/655937a281d02755710b0c1de90b73b4e8aa83d7>`_ Do not deploy the karaf artifact

Secure tag eXchange Protocol (SXP)
----------------------------------
* `daac8f <https://git.opendaylight.org/gerrit/#/q/daac8f127c0597640eeb3cc1fd4e92c776670084>`_ `BUG-6190 <https://bugs.opendaylight.org/show_bug.cgi?id=6190>`_ - Export task is not send to remote Peer due to partitioning error
* `b975d9 <https://git.opendaylight.org/gerrit/#/q/b975d91bfe829dfad9764ddf382b790520e5b3b9>`_ `BUG-5975 <https://bugs.opendaylight.org/show_bug.cgi?id=5975>`_ - SXP may leave opened ChannelHandlerContext for Both mode

TCP-MD5
-------
* `156f96 <https://git.opendaylight.org/gerrit/#/q/156f9639ae9ea61d4cf4382b44a54de9dada62ac>`_ Remove redundant javadoc/sources configuration

Table Type Patterns (TTP)
-------------------------
* `b036c6 <https://git.opendaylight.org/gerrit/#/q/b036c64428ebd0a98d6c2c9a153f11a7dbf6ed5c>`_ Enable Maven Site generation
* `76c82f <https://git.opendaylight.org/gerrit/#/q/76c82f891a2d98972a26ce8f37f1864b30203837>`_ Fix javadoc validation error in TTPUtils
* `76f9c7 <https://git.opendaylight.org/gerrit/#/q/76f9c79c55cb0e3e72b0da3c0e6f72ba57583d8d>`_ Fix javadoc validation error in TTPYangModelTest
* `054ce7 <https://git.opendaylight.org/gerrit/#/q/054ce764585480b2c522c53149db146c76f46d11>`_ removing superfluous groupId

Time Series Data Repository (TSDR)
----------------------------------
* `8ee8b5 <https://git.opendaylight.org/gerrit/#/q/8ee8b56cb538b8b057641ffa6e63a5116f9c3544>`_ Fix javadoc validation error
* `811be1 <https://git.opendaylight.org/gerrit/#/q/811be195b8288b19ecb3c2051b8f791ac532a9df>`_ Remove nexusproxy as it is inherited from odlparent

Topology Processing Framework
-----------------------------
* `7b1c47 <https://git.opendaylight.org/gerrit/#/q/7b1c47d54f158e2a9acbcf97d6e3f32c81f52151>`_ Bugfix for `BUG-6132 <https://bugs.opendaylight.org/show_bug.cgi?id=6132>`_
* `0f5b68 <https://git.opendaylight.org/gerrit/#/q/0f5b685bc7b794f0de0df644c3e90ebc9c72a43f>`_ Bugfix for `BUG-6096 <https://bugs.opendaylight.org/show_bug.cgi?id=6096>`_
* `4a8654 <https://git.opendaylight.org/gerrit/#/q/4a86544403113708970517f68590f7f1365c717f>`_ Enable Maven Site generation
* `4ca4e1 <https://git.opendaylight.org/gerrit/#/q/4ca4e12e15b9b9323ee9c5498400eab87826442d>`_ Fix javadoc validation error in NTOverlayItemTranslatorNodeTest
* `b28b04 <https://git.opendaylight.org/gerrit/#/q/b28b046e829f2a997717be2cc927b1db1e249b7b>`_ Fix javadoc validation error in InvOverlayItemTranslatorNodeTest
* `6ffa4b <https://git.opendaylight.org/gerrit/#/q/6ffa4b12c8e0af9903f61314ac4dc3110ec18bd7>`_ Fix javadoc validation error in I2RSOverlayItemTranslatorNodeTest
* `da9651 <https://git.opendaylight.org/gerrit/#/q/da9651daae9ec953af1335b35ac50f416c9e00d4>`_ Fix javadoc validation error in PathTranslatorTest
* `17a9e0 <https://git.opendaylight.org/gerrit/#/q/17a9e0b1120b120b734190d84b4163b974a73389>`_ Fix javadoc validation error in UnificationCustomScriptTest
* `decf1f <https://git.opendaylight.org/gerrit/#/q/decf1f9ec510090fcaa2d4548f3bce9e76052b0c>`_ Fix javadoc validation error in UnificationAggregatorTest
* `fc3e81 <https://git.opendaylight.org/gerrit/#/q/fc3e818431409d0bd7b19156d468fc5064b07dbb>`_ Fix javadoc validation error in EqualityAggregatorTest
* `d3d1a9 <https://git.opendaylight.org/gerrit/#/q/d3d1a9392493139b008de23fa176e4966e25273f>`_ Bugfix for `BUG-6095 <https://bugs.opendaylight.org/show_bug.cgi?id=6095>`_
* `8b4b5b <https://git.opendaylight.org/gerrit/#/q/8b4b5b5310fc855b921d39f042ac5ae8d12613f2>`_ Little performance improvement in calculation of updated links
* `4b7cee <https://git.opendaylight.org/gerrit/#/q/4b7cee4e366dc9255590a211f7744a03341fceb0>`_ Bugfix for bug where link aggregation was not processed
* `d95d66 <https://git.opendaylight.org/gerrit/#/q/d95d66d0cb2193b3d5264ecb8cfcf01aa0513e75>`_ Fix for `BUG-6004 <https://bugs.opendaylight.org/show_bug.cgi?id=6004>`_
* `1d74d4 <https://git.opendaylight.org/gerrit/#/q/1d74d4ebd7c7eb517bf1de599eefac77962e70a5>`_ Bugfix for `BUG-6055 <https://bugs.opendaylight.org/show_bug.cgi?id=6055>`_
* `fe0998 <https://git.opendaylight.org/gerrit/#/q/fe09986a2faeff8627ea19e2c2f79446652e1068>`_ `BUG-5955 <https://bugs.opendaylight.org/show_bug.cgi?id=5955>`_
* `4a9637 <https://git.opendaylight.org/gerrit/#/q/4a96375929a1bba8f78d15f65274045a0b8341b5>`_ Bugfix for bug5362
* `148b3c <https://git.opendaylight.org/gerrit/#/q/148b3c5ec36e1ee4cd69147d55b5d57fc80e4deb>`_ Fix for `BUG-5862 <https://bugs.opendaylight.org/show_bug.cgi?id=5862>`_

Unified Secure Channel (USC)
----------------------------
* `0dfbbd <https://git.opendaylight.org/gerrit/#/q/0dfbbd60b49e18cc436e3d64920d6c396763109c>`_ Enable Maven Site generation
* `af4cdb <https://git.opendaylight.org/gerrit/#/q/af4cdb4f261a72416390d69210c9438ec290d0af>`_ Improve remove channel and session
* `5f558b <https://git.opendaylight.org/gerrit/#/q/5f558b833470e2bb026bd3cb745a0521a61024ad>`_ Improve UDP functions

User Network Interface Manager (UNIMGR)
---------------------------------------
* `b880d2 <https://git.opendaylight.org/gerrit/#/q/b880d21620fe33f084d6ed303f76a7467bc83e0e>`_ merge the fix of the uni it test instability which was fixed by donald in the master to the stable/berilium branch.

VPN Service
-----------
* `67d44d <https://git.opendaylight.org/gerrit/#/q/67d44d6a5229cbaa69f9ab71f32edbaa20074268>`_ Fix for upstream quagga: vtysh using #
* `af2962 <https://git.opendaylight.org/gerrit/#/q/af2962c7e61ecebe8315bab03402b137f6b51d33>`_ Added server mac address to Endpoint

Virtual Tenant Network (VTN)
----------------------------
* `ec48c4 <https://git.opendaylight.org/gerrit/#/q/ec48c470c1d4940ab6589c5dff6802d8ffb90523>`_ Fixed UT failure due to incorrect test data.
* `13b105 <https://git.opendaylight.org/gerrit/#/q/13b10561b838b931ab627afe08a92ed6e59fff66>`_ `BUG-6258 <https://bugs.opendaylight.org/show_bug.cgi?id=6258>`_: Disabled VSEM Provider build.
* `1797d2 <https://git.opendaylight.org/gerrit/#/q/1797d2ee63667438f8193d5e88276e11a384cbe2>`_ `BUG-6166 <https://bugs.opendaylight.org/show_bug.cgi?id=6166>`_: Handle jeopardy state of clustered DS.
* `0a2481 <https://git.opendaylight.org/gerrit/#/q/0a2481d5908846988e7ed29deef1022e49696dfd>`_ `BUG-6143 <https://bugs.opendaylight.org/show_bug.cgi?id=6143>`_: Fixed bug that failed to put vtn-data-flow into clustered DS.
* `c045b7 <https://git.opendaylight.org/gerrit/#/q/c045b75ca5b9f4db0cdcb6c50c1e73eab8bc28ab>`_ Removed distributionManagement section from common
* `adeb9a <https://git.opendaylight.org/gerrit/#/q/adeb9ad1b644103ae614fa6f832a313fe8950f72>`_ Disable VSEM Provider Build
* `a3a273 <https://git.opendaylight.org/gerrit/#/q/a3a2732be02d463a4ee4ae805f5a16d37937156e>`_ `BUG-5993 <https://bugs.opendaylight.org/show_bug.cgi?id=5993>`_: Ignore flow-removed that contains non-zero table ID.
* `8f02fc <https://git.opendaylight.org/gerrit/#/q/8f02fcb9e0aaec15d693be249b86bcf04d5f254b>`_ Fixed bug in mock-up for integration test.
* `06b427 <https://git.opendaylight.org/gerrit/#/q/06b42752b8e8ce003af8b18e49ed0b5302d18895>`_ `BUG-5557 <https://bugs.opendaylight.org/show_bug.cgi?id=5557>`_: Fixed issue in delete operation for vbrif out flowfilter
* `3278a9 <https://git.opendaylight.org/gerrit/#/q/3278a9a1bfc8d5545bb4eeda478e8c31c8e9be7f>`_ Fixed bug in mock-up for integration test.
* `f27d82 <https://git.opendaylight.org/gerrit/#/q/f27d82d7c6752450f98c99c87e54d59d54eacf52>`_ Use https to connect ODL Nexus

YANG Tools
----------
* `a666f3 <https://git.opendaylight.org/gerrit/#/q/a666f3a2911a35df0ce8f5131758af8e95839401>`_ `BUG-6195 <https://bugs.opendaylight.org/show_bug.cgi?id=6195>`_: Fix issue with leafSetEntryNode in SchemaTracker
* `922054 <https://git.opendaylight.org/gerrit/#/q/922054346df53dd5222cdd4c58a315c2f72ae159>`_ `BUG-6173 <https://bugs.opendaylight.org/show_bug.cgi?id=6173>`_: Allow refine statement to have no substatements
* `b19410 <https://git.opendaylight.org/gerrit/#/q/b19410d5a467d095d05057d58e9c3e0b95a92f5b>`_ Add a couple of toString() implementations
* `e0a42d <https://git.opendaylight.org/gerrit/#/q/e0a42d9a2458f04ebd29ab821c38132075aba644>`_ `BUG-5830 <https://bugs.opendaylight.org/show_bug.cgi?id=5830>`_: Mandatory leaf enforcement is not correct with presence container
* `73ecac <https://git.opendaylight.org/gerrit/#/q/73ecace3825eb4a9724d2987dbb78d177065d0cc>`_ Speed up toString() for XML elements
* `635af1 <https://git.opendaylight.org/gerrit/#/q/635af1cfca70d0be0192f997c155d80cbbc5ba5d>`_ `BUG-5200 <https://bugs.opendaylight.org/show_bug.cgi?id=5200>`_: Yang parser doesn't fill error-app-tag and error-message in constraints
* `594ac3 <https://git.opendaylight.org/gerrit/#/q/594ac3953ed56d9fb2fa2c0a6129baf1f892bcc1>`_ `BUG-5899 <https://bugs.opendaylight.org/show_bug.cgi?id=5899>`_: Cardinality check incorrectly limited to 1 for "must"
* `0d9b03 <https://git.opendaylight.org/gerrit/#/q/0d9b03cafcddea2e86fdb7160107fb29250018e0>`_ `BUG-5693 <https://bugs.opendaylight.org/show_bug.cgi?id=5693>`_: IOException after first parsing phase - stream closed
* `98ac2b <https://git.opendaylight.org/gerrit/#/q/98ac2b04a469af0b0d69d17ef66799fb46a9c4ed>`_ `BUG-5819 <https://bugs.opendaylight.org/show_bug.cgi?id=5819>`_ - Violation of synchronization rules in AbstractSchemaRepository
* `6d3f5a <https://git.opendaylight.org/gerrit/#/q/6d3f5a4c3ea77747d8d5e262e1032488db35f52f>`_ Do not advertize features-test in artifacts
* `87edd5 <https://git.opendaylight.org/gerrit/#/q/87edd5c3bb219df62aa3bd30b1ed49cc25fd7c47>`_ `BUG-5446 <https://bugs.opendaylight.org/show_bug.cgi?id=5446>`_: Yangtools UnionStringCodec is not consistent with BinaryStringCodec
* `2ade6e <https://git.opendaylight.org/gerrit/#/q/2ade6e056733b6fbbdfb00c61597dc4c2cce0119>`_ `BUG-5484 <https://bugs.opendaylight.org/show_bug.cgi?id=5484>`_: Fix of Yang statement lexer

Beryllium-SR4 Release Notes
===========================

This page details changes and bug fixes between the Beryllium Stability Release 3 (Beryllium-SR3) and the Beryllium Stability Release 4 (Beryllium-SR4) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------

The following projects had no noteworthy changes in the Beryllium-SR4 Release:

* ALTO
* Centinel
* Control And Provisioning of Wireless Access Points (CAPWAP)
* Controller Shield
* DLUX
* Device Identification and Driver Management (DIDM)
* Fabric As A Service (FaaS)
* Group Based Policy (GBP)
* Internet of Things Data Management (IoTDM)
* Link Aggregation Control Protocol (LACP)
* Messaging4Transport
* NEtwork MOdeling (NEMO)
* NeXt UI Toolkit
* NetIDE
* Network Intent Composition (NIC)
* Neutron Northbound
* Packet Cable/PCMM
* SDN Interface Application (SDNi)
* SNMP Plugin
* SNMP4SDN
* Secure Network Bootstrapping Infrastructure (SNBI)
* Secure tag eXchange Protocol (SXP)
* Service Function Chaining
* TCP-MD5
* Time Series Data Repository (TSDR)
* User Network Interface Manager (UNIMGR)
* VPN Service
* YANG PUBSUB

Authentication, Authorization and Accounting (AAA)
--------------------------------------------------
* `a7853f <https://git.opendaylight.org/gerrit/#/q/a7853f2dbc2f96d1f8c86137c46702930186f99b>`_ Auto-detect secure HTTP in the idmtool script
* `cbb7e9 <https://git.opendaylight.org/gerrit/#/q/cbb7e900b23f2855303273d48132aa81ba12d098>`_ Add support for Active Directory to AAA
* `9c9c51 <https://git.opendaylight.org/gerrit/#/q/9c9c51d0147f1d79ce02c217ba034b3b54f893d3>`_ Add groupRolesMap configuration option for ODLJndiLdapRealm
* `f6a970 <https://git.opendaylight.org/gerrit/#/q/f6a9702f4f0067c6ada1f635ac24093ab710dcf7>`_ Do not override odlparent's version declaration

BGP PCEP
--------
* `0cc5a7 <https://git.opendaylight.org/gerrit/#/q/0cc5a72db4b9161549cd30115d1624a0ac5b1741>`_ `BUG-6810 <https://bugs.opendaylight.org/show_bug.cgi?id=6810>`_: Fix intermintent Be BmpMonitorImplTest failure
* `a67ad3 <https://git.opendaylight.org/gerrit/#/q/a67ad321f4041bae0d15425b930848acd1907039>`_ `BUG-6739 <https://bugs.opendaylight.org/show_bug.cgi?id=6739>`_ - Throw exception while Installing odl-bgpcep-bgp-all feature
* `cb5d14 <https://git.opendaylight.org/gerrit/#/q/cb5d141544093edf0acdbfdd73ca66758c66b819>`_ `BUG-6585 <https://bugs.opendaylight.org/show_bug.cgi?id=6585>`_: BGP ChannelOutputLimiter waits forever
* `e65e13 <https://git.opendaylight.org/gerrit/#/q/e65e1378acfdef6ab6f7e2fe115e7af716237281>`_ `BUG-6662 <https://bugs.opendaylight.org/show_bug.cgi?id=6662>`_: On connection reset by peer, sometimes re-connection attempt stops after HoldTimer expired error
* `a47f8b <https://git.opendaylight.org/gerrit/#/q/a47f8beb566f5af1ecc9fb99e2d3ebd87d8cf414>`_ `BUG-6568 <https://bugs.opendaylight.org/show_bug.cgi?id=6568>`_ - Termination Point Type is never set in BGP-LS topology
* `b549f6 <https://git.opendaylight.org/gerrit/#/q/b549f6e3d20b59268ab9d5b604923ab3cc57e4aa>`_ `BUG-6507 <https://bugs.opendaylight.org/show_bug.cgi?id=6507>`_: MalformedObjectNameException while configuring OpenConfig BGP IPv6 neighbor - Since colon is not a valid character for MBean key, replace colon in   IPv6 neighbor address with dash while creating BGP Peer module name - Convert neighbor IPv6 address and key which is derieved from it to   to normalized notation (full-form and leading 0s removed) to match with   similar conversion for BGP Peer module done in BGPPeerModule#getNormalizedHost
* `2074c9 <https://git.opendaylight.org/gerrit/#/q/2074c9147bd3eed95865de32ad6531993423acd3>`_ `BUG-5922 <https://bugs.opendaylight.org/show_bug.cgi?id=5922>`_: inbound IPv6 connection fails if address has zero groups in it - Convert the remote IPv6 address to normalized notation (full-form and leading 0s removed)   so that comparision with configured BGP Peer address works - BGP Peer address is converted to this form in BGPPeerModule#getNormalizedHost
* `bf4a8c <https://git.opendaylight.org/gerrit/#/q/bf4a8c121cf69b122e60c46900c6713293e1c4e5>`_ `BUG-6242 <https://bugs.opendaylight.org/show_bug.cgi?id=6242>`_: PCRpt received with bandwidth reoptimization object leads to loop causing OOM - added bandwidth reoptimization object to the list of possible objects in PCRpt message - gracefully handle condition where unexpected object is present in received message - updated unit-tests
* `badc28 <https://git.opendaylight.org/gerrit/#/q/badc28433c01c80375c1dcf9d70334c2d2acdf60>`_ `BUG-6330 <https://bugs.opendaylight.org/show_bug.cgi?id=6330>`_: Fix race condition when reinstalling App Peer
* `9b3951 <https://git.opendaylight.org/gerrit/#/q/9b395104cbc00c1549b1013fd612b5db31486b1d>`_ `BUG-6342 <https://bugs.opendaylight.org/show_bug.cgi?id=6342>`_: Link-state topology takes long time to get updated - When large number of prefixes are present for node, repeated re-writing of node causes slowness - Avoid writing the entire node again when prefix or termination-point information for that node changes - Just write the modified information in such cases

Controller
----------
* `31364d <https://git.opendaylight.org/gerrit/#/q/31364db92f4024f01fc46b5acc8c2c218b59015c>`_ `BUG-6348 <https://bugs.opendaylight.org/show_bug.cgi?id=6348>`_ : car:stop-stress-test RPC to return success & failure counters
* `c17f2e <https://git.opendaylight.org/gerrit/#/q/c17f2ed4c5b03cb7176797ed700c9adcf46e4bab>`_ Fix missing LeaderStateChanged event

Integration/Distribution
------------------------
* `67eb4f <https://git.opendaylight.org/gerrit/#/q/67eb4fba266ecd61934f994b0ea8a6811512fec5>`_ Added a variation of the 'configure-cluster.sh' script that does not require the 'index' parameter. The script determines the local machine's IP address and checks whether it's present in 'seed_nodes_list'. The script also determines the index based on the local IP address.
* `e30ccb <https://git.opendaylight.org/gerrit/#/q/e30ccbdf421e0c892cecc4b35fe7d9428055507e>`_ Set 2nd version for autorelease scripting
* `04d0d9 <https://git.opendaylight.org/gerrit/#/q/04d0d91c656da2c5ff1573e6cb3646a3d68e0113>`_ Add script to enable/disable config datastore persistence

L2 Switch
---------
* `e8a730 <https://git.opendaylight.org/gerrit/#/q/e8a730b81353ababe7b1f24fc88bb58ec3c33b4c>`_ `BUG-6655 <https://bugs.opendaylight.org/show_bug.cgi?id=6655>`_ - arphandler unable to flood arp packet
* `ae78b3 <https://git.opendaylight.org/gerrit/#/q/ae78b3c8e1a77ef5f72f420030a5c501c32f4e1b>`_ `BUG-6751 <https://bugs.opendaylight.org/show_bug.cgi?id=6751>`_ - l2switch project build failed in stable/beryllium

LISP Flow Mapping
-----------------
* `093ff7 <https://git.opendaylight.org/gerrit/#/q/093ff7e2ad38145f74c4dae0239da6f992a95e18>`_ `BUG-6634 <https://bugs.opendaylight.org/show_bug.cgi?id=6634>`_: Neutron - PortHandler throws NPE / Berryllium

MD-SAL
------
* `18138b <https://git.opendaylight.org/gerrit/#/q/18138bdcc25ce5eb256d73d9907999d8c0b8a67c>`_ `BUG-2332 <https://bugs.opendaylight.org/show_bug.cgi?id=2332>`_: BindingMapping to camel split also on forward slash
* `c91e99 <https://git.opendaylight.org/gerrit/#/q/c91e99d4f7b8dbb659501c5bbe1a58d4660f9cf5>`_ `BUG-6184 <https://bugs.opendaylight.org/show_bug.cgi?id=6184>`_: Workaround for namespaces with URL with trailing slash
* `c3ce38 <https://git.opendaylight.org/gerrit/#/q/c3ce387cd71e7627211c9924699b6b83480f3e85>`_ `BUG-6126 <https://bugs.opendaylight.org/show_bug.cgi?id=6126>`_: Use importedName for java.lang types in ClassTemplate

NETCONF
-------
* `ce1ff7 <https://git.opendaylight.org/gerrit/#/q/ce1ff7d32bac06b024d08a7f57ae68081f37c925>`_ Do a proper disconnect when deleting a connector.
* `c1b194 <https://git.opendaylight.org/gerrit/#/q/c1b194eddf290c46e4558c83f2a21feb5b4453d2>`_ `BUG-6272 <https://bugs.opendaylight.org/show_bug.cgi?id=6272>`_ - support RESTCONF PATCH for mounted NETCONF nodes
* `5eccda <https://git.opendaylight.org/gerrit/#/q/5eccda85a5bc248582cab2f596c8fd455aab67dc>`_ `BUG-6256 <https://bugs.opendaylight.org/show_bug.cgi?id=6256>`_ - OpenDaylight RESTCONF XML selects wrong YANG model for southbound NETCONF
* `75c307 <https://git.opendaylight.org/gerrit/#/q/75c3077e96415288ca4af0e73bd782570d08d3f8>`_ `BUG-6797 <https://bugs.opendaylight.org/show_bug.cgi?id=6797>`_ - Fix deadlock on cached schema-changed notifications
* `2278a4 <https://git.opendaylight.org/gerrit/#/q/2278a420dbac7a4aa1756af2f07e24605180c94b>`_ Add unit tests for sal-netconf-connector
* `40cfb8 <https://git.opendaylight.org/gerrit/#/q/40cfb83c427d112987b36f6eb66f104268d446f9>`_ `BUG-6198 <https://bugs.opendaylight.org/show_bug.cgi?id=6198>`_ - Use sal-netconf-connector to connet device costs too much time

Network Virtualization
----------------------
* `8b4b26 <https://git.opendaylight.org/gerrit/#/q/8b4b26a96f2d9187e71d39fdff68272a007d7fed>`_ `BUG-6066 <https://bugs.opendaylight.org/show_bug.cgi?id=6066>`_ - Updated the logging.

ODL Root Parent
---------------
* `90cddb <https://git.opendaylight.org/gerrit/#/q/90cddb488097a44550d3ff0ac0678d3f63d8aa3f>`_ `BUG-6187 <https://bugs.opendaylight.org/show_bug.cgi?id=6187>`_: Force more maven resolution in karaf-plugin

OVSDB Integration
-----------------
* `c8a3d9 <https://git.opendaylight.org/gerrit/#/q/c8a3d9f2745961902ea6c1f4f01f9d4c4cf14236>`_ `BUG-6692 <https://bugs.opendaylight.org/show_bug.cgi?id=6692>`_: use non-deprecated firstKeyOf() variant
* `cb5076 <https://git.opendaylight.org/gerrit/#/q/cb5076dd67ce1b2f590dee96caf7ba91b5d3a944>`_ `BUG-6692 <https://bugs.opendaylight.org/show_bug.cgi?id=6692>`_: clean up MonitorRequestBuilder
* `192e4f <https://git.opendaylight.org/gerrit/#/q/192e4fba348a685dc7c793b040a96c3cb7b5d3a8>`_ Clean up SouthboundConstants
* `5af9c8 <https://git.opendaylight.org/gerrit/#/q/5af9c80ca01a8f27ea0526808c21e5a5fd2b6f20>`_ Fix clear bug related to "num" in JSON Node [Guava instead JDK Optional]
* `9c60c1 <https://git.opendaylight.org/gerrit/#/q/9c60c12d2e0cae8206678a7301598dd9b027aa15>`_ Fixed inappropriate WARN message.
* `f7c33a <https://git.opendaylight.org/gerrit/#/q/f7c33a32a906fb802c7f7e78c0c2d4ccf39c4153>`_ `BUG-6475 <https://bugs.opendaylight.org/show_bug.cgi?id=6475>`_: Removed unnecessary read operations.
* `4a6da8 <https://git.opendaylight.org/gerrit/#/q/4a6da8db95dd7dbf1d62966e2de6bd3d6c69deea>`_ `BUG-6472 <https://bugs.opendaylight.org/show_bug.cgi?id=6472>`_ - JsonRpcEndpoint Reaper Thread's daemon property is not set
* `4767c3 <https://git.opendaylight.org/gerrit/#/q/4767c3013a52514f4c6ce0870c501e428a397631>`_ `BUG-6454 <https://bugs.opendaylight.org/show_bug.cgi?id=6454>`_: ProcUtils stdout should be grouped together
* `d7fca5 <https://git.opendaylight.org/gerrit/#/q/d7fca5cf6b43bdcec94ca0463050b1d4b4e8b450>`_ `BUG-6463 <https://bugs.opendaylight.org/show_bug.cgi?id=6463>`_ - Monitoring _version column on the ovsdb table is generating huge updates from switch
* `b662df <https://git.opendaylight.org/gerrit/#/q/b662dfaa9ab43014948c150aa70bd218ee300e82>`_ Filter out monitor updates for some columns
* `a28379 <https://git.opendaylight.org/gerrit/#/q/a28379ea695e27d0d8924a5b57538327e22661c2>`_ `BUG-6332 <https://bugs.opendaylight.org/show_bug.cgi?id=6332>`_ - Conflicting modification Exception for topology path
* `473f90 <https://git.opendaylight.org/gerrit/#/q/473f9010571fe235708336a239fa84fae6915565>`_ `BUG-6336 <https://bugs.opendaylight.org/show_bug.cgi?id=6336>`_ using single tx for logical switch, macs
* `466e0a <https://git.opendaylight.org/gerrit/#/q/466e0a25b61fcc84c4eb85efa886cc3948a3008a>`_ `BUG-6352 <https://bugs.opendaylight.org/show_bug.cgi?id=6352>`_ - [SR3] RPC timeout in JsonRPCEndpoint is not configurable
* `130c4c <https://git.opendaylight.org/gerrit/#/q/130c4c4a0aa2c78349e181aa3b8177055d8af94d>`_ added support for switch/port fault status for hwvtep schema changes.
* `f2aa35 <https://git.opendaylight.org/gerrit/#/q/f2aa355838532cb3976c502e681fd1f95c7a7457>`_ Docker-compose files for hwvtep IT, ovs 2.4/2.5
* `93474c <https://git.opendaylight.org/gerrit/#/q/93474c4f0fd62f66331c3bad43f79ea1b41d1fd2>`_ `BUG-5951 <https://bugs.opendaylight.org/show_bug.cgi?id=5951>`_ - Termination point config reconciliation

OpenFlow Configuration Protocol (OF-CONFIG)
-------------------------------------------
* `c70c3b <https://git.opendaylight.org/gerrit/#/q/c70c3bbc7dd45c44c86f5313fee509bdbece5b63>`_ Add the OF_CONFIG_OVS capabilities

OpenFlow Plugin
---------------
* `375e02 <https://git.opendaylight.org/gerrit/#/q/375e02cd2ae2d0972b7ae30cd7a8cacdbd5d4636>`_ `BUG-6118 <https://bugs.opendaylight.org/show_bug.cgi?id=6118>`_: making the OFentityListener aware of the InJeopardy() flag
* `e308cf <https://git.opendaylight.org/gerrit/#/q/e308cffe51a34c491229ebfe60239d8b6d04d305>`_ `BUG-6513 <https://bugs.opendaylight.org/show_bug.cgi?id=6513>`_ Remove FD from registry immediately
* `a606e2 <https://git.opendaylight.org/gerrit/#/q/a606e219b7ef7f7dd4403d5ede79adbef988436b>`_ Fix Ipv6 format compression
* `7f7514 <https://git.opendaylight.org/gerrit/#/q/7f75143b610fa885e69a8f39f919b354d2e1760d>`_ `BUG-6059 <https://bugs.opendaylight.org/show_bug.cgi?id=6059>`_: Moving Statistics Manager to DTCL
* `42292d <https://git.opendaylight.org/gerrit/#/q/42292d6b6830566bba8e498c474a7d4e6835e58a>`_ `BUG-6086 <https://bugs.opendaylight.org/show_bug.cgi?id=6086>`_ - Bulk-o-matic add flow RPC does not work
* `5d23e3 <https://git.opendaylight.org/gerrit/#/q/5d23e3548d40abdaceaa43d5eb8336fc196a5334>`_ Device*Registry quickfix - add* failed
* `7ed2bb <https://git.opendaylight.org/gerrit/#/q/7ed2bb68d80ef21494e69172bf9580c070b0b0e4>`_  `BUG-6058 <https://bugs.opendaylight.org/show_bug.cgi?id=6058>`_:Currently the Operational Datastore does not get cleaned up and the  switch continues to persist if the node that is connected to the switch goes  down. The patch addresses it.
* `940142 <https://git.opendaylight.org/gerrit/#/q/94014221014bed0b8c4d2029d5cab412f4eff233>`_ Move empty match constant into OFConstants

OpenFlow Protocol Library
-------------------------
* `5ef255 <https://git.opendaylight.org/gerrit/#/q/5ef255bd25362dd4c3334bfe921e8f96a899fe8e>`_ `BUG-6646 <https://bugs.opendaylight.org/show_bug.cgi?id=6646>`_ Fix infinite reschedule of flush
* `caca77 <https://git.opendaylight.org/gerrit/#/q/caca7710a7e8b3122eb19108e62b782f5d56ba52>`_ `BUG-6638 <https://bugs.opendaylight.org/show_bug.cgi?id=6638>`_ Failed entries marked as completed also counted as completed
* `5e8b6a <https://git.opendaylight.org/gerrit/#/q/5e8b6a2c5218b2ea22343ec889ad7e7fb4112530>`_ `BUG-6744 <https://bugs.opendaylight.org/show_bug.cgi?id=6744>`_ - the parameters of the function of registerMeterBandSerializer need to be more refined
* `f93dde <https://git.opendaylight.org/gerrit/#/q/f93ddeaf5e4f25a0a47438786777d13c9b95e46d>`_ `BUG-6674 <https://bugs.opendaylight.org/show_bug.cgi?id=6674>`_ - the key of the serialization function registered by the vendor is not refinement enough

Table Type Patterns (TTP)
-------------------------
* `541801 <https://git.opendaylight.org/gerrit/#/q/541801bba645379fff52e95637902b7e8a6a5955>`_ Create non-root ttp-parent

Topology Processing Framework
-----------------------------
* `c02b04 <https://git.opendaylight.org/gerrit/#/q/c02b04b243926b2cab22ed1f012811bece0b789e>`_ Fix for `BUG-6263 <https://bugs.opendaylight.org/show_bug.cgi?id=6263>`_
* `02894e <https://git.opendaylight.org/gerrit/#/q/02894e56b785f676736f7f087428a66f024a9db4>`_ `BUG-6152 <https://bugs.opendaylight.org/show_bug.cgi?id=6152>`_ fix

Unified Secure Channel (USC)
----------------------------
* `bcebca <https://git.opendaylight.org/gerrit/#/q/bcebcaf11c2fa044d4c8ef8859ebea14a48a02ef>`_ Do not override odlparent version of maven dependecy plugin

Virtual Tenant Network (VTN)
----------------------------
* `4e8bb1 <https://git.opendaylight.org/gerrit/#/q/4e8bb12b742dae1a8550ccbb2f443d1dd3f928c7>`_ `BUG-6846 <https://bugs.opendaylight.org/show_bug.cgi?id=6846>`_: Fixed bug in VTN Coordinator shutdown sequence.
* `744b2e <https://git.opendaylight.org/gerrit/#/q/744b2e08ff6711fbdc8def66e63c79b76e748749>`_ `BUG-6632 <https://bugs.opendaylight.org/show_bug.cgi?id=6632>`_: Fixed VTN coordinator build error on Fedora 24.
* `c565c5 <https://git.opendaylight.org/gerrit/#/q/c565c571ee979bdc85bff7ccee35a956a169525f>`_ Enable Maven Site for VTN

YANG Tools
----------
* `07a461 <https://git.opendaylight.org/gerrit/#/q/07a461a735316f15f9a78455e1c1c3caf91b2a3e>`_ `BUG-4456 <https://bugs.opendaylight.org/show_bug.cgi?id=4456>`_: add RecursiveExtensionResolver
* `de990f <https://git.opendaylight.org/gerrit/#/q/de990fa7c7840a1ac964a48f00aff1358eaec562>`_ `BUG-6757 <https://bugs.opendaylight.org/show_bug.cgi?id=6757>`_: revert fix for `BUG-4456 <https://bugs.opendaylight.org/show_bug.cgi?id=4456>`_
* `354c04 <https://git.opendaylight.org/gerrit/#/q/354c0475d65f0382e6c52b86b98f5c9f3b1a5e74>`_ `BUG-6771 <https://bugs.opendaylight.org/show_bug.cgi?id=6771>`_: Problem with typedefs nested in augment
* `107826 <https://git.opendaylight.org/gerrit/#/q/107826f9cd33c98f7e021e7147f1806e25b9c074>`_ `BUG-6410 <https://bugs.opendaylight.org/show_bug.cgi?id=6410>`_: Fixed initialization of typedefs in rpc
* `531010 <https://git.opendaylight.org/gerrit/#/q/5310106cd4db53a3033a085ff95545d4a2841db4>`_ `BUG-6180 <https://bugs.opendaylight.org/show_bug.cgi?id=6180>`_ - Parser: Backslash double-quote in double-quoted string not recognized
* `75c484 <https://git.opendaylight.org/gerrit/#/q/75c484d83489bb183af2cd61a02d4a82412efdf2>`_ `BUG-6497 <https://bugs.opendaylight.org/show_bug.cgi?id=6497>`_: Do not lose augmentation statement order
* `6d051f <https://git.opendaylight.org/gerrit/#/q/6d051fb473374c133474d2e90aa68663ae948763>`_ `BUG-6497 <https://bugs.opendaylight.org/show_bug.cgi?id=6497>`_: Do not lose augmentation statement order
* `37962d <https://git.opendaylight.org/gerrit/#/q/37962d89fbd4032653b3918921181377c855b598>`_ `BUG-6414 <https://bugs.opendaylight.org/show_bug.cgi?id=6414>`_: Fixed DataNodeIterator's traverseModule method
* `0ecc2d <https://git.opendaylight.org/gerrit/#/q/0ecc2d30b89f24062c6c459a8601198348cee7d0>`_ `BUG-5884 <https://bugs.opendaylight.org/show_bug.cgi?id=5884>`_: Augmenting a choice without a case results in no getter

