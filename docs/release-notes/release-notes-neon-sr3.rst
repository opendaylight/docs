Neon-SR3 Release Notes
======================

This page details changes and bug fixes between the Neon Stability Release 2 (Neon-SR2)
and the Neon Stability Release 3 (Neon-SR3) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `c219e358 <https://git.opendaylight.org/gerrit/#/q/c219e358>`_
  : Add the support for token to the script
* `7ba1a066 <https://git.opendaylight.org/gerrit/#/q/7ba1a066>`_
  : Remove comons-beanutils overrides
* `d610923a <https://git.opendaylight.org/gerrit/#/q/d610923a>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `14e6eddd <https://git.opendaylight.org/gerrit/#/q/14e6eddd>`_
  `AAA-114 <https://jira.opendaylight.org/browse/AAA-114>`_
  : Fix idmtool.py for handling errors
* `699a7ad0 <https://git.opendaylight.org/gerrit/#/q/699a7ad0>`_
  : Remove install/deploy plugin configuration
* `aaac0e26 <https://git.opendaylight.org/gerrit/#/q/aaac0e26>`_
  : Fixup aaa-cert-mdsal pyang warnings
* `d5bad7b0 <https://git.opendaylight.org/gerrit/#/q/d5bad7b0>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7
* `1362995d <https://git.opendaylight.org/gerrit/#/q/1362995d>`_
  : Fix checkstyle


bgpcep
------
* `24018cbd5 <https://git.opendaylight.org/gerrit/#/q/24018cbd5>`_
  `BGPCEP-878 <https://jira.opendaylight.org/browse/BGPCEP-878>`_
  : Fix CSIT regression due to BGPCEP-878 fix
* `974c77765 <https://git.opendaylight.org/gerrit/#/q/974c77765>`_
  `BGPCEP-889 <https://jira.opendaylight.org/browse/BGPCEP-889>`_
  : Register PCEP session to stats handler only after it is fully initialized
* `3c882e4f7 <https://git.opendaylight.org/gerrit/#/q/3c882e4f7>`_
  `BGPCEP-884 <https://jira.opendaylight.org/browse/BGPCEP-884>`_
  : Address deadlock scenarios in BGP peer, session mgmt code
* `678eb7d88 <https://git.opendaylight.org/gerrit/#/q/678eb7d88>`_
  `BGPCEP-878 <https://jira.opendaylight.org/browse/BGPCEP-878>`_
  : Fix NPE while accessing DomTxChain when bgp/app peer singleton service is restarted
* `258371023 <https://git.opendaylight.org/gerrit/#/q/258371023>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `38a5f62b5 <https://git.opendaylight.org/gerrit/#/q/38a5f62b5>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7
* `5fb4fab43 <https://git.opendaylight.org/gerrit/#/q/5fb4fab43>`_
  : Remove unused imports
* `e4b99745b <https://git.opendaylight.org/gerrit/#/q/e4b99745b>`_
  `BGPCEP-880 <https://jira.opendaylight.org/browse/BGPCEP-880>`_
  : Fix bgp-segment-routing
* `e119dd71b <https://git.opendaylight.org/gerrit/#/q/e119dd71b>`_
  `BGPCEP-880 <https://jira.opendaylight.org/browse/BGPCEP-880>`_
  : Fix rsvp.yang
* `c36a902f4 <https://git.opendaylight.org/gerrit/#/q/c36a902f4>`_
  `BGPCEP-877 <https://jira.opendaylight.org/browse/BGPCEP-877>`_
  : Set PMSI tunnel attribute transitive.


controller
----------
* `4a7a3f5129 <https://git.opendaylight.org/gerrit/#/q/4a7a3f5129>`_
  : Bail faster on not found module
* `8d3c38ca77 <https://git.opendaylight.org/gerrit/#/q/8d3c38ca77>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `04aecf442d <https://git.opendaylight.org/gerrit/#/q/04aecf442d>`_
  `CONTROLLER-1908 <https://jira.opendaylight.org/browse/CONTROLLER-1908>`_
  : Deduplicate MapNode key leaf values
* `9f4ede90ba <https://git.opendaylight.org/gerrit/#/q/9f4ede90ba>`_
  `CONTROLLER-1914 <https://jira.opendaylight.org/browse/CONTROLLER-1914>`_
  : Allow shard settle timeout to be tuned
* `f6bd177d5d <https://git.opendaylight.org/gerrit/#/q/f6bd177d5d>`_
  `CONTROLLER-1889 <https://jira.opendaylight.org/browse/CONTROLLER-1889>`_
  : Add streaming interface to NormalizedNodeDataInput
* `7475a1bc46 <https://git.opendaylight.org/gerrit/#/q/7475a1bc46>`_
  `CONTROLLER-1626 <https://jira.opendaylight.org/browse/CONTROLLER-1626>`_
  : Allow AbstractClientActor generation to start from non-zero
* `5237b71bdd <https://git.opendaylight.org/gerrit/#/q/5237b71bdd>`_
  `CONTROLLER-1626 <https://jira.opendaylight.org/browse/CONTROLLER-1626>`_
  : Add the ability to report known connected clients
* `d04b0e8d75 <https://git.opendaylight.org/gerrit/#/q/d04b0e8d75>`_
  : Add locate-shard RPC
* `6abc56deee <https://git.opendaylight.org/gerrit/#/q/6abc56deee>`_
  : Cleanup cluster-admin.yang
* `5330ab6327 <https://git.opendaylight.org/gerrit/#/q/5330ab6327>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7
* `328e267eb1 <https://git.opendaylight.org/gerrit/#/q/328e267eb1>`_
  : Remove unused model imports
* `3998f75cb4 <https://git.opendaylight.org/gerrit/#/q/3998f75cb4>`_
  : Add @SupressFBWarnings around Await.result()
* `b04a1cc2d6 <https://git.opendaylight.org/gerrit/#/q/b04a1cc2d6>`_
  `CONTROLLER-1920 <https://jira.opendaylight.org/browse/CONTROLLER-1920>`_
  : Split up transaction chunks
* `f6b88c1391 <https://git.opendaylight.org/gerrit/#/q/f6b88c1391>`_
  : Remove ensureHeaderWritten() from writeNode()
* `1e0ef03001 <https://git.opendaylight.org/gerrit/#/q/1e0ef03001>`_
  : Reorganize AbstractNormalizedNodeDataOutput
* `a66594ed15 <https://git.opendaylight.org/gerrit/#/q/a66594ed15>`_
  : Split out AbstractLithiumDataInput
* `5079d7ed80 <https://git.opendaylight.org/gerrit/#/q/5079d7ed80>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Use explicit versioning in MetadataShardDataTreeSnapshot
* `e3c1752fea <https://git.opendaylight.org/gerrit/#/q/e3c1752fea>`_
  : Mark historic DataStoreVersions deprecated
* `e4f794f56e <https://git.opendaylight.org/gerrit/#/q/e4f794f56e>`_
  : Add more serialization assertions
* `9bf0909262 <https://git.opendaylight.org/gerrit/#/q/9bf0909262>`_
  : AbstractNormalizedNodeDataOutput fails to write out header
* `d312593389 <https://git.opendaylight.org/gerrit/#/q/d312593389>`_
  : Tighten AbstractLithiumDataOutput.writeString()
* `600d368bd1 <https://git.opendaylight.org/gerrit/#/q/600d368bd1>`_
  : Remove NormalizedNodeOutputStreamWriter
* `431e44a7b4 <https://git.opendaylight.org/gerrit/#/q/431e44a7b4>`_
  : Disconnect {Lithium,NeonSR2} implementations
* `04bd8df4d3 <https://git.opendaylight.org/gerrit/#/q/04bd8df4d3>`_
  : Reduce reliance on Guava Fuction/Supplier
* `3884d6e99d <https://git.opendaylight.org/gerrit/#/q/3884d6e99d>`_
  : Fix modernization issues
* `6c862576e2 <https://git.opendaylight.org/gerrit/#/q/6c862576e2>`_
  : Make sure we know the version we encountered
* `af2e46381c <https://git.opendaylight.org/gerrit/#/q/af2e46381c>`_
  : Cleanup PathArgumentTypes
* `a4fd951af3 <https://git.opendaylight.org/gerrit/#/q/a4fd951af3>`_
  : Lower ValueTypes constant visibility
* `41b709612e <https://git.opendaylight.org/gerrit/#/q/41b709612e>`_
  : Rename SodiumNormalizedNode* classes
* `281ea1104e <https://git.opendaylight.org/gerrit/#/q/281ea1104e>`_
  : Migrate away from Throwables.propagate()
* `e11c26864e <https://git.opendaylight.org/gerrit/#/q/e11c26864e>`_
  : Refactor AbstractBrokerAwareActivator
* `04277ff944 <https://git.opendaylight.org/gerrit/#/q/04277ff944>`_
  : Move createProxy()
* `dded1a38ea <https://git.opendaylight.org/gerrit/#/q/dded1a38ea>`_
  : Fixup checkstyle
* `0884c6c16c <https://git.opendaylight.org/gerrit/#/q/0884c6c16c>`_
  : Fixup chunk offset movement on resend
* `37f3f49ce7 <https://git.opendaylight.org/gerrit/#/q/37f3f49ce7>`_
  : Lost commit index when a snapshot is captured
* `d8afef2ec2 <https://git.opendaylight.org/gerrit/#/q/d8afef2ec2>`_
  : Another round of checkstyle fixes
* `8a12f9540a <https://git.opendaylight.org/gerrit/#/q/8a12f9540a>`_
  : Cleanup ValueTypes lookup
* `3feece7576 <https://git.opendaylight.org/gerrit/#/q/3feece7576>`_
  : Fix checkstyle/spotbugs violations
* `9c17109946 <https://git.opendaylight.org/gerrit/#/q/9c17109946>`_
  : Clean up opendaylight-inventory model
* `2c1bee6d50 <https://git.opendaylight.org/gerrit/#/q/2c1bee6d50>`_
  `CONTROLLER-1382 <https://jira.opendaylight.org/browse/CONTROLLER-1382>`_
  : Revert "Bug 3871: Deprecate opendaylight-inventory model."
* `237d51c603 <https://git.opendaylight.org/gerrit/#/q/237d51c603>`_
  : Drop public modifier from NodeTypes


coe
---
* `74a2904 <https://git.opendaylight.org/gerrit/#/q/74a2904>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `bd83b0f <https://git.opendaylight.org/gerrit/#/q/bd83b0f>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7


daexim
------
* `f128af1 <https://git.opendaylight.org/gerrit/#/q/f128af1>`_
  `DAEXIM-15 <https://jira.opendaylight.org/browse/DAEXIM-15>`_
  : On daexim boot import, check models only if models file is present
* `6fcb0db <https://git.opendaylight.org/gerrit/#/q/6fcb0db>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `155c79b <https://git.opendaylight.org/gerrit/#/q/155c79b>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7


genius
------
* `1d7267b4 <https://git.opendaylight.org/gerrit/#/q/1d7267b4>`_
  : Tunnel mesh was not fully created.
* `dd41ae56 <https://git.opendaylight.org/gerrit/#/q/dd41ae56>`_
  `MDSAL-389 <https://jira.opendaylight.org/browse/MDSAL-389>`_
  : Expose TypedReadTransaction.exists(InstanceIdentifier)
* `110d4244 <https://git.opendaylight.org/gerrit/#/q/110d4244>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `6c0c5798 <https://git.opendaylight.org/gerrit/#/q/6c0c5798>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7
* `fffd7ec5 <https://git.opendaylight.org/gerrit/#/q/fffd7ec5>`_
  : Fix checkstyle
* `0763fc5b <https://git.opendaylight.org/gerrit/#/q/0763fc5b>`_
  : ITM recovery is not working
* `ddd42ea0 <https://git.opendaylight.org/gerrit/#/q/ddd42ea0>`_
  : Fix for NPE in ArpUtil
* `45e20ebe <https://git.opendaylight.org/gerrit/#/q/45e20ebe>`_
  : In ITM Scale-In-Out when same IP is used, some stale tunnels hanging in new mesh creation.


infrautils
----------
* `6b7760a7 <https://git.opendaylight.org/gerrit/#/q/6b7760a7>`_
  `INFRAUTILS-66 <https://jira.opendaylight.org/browse/INFRAUTILS-66>`_
  : Disable ThreadsWatcher by default
* `ff351750 <https://git.opendaylight.org/gerrit/#/q/ff351750>`_
  : Tolerate platforms without thread management
* `938dbdb6 <https://git.opendaylight.org/gerrit/#/q/938dbdb6>`_
  : Fix NPE when updating metrics configuration
* `c93d0ff8 <https://git.opendaylight.org/gerrit/#/q/c93d0ff8>`_
  : Bump odlparent to 4.0.14
* `27adcf8b <https://git.opendaylight.org/gerrit/#/q/27adcf8b>`_
  : Bump odlparent to 4.0.13
* `eea88889 <https://git.opendaylight.org/gerrit/#/q/eea88889>`_
  : Fix checkstyle


integration/distribution
------------------------
* `688ed90 <https://git.opendaylight.org/gerrit/#/q/688ed90>`_
  : Restore ONAP distribution version
* `a7b2167 <https://git.opendaylight.org/gerrit/#/q/a7b2167>`_
  : Fix versions in ONAP distribution
* `0d49640 <https://git.opendaylight.org/gerrit/#/q/0d49640>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `356f3ca <https://git.opendaylight.org/gerrit/#/q/356f3ca>`_
  : Add missing packaging pom
* `3a88e44 <https://git.opendaylight.org/gerrit/#/q/3a88e44>`_
  `INIDIST-106 <https://jira.opendaylight.org/browse/INIDIST-106>`_
  : Add Neon ONAP distribution
* `1df8fe3 <https://git.opendaylight.org/gerrit/#/q/1df8fe3>`_
  : Bump MRI versions for Neon SR3
* `d136876 <https://git.opendaylight.org/gerrit/#/q/d136876>`_
  : Update common dist version after Neon SR2


lispflowmapping
---------------
* `60880e6c <https://git.opendaylight.org/gerrit/#/q/60880e6c>`_
  : Fix junit-addons scope
* `e150d1c5 <https://git.opendaylight.org/gerrit/#/q/e150d1c5>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `e2bcab7c <https://git.opendaylight.org/gerrit/#/q/e2bcab7c>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7
* `48f73900 <https://git.opendaylight.org/gerrit/#/q/48f73900>`_
  : Fix checkstyle violations


netconf
-------
* `a0833fb27 <https://git.opendaylight.org/gerrit/#/q/a0833fb27>`_
  `NETCONF-629 <https://jira.opendaylight.org/browse/NETCONF-629>`_
  : Netconf stack by default locks the data store before issuing edit-config, and then unlocks it.
* `243a7afbd <https://git.opendaylight.org/gerrit/#/q/243a7afbd>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `b8f5ebd2f <https://git.opendaylight.org/gerrit/#/q/b8f5ebd2f>`_
  `NETCONF-616 <https://jira.opendaylight.org/browse/NETCONF-616>`_
  : Convert anyxml nodes lazily
* `32198feec <https://git.opendaylight.org/gerrit/#/q/32198feec>`_
  `NETCONF-608 <https://jira.opendaylight.org/browse/NETCONF-608>`_
  : NETCONF-608 - Change Netconf keepalives to not send during large payload replies
* `4e5846ad7 <https://git.opendaylight.org/gerrit/#/q/4e5846ad7>`_
  : Do not use toString() in looging messages
* `7ad160ecb <https://git.opendaylight.org/gerrit/#/q/7ad160ecb>`_
  : Fix config/oper reconciliation for leaf-lists
* `4d55b428f <https://git.opendaylight.org/gerrit/#/q/4d55b428f>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7
* `9778e2be7 <https://git.opendaylight.org/gerrit/#/q/9778e2be7>`_
  : Update for sshd-2.3.0 changes
* `bfe9193b9 <https://git.opendaylight.org/gerrit/#/q/bfe9193b9>`_
  : Properly close stream writer
* `9fc06c347 <https://git.opendaylight.org/gerrit/#/q/9fc06c347>`_
  : Fix checkstyle
* `43674bdb5 <https://git.opendaylight.org/gerrit/#/q/43674bdb5>`_
  : Fix checkstyle
* `d4ce4bf8e <https://git.opendaylight.org/gerrit/#/q/d4ce4bf8e>`_
  : Improve action lookup
* `01e6f6d0f <https://git.opendaylight.org/gerrit/#/q/01e6f6d0f>`_
  : Fix schema source registrations not being cleared
* `33d635133 <https://git.opendaylight.org/gerrit/#/q/33d635133>`_
  `NETCONF-611 <https://jira.opendaylight.org/browse/NETCONF-611>`_
  : Attempt netconf remount regardless of error-type
* `8e59d67f1 <https://git.opendaylight.org/gerrit/#/q/8e59d67f1>`_
  `NETCONF-610 <https://jira.opendaylight.org/browse/NETCONF-610>`_
  : Custom scheme-cache-directory yang models are not replicated among cluster members
* `c5959bacd <https://git.opendaylight.org/gerrit/#/q/c5959bacd>`_
  : Fixed POST data error response
* `485ad9e99 <https://git.opendaylight.org/gerrit/#/q/485ad9e99>`_
  : Fixed response errors for HTTP PUT
* `9d217801e <https://git.opendaylight.org/gerrit/#/q/9d217801e>`_
  `NETCONF-538 <https://jira.opendaylight.org/browse/NETCONF-538>`_
  : Teach AbstractGet how to transform MapNodes


netvirt
-------
* `a700f5091 <https://git.opendaylight.org/gerrit/#/q/a700f5091>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `729dd7fcc <https://git.opendaylight.org/gerrit/#/q/729dd7fcc>`_
  `NETVIRT-1636 <https://jira.opendaylight.org/browse/NETVIRT-1636>`_
  : Check network presence
* `8c15aed7e <https://git.opendaylight.org/gerrit/#/q/8c15aed7e>`_
  `NETVIRT-1636 <https://jira.opendaylight.org/browse/NETVIRT-1636>`_
  : Fix another VpnSubnetRouteHandler NPE source
* `b076ef98e <https://git.opendaylight.org/gerrit/#/q/b076ef98e>`_
  `NETVIRT-1636 <https://jira.opendaylight.org/browse/NETVIRT-1636>`_
  : Fix Acl.getAccessListEntries() NPE
* `bfaac863b <https://git.opendaylight.org/gerrit/#/q/bfaac863b>`_
  `NETVIRT-1636 <https://jira.opendaylight.org/browse/NETVIRT-1636>`_
  : Fix VpnSubnetRouteHandler handling of getSubnetToDpn()
* `857a1768b <https://git.opendaylight.org/gerrit/#/q/857a1768b>`_
  : ACL: NullPointerException in AclEventListener
* `caccd0610 <https://git.opendaylight.org/gerrit/#/q/caccd0610>`_
  : ACL: VM IP address failures and ID Pool issues
* `31c82ebe4 <https://git.opendaylight.org/gerrit/#/q/31c82ebe4>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7
* `9e15d73ea <https://git.opendaylight.org/gerrit/#/q/9e15d73ea>`_
  : Fix checkstyle


neutron
-------
* `5d6951e3 <https://git.opendaylight.org/gerrit/#/q/5d6951e3>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `6c6768e3 <https://git.opendaylight.org/gerrit/#/q/6c6768e3>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7


openflowplugin
--------------
* `2968bf42d <https://git.opendaylight.org/gerrit/#/q/2968bf42d>`_
  `OPNFLWPLUG-1078 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1078>`_
  : OPNFLWPLUG-1078: Notify device TLS authentication failure messages
* `934bcf940 <https://git.opendaylight.org/gerrit/#/q/934bcf940>`_
  `OPNFLWPLUG-1075 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1075>`_
  : OPNFLWPLUG-1075: Making Device Oper transactions atomic
* `dbb430c67 <https://git.opendaylight.org/gerrit/#/q/dbb430c67>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `397359860 <https://git.opendaylight.org/gerrit/#/q/397359860>`_
  : Use String(byte[], Charset)
* `ac35dfb3d <https://git.opendaylight.org/gerrit/#/q/ac35dfb3d>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7
* `d9f901335 <https://git.opendaylight.org/gerrit/#/q/d9f901335>`_
  : Fix meter-id overlap
* `680c420e5 <https://git.opendaylight.org/gerrit/#/q/680c420e5>`_
  : Fix checkstyle


ovsdb
-----
* `e99c2d0f1 <https://git.opendaylight.org/gerrit/#/q/e99c2d0f1>`_
  `OVSDB-428 <https://jira.opendaylight.org/browse/OVSDB-428>`_
  : Eliminate TransactionInvokerImpl.successfulTransactionQueue
* `c6337f51a <https://git.opendaylight.org/gerrit/#/q/c6337f51a>`_
  `OVSDB-428 <https://jira.opendaylight.org/browse/OVSDB-428>`_
  : Speed up inputQueue interaction
* `ff4883df8 <https://git.opendaylight.org/gerrit/#/q/ff4883df8>`_
  `OVSDB-454 <https://jira.opendaylight.org/browse/OVSDB-454>`_
  : Get rid of useless (Hwvtep)SouthboundProvider thread
* `998935819 <https://git.opendaylight.org/gerrit/#/q/998935819>`_
  `OVSDB-454 <https://jira.opendaylight.org/browse/OVSDB-454>`_
  : Migrate OvsdbDataTreeChangeListenerTest
* `dbccf7846 <https://git.opendaylight.org/gerrit/#/q/dbccf7846>`_
  `OVSDB-454 <https://jira.opendaylight.org/browse/OVSDB-454>`_
  : Eliminate server startup threads
* `04a54e4f9 <https://git.opendaylight.org/gerrit/#/q/04a54e4f9>`_
  `OVSDB-331 <https://jira.opendaylight.org/browse/OVSDB-331>`_
  : Add support for using epoll Netty transport
* `6e8667671 <https://git.opendaylight.org/gerrit/#/q/6e8667671>`_
  `OVSDB-411 <https://jira.opendaylight.org/browse/OVSDB-411>`_
  : Add NettyBootstrapFactory to hold OVSDB network threads
* `335bc7a16 <https://git.opendaylight.org/gerrit/#/q/335bc7a16>`_
  : Reuse StringEncoders for all connections
* `171549eec <https://git.opendaylight.org/gerrit/#/q/171549eec>`_
  : Reuse MappingJsonFactory across all sessions
* `f38993d13 <https://git.opendaylight.org/gerrit/#/q/f38993d13>`_
  : Do not use reflection in TransactCommandAggregator
* `4e5ef7e02 <https://git.opendaylight.org/gerrit/#/q/4e5ef7e02>`_
  : Fix NPEs in HwvtepOperGlobalListener
* `dc4092fdd <https://git.opendaylight.org/gerrit/#/q/dc4092fdd>`_
  : RowUpdate should be a static class
* `b671c750f <https://git.opendaylight.org/gerrit/#/q/b671c750f>`_
  : Eliminate OvsdbClientImpl duplication
* `290de0d77 <https://git.opendaylight.org/gerrit/#/q/290de0d77>`_
  : Cleanup HwvtepConnectionManager.getHwvtepGlobalTableEntry()
* `e001c3152 <https://git.opendaylight.org/gerrit/#/q/e001c3152>`_
  : Do not allow DatabaseSchema name/version to be mutated
* `22b98085d <https://git.opendaylight.org/gerrit/#/q/22b98085d>`_
  : Do not allow TableSchema columns to be directly set
* `ad191d470 <https://git.opendaylight.org/gerrit/#/q/ad191d470>`_
  : Refactor ColumnType
* `13e4abcc1 <https://git.opendaylight.org/gerrit/#/q/13e4abcc1>`_
  : Cleanup ColumnSchema
* `cd57e8b5a <https://git.opendaylight.org/gerrit/#/q/cd57e8b5a>`_
  : Add generated serialVersionUUID to exceptions
* `9e91f3643 <https://git.opendaylight.org/gerrit/#/q/9e91f3643>`_
  : Make GenericTableSchema.fromJson() a factory method
* `2f39dd9ce <https://git.opendaylight.org/gerrit/#/q/2f39dd9ce>`_
  : Move ObjectMapper to JsonRpcEndpoint
* `56e02b931 <https://git.opendaylight.org/gerrit/#/q/56e02b931>`_
  : Improve schemas population
* `1aa41b470 <https://git.opendaylight.org/gerrit/#/q/1aa41b470>`_
  : Remove use of deprecated Guava methods
* `1c80d0ab0 <https://git.opendaylight.org/gerrit/#/q/1c80d0ab0>`_
  : Turn JsonRpcEndpoint into a proper OvsdbRPC implementation
* `1c01dbf48 <https://git.opendaylight.org/gerrit/#/q/1c01dbf48>`_
  : Reuse ObjectMapper across all connections
* `f409d6603 <https://git.opendaylight.org/gerrit/#/q/f409d6603>`_
  : Use a constant ObjectMapper in UpdateNotificationDeser
* `7aac912b2 <https://git.opendaylight.org/gerrit/#/q/7aac912b2>`_
  : Use proper constant in JsonUtils
* `c47ba4d82 <https://git.opendaylight.org/gerrit/#/q/c47ba4d82>`_
  : Do not reconfigure ObjectMapper in FutureTransformUtils
* `decb716b5 <https://git.opendaylight.org/gerrit/#/q/decb716b5>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `f326d04bf <https://git.opendaylight.org/gerrit/#/q/f326d04bf>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7
* `ba42de715 <https://git.opendaylight.org/gerrit/#/q/ba42de715>`_
  : Fix checkstyle
* `84efe1721 <https://git.opendaylight.org/gerrit/#/q/84efe1721>`_
  : Do not use Foo.toString() when logging


serviceutils
------------
* `edd74f7 <https://git.opendaylight.org/gerrit/#/q/edd74f7>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `242696d <https://git.opendaylight.org/gerrit/#/q/242696d>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7
* `ab46790 <https://git.opendaylight.org/gerrit/#/q/ab46790>`_
  : Fix checkstyle
* `b0fd12f <https://git.opendaylight.org/gerrit/#/q/b0fd12f>`_
  : Fix a parent mis-reference


sfc
---
* `07eeaa5a <https://git.opendaylight.org/gerrit/#/q/07eeaa5a>`_
  : Bump odlparent/yangtools/mdsal to 4.0.14/2.1.14/3.0.13
* `108742ce <https://git.opendaylight.org/gerrit/#/q/108742ce>`_
  : Bump to odlparent-4.0.13/yangtools-2.1.13/mdsal-3.0.7
* `2bc2fcdc <https://git.opendaylight.org/gerrit/#/q/2bc2fcdc>`_
  : Fix checkstyle

