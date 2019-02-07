Fluorine-SR2 Release Notes
==========================

This page details changes and bug fixes between the Fluorine Stability Release 1 (Fluorine-SR1)
and the Fluorine Stability Release 2 (Fluorine-SR2) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `3b63c824 <https://git.opendaylight.org/gerrit/#/q/3b63c824>`_
  : Align pax-web-api version
* `5011eaf9 <https://git.opendaylight.org/gerrit/#/q/5011eaf9>`_
  : Bump to yangtools-2.0.16
* `5c20b426 <https://git.opendaylight.org/gerrit/#/q/5c20b426>`_
  : Bump to odlparent 3.1.6
* `6f22e2bd <https://git.opendaylight.org/gerrit/#/q/6f22e2bd>`_
  : Bump yangtools to 2.0.15
* `2d1c0eb5 <https://git.opendaylight.org/gerrit/#/q/2d1c0eb5>`_
  : Bump to odlparent 3.1.5
* `ad6851e4 <https://git.opendaylight.org/gerrit/#/q/ad6851e4>`_
  : Bump yangtools to 2.0.13
* `8ea56260 <https://git.opendaylight.org/gerrit/#/q/8ea56260>`_
  : Bump ehcache 2.8.3 → 2.10.6


bgpcep
------
* `a5c966177 <https://git.opendaylight.org/gerrit/#/q/a5c966177>`_
  `PCEP-860 <https://jira.opendaylight.org/browse/PCEP-860>`_
  : Fix AS number comparison
* `5aad8274f <https://git.opendaylight.org/gerrit/#/q/5aad8274f>`_
  : Bump to yangtools-2.0.16
* `222bd8f1b <https://git.opendaylight.org/gerrit/#/q/222bd8f1b>`_
  : Bump to odlparent 3.1.6
* `7033bddcb <https://git.opendaylight.org/gerrit/#/q/7033bddcb>`_
  : Bump yangtools to 2.0.15
* `1029efe40 <https://git.opendaylight.org/gerrit/#/q/1029efe40>`_
  : Fix unit of BGP operational neighbor uptime in doc
* `25769d7a7 <https://git.opendaylight.org/gerrit/#/q/25769d7a7>`_
  : Bump to odlparent 3.1.5
* `414982f42 <https://git.opendaylight.org/gerrit/#/q/414982f42>`_
  : Do not rebox pathId
* `26e1dcb6e <https://git.opendaylight.org/gerrit/#/q/26e1dcb6e>`_
  : RIBImpl.vpnTableRefresher should be final
* `039b6bae6 <https://git.opendaylight.org/gerrit/#/q/039b6bae6>`_
  : Split out EffectiveRibInWriter.processModifications()
* `0e112b4e9 <https://git.opendaylight.org/gerrit/#/q/0e112b4e9>`_
  : Speed up PeerSpecificParserConstraintImpl
* `8bd1e6009 <https://git.opendaylight.org/gerrit/#/q/8bd1e6009>`_
  : Optimize path selectors
* `7ba465fb4 <https://git.opendaylight.org/gerrit/#/q/7ba465fb4>`_
  : Fix RouteKey and surrounding code
* `46529514b <https://git.opendaylight.org/gerrit/#/q/46529514b>`_
  : Remove unneeded casts
* `f946c2971 <https://git.opendaylight.org/gerrit/#/q/f946c2971>`_
  : Prevent unnecessary boxing in AddPathBestPath
* `f5a4d1aa6 <https://git.opendaylight.org/gerrit/#/q/f5a4d1aa6>`_
  : Prevent boxing of AS in BasePathSelector
* `90ff8238c <https://git.opendaylight.org/gerrit/#/q/90ff8238c>`_
  : Optimize AbstractBestPathSelector
* `28fa5d109 <https://git.opendaylight.org/gerrit/#/q/28fa5d109>`_
  : Merge ActualBestPathRoutes and AdvertizedRoute
* `ca1806e3b <https://git.opendaylight.org/gerrit/#/q/ca1806e3b>`_
  : Clean up PeerTrackerInformation
* `3fa4ed9aa <https://git.opendaylight.org/gerrit/#/q/3fa4ed9aa>`_
  : Reduce use of newArrayList()/newHashSet()
* `deaefedd9 <https://git.opendaylight.org/gerrit/#/q/deaefedd9>`_
  : Require Peer to return a FluentFuture
* `628085494 <https://git.opendaylight.org/gerrit/#/q/628085494>`_
  `PCEP-851 <https://jira.opendaylight.org/browse/PCEP-851>`_
  : Correct infinite loop in base parser
* `1a27f8c41 <https://git.opendaylight.org/gerrit/#/q/1a27f8c41>`_
  : Do not always update eff-rib-in attributes
* `fe63e18ff <https://git.opendaylight.org/gerrit/#/q/fe63e18ff>`_
  : Fix isFirstBestPath brain damage
* `0663fd7e1 <https://git.opendaylight.org/gerrit/#/q/0663fd7e1>`_
  : Fix eclipse nullness warnings
* `3a8e4c097 <https://git.opendaylight.org/gerrit/#/q/3a8e4c097>`_
  `PCEP-846 <https://jira.opendaylight.org/browse/PCEP-846>`_
  : BGP Stats collector
* `9451a375c <https://git.opendaylight.org/gerrit/#/q/9451a375c>`_
  : Decouple and create features per each topology bundle
* `5fe5d986a <https://git.opendaylight.org/gerrit/#/q/5fe5d986a>`_
  : Use features instead od bundles
* `c6c29b64c <https://git.opendaylight.org/gerrit/#/q/c6c29b64c>`_
  : Use templates for predicates
* `43391cc6c <https://git.opendaylight.org/gerrit/#/q/43391cc6c>`_
  : Bump yangtools to 2.0.13
* `3f943a144 <https://git.opendaylight.org/gerrit/#/q/3f943a144>`_
  : Encode with Base64 Linkstate route key
* `62bc316cd <https://git.opendaylight.org/gerrit/#/q/62bc316cd>`_
  `PCEP-841 <https://jira.opendaylight.org/browse/PCEP-841>`_
  : Solve deadlock
* `66bbc1d1a <https://git.opendaylight.org/gerrit/#/q/66bbc1d1a>`_
  `PCEP-843 <https://jira.opendaylight.org/browse/PCEP-843>`_
  : Fix application peer handling of DISAPPEARED / APPEARED case
* `fb4d3d859 <https://git.opendaylight.org/gerrit/#/q/fb4d3d859>`_
  `PCEP-847 <https://jira.opendaylight.org/browse/PCEP-847>`_
  : use multi thread executor in unit tests
* `f37aa9268 <https://git.opendaylight.org/gerrit/#/q/f37aa9268>`_
  : Remove duplicate message type check
* `ec59d2e57 <https://git.opendaylight.org/gerrit/#/q/ec59d2e57>`_
  : Fix an eclipse nullness warning


controller
----------
* `94bcf4a7a <https://git.opendaylight.org/gerrit/#/q/94bcf4a7a>`_
  : Bump to yangtools-2.0.16
* `30f544376 <https://git.opendaylight.org/gerrit/#/q/30f544376>`_
  : Bump to odlparent 3.1.6
* `2d288751f <https://git.opendaylight.org/gerrit/#/q/2d288751f>`_
  : Output last log term on recovery complete
* `98ead3d1d <https://git.opendaylight.org/gerrit/#/q/98ead3d1d>`_
  : Improve follower term conflict resolution
* `bbc068482 <https://git.opendaylight.org/gerrit/#/q/bbc068482>`_
  : info should be debug in CommitTransactionPayload
* `2448dd781 <https://git.opendaylight.org/gerrit/#/q/2448dd781>`_
  `CONTROLLER-1861 <https://jira.opendaylight.org/browse/CONTROLLER-1861>`_
  : Send leader's full address via AppendEntries
* `ec40acf34 <https://git.opendaylight.org/gerrit/#/q/ec40acf34>`_
  `CONTROLLER-1870 <https://jira.opendaylight.org/browse/CONTROLLER-1870>`_
  : Specify initial serialization buffer capacity for Payloads
* `bdff13f9c <https://git.opendaylight.org/gerrit/#/q/bdff13f9c>`_
  : Bump yangtools to 2.0.15
* `14368e70d <https://git.opendaylight.org/gerrit/#/q/14368e70d>`_
  : Bump to odlparent 3.1.5
* `7b510af0b <https://git.opendaylight.org/gerrit/#/q/7b510af0b>`_
  : Avoid unnecessary unsuccessful AppendEntriesReply
* `081ee1d72 <https://git.opendaylight.org/gerrit/#/q/081ee1d72>`_
  `CONTROLLER-1877 <https://jira.opendaylight.org/browse/CONTROLLER-1877>`_
  : add real "end-to-end" coverage in TracingBrokerTest
* `4e2eb1cc2 <https://git.opendaylight.org/gerrit/#/q/4e2eb1cc2>`_
  `CONTROLLER-1877 <https://jira.opendaylight.org/browse/CONTROLLER-1877>`_
  : fix NPE in odl-mdsal-trace
* `a94bc987a <https://git.opendaylight.org/gerrit/#/q/a94bc987a>`_
  : Always save to local copy in IdIntsListener
* `5d18e15c0 <https://git.opendaylight.org/gerrit/#/q/5d18e15c0>`_
  : Improve failure reporting in IdIntsListener
* `e05ce1d48 <https://git.opendaylight.org/gerrit/#/q/e05ce1d48>`_
  : Improve error reporting in WriteTransactionsHandler
* `bc5c7107b <https://git.opendaylight.org/gerrit/#/q/bc5c7107b>`_
  `CONTROLLER-1872 <https://jira.opendaylight.org/browse/CONTROLLER-1872>`_
  : Add specific serializer for SimpleReplicatedLogEntry
* `c2a865db4 <https://git.opendaylight.org/gerrit/#/q/c2a865db4>`_
  `KARAF-5179 <https://jira.opendaylight.org/browse/KARAF-5179>`_
  : Update procedure to restart controller on quarantined condition.
* `70003a00e <https://git.opendaylight.org/gerrit/#/q/70003a00e>`_
  `CONTROLLER-1873 <https://jira.opendaylight.org/browse/CONTROLLER-1873>`_
  : tell-based - reconnect on leader change
* `7a6a43e81 <https://git.opendaylight.org/gerrit/#/q/7a6a43e81>`_
  `CONTROLLER-1874 <https://jira.opendaylight.org/browse/CONTROLLER-1874>`_
  : Use explicit classes for Listener forwarding
* `234c87765 <https://git.opendaylight.org/gerrit/#/q/234c87765>`_
  `MDSAL-917 <https://jira.opendaylight.org/browse/MDSAL-917>`_
  : Use SharedSingletonMapTemplate
* `43705f0d5 <https://git.opendaylight.org/gerrit/#/q/43705f0d5>`_
  `YANGTOOLS-917 <https://jira.opendaylight.org/browse/YANGTOOLS-917>`_
  : Improve NormalizedNodeInputStreamReader
* `7cbf10978 <https://git.opendaylight.org/gerrit/#/q/7cbf10978>`_
  : Bump yangtools to 2.0.13
* `07a87065c <https://git.opendaylight.org/gerrit/#/q/07a87065c>`_
  : Use pre-sized ImmutableLists for yang-data-api
* `37ddb05de <https://git.opendaylight.org/gerrit/#/q/37ddb05de>`_
  `CONTROLLER-1869 <https://jira.opendaylight.org/browse/CONTROLLER-1869>`_
  : Proxy MD-SAL interfaces in DOMMountPointServiceImpl
* `fe6f86e98 <https://git.opendaylight.org/gerrit/#/q/fe6f86e98>`_
  `CONTROLLER-1869 <https://jira.opendaylight.org/browse/CONTROLLER-1869>`_
  : Proxy controller services in DOMMountPointServiceImpl
* `be7e59c8b <https://git.opendaylight.org/gerrit/#/q/be7e59c8b>`_
  : Hide DOMMountPointServiceImpl.registerMountPoint implementation
* `220fbf7b6 <https://git.opendaylight.org/gerrit/#/q/220fbf7b6>`_
  `MDSAL-398 <https://jira.opendaylight.org/browse/MDSAL-398>`_
  : Use Method.getParameterCount()
* `e2cd5587e <https://git.opendaylight.org/gerrit/#/q/e2cd5587e>`_
  : Fix DOMDataReadTransaction javadoc
* `a2a106380 <https://git.opendaylight.org/gerrit/#/q/a2a106380>`_
  `MDSAL-389 <https://jira.opendaylight.org/browse/MDSAL-389>`_
  : Introduce ReadTransaction.exists()
* `79eb477cd <https://git.opendaylight.org/gerrit/#/q/79eb477cd>`_
  : Bump operation timeout to 500ms


coe
---
* `a97eb49 <https://git.opendaylight.org/gerrit/#/q/a97eb49>`_
  : Bump to odlparent 3.1.6
* `eefd7ea <https://git.opendaylight.org/gerrit/#/q/eefd7ea>`_
  : Updates to coe-dev-setup document
* `76b53db <https://git.opendaylight.org/gerrit/#/q/76b53db>`_
  : Bump to odlparent 3.1.5
* `fdc6701 <https://git.opendaylight.org/gerrit/#/q/fdc6701>`_
  `COE-34 <https://jira.opendaylight.org/browse/COE-34>`_
  : Add network-policy model
* `7f86cdb <https://git.opendaylight.org/gerrit/#/q/7f86cdb>`_
  : Enhance COE dev-setup documentation


daexim
------
* `7e1f8db <https://git.opendaylight.org/gerrit/#/q/7e1f8db>`_
  : Bump to odlparent 3.1.6
* `ba6442b <https://git.opendaylight.org/gerrit/#/q/ba6442b>`_
  : Bump to odlparent 3.1.5
* `e104dd9 <https://git.opendaylight.org/gerrit/#/q/e104dd9>`_
  : Prevent unnecessary export based reboot because of stale control data


genius
------
* `7244b4b2 <https://git.opendaylight.org/gerrit/#/q/7244b4b2>`_
  : Bump to yangtools-2.0.16
* `1dac46c2 <https://git.opendaylight.org/gerrit/#/q/1dac46c2>`_
  : Bump to odlparent 3.1.6
* `ee3014ed <https://git.opendaylight.org/gerrit/#/q/ee3014ed>`_
  `ENIUS-243 <https://jira.opendaylight.org/browse/ENIUS-243>`_
  : GENIUS-243: Timing issues in tunnel mesh creation
* `47bcf3c3 <https://git.opendaylight.org/gerrit/#/q/47bcf3c3>`_
  : Bump yangtools to 2.0.15
* `d5851a42 <https://git.opendaylight.org/gerrit/#/q/d5851a42>`_
  : Bump to odlparent 3.1.5
* `ed00a2af <https://git.opendaylight.org/gerrit/#/q/ed00a2af>`_
  : skip tests using xtend until odlparent bump
* `100a49b6 <https://git.opendaylight.org/gerrit/#/q/100a49b6>`_
  `ENIUS-246 <https://jira.opendaylight.org/browse/ENIUS-246>`_
  : GENIUS-246:Removing updation of cache.
* `e17caead <https://git.opendaylight.org/gerrit/#/q/e17caead>`_
  : Stale interface cache entry
* `bb10ff96 <https://git.opendaylight.org/gerrit/#/q/bb10ff96>`_
  : Fix for Id allocation failure
* `de335ec9 <https://git.opendaylight.org/gerrit/#/q/de335ec9>`_
  : Potential fix for id duplication
* `8398bcda <https://git.opendaylight.org/gerrit/#/q/8398bcda>`_
  `ENIUS-255 <https://jira.opendaylight.org/browse/ENIUS-255>`_
  : reduce 'Total taken ##time' log level in ResourceBatchingManager from INFO to DEBUG
* `d40292a8 <https://git.opendaylight.org/gerrit/#/q/d40292a8>`_
  : Reduce liblldp usage
* `f9a94989 <https://git.opendaylight.org/gerrit/#/q/f9a94989>`_
  : Fix mtu type in router-advertisement-packet
* `7600dcad <https://git.opendaylight.org/gerrit/#/q/7600dcad>`_
  `ENIUS-212 <https://jira.opendaylight.org/browse/ENIUS-212>`_
  : GENIUS-212: TEP IP Update does not work in ITM auto-tunnel
* `a2432168 <https://git.opendaylight.org/gerrit/#/q/a2432168>`_
  `NETVIRT-1527 <https://jira.opendaylight.org/browse/NETVIRT-1527>`_
  : NETVIRT-1527: Intermittent Unit test failures
* `4284cdd2 <https://git.opendaylight.org/gerrit/#/q/4284cdd2>`_
  `ENIUS-201 <https://jira.opendaylight.org/browse/ENIUS-201>`_
  : GENIUS-201: TepCommandHelper should avoid heavy DS reads in bean initialization
* `c9962ffb <https://git.opendaylight.org/gerrit/#/q/c9962ffb>`_
  : Double registration of listener
* `83883c6f <https://git.opendaylight.org/gerrit/#/q/83883c6f>`_
  : Bump yangtools to 2.0.13
* `9b7a3025 <https://git.opendaylight.org/gerrit/#/q/9b7a3025>`_
  `NETVIRT-1501 <https://jira.opendaylight.org/browse/NETVIRT-1501>`_
  : NETVIRT-1501: ACL: Batched transactions instead of single flow transactions
* `7a058898 <https://git.opendaylight.org/gerrit/#/q/7a058898>`_
  `ENIUS-237 <https://jira.opendaylight.org/browse/ENIUS-237>`_
  : optimize creation of JobCoordinator key String in EntityOwnershipUtils
* `802c26b3 <https://git.opendaylight.org/gerrit/#/q/802c26b3>`_
  `ENIUS-240 <https://jira.opendaylight.org/browse/ENIUS-240>`_
  : GENIUS-240 IdPoolListener equals() on DataObject seems to cause huge object allocation overhead
* `8683694d <https://git.opendaylight.org/gerrit/#/q/8683694d>`_
  : Unnecessarly log removal in auto-tunnels
* `8b5a2760 <https://git.opendaylight.org/gerrit/#/q/8b5a2760>`_
  `ENIUS-236 <https://jira.opendaylight.org/browse/ENIUS-236>`_
  : GENIUS-236: Excessive toString in OvsdbNodeListener.getOvsdbTepInfo()


infrautils
----------
* `965d5f5 <https://git.opendaylight.org/gerrit/#/q/965d5f5>`_
  : Bump to odlparent 3.1.6
* `11eb1de <https://git.opendaylight.org/gerrit/#/q/11eb1de>`_
  : Fix infrautils-testutils dependency
* `78e8372 <https://git.opendaylight.org/gerrit/#/q/78e8372>`_
  : Bump to odlparent 3.1.5
* `eb2c58a <https://git.opendaylight.org/gerrit/#/q/eb2c58a>`_
  `INFRAUTILS-61 <https://jira.opendaylight.org/browse/INFRAUTILS-61>`_
  : fix ClasspathHellDuplicatesCheckRule on Oracle Java (not OpenJDK)
* `af8a709 <https://git.opendaylight.org/gerrit/#/q/af8a709>`_
  `INFRAUTILS-61 <https://jira.opendaylight.org/browse/INFRAUTILS-61>`_
  : fix ClasspathHellDuplicatesCheckRule to really print ALL dupes
* `556ba4d <https://git.opendaylight.org/gerrit/#/q/556ba4d>`_
  : Exclude META-INF/services


integration/distribution
------------------------
* `be7408f <https://git.opendaylight.org/gerrit/#/q/be7408f>`_
  : Update MRI versions in distribution
* `c4137be <https://git.opendaylight.org/gerrit/#/q/c4137be>`_
  : Bump yangtools version to 2.0.16
* `1a20bf7 <https://git.opendaylight.org/gerrit/#/q/1a20bf7>`_
  : Bump to odlparent 3.1.6
* `2c1a581 <https://git.opendaylight.org/gerrit/#/q/2c1a581>`_
  : Fix platform version documentation
* `9bd58a8 <https://git.opendaylight.org/gerrit/#/q/9bd58a8>`_
  : Bump to odlparent 3.1.5
* `6c2da47 <https://git.opendaylight.org/gerrit/#/q/6c2da47>`_
  : Bump common dist version after release
* `9c3c874 <https://git.opendaylight.org/gerrit/#/q/9c3c874>`_
  : Adjust common distribution before release
* `d9baf57 <https://git.opendaylight.org/gerrit/#/q/d9baf57>`_
  : Update fluorine platform version
* `2c01987 <https://git.opendaylight.org/gerrit/#/q/2c01987>`_
  : Set docs version in stable/fluorine
* `ceb4bfa <https://git.opendaylight.org/gerrit/#/q/ceb4bfa>`_
  : Fix fluorine common distribution


lispflowmapping
---------------
* `cc460b9f <https://git.opendaylight.org/gerrit/#/q/cc460b9f>`_
  : Bump to odlparent 3.1.6
* `61f90308 <https://git.opendaylight.org/gerrit/#/q/61f90308>`_
  : Bump to odlparent 3.1.5


mdsal
-----
* `db994eb0d <https://git.opendaylight.org/gerrit/#/q/db994eb0d>`_
  : minor: fix wrong Logger in InMemoryDOMDataStoreFactory
* `866e37080 <https://git.opendaylight.org/gerrit/#/q/866e37080>`_
  : Bump to yangtools-2.0.16
* `cea3519e1 <https://git.opendaylight.org/gerrit/#/q/cea3519e1>`_
  : Bump to odlparent 3.1.6
* `1d3f80ed2 <https://git.opendaylight.org/gerrit/#/q/1d3f80ed2>`_
  : Fix aggregator pom name
* `3e555a345 <https://git.opendaylight.org/gerrit/#/q/3e555a345>`_
  : Bump yangtools to 2.0.15
* `4f186ec42 <https://git.opendaylight.org/gerrit/#/q/4f186ec42>`_
  : Downgrade mdsal-binding-generator-impl dependencies
* `fef5780ae <https://git.opendaylight.org/gerrit/#/q/fef5780ae>`_
  : Bump to odlparent 3.1.5
* `127b7eb3b <https://git.opendaylight.org/gerrit/#/q/127b7eb3b>`_
  `MDSAL-387 <https://jira.opendaylight.org/browse/MDSAL-387>`_
  : Separate out single-key Identifiable handling
* `72fe0475a <https://git.opendaylight.org/gerrit/#/q/72fe0475a>`_
  `YANGTOOLS-917 <https://jira.opendaylight.org/browse/YANGTOOLS-917>`_
  : Optimize IdentifiableItemCodec
* `66115b161 <https://git.opendaylight.org/gerrit/#/q/66115b161>`_
  : Fix mdsal-binding-spi's relativePath
* `2254ff506 <https://git.opendaylight.org/gerrit/#/q/2254ff506>`_
  : Bump yangtools to 2.0.13
* `9b74c5580 <https://git.opendaylight.org/gerrit/#/q/9b74c5580>`_
  : Use internal classes for codecs
* `1f58671cb <https://git.opendaylight.org/gerrit/#/q/1f58671cb>`_
  : Bind invoker method handle to constructor
* `8e916d5c9 <https://git.opendaylight.org/gerrit/#/q/8e916d5c9>`_
  `MDSAL-391 <https://jira.opendaylight.org/browse/MDSAL-391>`_
  : Use ImmutableMaps for lazy augmentations initialization
* `4373edb6c <https://git.opendaylight.org/gerrit/#/q/4373edb6c>`_
  `MDSAL-398 <https://jira.opendaylight.org/browse/MDSAL-398>`_
  : Index getter methods by String
* `a14c9e20c <https://git.opendaylight.org/gerrit/#/q/a14c9e20c>`_
  : Do not box result twice
* `eec9ba1ff <https://git.opendaylight.org/gerrit/#/q/eec9ba1ff>`_
  `MDSAL-388 <https://jira.opendaylight.org/browse/MDSAL-388>`_
  : Cache mismatched augmentations
* `4b10930b4 <https://git.opendaylight.org/gerrit/#/q/4b10930b4>`_
  `MDSAL-398 <https://jira.opendaylight.org/browse/MDSAL-398>`_
  : Index cached data by method name
* `c546db6bb <https://git.opendaylight.org/gerrit/#/q/c546db6bb>`_
  `MDSAL-398 <https://jira.opendaylight.org/browse/MDSAL-398>`_
  : Switch on method names
* `18904838d <https://git.opendaylight.org/gerrit/#/q/18904838d>`_
  `MDSAL-398 <https://jira.opendaylight.org/browse/MDSAL-398>`_
  : Switch on parameterCount
* `65db44942 <https://git.opendaylight.org/gerrit/#/q/65db44942>`_
  `MDSAL-398 <https://jira.opendaylight.org/browse/MDSAL-398>`_
  : Use Method.getParameterCount()
* `4f7d8892a <https://git.opendaylight.org/gerrit/#/q/4f7d8892a>`_
  : Define getImplementedInterface name in BindingMapping
* `86c355edc <https://git.opendaylight.org/gerrit/#/q/86c355edc>`_
  `MDSAL-18 <https://jira.opendaylight.org/browse/MDSAL-18>`_
  : Prevent NPE from being propagated from LazyDataObject
* `44c2dbb73 <https://git.opendaylight.org/gerrit/#/q/44c2dbb73>`_
  `MDSAL-18 <https://jira.opendaylight.org/browse/MDSAL-18>`_
  : Refactor DataObjectCodecContext.getBindingChildValue()
* `72dac76a4 <https://git.opendaylight.org/gerrit/#/q/72dac76a4>`_
  : Speed up DataObjectCodecContext instantiation
* `bf0e7b5a7 <https://git.opendaylight.org/gerrit/#/q/bf0e7b5a7>`_
  : Fix AbstractTypeMember toString()


netconf
-------
* `341b37830 <https://git.opendaylight.org/gerrit/#/q/341b37830>`_
  : Add custom EXI buffer management
* `eb733879a <https://git.opendaylight.org/gerrit/#/q/eb733879a>`_
  : Bump exificient to 1.0.4
* `5664f9fc7 <https://git.opendaylight.org/gerrit/#/q/5664f9fc7>`_
  : Fix bierman02 ListenerAdapter memory leak
* `261b04501 <https://git.opendaylight.org/gerrit/#/q/261b04501>`_
  : Simplify NotificationListenerAdapter
* `0083c1ed5 <https://git.opendaylight.org/gerrit/#/q/0083c1ed5>`_
  : Bump to yangtools-2.0.16
* `9554b2509 <https://git.opendaylight.org/gerrit/#/q/9554b2509>`_
  : Bump to odlparent 3.1.6
* `431332638 <https://git.opendaylight.org/gerrit/#/q/431332638>`_
  `NETCONF-598 <https://jira.opendaylight.org/browse/NETCONF-598>`_
  : Fix NetconfKeystoreAdapter onDataTreeChanged method
* `f3c901b1b <https://git.opendaylight.org/gerrit/#/q/f3c901b1b>`_
  `NETCONF-594 <https://jira.opendaylight.org/browse/NETCONF-594>`_
  : Support Netconf over TLS in clustered topology
* `4e59d9d2c <https://git.opendaylight.org/gerrit/#/q/4e59d9d2c>`_
  : Factor out SslHandlerFactoryImpl
* `b336b9265 <https://git.opendaylight.org/gerrit/#/q/b336b9265>`_
  `NETCONF-595 <https://jira.opendaylight.org/browse/NETCONF-595>`_
  : Provide NetconfKeystoreService RPCs in clustered topology
* `e430b05fd <https://git.opendaylight.org/gerrit/#/q/e430b05fd>`_
  `NETCONF-599 <https://jira.opendaylight.org/browse/NETCONF-599>`_
  : Migrate netconf-console to Karaf 4 way
* `0cc06f686 <https://git.opendaylight.org/gerrit/#/q/0cc06f686>`_
  `NETCONF-511 <https://jira.opendaylight.org/browse/NETCONF-511>`_
  : Propagate error status codes correctly
* `4c3968d91 <https://git.opendaylight.org/gerrit/#/q/4c3968d91>`_
  `NETCONF-497 <https://jira.opendaylight.org/browse/NETCONF-497>`_
  : Do not suppress module name for top-level elements
* `bdcbbb5e5 <https://git.opendaylight.org/gerrit/#/q/bdcbbb5e5>`_
  `NETCONF-592 <https://jira.opendaylight.org/browse/NETCONF-592>`_
  : Include namespace in output element of json rpc responses
* `9a1002e2c <https://git.opendaylight.org/gerrit/#/q/9a1002e2c>`_
  `NETCONF-600 <https://jira.opendaylight.org/browse/NETCONF-600>`_
  : Do not check whether two nodes can be merged with reference comparison
* `09833fee8 <https://git.opendaylight.org/gerrit/#/q/09833fee8>`_
  `NETCONF-591 <https://jira.opendaylight.org/browse/NETCONF-591>`_
  : Update exificient shading
* `ee665b3b5 <https://git.opendaylight.org/gerrit/#/q/ee665b3b5>`_
  `NETCONF-566 <https://jira.opendaylight.org/browse/NETCONF-566>`_
  : Fix preparing of action request
* `032e42345 <https://git.opendaylight.org/gerrit/#/q/032e42345>`_
  `NETCONF-593 <https://jira.opendaylight.org/browse/NETCONF-593>`_
  : GET on /rests/operations with json always fails with 500
* `4d3d921fc <https://git.opendaylight.org/gerrit/#/q/4d3d921fc>`_
  `NETCONF-567 <https://jira.opendaylight.org/browse/NETCONF-567>`_
  : Fix preparing result of action
* `55e2fe224 <https://git.opendaylight.org/gerrit/#/q/55e2fe224>`_
  : Make swagger generators configurable
* `2fb90b588 <https://git.opendaylight.org/gerrit/#/q/2fb90b588>`_
  `NETCONF-577 <https://jira.opendaylight.org/browse/NETCONF-577>`_
  : Prevent ssh hang during shutdown
* `6801bfd86 <https://git.opendaylight.org/gerrit/#/q/6801bfd86>`_
  : Bump yangtools to 2.0.15
* `379448831 <https://git.opendaylight.org/gerrit/#/q/379448831>`_
  : Bump to odlparent 3.1.5
* `d730e68bc <https://git.opendaylight.org/gerrit/#/q/d730e68bc>`_
  : Support modules w/o revision in restconf/modules
* `ef37b753d <https://git.opendaylight.org/gerrit/#/q/ef37b753d>`_
  `NETCONF-585 <https://jira.opendaylight.org/browse/NETCONF-585>`_
  : Log the address and port on bind errors
* `ae1bb8fc4 <https://git.opendaylight.org/gerrit/#/q/ae1bb8fc4>`_
  : Bump yangtools to 2.0.13
* `571d18d60 <https://git.opendaylight.org/gerrit/#/q/571d18d60>`_
  : Do not use deprecated mountpoint registration
* `3fac1f5bf <https://git.opendaylight.org/gerrit/#/q/3fac1f5bf>`_
  `NETCONF-580 <https://jira.opendaylight.org/browse/NETCONF-580>`_
  : Use odl hello message capabilities


netvirt
-------
* `69d562731 <https://git.opendaylight.org/gerrit/#/q/69d562731>`_
  : Update broadcast rules for subnet addtion/deletion
* `099289a88 <https://git.opendaylight.org/gerrit/#/q/099289a88>`_
  `NETVIRT-1545 <https://jira.opendaylight.org/browse/NETVIRT-1545>`_
  : NETVIRT-1545: MDSAL transactions optimizations
* `7277a8da0 <https://git.opendaylight.org/gerrit/#/q/7277a8da0>`_
  `NETVIRT-1311 <https://jira.opendaylight.org/browse/NETVIRT-1311>`_
  : Stale 21->snat_group flow for external subnet
* `6aa246ebe <https://git.opendaylight.org/gerrit/#/q/6aa246ebe>`_
  `NETVIRT-1543 <https://jira.opendaylight.org/browse/NETVIRT-1543>`_
  : Dual Stack feature support for router interface
* `d394e18d8 <https://git.opendaylight.org/gerrit/#/q/d394e18d8>`_
  `NETVIRT-1543 <https://jira.opendaylight.org/browse/NETVIRT-1543>`_
  : Dual Stack feature support for router interface
* `d534cc191 <https://git.opendaylight.org/gerrit/#/q/d534cc191>`_
  `NETVIRT-1552 <https://jira.opendaylight.org/browse/NETVIRT-1552>`_
  : Learnt/MIP nexthop is of different address family
* `07ddf4482 <https://git.opendaylight.org/gerrit/#/q/07ddf4482>`_
  `NETVIRT-1520 <https://jira.opendaylight.org/browse/NETVIRT-1520>`_
  : NETVIRT-1520: AlivenessMonitor cache issue
* `2cf17c6aa <https://git.opendaylight.org/gerrit/#/q/2cf17c6aa>`_
  : Fix For ECMP bucket missing on deleting l3vpn
* `40f050186 <https://git.opendaylight.org/gerrit/#/q/40f050186>`_
  : Bump to odlparent 3.1.6
* `cd22bc0db <https://git.opendaylight.org/gerrit/#/q/cd22bc0db>`_
  `NETVIRT-1410 <https://jira.opendaylight.org/browse/NETVIRT-1410>`_
  : NETVIRT-1410 Vrf advertised after routes to DC-GW
* `6eb940b4e <https://git.opendaylight.org/gerrit/#/q/6eb940b4e>`_
  : Support for advertising MTU in IPv6 RAs
* `beacb3310 <https://git.opendaylight.org/gerrit/#/q/beacb3310>`_
  : IPv6 CVR North-South Support
* `ef8cf8832 <https://git.opendaylight.org/gerrit/#/q/ef8cf8832>`_
  `NETVIRT-1009 <https://jira.opendaylight.org/browse/NETVIRT-1009>`_
  : auto-config-transport-zones has incorrect default
* `30d5e80ec <https://git.opendaylight.org/gerrit/#/q/30d5e80ec>`_
  : Revert "skip tests using xtend until odlparen..."
* `a87a19a39 <https://git.opendaylight.org/gerrit/#/q/a87a19a39>`_
  `NETVIRT-1518 <https://jira.opendaylight.org/browse/NETVIRT-1518>`_
  : use the provider mappings for external group.
* `0b3405492 <https://git.opendaylight.org/gerrit/#/q/0b3405492>`_
  `NETVIRT-1536 <https://jira.opendaylight.org/browse/NETVIRT-1536>`_
  : NETVIRT-1536: Stale flows in ACL tables
* `e9210c78b <https://git.opendaylight.org/gerrit/#/q/e9210c78b>`_
  `NETVIRT-1522 <https://jira.opendaylight.org/browse/NETVIRT-1522>`_
  : NETVIRT-1522: Allowed address pair not updated
* `441b2401f <https://git.opendaylight.org/gerrit/#/q/441b2401f>`_
  `NETVIRT-1536 <https://jira.opendaylight.org/browse/NETVIRT-1536>`_
  : NETVIRT-1536: Stale flows in ACL tables
* `f345a831d <https://git.opendaylight.org/gerrit/#/q/f345a831d>`_
  : Bump to odlparent 3.1.5
* `5d8745a70 <https://git.opendaylight.org/gerrit/#/q/5d8745a70>`_
  : skip tests using xtend until odlparent bump
* `33e8fb1de <https://git.opendaylight.org/gerrit/#/q/33e8fb1de>`_
  `NETVIRT-1534 <https://jira.opendaylight.org/browse/NETVIRT-1534>`_
  : In port is set to zero after FIP translations.
* `16fa23cae <https://git.opendaylight.org/gerrit/#/q/16fa23cae>`_
  `NETVIRT-1541 <https://jira.opendaylight.org/browse/NETVIRT-1541>`_
  : Default Tunnels deleted from config
* `be086d415 <https://git.opendaylight.org/gerrit/#/q/be086d415>`_
  `NETVIRT-1474 <https://jira.opendaylight.org/browse/NETVIRT-1474>`_
  : Fix race condition between SNAT group & flow
* `18b86128f <https://git.opendaylight.org/gerrit/#/q/18b86128f>`_
  : ECMP - MIP/learnt IPs pointing to groups
* `a7ecf6ffa <https://git.opendaylight.org/gerrit/#/q/a7ecf6ffa>`_
  : Reduce liblldp usage
* `22fa024df <https://git.opendaylight.org/gerrit/#/q/22fa024df>`_
  `NETVIRT-1503 <https://jira.opendaylight.org/browse/NETVIRT-1503>`_
  : Use anyMatch to search routerIds
* `96d0d6ce5 <https://git.opendaylight.org/gerrit/#/q/96d0d6ce5>`_
  `NETVIRT-1501 <https://jira.opendaylight.org/browse/NETVIRT-1501>`_
  : NETVIRT-1501: ACL: Used Batched transactions


neutron
-------
* `d1f1916c <https://git.opendaylight.org/gerrit/#/q/d1f1916c>`_
  : Bump to odlparent 3.1.6
* `9615f0d2 <https://git.opendaylight.org/gerrit/#/q/9615f0d2>`_
  : Add an exception mapper
* `f95a7af3 <https://git.opendaylight.org/gerrit/#/q/f95a7af3>`_
  : Bump to odlparent 3.1.5
* `474c9753 <https://git.opendaylight.org/gerrit/#/q/474c9753>`_
  : minor clean-up after previous change
* `ce2a7919 <https://git.opendaylight.org/gerrit/#/q/ce2a7919>`_
  `INFRAUTILS-59 <https://jira.opendaylight.org/browse/INFRAUTILS-59>`_
  : Restore duplicate check
* `598ba407 <https://git.opendaylight.org/gerrit/#/q/598ba407>`_
  : Websocket pre-registration for port status update
* `2e73cd85 <https://git.opendaylight.org/gerrit/#/q/2e73cd85>`_
  : Neutron MTU extension in network model


openflowplugin
--------------
* `68d318153 <https://git.opendaylight.org/gerrit/#/q/68d318153>`_
  : Bump to odlparent 3.1.6
* `4053308fa <https://git.opendaylight.org/gerrit/#/q/4053308fa>`_
  `OPNFLPLUG-1057 <https://jira.opendaylight.org/browse/OPNFLPLUG-1057>`_
  : report diagstatus from UdpHandler/TcpHandler on Netty thread terminate
* `52ddd27f4 <https://git.opendaylight.org/gerrit/#/q/52ddd27f4>`_
  `OPNFLWPLUG-1053 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1053>`_
  : use (infrautils') Executors in SwitchConnectionProviderImpl
* `74ec74dde <https://git.opendaylight.org/gerrit/#/q/74ec74dde>`_
  `OPNFLWPLUG-1054 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1054>`_
  : Log the address and port when binding fails
* `c578b150c <https://git.opendaylight.org/gerrit/#/q/c578b150c>`_
  : Revert "Change log level for noisy disconnect log"
* `27b841777 <https://git.opendaylight.org/gerrit/#/q/27b841777>`_
  : Change channel outbound queue size log level
* `60a842e9d <https://git.opendaylight.org/gerrit/#/q/60a842e9d>`_
  : Migrate String padding
* `f8bc4f6d8 <https://git.opendaylight.org/gerrit/#/q/f8bc4f6d8>`_
  : Bump to odlparent 3.1.5
* `916dfd925 <https://git.opendaylight.org/gerrit/#/q/916dfd925>`_
  `OPNFLWPLUG-1039 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1039>`_
  : OPNFLWPLUG-1039: adding switch idle event registration at the end of channel initialization
* `ce19e9c63 <https://git.opendaylight.org/gerrit/#/q/ce19e9c63>`_
  `OPNFLWPLUG-1053 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1053>`_
  : Change log level for noisy disconnect log
* `992e29835 <https://git.opendaylight.org/gerrit/#/q/992e29835>`_
  `OPNFLWPLUG-1047 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1047>`_
  : Use QueuedNotificationManager to dispatch tasks
* `fc78da870 <https://git.opendaylight.org/gerrit/#/q/fc78da870>`_
  `OPNFLWPLUG-1047 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1047>`_
  : Fix raw types in NodeConfiguratorImpl
* `53c518ab7 <https://git.opendaylight.org/gerrit/#/q/53c518ab7>`_
  `OPNFLWPLUG-1043 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1043>`_
  : Close ReadTransactions from ForwardingRulesManager
* `c960556c1 <https://git.opendaylight.org/gerrit/#/q/c960556c1>`_
  `OPNFLWPLUG-1048 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1048>`_
  : fix ArbitratorReconciliationManagerImpl endReconciliation() remove


ovsdb
-----
* `fc4d5989a <https://git.opendaylight.org/gerrit/#/q/fc4d5989a>`_
  : Bump to odlparent 3.1.6
* `a45405008 <https://git.opendaylight.org/gerrit/#/q/a45405008>`_
  `OVSDB-475 <https://jira.opendaylight.org/browse/OVSDB-475>`_
  : Fix controller for ptcp manager
* `fc0470490 <https://git.opendaylight.org/gerrit/#/q/fc0470490>`_
  : Bump to odlparent 3.1.5
* `a951becb4 <https://git.opendaylight.org/gerrit/#/q/a951becb4>`_
  `OVSDB-472 <https://jira.opendaylight.org/browse/OVSDB-472>`_
  : Fixes overwrite when adding termination point
* `c928aff06 <https://git.opendaylight.org/gerrit/#/q/c928aff06>`_
  `OVSDB-473 <https://jira.opendaylight.org/browse/OVSDB-473>`_
  : Log the address and port on bind errors


serviceutils
------------
* `629546e <https://git.opendaylight.org/gerrit/#/q/629546e>`_
  : Bump to yangtools-2.0.16
* `012474d <https://git.opendaylight.org/gerrit/#/q/012474d>`_
  : Bump to odlparent 3.1.6
* `ec558a5 <https://git.opendaylight.org/gerrit/#/q/ec558a5>`_
  : Bump yangtools to 2.0.15
* `ada8c50 <https://git.opendaylight.org/gerrit/#/q/ada8c50>`_
  : Bump to odlparent 3.1.5
* `00a4254 <https://git.opendaylight.org/gerrit/#/q/00a4254>`_
  : Bump yangtools to 2.0.13


sfc
---
* `1db6812a <https://git.opendaylight.org/gerrit/#/q/1db6812a>`_
  : Bump to odlparent 3.1.6
* `7d021523 <https://git.opendaylight.org/gerrit/#/q/7d021523>`_
  : Bump to odlparent 3.1.5

