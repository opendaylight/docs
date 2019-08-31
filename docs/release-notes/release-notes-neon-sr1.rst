Neon-SR1 Release Notes
======================

This page details changes and bug fixes between the Neon Release
and the Neon Stability Release 1 (Neon-SR1) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `c1089dd9 <https://git.opendaylight.org/gerrit/#/q/c1089dd9>`_
  : Bump mdsal to 3.0.8
* `6991e15b <https://git.opendaylight.org/gerrit/#/q/6991e15b>`_
  : Bump yangtools to 2.1.10
* `babe70a9 <https://git.opendaylight.org/gerrit/#/q/babe70a9>`_
  : Bump odlparent to 4.0.10
* `beb4b5e9 <https://git.opendaylight.org/gerrit/#/q/beb4b5e9>`_
  : Fix warnings in aaa-filterchain
* `fb290c26 <https://git.opendaylight.org/gerrit/#/q/fb290c26>`_
  : Remove dependency on features-test
* `2135c6e1 <https://git.opendaylight.org/gerrit/#/q/2135c6e1>`_
  `AAA-174 <https://jira.opendaylight.org/browse/AAA-174>`_
  : AAA-174 : Don't reuse JDBC connection


bgpcep
------
* `39e546e47 <https://git.opendaylight.org/gerrit/#/q/39e546e47>`_
  : Remove OSGi dependency from bgp modules
* `2fcc58b17 <https://git.opendaylight.org/gerrit/#/q/2fcc58b17>`_
  : Fix NPE when no node present in PCEP topology config
* `da635370d <https://git.opendaylight.org/gerrit/#/q/da635370d>`_
  : Bump mdsal to 3.0.8
* `dce4ba94e <https://git.opendaylight.org/gerrit/#/q/dce4ba94e>`_
  : Bump yangtools to 2.1.10
* `98c934b60 <https://git.opendaylight.org/gerrit/#/q/98c934b60>`_
  : Bump odlparent to 4.0.10
* `c706ebc82 <https://git.opendaylight.org/gerrit/#/q/c706ebc82>`_
  : Do not use JdkFutureAdapters in BgpPeerRpc
* `72e0ac89b <https://git.opendaylight.org/gerrit/#/q/72e0ac89b>`_
  : Fix routing-policy-config
* `032613ea1 <https://git.opendaylight.org/gerrit/#/q/032613ea1>`_
  : Remove use of AttrBuilders
* `57b97e345 <https://git.opendaylight.org/gerrit/#/q/57b97e345>`_
  : Fix logging mismatches
* `d1687e943 <https://git.opendaylight.org/gerrit/#/q/d1687e943>`_
  : Fix day-1 typo in LU parser registration
* `826f795a8 <https://git.opendaylight.org/gerrit/#/q/826f795a8>`_
  `PCEP-862 <https://jira.opendaylight.org/browse/PCEP-862>`_
  : Use only our advertized tables to send routes
* `0327cfcbe <https://git.opendaylight.org/gerrit/#/q/0327cfcbe>`_
  `PCEP-868 <https://jira.opendaylight.org/browse/PCEP-868>`_
  : Do not allow parameter 255 to be registered
* `f6d707ef4 <https://git.opendaylight.org/gerrit/#/q/f6d707ef4>`_
  `PCEP-870 <https://jira.opendaylight.org/browse/PCEP-870>`_
  : Init data-broker before topo-provider registration to prevent NPE


controller
----------
* `a60b5ffab1 <https://git.opendaylight.org/gerrit/#/q/a60b5ffab1>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Allow SnapshotBackedReadTransaction customization
* `6141189f56 <https://git.opendaylight.org/gerrit/#/q/6141189f56>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Enqueue purge payload directly
* `e67356302f <https://git.opendaylight.org/gerrit/#/q/e67356302f>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Make sure we purge transaction on abort
* `faa7cb4fe5 <https://git.opendaylight.org/gerrit/#/q/faa7cb4fe5>`_
  `CONTROLLER-1884 <https://jira.opendaylight.org/browse/CONTROLLER-1884>`_
  : Improve segmented journal JMX beans
* `4729fd5af0 <https://git.opendaylight.org/gerrit/#/q/4729fd5af0>`_
  `CONTROLLER-1884 <https://jira.opendaylight.org/browse/CONTROLLER-1884>`_
  : Integrate SegmentedJournalActor with metrics/JMX
* `e7fb0b91ad <https://git.opendaylight.org/gerrit/#/q/e7fb0b91ad>`_
  `CONTROLLER-1884 <https://jira.opendaylight.org/browse/CONTROLLER-1884>`_
  : Change segmented journal naming
* `31b74822f3 <https://git.opendaylight.org/gerrit/#/q/31b74822f3>`_
  : Fix memory leak in BA mount service
* `538d2da5d5 <https://git.opendaylight.org/gerrit/#/q/538d2da5d5>`_
  `CONTROLLER-1891 <https://jira.opendaylight.org/browse/CONTROLLER-1891>`_
  : Reset snapshot progress after timeout has been hit
* `2f80081a8d <https://git.opendaylight.org/gerrit/#/q/2f80081a8d>`_
  : Bump mdsal to 3.0.8
* `71295dcf31 <https://git.opendaylight.org/gerrit/#/q/71295dcf31>`_
  : Bump yangtools to 2.1.10
* `6d1c0b416b <https://git.opendaylight.org/gerrit/#/q/6d1c0b416b>`_
  : Bump odlparent to 4.0.10
* `4dba2522d5 <https://git.opendaylight.org/gerrit/#/q/4dba2522d5>`_
  : Harden ShardCommitCoordinator to survive EOS write retries
* `5b685df28d <https://git.opendaylight.org/gerrit/#/q/5b685df28d>`_
  `CONTROLLER-1890 <https://jira.opendaylight.org/browse/CONTROLLER-1890>`_
  : Do not break actor containment
* `2625373123 <https://git.opendaylight.org/gerrit/#/q/2625373123>`_
  : Fix checkstyle in toaster-it
* `6b4917d4a6 <https://git.opendaylight.org/gerrit/#/q/6b4917d4a6>`_
  : Fix transaction mocking
* `9ed0eb9936 <https://git.opendaylight.org/gerrit/#/q/9ed0eb9936>`_
  : Migrate to use openCursor()
* `d751e0500f <https://git.opendaylight.org/gerrit/#/q/d751e0500f>`_
  : Fix logging messages
* `ef8af945bb <https://git.opendaylight.org/gerrit/#/q/ef8af945bb>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Use ReusableNormalizedNodePruner in PruningDataTreeModification
* `dd022cfb43 <https://git.opendaylight.org/gerrit/#/q/dd022cfb43>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Add ReusableNormalizedNodePruner
* `0e832d6416 <https://git.opendaylight.org/gerrit/#/q/0e832d6416>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Move checkNotSealed() to addBuilder()
* `aa0eca0dd9 <https://git.opendaylight.org/gerrit/#/q/aa0eca0dd9>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Remove NormalizedNodePruner.findSchemaNodeForNodePath()
* `7a1459bb08 <https://git.opendaylight.org/gerrit/#/q/7a1459bb08>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Do not use Optional in NormalizedNodeWrapper
* `085edd3104 <https://git.opendaylight.org/gerrit/#/q/085edd3104>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Hide NormalizedNodeBuilderWrapper
* `d91ccfe0d0 <https://git.opendaylight.org/gerrit/#/q/d91ccfe0d0>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Remove NormalizedNodePruner.SimpleStack
* `807230d67b <https://git.opendaylight.org/gerrit/#/q/807230d67b>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Clean up NormalizedNodePruner
* `21775f1de8 <https://git.opendaylight.org/gerrit/#/q/21775f1de8>`_
  : Update javadoc links
* `e90ce260e7 <https://git.opendaylight.org/gerrit/#/q/e90ce260e7>`_
  : Fix test mocking
* `fb58f8baa5 <https://git.opendaylight.org/gerrit/#/q/fb58f8baa5>`_
  : Add missing license headers
* `c5d0e62df3 <https://git.opendaylight.org/gerrit/#/q/c5d0e62df3>`_
  : Use a simple list for string code table
* `6d0c1f1a5b <https://git.opendaylight.org/gerrit/#/q/6d0c1f1a5b>`_
  `CONTROLLER-1752 <https://jira.opendaylight.org/browse/CONTROLLER-1752>`_
  : Improve NormalizedNodeInputStreamReader defensiveness
* `fe6e0d5cf3 <https://git.opendaylight.org/gerrit/#/q/fe6e0d5cf3>`_
  : Fix segmented journal replay
* `11f5c86481 <https://git.opendaylight.org/gerrit/#/q/11f5c86481>`_
  : Introduce candidate election timeout divisor
* `1a181f5371 <https://git.opendaylight.org/gerrit/#/q/1a181f5371>`_
  `JDK-8206399 <https://jira.opendaylight.org/browse/JDK-8206399>`_
  : Prevent a CME during actor instantiation
* `99b2dc92f6 <https://git.opendaylight.org/gerrit/#/q/99b2dc92f6>`_
  `CONTROLLER-1884 <https://jira.opendaylight.org/browse/CONTROLLER-1884>`_
  : Add SegmentedFileJournal
* `90024fe4d1 <https://git.opendaylight.org/gerrit/#/q/90024fe4d1>`_
  : Cleanup java.util.Optional references
* `e8891e7fcf <https://git.opendaylight.org/gerrit/#/q/e8891e7fcf>`_
  `MDSAL-422 <https://jira.opendaylight.org/browse/MDSAL-422>`_
  : Account for reported UNMODIFIED nodes


coe
---
* `367b394 <https://git.opendaylight.org/gerrit/#/q/367b394>`_
  : Bump mdsal to 3.0.8
* `d6cd13e <https://git.opendaylight.org/gerrit/#/q/d6cd13e>`_
  : Bump odlparent to 4.0.10
* `dabada1 <https://git.opendaylight.org/gerrit/#/q/dabada1>`_
  : Migrate from godep to go modules


daexim
------
* `ee12f8c <https://git.opendaylight.org/gerrit/#/q/ee12f8c>`_
  : Bump mdsal to 3.0.8
* `bb928f3 <https://git.opendaylight.org/gerrit/#/q/bb928f3>`_
  : Bump odlparent to 4.0.10


genius
------
* `470a29f3 <https://git.opendaylight.org/gerrit/#/q/470a29f3>`_
  : Bump mdsal to 3.0.8
* `07b6324a <https://git.opendaylight.org/gerrit/#/q/07b6324a>`_
  : Bump yangtools to 2.1.10
* `b01dd65e <https://git.opendaylight.org/gerrit/#/q/b01dd65e>`_
  : Bump odlparent to 4.0.10
* `0d05116c <https://git.opendaylight.org/gerrit/#/q/0d05116c>`_
  : Fix build with Java 11
* `6b639640 <https://git.opendaylight.org/gerrit/#/q/6b639640>`_
  : Use scope=provided for karaf shell
* `77a806e5 <https://git.opendaylight.org/gerrit/#/q/77a806e5>`_
  : Drop Karaf console dependency from genius-api
* `ce8862ec <https://git.opendaylight.org/gerrit/#/q/ce8862ec>`_
  `NETVIRT-1262 <https://jira.opendaylight.org/browse/NETVIRT-1262>`_
  : NETVIRT-1262: Tep's are not part of transport zone when a transport zone is removed and added from NB


infrautils
----------
* `75cc0989 <https://git.opendaylight.org/gerrit/#/q/75cc0989>`_
  : Bump odlparent to 4.0.10
* `b4e9bd63 <https://git.opendaylight.org/gerrit/#/q/b4e9bd63>`_
  : Allow NamedLocks to be instantiated
* `c379c2ce <https://git.opendaylight.org/gerrit/#/q/c379c2ce>`_
  : diagstatus : remote status summary enhancement


integration/distribution
------------------------
* `b622dbb <https://git.opendaylight.org/gerrit/#/q/b622dbb>`_
  : Bump mdsal to 3.0.8
* `2e4f90c <https://git.opendaylight.org/gerrit/#/q/2e4f90c>`_
  : Bump yangtools to 2.1.10
* `74ea66f <https://git.opendaylight.org/gerrit/#/q/74ea66f>`_
  : Bump odlparent to 4.0.10
* `8ae15a8 <https://git.opendaylight.org/gerrit/#/q/8ae15a8>`_
  : Add SNMP4SDN to distribution for Neon SR1
* `9e5ad0e <https://git.opendaylight.org/gerrit/#/q/9e5ad0e>`_
  : add telemetry to distribution for Neon SR1 release
* `9b134b9 <https://git.opendaylight.org/gerrit/#/q/9b134b9>`_
  : Enable TPCE in Neon distribution
* `e80da7d <https://git.opendaylight.org/gerrit/#/q/e80da7d>`_
  : Add a dependency-convergence profile
* `60f2456 <https://git.opendaylight.org/gerrit/#/q/60f2456>`_
  : Update version after neon release
* `3bf100e <https://git.opendaylight.org/gerrit/#/q/3bf100e>`_
  : Update Neon platform version
* `8763647 <https://git.opendaylight.org/gerrit/#/q/8763647>`_
  : Adjust common distribution for neon release


lispflowmapping
---------------
* `2ea5b248 <https://git.opendaylight.org/gerrit/#/q/2ea5b248>`_
  : Bump mdsal to 3.0.8
* `ee907bfb <https://git.opendaylight.org/gerrit/#/q/ee907bfb>`_
  : Bump odlparent to 4.0.10
* `76271adb <https://git.opendaylight.org/gerrit/#/q/76271adb>`_
  : Update branch names in documentation
* `7ac0a8ee <https://git.opendaylight.org/gerrit/#/q/7ac0a8ee>`_
  : Fix links in docs
* `ade5c826 <https://git.opendaylight.org/gerrit/#/q/ade5c826>`_
  : Add additional missing images to docs
* `9793cb10 <https://git.opendaylight.org/gerrit/#/q/9793cb10>`_
  : Add missing image to docs


netconf
-------
* `2401a0b4e <https://git.opendaylight.org/gerrit/#/q/2401a0b4e>`_
  `NETCONF-614 <https://jira.opendaylight.org/browse/NETCONF-614>`_
  : Capture server key before returning from callback
* `0a078764e <https://git.opendaylight.org/gerrit/#/q/0a078764e>`_
  : Fixed deadlock between AsyncSshHandlerReader and AsyncSshHandler
* `3069638e9 <https://git.opendaylight.org/gerrit/#/q/3069638e9>`_
  : Bump mdsal to 3.0.8
* `da68923fc <https://git.opendaylight.org/gerrit/#/q/da68923fc>`_
  : Bump yangtools to 2.1.10
* `effdc431d <https://git.opendaylight.org/gerrit/#/q/effdc431d>`_
  : Bump odlparent to 4.0.10
* `c59a0370a <https://git.opendaylight.org/gerrit/#/q/c59a0370a>`_
  : Fixed deadlock in AsyncSshHandlerWriter
* `154913e8c <https://git.opendaylight.org/gerrit/#/q/154913e8c>`_
  : Migrate away from deprecated put() method
* `208f1cbfe <https://git.opendaylight.org/gerrit/#/q/208f1cbfe>`_
  : Reduce use of getDataChildByName()
* `982e75ece <https://git.opendaylight.org/gerrit/#/q/982e75ece>`_
  : Reduce the use of AttrBuilders
* `f0b0a9950 <https://git.opendaylight.org/gerrit/#/q/f0b0a9950>`_
  : Fix logging arguments
* `7e1c9a3ba <https://git.opendaylight.org/gerrit/#/q/7e1c9a3ba>`_
  : Fix logging arguments
* `6c911783f <https://git.opendaylight.org/gerrit/#/q/6c911783f>`_
  : Remove a FindBugs suppression


netvirt
-------
* `666f05f21 <https://git.opendaylight.org/gerrit/#/q/666f05f21>`_
  : Bump mdsal to 3.0.8
* `c07052ee0 <https://git.opendaylight.org/gerrit/#/q/c07052ee0>`_
  : Bump odlparent to 4.0.10
* `c9478fee8 <https://git.opendaylight.org/gerrit/#/q/c9478fee8>`_
  : Stale flows in ECMP
* `80e893c54 <https://git.opendaylight.org/gerrit/#/q/80e893c54>`_
  : Remove dependency of apache.felix.configadmin
* `1b1dfc23e <https://git.opendaylight.org/gerrit/#/q/1b1dfc23e>`_
  : Not generating extra-route config fault alarm
* `5abf79e3e <https://git.opendaylight.org/gerrit/#/q/5abf79e3e>`_
  : Stale flows in ELAN tables
* `ceedaec94 <https://git.opendaylight.org/gerrit/#/q/ceedaec94>`_
  : Add missing initialisation in UpgradeStateListener
* `8d4988f8c <https://git.opendaylight.org/gerrit/#/q/8d4988f8c>`_
  `NETVIRT-1562 <https://jira.opendaylight.org/browse/NETVIRT-1562>`_
  : Netvirt build failing - dependency missing in pom


neutron
-------
* `64011159 <https://git.opendaylight.org/gerrit/#/q/64011159>`_
  : Bump mdsal to 3.0.8
* `06bddb10 <https://git.opendaylight.org/gerrit/#/q/06bddb10>`_
  : Bump odlparent to 4.0.10


openflowplugin
--------------
* `9597e32b2 <https://git.opendaylight.org/gerrit/#/q/9597e32b2>`_
  : Remove Optional.ofNullable() antipatterns
* `db56cb2c6 <https://git.opendaylight.org/gerrit/#/q/db56cb2c6>`_
  : Adjust docs version for Neon
* `f5324b7a9 <https://git.opendaylight.org/gerrit/#/q/f5324b7a9>`_
  : Bump mdsal to 3.0.8
* `cb1cb7b31 <https://git.opendaylight.org/gerrit/#/q/cb1cb7b31>`_
  : Bump odlparent to 4.0.10
* `de206f770 <https://git.opendaylight.org/gerrit/#/q/de206f770>`_
  : Prevent Ipv4Address rewrap in OfToSalIpv4DstCase
* `d53aa00d9 <https://git.opendaylight.org/gerrit/#/q/d53aa00d9>`_
  `OPNFLWPLUG-1063 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1063>`_
  : Fix IpConversionUtil.extractIpv4AddressMask()
* `619f4810e <https://git.opendaylight.org/gerrit/#/q/619f4810e>`_
  `OPNFLWPLUG-1067 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1067>`_
  : Pre-construct prefix masks
* `918eb59fc <https://git.opendaylight.org/gerrit/#/q/918eb59fc>`_
  `OPNFLWPLUG-1067 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1067>`_
  : Optimize IpConversionUtil.extractIpv4AddressMask()
* `8a2fd6335 <https://git.opendaylight.org/gerrit/#/q/8a2fd6335>`_
  `OPNFLWPLUG-1067 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1067>`_
  : Optimize IpConversionUtil.isArbitraryBitMask() string splitting
* `b67eb872b <https://git.opendaylight.org/gerrit/#/q/b67eb872b>`_
  `OPNFLWPLUG-1067 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1067>`_
  : Remove duplicate IpConversionUtil.isArbitraryBitMask()
* `001fc170c <https://git.opendaylight.org/gerrit/#/q/001fc170c>`_
  `OPNFLWPLUG-1067 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1067>`_
  : Optimize IpConversionUtil.createArbitraryBitMask()
* `bfaae906d <https://git.opendaylight.org/gerrit/#/q/bfaae906d>`_
  `OPNFLWPLUG-1066 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1066>`_
  : Remove Objects.{is,non}Null abuse
* `a400c3047 <https://git.opendaylight.org/gerrit/#/q/a400c3047>`_
  `OPNFLWPLUG-1067 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1067>`_
  : Optimize splitter usage
* `3a3c87703 <https://git.opendaylight.org/gerrit/#/q/3a3c87703>`_
  `OPNFLWPLUG-1067 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1067>`_
  : Optimize IpConversionUtil.extractIpv4Address()
* `217573041 <https://git.opendaylight.org/gerrit/#/q/217573041>`_
  `OPNFLWPLUG-1067 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1067>`_
  : Remove Ipv{4,6}Address-based splitToParts() methods
* `f44476a9e <https://git.opendaylight.org/gerrit/#/q/f44476a9e>`_
  : Use ClassToInstanceMap instead of a HashMap


ovsdb
-----
* `b05a39b68 <https://git.opendaylight.org/gerrit/#/q/b05a39b68>`_
  : Bump mdsal to 3.0.8
* `e733648c9 <https://git.opendaylight.org/gerrit/#/q/e733648c9>`_
  : Bump odlparent to 4.0.10


serviceutils
------------
* `d178206 <https://git.opendaylight.org/gerrit/#/q/d178206>`_
  : Bump mdsal to 3.0.8
* `818d5f0 <https://git.opendaylight.org/gerrit/#/q/818d5f0>`_
  : Bump yangtools to 2.1.10
* `b655fb8 <https://git.opendaylight.org/gerrit/#/q/b655fb8>`_
  : Bump odlparent to 4.0.10


sfc
---
* `cd8ed4ed <https://git.opendaylight.org/gerrit/#/q/cd8ed4ed>`_
  : Bump mdsal to 3.0.8
* `7eac5285 <https://git.opendaylight.org/gerrit/#/q/7eac5285>`_
  : Bump odlparent to 4.0.10

