Nitrogen-SR1 Release Notes
==========================

This page details changes and bug fixes between the Nitrogen Release
and the Nitrogen Stability Release 1 (Nitrogen-SR1) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------

* cardinal
* ocpplugin
* topoprocessing
* ttp
* yangtools

aaa
---
* `78fa45e <https://git.opendaylight.org/gerrit/#/q/78fa45e>`_
  `AAA-151
AAA-151 <https://jira.opendaylight.org/browse/AAA-151
AAA-151>`_
  : AAA-151: Invalidate claim cache for CLI initiated changes
* `4818c31 <https://git.opendaylight.org/gerrit/#/q/4818c31>`_
  : Declare odl-aaa-encryption-service in artifacts
* `1c06dca <https://git.opendaylight.org/gerrit/#/q/1c06dca>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `8bdc47a <https://git.opendaylight.org/gerrit/#/q/8bdc47a>`_
  `AAA-144 <https://jira.opendaylight.org/browse/AAA-144>`_
  : Bug 9040: avoid using dynamicAuthorization for cluster-admin operations
* `ce33d9c <https://git.opendaylight.org/gerrit/#/q/ce33d9c>`_
  : Bump versions by x.y.(z+1)


alto
----
* `70804e0 <https://git.opendaylight.org/gerrit/#/q/70804e0>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `ba54e2d <https://git.opendaylight.org/gerrit/#/q/ba54e2d>`_
  : Bump versions by x.y.(z+1)


bgpcep
------
* `fe5f547 <https://git.opendaylight.org/gerrit/#/q/fe5f547>`_
  `BGPCEP-686 <https://jira.opendaylight.org/browse/BGPCEP-686>`_
  : BUG-9079 Make PCEP session recoverable from exception
* `76d764b <https://git.opendaylight.org/gerrit/#/q/76d764b>`_
  : BUG-9192 / BUG-9191
* `7f6dea5 <https://git.opendaylight.org/gerrit/#/q/7f6dea5>`_
  : BUG-9218: eliminate duplicate bundles
* `97c4803 <https://git.opendaylight.org/gerrit/#/q/97c4803>`_
  `BGPCEP-691 <https://jira.opendaylight.org/browse/BGPCEP-691>`_
  : Bug 9205: NPE received while receiving BGP peers
* `f75843c <https://git.opendaylight.org/gerrit/#/q/f75843c>`_
  `BGPCEP-680 <https://jira.opendaylight.org/browse/BGPCEP-680>`_
  : BUG-8929: NPE during singleton startup
* `e2095f8 <https://git.opendaylight.org/gerrit/#/q/e2095f8>`_
  `BGPCEP-682 <https://jira.opendaylight.org/browse/BGPCEP-682>`_
  : Bug-8942: Fix DelegatedLspsCount
* `43c0193 <https://git.opendaylight.org/gerrit/#/q/43c0193>`_
  `BGPCEP-683 <https://jira.opendaylight.org/browse/BGPCEP-683>`_
  : BUG-8987: Print Exception when Css registration fails
* `c2d5b09 <https://git.opendaylight.org/gerrit/#/q/c2d5b09>`_
  `BGPCEP-652 <https://jira.opendaylight.org/browse/BGPCEP-652>`_
  : BUG-8156 : conflicting listener fix
* `1944dec <https://git.opendaylight.org/gerrit/#/q/1944dec>`_
  `BGPCEP-652 <https://jira.opendaylight.org/browse/BGPCEP-652>`_
  : BUG-8156 : fixed start of session manager
* `3a5a210 <https://git.opendaylight.org/gerrit/#/q/3a5a210>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `3f632b2 <https://git.opendaylight.org/gerrit/#/q/3f632b2>`_
  `BGPCEP-652 <https://jira.opendaylight.org/browse/BGPCEP-652>`_
  : BUG-8156 : duplicate session up fixed
* `2c4a21a <https://git.opendaylight.org/gerrit/#/q/2c4a21a>`_
  : Bump versions by x.y.(z+1)


bier
----
* `4ac680f <https://git.opendaylight.org/gerrit/#/q/4ac680f>`_
  : Cleanup bierapp-bundle dependencies
* `cfff0b0 <https://git.opendaylight.org/gerrit/#/q/cfff0b0>`_
  : Rework odl-bier-adapter feature
* `6b9970e <https://git.opendaylight.org/gerrit/#/q/6b9970e>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `f35ad9b <https://git.opendaylight.org/gerrit/#/q/f35ad9b>`_
  : Do not depend on features-bgp
* `f6a468c <https://git.opendaylight.org/gerrit/#/q/f6a468c>`_
  : Bump versions by x.y.(z+1)


controller
----------
* `36b453e <https://git.opendaylight.org/gerrit/#/q/36b453e>`_
  `CONTROLLER-1771 <https://jira.opendaylight.org/browse/CONTROLLER-1771>`_
  : Bug 9165: Log config subsystem readiness as INFO
* `30a5b11 <https://git.opendaylight.org/gerrit/#/q/30a5b11>`_
  : Add debug to pinpoint lastApplied movement
* `0b7a749 <https://git.opendaylight.org/gerrit/#/q/0b7a749>`_
  : Lower verbosity in SimpletxDomRead
* `3a1a2b3 <https://git.opendaylight.org/gerrit/#/q/3a1a2b3>`_
  `CONTROLLER-1713 <https://jira.opendaylight.org/browse/CONTROLLER-1713>`_
  : BUG-8639: always invalidate primary info cache
* `4883784 <https://git.opendaylight.org/gerrit/#/q/4883784>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `c570de3 <https://git.opendaylight.org/gerrit/#/q/c570de3>`_
  `CONTROLLER-1752 <https://jira.opendaylight.org/browse/CONTROLLER-1752>`_
  : Bug 9008: Fix the error of the persisted journal data format
* `8fd8a5c <https://git.opendaylight.org/gerrit/#/q/8fd8a5c>`_
  : Add an explicit null data check
* `72f3d16 <https://git.opendaylight.org/gerrit/#/q/72f3d16>`_
  : Fix testLeaderAndFollowerEntityOwnersReassignedAfterShutdown failure
* `5fdf80c <https://git.opendaylight.org/gerrit/#/q/5fdf80c>`_
  : Fix intermitent testFollowerResyncWith*LeaderRestart failure
* `5ebbb1f <https://git.opendaylight.org/gerrit/#/q/5ebbb1f>`_
  : Bump versions by x.y.(z+1)


coe
---
* `dc65935 <https://git.opendaylight.org/gerrit/#/q/dc65935>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `cb18425 <https://git.opendaylight.org/gerrit/#/q/cb18425>`_
  : Bump versions by x.y.(z+1)


daexim
------
* `8fceaa3 <https://git.opendaylight.org/gerrit/#/q/8fceaa3>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `895adf7 <https://git.opendaylight.org/gerrit/#/q/895adf7>`_
  : Bump versions by x.y.(z+1)


dlux
----
* `1d176a1 <https://git.opendaylight.org/gerrit/#/q/1d176a1>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `097139b <https://git.opendaylight.org/gerrit/#/q/097139b>`_
  : Bump versions by x.y.(z+1)


dluxapps
--------
* `2b4104b <https://git.opendaylight.org/gerrit/#/q/2b4104b>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `1b96094 <https://git.opendaylight.org/gerrit/#/q/1b96094>`_
  : Bump versions by x.y.(z+1)


eman
----
* `0813520 <https://git.opendaylight.org/gerrit/#/q/0813520>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `4ef702e <https://git.opendaylight.org/gerrit/#/q/4ef702e>`_
  : Bump versions by x.y.(z+1)


faas
----
* `32832e9 <https://git.opendaylight.org/gerrit/#/q/32832e9>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `ac39ca5 <https://git.opendaylight.org/gerrit/#/q/ac39ca5>`_
  : Bump versions by x.y.(z+1)


genius
------
* `c05794e <https://git.opendaylight.org/gerrit/#/q/c05794e>`_
  : Enable bound services update
* `3a79ac6 <https://git.opendaylight.org/gerrit/#/q/3a79ac6>`_
  : This patch implements the genius mdsal interface for supporting conntrack ct_mark match (with mask) and action (without mask).
* `0bdc6f9 <https://git.opendaylight.org/gerrit/#/q/0bdc6f9>`_
  : Replacing DS read with cache read in ShowVlan CLI
* `716853f <https://git.opendaylight.org/gerrit/#/q/716853f>`_
  : Ignore newTunnelInterface() test as it is flaky
* `59c98f8 <https://git.opendaylight.org/gerrit/#/q/59c98f8>`_
  : Add support for mpls-gre tunnels
* `e157a42 <https://git.opendaylight.org/gerrit/#/q/e157a42>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `1c03cd1 <https://git.opendaylight.org/gerrit/#/q/1c03cd1>`_
  `GENIUS-84 <https://jira.opendaylight.org/browse/GENIUS-84>`_
  : Bug 8938 - Resource-batch manager enhancement
* `f4ec27e <https://git.opendaylight.org/gerrit/#/q/f4ec27e>`_
  : Use INFO for logging null DPID
* `54ab701 <https://git.opendaylight.org/gerrit/#/q/54ab701>`_
  : bug 7380: Add getIfaceInfoFromConfigDataStore
* `ac6a818 <https://git.opendaylight.org/gerrit/#/q/ac6a818>`_
  : Genius CSIT Failure : Missing Mandatory Node Error
* `20de66f <https://git.opendaylight.org/gerrit/#/q/20de66f>`_
  : Clean up collections of Futures
* `ebcf473 <https://git.opendaylight.org/gerrit/#/q/ebcf473>`_
  : Add gpe option to itm-config.xml
* `4f63446 <https://git.opendaylight.org/gerrit/#/q/4f63446>`_
  `GENIUS-89 <https://jira.opendaylight.org/browse/GENIUS-89>`_
  : Bug 9099 - Suspected WriteOnlyTransaction leak in interfacemanager
* `5298a23 <https://git.opendaylight.org/gerrit/#/q/5298a23>`_
  : Store original iface correctly in ISL worker
* `40950ce <https://git.opendaylight.org/gerrit/#/q/40950ce>`_
  : Cleanup
* `20e07f4 <https://git.opendaylight.org/gerrit/#/q/20e07f4>`_
  : Cleanup
* `143480d <https://git.opendaylight.org/gerrit/#/q/143480d>`_
  : Remove start() method
* `a622960 <https://git.opendaylight.org/gerrit/#/q/a622960>`_
  : Bump versions by x.y.(z+1)


groupbasedpolicy
----------------
* `9d9adaa <https://git.opendaylight.org/gerrit/#/q/9d9adaa>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `92941b6 <https://git.opendaylight.org/gerrit/#/q/92941b6>`_
  : Bump versions by x.y.(z+1)


honeycomb/vbd
-------------
* `22361b9 <https://git.opendaylight.org/gerrit/#/q/22361b9>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `d3813a8 <https://git.opendaylight.org/gerrit/#/q/d3813a8>`_
  : Bump versions by x.y.(z+1)


infrautils
----------
* `71715ac <https://git.opendaylight.org/gerrit/#/q/71715ac>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `8777b96 <https://git.opendaylight.org/gerrit/#/q/8777b96>`_
  : Bump versions by x.y.(z+1)


integration/distribution
------------------------
* `e301870 <https://git.opendaylight.org/gerrit/#/q/e301870>`_
  : Fix mdsal dependency in int/dist
* `87c31e0 <https://git.opendaylight.org/gerrit/#/q/87c31e0>`_
  `INTDIST-92 <https://jira.opendaylight.org/browse/INTDIST-92>`_
  : Bug 9189: Add missing version feature dependencies
* `1dfec4a <https://git.opendaylight.org/gerrit/#/q/1dfec4a>`_
  : Revert "Bug 9307: Split features to avoid incompatiblities"
* `5d85bd0 <https://git.opendaylight.org/gerrit/#/q/5d85bd0>`_
  : Bug 9307: Split features to avoid incompatiblities
* `ab012b6 <https://git.opendaylight.org/gerrit/#/q/ab012b6>`_
  : Add odl-infrautils-ready to compatible with all
* `eed1f25 <https://git.opendaylight.org/gerrit/#/q/eed1f25>`_
  : Move Cardinal features to not compatible
* `f38a481 <https://git.opendaylight.org/gerrit/#/q/f38a481>`_
  : Bug 9060: Add odl-mdsal-trace
* `0f428f1 <https://git.opendaylight.org/gerrit/#/q/0f428f1>`_
  : Add bier features to K4 distribution
* `108e314 <https://git.opendaylight.org/gerrit/#/q/108e314>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `0c89576 <https://git.opendaylight.org/gerrit/#/q/0c89576>`_
  : Bump versions by x.y.(z+1)


l2switch
--------
* `ab643dd <https://git.opendaylight.org/gerrit/#/q/ab643dd>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `444f1c8 <https://git.opendaylight.org/gerrit/#/q/444f1c8>`_
  : Bump versions by x.y.(z+1)


lispflowmapping
---------------
* `99631c5 <https://git.opendaylight.org/gerrit/#/q/99631c5>`_
  `LISPMAP-166 <https://jira.opendaylight.org/browse/LISPMAP-166>`_
  : Bug 9127: Make IT more robust when receiving packets
* `92249f9 <https://git.opendaylight.org/gerrit/#/q/92249f9>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `d5f6457 <https://git.opendaylight.org/gerrit/#/q/d5f6457>`_
  `LISPMAP-169 <https://jira.opendaylight.org/browse/LISPMAP-169>`_
  : Bug 9172: Don't store subscribers with "No Address" source EID
* `3cc8437 <https://git.opendaylight.org/gerrit/#/q/3cc8437>`_
  `LISPMAP-164 <https://jira.opendaylight.org/browse/LISPMAP-164>`_
  : Bug 9037: Fix positive overlapping negative
* `d5c36eb <https://git.opendaylight.org/gerrit/#/q/d5c36eb>`_
  `LISPMAP-151 <https://jira.opendaylight.org/browse/LISPMAP-151>`_
  : Bug 7947: Move subscribers to a separate cache
* `5f69849 <https://git.opendaylight.org/gerrit/#/q/5f69849>`_
  `LISPMAP-151 <https://jira.opendaylight.org/browse/LISPMAP-151>`_
  : Revert "Bug 7947: Store MappingOrigin in MappingData"
* `02cff71 <https://git.opendaylight.org/gerrit/#/q/02cff71>`_
  `LISPMAP-163 <https://jira.opendaylight.org/browse/LISPMAP-163>`_
  : Bug 9023: Fix merging of negative prefixes
* `991c222 <https://git.opendaylight.org/gerrit/#/q/991c222>`_
  `LISPMAP-160 <https://jira.opendaylight.org/browse/LISPMAP-160>`_
  : Bug 8746: Multi-threading improvements
* `2e860ec <https://git.opendaylight.org/gerrit/#/q/2e860ec>`_
  : Bump versions by x.y.(z+1)


mdsal
-----
* `a6433bb <https://git.opendaylight.org/gerrit/#/q/a6433bb>`_
  : Binding v2 generator - fix getting elements from empty array.
* `6ce7a04 <https://git.opendaylight.org/gerrit/#/q/6ce7a04>`_
  `MDSAL-291 <https://jira.opendaylight.org/browse/MDSAL-291>`_
  : BUG-9145: rework singleton service group state tracking
* `c61a8cc <https://git.opendaylight.org/gerrit/#/q/c61a8cc>`_
  : Fix use of deprecated Futures.addCallback()
* `5d8111e <https://git.opendaylight.org/gerrit/#/q/5d8111e>`_
  : Binding v2 Generator - fix dependency yang-ext of mdsal-binding2-test-model - It should depend on yang-ext in binding2 model for using generated codes v2.
* `e9c9a0b <https://git.opendaylight.org/gerrit/#/q/e9c9a0b>`_
  : Add yang-ext to model-binding2
* `7345aa3 <https://git.opendaylight.org/gerrit/#/q/7345aa3>`_
  : Fix revisions format in tests
* `952d570 <https://git.opendaylight.org/gerrit/#/q/952d570>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `96a12ed <https://git.opendaylight.org/gerrit/#/q/96a12ed>`_
  : MDSAL Binding 2 Features for Karaf 4
* `f1d7abd <https://git.opendaylight.org/gerrit/#/q/f1d7abd>`_
  : Bump versions by x.y.(z+1)


nemo
----
* `21825a7 <https://git.opendaylight.org/gerrit/#/q/21825a7>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `92ad34c <https://git.opendaylight.org/gerrit/#/q/92ad34c>`_
  : Bump versions by x.y.(z+1)


netconf
-------
* `b5505bd <https://git.opendaylight.org/gerrit/#/q/b5505bd>`_
  `SR-1 <https://jira.opendaylight.org/browse/SR-1>`_
  : Extra superfluous edit-config RPC sent - Netconf-482
* `1e8350d <https://git.opendaylight.org/gerrit/#/q/1e8350d>`_
  : Transition ListenerAdapter to ClusteredDOMDataTreeListener
* `34b91cb <https://git.opendaylight.org/gerrit/#/q/34b91cb>`_
  : Add unit tests for ListenerAdapter
* `96914ac <https://git.opendaylight.org/gerrit/#/q/96914ac>`_
  `NETCONF-475 <https://jira.opendaylight.org/browse/NETCONF-475>`_
  : Bug 9256: Add websocket server config knob for ip
* `6978e89 <https://git.opendaylight.org/gerrit/#/q/6978e89>`_
  `NETCONF-465 <https://jira.opendaylight.org/browse/NETCONF-465>`_
  : BUG 9112: NPE in karaf cli when device is still connecting
* `5c7ca5c <https://git.opendaylight.org/gerrit/#/q/5c7ca5c>`_
  : Remove aaa version declarations
* `ccce725 <https://git.opendaylight.org/gerrit/#/q/ccce725>`_
  : BUG-9218: fix features to not duplicate upstream bundles
* `9ae46c7 <https://git.opendaylight.org/gerrit/#/q/9ae46c7>`_
  `NETCONF-469 <https://jira.opendaylight.org/browse/NETCONF-469>`_
  : BUG-9132: don't provide a value for restconf/streams/events
* `487cb8a <https://git.opendaylight.org/gerrit/#/q/487cb8a>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `1552e67 <https://git.opendaylight.org/gerrit/#/q/1552e67>`_
  : Bump versions by x.y.(z+1)
* `7b06550 <https://git.opendaylight.org/gerrit/#/q/7b06550>`_
  : Minor cleanup of blueprint config
* `0434081 <https://git.opendaylight.org/gerrit/#/q/0434081>`_
  `NETCONF-453 <https://jira.opendaylight.org/browse/NETCONF-453>`_
  : Bug 8989 - Create just one DS for each test-tool's simulated netconf device


netvirt
-------
* `db4080e <https://git.opendaylight.org/gerrit/#/q/db4080e>`_
  : Refactor/cleanup BgpConfigurationManager
* `73f2a21 <https://git.opendaylight.org/gerrit/#/q/73f2a21>`_
  `NETVIRT-940 <https://jira.opendaylight.org/browse/NETVIRT-940>`_
  : Bug9245: Table=21 related exceptions fixes
* `60054d6 <https://git.opendaylight.org/gerrit/#/q/60054d6>`_
  `NETVIRT-926 <https://jira.opendaylight.org/browse/NETVIRT-926>`_
  : NETVIRT-926 - Maxpath value should be between 1 to 64 in BGP multipath
* `c64a3ce <https://git.opendaylight.org/gerrit/#/q/c64a3ce>`_
  `NETVIRT-935 <https://jira.opendaylight.org/browse/NETVIRT-935>`_
  : Bug 9234: CSS programmed wrongly with TOR mac
* `3ffe9d5 <https://git.opendaylight.org/gerrit/#/q/3ffe9d5>`_
  : Refactor/cleanup BgpRouter
* `460a47f <https://git.opendaylight.org/gerrit/#/q/460a47f>`_
  : Updated to use bind-service update instead of bind and unbind in Acl VPN listener
* `eb221c6 <https://git.opendaylight.org/gerrit/#/q/eb221c6>`_
  : Handle usecase when ELAN is null, and ACL service BIND/ADD fails due to NPE
* `13aa527 <https://git.opendaylight.org/gerrit/#/q/13aa527>`_
  `NETVIRT-929 <https://jira.opendaylight.org/browse/NETVIRT-929>`_
  : BUG 9221: Improve logical SFF handling
* `87fa9a0 <https://git.opendaylight.org/gerrit/#/q/87fa9a0>`_
  `NETVIRT-928 <https://jira.opendaylight.org/browse/NETVIRT-928>`_
  : BUG 9220: don't use tun_gpe_np as match field
* `4504702 <https://git.opendaylight.org/gerrit/#/q/4504702>`_
  : Use nitrogen version for mdsal-trace
* `242f984 <https://git.opendaylight.org/gerrit/#/q/242f984>`_
  : Ignore addElanInterface
* `f96ef54 <https://git.opendaylight.org/gerrit/#/q/f96ef54>`_
  `NETVIRT-919 <https://jira.opendaylight.org/browse/NETVIRT-919>`_
  : Bug 9181: Code changes for conflicting modifications exceptions of table=19
* `2bce3ec <https://git.opendaylight.org/gerrit/#/q/2bce3ec>`_
  `NETVIRT-941 <https://jira.opendaylight.org/browse/NETVIRT-941>`_
  : Bug 9246: Conflicting modification from ARP and Router-GW-Mac
* `2e2208f <https://git.opendaylight.org/gerrit/#/q/2e2208f>`_
  `NETVIRT-843 <https://jira.opendaylight.org/browse/NETVIRT-843>`_
  : Bug 8976 - Upstreaming fixes to master
* `fca9cc2 <https://git.opendaylight.org/gerrit/#/q/fca9cc2>`_
  `NETVIRT-835 <https://jira.opendaylight.org/browse/NETVIRT-835>`_
  : Bug 8964 - Neutron test neutron.tests.tempest.scenario.test_floatingip.FloatingIpSameNetwork.test_east_west fails
* `e34567f <https://git.opendaylight.org/gerrit/#/q/e34567f>`_
  : Test SNAT mostSignificantBit()
* `98e9f1c <https://git.opendaylight.org/gerrit/#/q/98e9f1c>`_
  `NETVIRT-936 <https://jira.opendaylight.org/browse/NETVIRT-936>`_
  : Bug 9237 - NPE: InternalToExternalPortMapKey
* `70214f8 <https://git.opendaylight.org/gerrit/#/q/70214f8>`_
  `NETVIRT-931 <https://jira.opendaylight.org/browse/NETVIRT-931>`_
  : Bug 9226: VPN Traffic fails after VM Migration
* `0841ecc <https://git.opendaylight.org/gerrit/#/q/0841ecc>`_
  `NETVIRT-918 <https://jira.opendaylight.org/browse/NETVIRT-918>`_
  : Bug 9180: Conflicting modification Exception from NAT Module
* `e2d4059 <https://git.opendaylight.org/gerrit/#/q/e2d4059>`_
  `NETVIRT-437 <https://jira.opendaylight.org/browse/NETVIRT-437>`_
  : BUG 7596 - Update to handle change in Neutron Network external attribute
* `5c48a5b <https://git.opendaylight.org/gerrit/#/q/5c48a5b>`_
  : Remove unneeded mdsal and yangtools artifacts
* `cfbcd8a <https://git.opendaylight.org/gerrit/#/q/cfbcd8a>`_
  : Remove unneeded pom version values
* `877a333 <https://git.opendaylight.org/gerrit/#/q/877a333>`_
  : Undo incorrect code changes made during merge conflict.
* `f68d929 <https://git.opendaylight.org/gerrit/#/q/f68d929>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `3be0df9 <https://git.opendaylight.org/gerrit/#/q/3be0df9>`_
  `NETVIRT-872 <https://jira.opendaylight.org/browse/NETVIRT-872>`_
  : Bug 9066:Use Single Transaction for DNAT Flow Install and Remove
* `ee1a7ba <https://git.opendaylight.org/gerrit/#/q/ee1a7ba>`_
  : rm remaining it artifacts
* `f8e7310 <https://git.opendaylight.org/gerrit/#/q/f8e7310>`_
  `NETVIRT-875 <https://jira.opendaylight.org/browse/NETVIRT-875>`_
  : Bug 9077: Fix of issue that the existing NW communication failure when new NW is created
* `78a3153 <https://git.opendaylight.org/gerrit/#/q/78a3153>`_
  : Lower log level for non errors
* `56bce23 <https://git.opendaylight.org/gerrit/#/q/56bce23>`_
  `NETVIRT-927 <https://jira.opendaylight.org/browse/NETVIRT-927>`_
  : Bug 9209: PNF learned on external networks to skip local FIB Processing
* `2235c8d <https://git.opendaylight.org/gerrit/#/q/2235c8d>`_
  : Renamed acl-impl.rst to acl-reflection-on-existing-traffic.rst
* `4092336 <https://git.opendaylight.org/gerrit/#/q/4092336>`_
  : sync cleanup
* `fc11257 <https://git.opendaylight.org/gerrit/#/q/fc11257>`_
  `NETVIRT-923 <https://jira.opendaylight.org/browse/NETVIRT-923>`_
  : bug-9190: NullPointerException at getIsExternal
* `31a9df0 <https://git.opendaylight.org/gerrit/#/q/31a9df0>`_
  `NETVIRT-853 <https://jira.opendaylight.org/browse/NETVIRT-853>`_
  : Bug 9012 : BGP not connecting to config server
* `3f3196e <https://git.opendaylight.org/gerrit/#/q/3f3196e>`_
  : Lower log level for non errors
* `d24fc86 <https://git.opendaylight.org/gerrit/#/q/d24fc86>`_
  : Remove explicit default super-constructor calls
* `035fe7c <https://git.opendaylight.org/gerrit/#/q/035fe7c>`_
  : Bug9091 : Removing uncessary MD-SAL Read Operation in NAT
* `1416915 <https://git.opendaylight.org/gerrit/#/q/1416915>`_
  `NETVIRT-829 <https://jira.opendaylight.org/browse/NETVIRT-829>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin
* `a1c58b0 <https://git.opendaylight.org/gerrit/#/q/a1c58b0>`_
  : lower log levels for non-errors
* `9828258 <https://git.opendaylight.org/gerrit/#/q/9828258>`_
  : ClearBgpCli reads from socket to send/receive from bgpd (some previous commit modifed to read from session parameters)
* `3ce3792 <https://git.opendaylight.org/gerrit/#/q/3ce3792>`_
  : bgpmanager: change API of bgpmanager to add VRF IPv4 or IPv6
* `84a2457 <https://git.opendaylight.org/gerrit/#/q/84a2457>`_
  : neutronvpn: create ipv4 or ipv6 context
* `a0c5703 <https://git.opendaylight.org/gerrit/#/q/a0c5703>`_
  : bgpmanager thrift upgrade to 0.9.3
* `d931c60 <https://git.opendaylight.org/gerrit/#/q/d931c60>`_
  `NETVIRT-834 <https://jira.opendaylight.org/browse/NETVIRT-834>`_
  : Bug 8963 - Option to configure EVPN address family
* `7380ac2 <https://git.opendaylight.org/gerrit/#/q/7380ac2>`_
  `NETVIRT-926 <https://jira.opendaylight.org/browse/NETVIRT-926>`_
  : Bug 9196 - Maxpath value should be between 1 to 64 in BGP multipath
* `655de2e <https://git.opendaylight.org/gerrit/#/q/655de2e>`_
  `NETVIRT-821 <https://jira.opendaylight.org/browse/NETVIRT-821>`_
  : BUG 8930 - delete Op VPN interface when deleting external network
* `a928467 <https://git.opendaylight.org/gerrit/#/q/a928467>`_
  : Lower log levels for non error's
* `397ea5d <https://git.opendaylight.org/gerrit/#/q/397ea5d>`_
  : elanmanager: clean up Futures collections
* `8a60da7 <https://git.opendaylight.org/gerrit/#/q/8a60da7>`_
  `NETVIRT-924 <https://jira.opendaylight.org/browse/NETVIRT-924>`_
  : Bug 9193 - In conntrack SNAT , flows are programmed twice on a router g/w set.
* `1ae59879 <https://git.opendaylight.org/gerrit/#/q/1ae59879>`_
  : IfMgr clean-up
* `902d44b <https://git.opendaylight.org/gerrit/#/q/902d44b>`_
  : Restrict NeutronvpnUtils.read
* `2ed1fcc <https://git.opendaylight.org/gerrit/#/q/2ed1fcc>`_
  `NETVIRT-923 <https://jira.opendaylight.org/browse/NETVIRT-923>`_
  : bug-9190: NullPointerException at getIsExternal
* `5399653 <https://git.opendaylight.org/gerrit/#/q/5399653>`_
  `NETVIRT-838 <https://jira.opendaylight.org/browse/NETVIRT-838>`_
  : BUG 8969 - Fix Exeption when clearing external router GW
* `3e15936 <https://git.opendaylight.org/gerrit/#/q/3e15936>`_
  `NETVIRT-888 <https://jira.opendaylight.org/browse/NETVIRT-888>`_
  : Bug 9105: close removeElanInterface transaction
* `6aebb4c <https://git.opendaylight.org/gerrit/#/q/6aebb4c>`_
  : ElanUtils clean-up: ElanL2GatewayUtils
* `0f0ac42 <https://git.opendaylight.org/gerrit/#/q/0f0ac42>`_
  : ElanUtils clean-up: L2GatewayConnectionUtils
* `e1dae98 <https://git.opendaylight.org/gerrit/#/q/e1dae98>`_
  : ElanUtils clean-up: remove unnecessary references
* `021112d <https://git.opendaylight.org/gerrit/#/q/021112d>`_
  : ElanUtils clean-up: ElanL2Gateway{Multicast,}Utils
* `da10b34 <https://git.opendaylight.org/gerrit/#/q/da10b34>`_
  : ElanUtils clean-up: more ElanL2GatewayMulticastUtils
* `681fae2 <https://git.opendaylight.org/gerrit/#/q/681fae2>`_
  : ElanUtils clean-up: ElanL2GatewayMulticastUtils
* `757d7ed <https://git.opendaylight.org/gerrit/#/q/757d7ed>`_
  : ElanUtils clean-up: make read() static
* `cca12c8 <https://git.opendaylight.org/gerrit/#/q/cca12c8>`_
  : aclservice: clean up Futures collections
* `d1d1f44 <https://git.opendaylight.org/gerrit/#/q/d1d1f44>`_
  : dhcpservice: clean up Futures collections
* `af7eebc <https://git.opendaylight.org/gerrit/#/q/af7eebc>`_
  : coe: clean up Futures collections
* `18d2f14 <https://git.opendaylight.org/gerrit/#/q/18d2f14>`_
  : Remove un-used SynchronousEachOperationNewWriteTransaction
* `c4b2066 <https://git.opendaylight.org/gerrit/#/q/c4b2066>`_
  `NETVIRT-829 <https://jira.opendaylight.org/browse/NETVIRT-829>`_
  : Bug 8953: Fix exceptions raised due to PNF confused with FIP
* `5e7933f <https://git.opendaylight.org/gerrit/#/q/5e7933f>`_
  : Remove aggregator from artifactId
* `266eacf <https://git.opendaylight.org/gerrit/#/q/266eacf>`_
  : Dualstack support for L3VPN - single router Dual stack
* `dab4df4 <https://git.opendaylight.org/gerrit/#/q/dab4df4>`_
  `NETVIRT-864 <https://jira.opendaylight.org/browse/NETVIRT-864>`_
  : Bug 9030 - port and port security groups cannot be null
* `1967565 <https://git.opendaylight.org/gerrit/#/q/1967565>`_
  `NETVIRT-862 <https://jira.opendaylight.org/browse/NETVIRT-862>`_
  : Bug 9026: ACL issue in handling port-create
* `8289943 <https://git.opendaylight.org/gerrit/#/q/8289943>`_
  : Add LogCaptureRule to AclServiceTestBase & ElanServiceTest
* `3091531 <https://git.opendaylight.org/gerrit/#/q/3091531>`_
  `NETVIRT-367 <https://jira.opendaylight.org/browse/NETVIRT-367>`_
  : Bug 7380: service-binding exceptions from ACL
* `9d695bb <https://git.opendaylight.org/gerrit/#/q/9d695bb>`_
  : Remove learn mode from aclserivce.
* `03381dd <https://git.opendaylight.org/gerrit/#/q/03381dd>`_
  : Remove transparent mode from aclservice.
* `61517e6 <https://git.opendaylight.org/gerrit/#/q/61517e6>`_
  : Remove stateless mode from AclService.
* `1ad4d08 <https://git.opendaylight.org/gerrit/#/q/1ad4d08>`_
  : Fix wrongly keyed network map in CoeUtils
* `9085dc4 <https://git.opendaylight.org/gerrit/#/q/9085dc4>`_
  `NETVIRT-829 <https://jira.opendaylight.org/browse/NETVIRT-829>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin.
* `22c1ba3 <https://git.opendaylight.org/gerrit/#/q/22c1ba3>`_
  : Remove deprecated CheckedFuture
* `92cc55f <https://git.opendaylight.org/gerrit/#/q/92cc55f>`_
  : Minor code cleanup in QoS
* `e449ed0 <https://git.opendaylight.org/gerrit/#/q/e449ed0>`_
  : Cleanup
* `0ab0ada <https://git.opendaylight.org/gerrit/#/q/0ab0ada>`_
  : L2 Support for Pods
* `3ef5a81 <https://git.opendaylight.org/gerrit/#/q/3ef5a81>`_
  `NETVIRT-367 <https://jira.opendaylight.org/browse/NETVIRT-367>`_
  : Bug 7380: service-binding exceptions from ACL
* `34aec1f <https://git.opendaylight.org/gerrit/#/q/34aec1f>`_
  `NETVIRT-789 <https://jira.opendaylight.org/browse/NETVIRT-789>`_
  : Bug 8860 : Populate elantag at time of elanInstance creation
* `06f600b <https://git.opendaylight.org/gerrit/#/q/06f600b>`_
  : Spec for Acl change reflection on existing communication
* `09c4355 <https://git.opendaylight.org/gerrit/#/q/09c4355>`_
  `NETVIRT-835 <https://jira.opendaylight.org/browse/NETVIRT-835>`_
  : Bug 8964 - Neutron test neutron.tests.tempest.scenario.test_floatingip.FloatingIpSameNetwork.test_east_west fails
* `80865cb <https://git.opendaylight.org/gerrit/#/q/80865cb>`_
  : Fix exception handling in neutronvpn shell
* `95ca2b1 <https://git.opendaylight.org/gerrit/#/q/95ca2b1>`_
  : Bug7380:CSIT FIP ping is getting failed for Ext Flat/VLAN Network
* `d93f513 <https://git.opendaylight.org/gerrit/#/q/d93f513>`_
  : Fix cloud-servicechain YANG
* `5626383 <https://git.opendaylight.org/gerrit/#/q/5626383>`_
  : Remove unused references to DataChangeListener
* `8d62dc2 <https://git.opendaylight.org/gerrit/#/q/8d62dc2>`_
  `NETVIRT-899 <https://jira.opendaylight.org/browse/NETVIRT-899>`_
  : Bug 9136 - Suspected ReadOnlyTransaction leak in QosNeutronUtils
* `8d7f5a5 <https://git.opendaylight.org/gerrit/#/q/8d7f5a5>`_
  : fix coe nitrogen versions
* `38e0946 <https://git.opendaylight.org/gerrit/#/q/38e0946>`_
  `NETVIRT-884 <https://jira.opendaylight.org/browse/NETVIRT-884>`_
  : Bug 9100 : tx leak in DhcpExternalTunnelManager
* `e0ea63d <https://git.opendaylight.org/gerrit/#/q/e0ea63d>`_
  : Bug9016:Using Single Transaction during NAPT SwitchOver
* `51f7268 <https://git.opendaylight.org/gerrit/#/q/51f7268>`_
  : Cluster support for netvirt QoS
* `0f285e1 <https://git.opendaylight.org/gerrit/#/q/0f285e1>`_
  `NETVIRT-867 <https://jira.opendaylight.org/browse/NETVIRT-867>`_
  : Bug 9035: - NPE at org.opendaylight.netvirt.elan.arp.responder.ArpResponderUtil.getMatchCriteria
* `7a0ca73 <https://git.opendaylight.org/gerrit/#/q/7a0ca73>`_
  : Bug:9013 ElanUtils: RPC Call to Get egress actions for interface, OptimisticLockFailedException
* `a7f3b65 <https://git.opendaylight.org/gerrit/#/q/a7f3b65>`_
  `NETVIRT-879 <https://jira.opendaylight.org/browse/NETVIRT-879>`_
  : Bug 9085 - CSIT Sporadic failures - test_security_groups_basic_ops.TestSecurityGroupsBasicOps.test_cross_tenant_traffic
* `39c01c7 <https://git.opendaylight.org/gerrit/#/q/39c01c7>`_
  : Replace size()==0 by isEmpty()
* `ac9734f <https://git.opendaylight.org/gerrit/#/q/ac9734f>`_
  : Replace <? extends Object> by <?>
* `ce8d9d6 <https://git.opendaylight.org/gerrit/#/q/ce8d9d6>`_
  `NETVIRT-49 <https://jira.opendaylight.org/browse/NETVIRT-49>`_
  : Bug 6349: try connecting to qthrift only when configured. - default values are set to invalid host/port. - verify whether port/host configured before connecting
* `930d4bb <https://git.opendaylight.org/gerrit/#/q/930d4bb>`_
  `NETVIRT-803 <https://jira.opendaylight.org/browse/NETVIRT-803>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `3a0184b <https://git.opendaylight.org/gerrit/#/q/3a0184b>`_
  `NETVIRT-885 <https://jira.opendaylight.org/browse/NETVIRT-885>`_
  : Bug 9102 Fix ReadOnlyTransaction leak in NeutronvpnUtils
* `484b600 <https://git.opendaylight.org/gerrit/#/q/484b600>`_
  `NETVIRT-829 <https://jira.opendaylight.org/browse/NETVIRT-829>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin
* `1a80e3e <https://git.opendaylight.org/gerrit/#/q/1a80e3e>`_
  `NETVIRT-864 <https://jira.opendaylight.org/browse/NETVIRT-864>`_
  : Bug 9030 - port and port security groups cannot be null
* `fc82b17 <https://git.opendaylight.org/gerrit/#/q/fc82b17>`_
  : Bug 9060: Package mdsal trace utility in netvirt Karaf distribution
* `c80eb76 <https://git.opendaylight.org/gerrit/#/q/c80eb76>`_
  : Bug 8801 - EVPN remote routes are not pushed to ovs flow table
* `ea8b6aa <https://git.opendaylight.org/gerrit/#/q/ea8b6aa>`_
  `NETVIRT-829 <https://jira.opendaylight.org/browse/NETVIRT-829>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin
* `b8cf946 <https://git.opendaylight.org/gerrit/#/q/b8cf946>`_
  : bgpmanager BgpUtil code clean-up: Make private what can, and rm unused
* `cec0cc4 <https://git.opendaylight.org/gerrit/#/q/cec0cc4>`_
  : Bug 9034: bgpmanager BgpUtil rm unused pendingWrTransaction
* `bce2347 <https://git.opendaylight.org/gerrit/#/q/bce2347>`_
  `NETVIRT-789 <https://jira.opendaylight.org/browse/NETVIRT-789>`_
  : Bug 8860: NPE in getElanTag from SubnetmapChangeListener
* `87a9334 <https://git.opendaylight.org/gerrit/#/q/87a9334>`_
  `NETVIRT-870 <https://jira.opendaylight.org/browse/NETVIRT-870>`_
  : Bug 9051 - Failed to handle router GW flow in GW-MAC table. DPN id is missing for router-id
* `be46ddf <https://git.opendaylight.org/gerrit/#/q/be46ddf>`_
  : Initial Bundle setup for coe renderer
* `f59e001 <https://git.opendaylight.org/gerrit/#/q/f59e001>`_
  : Bump versions by x.y.(z+1)


neutron
-------
* `3f31de7 <https://git.opendaylight.org/gerrit/#/q/3f31de7>`_
  : BUG-9218: make hostconfig plugins depend on spi
* `1e2ee7a <https://git.opendaylight.org/gerrit/#/q/1e2ee7a>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `f73d8e5 <https://git.opendaylight.org/gerrit/#/q/f73d8e5>`_
  : Bump versions by x.y.(z+1)


nic
---
* `b518195 <https://git.opendaylight.org/gerrit/#/q/b518195>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `b02e175 <https://git.opendaylight.org/gerrit/#/q/b02e175>`_
  : Bump versions by x.y.(z+1)


of-config
---------
* `664f48e <https://git.opendaylight.org/gerrit/#/q/664f48e>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `48fcc2b <https://git.opendaylight.org/gerrit/#/q/48fcc2b>`_
  : Bump versions by x.y.(z+1)


openflowplugin
--------------
* `36fcca7 <https://git.opendaylight.org/gerrit/#/q/36fcca7>`_
  `OPNFLWPLUG-930 <https://jira.opendaylight.org/browse/OPNFLWPLUG-930>`_
  : OPNFLWPLUG-930 Inconsistent flow IDs between flows in config and operational data stores
* `ac07bed <https://git.opendaylight.org/gerrit/#/q/ac07bed>`_
  : Remove deprecated
* `450b1a1 <https://git.opendaylight.org/gerrit/#/q/450b1a1>`_
  : Do not use fix custom version in ofp feature
* `4d5c7af <https://git.opendaylight.org/gerrit/#/q/4d5c7af>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix checkstyle warnings for impl/device package
* `2ab36c6 <https://git.opendaylight.org/gerrit/#/q/2ab36c6>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix checkstyle warnings for impl/connection package and OpenFlowPluginProviderImpl
* `e6e6412 <https://git.opendaylight.org/gerrit/#/q/e6e6412>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix codestyle
* `739d901 <https://git.opendaylight.org/gerrit/#/q/739d901>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix codestyle
* `c02495e <https://git.opendaylight.org/gerrit/#/q/c02495e>`_
  : Cli to display all the connected DPNs
* `1168029 <https://git.opendaylight.org/gerrit/#/q/1168029>`_
  : Fix log message
* `7cdb645 <https://git.opendaylight.org/gerrit/#/q/7cdb645>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Remove unsupported statistics warning
* `172e48f <https://git.opendaylight.org/gerrit/#/q/172e48f>`_
  `OPNFLWPLUG-950 <https://jira.opendaylight.org/browse/OPNFLWPLUG-950>`_
  : BUG-9223:Remove hardcoded value of lldp interval
* `c4b0b4a <https://git.opendaylight.org/gerrit/#/q/c4b0b4a>`_
  : This patch implements ct-mark support in nicira extensions.
* `da11ae9 <https://git.opendaylight.org/gerrit/#/q/da11ae9>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix checkstyle warnings for impl/karaf, lifecycle, common, mastership
* `067b512 <https://git.opendaylight.org/gerrit/#/q/067b512>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix checkstyle warnings for util package
* `afc011e <https://git.opendaylight.org/gerrit/#/q/afc011e>`_
  : Fix issues related to checkstyle enforcement
* `e93494e <https://git.opendaylight.org/gerrit/#/q/e93494e>`_
  : Fix issues related to checkstyle enforcement
* `c07d277 <https://git.opendaylight.org/gerrit/#/q/c07d277>`_
  : Fix issues related to checkstyle enforcement
* `eb2d654 <https://git.opendaylight.org/gerrit/#/q/eb2d654>`_
  : BUG8607 Fix checkstyle issues
* `e1b26b8 <https://git.opendaylight.org/gerrit/#/q/e1b26b8>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix checkstyle warnings for rpc package
* `563558a <https://git.opendaylight.org/gerrit/#/q/563558a>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix checkstyle warnings for impl/protocol package
* `c2d91ef <https://git.opendaylight.org/gerrit/#/q/c2d91ef>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix checkstyle warnings for services package
* `1829a63 <https://git.opendaylight.org/gerrit/#/q/1829a63>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix checkstyle warnings for translator and registry package
* `4a724f3 <https://git.opendaylight.org/gerrit/#/q/4a724f3>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `8064a4f <https://git.opendaylight.org/gerrit/#/q/8064a4f>`_
  `OPNFLWPLUG-948 <https://jira.opendaylight.org/browse/OPNFLWPLUG-948>`_
  : Sort bucket actions
* `da13c64 <https://git.opendaylight.org/gerrit/#/q/da13c64>`_
  : Bump versions by x.y.(z+1)
* `b14867f <https://git.opendaylight.org/gerrit/#/q/b14867f>`_
  : Fix issues related to checkstyle enforcement
* `e6acc16 <https://git.opendaylight.org/gerrit/#/q/e6acc16>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix codestyle
* `187291a <https://git.opendaylight.org/gerrit/#/q/187291a>`_
  : Add missing bundle converters
* `5e9b83f <https://git.opendaylight.org/gerrit/#/q/5e9b83f>`_
  `OPNFLWPLUG-938 <https://jira.opendaylight.org/browse/OPNFLWPLUG-938>`_
  : Do not mark device as connecting when closing it
* `b23364d <https://git.opendaylight.org/gerrit/#/q/b23364d>`_
  `OPNFLWPLUG-926 <https://jira.opendaylight.org/browse/OPNFLWPLUG-926>`_
  : Redesign statistics context and manager
* `ee9c2d0 <https://git.opendaylight.org/gerrit/#/q/ee9c2d0>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix checkstyle warnings for impl/datastore package
* `294cce8 <https://git.opendaylight.org/gerrit/#/q/294cce8>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix checkstyle warnings for impl/protocol test package
* `1b1888c <https://git.opendaylight.org/gerrit/#/q/1b1888c>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix checkstyle warnings for impl/role package


ovsdb
-----
* `512179a <https://git.opendaylight.org/gerrit/#/q/512179a>`_
  `OVSDB-396 <https://jira.opendaylight.org/browse/OVSDB-396>`_
  : bug 7599 avoid unnecessary mdsal reads
* `cf70b38 <https://git.opendaylight.org/gerrit/#/q/cf70b38>`_
  : bug 8712 vlan bindings update fix
* `451e720 <https://git.opendaylight.org/gerrit/#/q/451e720>`_
  `OVSDB-421 <https://jira.opendaylight.org/browse/OVSDB-421>`_
  : Bug 8874 - Tunnel_ips of hardware_vtep is cleared when Open vSwitch process restarted in Open vSwitch HWVTEP Emulator
* `035e3d9 <https://git.opendaylight.org/gerrit/#/q/035e3d9>`_
  `OVSDB-406 <https://jira.opendaylight.org/browse/OVSDB-406>`_
  : bug 8029 added ref counts for physical locators.
* `122a37c <https://git.opendaylight.org/gerrit/#/q/122a37c>`_
  `OVSDB-429 <https://jira.opendaylight.org/browse/OVSDB-429>`_
  : BUG 9166 - Fix Netvirt L2GW Illegal state exception
* `c91ad95 <https://git.opendaylight.org/gerrit/#/q/c91ad95>`_
  : Refactor compareDbVersionToMinVersion
* `acd89a1 <https://git.opendaylight.org/gerrit/#/q/acd89a1>`_
  `OVSDB-422 <https://jira.opendaylight.org/browse/OVSDB-422>`_
  : Bug 8991 - Add dpdkvhostuserclient interface type to model
* `5a7dd9e <https://git.opendaylight.org/gerrit/#/q/5a7dd9e>`_
  : Convert DataChangeListeners to DataTreeChangeListeners
* `7fe1aed <https://git.opendaylight.org/gerrit/#/q/7fe1aed>`_
  : Remove explicit default super-constructor calls
* `5f6dbf4 <https://git.opendaylight.org/gerrit/#/q/5f6dbf4>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `9558f56 <https://git.opendaylight.org/gerrit/#/q/9558f56>`_
  : Bump versions by x.y.(z+1)


packetcable
-----------
* `bb6a3c5 <https://git.opendaylight.org/gerrit/#/q/bb6a3c5>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `e673c9e <https://git.opendaylight.org/gerrit/#/q/e673c9e>`_
  : Bump versions by x.y.(z+1)


sfc
---
* `aafbc35 <https://git.opendaylight.org/gerrit/#/q/aafbc35>`_
  `SFC-204 <https://jira.opendaylight.org/browse/SFC-204>`_
  : BUG 9305: Unbind SFC service when removing SFs
* `c47795d <https://git.opendaylight.org/gerrit/#/q/c47795d>`_
  : Add SFC shell's command to show Service Nodes
* `6fa05ff <https://git.opendaylight.org/gerrit/#/q/6fa05ff>`_
  : Add an API to handle ServiceNode entities
* `aa14e3f <https://git.opendaylight.org/gerrit/#/q/aa14e3f>`_
  : Add SFC shell's command to show Service Function Types
* `f13c04a <https://git.opendaylight.org/gerrit/#/q/f13c04a>`_
  : BUG-9218: Fix odl-sfc-shell dependencies
* `b065fa6 <https://git.opendaylight.org/gerrit/#/q/b065fa6>`_
  : Make utility classes final and other minor changes
* `39c400e <https://git.opendaylight.org/gerrit/#/q/39c400e>`_
  : Add SFC shell's command to show Service Function Chains
* `8b227b4 <https://git.opendaylight.org/gerrit/#/q/8b227b4>`_
  : Add SFC shell's command to show Service Function Paths
* `83d5063 <https://git.opendaylight.org/gerrit/#/q/83d5063>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `42ca744 <https://git.opendaylight.org/gerrit/#/q/42ca744>`_
  : Bump versions by x.y.(z+1)


snmp
----
* `c57a6b0 <https://git.opendaylight.org/gerrit/#/q/c57a6b0>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `0014df2 <https://git.opendaylight.org/gerrit/#/q/0014df2>`_
  : Bump versions by x.y.(z+1)


snmp4sdn
--------
* `589029c <https://git.opendaylight.org/gerrit/#/q/589029c>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `8ced555 <https://git.opendaylight.org/gerrit/#/q/8ced555>`_
  : Bump versions by x.y.(z+1)


sxp
---
* `c02a4b2 <https://git.opendaylight.org/gerrit/#/q/c02a4b2>`_
  `SXP-130 <https://jira.opendaylight.org/browse/SXP-130>`_
  : SXP-130 Delete entire node from Operational DS
* `252efec <https://git.opendaylight.org/gerrit/#/q/252efec>`_
  `SXP-126 <https://jira.opendaylight.org/browse/SXP-126>`_
  : BUG-9255 Fix race conditions in md5update
* `6ccebfe <https://git.opendaylight.org/gerrit/#/q/6ccebfe>`_
  : Fix feature dependencies of sxp-api
* `f6200f5 <https://git.opendaylight.org/gerrit/#/q/f6200f5>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `59636d4 <https://git.opendaylight.org/gerrit/#/q/59636d4>`_
  : Bump versions by x.y.(z+1)
* `f8c9fd8 <https://git.opendaylight.org/gerrit/#/q/f8c9fd8>`_
  `SXP-125 <https://jira.opendaylight.org/browse/SXP-125>`_
  : BUG-9126 Bump jrobot remote server
* `9ec4264 <https://git.opendaylight.org/gerrit/#/q/9ec4264>`_
  `SXP-124 <https://jira.opendaylight.org/browse/SXP-124>`_
  : BUG-9062 - generate positive retry times


unimgr
------
* `fa88027 <https://git.opendaylight.org/gerrit/#/q/fa88027>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `ef2b85b <https://git.opendaylight.org/gerrit/#/q/ef2b85b>`_
  : Bump versions by x.y.(z+1)


usc
---
* `d1c9e44 <https://git.opendaylight.org/gerrit/#/q/d1c9e44>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `aa220fd <https://git.opendaylight.org/gerrit/#/q/aa220fd>`_
  : Bump versions by x.y.(z+1)


vtn
---
* `59c5fc2 <https://git.opendaylight.org/gerrit/#/q/59c5fc2>`_
  `VTN-166 <https://jira.opendaylight.org/browse/VTN-166>`_
  : Bug 9224 - Fix for mapping issue of protocol and dscp values
* `4d5551e <https://git.opendaylight.org/gerrit/#/q/4d5551e>`_
  `VTN-165 <https://jira.opendaylight.org/browse/VTN-165>`_
  : Bug 9208: Fixed UDP L4 match details creation failures
* `b570e1e <https://git.opendaylight.org/gerrit/#/q/b570e1e>`_
  `VTN-167 <https://jira.opendaylight.org/browse/VTN-167>`_
  : Bug 9225: Upgrade Apache Tomcat for VTN coordinator to 7.0.82.
* `46730f7 <https://git.opendaylight.org/gerrit/#/q/46730f7>`_
  `VTN-167 <https://jira.opendaylight.org/browse/VTN-167>`_
  : Bug 9225: Upgrade Apache Tomcat for VTN coordinator to 7.0.81.
* `a6abc3f <https://git.opendaylight.org/gerrit/#/q/a6abc3f>`_
  : Bump odlparent 2.0.4 to 2.0.5
* `f23614f <https://git.opendaylight.org/gerrit/#/q/f23614f>`_
  : Bump versions by x.y.(z+1)
* `52dd810 <https://git.opendaylight.org/gerrit/#/q/52dd810>`_
  `VTN-164 <https://jira.opendaylight.org/browse/VTN-164>`_
  : Bug 9174: Fix for VTN Coordinator Flowlistentry Creation failure

