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
  `AAA-144 <https://jira.opendaylight.org/browse/AAA-144>`_
  : Bug 9040: avoid using dynamicAuthorization for cluster-admin operations
* `0c97134 <https://git.opendaylight.org/gerrit/#/q/0c97134>`_
  : Revert "Propagate exceptions from encrypt and decrypt services in aaa-encryption-service API."
* `def98d6 <https://git.opendaylight.org/gerrit/#/q/def98d6>`_
  : Propagate exceptions from encrypt and decrypt services in aaa-encryption-service API.
* `0ed8405 <https://git.opendaylight.org/gerrit/#/q/0ed8405>`_
  : Export aaa-cli-jar in the artifacts


bgpcep
------
* `d3c0a1e <https://git.opendaylight.org/gerrit/#/q/d3c0a1e>`_
  `BGPCEP-683 <https://jira.opendaylight.org/browse/BGPCEP-683>`_
  : BUG-8987: Print Exception when Css registration fails
* `93dbe1f <https://git.opendaylight.org/gerrit/#/q/93dbe1f>`_
  `BGPCEP-682 <https://jira.opendaylight.org/browse/BGPCEP-682>`_
  : Bug-8942: Fix DelegatedLspsCount
* `e8c3219 <https://git.opendaylight.org/gerrit/#/q/e8c3219>`_
  `BGPCEP-652 <https://jira.opendaylight.org/browse/BGPCEP-652>`_
  : BUG-8156 : conflicting listener fix
* `32eccfc <https://git.opendaylight.org/gerrit/#/q/32eccfc>`_
  `BGPCEP-652 <https://jira.opendaylight.org/browse/BGPCEP-652>`_
  : BUG-8156 : fixed start of session manager
* `7d9607f <https://git.opendaylight.org/gerrit/#/q/7d9607f>`_
  `BGPCEP-652 <https://jira.opendaylight.org/browse/BGPCEP-652>`_
  : BUG-8156 : duplicate session up fixed
* `385b5f6 <https://git.opendaylight.org/gerrit/#/q/385b5f6>`_
  : Enforce no split packages
* `ad75deb <https://git.opendaylight.org/gerrit/#/q/ad75deb>`_
  : BUG-8722: fix regression introduced by BUG-5876
* `bf16dcb <https://git.opendaylight.org/gerrit/#/q/bf16dcb>`_
  `BGPCEP-677 <https://jira.opendaylight.org/browse/BGPCEP-677>`_
  : Bug 8667 - PCEP: When peer closes got IO exception
* `91fe407 <https://git.opendaylight.org/gerrit/#/q/91fe407>`_
  `BGPCEP-590 <https://jira.opendaylight.org/browse/BGPCEP-590>`_
  : BUG-7027 : Remove Data change counter CSS configuration


controller
----------
* `c67ff04 <https://git.opendaylight.org/gerrit/#/q/c67ff04>`_
  : Lower verbosity in SimpletxDomRead
* `3bcdbbb <https://git.opendaylight.org/gerrit/#/q/3bcdbbb>`_
  `CONTROLLER-1771 <https://jira.opendaylight.org/browse/CONTROLLER-1771>`_
  : Bug 9165: Log config subsystem readiness as INFO
* `3d65041 <https://git.opendaylight.org/gerrit/#/q/3d65041>`_
  `CONTROLLER-1739 <https://jira.opendaylight.org/browse/CONTROLLER-1739>`_
  : Bug 8829: Ignore error when initializing dsbenchmark
* `3b16b0d <https://git.opendaylight.org/gerrit/#/q/3b16b0d>`_
  `CONTROLLER-1760 <https://jira.opendaylight.org/browse/CONTROLLER-1760>`_
  : Bug 9060: Filter TracingBroker stack trace elements
* `39b7a26 <https://git.opendaylight.org/gerrit/#/q/39b7a26>`_
  `CONTROLLER-1713 <https://jira.opendaylight.org/browse/CONTROLLER-1713>`_
  : BUG-8639: always invalidate primary info cache
* `274b3b9 <https://git.opendaylight.org/gerrit/#/q/274b3b9>`_
  `CONTROLLER-1757 <https://jira.opendaylight.org/browse/CONTROLLER-1757>`_
  : BUG-9054: add a ClusterSingletonService integration test
* `0cb983d <https://git.opendaylight.org/gerrit/#/q/0cb983d>`_
  : BUG-8858: remove sleeps from test driver
* `9ea02d2 <https://git.opendaylight.org/gerrit/#/q/9ea02d2>`_
  `CONTROLLER-1752 <https://jira.opendaylight.org/browse/CONTROLLER-1752>`_
  : Bug 9008: Fix the error of the persisted journal data format
* `c18c8af <https://git.opendaylight.org/gerrit/#/q/c18c8af>`_
  : Fix intermitent testFollowerResyncWith*LeaderRestart failure
* `334cb5c <https://git.opendaylight.org/gerrit/#/q/334cb5c>`_
  : Fix intermittent testOwnerChangesOnPeerAvailabilityChanges failure
* `71a4b63 <https://git.opendaylight.org/gerrit/#/q/71a4b63>`_
  `CONTROLLER-1757 <https://jira.opendaylight.org/browse/CONTROLLER-1757>`_
  : BUG-9054: do not use BatchedModifications needlessly
* `892d03c <https://git.opendaylight.org/gerrit/#/q/892d03c>`_
  `CONTROLLER-1760 <https://jira.opendaylight.org/browse/CONTROLLER-1760>`_
  : Bug 9060: Karaf CLI command to print open transactions
* `36b7ca9 <https://git.opendaylight.org/gerrit/#/q/36b7ca9>`_
  `CONTROLLER-1760 <https://jira.opendaylight.org/browse/CONTROLLER-1760>`_
  : Bug 9060: TracingBroker printOpenTransactions
* `d5606ac <https://git.opendaylight.org/gerrit/#/q/d5606ac>`_
  `CONTROLLER-1760 <https://jira.opendaylight.org/browse/CONTROLLER-1760>`_
  : Bug 9060: Remove un-used Instant getObjectCreated() from CloseTracked
* `d119e43 <https://git.opendaylight.org/gerrit/#/q/d119e43>`_
  `CONTROLLER-1760 <https://jira.opendaylight.org/browse/CONTROLLER-1760>`_
  : Bug 9060: mdsal-trace tooling with getAllUnique() to find Tx leaks
* `c1579d0 <https://git.opendaylight.org/gerrit/#/q/c1579d0>`_
  `CONTROLLER-1760 <https://jira.opendaylight.org/browse/CONTROLLER-1760>`_
  : Bug 9060: TracingBroker with transaction-debug-context-enabled
* `28739e1 <https://git.opendaylight.org/gerrit/#/q/28739e1>`_
  `CONTROLLER-1756 <https://jira.opendaylight.org/browse/CONTROLLER-1756>`_
  : Bug 9034: TracingBroker with TracingReadOnlyTransaction
* `4a09cad <https://git.opendaylight.org/gerrit/#/q/4a09cad>`_
  `CONTROLLER-1756 <https://jira.opendaylight.org/browse/CONTROLLER-1756>`_
  : Bug 9034: TracingBroker with TracingTransactionChain
* `644bc12 <https://git.opendaylight.org/gerrit/#/q/644bc12>`_
  `CONTROLLER-1743 <https://jira.opendaylight.org/browse/CONTROLLER-1743>`_
  : Bug 8885: Fix DistributedShardedDOMDataTree initialization
* `b66d618 <https://git.opendaylight.org/gerrit/#/q/b66d618>`_
  `CONTROLLER-1755 <https://jira.opendaylight.org/browse/CONTROLLER-1755>`_
  : BUG-9028: make NonPersistentDataProvider schedule invocation
* `361c7f2 <https://git.opendaylight.org/gerrit/#/q/361c7f2>`_
  : Add debug to pinpoint lastApplied movement
* `d1de9c5 <https://git.opendaylight.org/gerrit/#/q/d1de9c5>`_
  : Make testTransactionForwardedToLeaderAfterRetry purge-aware
* `3e86a2e <https://git.opendaylight.org/gerrit/#/q/3e86a2e>`_
  : Make ShardTest.testCommitWhenTransactionHasModifications() wait a bit
* `456e2fa <https://git.opendaylight.org/gerrit/#/q/456e2fa>`_
  `CONTROLLER-1746 <https://jira.opendaylight.org/browse/CONTROLLER-1746>`_
  : BUG-8941: enqueue purges once ask-based transactions resolve
* `babc1ee <https://git.opendaylight.org/gerrit/#/q/babc1ee>`_
  `CONTROLLER-1724 <https://jira.opendaylight.org/browse/CONTROLLER-1724>`_
  : BUG-8733: eliminate ProxyRegistration
* `606c917 <https://git.opendaylight.org/gerrit/#/q/606c917>`_
  `CONTROLLER-1724 <https://jira.opendaylight.org/browse/CONTROLLER-1724>`_
  : BUG-8733: refactor IdInts listeners
* `2ac32ea <https://git.opendaylight.org/gerrit/#/q/2ac32ea>`_
  `CONTROLLER-1745 <https://jira.opendaylight.org/browse/CONTROLLER-1745>`_
  : BUG-8898: prioritize InternalCommand
* `53afb54 <https://git.opendaylight.org/gerrit/#/q/53afb54>`_
  : Switch from config-parent to bundle-parent in mdsal-trace
* `4367f45 <https://git.opendaylight.org/gerrit/#/q/4367f45>`_
  `CONTROLLER-1745 <https://jira.opendaylight.org/browse/CONTROLLER-1745>`_
  : BUG-8898: do not invoke timeouts directly
* `f795484 <https://git.opendaylight.org/gerrit/#/q/f795484>`_
  : Revert "Revert "BUG-7464: use yangtools.triemap""
* `4bc5f74 <https://git.opendaylight.org/gerrit/#/q/4bc5f74>`_
  : Revert "BUG-7464: use yangtools.triemap"
* `8744119 <https://git.opendaylight.org/gerrit/#/q/8744119>`_
  `CONTROLLER-1687 <https://jira.opendaylight.org/browse/CONTROLLER-1687>`_
  : Bug 8494: Separate writing and completion threads
* `5df3476 <https://git.opendaylight.org/gerrit/#/q/5df3476>`_
  : Explicitly load the real DataBroker with component-name
* `31283ab <https://git.opendaylight.org/gerrit/#/q/31283ab>`_
  : fix config file for mdsal-trace and filtering mechanism
* `db65d6f <https://git.opendaylight.org/gerrit/#/q/db65d6f>`_
  `CONTROLLER-1724 <https://jira.opendaylight.org/browse/CONTROLLER-1724>`_
  : BUG-8733: use DataTreeCandidateNodes.empty()
* `b83c7f5 <https://git.opendaylight.org/gerrit/#/q/b83c7f5>`_
  `CONTROLLER-1708 <https://jira.opendaylight.org/browse/CONTROLLER-1708>`_
  : BUG-8619: do not touch forward path during purge enqueue
* `5e00c9f <https://git.opendaylight.org/gerrit/#/q/5e00c9f>`_
  : BUG-7464: use yangtools.triemap
* `1529bb8 <https://git.opendaylight.org/gerrit/#/q/1529bb8>`_
  `CONTROLLER-1707 <https://jira.opendaylight.org/browse/CONTROLLER-1707>`_
  : BUG-8618: refresh transaction access when isolated
* `55661ed <https://git.opendaylight.org/gerrit/#/q/55661ed>`_
  `CONTROLLER-1737 <https://jira.opendaylight.org/browse/CONTROLLER-1737>`_
  : BUG-8792: allow transactions to not time out after reconnect
* `7633a2a <https://git.opendaylight.org/gerrit/#/q/7633a2a>`_
  `CONTROLLER-1707 <https://jira.opendaylight.org/browse/CONTROLLER-1707>`_
  : BUG-8618: record LeaderFrontendState time
* `12b4928 <https://git.opendaylight.org/gerrit/#/q/12b4928>`_
  `CONTROLLER-1708 <https://jira.opendaylight.org/browse/CONTROLLER-1708>`_
  : Bug 8619: Introduce inheritance of progress trackers
* `80e6514 <https://git.opendaylight.org/gerrit/#/q/80e6514>`_
  : ProgressTracker: Decrease delay due nearestAllowed
* `2be77b3 <https://git.opendaylight.org/gerrit/#/q/2be77b3>`_
  `CONTROLLER-1707 <https://jira.opendaylight.org/browse/CONTROLLER-1707>`_
  : BUG-8618: fix test driver
* `40d27d4 <https://git.opendaylight.org/gerrit/#/q/40d27d4>`_
  `CONTROLLER-1707 <https://jira.opendaylight.org/browse/CONTROLLER-1707>`_
  : BUG-8618: add pause/unpause mechanics for tell-based protocol
* `a15d7e4 <https://git.opendaylight.org/gerrit/#/q/a15d7e4>`_
  : Fix .1 version references
* `1734dcc <https://git.opendaylight.org/gerrit/#/q/1734dcc>`_
  : mdsaltrace utility for debugging
* `3a10a45 <https://git.opendaylight.org/gerrit/#/q/3a10a45>`_
  `CONTROLLER-1707 <https://jira.opendaylight.org/browse/CONTROLLER-1707>`_
  : BUG-8618: introduce RaftActor.unpauseLeader()
* `2783c9d <https://git.opendaylight.org/gerrit/#/q/2783c9d>`_
  `CONTROLLER-1707 <https://jira.opendaylight.org/browse/CONTROLLER-1707>`_
  : BUG-8618: eliminate SimpleShardDataTreeCohort subclasses
* `c525e5f <https://git.opendaylight.org/gerrit/#/q/c525e5f>`_
  `CONTROLLER-1707 <https://jira.opendaylight.org/browse/CONTROLLER-1707>`_
  : BUG-8618: rework AbstractProxyTransaction.flushState()
* `70f2875 <https://git.opendaylight.org/gerrit/#/q/70f2875>`_
  `CONTROLLER-1707 <https://jira.opendaylight.org/browse/CONTROLLER-1707>`_
  : BUG-8618: reconnect connections more aggressively
* `0d5408c <https://git.opendaylight.org/gerrit/#/q/0d5408c>`_
  `CONTROLLER-1707 <https://jira.opendaylight.org/browse/CONTROLLER-1707>`_
  : BUG-8618: turn timeouts in READY state into canCommit failures
* `d2d9179 <https://git.opendaylight.org/gerrit/#/q/d2d9179>`_
  `CONTROLLER-1707 <https://jira.opendaylight.org/browse/CONTROLLER-1707>`_
  : BUG-8618: improve logging
* `773ee5e <https://git.opendaylight.org/gerrit/#/q/773ee5e>`_
  : Fix Verify/Preconditions string format


genius
------
* `1c695e1 <https://git.opendaylight.org/gerrit/#/q/1c695e1>`_
  : Lower log level for non errors
* `47cc44e <https://git.opendaylight.org/gerrit/#/q/47cc44e>`_
  : bug 7380: Add getIfaceInfoFromConfigDataStore
* `be08b29 <https://git.opendaylight.org/gerrit/#/q/be08b29>`_
  : Genius Logging enhancements
* `02d9b88 <https://git.opendaylight.org/gerrit/#/q/02d9b88>`_
  : ITM mesh creation issue - teps added in succession.
* `a8e92f1 <https://git.opendaylight.org/gerrit/#/q/a8e92f1>`_
  : Cleanup
* `96500cf <https://git.opendaylight.org/gerrit/#/q/96500cf>`_
  : Replace *Index(" by *Index('
* `cd76d6e <https://git.opendaylight.org/gerrit/#/q/cd76d6e>`_
  : Use INFO for logging null DPID
* `6fa10a2 <https://git.opendaylight.org/gerrit/#/q/6fa10a2>`_
  `GENIUS-89 <https://jira.opendaylight.org/browse/GENIUS-89>`_
  : Bug 9099 - Suspected WriteOnlyTransaction leak in interfacemanager
* `cd9be0c <https://git.opendaylight.org/gerrit/#/q/cd9be0c>`_
  : Remove start() method
* `db86a18 <https://git.opendaylight.org/gerrit/#/q/db86a18>`_
  : Bug 9034: LockManager cancel() ReadWriteTransaction if it's not submit()
* `6bb41bb <https://git.opendaylight.org/gerrit/#/q/6bb41bb>`_
  : Log enhancements for better debuggability
* `e9189b2 <https://git.opendaylight.org/gerrit/#/q/e9189b2>`_
  : Changing the default value of Interfacemanager statistics polling interval to 15 Minutes
* `9cfde26 <https://git.opendaylight.org/gerrit/#/q/9cfde26>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `cf06e14 <https://git.opendaylight.org/gerrit/#/q/cf06e14>`_
  : Bug 7599 -hwvtep ucast mac consumption improvement
* `cccc6c2 <https://git.opendaylight.org/gerrit/#/q/cccc6c2>`_
  : Bug 8859 : Table 220 programmed with wrong service-index
* `847c03a <https://git.opendaylight.org/gerrit/#/q/847c03a>`_
  : Fix Service-binding flowRef
* `cff98cc <https://git.opendaylight.org/gerrit/#/q/cff98cc>`_
  : @Ignore flaky newl2vlanInterfaceTests InterfaceManagerConfigurationTest
* `df7d10c <https://git.opendaylight.org/gerrit/#/q/df7d10c>`_
  : Make DJC to be more concurrent and fixing signal issue b/w enqueue jobs
* `143d681 <https://git.opendaylight.org/gerrit/#/q/143d681>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `efd8a1d <https://git.opendaylight.org/gerrit/#/q/efd8a1d>`_
  : BUG 8876 - Fix to remove ELAN interface flows when external network deleted
* `81510d5 <https://git.opendaylight.org/gerrit/#/q/81510d5>`_
  : Cleanup
* `1ca0f40 <https://git.opendaylight.org/gerrit/#/q/1ca0f40>`_
  : Add private constructor to this utility class
* `c69a795 <https://git.opendaylight.org/gerrit/#/q/c69a795>`_
  : IdManager: Use lock only when required
* `0a7a33d <https://git.opendaylight.org/gerrit/#/q/0a7a33d>`_
  : Cleanup
* `b2e6235 <https://git.opendaylight.org/gerrit/#/q/b2e6235>`_
  : Fix IfmClusterUtils logs
* `e6a9ca0 <https://git.opendaylight.org/gerrit/#/q/e6a9ca0>`_
  : Enqueued Job not getting cleaned up in some cases
* `afd2b46 <https://git.opendaylight.org/gerrit/#/q/afd2b46>`_
  : Bug 8476 Add support for logical switch replication mode
* `49f2167 <https://git.opendaylight.org/gerrit/#/q/49f2167>`_
  : Capture flow addition to debug log
* `8e8cc01 <https://git.opendaylight.org/gerrit/#/q/8e8cc01>`_
  : hwvtep transaction batching separation across shards
* `5c21c1e <https://git.opendaylight.org/gerrit/#/q/5c21c1e>`_
  : Exception in service-binding logic when a neutron port is deleted
* `6822bc8 <https://git.opendaylight.org/gerrit/#/q/6822bc8>`_
  : Guard some TRACE logs in DJC
* `083980f <https://git.opendaylight.org/gerrit/#/q/083980f>`_
  : Removing unnecessary TRACE log in service-binding
* `277a7b2 <https://git.opendaylight.org/gerrit/#/q/277a7b2>`_
  : Bug 8800: Prevent xtendbeans NPE warn.log in InstructionApplyActions
* `bb14bf1 <https://git.opendaylight.org/gerrit/#/q/bb14bf1>`_
  : Making ActionConverterUtil log to DEBUG


groupbasedpolicy
----------------
* `c682e50 <https://git.opendaylight.org/gerrit/#/q/c682e50>`_
  : Fix AddressEndpointWithLocation issues
* `f5d5698 <https://git.opendaylight.org/gerrit/#/q/f5d5698>`_
  : Code improvements for FDS scenarios
* `d21ad1b <https://git.opendaylight.org/gerrit/#/q/d21ad1b>`_
  `GBP-292 <https://jira.opendaylight.org/browse/GBP-292>`_
  : Bug 8900 - fixing ACL updates
* `cf962d0 <https://git.opendaylight.org/gerrit/#/q/cf962d0>`_
  : Policy exclusions & parallel netconf transactions


honeycomb/vbd
-------------
* `e74240b <https://git.opendaylight.org/gerrit/#/q/e74240b>`_
  `HONEYVBD-22 <https://jira.opendaylight.org/browse/HONEYVBD-22>`_
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
  : Bug 9060: Add odl-mdsal-trace


lispflowmapping
---------------
* `bc9d18d <https://git.opendaylight.org/gerrit/#/q/bc9d18d>`_
  `LISPMAP-160 <https://jira.opendaylight.org/browse/LISPMAP-160>`_
  : Bug 8746: Multi-threading improvements
* `a54b02e <https://git.opendaylight.org/gerrit/#/q/a54b02e>`_
  `LISPMAP-155 <https://jira.opendaylight.org/browse/LISPMAP-155>`_
  : Bug 8469: Account for losing prefix length in Source EID
* `46e3e48 <https://git.opendaylight.org/gerrit/#/q/46e3e48>`_
  `LISPMAP-161 <https://jira.opendaylight.org/browse/LISPMAP-161>`_
  : Bug 8764: Fix handling of old negative
* `37f612c <https://git.opendaylight.org/gerrit/#/q/37f612c>`_
  : Make negative mapping TTL configurable
* `7b13285 <https://git.opendaylight.org/gerrit/#/q/7b13285>`_
  : Return negative mapping with 0 TTL for deletion


mdsal
-----
* `ae88651 <https://git.opendaylight.org/gerrit/#/q/ae88651>`_
  `MDSAL-291 <https://jira.opendaylight.org/browse/MDSAL-291>`_
  : BUG-9145: rework singleton service group state tracking
* `34745e0 <https://git.opendaylight.org/gerrit/#/q/34745e0>`_
  : Fix use of deprecated Futures.addCallback()
* `c262922 <https://git.opendaylight.org/gerrit/#/q/c262922>`_
  `MDSAL-275 <https://jira.opendaylight.org/browse/MDSAL-275>`_
  : BUG-8858: add integration test suite
* `cb1f6cc <https://git.opendaylight.org/gerrit/#/q/cb1f6cc>`_
  `MDSAL-275 <https://jira.opendaylight.org/browse/MDSAL-275>`_
  : BUG-8858: rework singleton group locking
* `e84146b <https://git.opendaylight.org/gerrit/#/q/e84146b>`_
  `MDSAL-280 <https://jira.opendaylight.org/browse/MDSAL-280>`_
  : Bug 8910 - Binding v2 generator exception: Failed to find leafref target
* `2befd71 <https://git.opendaylight.org/gerrit/#/q/2befd71>`_
  : Binding generator v2 - fix units field name
* `ce0ef9d <https://git.opendaylight.org/gerrit/#/q/ce0ef9d>`_
  : Binding generator v2 - fix choice
* `ec6debe <https://git.opendaylight.org/gerrit/#/q/ec6debe>`_
  : Binding generator v2 - uses statement - uses inner type
* `5718362 <https://git.opendaylight.org/gerrit/#/q/5718362>`_
  : Binding generator v2 - uses statement - uses grouping choice"
* `fb411f7 <https://git.opendaylight.org/gerrit/#/q/fb411f7>`_
  : Binding generator v2 - fix getter in builder
* `2131dc1 <https://git.opendaylight.org/gerrit/#/q/2131dc1>`_
  : Binding generator v2 - fix getter method name
* `a0d2d0a <https://git.opendaylight.org/gerrit/#/q/a0d2d0a>`_
  : Binding generator v2 - uses statement - uses inner type #2
* `5e3f23b <https://git.opendaylight.org/gerrit/#/q/5e3f23b>`_
  : Binding generator v2 - uses statement - uses inner type #1
* `5a8a3fd <https://git.opendaylight.org/gerrit/#/q/5a8a3fd>`_
  : Binding generator v2 - uses statement - uses of list
* `318b055 <https://git.opendaylight.org/gerrit/#/q/318b055>`_
  : Binding generator v2 - fix leaflist return type
* `94180b8 <https://git.opendaylight.org/gerrit/#/q/94180b8>`_
  : Binding generator v2 - fix choice's parent
* `29446c1 <https://git.opendaylight.org/gerrit/#/q/29446c1>`_
  : Binding generator v2 - fix double dot package name
* `735201c <https://git.opendaylight.org/gerrit/#/q/735201c>`_
  : Binding generator v2 - fix submodule class name
* `7038c5d <https://git.opendaylight.org/gerrit/#/q/7038c5d>`_
  : Binding generator v2 - fix format javadoc text
* `caed335 <https://git.opendaylight.org/gerrit/#/q/caed335>`_
  : Binding generator v2 - uses implement - fix finding target grouping
* `74f818b <https://git.opendaylight.org/gerrit/#/q/74f818b>`_
  : Binding generator v2 - uses statement - uses leafref #2
* `e214685 <https://git.opendaylight.org/gerrit/#/q/e214685>`_
  : Binding generator v2 - uses statement - uses leafref #1
* `5a2d5d6 <https://git.opendaylight.org/gerrit/#/q/5a2d5d6>`_
  : Binding generator v2 - fix InstanceIdentifier package path in classTemplate
* `eb050ae <https://git.opendaylight.org/gerrit/#/q/eb050ae>`_
  : Binding generator v2 - uses statement - uses of cases
* `c2f5a3a <https://git.opendaylight.org/gerrit/#/q/c2f5a3a>`_
  : Binding generator v2 - fix action #3
* `bf39a1f <https://git.opendaylight.org/gerrit/#/q/bf39a1f>`_
  : Binding generator v2 - fix action #2
* `d4b8df9 <https://git.opendaylight.org/gerrit/#/q/d4b8df9>`_
  : Binding generator v2 - fix action #1
* `67b940d <https://git.opendaylight.org/gerrit/#/q/67b940d>`_
  : JavaIdentifierNormalizer ThreadSafe/Memory leak fix
* `5281fa9 <https://git.opendaylight.org/gerrit/#/q/5281fa9>`_
  : BUG-8733: switch to using DOMDataTreeListener-based APIs
* `f09e240 <https://git.opendaylight.org/gerrit/#/q/f09e240>`_
  : BUG-8733: Add ListenableDOMDataTreeShard
* `02b1222 <https://git.opendaylight.org/gerrit/#/q/02b1222>`_
  : Cleanup ShardRootModificationContext
* `b7c1f34 <https://git.opendaylight.org/gerrit/#/q/b7c1f34>`_
  `MDSAL-253 <https://jira.opendaylight.org/browse/MDSAL-253>`_
  : Bug 8449 - BindingToNormalizedNodeCodec fails to deserialize union of leafrefs
* `b2aa3f4 <https://git.opendaylight.org/gerrit/#/q/b2aa3f4>`_
  : Fix a few warnings
* `20d2832 <https://git.opendaylight.org/gerrit/#/q/20d2832>`_
  : BUG-8733: use DataTreeCandidateNodes.empty()
* `55490ce <https://git.opendaylight.org/gerrit/#/q/55490ce>`_
  : Optimize transaction collection
* `a7a06d4 <https://git.opendaylight.org/gerrit/#/q/a7a06d4>`_
  : Do not obfuscate constant 0/1
* `afb9c35 <https://git.opendaylight.org/gerrit/#/q/afb9c35>`_
  : Optimize JavaIdentifierNormalizer reserved words lookup
* `e35ab39 <https://git.opendaylight.org/gerrit/#/q/e35ab39>`_
  : Binding2-runtime JUnit code coverage increase
* `9f590ba <https://git.opendaylight.org/gerrit/#/q/9f590ba>`_
  : Binding generator v2 - fix union getter name in camel-case
* `4a9e8f9 <https://git.opendaylight.org/gerrit/#/q/4a9e8f9>`_
  : Binding generator v2 - code style & cleanup
* `191a88c <https://git.opendaylight.org/gerrit/#/q/191a88c>`_
  : Binding generator v2 - augment statement #4
* `94b1de7 <https://git.opendaylight.org/gerrit/#/q/94b1de7>`_
  : Binding generator v2 - augment statement #3
* `ecd068d <https://git.opendaylight.org/gerrit/#/q/ecd068d>`_
  : Optimize JavaIdentifierNormalizer.normalizeClassIdentifier()
* `8a87cb7 <https://git.opendaylight.org/gerrit/#/q/8a87cb7>`_
  : Do not use temporary string to extract last character
* `61ad1fa <https://git.opendaylight.org/gerrit/#/q/61ad1fa>`_
  : Optimize JavaIdentifierNormalizer.normalizeClassIdentifier()
* `585fc0b <https://git.opendaylight.org/gerrit/#/q/585fc0b>`_
  : Optimize fixCasesByJavaType for packages
* `e1a0089 <https://git.opendaylight.org/gerrit/#/q/e1a0089>`_
  : Optimize convertIdentifierEnumValue()
* `1446c18 <https://git.opendaylight.org/gerrit/#/q/1446c18>`_
  : Optimize JavaIdentifierNormalizer.fixCases()
* `78f471f <https://git.opendaylight.org/gerrit/#/q/78f471f>`_
  : Binding generator v2 - uses statement - uses augment
* `17cf88e <https://git.opendaylight.org/gerrit/#/q/17cf88e>`_
  : Binding generator v2 - augment statement #2
* `eac6852 <https://git.opendaylight.org/gerrit/#/q/eac6852>`_
  : Binding generator v2 - augment statement #1
* `e20f0f5 <https://git.opendaylight.org/gerrit/#/q/e20f0f5>`_
  : Binding generator v2 - uses statement - uses of list
* `a26de04 <https://git.opendaylight.org/gerrit/#/q/a26de04>`_
  : Binding generator v2 - uses statement - uses of module
* `398f49e <https://git.opendaylight.org/gerrit/#/q/398f49e>`_
  : Binding generator v2 - uses statement - support choice
* `0f0884a <https://git.opendaylight.org/gerrit/#/q/0f0884a>`_
  : Binding generator v2 - uses statement - uses of rpc & action
* `b469d95 <https://git.opendaylight.org/gerrit/#/q/b469d95>`_
  : Binding generator v2 - uses statement - restore getter
* `3aa24f4 <https://git.opendaylight.org/gerrit/#/q/3aa24f4>`_
  : Binding generator v2 - Type reference fix
* `4178b9a <https://git.opendaylight.org/gerrit/#/q/4178b9a>`_
  : Binding generator v2 - Identity fix
* `5428e29 <https://git.opendaylight.org/gerrit/#/q/5428e29>`_
  : Optimize JavaIdentifierNormalizer.convertFirst()
* `692617f <https://git.opendaylight.org/gerrit/#/q/692617f>`_
  : Binding generator v2 - uses statement - support list
* `8fe6ecf <https://git.opendaylight.org/gerrit/#/q/8fe6ecf>`_
  : Binding generator v2 - uses statement - resolve uses node
* `a02749e <https://git.opendaylight.org/gerrit/#/q/a02749e>`_
  : Binding generator v2 - uses statement - uses of notification
* `518f2b4 <https://git.opendaylight.org/gerrit/#/q/518f2b4>`_
  : Optimize JavaIdentifierNormalizer.normalizePartialPackageName()
* `29219aa <https://git.opendaylight.org/gerrit/#/q/29219aa>`_
  : Optimize JavaIdentifierNormalizer.normalizeFullPackageName()
* `c102296 <https://git.opendaylight.org/gerrit/#/q/c102296>`_
  : Optimize JavaIdentifierNormalizer.existNext()
* `e1b0b50 <https://git.opendaylight.org/gerrit/#/q/e1b0b50>`_
  : Binding generator v2 - uses statement - uses implements
* `76ec951 <https://git.opendaylight.org/gerrit/#/q/76ec951>`_
  : Binding2-dom-adapter JUnit code coverage increase
* `f5808d2 <https://git.opendaylight.org/gerrit/#/q/f5808d2>`_
  : Binding generator v2 - fix case builder to dto
* `f88d9a1 <https://git.opendaylight.org/gerrit/#/q/f88d9a1>`_
  : Cleanup JavaIdentifierNormalizer
* `3deb239 <https://git.opendaylight.org/gerrit/#/q/3deb239>`_
  : Binding v2 - remove checked future


netconf
-------
* `9956117 <https://git.opendaylight.org/gerrit/#/q/9956117>`_
  `NETCONF-469 <https://jira.opendaylight.org/browse/NETCONF-469>`_
  : BUG-9132: don't provide a value for restconf/streams/events
* `f4b545a <https://git.opendaylight.org/gerrit/#/q/f4b545a>`_
  : Minor cleanup of blueprint config
* `d4a44ff <https://git.opendaylight.org/gerrit/#/q/d4a44ff>`_
  `NETCONF-453 <https://jira.opendaylight.org/browse/NETCONF-453>`_
  : Bug 8989 - Create just one DS for each test-tool's simulated netconf device
* `f2becfb <https://git.opendaylight.org/gerrit/#/q/f2becfb>`_
  `NETCONF-451 <https://jira.opendaylight.org/browse/NETCONF-451>`_
  : Bug 8977 - Failed on binary key type
* `36f684f <https://git.opendaylight.org/gerrit/#/q/36f684f>`_
  : RPC for netconf node addition. Supports encrypt option for password encryption.
* `0a347d8 <https://git.opendaylight.org/gerrit/#/q/0a347d8>`_
  : Enable public key based authentication for netconf
* `6de81fd <https://git.opendaylight.org/gerrit/#/q/6de81fd>`_
  : Do not pull in yang-maven-plugin
* `cdc6e07 <https://git.opendaylight.org/gerrit/#/q/cdc6e07>`_
  `NETCONF-439 <https://jira.opendaylight.org/browse/NETCONF-439>`_
  : Bug 8824 - NETCONF request hangs when rpc-rply has invalid xml
* `6053c09 <https://git.opendaylight.org/gerrit/#/q/6053c09>`_
  `NETCONF-440 <https://jira.opendaylight.org/browse/NETCONF-440>`_
  : Bug 8832 - rpc-error in keepalive rpc-reply shouldn't bounce the session


netvirt
-------
* `2a54b32 <https://git.opendaylight.org/gerrit/#/q/2a54b32>`_
  `NETVIRT-843 <https://jira.opendaylight.org/browse/NETVIRT-843>`_
  : Bug 8976 - Upstreaming fixes to master
* `923bbe7 <https://git.opendaylight.org/gerrit/#/q/923bbe7>`_
  `NETVIRT-835 <https://jira.opendaylight.org/browse/NETVIRT-835>`_
  : Bug 8964 - Neutron test neutron.tests.tempest.scenario.test_floatingip.FloatingIpSameNetwork.test_east_west fails
* `95fc265 <https://git.opendaylight.org/gerrit/#/q/95fc265>`_
  : Test SNAT mostSignificantBit()
* `e1779ca <https://git.opendaylight.org/gerrit/#/q/e1779ca>`_
  `NETVIRT-931 <https://jira.opendaylight.org/browse/NETVIRT-931>`_
  : Bug 9226: VPN Traffic fails after VM Migration
* `cf2b4bf <https://git.opendaylight.org/gerrit/#/q/cf2b4bf>`_
  `NETVIRT-936 <https://jira.opendaylight.org/browse/NETVIRT-936>`_
  : Bug 9237 - NPE: InternalToExternalPortMapKey
* `a9a9e25 <https://git.opendaylight.org/gerrit/#/q/a9a9e25>`_
  `NETVIRT-918 <https://jira.opendaylight.org/browse/NETVIRT-918>`_
  : Bug 9180: Conflicting modification Exception from NAT Module
* `f7172d8 <https://git.opendaylight.org/gerrit/#/q/f7172d8>`_
  `NETVIRT-437 <https://jira.opendaylight.org/browse/NETVIRT-437>`_
  : BUG 7596 - Update to handle change in Neutron Network external attribute
* `9789605 <https://git.opendaylight.org/gerrit/#/q/9789605>`_
  : Remove unneeded mdsal and yangtools artifacts
* `64b80ca <https://git.opendaylight.org/gerrit/#/q/64b80ca>`_
  : Remove unneeded pom version values
* `4edc358 <https://git.opendaylight.org/gerrit/#/q/4edc358>`_
  : Undo incorrect code changes made during merge conflict.
* `d68b40a <https://git.opendaylight.org/gerrit/#/q/d68b40a>`_
  `NETVIRT-872 <https://jira.opendaylight.org/browse/NETVIRT-872>`_
  : Bug 9066:Use Single Transaction for DNAT Flow Install and Remove
* `f85a8d9 <https://git.opendaylight.org/gerrit/#/q/f85a8d9>`_
  `NETVIRT-875 <https://jira.opendaylight.org/browse/NETVIRT-875>`_
  : Bug 9077: Fix of issue that the existing NW communication failure when new NW is created
* `e51a9de <https://git.opendaylight.org/gerrit/#/q/e51a9de>`_
  : Lower log level for non errors
* `11c3dda <https://git.opendaylight.org/gerrit/#/q/11c3dda>`_
  `NETVIRT-927 <https://jira.opendaylight.org/browse/NETVIRT-927>`_
  : Bug 9209: PNF learned on external networks to skip local FIB Processing
* `35e6b1d <https://git.opendaylight.org/gerrit/#/q/35e6b1d>`_
  : Renamed acl-impl.rst to acl-reflection-on-existing-traffic.rst
* `c804c13 <https://git.opendaylight.org/gerrit/#/q/c804c13>`_
  : Remove explicit default super-constructor calls
* `95d7b1a <https://git.opendaylight.org/gerrit/#/q/95d7b1a>`_
  `NETVIRT-923 <https://jira.opendaylight.org/browse/NETVIRT-923>`_
  : bug-9190: NullPointerException at getIsExternal
* `1d0e2af <https://git.opendaylight.org/gerrit/#/q/1d0e2af>`_
  : Lower log level for non errors
* `1c0b279 <https://git.opendaylight.org/gerrit/#/q/1c0b279>`_
  : Bug9091 : Removing uncessary MD-SAL Read Operation in NAT
* `4116fbc <https://git.opendaylight.org/gerrit/#/q/4116fbc>`_
  : bgpmanager: change API of bgpmanager to add VRF IPv4 or IPv6
* `16c55ed <https://git.opendaylight.org/gerrit/#/q/16c55ed>`_
  : neutronvpn: create ipv4 or ipv6 context
* `d9945bb <https://git.opendaylight.org/gerrit/#/q/d9945bb>`_
  : Dualstack support for L3VPN - single router Dual stack
* `b2d6020 <https://git.opendaylight.org/gerrit/#/q/b2d6020>`_
  `NETVIRT-829 <https://jira.opendaylight.org/browse/NETVIRT-829>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin
* `a90e996 <https://git.opendaylight.org/gerrit/#/q/a90e996>`_
  : lower log levels for non-errors
* `f17c140 <https://git.opendaylight.org/gerrit/#/q/f17c140>`_
  : ClearBgpCli reads from socket to send/receive from bgpd (some previous commit modifed to read from session parameters)
* `325f481 <https://git.opendaylight.org/gerrit/#/q/325f481>`_
  `NETVIRT-926 <https://jira.opendaylight.org/browse/NETVIRT-926>`_
  : Bug 9196 - Maxpath value should be between 1 to 64 in BGP multipath
* `be22588 <https://git.opendaylight.org/gerrit/#/q/be22588>`_
  `NETVIRT-834 <https://jira.opendaylight.org/browse/NETVIRT-834>`_
  : Bug 8963 - Option to configure EVPN address family
* `ed2fe65 <https://git.opendaylight.org/gerrit/#/q/ed2fe65>`_
  : bgpmanager thrift upgrade to 0.9.3
* `d7d4b5b <https://git.opendaylight.org/gerrit/#/q/d7d4b5b>`_
  `NETVIRT-821 <https://jira.opendaylight.org/browse/NETVIRT-821>`_
  : BUG 8930 - delete Op VPN interface when deleting external network
* `e1015de <https://git.opendaylight.org/gerrit/#/q/e1015de>`_
  : elanmanager: clean up Futures collections
* `a0087dd <https://git.opendaylight.org/gerrit/#/q/a0087dd>`_
  `NETVIRT-924 <https://jira.opendaylight.org/browse/NETVIRT-924>`_
  : Bug 9193 - In conntrack SNAT , flows are programmed twice on a router g/w set.
* `ad94beb <https://git.opendaylight.org/gerrit/#/q/ad94beb>`_
  : Lower log levels for non error's
* `a64737e <https://git.opendaylight.org/gerrit/#/q/a64737e>`_
  : IfMgr clean-up
* `6a1dea5 <https://git.opendaylight.org/gerrit/#/q/6a1dea5>`_
  : Restrict NeutronvpnUtils.read
* `8a5c4d1 <https://git.opendaylight.org/gerrit/#/q/8a5c4d1>`_
  `NETVIRT-838 <https://jira.opendaylight.org/browse/NETVIRT-838>`_
  : BUG 8969 - Fix Exeption when clearing external router GW
* `6e1747b <https://git.opendaylight.org/gerrit/#/q/6e1747b>`_
  `NETVIRT-923 <https://jira.opendaylight.org/browse/NETVIRT-923>`_
  : bug-9190: NullPointerException at getIsExternal
* `04441af <https://git.opendaylight.org/gerrit/#/q/04441af>`_
  `NETVIRT-888 <https://jira.opendaylight.org/browse/NETVIRT-888>`_
  : Bug 9105: close removeElanInterface transaction
* `02d4647 <https://git.opendaylight.org/gerrit/#/q/02d4647>`_
  : ElanUtils clean-up: ElanL2GatewayUtils
* `c9a42e7 <https://git.opendaylight.org/gerrit/#/q/c9a42e7>`_
  : ElanUtils clean-up: L2GatewayConnectionUtils
* `861f942 <https://git.opendaylight.org/gerrit/#/q/861f942>`_
  : ElanUtils clean-up: remove unnecessary references
* `a16c5e7 <https://git.opendaylight.org/gerrit/#/q/a16c5e7>`_
  : ElanUtils clean-up: ElanL2Gateway{Multicast,}Utils
* `be8fca0 <https://git.opendaylight.org/gerrit/#/q/be8fca0>`_
  : ElanUtils clean-up: more ElanL2GatewayMulticastUtils
* `1b467f0 <https://git.opendaylight.org/gerrit/#/q/1b467f0>`_
  : ElanUtils clean-up: ElanL2GatewayMulticastUtils
* `6cee458 <https://git.opendaylight.org/gerrit/#/q/6cee458>`_
  : ElanUtils clean-up: make read() static
* `a7bd956 <https://git.opendaylight.org/gerrit/#/q/a7bd956>`_
  `NETVIRT-851 <https://jira.opendaylight.org/browse/NETVIRT-851>`_
  : Bug 8998 - L2GW:Vlan bindings missing on reboot
* `d91afa7 <https://git.opendaylight.org/gerrit/#/q/d91afa7>`_
  : aclservice: clean up Futures collections
* `f5e4696 <https://git.opendaylight.org/gerrit/#/q/f5e4696>`_
  : dhcpservice: clean up Futures collections
* `9b5727e <https://git.opendaylight.org/gerrit/#/q/9b5727e>`_
  `NETVIRT-844 <https://jira.opendaylight.org/browse/NETVIRT-844>`_
  : Bug 8978 - Network deletion issue.
* `fda3885 <https://git.opendaylight.org/gerrit/#/q/fda3885>`_
  : Remove un-used SynchronousEachOperationNewWriteTransaction
* `d71df4d <https://git.opendaylight.org/gerrit/#/q/d71df4d>`_
  : cleanup sync
* `8880929 <https://git.opendaylight.org/gerrit/#/q/8880929>`_
  `NETVIRT-859 <https://jira.opendaylight.org/browse/NETVIRT-859>`_
  : bug 9018 l2gw designated dhcp fix
* `16dd4e6 <https://git.opendaylight.org/gerrit/#/q/16dd4e6>`_
  `NETVIRT-841 <https://jira.opendaylight.org/browse/NETVIRT-841>`_
  : Bug 8973 : DHCP fixes
* `b28c5d7 <https://git.opendaylight.org/gerrit/#/q/b28c5d7>`_
  : Fix cloud-servicechain YANG
* `4c17474 <https://git.opendaylight.org/gerrit/#/q/4c17474>`_
  `NETVIRT-855 <https://jira.opendaylight.org/browse/NETVIRT-855>`_
  : BUG 9014 : Remove unnecessary log statements in VPN Engine
* `5ff7c1f <https://git.opendaylight.org/gerrit/#/q/5ff7c1f>`_
  : Remove aggregator from artifactId
* `a17284b <https://git.opendaylight.org/gerrit/#/q/a17284b>`_
  : rm it module
* `573530c <https://git.opendaylight.org/gerrit/#/q/573530c>`_
  `NETVIRT-836 <https://jira.opendaylight.org/browse/NETVIRT-836>`_
  : Bug 8965 - L2gw update is not suported
* `58e9af3 <https://git.opendaylight.org/gerrit/#/q/58e9af3>`_
  `NETVIRT-367 <https://jira.opendaylight.org/browse/NETVIRT-367>`_
  : Bug 7380: service-binding exceptions from ACL
* `f85a2e7 <https://git.opendaylight.org/gerrit/#/q/f85a2e7>`_
  `NETVIRT-829 <https://jira.opendaylight.org/browse/NETVIRT-829>`_
  : Bug 8953: Fix exceptions raised due to PNF confused with FIP
* `fa4669d <https://git.opendaylight.org/gerrit/#/q/fa4669d>`_
  `NETVIRT-862 <https://jira.opendaylight.org/browse/NETVIRT-862>`_
  : Bug 9026: ACL issue in handling port-create
* `bd66523 <https://git.opendaylight.org/gerrit/#/q/bd66523>`_
  `NETVIRT-829 <https://jira.opendaylight.org/browse/NETVIRT-829>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin.
* `e484f5a <https://git.opendaylight.org/gerrit/#/q/e484f5a>`_
  : Remove learn mode from aclserivce.
* `fbecdd4 <https://git.opendaylight.org/gerrit/#/q/fbecdd4>`_
  : Fix exception handling in neutronvpn shell
* `8a716d5 <https://git.opendaylight.org/gerrit/#/q/8a716d5>`_
  `NETVIRT-789 <https://jira.opendaylight.org/browse/NETVIRT-789>`_
  : Bug 8860 : Populate elantag at time of elanInstance creation
* `1a4aeb7 <https://git.opendaylight.org/gerrit/#/q/1a4aeb7>`_
  : Remove transparent mode from aclservice.
* `09ad109 <https://git.opendaylight.org/gerrit/#/q/09ad109>`_
  `NETVIRT-809 <https://jira.opendaylight.org/browse/NETVIRT-809>`_
  : BUG-8893 patch port mysteriously deleted
* `8f7fdba <https://git.opendaylight.org/gerrit/#/q/8f7fdba>`_
  `NETVIRT-835 <https://jira.opendaylight.org/browse/NETVIRT-835>`_
  : Bug 8964 - Neutron test neutron.tests.tempest.scenario.test_floatingip.FloatingIpSameNetwork.test_east_west fails
* `010d057 <https://git.opendaylight.org/gerrit/#/q/010d057>`_
  : Spec for Acl change reflection on existing communication
* `77d2276 <https://git.opendaylight.org/gerrit/#/q/77d2276>`_
  : Remove deprecated CheckedFuture
* `6102452 <https://git.opendaylight.org/gerrit/#/q/6102452>`_
  : Remove unused references to DataChangeListener
* `b991f2a <https://git.opendaylight.org/gerrit/#/q/b991f2a>`_
  : Bug7380:CSIT FIP ping is getting failed for Ext Flat/VLAN Network
* `5bbfc3c <https://git.opendaylight.org/gerrit/#/q/5bbfc3c>`_
  `NETVIRT-899 <https://jira.opendaylight.org/browse/NETVIRT-899>`_
  : Bug 9136 - Suspected ReadOnlyTransaction leak in QosNeutronUtils
* `e41f59b <https://git.opendaylight.org/gerrit/#/q/e41f59b>`_
  `NETVIRT-367 <https://jira.opendaylight.org/browse/NETVIRT-367>`_
  : Bug 7380: service-binding exceptions from ACL
* `ae6f198 <https://git.opendaylight.org/gerrit/#/q/ae6f198>`_
  : Remove stateless mode from AclService.
* `0a80bce <https://git.opendaylight.org/gerrit/#/q/0a80bce>`_
  : Minor code cleanup in QoS
* `dd2529d <https://git.opendaylight.org/gerrit/#/q/dd2529d>`_
  : Cleanup cherry-pick of 61888
* `9a28be3 <https://git.opendaylight.org/gerrit/#/q/9a28be3>`_
  `NETVIRT-884 <https://jira.opendaylight.org/browse/NETVIRT-884>`_
  : Bug 9100 : tx leak in DhcpExternalTunnelManager
* `c1610df <https://git.opendaylight.org/gerrit/#/q/c1610df>`_
  : Replace <? extends Object> by <?>
* `1b10231 <https://git.opendaylight.org/gerrit/#/q/1b10231>`_
  `NETVIRT-853 <https://jira.opendaylight.org/browse/NETVIRT-853>`_
  : Bug 9012 : BGP not connecting to config server
* `270e114 <https://git.opendaylight.org/gerrit/#/q/270e114>`_
  : Cluster support for netvirt QoS
* `5dab330 <https://git.opendaylight.org/gerrit/#/q/5dab330>`_
  : vpnmanager DJC enqueueJob without using AbstractDataStoreJob API
* `5533d26 <https://git.opendaylight.org/gerrit/#/q/5533d26>`_
  `NETVIRT-852 <https://jira.opendaylight.org/browse/NETVIRT-852>`_
  : BUG 9003: Fix classifier entry processing order
* `5ba7f1e <https://git.opendaylight.org/gerrit/#/q/5ba7f1e>`_
  `NETVIRT-852 <https://jira.opendaylight.org/browse/NETVIRT-852>`_
  : BUG 9003: Fix port chain event triggered two times
* `3385dee <https://git.opendaylight.org/gerrit/#/q/3385dee>`_
  : BUG: Adapt SFC translator to SFC code in Nitrogen
* `0c6ecdf <https://git.opendaylight.org/gerrit/#/q/0c6ecdf>`_
  : BUG9094 Bind to last SF interface if origin node
* `43bc42f <https://git.opendaylight.org/gerrit/#/q/43bc42f>`_
  : BUG9095 Capture SFC tunnel traffic for path egress
* `e219b22 <https://git.opendaylight.org/gerrit/#/q/e219b22>`_
  `NETVIRT-852 <https://jira.opendaylight.org/browse/NETVIRT-852>`_
  : BUG 9003: Support source-logical-port acl match
* `9a86ded <https://git.opendaylight.org/gerrit/#/q/9a86ded>`_
  : Replace size()==0 by isEmpty()
* `65e4729 <https://git.opendaylight.org/gerrit/#/q/65e4729>`_
  : Cleanup
* `683ceee <https://git.opendaylight.org/gerrit/#/q/683ceee>`_
  `NETVIRT-867 <https://jira.opendaylight.org/browse/NETVIRT-867>`_
  : Bug 9035: - NPE at org.opendaylight.netvirt.elan.arp.responder.ArpResponderUtil.getMatchCriteria
* `fea76a1 <https://git.opendaylight.org/gerrit/#/q/fea76a1>`_
  : Add missing null check
* `b079a62 <https://git.opendaylight.org/gerrit/#/q/b079a62>`_
  : Bug:9013 ElanUtils: RPC Call to Get egress actions for interface, OptimisticLockFailedException
* `050842d <https://git.opendaylight.org/gerrit/#/q/050842d>`_
  `NETVIRT-879 <https://jira.opendaylight.org/browse/NETVIRT-879>`_
  : Bug 9085 - CSIT Sporadic failures - test_security_groups_basic_ops.TestSecurityGroupsBasicOps.test_cross_tenant_traffic
* `68e5dd1 <https://git.opendaylight.org/gerrit/#/q/68e5dd1>`_
  : bgpmanager BgpUtil code clean-up: Make private what can, and rm unused
* `f13b13e <https://git.opendaylight.org/gerrit/#/q/f13b13e>`_
  : lower BGPconnect logs to debug level
* `7d542cf <https://git.opendaylight.org/gerrit/#/q/7d542cf>`_
  : Remove unused NatNodeEventListener
* `0a5f992 <https://git.opendaylight.org/gerrit/#/q/0a5f992>`_
  `NETVIRT-49 <https://jira.opendaylight.org/browse/NETVIRT-49>`_
  : Bug 6349: try connecting to qthrift only when configured. - default values are set to invalid host/port. - verify whether port/host configured before connecting
* `004eb5a <https://git.opendaylight.org/gerrit/#/q/004eb5a>`_
  : Bug 9034: bgpmanager BgpUtil rm unused pendingWrTransaction
* `54db8fe <https://git.opendaylight.org/gerrit/#/q/54db8fe>`_
  `NETVIRT-853 <https://jira.opendaylight.org/browse/NETVIRT-853>`_
  : Bug 9012 : BGP reconnect and retry logic to QBGP
* `f99399a <https://git.opendaylight.org/gerrit/#/q/f99399a>`_
  `NETVIRT-850 <https://jira.opendaylight.org/browse/NETVIRT-850>`_
  : Bug 8996 : BGP EOR and some minor fixes
* `1f350e9 <https://git.opendaylight.org/gerrit/#/q/1f350e9>`_
  : Bug9016:Using Single Transaction during NAPT SwitchOver
* `bb32ca9 <https://git.opendaylight.org/gerrit/#/q/bb32ca9>`_
  : Replace size()==0 by isEmpty()
* `79acd5d <https://git.opendaylight.org/gerrit/#/q/79acd5d>`_
  `NETVIRT-803 <https://jira.opendaylight.org/browse/NETVIRT-803>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `a28cd05 <https://git.opendaylight.org/gerrit/#/q/a28cd05>`_
  `NETVIRT-861 <https://jira.opendaylight.org/browse/NETVIRT-861>`_
  : Bug 9022: ACL: Broadcast traffic is dropped in ACL tables
* `bd093eb <https://git.opendaylight.org/gerrit/#/q/bd093eb>`_
  `NETVIRT-843 <https://jira.opendaylight.org/browse/NETVIRT-843>`_
  : Bug 8976 - Upstreaming fixes to master
* `19f5c2b <https://git.opendaylight.org/gerrit/#/q/19f5c2b>`_
  `NETVIRT-885 <https://jira.opendaylight.org/browse/NETVIRT-885>`_
  : Bug 9102 Fix ReadOnlyTransaction leak in NeutronvpnUtils
* `72f8097 <https://git.opendaylight.org/gerrit/#/q/72f8097>`_
  : Fix bad cherry-pick of 61976
* `486c42d <https://git.opendaylight.org/gerrit/#/q/486c42d>`_
  `NETVIRT-843 <https://jira.opendaylight.org/browse/NETVIRT-843>`_
  : Bug 8976 - Upstreaming fixes to master
* `142616d <https://git.opendaylight.org/gerrit/#/q/142616d>`_
  `NETVIRT-789 <https://jira.opendaylight.org/browse/NETVIRT-789>`_
  : Bug 8860: NPE in getElanTag from SubnetmapChangeListener
* `167386d <https://git.opendaylight.org/gerrit/#/q/167386d>`_
  `NETVIRT-829 <https://jira.opendaylight.org/browse/NETVIRT-829>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin
* `56e5a95 <https://git.opendaylight.org/gerrit/#/q/56e5a95>`_
  `NETVIRT-864 <https://jira.opendaylight.org/browse/NETVIRT-864>`_
  : Bug 9030 - port and port security groups cannot be null
* `7d78ac9 <https://git.opendaylight.org/gerrit/#/q/7d78ac9>`_
  `NETVIRT-829 <https://jira.opendaylight.org/browse/NETVIRT-829>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin
* `2c9ee9d <https://git.opendaylight.org/gerrit/#/q/2c9ee9d>`_
  `NETVIRT-870 <https://jira.opendaylight.org/browse/NETVIRT-870>`_
  : Bug 9051 - Failed to handle router GW flow in GW-MAC table. DPN id is missing for router-id
* `c354cb1 <https://git.opendaylight.org/gerrit/#/q/c354cb1>`_
  `NETVIRT-864 <https://jira.opendaylight.org/browse/NETVIRT-864>`_
  : Bug 9030 - port and port security groups cannot be null
* `679376d <https://git.opendaylight.org/gerrit/#/q/679376d>`_
  `NETVIRT-828 <https://jira.opendaylight.org/browse/NETVIRT-828>`_
  : Bug 8945 - Missing key is getVrfId. Supplied key is VpnInstanceOpDataEntryKey
* `7ff240d <https://git.opendaylight.org/gerrit/#/q/7ff240d>`_
  `NETVIRT-855 <https://jira.opendaylight.org/browse/NETVIRT-855>`_
  : BUG 9014: Remove unnecessary Log statements for evpn/subnetroute
* `0f47bfb <https://git.opendaylight.org/gerrit/#/q/0f47bfb>`_
  `NETVIRT-831 <https://jira.opendaylight.org/browse/NETVIRT-831>`_
  : Bug 8960: port information for 1 dpn is missing in subnet-op-data and port-op-data
* `c705463 <https://git.opendaylight.org/gerrit/#/q/c705463>`_
  `NETVIRT-855 <https://jira.opendaylight.org/browse/NETVIRT-855>`_
  : Bug 9014 - ElanUtils: buildRemoteDmacFlowEntry
* `62ad72f <https://git.opendaylight.org/gerrit/#/q/62ad72f>`_
  : cleanup for erros that should be info
* `9d2df47 <https://git.opendaylight.org/gerrit/#/q/9d2df47>`_
  `NETVIRT-842 <https://jira.opendaylight.org/browse/NETVIRT-842>`_
  : Bug 8974: Fix subnet-directed-broadcast-addr ARP issue
* `c5d7574 <https://git.opendaylight.org/gerrit/#/q/c5d7574>`_
  : Use INFO for logging GW search misses
* `a8d0345 <https://git.opendaylight.org/gerrit/#/q/a8d0345>`_
  `NETVIRT-856 <https://jira.opendaylight.org/browse/NETVIRT-856>`_
  : Bug 9015 - Unable to install group
* `7d7267d <https://git.opendaylight.org/gerrit/#/q/7d7267d>`_
  : Fix Junit failures in master in ACL & SFC
* `3df86fe <https://git.opendaylight.org/gerrit/#/q/3df86fe>`_
  `NETVIRT-753 <https://jira.opendaylight.org/browse/NETVIRT-753>`_
  : Bug 8774 DHCP Service to use DHCP Port MAC Address
* `3dfb294 <https://git.opendaylight.org/gerrit/#/q/3dfb294>`_
  : set BGP connect problem to be info
* `1a0a6b2 <https://git.opendaylight.org/gerrit/#/q/1a0a6b2>`_
  `NETVIRT-846 <https://jira.opendaylight.org/browse/NETVIRT-846>`_
  : Bug 8981: ACL: ARP/DHCP anti-spoofing flows does not include VM/AAP ip/mac matches in VM egress direction
* `9160eb5 <https://git.opendaylight.org/gerrit/#/q/9160eb5>`_
  `NETVIRT-845 <https://jira.opendaylight.org/browse/NETVIRT-845>`_
  : Bug 8979: Logging enhancements for VPNService
* `25d4c88 <https://git.opendaylight.org/gerrit/#/q/25d4c88>`_
  : Bug 8801 - EVPN remote routes are not pushed to ovs flow table
* `433bc24 <https://git.opendaylight.org/gerrit/#/q/433bc24>`_
  : Bug 9060: Package mdsal trace utility in netvirt Karaf distribution
* `b465f01 <https://git.opendaylight.org/gerrit/#/q/b465f01>`_
  `NETVIRT-868 <https://jira.opendaylight.org/browse/NETVIRT-868>`_
  : Bug 9039 - In Conntrack SNAT, when a router g/w is cleared traffic is dropped for other routers
* `35509ed <https://git.opendaylight.org/gerrit/#/q/35509ed>`_
  `NETVIRT-847 <https://jira.opendaylight.org/browse/NETVIRT-847>`_
  : Bug 8982: avoid .transform() NPEs
* `3661b68 <https://git.opendaylight.org/gerrit/#/q/3661b68>`_
  : Bug 9034: bgpmanager BgpUtil rm unused BindingTransactionChain & Co.
* `b795753 <https://git.opendaylight.org/gerrit/#/q/b795753>`_
  : Bug8861 : Data validation failed for path /snatint-ip-port-map
* `ae32206 <https://git.opendaylight.org/gerrit/#/q/ae32206>`_
  `NETVIRT-819 <https://jira.opendaylight.org/browse/NETVIRT-819>`_
  : Bug 8926: Fix instance doesn't get an IP after deployment
* `64fddf7 <https://git.opendaylight.org/gerrit/#/q/64fddf7>`_
  `NETVIRT-831 <https://jira.opendaylight.org/browse/NETVIRT-831>`_
  : Revert "Bug 8960: port information for 1 dpn is missing in subnet-op-data and port-op-data"
* `9396559 <https://git.opendaylight.org/gerrit/#/q/9396559>`_
  : Do not catch Throwable
* `ca2f69a <https://git.opendaylight.org/gerrit/#/q/ca2f69a>`_
  `NETVIRT-840 <https://jira.opendaylight.org/browse/NETVIRT-840>`_
  : Bug 8972: dhcp-show does not display the defaults
* `4e48655 <https://git.opendaylight.org/gerrit/#/q/4e48655>`_
  `NETVIRT-810 <https://jira.opendaylight.org/browse/NETVIRT-810>`_
  : BUG-8894 : display VPN interface count number for each VPN instance.
* `c2f2212 <https://git.opendaylight.org/gerrit/#/q/c2f2212>`_
  `NETVIRT-772 <https://jira.opendaylight.org/browse/NETVIRT-772>`_
  : Bug 8821 : BGP Manager / BGP counter incorrect with VPNv6 prefixes
* `42ecc05 <https://git.opendaylight.org/gerrit/#/q/42ecc05>`_
  : Neutron Port allocation for DHCP Service
* `27eb806 <https://git.opendaylight.org/gerrit/#/q/27eb806>`_
  `NETVIRT-831 <https://jira.opendaylight.org/browse/NETVIRT-831>`_
  : Bug 8960: port information for 1 dpn is missing in subnet-op-data and port-op-data
* `1a55cb7 <https://git.opendaylight.org/gerrit/#/q/1a55cb7>`_
  `NETVIRT-792 <https://jira.opendaylight.org/browse/NETVIRT-792>`_
  : Bug 8863: NPE at VpnFloatingIpHandler
* `6cee873 <https://git.opendaylight.org/gerrit/#/q/6cee873>`_
  `NETVIRT-833 <https://jira.opendaylight.org/browse/NETVIRT-833>`_
  : Bug 8962: Fix non-parameterized LOG statements as per guidelines
* `bb6d621 <https://git.opendaylight.org/gerrit/#/q/bb6d621>`_
  : Docs: add supported combinations
* `b9077c1 <https://git.opendaylight.org/gerrit/#/q/b9077c1>`_
  `NETVIRT-830 <https://jira.opendaylight.org/browse/NETVIRT-830>`_
  : Bug 8958: Java Null pointer exception for display vpn-config after deleting a vpn from CLI
* `335f02f <https://git.opendaylight.org/gerrit/#/q/335f02f>`_
  `NETVIRT-803 <https://jira.opendaylight.org/browse/NETVIRT-803>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails Changed set_field to load action and set only the relevent bits and other bits are preserved.
* `71eab1b <https://git.opendaylight.org/gerrit/#/q/71eab1b>`_
  `NETVIRT-826 <https://jira.opendaylight.org/browse/NETVIRT-826>`_
  : Bug 8937 : High CPU utilization of Java process due to SNAT packet looping
* `3038140 <https://git.opendaylight.org/gerrit/#/q/3038140>`_
  : ELAN service is not unbound when nova delete followed by neutron port delete
* `ae08e69 <https://git.opendaylight.org/gerrit/#/q/ae08e69>`_
  `NETVIRT-804 <https://jira.opendaylight.org/browse/NETVIRT-804>`_
  : BUG 8883 : LOG enhancement for NAT service module
* `107d12e <https://git.opendaylight.org/gerrit/#/q/107d12e>`_
  `NETVIRT-430 <https://jira.opendaylight.org/browse/NETVIRT-430>`_
  : Bug 7545 - FIP-FIP traffic between vm in same n/w in same compute is not working in stateful SG mode.
* `fea4f94 <https://git.opendaylight.org/gerrit/#/q/fea4f94>`_
  `NETVIRT-800 <https://jira.opendaylight.org/browse/NETVIRT-800>`_
  : BUG 8876 - Fix to remove ELAN interface flows when external network deleted
* `a957f6d <https://git.opendaylight.org/gerrit/#/q/a957f6d>`_
  `NETVIRT-803 <https://jira.opendaylight.org/browse/NETVIRT-803>`_
  : Revert "Bug 8882 - With conntrack SNAT communication with PNF fails "
* `5a57c87 <https://git.opendaylight.org/gerrit/#/q/5a57c87>`_
  `NETVIRT-825 <https://jira.opendaylight.org/browse/NETVIRT-825>`_
  : Bug 8936: Fix IPv6 IPAM issues when an IPv6 subnet is added to IPv4 network
* `182068e <https://git.opendaylight.org/gerrit/#/q/182068e>`_
  `NETVIRT-755 <https://jira.opendaylight.org/browse/NETVIRT-755>`_
  : Bug 8789 - Designated DHCP DPN is missing.
* `1075f5c <https://git.opendaylight.org/gerrit/#/q/1075f5c>`_
  : Add chain egress classifier support
* `84d0243 <https://git.opendaylight.org/gerrit/#/q/84d0243>`_
  : Fix some logs
* `aa214fc <https://git.opendaylight.org/gerrit/#/q/aa214fc>`_
  : Replace size()==0 by isEmpty()
* `3f868b0 <https://git.opendaylight.org/gerrit/#/q/3f868b0>`_
  `NETVIRT-803 <https://jira.opendaylight.org/browse/NETVIRT-803>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `d08947a <https://git.opendaylight.org/gerrit/#/q/d08947a>`_
  `NETVIRT-815 <https://jira.opendaylight.org/browse/NETVIRT-815>`_
  : BUG 8914: Fix NPE in sfc.classifier-impl
* `10b553c <https://git.opendaylight.org/gerrit/#/q/10b553c>`_
  `NETVIRT-645 <https://jira.opendaylight.org/browse/NETVIRT-645>`_
  : Bug 8346 - Conflicting modification for vpnNextHops.
* `9232295 <https://git.opendaylight.org/gerrit/#/q/9232295>`_
  : Cleanup
* `e1f96c3 <https://git.opendaylight.org/gerrit/#/q/e1f96c3>`_
  `NETVIRT-816 <https://jira.opendaylight.org/browse/NETVIRT-816>`_
  : Bug 8917 - CSIT Sporadic failures - Arp learning suite - missing flow on compute node
* `56098b2 <https://git.opendaylight.org/gerrit/#/q/56098b2>`_
  `NETVIRT-799 <https://jira.opendaylight.org/browse/NETVIRT-799>`_
  : Bug 8875 - fix in handleNeutronPortUpdated
* `f2a6b9f <https://git.opendaylight.org/gerrit/#/q/f2a6b9f>`_
  `NETVIRT-665 <https://jira.opendaylight.org/browse/NETVIRT-665>`_
  : Bug 8439: Handling interface update event for ECMP extra routes.
* `495bece <https://git.opendaylight.org/gerrit/#/q/495bece>`_
  `NETVIRT-805 <https://jira.opendaylight.org/browse/NETVIRT-805>`_
  : Bug 8884: SNAT traffic is getting dropped when router gateway is removed
* `d8e1926 <https://git.opendaylight.org/gerrit/#/q/d8e1926>`_
  `NETVIRT-718 <https://jira.opendaylight.org/browse/NETVIRT-718>`_
  : Bug 8632: ECMP LB group not updated during tunnel events
* `1989e09 <https://git.opendaylight.org/gerrit/#/q/1989e09>`_
  : Remove not needed Thread.sleep() from aclservice component tests
* `34dbc7c <https://git.opendaylight.org/gerrit/#/q/34dbc7c>`_
  `NETVIRT-778 <https://jira.opendaylight.org/browse/NETVIRT-778>`_
  : Bug 8838: aclservice NPE's
* `bf5d2f9 <https://git.opendaylight.org/gerrit/#/q/bf5d2f9>`_
  `NETVIRT-677 <https://jira.opendaylight.org/browse/NETVIRT-677>`_
  : Bug 8476 Add support for logical switch replication mode
* `f6b5925 <https://git.opendaylight.org/gerrit/#/q/f6b5925>`_
  `NETVIRT-808 <https://jira.opendaylight.org/browse/NETVIRT-808>`_
  : Bug 8892 - LOG.error format error(VpnManagerImpl.java:176)
* `c20d1db <https://git.opendaylight.org/gerrit/#/q/c20d1db>`_
  `NETVIRT-793 <https://jira.opendaylight.org/browse/NETVIRT-793>`_
  : Bug 8864: DNAT to SNAT traffic is getting failed on same DPN for VXLAN
* `c81fd69 <https://git.opendaylight.org/gerrit/#/q/c81fd69>`_
  `NETVIRT-802 <https://jira.opendaylight.org/browse/NETVIRT-802>`_
  : BUG 8880: Trunk port flows not created for subports
* `8139526 <https://git.opendaylight.org/gerrit/#/q/8139526>`_
  : Remove derivation from controller config-parent
* `6e7f481 <https://git.opendaylight.org/gerrit/#/q/6e7f481>`_
  `NETVIRT-786 <https://jira.opendaylight.org/browse/NETVIRT-786>`_
  : Bug 8853 - In conntrack SNAT , FIB flows are not created for existing Non-NAPT switch ports.
* `8cf2c15 <https://git.opendaylight.org/gerrit/#/q/8cf2c15>`_
  `NETVIRT-750 <https://jira.opendaylight.org/browse/NETVIRT-750>`_
  : Bug 8753 : Changes to create bgpvpn without VPN target
* `619dbc0 <https://git.opendaylight.org/gerrit/#/q/619dbc0>`_
  `NETVIRT-779 <https://jira.opendaylight.org/browse/NETVIRT-779>`_
  : Bug 8841 : add fib-show option to select entries per address-family or prefix
* `f2ddba6 <https://git.opendaylight.org/gerrit/#/q/f2ddba6>`_
  `NETVIRT-727 <https://jira.opendaylight.org/browse/NETVIRT-727>`_
  : Bug 8683: Aclservice releaseId IdManager Exception
* `d139deb <https://git.opendaylight.org/gerrit/#/q/d139deb>`_
  : Move statistics into org.opendaylight.netvirt
* `f272f13 <https://git.opendaylight.org/gerrit/#/q/f272f13>`_
  : Clean up lambdas and streams
* `fe51f67 <https://git.opendaylight.org/gerrit/#/q/fe51f67>`_
  `NETVIRT-787 <https://jira.opendaylight.org/browse/NETVIRT-787>`_
  : Bug 8857 - SNAT Conntrack - VM MAC is used as Source MAC for all outbound traffic
* `327dc13 <https://git.opendaylight.org/gerrit/#/q/327dc13>`_
  `NETVIRT-765 <https://jira.opendaylight.org/browse/NETVIRT-765>`_
  : Bug 8810 : BGP Manager / support for EVPN on OAM submodule missing
* `66a9682 <https://git.opendaylight.org/gerrit/#/q/66a9682>`_
  `NETVIRT-764 <https://jira.opendaylight.org/browse/NETVIRT-764>`_
  : Bug 8809 : BGP Manager / neighbor summary for VPNv6 wrongly parsed
* `b38b6a5 <https://git.opendaylight.org/gerrit/#/q/b38b6a5>`_
  `NETVIRT-766 <https://jira.opendaylight.org/browse/NETVIRT-766>`_
  : Bug 8811 : BGP Manager / bgp-nbr shell config with afi vpnv6 / evpn
* `223a9b6 <https://git.opendaylight.org/gerrit/#/q/223a9b6>`_
  `NETVIRT-769 <https://jira.opendaylight.org/browse/NETVIRT-769>`_
  : Bug 8818 : BGP Manager. VPNv6 prefixes injected to QBGP
* `0c6928a <https://git.opendaylight.org/gerrit/#/q/0c6928a>`_
  `NETVIRT-773 <https://jira.opendaylight.org/browse/NETVIRT-773>`_
  : Bug 8822 : Bgp Manager / bgp-cache dumps unknown address-families
* `37b2520 <https://git.opendaylight.org/gerrit/#/q/37b2520>`_
  : Spec to support dualstack VMs in L3VPN
* `da481cc <https://git.opendaylight.org/gerrit/#/q/da481cc>`_
  `NETVIRT-752 <https://jira.opendaylight.org/browse/NETVIRT-752>`_
  : Bug 8770: Stale NAT entries are not getting removed for external FLAT
* `ee23cd9 <https://git.opendaylight.org/gerrit/#/q/ee23cd9>`_
  : Add a private constructor to this utility class
* `8bc1f08 <https://git.opendaylight.org/gerrit/#/q/8bc1f08>`_
  : Revert "Ship aaa-cli-jar.jar in the distribution"
* `1d7be7f <https://git.opendaylight.org/gerrit/#/q/1d7be7f>`_
  : natservice-impl: propagate upstream non-null annotations
* `f92f853 <https://git.opendaylight.org/gerrit/#/q/f92f853>`_
  : Bug 8835: Java NullPointerException in display-bgp-config command
* `5c035b5 <https://git.opendaylight.org/gerrit/#/q/5c035b5>`_
  `NETVIRT-699 <https://jira.opendaylight.org/browse/NETVIRT-699>`_
  : Bug 8567: Addition of new flows after addng extra route
* `34201d9 <https://git.opendaylight.org/gerrit/#/q/34201d9>`_
  : New Yang model container for Neutron DHCP Port service. Updated spec with correct yang.
* `9c846dc <https://git.opendaylight.org/gerrit/#/q/9c846dc>`_
  : Enforce non-null collection returns in NatUtil
* `b7a19dc <https://git.opendaylight.org/gerrit/#/q/b7a19dc>`_
  `NETVIRT-781 <https://jira.opendaylight.org/browse/NETVIRT-781>`_
  : Bug 8844: CSIT Job: NullPointerException from NAT feature
* `cbf6784 <https://git.opendaylight.org/gerrit/#/q/cbf6784>`_
  : SNAT performance improvement for Controller-Based SNAT
* `85a50a3 <https://git.opendaylight.org/gerrit/#/q/85a50a3>`_
  `NETVIRT-760 <https://jira.opendaylight.org/browse/NETVIRT-760>`_
  : Bug 8796: Fix of issue that vxlan port is created with remote_ip set to the node itself
* `22ec593 <https://git.opendaylight.org/gerrit/#/q/22ec593>`_
  : Ship aaa-cli-jar.jar in the distribution
* `97579dd <https://git.opendaylight.org/gerrit/#/q/97579dd>`_
  `NETVIRT-757 <https://jira.opendaylight.org/browse/NETVIRT-757>`_
  : Bug 8791 - L2gateway delete is not clearing l2gwCo
* `23aced2 <https://git.opendaylight.org/gerrit/#/q/23aced2>`_
  `NETVIRT-756 <https://jira.opendaylight.org/browse/NETVIRT-756>`_
  : Bug 8790 - Local Macs getting cleared
* `912deac <https://git.opendaylight.org/gerrit/#/q/912deac>`_
  : Fix dpnId handling in SRISCListener
* `2611d29 <https://git.opendaylight.org/gerrit/#/q/2611d29>`_
  `NETVIRT-775 <https://jira.opendaylight.org/browse/NETVIRT-775>`_
  : BUG 8828: Fix NPE when no remote IP on interface
* `bcf70ca <https://git.opendaylight.org/gerrit/#/q/bcf70ca>`_
  : Filter notifications for unwanted interfaces
* `ec9b17a <https://git.opendaylight.org/gerrit/#/q/ec9b17a>`_
  : Revert "Spec to support dualstack VMs in L3VPN"
* `c573f20 <https://git.opendaylight.org/gerrit/#/q/c573f20>`_
  : Fix ActionNxResubmit in FlowEntryObjectsStateless for aclservice
* `53e54a7 <https://git.opendaylight.org/gerrit/#/q/53e54a7>`_
  : Use right version for statistics pom
* `e9ed39a <https://git.opendaylight.org/gerrit/#/q/e9ed39a>`_
  : Fix cherry-pick of 56902
* `2806c87 <https://git.opendaylight.org/gerrit/#/q/2806c87>`_
  : Fix cherry-pick of 56875
* `1065b20 <https://git.opendaylight.org/gerrit/#/q/1065b20>`_
  : Fix cherry-pick of 58749
* `a0cc3c1 <https://git.opendaylight.org/gerrit/#/q/a0cc3c1>`_
  : Fix funny character in ebgp.yang (slanted quotation mark)
* `76a76a2 <https://git.opendaylight.org/gerrit/#/q/76a76a2>`_
  : Adding Log statements, helps during debugging
* `146521d <https://git.opendaylight.org/gerrit/#/q/146521d>`_
  `NETVIRT-761 <https://jira.opendaylight.org/browse/NETVIRT-761>`_
  : Bug 8800: Fix AclServiceStatefulTest newInterfaceWithMultipleAcl()
* `1407e68 <https://git.opendaylight.org/gerrit/#/q/1407e68>`_
  `NETVIRT-778 <https://jira.opendaylight.org/browse/NETVIRT-778>`_
  : Bug 8838 - aclservice NPE's
* `c7d20f1 <https://git.opendaylight.org/gerrit/#/q/c7d20f1>`_
  `NETVIRT-778 <https://jira.opendaylight.org/browse/NETVIRT-778>`_
  : Bug 8838 - aclservice NPE's
* `507b59b <https://git.opendaylight.org/gerrit/#/q/507b59b>`_
  : Fix NullPointerException in QosInterfaceStateChangeListener
* `301589e <https://git.opendaylight.org/gerrit/#/q/301589e>`_
  : Use manual setters instead @Immutable in IdentifiedAceBuilder.xtend
* `590dcb2 <https://git.opendaylight.org/gerrit/#/q/590dcb2>`_
  : Spec to support dualstack VMs in L3VPN


neutron
-------
* `e2db0a9 <https://git.opendaylight.org/gerrit/#/q/e2db0a9>`_
  : Karaf 3 features must only use other K3 features
* `7db7a1c <https://git.opendaylight.org/gerrit/#/q/7db7a1c>`_
  : Add missing Karaf 3 dependency


nic
---
* `86ae4b1 <https://git.opendaylight.org/gerrit/#/q/86ae4b1>`_
  : Fix autorelease by moving neutron dependency


odlparent
---------
* `4fece59 <https://git.opendaylight.org/gerrit/#/q/4fece59>`_
  `ODLPARENT-126 <https://jira.opendaylight.org/browse/ODLPARENT-126>`_
  : Bug 9228: Package bcprov-ext-jdk15on jar


openflowplugin
--------------
* `ba0f1d1 <https://git.opendaylight.org/gerrit/#/q/ba0f1d1>`_
  : Fix possible NPE on ContextChainHolderImpl
* `8f1b3ed <https://git.opendaylight.org/gerrit/#/q/8f1b3ed>`_
  : This patch implements ct-mark support in nicira extensions.
* `0cdf07a <https://git.opendaylight.org/gerrit/#/q/0cdf07a>`_
  `OPNFLWPLUG-949 <https://jira.opendaylight.org/browse/OPNFLWPLUG-949>`_
  : Do not try to close context with null deviceInfo
* `654c8c4 <https://git.opendaylight.org/gerrit/#/q/654c8c4>`_
  `OPNFLWPLUG-948 <https://jira.opendaylight.org/browse/OPNFLWPLUG-948>`_
  : Sort bucket actions
* `1f56ac9 <https://git.opendaylight.org/gerrit/#/q/1f56ac9>`_
  `OPNFLWPLUG-939 <https://jira.opendaylight.org/browse/OPNFLWPLUG-939>`_
  : Use HashedWheelTimer instead of item scheduler
* `6896f57 <https://git.opendaylight.org/gerrit/#/q/6896f57>`_
  `OPNFLWPLUG-939 <https://jira.opendaylight.org/browse/OPNFLWPLUG-939>`_
  : Terminate SLAVE task before sending role change
* `575b503 <https://git.opendaylight.org/gerrit/#/q/575b503>`_
  `OPNFLWPLUG-933 <https://jira.opendaylight.org/browse/OPNFLWPLUG-933>`_
  : Fix transaction manager closing.
* `7601f12 <https://git.opendaylight.org/gerrit/#/q/7601f12>`_
  `OPNFLWPLUG-933 <https://jira.opendaylight.org/browse/OPNFLWPLUG-933>`_
  : Fix TransactionChainManager IllegalStateException
* `ffc9c24 <https://git.opendaylight.org/gerrit/#/q/ffc9c24>`_
  `OPNFLWPLUG-912 <https://jira.opendaylight.org/browse/OPNFLWPLUG-912>`_
  : Solves issue with two connections from one device.
* `bf886e6 <https://git.opendaylight.org/gerrit/#/q/bf886e6>`_
  `OPNFLWPLUG-905 <https://jira.opendaylight.org/browse/OPNFLWPLUG-905>`_
  : Fix context state comparison
* `c338fe9 <https://git.opendaylight.org/gerrit/#/q/c338fe9>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `4da1fac <https://git.opendaylight.org/gerrit/#/q/4da1fac>`_
  `OPNFLWPLUG-920 <https://jira.opendaylight.org/browse/OPNFLWPLUG-920>`_
  : Close CSS registration in separate thread
* `b2ebefe <https://git.opendaylight.org/gerrit/#/q/b2ebefe>`_
  `OPNFLWPLUG-920 <https://jira.opendaylight.org/browse/OPNFLWPLUG-920>`_
  : Fix context chain initialization and SLAVE change
* `3b5d944 <https://git.opendaylight.org/gerrit/#/q/3b5d944>`_
  `OPNFLWPLUG-922 <https://jira.opendaylight.org/browse/OPNFLWPLUG-922>`_
  : Fix match extensions deserialization
* `2629a08 <https://git.opendaylight.org/gerrit/#/q/2629a08>`_
  `OPNFLWPLUG-841 <https://jira.opendaylight.org/browse/OPNFLWPLUG-841>`_
  : Improve flow collection


ovsdb
-----
* `476e2bb <https://git.opendaylight.org/gerrit/#/q/476e2bb>`_
  `OVSDB-429 <https://jira.opendaylight.org/browse/OVSDB-429>`_
  : BUG 9166 - Fix Netvirt L2GW Illegal state exception
* `b26aa38 <https://git.opendaylight.org/gerrit/#/q/b26aa38>`_
  : Refactor compareDbVersionToMinVersion
* `5f045af <https://git.opendaylight.org/gerrit/#/q/5f045af>`_
  `OVSDB-423 <https://jira.opendaylight.org/browse/OVSDB-423>`_
  : BUG 9072 - Fix OVSDB TransactionChain memory leak
* `c997346 <https://git.opendaylight.org/gerrit/#/q/c997346>`_
  `OVSDB-424 <https://jira.opendaylight.org/browse/OVSDB-424>`_
  : BUG 9073 Fix memory leak - close TransactionChain
* `189c271 <https://git.opendaylight.org/gerrit/#/q/189c271>`_
  `OVSDB-421 <https://jira.opendaylight.org/browse/OVSDB-421>`_
  : Bug 8874 - Tunnel_ips of hardware_vtep is cleared when Open vSwitch process restarted in Open vSwitch HWVTEP Emulator
* `c9bbb9b <https://git.opendaylight.org/gerrit/#/q/c9bbb9b>`_
  : Bug 8476 Add support for logical switch replication mode
* `9779ec5 <https://git.opendaylight.org/gerrit/#/q/9779ec5>`_
  : Bug 8476 Add support for logical switch replication mode
* `9fd9d97 <https://git.opendaylight.org/gerrit/#/q/9fd9d97>`_
  `OVSDB-417 <https://jira.opendaylight.org/browse/OVSDB-417>`_
  : bug 8673 physical switch node is not removed


sfc
---
* `fb1f7da <https://git.opendaylight.org/gerrit/#/q/fb1f7da>`_
  : Replace size()==0 by isEmpty()
* `79939f8 <https://git.opendaylight.org/gerrit/#/q/79939f8>`_
  : Add private constructor to this utility class
* `cb233bb <https://git.opendaylight.org/gerrit/#/q/cb233bb>`_
  : Fix some logs
* `e8f1c20 <https://git.opendaylight.org/gerrit/#/q/e8f1c20>`_
  : Join and simplify if(s) statements


unimgr
------
* `f5e14b4 <https://git.opendaylight.org/gerrit/#/q/f5e14b4>`_
  : Fix autorelease: update adjacency changes


vtn
---
* `1a8cac8 <https://git.opendaylight.org/gerrit/#/q/1a8cac8>`_
  `VTN-167 <https://jira.opendaylight.org/browse/VTN-167>`_
  : Bug 9225: Upgrade Apache Tomcat for VTN coordinator to 7.0.82.
* `eea766b <https://git.opendaylight.org/gerrit/#/q/eea766b>`_
  `VTN-167 <https://jira.opendaylight.org/browse/VTN-167>`_
  : Bug 9225: Upgrade Apache Tomcat for VTN coordinator to 7.0.81.
* `97305e0 <https://git.opendaylight.org/gerrit/#/q/97305e0>`_
  `VTN-164 <https://jira.opendaylight.org/browse/VTN-164>`_
  : Bug 9174: Fix for VTN Coordinator Flowlistentry Creation failure
* `35a07a7 <https://git.opendaylight.org/gerrit/#/q/35a07a7>`_
  `VTN-162 <https://jira.opendaylight.org/browse/VTN-162>`_
  : Bug 9024: Set null to bundle version qualifier if it is empty.
* `010288c <https://git.opendaylight.org/gerrit/#/q/010288c>`_
  : Disable VSEM Provider Build temporarily
* `f765574 <https://git.opendaylight.org/gerrit/#/q/f765574>`_
  : BUG:8761 Portmapping fails due to unnecessary hex conversion


yangtools
---------
* `842b35b <https://git.opendaylight.org/gerrit/#/q/842b35b>`_
  : Fix AnyXml node handling
* `3f22345 <https://git.opendaylight.org/gerrit/#/q/3f22345>`_
  `YANGTOOLS-720 <https://jira.opendaylight.org/browse/YANGTOOLS-720>`_
  : Bug 7246 - Fix of SchemaTracker initialization and lookup of schema nodes
* `9a23a08 <https://git.opendaylight.org/gerrit/#/q/9a23a08>`_
  `YANGTOOLS-790 <https://jira.opendaylight.org/browse/YANGTOOLS-790>`_
  : Bug 8713 - BGP models not compatible with leafref context
* `ee3185a <https://git.opendaylight.org/gerrit/#/q/ee3185a>`_
  : Throw SourceException instead of IllegalArgumentException
* `8b3dc57 <https://git.opendaylight.org/gerrit/#/q/8b3dc57>`_
  `YANGTOOLS-806 <https://jira.opendaylight.org/browse/YANGTOOLS-806>`_
  : Bug 9005 - scope of model import prefix should be module/submodule
* `6d56ef0 <https://git.opendaylight.org/gerrit/#/q/6d56ef0>`_
  `YANGTOOLS-803 <https://jira.opendaylight.org/browse/YANGTOOLS-803>`_
  : Bug 8922 - Evaluation of if-features is done regardless of ancestors
* `0334db2 <https://git.opendaylight.org/gerrit/#/q/0334db2>`_
  `YANGTOOLS-705 <https://jira.opendaylight.org/browse/YANGTOOLS-705>`_
  : Bug 7051 - Refactoring of StmtContextUtils
* `1d93c8c <https://git.opendaylight.org/gerrit/#/q/1d93c8c>`_
  `YANGTOOLS-705 <https://jira.opendaylight.org/browse/YANGTOOLS-705>`_
  : Bug 7051 - moving of SubstatementValidator into spi.meta package
* `2ea61b9 <https://git.opendaylight.org/gerrit/#/q/2ea61b9>`_
  `YANGTOOLS-796 <https://jira.opendaylight.org/browse/YANGTOOLS-796>`_
  : Bug 8831 - Yang 1.1 default values are not checked correctly
* `8c3d5c7 <https://git.opendaylight.org/gerrit/#/q/8c3d5c7>`_
  : Cleanup SchemaTracker logic
* `2bee5fa <https://git.opendaylight.org/gerrit/#/q/2bee5fa>`_
  `YANGTOOLS-732 <https://jira.opendaylight.org/browse/YANGTOOLS-732>`_
  : BUG-7464: do not depend on odlparent's triemap
* `ffab937 <https://git.opendaylight.org/gerrit/#/q/ffab937>`_
  `YANGTOOLS-732 <https://jira.opendaylight.org/browse/YANGTOOLS-732>`_
  : BUG-7464: Switch to use forked TrieMap
* `c53dce1 <https://git.opendaylight.org/gerrit/#/q/c53dce1>`_
  `YANGTOOLS-794 <https://jira.opendaylight.org/browse/YANGTOOLS-794>`_
  : Bug 8803: check for null return NamespaceContext.getNamespaceURI()
* `2671dcb <https://git.opendaylight.org/gerrit/#/q/2671dcb>`_
  : BUG-8733: add YangInstanceIdentifierBuilder.append()
* `14f1f13 <https://git.opendaylight.org/gerrit/#/q/14f1f13>`_
  : BUG-8733: add EmptyDataTreeCandidateNode
* `104b5d9 <https://git.opendaylight.org/gerrit/#/q/104b5d9>`_
  `YANGTOOLS-694 <https://jira.opendaylight.org/browse/YANGTOOLS-694>`_
  : BUG-6972: eliminate StmtContext.getOrder()
* `e856047 <https://git.opendaylight.org/gerrit/#/q/e856047>`_
  `YANGTOOLS-694 <https://jira.opendaylight.org/browse/YANGTOOLS-694>`_
  : BUG-6972: Add OptionaBoolean utility

