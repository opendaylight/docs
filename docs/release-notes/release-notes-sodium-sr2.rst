Sodium-SR2 Release Notes
========================

This page details changes and bug fixes between the Sodium Stability Release 1 (Sodium-SR1)
and the Sodium Stability Release 2 (Sodium-SR2) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `ad7885e2 <https://git.opendaylight.org/gerrit/#/q/ad7885e2>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `46427ae1 <https://git.opendaylight.org/gerrit/#/q/46427ae1>`_
  `AAA-193 <https://jira.opendaylight.org/browse/AAA-193>`_
  : Catch missing arguments in python3
* `5b45485a <https://git.opendaylight.org/gerrit/#/q/5b45485a>`_
  : Drop dependencies on commons-text
* `e2bf56b7 <https://git.opendaylight.org/gerrit/#/q/e2bf56b7>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `f5320468 <https://git.opendaylight.org/gerrit/#/q/f5320468>`_
  : Updated the user guide after testing
* `9d954789 <https://git.opendaylight.org/gerrit/#/q/9d954789>`_
  : Remove comons-beanutils overrides
* `ef4c856e <https://git.opendaylight.org/gerrit/#/q/ef4c856e>`_
  `AAA-114 <https://jira.opendaylight.org/browse/AAA-114>`_
  : Fix idmtool.py for handling errors
* `aed88fc4 <https://git.opendaylight.org/gerrit/#/q/aed88fc4>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7
* `6790a800 <https://git.opendaylight.org/gerrit/#/q/6790a800>`_
  : Remove install/deploy plugin configuration
* `653a7430 <https://git.opendaylight.org/gerrit/#/q/653a7430>`_
  : Fixup aaa-cert-mdsal pyang warnings
* `3df33ea7 <https://git.opendaylight.org/gerrit/#/q/3df33ea7>`_
  : Update docs header to Sodium in stable/sodium


bgpcep
------
* `de1990344 <https://git.opendaylight.org/gerrit/#/q/de1990344>`_
  `BGPCEP-893 <https://jira.opendaylight.org/browse/BGPCEP-893>`_
  : Fix buffer read for unsupported LLGR Safi
* `61083064d <https://git.opendaylight.org/gerrit/#/q/61083064d>`_
  `BGPCEP-892 <https://jira.opendaylight.org/browse/BGPCEP-892>`_
  : Ignore unknown subobjects while parsing RRO/ERO objects in PCEP messages
* `57741dafc <https://git.opendaylight.org/gerrit/#/q/57741dafc>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `d37ac3d4b <https://git.opendaylight.org/gerrit/#/q/d37ac3d4b>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `b40db38a6 <https://git.opendaylight.org/gerrit/#/q/b40db38a6>`_
  `BGPCEP-878 <https://jira.opendaylight.org/browse/BGPCEP-878>`_
  : Fix CSIT regression due to BGPCEP-878 fix
* `3aa922d3e <https://git.opendaylight.org/gerrit/#/q/3aa922d3e>`_
  `BGPCEP-889 <https://jira.opendaylight.org/browse/BGPCEP-889>`_
  : Register PCEP session to stats handler only after it is fully initialized
* `12f9f73ab <https://git.opendaylight.org/gerrit/#/q/12f9f73ab>`_
  `BGPCEP-878 <https://jira.opendaylight.org/browse/BGPCEP-878>`_
  : Fix NPE while accessing DomTxChain when bgp/app peer singleton service is restarted
* `d50e0d3a4 <https://git.opendaylight.org/gerrit/#/q/d50e0d3a4>`_
  `BGPCEP-884 <https://jira.opendaylight.org/browse/BGPCEP-884>`_
  : Address deadlock scenarios in BGP peer, session mgmt code
* `aa5d512b5 <https://git.opendaylight.org/gerrit/#/q/aa5d512b5>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7
* `78e77c6ef <https://git.opendaylight.org/gerrit/#/q/78e77c6ef>`_
  `BGPCEP-880 <https://jira.opendaylight.org/browse/BGPCEP-880>`_
  : Fix bgp-segment-routing
* `265383c5a <https://git.opendaylight.org/gerrit/#/q/265383c5a>`_
  `BGPCEP-880 <https://jira.opendaylight.org/browse/BGPCEP-880>`_
  : Fix rsvp.yang
* `6a9c0f66e <https://git.opendaylight.org/gerrit/#/q/6a9c0f66e>`_
  : Remove unused imports
* `7bda69703 <https://git.opendaylight.org/gerrit/#/q/7bda69703>`_
  : Fixup ProtectionCommonParser.serializeBody()


controller
----------
* `1c3bbe5b76 <https://git.opendaylight.org/gerrit/#/q/1c3bbe5b76>`_
  `CONTROLLER-1927 <https://jira.opendaylight.org/browse/CONTROLLER-1927>`_
  : Revert "Leader should always apply modifications as local"
* `8b74aa768b <https://git.opendaylight.org/gerrit/#/q/8b74aa768b>`_
  `CONTROLLER-1927 <https://jira.opendaylight.org/browse/CONTROLLER-1927>`_
  : Leader should always apply modifications as local
* `b167cd30f0 <https://git.opendaylight.org/gerrit/#/q/b167cd30f0>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `6294d3756c <https://git.opendaylight.org/gerrit/#/q/6294d3756c>`_
  : Remove unneeded checkstyle suppression
* `0c8422a41d <https://git.opendaylight.org/gerrit/#/q/0c8422a41d>`_
  : Remove jsr173-ri from dependencies
* `4aa141bc1c <https://git.opendaylight.org/gerrit/#/q/4aa141bc1c>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `2dbaea6573 <https://git.opendaylight.org/gerrit/#/q/2dbaea6573>`_
  : Bail faster on not found module
* `07c18ba075 <https://git.opendaylight.org/gerrit/#/q/07c18ba075>`_
  : Add javadoc links to yangtools-docs and mdsal-docs
* `2cb624b5f1 <https://git.opendaylight.org/gerrit/#/q/2cb624b5f1>`_
  `CONTROLLER-1914 <https://jira.opendaylight.org/browse/CONTROLLER-1914>`_
  : Allow shard settle timeout to be tuned
* `a0e649cf20 <https://git.opendaylight.org/gerrit/#/q/a0e649cf20>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7
* `b182c31152 <https://git.opendaylight.org/gerrit/#/q/b182c31152>`_
  `CONTROLLER-1889 <https://jira.opendaylight.org/browse/CONTROLLER-1889>`_
  : Move DataTreeCandidate extraction to where it is applied
* `f1ecd20014 <https://git.opendaylight.org/gerrit/#/q/f1ecd20014>`_
  `CONTROLLER-1889 <https://jira.opendaylight.org/browse/CONTROLLER-1889>`_
  : Rework AbstractNormalizedNodePruner
* `67afa21bc1 <https://git.opendaylight.org/gerrit/#/q/67afa21bc1>`_
  `CONTROLLER-1626 <https://jira.opendaylight.org/browse/CONTROLLER-1626>`_
  : Allow AbstractClientActor generation to start from non-zero
* `e99739f7ee <https://git.opendaylight.org/gerrit/#/q/e99739f7ee>`_
  `CONTROLLER-1626 <https://jira.opendaylight.org/browse/CONTROLLER-1626>`_
  : Add the ability to report known connected clients
* `f176c27a04 <https://git.opendaylight.org/gerrit/#/q/f176c27a04>`_
  : Add locate-shard RPC
* `ee49d6d1b1 <https://git.opendaylight.org/gerrit/#/q/ee49d6d1b1>`_
  : Cleanup cluster-admin.yang
* `aa92ac9de4 <https://git.opendaylight.org/gerrit/#/q/aa92ac9de4>`_
  : Use ConcurrentHashMap.newKeySet()
* `90ab895c08 <https://git.opendaylight.org/gerrit/#/q/90ab895c08>`_
  : Remove unneeded version declaration
* `f81d95dd83 <https://git.opendaylight.org/gerrit/#/q/f81d95dd83>`_
  : Remove unused model imports


coe
---
* `50aa22b <https://git.opendaylight.org/gerrit/#/q/50aa22b>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `2f98aaf <https://git.opendaylight.org/gerrit/#/q/2f98aaf>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `803497e <https://git.opendaylight.org/gerrit/#/q/803497e>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7
* `2643b77 <https://git.opendaylight.org/gerrit/#/q/2643b77>`_
  : Update docs header to Sodium in stable/sodium


daexim
------
* `e7eb029 <https://git.opendaylight.org/gerrit/#/q/e7eb029>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `ede78ed <https://git.opendaylight.org/gerrit/#/q/ede78ed>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `916cf30 <https://git.opendaylight.org/gerrit/#/q/916cf30>`_
  `DAEXIM-15 <https://jira.opendaylight.org/browse/DAEXIM-15>`_
  : On daexim boot import, check models only if models file is present
* `beae3f8 <https://git.opendaylight.org/gerrit/#/q/beae3f8>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7


genius
------
* `089f256f <https://git.opendaylight.org/gerrit/#/q/089f256f>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `65901167 <https://git.opendaylight.org/gerrit/#/q/65901167>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `a247a697 <https://git.opendaylight.org/gerrit/#/q/a247a697>`_
  `MDSAL-389 <https://jira.opendaylight.org/browse/MDSAL-389>`_
  : Expose TypedReadTransaction.exists(InstanceIdentifier)
* `9b3bd610 <https://git.opendaylight.org/gerrit/#/q/9b3bd610>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7


infrautils
----------
* `ceea062f <https://git.opendaylight.org/gerrit/#/q/ceea062f>`_
  : Bump to odlparent-5.0.5
* `b00af813 <https://git.opendaylight.org/gerrit/#/q/b00af813>`_
  : Bump odlparent to 5.0.4
* `9356d396 <https://git.opendaylight.org/gerrit/#/q/9356d396>`_
  `INFRAUTILS-66 <https://jira.opendaylight.org/browse/INFRAUTILS-66>`_
  : Disable ThreadsWatcher by default
* `704d0942 <https://git.opendaylight.org/gerrit/#/q/704d0942>`_
  : Tolerate platforms without thread management
* `83a65fae <https://git.opendaylight.org/gerrit/#/q/83a65fae>`_
  : Fix NPE when updating metrics configuration
* `b9bcab3e <https://git.opendaylight.org/gerrit/#/q/b9bcab3e>`_
  : Bump to odlparent-5.0.3


integration/distribution
------------------------
* `d575a48 <https://git.opendaylight.org/gerrit/#/q/d575a48>`_
  : Bump odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `366f17f <https://git.opendaylight.org/gerrit/#/q/366f17f>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `822fc17 <https://git.opendaylight.org/gerrit/#/q/822fc17>`_
  : Update version after sodium SR1
* `15acae6 <https://git.opendaylight.org/gerrit/#/q/15acae6>`_
  : Add missing packaging pom
* `f5f03af <https://git.opendaylight.org/gerrit/#/q/f5f03af>`_
  `INTDIST-106 <https://jira.opendaylight.org/browse/INTDIST-106>`_
  : Add Sodium ONAP distribution
* `def120f <https://git.opendaylight.org/gerrit/#/q/def120f>`_
  : Re-add TPCE to sodium
* `527ca66 <https://git.opendaylight.org/gerrit/#/q/527ca66>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7
* `29f7c07 <https://git.opendaylight.org/gerrit/#/q/29f7c07>`_
  : Fixup platform versions


lispflowmapping
---------------
* `f4f2fab8 <https://git.opendaylight.org/gerrit/#/q/f4f2fab8>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `aef02e81 <https://git.opendaylight.org/gerrit/#/q/aef02e81>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `66bffbec <https://git.opendaylight.org/gerrit/#/q/66bffbec>`_
  : Fix junit-addons scope
* `d844b607 <https://git.opendaylight.org/gerrit/#/q/d844b607>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7


netconf
-------
* `fc011b75e <https://git.opendaylight.org/gerrit/#/q/fc011b75e>`_
  : Fixed wrong exception types
* `dde16f406 <https://git.opendaylight.org/gerrit/#/q/dde16f406>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `4500c9cbb <https://git.opendaylight.org/gerrit/#/q/4500c9cbb>`_
  `NETCONF-652 <https://jira.opendaylight.org/browse/NETCONF-652>`_
  : Add namespace to action request XML
* `ad3308e23 <https://git.opendaylight.org/gerrit/#/q/ad3308e23>`_
  : Remove jsr173-ri from dependencies
* `75908d20b <https://git.opendaylight.org/gerrit/#/q/75908d20b>`_
  : Remove websocket-server override
* `42366fd3b <https://git.opendaylight.org/gerrit/#/q/42366fd3b>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `60da4823e <https://git.opendaylight.org/gerrit/#/q/60da4823e>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7
* `9d3a276b7 <https://git.opendaylight.org/gerrit/#/q/9d3a276b7>`_
  : Update for sshd-2.3.0 changes
* `8f20fa402 <https://git.opendaylight.org/gerrit/#/q/8f20fa402>`_
  : Correctly close NormalizedNodeStreamWriters
* `f4cee0dda <https://git.opendaylight.org/gerrit/#/q/f4cee0dda>`_
  : Properly close stream writer
* `189d139d9 <https://git.opendaylight.org/gerrit/#/q/189d139d9>`_
  : Do not use toString() in looging messages
* `2442f207c <https://git.opendaylight.org/gerrit/#/q/2442f207c>`_
  : Fix config/oper reconciliation for leaf-lists
* `98620c855 <https://git.opendaylight.org/gerrit/#/q/98620c855>`_
  : Lower visibility to package
* `bbaf1cca0 <https://git.opendaylight.org/gerrit/#/q/bbaf1cca0>`_
  : Acquire RFC8528 mount point map
* `27887ec99 <https://git.opendaylight.org/gerrit/#/q/27887ec99>`_
  : Apply modernizations
* `349af093f <https://git.opendaylight.org/gerrit/#/q/349af093f>`_
  : Untangle NetconfDevice setup
* `6fad3d14d <https://git.opendaylight.org/gerrit/#/q/6fad3d14d>`_
  : Convert to using requireNonNull()


netvirt
-------
* `a3e16e30a <https://git.opendaylight.org/gerrit/#/q/a3e16e30a>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `2a5da734f <https://git.opendaylight.org/gerrit/#/q/2a5da734f>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `f82e3f867 <https://git.opendaylight.org/gerrit/#/q/f82e3f867>`_
  `NETVIRT-1636 <https://jira.opendaylight.org/browse/NETVIRT-1636>`_
  : Check network presence
* `6d7370b36 <https://git.opendaylight.org/gerrit/#/q/6d7370b36>`_
  `NETVIRT-1636 <https://jira.opendaylight.org/browse/NETVIRT-1636>`_
  : Fix another VpnSubnetRouteHandler NPE source
* `eed19f721 <https://git.opendaylight.org/gerrit/#/q/eed19f721>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7
* `8fdf7aba9 <https://git.opendaylight.org/gerrit/#/q/8fdf7aba9>`_
  `NETVIRT-1636 <https://jira.opendaylight.org/browse/NETVIRT-1636>`_
  : Fix VpnSubnetRouteHandler handling of getSubnetToDpn()
* `6a1bd2bd0 <https://git.opendaylight.org/gerrit/#/q/6a1bd2bd0>`_
  `NETVIRT-1636 <https://jira.opendaylight.org/browse/NETVIRT-1636>`_
  : Fix Acl.getAccessListEntries() NPE


neutron
-------
* `d2d845ff <https://git.opendaylight.org/gerrit/#/q/d2d845ff>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `ccee8dd8 <https://git.opendaylight.org/gerrit/#/q/ccee8dd8>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `bc91bd81 <https://git.opendaylight.org/gerrit/#/q/bc91bd81>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7


openflowplugin
--------------
* `e10c2f298 <https://git.opendaylight.org/gerrit/#/q/e10c2f298>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `226e45a26 <https://git.opendaylight.org/gerrit/#/q/226e45a26>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `2fe595fdd <https://git.opendaylight.org/gerrit/#/q/2fe595fdd>`_
  : Failed to cancel service reconciliation, When controller become slave.
* `f50ff6361 <https://git.opendaylight.org/gerrit/#/q/f50ff6361>`_
  `OPNFLWPLUG-1078 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1078>`_
  : OPNFLWPLUG-1078: Notify device TLS authentication failure messages
* `48475e2dc <https://git.opendaylight.org/gerrit/#/q/48475e2dc>`_
  `OPNFLWPLUG-1075 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1075>`_
  : OPNFLWPLUG-1075: Making Device Oper transactions atomic
* `bb626f8e7 <https://git.opendaylight.org/gerrit/#/q/bb626f8e7>`_
  : Read action throwing NPE
* `0a7f87bd5 <https://git.opendaylight.org/gerrit/#/q/0a7f87bd5>`_
  : Use String(byte[], Charset)
* `0690fb0ce <https://git.opendaylight.org/gerrit/#/q/0690fb0ce>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7
* `2c10245e2 <https://git.opendaylight.org/gerrit/#/q/2c10245e2>`_
  : Fix meter-id overlap


ovsdb
-----
* `e71e31449 <https://git.opendaylight.org/gerrit/#/q/e71e31449>`_
  `OVSDB-454 <https://jira.opendaylight.org/browse/OVSDB-454>`_
  : Get rid of useless (Hwvtep)SouthboundProvider thread
* `75ca1ad0c <https://git.opendaylight.org/gerrit/#/q/75ca1ad0c>`_
  `OVSDB-454 <https://jira.opendaylight.org/browse/OVSDB-454>`_
  : Migrate OvsdbDataTreeChangeListenerTest
* `90961ba06 <https://git.opendaylight.org/gerrit/#/q/90961ba06>`_
  `OVSDB-454 <https://jira.opendaylight.org/browse/OVSDB-454>`_
  : Eliminate server startup threads
* `9b597af70 <https://git.opendaylight.org/gerrit/#/q/9b597af70>`_
  `OVSDB-331 <https://jira.opendaylight.org/browse/OVSDB-331>`_
  : Add support for using epoll Netty transport
* `85b6d1a08 <https://git.opendaylight.org/gerrit/#/q/85b6d1a08>`_
  `OVSDB-411 <https://jira.opendaylight.org/browse/OVSDB-411>`_
  : Add NettyBootstrapFactory to hold OVSDB network threads
* `fd925bf08 <https://git.opendaylight.org/gerrit/#/q/fd925bf08>`_
  `OVSDB-428 <https://jira.opendaylight.org/browse/OVSDB-428>`_
  : Eliminate TransactionInvokerImpl.successfulTransactionQueue
* `20012c21f <https://git.opendaylight.org/gerrit/#/q/20012c21f>`_
  `OVSDB-428 <https://jira.opendaylight.org/browse/OVSDB-428>`_
  : Speed up inputQueue interaction
* `8310eabe7 <https://git.opendaylight.org/gerrit/#/q/8310eabe7>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `a0f2e7018 <https://git.opendaylight.org/gerrit/#/q/a0f2e7018>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `9930827c4 <https://git.opendaylight.org/gerrit/#/q/9930827c4>`_
  : Rework TypedRowInvocationHandler invocation path
* `c6f7bc7bc <https://git.opendaylight.org/gerrit/#/q/c6f7bc7bc>`_
  : Migrate TyperUtils.getTableSchema() users
* `dfb657b23 <https://git.opendaylight.org/gerrit/#/q/dfb657b23>`_
  : Simplify exception instantiation
* `9af87d9b0 <https://git.opendaylight.org/gerrit/#/q/9af87d9b0>`_
  : Migrate TyperUtils methods to TypedDatabaseSchemaImpl
* `5ee9ed22e <https://git.opendaylight.org/gerrit/#/q/5ee9ed22e>`_
  : Make OvsdbClient return TypedDatabaseSchemas
* `c1c79b70c <https://git.opendaylight.org/gerrit/#/q/c1c79b70c>`_
  : Extract TypedRowInvocationHandler
* `7a6fe0e5c <https://git.opendaylight.org/gerrit/#/q/7a6fe0e5c>`_
  : Eliminate OvsdbClientImpl duplication
* `82723d831 <https://git.opendaylight.org/gerrit/#/q/82723d831>`_
  : De-confuse InvocationHandler and target methods
* `e57992121 <https://git.opendaylight.org/gerrit/#/q/e57992121>`_
  : Hide TyperUtils.extractRowUpdates()
* `8a8f8cfdf <https://git.opendaylight.org/gerrit/#/q/8a8f8cfdf>`_
  : Add TypedReflections
* `d97430282 <https://git.opendaylight.org/gerrit/#/q/d97430282>`_
  : Add @NonNull annotation to OvsdbConnectionListener.connected()
* `9f030b429 <https://git.opendaylight.org/gerrit/#/q/9f030b429>`_
  : Add TypedDatabaseSchema
* `8115ecf71 <https://git.opendaylight.org/gerrit/#/q/8115ecf71>`_
  : Turn DatabaseSchema into an interface
* `562d45084 <https://git.opendaylight.org/gerrit/#/q/562d45084>`_
  : Make TableSchema/DatabaseSchema immutable
* `32d9f1ad9 <https://git.opendaylight.org/gerrit/#/q/32d9f1ad9>`_
  : Split out BaseTypeFactories
* `11f8540ae <https://git.opendaylight.org/gerrit/#/q/11f8540ae>`_
  : Use singleton BaseType instances for simple definitions
* `91b242822 <https://git.opendaylight.org/gerrit/#/q/91b242822>`_
  : Split out BaseTypes
* `db4b48270 <https://git.opendaylight.org/gerrit/#/q/db4b48270>`_
  : Do not use reflection in TransactCommandAggregator
* `f9ba04906 <https://git.opendaylight.org/gerrit/#/q/f9ba04906>`_
  : Reuse StringEncoders for all connections
* `4424150e6 <https://git.opendaylight.org/gerrit/#/q/4424150e6>`_
  : Reuse MappingJsonFactory across all sessions
* `2e9ba8f8b <https://git.opendaylight.org/gerrit/#/q/2e9ba8f8b>`_
  : Cleanup HwvtepConnectionManager.getHwvtepGlobalTableEntry()
* `eb330aac7 <https://git.opendaylight.org/gerrit/#/q/eb330aac7>`_
  : Do not allow DatabaseSchema name/version to be mutated
* `88adf2528 <https://git.opendaylight.org/gerrit/#/q/88adf2528>`_
  : Do not allow TableSchema columns to be directly set
* `0ff47ed78 <https://git.opendaylight.org/gerrit/#/q/0ff47ed78>`_
  : Refactor ColumnType
* `aac8875db <https://git.opendaylight.org/gerrit/#/q/aac8875db>`_
  : Cleanup ColumnSchema
* `cb6c0ea4e <https://git.opendaylight.org/gerrit/#/q/cb6c0ea4e>`_
  : Add generated serialVersionUUID to exceptions
* `1ee2e4bfe <https://git.opendaylight.org/gerrit/#/q/1ee2e4bfe>`_
  : Make GenericTableSchema.fromJson() a factory method
* `d306338b5 <https://git.opendaylight.org/gerrit/#/q/d306338b5>`_
  : Move ObjectMapper to JsonRpcEndpoint
* `2c95ccc22 <https://git.opendaylight.org/gerrit/#/q/2c95ccc22>`_
  : Improve schemas population
* `16ff45fde <https://git.opendaylight.org/gerrit/#/q/16ff45fde>`_
  : Turn JsonRpcEndpoint into a proper OvsdbRPC implementation
* `e8adc8639 <https://git.opendaylight.org/gerrit/#/q/e8adc8639>`_
  : Reuse ObjectMapper across all connections
* `12a1c60ae <https://git.opendaylight.org/gerrit/#/q/12a1c60ae>`_
  : Use a constant ObjectMapper in UpdateNotificationDeser
* `4650cff9a <https://git.opendaylight.org/gerrit/#/q/4650cff9a>`_
  : Use proper constant in JsonUtils
* `de91d31e7 <https://git.opendaylight.org/gerrit/#/q/de91d31e7>`_
  : Do not reconfigure ObjectMapper in FutureTransformUtils
* `1c06606a7 <https://git.opendaylight.org/gerrit/#/q/1c06606a7>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7
* `c2919d47d <https://git.opendaylight.org/gerrit/#/q/c2919d47d>`_
  : Do not use Foo.toString() when logging


serviceutils
------------
* `ecc8fbb <https://git.opendaylight.org/gerrit/#/q/ecc8fbb>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `68d2bec <https://git.opendaylight.org/gerrit/#/q/68d2bec>`_
  : Expose reference implementations downstream
* `a70a6c1 <https://git.opendaylight.org/gerrit/#/q/a70a6c1>`_
  : Add tools-testutils declaration
* `195bcbd <https://git.opendaylight.org/gerrit/#/q/195bcbd>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `fa66fb6 <https://git.opendaylight.org/gerrit/#/q/fa66fb6>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7


sfc
---
* `47c49529 <https://git.opendaylight.org/gerrit/#/q/47c49529>`_
  : Bump to odlparent-5.0.5/yangtools-3.0.9/mdsal-4.0.11
* `267a08f6 <https://git.opendaylight.org/gerrit/#/q/267a08f6>`_
  : Bump odlparent/yangtools/mdsal to 5.0.4/3.0.7/4.0.8
* `c294cbae <https://git.opendaylight.org/gerrit/#/q/c294cbae>`_
  : Bump to odlparent-5.0.3/yangtools-3.0.6/mdsal-4.0.7

