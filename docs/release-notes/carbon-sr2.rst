Carbon-SR2 Release Notes
========================

This page details changes and bug fixes between the Carbon Stability Release 1 (Carbon-SR1)
and the Carbon Stability Release 2 (Carbon-SR2) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------

* alto
* bier
* cardinal
* didm
* dlux
* dluxapps
* eman
* faas
* federation
* iotdm
* l2switch
* lacp
* nemo
* netide
* ocpplugin
* of-config
* openflowjava
* packetcable
* sdninterfaceapp
* snmp
* snmp4sdn
* sxp
* topoprocessing
* tsdr
* ttp
* usc

aaa
---
* `c1ea553 <https://git.opendaylight.org/gerrit/#/q/c1ea553>`_
  `BUG-9040 <https://bugs.opendaylight.org/show_bug.cgi?id=9040>`_
  : Bug 9040: avoid using dynamicAuthorization for cluster-admin operations
* `0c97134 <https://git.opendaylight.org/gerrit/#/q/0c97134>`_
  : Revert "Propagate exceptions from encrypt and decrypt services in aaa-encryption-service API."
* `def98d6 <https://git.opendaylight.org/gerrit/#/q/def98d6>`_
  : Propagate exceptions from encrypt and decrypt services in aaa-encryption-service API.
* `0ed8405 <https://git.opendaylight.org/gerrit/#/q/0ed8405>`_
  : Export aaa-cli-jar in the artifacts


bgpcep
------
* `d3c0a1e9d <https://git.opendaylight.org/gerrit/#/q/d3c0a1e9d>`_
  `BUG-8987 <https://bugs.opendaylight.org/show_bug.cgi?id=8987>`_
  : BUG-8987: Print Exception when Css registration fails
* `93dbe1f8a <https://git.opendaylight.org/gerrit/#/q/93dbe1f8a>`_
  `BUG-8942 <https://bugs.opendaylight.org/show_bug.cgi?id=8942>`_
  : Bug-8942: Fix DelegatedLspsCount
* `e8c321941 <https://git.opendaylight.org/gerrit/#/q/e8c321941>`_
  `BUG-8156 <https://bugs.opendaylight.org/show_bug.cgi?id=8156>`_
  : BUG-8156 : conflicting listener fix
* `32eccfc95 <https://git.opendaylight.org/gerrit/#/q/32eccfc95>`_
  `BUG-8156 <https://bugs.opendaylight.org/show_bug.cgi?id=8156>`_
  : BUG-8156 : fixed start of session manager
* `7d9607f75 <https://git.opendaylight.org/gerrit/#/q/7d9607f75>`_
  `BUG-8156 <https://bugs.opendaylight.org/show_bug.cgi?id=8156>`_
  : BUG-8156 : duplicate session up fixed
* `385b5f6b2 <https://git.opendaylight.org/gerrit/#/q/385b5f6b2>`_
  : Enforce no split packages
* `ad75debff <https://git.opendaylight.org/gerrit/#/q/ad75debff>`_
  `BUG-5876 <https://bugs.opendaylight.org/show_bug.cgi?id=5876>`_
  : BUG-8722: fix regression introduced by BUG-5876
* `bf16dcb17 <https://git.opendaylight.org/gerrit/#/q/bf16dcb17>`_
  `BUG-8667 <https://bugs.opendaylight.org/show_bug.cgi?id=8667>`_
  : Bug 8667 - PCEP: When peer closes got IO exception
* `91fe407a2 <https://git.opendaylight.org/gerrit/#/q/91fe407a2>`_
  `BUG-7027 <https://bugs.opendaylight.org/show_bug.cgi?id=7027>`_
  : BUG-7027 : Remove Data change counter CSS configuration


controller
----------
* `c67ff0496 <https://git.opendaylight.org/gerrit/#/q/c67ff0496>`_
  : Lower verbosity in SimpletxDomRead
* `3bcdbbb63 <https://git.opendaylight.org/gerrit/#/q/3bcdbbb63>`_
  `BUG-9165 <https://bugs.opendaylight.org/show_bug.cgi?id=9165>`_
  : Bug 9165: Log config subsystem readiness as INFO
* `3d650410b <https://git.opendaylight.org/gerrit/#/q/3d650410b>`_
  `BUG-8829 <https://bugs.opendaylight.org/show_bug.cgi?id=8829>`_
  : Bug 8829: Ignore error when initializing dsbenchmark
* `3b16b0d98 <https://git.opendaylight.org/gerrit/#/q/3b16b0d98>`_
  `BUG-9060 <https://bugs.opendaylight.org/show_bug.cgi?id=9060>`_
  : Bug 9060: Filter TracingBroker stack trace elements
* `39b7a263d <https://git.opendaylight.org/gerrit/#/q/39b7a263d>`_
  `BUG-8639 <https://bugs.opendaylight.org/show_bug.cgi?id=8639>`_
  : BUG-8639: always invalidate primary info cache
* `274b3b90e <https://git.opendaylight.org/gerrit/#/q/274b3b90e>`_
  `BUG-9054 <https://bugs.opendaylight.org/show_bug.cgi?id=9054>`_
  : BUG-9054: add a ClusterSingletonService integration test
* `0cb983d35 <https://git.opendaylight.org/gerrit/#/q/0cb983d35>`_
  `BUG-8858 <https://bugs.opendaylight.org/show_bug.cgi?id=8858>`_
  : BUG-8858: remove sleeps from test driver
* `9ea02d25f <https://git.opendaylight.org/gerrit/#/q/9ea02d25f>`_
  `BUG-9008 <https://bugs.opendaylight.org/show_bug.cgi?id=9008>`_
  : Bug 9008: Fix the error of the persisted journal data format
* `c18c8af26 <https://git.opendaylight.org/gerrit/#/q/c18c8af26>`_
  : Fix intermitent testFollowerResyncWith*LeaderRestart failure
* `334cb5c1f <https://git.opendaylight.org/gerrit/#/q/334cb5c1f>`_
  : Fix intermittent testOwnerChangesOnPeerAvailabilityChanges failure
* `71a4b6377 <https://git.opendaylight.org/gerrit/#/q/71a4b6377>`_
  `BUG-9054 <https://bugs.opendaylight.org/show_bug.cgi?id=9054>`_
  : BUG-9054: do not use BatchedModifications needlessly
* `892d03c37 <https://git.opendaylight.org/gerrit/#/q/892d03c37>`_
  `BUG-9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9060
9034>`_
  : Bug 9060: Karaf CLI command to print open transactions
* `36b7ca973 <https://git.opendaylight.org/gerrit/#/q/36b7ca973>`_
  `BUG-9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9060
9034>`_
  : Bug 9060: TracingBroker printOpenTransactions
* `d5606ac01 <https://git.opendaylight.org/gerrit/#/q/d5606ac01>`_
  `BUG-9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9060
9034>`_
  : Bug 9060: Remove un-used Instant getObjectCreated() from CloseTracked
* `d119e4376 <https://git.opendaylight.org/gerrit/#/q/d119e4376>`_
  `BUG-9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9060
9034>`_
  : Bug 9060: mdsal-trace tooling with getAllUnique() to find Tx leaks
* `c1579d0a1 <https://git.opendaylight.org/gerrit/#/q/c1579d0a1>`_
  `BUG-9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9060
9034>`_
  : Bug 9060: TracingBroker with transaction-debug-context-enabled
* `28739e1f6 <https://git.opendaylight.org/gerrit/#/q/28739e1f6>`_
  `BUG-9034
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9034
9034>`_
  : Bug 9034: TracingBroker with TracingReadOnlyTransaction
* `4a09cad99 <https://git.opendaylight.org/gerrit/#/q/4a09cad99>`_
  `BUG-9034
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9034
9034>`_
  : Bug 9034: TracingBroker with TracingTransactionChain
* `644bc122a <https://git.opendaylight.org/gerrit/#/q/644bc122a>`_
  `BUG-8885 <https://bugs.opendaylight.org/show_bug.cgi?id=8885>`_
  : Bug 8885: Fix DistributedShardedDOMDataTree initialization
* `b66d6180f <https://git.opendaylight.org/gerrit/#/q/b66d6180f>`_
  `BUG-9028 <https://bugs.opendaylight.org/show_bug.cgi?id=9028>`_
  : BUG-9028: make NonPersistentDataProvider schedule invocation
* `361c7f260 <https://git.opendaylight.org/gerrit/#/q/361c7f260>`_
  : Add debug to pinpoint lastApplied movement
* `d1de9c55e <https://git.opendaylight.org/gerrit/#/q/d1de9c55e>`_
  : Make testTransactionForwardedToLeaderAfterRetry purge-aware
* `3e86a2e5c <https://git.opendaylight.org/gerrit/#/q/3e86a2e5c>`_
  : Make ShardTest.testCommitWhenTransactionHasModifications() wait a bit
* `456e2facc <https://git.opendaylight.org/gerrit/#/q/456e2facc>`_
  `BUG-8941 <https://bugs.opendaylight.org/show_bug.cgi?id=8941>`_
  : BUG-8941: enqueue purges once ask-based transactions resolve
* `babc1ee03 <https://git.opendaylight.org/gerrit/#/q/babc1ee03>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: eliminate ProxyRegistration
* `606c917c9 <https://git.opendaylight.org/gerrit/#/q/606c917c9>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: refactor IdInts listeners
* `2ac32ea2c <https://git.opendaylight.org/gerrit/#/q/2ac32ea2c>`_
  `BUG-8898 <https://bugs.opendaylight.org/show_bug.cgi?id=8898>`_
  : BUG-8898: prioritize InternalCommand
* `53afb54d5 <https://git.opendaylight.org/gerrit/#/q/53afb54d5>`_
  : Switch from config-parent to bundle-parent in mdsal-trace
* `4367f456f <https://git.opendaylight.org/gerrit/#/q/4367f456f>`_
  `BUG-8898 <https://bugs.opendaylight.org/show_bug.cgi?id=8898>`_
  : BUG-8898: do not invoke timeouts directly
* `f79548400 <https://git.opendaylight.org/gerrit/#/q/f79548400>`_
  `BUG-7464 <https://bugs.opendaylight.org/show_bug.cgi?id=7464>`_
  : Revert "Revert "BUG-7464: use yangtools.triemap""
* `4bc5f74ae <https://git.opendaylight.org/gerrit/#/q/4bc5f74ae>`_
  `BUG-7464 <https://bugs.opendaylight.org/show_bug.cgi?id=7464>`_
  : Revert "BUG-7464: use yangtools.triemap"
* `874411923 <https://git.opendaylight.org/gerrit/#/q/874411923>`_
  `BUG-8494 <https://bugs.opendaylight.org/show_bug.cgi?id=8494>`_
  : Bug 8494: Separate writing and completion threads
* `5df3476d8 <https://git.opendaylight.org/gerrit/#/q/5df3476d8>`_
  : Explicitly load the real DataBroker with component-name
* `31283ab78 <https://git.opendaylight.org/gerrit/#/q/31283ab78>`_
  : fix config file for mdsal-trace and filtering mechanism
* `db65d6f15 <https://git.opendaylight.org/gerrit/#/q/db65d6f15>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: use DataTreeCandidateNodes.empty()
* `b83c7f5e5 <https://git.opendaylight.org/gerrit/#/q/b83c7f5e5>`_
  `BUG-8619 <https://bugs.opendaylight.org/show_bug.cgi?id=8619>`_
  : BUG-8619: do not touch forward path during purge enqueue
* `5e00c9fdb <https://git.opendaylight.org/gerrit/#/q/5e00c9fdb>`_
  `BUG-7464 <https://bugs.opendaylight.org/show_bug.cgi?id=7464>`_
  : BUG-7464: use yangtools.triemap
* `1529bb8bd <https://git.opendaylight.org/gerrit/#/q/1529bb8bd>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: refresh transaction access when isolated
* `55661ed80 <https://git.opendaylight.org/gerrit/#/q/55661ed80>`_
  `BUG-8792 <https://bugs.opendaylight.org/show_bug.cgi?id=8792>`_
  : BUG-8792: allow transactions to not time out after reconnect
* `7633a2a50 <https://git.opendaylight.org/gerrit/#/q/7633a2a50>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: record LeaderFrontendState time
* `12b4928ef <https://git.opendaylight.org/gerrit/#/q/12b4928ef>`_
  `BUG-8619 <https://bugs.opendaylight.org/show_bug.cgi?id=8619>`_
  : Bug 8619: Introduce inheritance of progress trackers
* `80e6514d5 <https://git.opendaylight.org/gerrit/#/q/80e6514d5>`_
  : ProgressTracker: Decrease delay due nearestAllowed
* `2be77b3bc <https://git.opendaylight.org/gerrit/#/q/2be77b3bc>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: fix test driver
* `40d27d44d <https://git.opendaylight.org/gerrit/#/q/40d27d44d>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: add pause/unpause mechanics for tell-based protocol
* `a15d7e439 <https://git.opendaylight.org/gerrit/#/q/a15d7e439>`_
  : Fix .1 version references
* `1734dccbd <https://git.opendaylight.org/gerrit/#/q/1734dccbd>`_
  : mdsaltrace utility for debugging
* `3a10a45e0 <https://git.opendaylight.org/gerrit/#/q/3a10a45e0>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: introduce RaftActor.unpauseLeader()
* `2783c9dff <https://git.opendaylight.org/gerrit/#/q/2783c9dff>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: eliminate SimpleShardDataTreeCohort subclasses
* `c525e5f25 <https://git.opendaylight.org/gerrit/#/q/c525e5f25>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: rework AbstractProxyTransaction.flushState()
* `70f287502 <https://git.opendaylight.org/gerrit/#/q/70f287502>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: reconnect connections more aggressively
* `0d5408c4b <https://git.opendaylight.org/gerrit/#/q/0d5408c4b>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: turn timeouts in READY state into canCommit failures
* `d2d9179e5 <https://git.opendaylight.org/gerrit/#/q/d2d9179e5>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: improve logging
* `773ee5e88 <https://git.opendaylight.org/gerrit/#/q/773ee5e88>`_
  : Fix Verify/Preconditions string format


genius
------
* `1c695e1c <https://git.opendaylight.org/gerrit/#/q/1c695e1c>`_
  : Lower log level for non errors
* `47cc44e5 <https://git.opendaylight.org/gerrit/#/q/47cc44e5>`_
  `BUG-7380 <https://bugs.opendaylight.org/show_bug.cgi?id=7380>`_
  : bug 7380: Add getIfaceInfoFromConfigDataStore
* `be08b298 <https://git.opendaylight.org/gerrit/#/q/be08b298>`_
  : Genius Logging enhancements
* `02d9b884 <https://git.opendaylight.org/gerrit/#/q/02d9b884>`_
  : ITM mesh creation issue - teps added in succession.
* `a8e92f17 <https://git.opendaylight.org/gerrit/#/q/a8e92f17>`_
  : Cleanup
* `96500cfb <https://git.opendaylight.org/gerrit/#/q/96500cfb>`_
  : Replace *Index(" by *Index('
* `cd76d6e0 <https://git.opendaylight.org/gerrit/#/q/cd76d6e0>`_
  : Use INFO for logging null DPID
* `6fa10a25 <https://git.opendaylight.org/gerrit/#/q/6fa10a25>`_
  `BUG-9099 <https://bugs.opendaylight.org/show_bug.cgi?id=9099>`_
  : Bug 9099 - Suspected WriteOnlyTransaction leak in interfacemanager
* `cd9be0c6 <https://git.opendaylight.org/gerrit/#/q/cd9be0c6>`_
  : Remove start() method
* `db86a183 <https://git.opendaylight.org/gerrit/#/q/db86a183>`_
  `BUG-9034
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9034
9034>`_
  : Bug 9034: LockManager cancel() ReadWriteTransaction if it's not submit()
* `6bb41bb1 <https://git.opendaylight.org/gerrit/#/q/6bb41bb1>`_
  : Log enhancements for better debuggability
* `e9189b29 <https://git.opendaylight.org/gerrit/#/q/e9189b29>`_
  : Changing the default value of Interfacemanager statistics polling interval to 15 Minutes
* `9cfde260 <https://git.opendaylight.org/gerrit/#/q/9cfde260>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `cf06e143 <https://git.opendaylight.org/gerrit/#/q/cf06e143>`_
  `BUG-7599 <https://bugs.opendaylight.org/show_bug.cgi?id=7599>`_
  : Bug 7599 -hwvtep ucast mac consumption improvement
* `cccc6c2d <https://git.opendaylight.org/gerrit/#/q/cccc6c2d>`_
  `BUG-8859 <https://bugs.opendaylight.org/show_bug.cgi?id=8859>`_
  : Bug 8859 : Table 220 programmed with wrong service-index
* `847c03af <https://git.opendaylight.org/gerrit/#/q/847c03af>`_
  : Fix Service-binding flowRef
* `cff98ccf <https://git.opendaylight.org/gerrit/#/q/cff98ccf>`_
  : @Ignore flaky newl2vlanInterfaceTests InterfaceManagerConfigurationTest
* `df7d10ca <https://git.opendaylight.org/gerrit/#/q/df7d10ca>`_
  : Make DJC to be more concurrent and fixing signal issue b/w enqueue jobs
* `143d6816 <https://git.opendaylight.org/gerrit/#/q/143d6816>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `efd8a1d0 <https://git.opendaylight.org/gerrit/#/q/efd8a1d0>`_
  `BUG-8876 <https://bugs.opendaylight.org/show_bug.cgi?id=8876>`_
  : BUG 8876 - Fix to remove ELAN interface flows when external network deleted
* `81510d54 <https://git.opendaylight.org/gerrit/#/q/81510d54>`_
  : Cleanup
* `1ca0f40f <https://git.opendaylight.org/gerrit/#/q/1ca0f40f>`_
  : Add private constructor to this utility class
* `c69a7956 <https://git.opendaylight.org/gerrit/#/q/c69a7956>`_
  : IdManager: Use lock only when required
* `0a7a33d7 <https://git.opendaylight.org/gerrit/#/q/0a7a33d7>`_
  : Cleanup
* `b2e6235e <https://git.opendaylight.org/gerrit/#/q/b2e6235e>`_
  : Fix IfmClusterUtils logs
* `e6a9ca0b <https://git.opendaylight.org/gerrit/#/q/e6a9ca0b>`_
  : Enqueued Job not getting cleaned up in some cases
* `afd2b46f <https://git.opendaylight.org/gerrit/#/q/afd2b46f>`_
  `BUG-8476 <https://bugs.opendaylight.org/show_bug.cgi?id=8476>`_
  : Bug 8476 Add support for logical switch replication mode
* `49f2167e <https://git.opendaylight.org/gerrit/#/q/49f2167e>`_
  : Capture flow addition to debug log
* `8e8cc016 <https://git.opendaylight.org/gerrit/#/q/8e8cc016>`_
  : hwvtep transaction batching separation across shards
* `5c21c1e8 <https://git.opendaylight.org/gerrit/#/q/5c21c1e8>`_
  : Exception in service-binding logic when a neutron port is deleted
* `6822bc82 <https://git.opendaylight.org/gerrit/#/q/6822bc82>`_
  : Guard some TRACE logs in DJC
* `083980f3 <https://git.opendaylight.org/gerrit/#/q/083980f3>`_
  : Removing unnecessary TRACE log in service-binding
* `277a7b2b <https://git.opendaylight.org/gerrit/#/q/277a7b2b>`_
  `BUG-8800 <https://bugs.opendaylight.org/show_bug.cgi?id=8800>`_
  : Bug 8800: Prevent xtendbeans NPE warn.log in InstructionApplyActions
* `bb14bf11 <https://git.opendaylight.org/gerrit/#/q/bb14bf11>`_
  : Making ActionConverterUtil log to DEBUG


groupbasedpolicy
----------------
* `c682e508 <https://git.opendaylight.org/gerrit/#/q/c682e508>`_
  : Fix AddressEndpointWithLocation issues
* `f5d5698b <https://git.opendaylight.org/gerrit/#/q/f5d5698b>`_
  : Code improvements for FDS scenarios
* `d21ad1b8 <https://git.opendaylight.org/gerrit/#/q/d21ad1b8>`_
  `BUG-8900 <https://bugs.opendaylight.org/show_bug.cgi?id=8900>`_
  : Bug 8900 - fixing ACL updates
* `cf962d0d <https://git.opendaylight.org/gerrit/#/q/cf962d0d>`_
  : Policy exclusions & parallel netconf transactions


honeycomb/vbd
-------------
* `e74240b <https://git.opendaylight.org/gerrit/#/q/e74240b>`_
  `BUG-9009 <https://bugs.opendaylight.org/show_bug.cgi?id=9009>`_
  : Bug 9009: Add cache mechanism for Tenant interface IP
* `1ebf97b <https://git.opendaylight.org/gerrit/#/q/1ebf97b>`_
  : implementing parallel netconf transactions


infrautils
----------
* `82d4449 <https://git.opendaylight.org/gerrit/#/q/82d4449>`_
  : Add bind2ToInstance to AbstractGuiceJsr250Module


integration/distribution
------------------------
* `d38a8f5 <https://git.opendaylight.org/gerrit/#/q/d38a8f5>`_
  : Remove karaf (not distribution-karaf)
* `8e1089e <https://git.opendaylight.org/gerrit/#/q/8e1089e>`_
  : Ignore extracted distros in Coala linting
* `0576951 <https://git.opendaylight.org/gerrit/#/q/0576951>`_
  : Improve Coala linting, add section stubs/ignores
* `bf50225 <https://git.opendaylight.org/gerrit/#/q/bf50225>`_
  `BUG-9060 <https://bugs.opendaylight.org/show_bug.cgi?id=9060>`_
  : Bug 9060: Add odl-mdsal-trace


lispflowmapping
---------------
* `bc9d18d0 <https://git.opendaylight.org/gerrit/#/q/bc9d18d0>`_
  `BUG-8746 <https://bugs.opendaylight.org/show_bug.cgi?id=8746>`_
  : Bug 8746: Multi-threading improvements
* `a54b02e6 <https://git.opendaylight.org/gerrit/#/q/a54b02e6>`_
  `BUG-8469 <https://bugs.opendaylight.org/show_bug.cgi?id=8469>`_
  : Bug 8469: Account for losing prefix length in Source EID
* `46e3e487 <https://git.opendaylight.org/gerrit/#/q/46e3e487>`_
  `BUG-8764 <https://bugs.opendaylight.org/show_bug.cgi?id=8764>`_
  : Bug 8764: Fix handling of old negative
* `37f612ce <https://git.opendaylight.org/gerrit/#/q/37f612ce>`_
  : Make negative mapping TTL configurable
* `7b132851 <https://git.opendaylight.org/gerrit/#/q/7b132851>`_
  : Return negative mapping with 0 TTL for deletion


mdsal
-----
* `ae88651f1 <https://git.opendaylight.org/gerrit/#/q/ae88651f1>`_
  `BUG-9145 <https://bugs.opendaylight.org/show_bug.cgi?id=9145>`_
  : BUG-9145: rework singleton service group state tracking
* `34745e0aa <https://git.opendaylight.org/gerrit/#/q/34745e0aa>`_
  : Fix use of deprecated Futures.addCallback()
* `c26292234 <https://git.opendaylight.org/gerrit/#/q/c26292234>`_
  `BUG-8858 <https://bugs.opendaylight.org/show_bug.cgi?id=8858>`_
  : BUG-8858: add integration test suite
* `cb1f6ccf2 <https://git.opendaylight.org/gerrit/#/q/cb1f6ccf2>`_
  `BUG-8858 <https://bugs.opendaylight.org/show_bug.cgi?id=8858>`_
  : BUG-8858: rework singleton group locking
* `e84146b5e <https://git.opendaylight.org/gerrit/#/q/e84146b5e>`_
  `BUG-8910
8911 <https://bugs.opendaylight.org/show_bug.cgi?id=8910
8911>`_
  : Bug 8910 - Binding v2 generator exception: Failed to find leafref target
* `2befd716a <https://git.opendaylight.org/gerrit/#/q/2befd716a>`_
  : Binding generator v2 - fix units field name
* `ce0ef9dae <https://git.opendaylight.org/gerrit/#/q/ce0ef9dae>`_
  : Binding generator v2 - fix choice
* `ec6debe00 <https://git.opendaylight.org/gerrit/#/q/ec6debe00>`_
  : Binding generator v2 - uses statement - uses inner type
* `571836239 <https://git.opendaylight.org/gerrit/#/q/571836239>`_
  : Binding generator v2 - uses statement - uses grouping choice"
* `fb411f70c <https://git.opendaylight.org/gerrit/#/q/fb411f70c>`_
  : Binding generator v2 - fix getter in builder
* `2131dc162 <https://git.opendaylight.org/gerrit/#/q/2131dc162>`_
  : Binding generator v2 - fix getter method name
* `a0d2d0a7a <https://git.opendaylight.org/gerrit/#/q/a0d2d0a7a>`_
  : Binding generator v2 - uses statement - uses inner type #2
* `5e3f23bf8 <https://git.opendaylight.org/gerrit/#/q/5e3f23bf8>`_
  : Binding generator v2 - uses statement - uses inner type #1
* `5a8a3fd7e <https://git.opendaylight.org/gerrit/#/q/5a8a3fd7e>`_
  : Binding generator v2 - uses statement - uses of list
* `318b05512 <https://git.opendaylight.org/gerrit/#/q/318b05512>`_
  : Binding generator v2 - fix leaflist return type
* `94180b861 <https://git.opendaylight.org/gerrit/#/q/94180b861>`_
  : Binding generator v2 - fix choice's parent
* `29446c1a3 <https://git.opendaylight.org/gerrit/#/q/29446c1a3>`_
  : Binding generator v2 - fix double dot package name
* `735201caf <https://git.opendaylight.org/gerrit/#/q/735201caf>`_
  : Binding generator v2 - fix submodule class name
* `7038c5df8 <https://git.opendaylight.org/gerrit/#/q/7038c5df8>`_
  : Binding generator v2 - fix format javadoc text
* `caed33579 <https://git.opendaylight.org/gerrit/#/q/caed33579>`_
  : Binding generator v2 - uses implement - fix finding target grouping
* `74f818bbb <https://git.opendaylight.org/gerrit/#/q/74f818bbb>`_
  : Binding generator v2 - uses statement - uses leafref #2
* `e214685f6 <https://git.opendaylight.org/gerrit/#/q/e214685f6>`_
  : Binding generator v2 - uses statement - uses leafref #1
* `5a2d5d69c <https://git.opendaylight.org/gerrit/#/q/5a2d5d69c>`_
  : Binding generator v2 - fix InstanceIdentifier package path in classTemplate
* `eb050ae2f <https://git.opendaylight.org/gerrit/#/q/eb050ae2f>`_
  : Binding generator v2 - uses statement - uses of cases
* `c2f5a3ab7 <https://git.opendaylight.org/gerrit/#/q/c2f5a3ab7>`_
  : Binding generator v2 - fix action #3
* `bf39a1f51 <https://git.opendaylight.org/gerrit/#/q/bf39a1f51>`_
  : Binding generator v2 - fix action #2
* `d4b8df977 <https://git.opendaylight.org/gerrit/#/q/d4b8df977>`_
  : Binding generator v2 - fix action #1
* `67b940dfb <https://git.opendaylight.org/gerrit/#/q/67b940dfb>`_
  : JavaIdentifierNormalizer ThreadSafe/Memory leak fix
* `5281fa941 <https://git.opendaylight.org/gerrit/#/q/5281fa941>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: switch to using DOMDataTreeListener-based APIs
* `f09e24084 <https://git.opendaylight.org/gerrit/#/q/f09e24084>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: Add ListenableDOMDataTreeShard
* `02b122215 <https://git.opendaylight.org/gerrit/#/q/02b122215>`_
  : Cleanup ShardRootModificationContext
* `b7c1f342d <https://git.opendaylight.org/gerrit/#/q/b7c1f342d>`_
  `BUG-8449 <https://bugs.opendaylight.org/show_bug.cgi?id=8449>`_
  : Bug 8449 - BindingToNormalizedNodeCodec fails to deserialize union of leafrefs
* `b2aa3f4c1 <https://git.opendaylight.org/gerrit/#/q/b2aa3f4c1>`_
  : Fix a few warnings
* `20d2832ce <https://git.opendaylight.org/gerrit/#/q/20d2832ce>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: use DataTreeCandidateNodes.empty()
* `55490ce1e <https://git.opendaylight.org/gerrit/#/q/55490ce1e>`_
  : Optimize transaction collection
* `a7a06d4bb <https://git.opendaylight.org/gerrit/#/q/a7a06d4bb>`_
  : Do not obfuscate constant 0/1
* `afb9c3563 <https://git.opendaylight.org/gerrit/#/q/afb9c3563>`_
  : Optimize JavaIdentifierNormalizer reserved words lookup
* `e35ab396d <https://git.opendaylight.org/gerrit/#/q/e35ab396d>`_
  : Binding2-runtime JUnit code coverage increase
* `9f590ba6f <https://git.opendaylight.org/gerrit/#/q/9f590ba6f>`_
  : Binding generator v2 - fix union getter name in camel-case
* `4a9e8f988 <https://git.opendaylight.org/gerrit/#/q/4a9e8f988>`_
  : Binding generator v2 - code style & cleanup
* `191a88cfa <https://git.opendaylight.org/gerrit/#/q/191a88cfa>`_
  : Binding generator v2 - augment statement #4
* `94b1de705 <https://git.opendaylight.org/gerrit/#/q/94b1de705>`_
  : Binding generator v2 - augment statement #3
* `ecd068d67 <https://git.opendaylight.org/gerrit/#/q/ecd068d67>`_
  : Optimize JavaIdentifierNormalizer.normalizeClassIdentifier()
* `8a87cb7e2 <https://git.opendaylight.org/gerrit/#/q/8a87cb7e2>`_
  : Do not use temporary string to extract last character
* `61ad1fa17 <https://git.opendaylight.org/gerrit/#/q/61ad1fa17>`_
  : Optimize JavaIdentifierNormalizer.normalizeClassIdentifier()
* `585fc0b56 <https://git.opendaylight.org/gerrit/#/q/585fc0b56>`_
  : Optimize fixCasesByJavaType for packages
* `e1a008965 <https://git.opendaylight.org/gerrit/#/q/e1a008965>`_
  : Optimize convertIdentifierEnumValue()
* `1446c18fb <https://git.opendaylight.org/gerrit/#/q/1446c18fb>`_
  : Optimize JavaIdentifierNormalizer.fixCases()
* `78f471fa2 <https://git.opendaylight.org/gerrit/#/q/78f471fa2>`_
  : Binding generator v2 - uses statement - uses augment
* `17cf88e77 <https://git.opendaylight.org/gerrit/#/q/17cf88e77>`_
  : Binding generator v2 - augment statement #2
* `eac685287 <https://git.opendaylight.org/gerrit/#/q/eac685287>`_
  : Binding generator v2 - augment statement #1
* `e20f0f558 <https://git.opendaylight.org/gerrit/#/q/e20f0f558>`_
  : Binding generator v2 - uses statement - uses of list
* `a26de047d <https://git.opendaylight.org/gerrit/#/q/a26de047d>`_
  : Binding generator v2 - uses statement - uses of module
* `398f49eb4 <https://git.opendaylight.org/gerrit/#/q/398f49eb4>`_
  : Binding generator v2 - uses statement - support choice
* `0f0884af9 <https://git.opendaylight.org/gerrit/#/q/0f0884af9>`_
  : Binding generator v2 - uses statement - uses of rpc & action
* `b469d95c2 <https://git.opendaylight.org/gerrit/#/q/b469d95c2>`_
  : Binding generator v2 - uses statement - restore getter
* `3aa24f4ac <https://git.opendaylight.org/gerrit/#/q/3aa24f4ac>`_
  : Binding generator v2 - Type reference fix
* `4178b9af2 <https://git.opendaylight.org/gerrit/#/q/4178b9af2>`_
  : Binding generator v2 - Identity fix
* `5428e290f <https://git.opendaylight.org/gerrit/#/q/5428e290f>`_
  : Optimize JavaIdentifierNormalizer.convertFirst()
* `692617fbb <https://git.opendaylight.org/gerrit/#/q/692617fbb>`_
  : Binding generator v2 - uses statement - support list
* `8fe6ecf50 <https://git.opendaylight.org/gerrit/#/q/8fe6ecf50>`_
  : Binding generator v2 - uses statement - resolve uses node
* `a02749e07 <https://git.opendaylight.org/gerrit/#/q/a02749e07>`_
  : Binding generator v2 - uses statement - uses of notification
* `518f2b46f <https://git.opendaylight.org/gerrit/#/q/518f2b46f>`_
  : Optimize JavaIdentifierNormalizer.normalizePartialPackageName()
* `29219aaad <https://git.opendaylight.org/gerrit/#/q/29219aaad>`_
  : Optimize JavaIdentifierNormalizer.normalizeFullPackageName()
* `c10229680 <https://git.opendaylight.org/gerrit/#/q/c10229680>`_
  : Optimize JavaIdentifierNormalizer.existNext()
* `e1b0b507f <https://git.opendaylight.org/gerrit/#/q/e1b0b507f>`_
  : Binding generator v2 - uses statement - uses implements
* `76ec951b6 <https://git.opendaylight.org/gerrit/#/q/76ec951b6>`_
  : Binding2-dom-adapter JUnit code coverage increase
* `f5808d2b8 <https://git.opendaylight.org/gerrit/#/q/f5808d2b8>`_
  : Binding generator v2 - fix case builder to dto
* `f88d9a13b <https://git.opendaylight.org/gerrit/#/q/f88d9a13b>`_
  : Cleanup JavaIdentifierNormalizer
* `3deb23905 <https://git.opendaylight.org/gerrit/#/q/3deb23905>`_
  : Binding v2 - remove checked future


netconf
-------
* `99561178c <https://git.opendaylight.org/gerrit/#/q/99561178c>`_
  `BUG-9132 <https://bugs.opendaylight.org/show_bug.cgi?id=9132>`_
  : BUG-9132: don't provide a value for restconf/streams/events
* `f4b545aa2 <https://git.opendaylight.org/gerrit/#/q/f4b545aa2>`_
  : Minor cleanup of blueprint config
* `d4a44ff4b <https://git.opendaylight.org/gerrit/#/q/d4a44ff4b>`_
  `BUG-8989 <https://bugs.opendaylight.org/show_bug.cgi?id=8989>`_
  : Bug 8989 - Create just one DS for each test-tool's simulated netconf device
* `f2becfbe3 <https://git.opendaylight.org/gerrit/#/q/f2becfbe3>`_
  `BUG-8977 <https://bugs.opendaylight.org/show_bug.cgi?id=8977>`_
  : Bug 8977 - Failed on binary key type
* `36f684fc9 <https://git.opendaylight.org/gerrit/#/q/36f684fc9>`_
  : RPC for netconf node addition. Supports encrypt option for password encryption.
* `0a347d8cd <https://git.opendaylight.org/gerrit/#/q/0a347d8cd>`_
  : Enable public key based authentication for netconf
* `6de81fd1b <https://git.opendaylight.org/gerrit/#/q/6de81fd1b>`_
  : Do not pull in yang-maven-plugin
* `cdc6e07df <https://git.opendaylight.org/gerrit/#/q/cdc6e07df>`_
  `BUG-8824 <https://bugs.opendaylight.org/show_bug.cgi?id=8824>`_
  : Bug 8824 - NETCONF request hangs when rpc-rply has invalid xml
* `6053c0951 <https://git.opendaylight.org/gerrit/#/q/6053c0951>`_
  `BUG-8832 <https://bugs.opendaylight.org/show_bug.cgi?id=8832>`_
  : Bug 8832 - rpc-error in keepalive rpc-reply shouldn't bounce the session


netvirt
-------
* `2a54b326c <https://git.opendaylight.org/gerrit/#/q/2a54b326c>`_
  `BUG-8976 <https://bugs.opendaylight.org/show_bug.cgi?id=8976>`_
  : Bug 8976 - Upstreaming fixes to master
* `923bbe7a8 <https://git.opendaylight.org/gerrit/#/q/923bbe7a8>`_
  `BUG-8964 <https://bugs.opendaylight.org/show_bug.cgi?id=8964>`_
  : Bug 8964 - Neutron test neutron.tests.tempest.scenario.test_floatingip.FloatingIpSameNetwork.test_east_west fails
* `95fc2656d <https://git.opendaylight.org/gerrit/#/q/95fc2656d>`_
  : Test SNAT mostSignificantBit()
* `e1779ca40 <https://git.opendaylight.org/gerrit/#/q/e1779ca40>`_
  `BUG-9226 <https://bugs.opendaylight.org/show_bug.cgi?id=9226>`_
  : Bug 9226: VPN Traffic fails after VM Migration
* `cf2b4bfbc <https://git.opendaylight.org/gerrit/#/q/cf2b4bfbc>`_
  `BUG-9237 <https://bugs.opendaylight.org/show_bug.cgi?id=9237>`_
  : Bug 9237 - NPE: InternalToExternalPortMapKey
* `a9a9e25fb <https://git.opendaylight.org/gerrit/#/q/a9a9e25fb>`_
  `BUG-9180 <https://bugs.opendaylight.org/show_bug.cgi?id=9180>`_
  : Bug 9180: Conflicting modification Exception from NAT Module
* `f7172d87f <https://git.opendaylight.org/gerrit/#/q/f7172d87f>`_
  `BUG-7596 <https://bugs.opendaylight.org/show_bug.cgi?id=7596>`_
  : BUG 7596 - Update to handle change in Neutron Network external attribute
* `978960583 <https://git.opendaylight.org/gerrit/#/q/978960583>`_
  : Remove unneeded mdsal and yangtools artifacts
* `64b80caf1 <https://git.opendaylight.org/gerrit/#/q/64b80caf1>`_
  : Remove unneeded pom version values
* `4edc3586a <https://git.opendaylight.org/gerrit/#/q/4edc3586a>`_
  : Undo incorrect code changes made during merge conflict.
* `d68b40a55 <https://git.opendaylight.org/gerrit/#/q/d68b40a55>`_
  `BUG-9066 <https://bugs.opendaylight.org/show_bug.cgi?id=9066>`_
  : Bug 9066:Use Single Transaction for DNAT Flow Install and Remove
* `f85a8d949 <https://git.opendaylight.org/gerrit/#/q/f85a8d949>`_
  `BUG-9077 <https://bugs.opendaylight.org/show_bug.cgi?id=9077>`_
  : Bug 9077: Fix of issue that the existing NW communication failure when new NW is created
* `e51a9dec4 <https://git.opendaylight.org/gerrit/#/q/e51a9dec4>`_
  : Lower log level for non errors
* `11c3ddac3 <https://git.opendaylight.org/gerrit/#/q/11c3ddac3>`_
  `BUG-9209 <https://bugs.opendaylight.org/show_bug.cgi?id=9209>`_
  : Bug 9209: PNF learned on external networks to skip local FIB Processing
* `35e6b1d2c <https://git.opendaylight.org/gerrit/#/q/35e6b1d2c>`_
  : Renamed acl-impl.rst to acl-reflection-on-existing-traffic.rst
* `c804c1331 <https://git.opendaylight.org/gerrit/#/q/c804c1331>`_
  : Remove explicit default super-constructor calls
* `95d7b1a24 <https://git.opendaylight.org/gerrit/#/q/95d7b1a24>`_
  `BUG-9190 <https://bugs.opendaylight.org/show_bug.cgi?id=9190>`_
  : bug-9190: NullPointerException at getIsExternal
* `1d0e2af74 <https://git.opendaylight.org/gerrit/#/q/1d0e2af74>`_
  : Lower log level for non errors
* `1c0b27923 <https://git.opendaylight.org/gerrit/#/q/1c0b27923>`_
  : Bug9091 : Removing uncessary MD-SAL Read Operation in NAT
* `4116fbcee <https://git.opendaylight.org/gerrit/#/q/4116fbcee>`_
  : bgpmanager: change API of bgpmanager to add VRF IPv4 or IPv6
* `16c55ed71 <https://git.opendaylight.org/gerrit/#/q/16c55ed71>`_
  : neutronvpn: create ipv4 or ipv6 context
* `d9945bb0f <https://git.opendaylight.org/gerrit/#/q/d9945bb0f>`_
  : Dualstack support for L3VPN - single router Dual stack
* `b2d602081 <https://git.opendaylight.org/gerrit/#/q/b2d602081>`_
  `BUG-8953 <https://bugs.opendaylight.org/show_bug.cgi?id=8953>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin
* `a90e9969d <https://git.opendaylight.org/gerrit/#/q/a90e9969d>`_
  : lower log levels for non-errors
* `f17c140b2 <https://git.opendaylight.org/gerrit/#/q/f17c140b2>`_
  : ClearBgpCli reads from socket to send/receive from bgpd (some previous commit modifed to read from session parameters)
* `325f4817b <https://git.opendaylight.org/gerrit/#/q/325f4817b>`_
  `BUG-9196 <https://bugs.opendaylight.org/show_bug.cgi?id=9196>`_
  : Bug 9196 - Maxpath value should be between 1 to 64 in BGP multipath
* `be22588cc <https://git.opendaylight.org/gerrit/#/q/be22588cc>`_
  `BUG-8963 <https://bugs.opendaylight.org/show_bug.cgi?id=8963>`_
  : Bug 8963 - Option to configure EVPN address family
* `ed2fe656f <https://git.opendaylight.org/gerrit/#/q/ed2fe656f>`_
  : bgpmanager thrift upgrade to 0.9.3
* `d7d4b5b30 <https://git.opendaylight.org/gerrit/#/q/d7d4b5b30>`_
  `BUG-8930 <https://bugs.opendaylight.org/show_bug.cgi?id=8930>`_
  : BUG 8930 - delete Op VPN interface when deleting external network
* `e1015de35 <https://git.opendaylight.org/gerrit/#/q/e1015de35>`_
  : elanmanager: clean up Futures collections
* `a0087dd51 <https://git.opendaylight.org/gerrit/#/q/a0087dd51>`_
  `BUG-9193 <https://bugs.opendaylight.org/show_bug.cgi?id=9193>`_
  : Bug 9193 - In conntrack SNAT , flows are programmed twice on a router g/w set.
* `ad94beb55 <https://git.opendaylight.org/gerrit/#/q/ad94beb55>`_
  : Lower log levels for non error's
* `a64737e36 <https://git.opendaylight.org/gerrit/#/q/a64737e36>`_
  : IfMgr clean-up
* `6a1dea55d <https://git.opendaylight.org/gerrit/#/q/6a1dea55d>`_
  : Restrict NeutronvpnUtils.read
* `8a5c4d1ea <https://git.opendaylight.org/gerrit/#/q/8a5c4d1ea>`_
  `BUG-8969 <https://bugs.opendaylight.org/show_bug.cgi?id=8969>`_
  : BUG 8969 - Fix Exeption when clearing external router GW
* `6e1747bf5 <https://git.opendaylight.org/gerrit/#/q/6e1747bf5>`_
  `BUG-9190 <https://bugs.opendaylight.org/show_bug.cgi?id=9190>`_
  : bug-9190: NullPointerException at getIsExternal
* `04441af15 <https://git.opendaylight.org/gerrit/#/q/04441af15>`_
  `BUG-9105 <https://bugs.opendaylight.org/show_bug.cgi?id=9105>`_
  : Bug 9105: close removeElanInterface transaction
* `02d4647a7 <https://git.opendaylight.org/gerrit/#/q/02d4647a7>`_
  : ElanUtils clean-up: ElanL2GatewayUtils
* `c9a42e739 <https://git.opendaylight.org/gerrit/#/q/c9a42e739>`_
  : ElanUtils clean-up: L2GatewayConnectionUtils
* `861f94206 <https://git.opendaylight.org/gerrit/#/q/861f94206>`_
  : ElanUtils clean-up: remove unnecessary references
* `a16c5e763 <https://git.opendaylight.org/gerrit/#/q/a16c5e763>`_
  : ElanUtils clean-up: ElanL2Gateway{Multicast,}Utils
* `be8fca0fe <https://git.opendaylight.org/gerrit/#/q/be8fca0fe>`_
  : ElanUtils clean-up: more ElanL2GatewayMulticastUtils
* `1b467f0ae <https://git.opendaylight.org/gerrit/#/q/1b467f0ae>`_
  : ElanUtils clean-up: ElanL2GatewayMulticastUtils
* `6cee45837 <https://git.opendaylight.org/gerrit/#/q/6cee45837>`_
  : ElanUtils clean-up: make read() static
* `a7bd956f9 <https://git.opendaylight.org/gerrit/#/q/a7bd956f9>`_
  `BUG-8998 <https://bugs.opendaylight.org/show_bug.cgi?id=8998>`_
  : Bug 8998 - L2GW:Vlan bindings missing on reboot
* `d91afa740 <https://git.opendaylight.org/gerrit/#/q/d91afa740>`_
  : aclservice: clean up Futures collections
* `f5e469602 <https://git.opendaylight.org/gerrit/#/q/f5e469602>`_
  : dhcpservice: clean up Futures collections
* `9b5727e80 <https://git.opendaylight.org/gerrit/#/q/9b5727e80>`_
  `BUG-8978 <https://bugs.opendaylight.org/show_bug.cgi?id=8978>`_
  : Bug 8978 - Network deletion issue.
* `fda3885c7 <https://git.opendaylight.org/gerrit/#/q/fda3885c7>`_
  : Remove un-used SynchronousEachOperationNewWriteTransaction
* `d71df4d4e <https://git.opendaylight.org/gerrit/#/q/d71df4d4e>`_
  : cleanup sync
* `88809296e <https://git.opendaylight.org/gerrit/#/q/88809296e>`_
  `BUG-9018 <https://bugs.opendaylight.org/show_bug.cgi?id=9018>`_
  : bug 9018 l2gw designated dhcp fix
* `16dd4e6fc <https://git.opendaylight.org/gerrit/#/q/16dd4e6fc>`_
  `BUG-8973 <https://bugs.opendaylight.org/show_bug.cgi?id=8973>`_
  : Bug 8973 : DHCP fixes
* `b28c5d7d0 <https://git.opendaylight.org/gerrit/#/q/b28c5d7d0>`_
  : Fix cloud-servicechain YANG
* `4c1747493 <https://git.opendaylight.org/gerrit/#/q/4c1747493>`_
  `BUG-9014 <https://bugs.opendaylight.org/show_bug.cgi?id=9014>`_
  : BUG 9014 : Remove unnecessary log statements in VPN Engine
* `5ff7c1f41 <https://git.opendaylight.org/gerrit/#/q/5ff7c1f41>`_
  : Remove aggregator from artifactId
* `a17284be8 <https://git.opendaylight.org/gerrit/#/q/a17284be8>`_
  : rm it module
* `573530cec <https://git.opendaylight.org/gerrit/#/q/573530cec>`_
  `BUG-8965 <https://bugs.opendaylight.org/show_bug.cgi?id=8965>`_
  : Bug 8965 - L2gw update is not suported
* `58e9af3b3 <https://git.opendaylight.org/gerrit/#/q/58e9af3b3>`_
  `BUG-7380 <https://bugs.opendaylight.org/show_bug.cgi?id=7380>`_
  : Bug 7380: service-binding exceptions from ACL
* `f85a2e7ca <https://git.opendaylight.org/gerrit/#/q/f85a2e7ca>`_
  `BUG-8953 <https://bugs.opendaylight.org/show_bug.cgi?id=8953>`_
  : Bug 8953: Fix exceptions raised due to PNF confused with FIP
* `fa4669d5a <https://git.opendaylight.org/gerrit/#/q/fa4669d5a>`_
  `BUG-9026 <https://bugs.opendaylight.org/show_bug.cgi?id=9026>`_
  : Bug 9026: ACL issue in handling port-create
* `bd66523d5 <https://git.opendaylight.org/gerrit/#/q/bd66523d5>`_
  `BUG-8953 <https://bugs.opendaylight.org/show_bug.cgi?id=8953>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin.
* `e484f5ad0 <https://git.opendaylight.org/gerrit/#/q/e484f5ad0>`_
  : Remove learn mode from aclserivce.
* `fbecdd444 <https://git.opendaylight.org/gerrit/#/q/fbecdd444>`_
  : Fix exception handling in neutronvpn shell
* `8a716d54b <https://git.opendaylight.org/gerrit/#/q/8a716d54b>`_
  `BUG-8860 <https://bugs.opendaylight.org/show_bug.cgi?id=8860>`_
  : Bug 8860 : Populate elantag at time of elanInstance creation
* `1a4aeb7fd <https://git.opendaylight.org/gerrit/#/q/1a4aeb7fd>`_
  : Remove transparent mode from aclservice.
* `09ad109b2 <https://git.opendaylight.org/gerrit/#/q/09ad109b2>`_
  `BUG-8893 <https://bugs.opendaylight.org/show_bug.cgi?id=8893>`_
  : BUG-8893 patch port mysteriously deleted
* `8f7fdba99 <https://git.opendaylight.org/gerrit/#/q/8f7fdba99>`_
  `BUG-8964 <https://bugs.opendaylight.org/show_bug.cgi?id=8964>`_
  : Bug 8964 - Neutron test neutron.tests.tempest.scenario.test_floatingip.FloatingIpSameNetwork.test_east_west fails
* `010d05782 <https://git.opendaylight.org/gerrit/#/q/010d05782>`_
  : Spec for Acl change reflection on existing communication
* `77d2276b3 <https://git.opendaylight.org/gerrit/#/q/77d2276b3>`_
  : Remove deprecated CheckedFuture
* `61024528a <https://git.opendaylight.org/gerrit/#/q/61024528a>`_
  : Remove unused references to DataChangeListener
* `b991f2af2 <https://git.opendaylight.org/gerrit/#/q/b991f2af2>`_
  : Bug7380:CSIT FIP ping is getting failed for Ext Flat/VLAN Network
* `5bbfc3cf5 <https://git.opendaylight.org/gerrit/#/q/5bbfc3cf5>`_
  `BUG-9136
9136 <https://bugs.opendaylight.org/show_bug.cgi?id=9136
9136>`_
  : Bug 9136 - Suspected ReadOnlyTransaction leak in QosNeutronUtils
* `e41f59b33 <https://git.opendaylight.org/gerrit/#/q/e41f59b33>`_
  `BUG-7380 <https://bugs.opendaylight.org/show_bug.cgi?id=7380>`_
  : Bug 7380: service-binding exceptions from ACL
* `ae6f198f9 <https://git.opendaylight.org/gerrit/#/q/ae6f198f9>`_
  : Remove stateless mode from AclService.
* `0a80bcec9 <https://git.opendaylight.org/gerrit/#/q/0a80bcec9>`_
  : Minor code cleanup in QoS
* `dd2529d66 <https://git.opendaylight.org/gerrit/#/q/dd2529d66>`_
  : Cleanup cherry-pick of 61888
* `9a28be361 <https://git.opendaylight.org/gerrit/#/q/9a28be361>`_
  `BUG-9100 <https://bugs.opendaylight.org/show_bug.cgi?id=9100>`_
  : Bug 9100 : tx leak in DhcpExternalTunnelManager
* `c1610df5d <https://git.opendaylight.org/gerrit/#/q/c1610df5d>`_
  : Replace <? extends Object> by <?>
* `1b102313e <https://git.opendaylight.org/gerrit/#/q/1b102313e>`_
  `BUG-9012 <https://bugs.opendaylight.org/show_bug.cgi?id=9012>`_
  : Bug 9012 : BGP not connecting to config server
* `270e11400 <https://git.opendaylight.org/gerrit/#/q/270e11400>`_
  : Cluster support for netvirt QoS
* `5dab330a3 <https://git.opendaylight.org/gerrit/#/q/5dab330a3>`_
  : vpnmanager DJC enqueueJob without using AbstractDataStoreJob API
* `5533d26dd <https://git.opendaylight.org/gerrit/#/q/5533d26dd>`_
  `BUG-9003 <https://bugs.opendaylight.org/show_bug.cgi?id=9003>`_
  : BUG 9003: Fix classifier entry processing order
* `5ba7f1e0b <https://git.opendaylight.org/gerrit/#/q/5ba7f1e0b>`_
  `BUG-9003 <https://bugs.opendaylight.org/show_bug.cgi?id=9003>`_
  : BUG 9003: Fix port chain event triggered two times
* `3385dee0f <https://git.opendaylight.org/gerrit/#/q/3385dee0f>`_
  : BUG: Adapt SFC translator to SFC code in Nitrogen
* `0c6ecdf47 <https://git.opendaylight.org/gerrit/#/q/0c6ecdf47>`_
  : BUG9094 Bind to last SF interface if origin node
* `43bc42f11 <https://git.opendaylight.org/gerrit/#/q/43bc42f11>`_
  : BUG9095 Capture SFC tunnel traffic for path egress
* `e219b226e <https://git.opendaylight.org/gerrit/#/q/e219b226e>`_
  `BUG-9003 <https://bugs.opendaylight.org/show_bug.cgi?id=9003>`_
  : BUG 9003: Support source-logical-port acl match
* `9a86dedd5 <https://git.opendaylight.org/gerrit/#/q/9a86dedd5>`_
  : Replace size()==0 by isEmpty()
* `65e472949 <https://git.opendaylight.org/gerrit/#/q/65e472949>`_
  : Cleanup
* `683ceee8c <https://git.opendaylight.org/gerrit/#/q/683ceee8c>`_
  `BUG-9035 <https://bugs.opendaylight.org/show_bug.cgi?id=9035>`_
  : Bug 9035: - NPE at org.opendaylight.netvirt.elan.arp.responder.ArpResponderUtil.getMatchCriteria
* `fea76a166 <https://git.opendaylight.org/gerrit/#/q/fea76a166>`_
  : Add missing null check
* `b079a62db <https://git.opendaylight.org/gerrit/#/q/b079a62db>`_
  : Bug:9013 ElanUtils: RPC Call to Get egress actions for interface, OptimisticLockFailedException
* `050842d9f <https://git.opendaylight.org/gerrit/#/q/050842d9f>`_
  `BUG-9085 <https://bugs.opendaylight.org/show_bug.cgi?id=9085>`_
  : Bug 9085 - CSIT Sporadic failures - test_security_groups_basic_ops.TestSecurityGroupsBasicOps.test_cross_tenant_traffic
* `68e5dd154 <https://git.opendaylight.org/gerrit/#/q/68e5dd154>`_
  : bgpmanager BgpUtil code clean-up: Make private what can, and rm unused
* `f13b13ee8 <https://git.opendaylight.org/gerrit/#/q/f13b13ee8>`_
  : lower BGPconnect logs to debug level
* `7d542cf91 <https://git.opendaylight.org/gerrit/#/q/7d542cf91>`_
  : Remove unused NatNodeEventListener
* `0a5f9929f <https://git.opendaylight.org/gerrit/#/q/0a5f9929f>`_
  `BUG-6349 <https://bugs.opendaylight.org/show_bug.cgi?id=6349>`_
  : Bug 6349: try connecting to qthrift only when configured. - default values are set to invalid host/port. - verify whether port/host configured before connecting
* `004eb5a67 <https://git.opendaylight.org/gerrit/#/q/004eb5a67>`_
  `BUG-9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9034>`_
  : Bug 9034: bgpmanager BgpUtil rm unused pendingWrTransaction
* `54db8fe10 <https://git.opendaylight.org/gerrit/#/q/54db8fe10>`_
  `BUG-9012 <https://bugs.opendaylight.org/show_bug.cgi?id=9012>`_
  : Bug 9012 : BGP reconnect and retry logic to QBGP
* `f99399a81 <https://git.opendaylight.org/gerrit/#/q/f99399a81>`_
  `BUG-8996 <https://bugs.opendaylight.org/show_bug.cgi?id=8996>`_
  : Bug 8996 : BGP EOR and some minor fixes
* `1f350e9e7 <https://git.opendaylight.org/gerrit/#/q/1f350e9e7>`_
  : Bug9016:Using Single Transaction during NAPT SwitchOver
* `bb32ca907 <https://git.opendaylight.org/gerrit/#/q/bb32ca907>`_
  : Replace size()==0 by isEmpty()
* `79acd5d36 <https://git.opendaylight.org/gerrit/#/q/79acd5d36>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `a28cd0577 <https://git.opendaylight.org/gerrit/#/q/a28cd0577>`_
  `BUG-9022 <https://bugs.opendaylight.org/show_bug.cgi?id=9022>`_
  : Bug 9022: ACL: Broadcast traffic is dropped in ACL tables
* `bd093eb82 <https://git.opendaylight.org/gerrit/#/q/bd093eb82>`_
  `BUG-8976 <https://bugs.opendaylight.org/show_bug.cgi?id=8976>`_
  : Bug 8976 - Upstreaming fixes to master
* `19f5c2bd9 <https://git.opendaylight.org/gerrit/#/q/19f5c2bd9>`_
  `BUG-9102 <https://bugs.opendaylight.org/show_bug.cgi?id=9102>`_
  : Bug 9102 Fix ReadOnlyTransaction leak in NeutronvpnUtils
* `72f80979d <https://git.opendaylight.org/gerrit/#/q/72f80979d>`_
  : Fix bad cherry-pick of 61976
* `486c42d89 <https://git.opendaylight.org/gerrit/#/q/486c42d89>`_
  `BUG-8976 <https://bugs.opendaylight.org/show_bug.cgi?id=8976>`_
  : Bug 8976 - Upstreaming fixes to master
* `142616db1 <https://git.opendaylight.org/gerrit/#/q/142616db1>`_
  `BUG-8860 <https://bugs.opendaylight.org/show_bug.cgi?id=8860>`_
  : Bug 8860: NPE in getElanTag from SubnetmapChangeListener
* `167386da3 <https://git.opendaylight.org/gerrit/#/q/167386da3>`_
  `BUG-8953 <https://bugs.opendaylight.org/show_bug.cgi?id=8953>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin
* `56e5a95f9 <https://git.opendaylight.org/gerrit/#/q/56e5a95f9>`_
  `BUG-9030 <https://bugs.opendaylight.org/show_bug.cgi?id=9030>`_
  : Bug 9030 - port and port security groups cannot be null
* `7d78ac953 <https://git.opendaylight.org/gerrit/#/q/7d78ac953>`_
  `BUG-8953 <https://bugs.opendaylight.org/show_bug.cgi?id=8953>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin
* `2c9ee9d3c <https://git.opendaylight.org/gerrit/#/q/2c9ee9d3c>`_
  `BUG-9051 <https://bugs.opendaylight.org/show_bug.cgi?id=9051>`_
  : Bug 9051 - Failed to handle router GW flow in GW-MAC table. DPN id is missing for router-id
* `c354cb141 <https://git.opendaylight.org/gerrit/#/q/c354cb141>`_
  `BUG-9030 <https://bugs.opendaylight.org/show_bug.cgi?id=9030>`_
  : Bug 9030 - port and port security groups cannot be null
* `679376d4a <https://git.opendaylight.org/gerrit/#/q/679376d4a>`_
  `BUG-8945 <https://bugs.opendaylight.org/show_bug.cgi?id=8945>`_
  : Bug 8945 - Missing key is getVrfId. Supplied key is VpnInstanceOpDataEntryKey
* `7ff240d17 <https://git.opendaylight.org/gerrit/#/q/7ff240d17>`_
  `BUG-9014 <https://bugs.opendaylight.org/show_bug.cgi?id=9014>`_
  : BUG 9014: Remove unnecessary Log statements for evpn/subnetroute
* `0f47bfb25 <https://git.opendaylight.org/gerrit/#/q/0f47bfb25>`_
  `BUG-8960 <https://bugs.opendaylight.org/show_bug.cgi?id=8960>`_
  : Bug 8960: port information for 1 dpn is missing in subnet-op-data and port-op-data
* `c705463bd <https://git.opendaylight.org/gerrit/#/q/c705463bd>`_
  `BUG-9014
9014 <https://bugs.opendaylight.org/show_bug.cgi?id=9014
9014>`_
  : Bug 9014 - ElanUtils: buildRemoteDmacFlowEntry
* `62ad72f96 <https://git.opendaylight.org/gerrit/#/q/62ad72f96>`_
  : cleanup for erros that should be info
* `9d2df477e <https://git.opendaylight.org/gerrit/#/q/9d2df477e>`_
  `BUG-8974 <https://bugs.opendaylight.org/show_bug.cgi?id=8974>`_
  : Bug 8974: Fix subnet-directed-broadcast-addr ARP issue
* `c5d75741b <https://git.opendaylight.org/gerrit/#/q/c5d75741b>`_
  : Use INFO for logging GW search misses
* `a8d034553 <https://git.opendaylight.org/gerrit/#/q/a8d034553>`_
  `BUG-9015 <https://bugs.opendaylight.org/show_bug.cgi?id=9015>`_
  : Bug 9015 - Unable to install group
* `7d7267df0 <https://git.opendaylight.org/gerrit/#/q/7d7267df0>`_
  : Fix Junit failures in master in ACL & SFC
* `3df86fea4 <https://git.opendaylight.org/gerrit/#/q/3df86fea4>`_
  `BUG-8774 <https://bugs.opendaylight.org/show_bug.cgi?id=8774>`_
  : Bug 8774 DHCP Service to use DHCP Port MAC Address
* `3dfb2942f <https://git.opendaylight.org/gerrit/#/q/3dfb2942f>`_
  : set BGP connect problem to be info
* `1a0a6b2a8 <https://git.opendaylight.org/gerrit/#/q/1a0a6b2a8>`_
  `BUG-8981 <https://bugs.opendaylight.org/show_bug.cgi?id=8981>`_
  : Bug 8981: ACL: ARP/DHCP anti-spoofing flows does not include VM/AAP ip/mac matches in VM egress direction
* `9160eb50e <https://git.opendaylight.org/gerrit/#/q/9160eb50e>`_
  `BUG-8979 <https://bugs.opendaylight.org/show_bug.cgi?id=8979>`_
  : Bug 8979: Logging enhancements for VPNService
* `25d4c8839 <https://git.opendaylight.org/gerrit/#/q/25d4c8839>`_
  `BUG-8801 <https://bugs.opendaylight.org/show_bug.cgi?id=8801>`_
  : Bug 8801 - EVPN remote routes are not pushed to ovs flow table
* `433bc242e <https://git.opendaylight.org/gerrit/#/q/433bc242e>`_
  `BUG-9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9060
9034>`_
  : Bug 9060: Package mdsal trace utility in netvirt Karaf distribution
* `b465f01c0 <https://git.opendaylight.org/gerrit/#/q/b465f01c0>`_
  `BUG-9039 <https://bugs.opendaylight.org/show_bug.cgi?id=9039>`_
  : Bug 9039 - In Conntrack SNAT, when a router g/w is cleared traffic is dropped for other routers
* `35509ed81 <https://git.opendaylight.org/gerrit/#/q/35509ed81>`_
  `BUG-8982 <https://bugs.opendaylight.org/show_bug.cgi?id=8982>`_
  : Bug 8982: avoid .transform() NPEs
* `3661b68d7 <https://git.opendaylight.org/gerrit/#/q/3661b68d7>`_
  `BUG-9034
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9034
9034>`_
  : Bug 9034: bgpmanager BgpUtil rm unused BindingTransactionChain & Co.
* `b795753cc <https://git.opendaylight.org/gerrit/#/q/b795753cc>`_
  : Bug8861 : Data validation failed for path /snatint-ip-port-map
* `ae32206c8 <https://git.opendaylight.org/gerrit/#/q/ae32206c8>`_
  `BUG-8926 <https://bugs.opendaylight.org/show_bug.cgi?id=8926>`_
  : Bug 8926: Fix instance doesn't get an IP after deployment
* `64fddf7a0 <https://git.opendaylight.org/gerrit/#/q/64fddf7a0>`_
  `BUG-8960 <https://bugs.opendaylight.org/show_bug.cgi?id=8960>`_
  : Revert "Bug 8960: port information for 1 dpn is missing in subnet-op-data and port-op-data"
* `9396559d0 <https://git.opendaylight.org/gerrit/#/q/9396559d0>`_
  : Do not catch Throwable
* `ca2f69a0b <https://git.opendaylight.org/gerrit/#/q/ca2f69a0b>`_
  `BUG-8972 <https://bugs.opendaylight.org/show_bug.cgi?id=8972>`_
  : Bug 8972: dhcp-show does not display the defaults
* `4e4865592 <https://git.opendaylight.org/gerrit/#/q/4e4865592>`_
  `BUG-8894 <https://bugs.opendaylight.org/show_bug.cgi?id=8894>`_
  : BUG-8894 : display VPN interface count number for each VPN instance.
* `c2f221235 <https://git.opendaylight.org/gerrit/#/q/c2f221235>`_
  `BUG-8821 <https://bugs.opendaylight.org/show_bug.cgi?id=8821>`_
  : Bug 8821 : BGP Manager / BGP counter incorrect with VPNv6 prefixes
* `42ecc050b <https://git.opendaylight.org/gerrit/#/q/42ecc050b>`_
  : Neutron Port allocation for DHCP Service
* `27eb8068c <https://git.opendaylight.org/gerrit/#/q/27eb8068c>`_
  `BUG-8960 <https://bugs.opendaylight.org/show_bug.cgi?id=8960>`_
  : Bug 8960: port information for 1 dpn is missing in subnet-op-data and port-op-data
* `1a55cb7db <https://git.opendaylight.org/gerrit/#/q/1a55cb7db>`_
  `BUG-8863 <https://bugs.opendaylight.org/show_bug.cgi?id=8863>`_
  : Bug 8863: NPE at VpnFloatingIpHandler
* `6cee87347 <https://git.opendaylight.org/gerrit/#/q/6cee87347>`_
  `BUG-8962 <https://bugs.opendaylight.org/show_bug.cgi?id=8962>`_
  : Bug 8962: Fix non-parameterized LOG statements as per guidelines
* `bb6d6219e <https://git.opendaylight.org/gerrit/#/q/bb6d6219e>`_
  : Docs: add supported combinations
* `b9077c156 <https://git.opendaylight.org/gerrit/#/q/b9077c156>`_
  `BUG-8958 <https://bugs.opendaylight.org/show_bug.cgi?id=8958>`_
  : Bug 8958: Java Null pointer exception for display vpn-config after deleting a vpn from CLI
* `335f02fc8 <https://git.opendaylight.org/gerrit/#/q/335f02fc8>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails Changed set_field to load action and set only the relevent bits and other bits are preserved.
* `71eab1bad <https://git.opendaylight.org/gerrit/#/q/71eab1bad>`_
  `BUG-8937 <https://bugs.opendaylight.org/show_bug.cgi?id=8937>`_
  : Bug 8937 : High CPU utilization of Java process due to SNAT packet looping
* `3038140a9 <https://git.opendaylight.org/gerrit/#/q/3038140a9>`_
  : ELAN service is not unbound when nova delete followed by neutron port delete
* `ae08e69d7 <https://git.opendaylight.org/gerrit/#/q/ae08e69d7>`_
  `BUG-8883 <https://bugs.opendaylight.org/show_bug.cgi?id=8883>`_
  : BUG 8883 : LOG enhancement for NAT service module
* `107d12e23 <https://git.opendaylight.org/gerrit/#/q/107d12e23>`_
  `BUG-7545 <https://bugs.opendaylight.org/show_bug.cgi?id=7545>`_
  : Bug 7545 - FIP-FIP traffic between vm in same n/w in same compute is not working in stateful SG mode.
* `fea4f9460 <https://git.opendaylight.org/gerrit/#/q/fea4f9460>`_
  `BUG-8876 <https://bugs.opendaylight.org/show_bug.cgi?id=8876>`_
  : BUG 8876 - Fix to remove ELAN interface flows when external network deleted
* `a957f6df3 <https://git.opendaylight.org/gerrit/#/q/a957f6df3>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Revert "Bug 8882 - With conntrack SNAT communication with PNF fails "
* `5a57c87d0 <https://git.opendaylight.org/gerrit/#/q/5a57c87d0>`_
  `BUG-8936 <https://bugs.opendaylight.org/show_bug.cgi?id=8936>`_
  : Bug 8936: Fix IPv6 IPAM issues when an IPv6 subnet is added to IPv4 network
* `182068e3c <https://git.opendaylight.org/gerrit/#/q/182068e3c>`_
  `BUG-8789 <https://bugs.opendaylight.org/show_bug.cgi?id=8789>`_
  : Bug 8789 - Designated DHCP DPN is missing.
* `1075f5cbb <https://git.opendaylight.org/gerrit/#/q/1075f5cbb>`_
  : Add chain egress classifier support
* `84d0243b4 <https://git.opendaylight.org/gerrit/#/q/84d0243b4>`_
  : Fix some logs
* `aa214fc52 <https://git.opendaylight.org/gerrit/#/q/aa214fc52>`_
  : Replace size()==0 by isEmpty()
* `3f868b073 <https://git.opendaylight.org/gerrit/#/q/3f868b073>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `d08947abb <https://git.opendaylight.org/gerrit/#/q/d08947abb>`_
  `BUG-8914 <https://bugs.opendaylight.org/show_bug.cgi?id=8914>`_
  : BUG 8914: Fix NPE in sfc.classifier-impl
* `10b553c76 <https://git.opendaylight.org/gerrit/#/q/10b553c76>`_
  `BUG-8346 <https://bugs.opendaylight.org/show_bug.cgi?id=8346>`_
  : Bug 8346 - Conflicting modification for vpnNextHops.
* `92322950b <https://git.opendaylight.org/gerrit/#/q/92322950b>`_
  : Cleanup
* `e1f96c371 <https://git.opendaylight.org/gerrit/#/q/e1f96c371>`_
  `BUG-8917 <https://bugs.opendaylight.org/show_bug.cgi?id=8917>`_
  : Bug 8917 - CSIT Sporadic failures - Arp learning suite - missing flow on compute node
* `56098b2b9 <https://git.opendaylight.org/gerrit/#/q/56098b2b9>`_
  `BUG-8875
6770 <https://bugs.opendaylight.org/show_bug.cgi?id=8875
6770>`_
  : Bug 8875 - fix in handleNeutronPortUpdated
* `f2a6b9f88 <https://git.opendaylight.org/gerrit/#/q/f2a6b9f88>`_
  `BUG-8439 <https://bugs.opendaylight.org/show_bug.cgi?id=8439>`_
  : Bug 8439: Handling interface update event for ECMP extra routes.
* `495bece14 <https://git.opendaylight.org/gerrit/#/q/495bece14>`_
  `BUG-8884 <https://bugs.opendaylight.org/show_bug.cgi?id=8884>`_
  : Bug 8884: SNAT traffic is getting dropped when router gateway is removed
* `d8e1926de <https://git.opendaylight.org/gerrit/#/q/d8e1926de>`_
  `BUG-8632 <https://bugs.opendaylight.org/show_bug.cgi?id=8632>`_
  : Bug 8632: ECMP LB group not updated during tunnel events
* `1989e096f <https://git.opendaylight.org/gerrit/#/q/1989e096f>`_
  : Remove not needed Thread.sleep() from aclservice component tests
* `34dbc7c04 <https://git.opendaylight.org/gerrit/#/q/34dbc7c04>`_
  `BUG-8838 <https://bugs.opendaylight.org/show_bug.cgi?id=8838>`_
  : Bug 8838: aclservice NPE's
* `bf5d2f9ae <https://git.opendaylight.org/gerrit/#/q/bf5d2f9ae>`_
  `BUG-8476 <https://bugs.opendaylight.org/show_bug.cgi?id=8476>`_
  : Bug 8476 Add support for logical switch replication mode
* `f6b592571 <https://git.opendaylight.org/gerrit/#/q/f6b592571>`_
  `BUG-8892 <https://bugs.opendaylight.org/show_bug.cgi?id=8892>`_
  : Bug 8892 - LOG.error format error(VpnManagerImpl.java:176)
* `c20d1dbd8 <https://git.opendaylight.org/gerrit/#/q/c20d1dbd8>`_
  `BUG-8864 <https://bugs.opendaylight.org/show_bug.cgi?id=8864>`_
  : Bug 8864: DNAT to SNAT traffic is getting failed on same DPN for VXLAN
* `c81fd6945 <https://git.opendaylight.org/gerrit/#/q/c81fd6945>`_
  `BUG-8880
8020 <https://bugs.opendaylight.org/show_bug.cgi?id=8880
8020>`_
  : BUG 8880: Trunk port flows not created for subports
* `8139526fb <https://git.opendaylight.org/gerrit/#/q/8139526fb>`_
  : Remove derivation from controller config-parent
* `6e7f4816c <https://git.opendaylight.org/gerrit/#/q/6e7f4816c>`_
  `BUG-8853 <https://bugs.opendaylight.org/show_bug.cgi?id=8853>`_
  : Bug 8853 - In conntrack SNAT , FIB flows are not created for existing Non-NAPT switch ports.
* `8cf2c1585 <https://git.opendaylight.org/gerrit/#/q/8cf2c1585>`_
  `BUG-8753 <https://bugs.opendaylight.org/show_bug.cgi?id=8753>`_
  : Bug 8753 : Changes to create bgpvpn without VPN target
* `619dbc0ae <https://git.opendaylight.org/gerrit/#/q/619dbc0ae>`_
  `BUG-8841 <https://bugs.opendaylight.org/show_bug.cgi?id=8841>`_
  : Bug 8841 : add fib-show option to select entries per address-family or prefix
* `f2ddba6f5 <https://git.opendaylight.org/gerrit/#/q/f2ddba6f5>`_
  `BUG-8683 <https://bugs.opendaylight.org/show_bug.cgi?id=8683>`_
  : Bug 8683: Aclservice releaseId IdManager Exception
* `d139debee <https://git.opendaylight.org/gerrit/#/q/d139debee>`_
  : Move statistics into org.opendaylight.netvirt
* `f272f13aa <https://git.opendaylight.org/gerrit/#/q/f272f13aa>`_
  : Clean up lambdas and streams
* `fe51f67e7 <https://git.opendaylight.org/gerrit/#/q/fe51f67e7>`_
  `BUG-8857 <https://bugs.opendaylight.org/show_bug.cgi?id=8857>`_
  : Bug 8857 - SNAT Conntrack - VM MAC is used as Source MAC for all outbound traffic
* `327dc13ba <https://git.opendaylight.org/gerrit/#/q/327dc13ba>`_
  `BUG-8810 <https://bugs.opendaylight.org/show_bug.cgi?id=8810>`_
  : Bug 8810 : BGP Manager / support for EVPN on OAM submodule missing
* `66a968261 <https://git.opendaylight.org/gerrit/#/q/66a968261>`_
  `BUG-8809 <https://bugs.opendaylight.org/show_bug.cgi?id=8809>`_
  : Bug 8809 : BGP Manager / neighbor summary for VPNv6 wrongly parsed
* `b38b6a531 <https://git.opendaylight.org/gerrit/#/q/b38b6a531>`_
  `BUG-8811 <https://bugs.opendaylight.org/show_bug.cgi?id=8811>`_
  : Bug 8811 : BGP Manager / bgp-nbr shell config with afi vpnv6 / evpn
* `223a9b63b <https://git.opendaylight.org/gerrit/#/q/223a9b63b>`_
  `BUG-8818 <https://bugs.opendaylight.org/show_bug.cgi?id=8818>`_
  : Bug 8818 : BGP Manager. VPNv6 prefixes injected to QBGP
* `0c6928ae3 <https://git.opendaylight.org/gerrit/#/q/0c6928ae3>`_
  `BUG-8822 <https://bugs.opendaylight.org/show_bug.cgi?id=8822>`_
  : Bug 8822 : Bgp Manager / bgp-cache dumps unknown address-families
* `37b25203f <https://git.opendaylight.org/gerrit/#/q/37b25203f>`_
  : Spec to support dualstack VMs in L3VPN
* `da481cc4f <https://git.opendaylight.org/gerrit/#/q/da481cc4f>`_
  `BUG-8770 <https://bugs.opendaylight.org/show_bug.cgi?id=8770>`_
  : Bug 8770: Stale NAT entries are not getting removed for external FLAT
* `ee23cd929 <https://git.opendaylight.org/gerrit/#/q/ee23cd929>`_
  : Add a private constructor to this utility class
* `8bc1f08e8 <https://git.opendaylight.org/gerrit/#/q/8bc1f08e8>`_
  : Revert "Ship aaa-cli-jar.jar in the distribution"
* `1d7be7f43 <https://git.opendaylight.org/gerrit/#/q/1d7be7f43>`_
  : natservice-impl: propagate upstream non-null annotations
* `f92f853cd <https://git.opendaylight.org/gerrit/#/q/f92f853cd>`_
  `BUG-8835 <https://bugs.opendaylight.org/show_bug.cgi?id=8835>`_
  : Bug 8835: Java NullPointerException in display-bgp-config command
* `5c035b577 <https://git.opendaylight.org/gerrit/#/q/5c035b577>`_
  `BUG-8567 <https://bugs.opendaylight.org/show_bug.cgi?id=8567>`_
  : Bug 8567: Addition of new flows after addng extra route
* `34201d966 <https://git.opendaylight.org/gerrit/#/q/34201d966>`_
  : New Yang model container for Neutron DHCP Port service. Updated spec with correct yang.
* `9c846dc32 <https://git.opendaylight.org/gerrit/#/q/9c846dc32>`_
  : Enforce non-null collection returns in NatUtil
* `b7a19dc90 <https://git.opendaylight.org/gerrit/#/q/b7a19dc90>`_
  `BUG-8844 <https://bugs.opendaylight.org/show_bug.cgi?id=8844>`_
  : Bug 8844: CSIT Job: NullPointerException from NAT feature
* `cbf6784b2 <https://git.opendaylight.org/gerrit/#/q/cbf6784b2>`_
  : SNAT performance improvement for Controller-Based SNAT
* `85a50a360 <https://git.opendaylight.org/gerrit/#/q/85a50a360>`_
  `BUG-8796 <https://bugs.opendaylight.org/show_bug.cgi?id=8796>`_
  : Bug 8796: Fix of issue that vxlan port is created with remote_ip set to the node itself
* `22ec593f5 <https://git.opendaylight.org/gerrit/#/q/22ec593f5>`_
  : Ship aaa-cli-jar.jar in the distribution
* `97579dd37 <https://git.opendaylight.org/gerrit/#/q/97579dd37>`_
  `BUG-8791 <https://bugs.opendaylight.org/show_bug.cgi?id=8791>`_
  : Bug 8791 - L2gateway delete is not clearing l2gwCo
* `23aced2b2 <https://git.opendaylight.org/gerrit/#/q/23aced2b2>`_
  `BUG-8790 <https://bugs.opendaylight.org/show_bug.cgi?id=8790>`_
  : Bug 8790 - Local Macs getting cleared
* `912deac5f <https://git.opendaylight.org/gerrit/#/q/912deac5f>`_
  : Fix dpnId handling in SRISCListener
* `2611d2913 <https://git.opendaylight.org/gerrit/#/q/2611d2913>`_
  `BUG-8828 <https://bugs.opendaylight.org/show_bug.cgi?id=8828>`_
  : BUG 8828: Fix NPE when no remote IP on interface
* `bcf70ca8c <https://git.opendaylight.org/gerrit/#/q/bcf70ca8c>`_
  : Filter notifications for unwanted interfaces
* `ec9b17a77 <https://git.opendaylight.org/gerrit/#/q/ec9b17a77>`_
  : Revert "Spec to support dualstack VMs in L3VPN"
* `c573f20fb <https://git.opendaylight.org/gerrit/#/q/c573f20fb>`_
  : Fix ActionNxResubmit in FlowEntryObjectsStateless for aclservice
* `53e54a7de <https://git.opendaylight.org/gerrit/#/q/53e54a7de>`_
  : Use right version for statistics pom
* `e9ed39a1e <https://git.opendaylight.org/gerrit/#/q/e9ed39a1e>`_
  : Fix cherry-pick of 56902
* `2806c874a <https://git.opendaylight.org/gerrit/#/q/2806c874a>`_
  : Fix cherry-pick of 56875
* `1065b201e <https://git.opendaylight.org/gerrit/#/q/1065b201e>`_
  : Fix cherry-pick of 58749
* `a0cc3c17d <https://git.opendaylight.org/gerrit/#/q/a0cc3c17d>`_
  : Fix funny character in ebgp.yang (slanted quotation mark)
* `76a76a21d <https://git.opendaylight.org/gerrit/#/q/76a76a21d>`_
  : Adding Log statements, helps during debugging
* `146521dbc <https://git.opendaylight.org/gerrit/#/q/146521dbc>`_
  `BUG-8800
8800
8800 <https://bugs.opendaylight.org/show_bug.cgi?id=8800
8800
8800>`_
  : Bug 8800: Fix AclServiceStatefulTest newInterfaceWithMultipleAcl()
* `1407e68df <https://git.opendaylight.org/gerrit/#/q/1407e68df>`_
  `BUG-8838 <https://bugs.opendaylight.org/show_bug.cgi?id=8838>`_
  : Bug 8838 - aclservice NPE's
* `c7d20f183 <https://git.opendaylight.org/gerrit/#/q/c7d20f183>`_
  `BUG-8838 <https://bugs.opendaylight.org/show_bug.cgi?id=8838>`_
  : Bug 8838 - aclservice NPE's
* `507b59be0 <https://git.opendaylight.org/gerrit/#/q/507b59be0>`_
  : Fix NullPointerException in QosInterfaceStateChangeListener
* `301589e59 <https://git.opendaylight.org/gerrit/#/q/301589e59>`_
  : Use manual setters instead @Immutable in IdentifiedAceBuilder.xtend
* `590dcb2a9 <https://git.opendaylight.org/gerrit/#/q/590dcb2a9>`_
  : Spec to support dualstack VMs in L3VPN


neutron
-------
* `e2db0a97 <https://git.opendaylight.org/gerrit/#/q/e2db0a97>`_
  : Karaf 3 features must only use other K3 features
* `7db7a1c2 <https://git.opendaylight.org/gerrit/#/q/7db7a1c2>`_
  : Add missing Karaf 3 dependency


nic
---
* `86ae4b1 <https://git.opendaylight.org/gerrit/#/q/86ae4b1>`_
  : Fix autorelease by moving neutron dependency


odlparent
---------
* `4fece59 <https://git.opendaylight.org/gerrit/#/q/4fece59>`_
  `BUG-9228 <https://bugs.opendaylight.org/show_bug.cgi?id=9228>`_
  : Bug 9228: Package bcprov-ext-jdk15on jar


openflowplugin
--------------
* `ba0f1d1b2 <https://git.opendaylight.org/gerrit/#/q/ba0f1d1b2>`_
  : Fix possible NPE on ContextChainHolderImpl
* `8f1b3ed16 <https://git.opendaylight.org/gerrit/#/q/8f1b3ed16>`_
  : This patch implements ct-mark support in nicira extensions.
* `0cdf07a56 <https://git.opendaylight.org/gerrit/#/q/0cdf07a56>`_
  `BUG-9217 <https://bugs.opendaylight.org/show_bug.cgi?id=9217>`_
  : Do not try to close context with null deviceInfo
* `654c8c413 <https://git.opendaylight.org/gerrit/#/q/654c8c413>`_
  `BUG-9216 <https://bugs.opendaylight.org/show_bug.cgi?id=9216>`_
  : Sort bucket actions
* `1f56ac9d0 <https://git.opendaylight.org/gerrit/#/q/1f56ac9d0>`_
  `BUG-9089 <https://bugs.opendaylight.org/show_bug.cgi?id=9089>`_
  : Use HashedWheelTimer instead of item scheduler
* `6896f5702 <https://git.opendaylight.org/gerrit/#/q/6896f5702>`_
  `BUG-9089 <https://bugs.opendaylight.org/show_bug.cgi?id=9089>`_
  : Terminate SLAVE task before sending role change
* `575b50379 <https://git.opendaylight.org/gerrit/#/q/575b50379>`_
  `BUG-9038 <https://bugs.opendaylight.org/show_bug.cgi?id=9038>`_
  : Fix transaction manager closing.
* `7601f1244 <https://git.opendaylight.org/gerrit/#/q/7601f1244>`_
  `BUG-9038 <https://bugs.opendaylight.org/show_bug.cgi?id=9038>`_
  : Fix TransactionChainManager IllegalStateException
* `ffc9c24dc <https://git.opendaylight.org/gerrit/#/q/ffc9c24dc>`_
  `BUG-8723 <https://bugs.opendaylight.org/show_bug.cgi?id=8723>`_
  : Solves issue with two connections from one device.
* `bf886e634 <https://git.opendaylight.org/gerrit/#/q/bf886e634>`_
  `BUG-8668 <https://bugs.opendaylight.org/show_bug.cgi?id=8668>`_
  : Fix context state comparison
* `c338fe99b <https://git.opendaylight.org/gerrit/#/q/c338fe99b>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `4da1fac23 <https://git.opendaylight.org/gerrit/#/q/4da1fac23>`_
  `BUG-8805 <https://bugs.opendaylight.org/show_bug.cgi?id=8805>`_
  : Close CSS registration in separate thread
* `b2ebefe1a <https://git.opendaylight.org/gerrit/#/q/b2ebefe1a>`_
  `BUG-8805 <https://bugs.opendaylight.org/show_bug.cgi?id=8805>`_
  : Fix context chain initialization and SLAVE change
* `3b5d944f7 <https://git.opendaylight.org/gerrit/#/q/3b5d944f7>`_
  `BUG-8836 <https://bugs.opendaylight.org/show_bug.cgi?id=8836>`_
  : Fix match extensions deserialization
* `2629a084f <https://git.opendaylight.org/gerrit/#/q/2629a084f>`_
  `BUG-7501 <https://bugs.opendaylight.org/show_bug.cgi?id=7501>`_
  : Improve flow collection


ovsdb
-----
* `476e2bbc <https://git.opendaylight.org/gerrit/#/q/476e2bbc>`_
  `BUG-9166 <https://bugs.opendaylight.org/show_bug.cgi?id=9166>`_
  : BUG 9166 - Fix Netvirt L2GW Illegal state exception
* `b26aa382 <https://git.opendaylight.org/gerrit/#/q/b26aa382>`_
  : Refactor compareDbVersionToMinVersion
* `5f045af1 <https://git.opendaylight.org/gerrit/#/q/5f045af1>`_
  `BUG-9072
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9072
9034>`_
  : BUG 9072 - Fix OVSDB TransactionChain memory leak
* `c997346f <https://git.opendaylight.org/gerrit/#/q/c997346f>`_
  `BUG-9073
9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9073
9060
9034>`_
  : BUG 9073 Fix memory leak - close TransactionChain
* `189c2716 <https://git.opendaylight.org/gerrit/#/q/189c2716>`_
  `BUG-8874 <https://bugs.opendaylight.org/show_bug.cgi?id=8874>`_
  : Bug 8874 - Tunnel_ips of hardware_vtep is cleared when Open vSwitch process restarted in Open vSwitch HWVTEP Emulator
* `c9bbb9b3 <https://git.opendaylight.org/gerrit/#/q/c9bbb9b3>`_
  `BUG-8476 <https://bugs.opendaylight.org/show_bug.cgi?id=8476>`_
  : Bug 8476 Add support for logical switch replication mode
* `9779ec50 <https://git.opendaylight.org/gerrit/#/q/9779ec50>`_
  `BUG-8476 <https://bugs.opendaylight.org/show_bug.cgi?id=8476>`_
  : Bug 8476 Add support for logical switch replication mode
* `9fd9d974 <https://git.opendaylight.org/gerrit/#/q/9fd9d974>`_
  `BUG-8673 <https://bugs.opendaylight.org/show_bug.cgi?id=8673>`_
  : bug 8673 physical switch node is not removed


sfc
---
* `fb1f7da7 <https://git.opendaylight.org/gerrit/#/q/fb1f7da7>`_
  : Replace size()==0 by isEmpty()
* `79939f8c <https://git.opendaylight.org/gerrit/#/q/79939f8c>`_
  : Add private constructor to this utility class
* `cb233bb6 <https://git.opendaylight.org/gerrit/#/q/cb233bb6>`_
  : Fix some logs
* `e8f1c20b <https://git.opendaylight.org/gerrit/#/q/e8f1c20b>`_
  : Join and simplify if(s) statements


unimgr
------
* `f5e14b4 <https://git.opendaylight.org/gerrit/#/q/f5e14b4>`_
  : Fix autorelease: update adjacency changes


vtn
---
* `1a8cac82 <https://git.opendaylight.org/gerrit/#/q/1a8cac82>`_
  `BUG-9225 <https://bugs.opendaylight.org/show_bug.cgi?id=9225>`_
  : Bug 9225: Upgrade Apache Tomcat for VTN coordinator to 7.0.82.
* `eea766b8 <https://git.opendaylight.org/gerrit/#/q/eea766b8>`_
  `BUG-9225 <https://bugs.opendaylight.org/show_bug.cgi?id=9225>`_
  : Bug 9225: Upgrade Apache Tomcat for VTN coordinator to 7.0.81.
* `97305e05 <https://git.opendaylight.org/gerrit/#/q/97305e05>`_
  `BUG-9174 <https://bugs.opendaylight.org/show_bug.cgi?id=9174>`_
  : Bug 9174: Fix for VTN Coordinator Flowlistentry Creation failure
* `35a07a73 <https://git.opendaylight.org/gerrit/#/q/35a07a73>`_
  `BUG-9024 <https://bugs.opendaylight.org/show_bug.cgi?id=9024>`_
  : Bug 9024: Set null to bundle version qualifier if it is empty.
* `010288c6 <https://git.opendaylight.org/gerrit/#/q/010288c6>`_
  : Disable VSEM Provider Build temporarily
* `f765574e <https://git.opendaylight.org/gerrit/#/q/f765574e>`_
  : BUG:8761 Portmapping fails due to unnecessary hex conversion


yangtools
---------
* `842b35b6a <https://git.opendaylight.org/gerrit/#/q/842b35b6a>`_
  : Fix AnyXml node handling
* `3f22345f1 <https://git.opendaylight.org/gerrit/#/q/3f22345f1>`_
  `BUG-7246 <https://bugs.opendaylight.org/show_bug.cgi?id=7246>`_
  : Bug 7246 - Fix of SchemaTracker initialization and lookup of schema nodes
* `9a23a0866 <https://git.opendaylight.org/gerrit/#/q/9a23a0866>`_
  `BUG-8713 <https://bugs.opendaylight.org/show_bug.cgi?id=8713>`_
  : Bug 8713 - BGP models not compatible with leafref context
* `ee3185a8f <https://git.opendaylight.org/gerrit/#/q/ee3185a8f>`_
  : Throw SourceException instead of IllegalArgumentException
* `8b3dc57ef <https://git.opendaylight.org/gerrit/#/q/8b3dc57ef>`_
  `BUG-9005 <https://bugs.opendaylight.org/show_bug.cgi?id=9005>`_
  : Bug 9005 - scope of model import prefix should be module/submodule
* `6d56ef028 <https://git.opendaylight.org/gerrit/#/q/6d56ef028>`_
  `BUG-8922 <https://bugs.opendaylight.org/show_bug.cgi?id=8922>`_
  : Bug 8922 - Evaluation of if-features is done regardless of ancestors
* `0334db2b2 <https://git.opendaylight.org/gerrit/#/q/0334db2b2>`_
  `BUG-7051 <https://bugs.opendaylight.org/show_bug.cgi?id=7051>`_
  : Bug 7051 - Refactoring of StmtContextUtils
* `1d93c8cb7 <https://git.opendaylight.org/gerrit/#/q/1d93c8cb7>`_
  `BUG-7051 <https://bugs.opendaylight.org/show_bug.cgi?id=7051>`_
  : Bug 7051 - moving of SubstatementValidator into spi.meta package
* `2ea61b9a6 <https://git.opendaylight.org/gerrit/#/q/2ea61b9a6>`_
  `BUG-8831 <https://bugs.opendaylight.org/show_bug.cgi?id=8831>`_
  : Bug 8831 - Yang 1.1 default values are not checked correctly
* `8c3d5c715 <https://git.opendaylight.org/gerrit/#/q/8c3d5c715>`_
  : Cleanup SchemaTracker logic
* `2bee5fa78 <https://git.opendaylight.org/gerrit/#/q/2bee5fa78>`_
  `BUG-7464 <https://bugs.opendaylight.org/show_bug.cgi?id=7464>`_
  : BUG-7464: do not depend on odlparent's triemap
* `ffab937a0 <https://git.opendaylight.org/gerrit/#/q/ffab937a0>`_
  `BUG-7464 <https://bugs.opendaylight.org/show_bug.cgi?id=7464>`_
  : BUG-7464: Switch to use forked TrieMap
* `c53dce13e <https://git.opendaylight.org/gerrit/#/q/c53dce13e>`_
  `BUG-8803 <https://bugs.opendaylight.org/show_bug.cgi?id=8803>`_
  : Bug 8803: check for null return NamespaceContext.getNamespaceURI()
* `2671dcb87 <https://git.opendaylight.org/gerrit/#/q/2671dcb87>`_
  `BUG-8733
8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733
8733>`_
  : BUG-8733: add YangInstanceIdentifierBuilder.append()
* `14f1f1332 <https://git.opendaylight.org/gerrit/#/q/14f1f1332>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: add EmptyDataTreeCandidateNode
* `104b5d943 <https://git.opendaylight.org/gerrit/#/q/104b5d943>`_
  `BUG-6972 <https://bugs.opendaylight.org/show_bug.cgi?id=6972>`_
  : BUG-6972: eliminate StmtContext.getOrder()
* `e856047ff <https://git.opendaylight.org/gerrit/#/q/e856047ff>`_
  `BUG-6972 <https://bugs.opendaylight.org/show_bug.cgi?id=6972>`_
  : BUG-6972: Add OptionaBoolean utility
