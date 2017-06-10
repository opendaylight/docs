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

