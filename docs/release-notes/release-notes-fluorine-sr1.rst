Fluorine-SR1 Release Notes
==========================

This page details changes and bug fixes between the Fluorine Release
and the Fluorine Stability Release 1 (Fluorine-SR1) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `4c9ef6d2 <https://git.opendaylight.org/gerrit/#/q/4c9ef6d2>`_
  : Remove use of sshd-core in aaa-encrypt-service
* `25dbda9f <https://git.opendaylight.org/gerrit/#/q/25dbda9f>`_
  : Do not override sshd version from odlparent
* `02e1781c <https://git.opendaylight.org/gerrit/#/q/02e1781c>`_
  : Bump to odlparent 3.1.4 and yangtools 2.0.12
* `c065e146 <https://git.opendaylight.org/gerrit/#/q/c065e146>`_
  : Fix aaa-encrypt-service odlparent reference
* `5f9c971f <https://git.opendaylight.org/gerrit/#/q/5f9c971f>`_
  : Bump yangtools-2.0.11
* `a5a78068 <https://git.opendaylight.org/gerrit/#/q/a5a78068>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Migrate AAA docs to the AAA project
* `4d5d3ba0 <https://git.opendaylight.org/gerrit/#/q/4d5d3ba0>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Bootstrap AAA documentation


bgpcep
------
* `998fbe98a <https://git.opendaylight.org/gerrit/#/q/998fbe98a>`_
  : Remove unnecesary feature
* `f858868ff <https://git.opendaylight.org/gerrit/#/q/f858868ff>`_
  `PCEP-840 <https://jira.opendaylight.org/browse/PCEP-840>`_
  : Fix handleDeletions
* `05e178a78 <https://git.opendaylight.org/gerrit/#/q/05e178a78>`_
  : remove redundant ImmutableMap call
* `4a19d82bb <https://git.opendaylight.org/gerrit/#/q/4a19d82bb>`_
  `PCEP-829 <https://jira.opendaylight.org/browse/PCEP-829>`_
  : use thread-safe list in ConfigLoaderImplTest
* `ae30887d3 <https://git.opendaylight.org/gerrit/#/q/ae30887d3>`_
  `PCEP-839 <https://jira.opendaylight.org/browse/PCEP-839>`_
  : Fix LEAK: ByteBuf.release()
* `d55918ed8 <https://git.opendaylight.org/gerrit/#/q/d55918ed8>`_
  `PCEP-838 <https://jira.opendaylight.org/browse/PCEP-838>`_
  : Fix LinkstateTopologyBuilder NPE
* `0004f5ebb <https://git.opendaylight.org/gerrit/#/q/0004f5ebb>`_
  : Bump to odlparent 3.1.4 and yangtools 2.0.12
* `f9b0b89bd <https://git.opendaylight.org/gerrit/#/q/f9b0b89bd>`_
  : Include Routes Node when generating route path
* `dfca96899 <https://git.opendaylight.org/gerrit/#/q/dfca96899>`_
  : Remove unneeded references to yang-maven-plugin
* `c7a4a1ff5 <https://git.opendaylight.org/gerrit/#/q/c7a4a1ff5>`_
  `PCEP-829 <https://jira.opendaylight.org/browse/PCEP-829>`_
  : fix concurrent access to config file
* `98a7fda29 <https://git.opendaylight.org/gerrit/#/q/98a7fda29>`_
  `PCEP-830 <https://jira.opendaylight.org/browse/PCEP-830>`_
  : Handle RT removal at different level
* `739a1e900 <https://git.opendaylight.org/gerrit/#/q/739a1e900>`_
  : Bump yangtools-2.0.11
* `1eb4bb3e2 <https://git.opendaylight.org/gerrit/#/q/1eb4bb3e2>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Migrate bgpcep docs to the bgpcep project
* `87d4b4bbe <https://git.opendaylight.org/gerrit/#/q/87d4b4bbe>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Bootstrap bgpcep documentation
* `ae9ede56f <https://git.opendaylight.org/gerrit/#/q/ae9ede56f>`_
  `PCEP-826 <https://jira.opendaylight.org/browse/PCEP-826>`_
  : BGPCEP-826: Add route target extension StatementActivator service
* `3a80d3201 <https://git.opendaylight.org/gerrit/#/q/3a80d3201>`_
  : Return Set instead of Iterable in test setup
* `8b9b4ca0d <https://git.opendaylight.org/gerrit/#/q/8b9b4ca0d>`_
  : Fix findbugs warnings


controller
----------
* `978ef9d2c <https://git.opendaylight.org/gerrit/#/q/978ef9d2c>`_
  `CONTROLLER-1867 <https://jira.opendaylight.org/browse/CONTROLLER-1867>`_
  : Force UntrustedXML to be initialized from activator
* `4f8118d29 <https://git.opendaylight.org/gerrit/#/q/4f8118d29>`_
  : Bump to odlparent 3.1.4 and yangtools 2.0.12
* `71d164e36 <https://git.opendaylight.org/gerrit/#/q/71d164e36>`_
  `CONTROLLER-1746 <https://jira.opendaylight.org/browse/CONTROLLER-1746>`_
  : Move commit payload propagation
* `d01917531 <https://git.opendaylight.org/gerrit/#/q/d01917531>`_
  : Correct exception handling in LegacyDOMDataBrokerAdapter
* `bc83a3eb1 <https://git.opendaylight.org/gerrit/#/q/bc83a3eb1>`_
  : Use LogicalDatastoreType.toMdsal()
* `0425ce450 <https://git.opendaylight.org/gerrit/#/q/0425ce450>`_
  `MDSAL-370 <https://jira.opendaylight.org/browse/MDSAL-370>`_
  : Construct IMDS delegate with proper type
* `d34538fc2 <https://git.opendaylight.org/gerrit/#/q/d34538fc2>`_
  : Bump yangtools-2.0.11
* `52c382a61 <https://git.opendaylight.org/gerrit/#/q/52c382a61>`_
  : Migrate controller docs to the controller project
* `fdeb3caf7 <https://git.opendaylight.org/gerrit/#/q/fdeb3caf7>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Bootstrap Controller documentation
* `73493e9ef <https://git.opendaylight.org/gerrit/#/q/73493e9ef>`_
  : Disable artery max frame size settingd
* `bcb27a77e <https://git.opendaylight.org/gerrit/#/q/bcb27a77e>`_
  : Fix illegal check in CreateTransactionReply
* `4d0e15897 <https://git.opendaylight.org/gerrit/#/q/4d0e15897>`_
  : Fix prefix shard configuration update handling


coe
---
* `98b71f6 <https://git.opendaylight.org/gerrit/#/q/98b71f6>`_
  : Bump to odlparent 3.1.4


daexim
------
* `c875978 <https://git.opendaylight.org/gerrit/#/q/c875978>`_
  : Bump to odlparent 3.1.4
* `587fcbb <https://git.opendaylight.org/gerrit/#/q/587fcbb>`_
  : Migrate daexim docs to the daexim project
* `8c5f561 <https://git.opendaylight.org/gerrit/#/q/8c5f561>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Bootstrap daexim documentation
* `f99dcbf <https://git.opendaylight.org/gerrit/#/q/f99dcbf>`_
  `INFRAUTILS-48 <https://jira.opendaylight.org/browse/INFRAUTILS-48>`_
  : fix broken build by adding new SystemReadyMonitor getFailureCause() impl
* `2a59c0a <https://git.opendaylight.org/gerrit/#/q/2a59c0a>`_
  : Synchronize on call to updateNodeStatus.


genius
------
* `d8518701 <https://git.opendaylight.org/gerrit/#/q/d8518701>`_
  : Bump to odlparent 3.1.4 and yangtools 2.0.12
* `8c91caf1 <https://git.opendaylight.org/gerrit/#/q/8c91caf1>`_
  : Missing nicira's NxmOfFieldType's
* `28080a72 <https://git.opendaylight.org/gerrit/#/q/28080a72>`_
  : GRE Config removal doesn't remove tunnel from Oper DS
* `66677fc4 <https://git.opendaylight.org/gerrit/#/q/66677fc4>`_
  : Rename ether-types to monitor-protocol-type
* `ee9b748e <https://git.opendaylight.org/gerrit/#/q/ee9b748e>`_
  `NETVIRT-1434 <https://jira.opendaylight.org/browse/NETVIRT-1434>`_
  : Replace yang notifications in ipv6-nd-util.yang
* `83071c12 <https://git.opendaylight.org/gerrit/#/q/83071c12>`_
  `NETVIRT-1402 <https://jira.opendaylight.org/browse/NETVIRT-1402>`_
  : Add dp-id to ARP notifications
* `0942ab19 <https://git.opendaylight.org/gerrit/#/q/0942ab19>`_
  `NETVIRT-1429 <https://jira.opendaylight.org/browse/NETVIRT-1429>`_
  : Mismatch b/w table 21 and table 220 reg values
* `803d6f2c <https://git.opendaylight.org/gerrit/#/q/803d6f2c>`_
  : Bump yangtools-2.0.11
* `06b438fe <https://git.opendaylight.org/gerrit/#/q/06b438fe>`_
  `NETVIRT-1397 <https://jira.opendaylight.org/browse/NETVIRT-1397>`_
  : NETVIRT-1397: ITM to use the same ID Pool as IFM
* `0acf9752 <https://git.opendaylight.org/gerrit/#/q/0acf9752>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Migrate genius user-guide to project repo
* `0c189711 <https://git.opendaylight.org/gerrit/#/q/0c189711>`_
  : Cherry-picking the preventive fix from the ITM side for the duplicate ITM tunnels issue.
* `08cc7385 <https://git.opendaylight.org/gerrit/#/q/08cc7385>`_
  `ENIUS-206 <https://jira.opendaylight.org/browse/ENIUS-206>`_
  : Stale entries in AlivenessMonitor Datastore
* `953b16bb <https://git.opendaylight.org/gerrit/#/q/953b16bb>`_
  : Drop odlparent FindBugs override


infrautils
----------
* `464d3fc <https://git.opendaylight.org/gerrit/#/q/464d3fc>`_
  : Fix for showSvcStatus on IPv6 underlay
* `a7dafc3 <https://git.opendaylight.org/gerrit/#/q/a7dafc3>`_
  : Bump to odlparent 3.1.4
* `d08a370 <https://git.opendaylight.org/gerrit/#/q/d08a370>`_
  `INFRAUTILS-47 <https://jira.opendaylight.org/browse/INFRAUTILS-47>`_
  : fix actually badly broken /diagstatus/ HTTP return code on GET
* `f6460c4 <https://git.opendaylight.org/gerrit/#/q/f6460c4>`_
  `INFRAUTILS-48 <https://jira.opendaylight.org/browse/INFRAUTILS-48>`_
  : diagstatus JSON response now includes a systemReadyStateErrorCause
* `339bac5 <https://git.opendaylight.org/gerrit/#/q/339bac5>`_
  `INFRAUTILS-49 <https://jira.opendaylight.org/browse/INFRAUTILS-49>`_
  : provide more useful diagnostic info to debug INFRAUTILS-49 problem
* `1406413 <https://git.opendaylight.org/gerrit/#/q/1406413>`_
  `INFRAUTILS-46 <https://jira.opendaylight.org/browse/INFRAUTILS-46>`_
  : change /diagstatus/ (web) HTTP return code 418 to 503


integration/distribution
------------------------
* `aeaf932 <https://git.opendaylight.org/gerrit/#/q/aeaf932>`_
  : Fix odlparent.version
* `655320c <https://git.opendaylight.org/gerrit/#/q/655320c>`_
  : Bump to odlparent 3.1.4 and yangtools 2.0.12
* `199d2ad <https://git.opendaylight.org/gerrit/#/q/199d2ad>`_
  : Remove karaf plugin overrides
* `86331e5 <https://git.opendaylight.org/gerrit/#/q/86331e5>`_
  : Add a dependency-convergence profile
* `a441ad3 <https://git.opendaylight.org/gerrit/#/q/a441ad3>`_
  : Add platform version
* `bfe5294 <https://git.opendaylight.org/gerrit/#/q/bfe5294>`_
  : Update version after release
* `edde233 <https://git.opendaylight.org/gerrit/#/q/edde233>`_
  : Add Unimgr to distribution
* `d3ddaef <https://git.opendaylight.org/gerrit/#/q/d3ddaef>`_
  : Add jsonrpc to distribution
* `c03342d <https://git.opendaylight.org/gerrit/#/q/c03342d>`_
  : Add SNMP4SDN to distribution
* `c2215c3 <https://git.opendaylight.org/gerrit/#/q/c2215c3>`_
  : Add TransportPCE to distribution
* `bfbd662 <https://git.opendaylight.org/gerrit/#/q/bfbd662>`_
  : Downgrade common distribution version


lispflowmapping
---------------
* `17190165 <https://git.opendaylight.org/gerrit/#/q/17190165>`_
  : Bump to odlparent 3.1.4
* `4164f34d <https://git.opendaylight.org/gerrit/#/q/4164f34d>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Migrate lispflowmapping docs to the lispflowmapping project
* `b4fcc6c0 <https://git.opendaylight.org/gerrit/#/q/b4fcc6c0>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Bootstrap lispflowmapping documentation


mdsal
-----
* `2f752410f <https://git.opendaylight.org/gerrit/#/q/2f752410f>`_
  `MDSAL-379 <https://jira.opendaylight.org/browse/MDSAL-379>`_
  : Try harder to acquire class mapping
* `2b66760af <https://git.opendaylight.org/gerrit/#/q/2b66760af>`_
  : Bump to odlparent 3.1.4 and yangtools 2.0.12
* `b6e3e07fd <https://git.opendaylight.org/gerrit/#/q/b6e3e07fd>`_
  `MDSAL-377 <https://jira.opendaylight.org/browse/MDSAL-377>`_
  : Relax LazyDataObject.augmentations() implementation
* `cd55e8528 <https://git.opendaylight.org/gerrit/#/q/cd55e8528>`_
  : Builder should acquire augmentations only once
* `ced9879f6 <https://git.opendaylight.org/gerrit/#/q/ced9879f6>`_
  : Optimize AbstractBuilderTemplate key property sort
* `05be64d8f <https://git.opendaylight.org/gerrit/#/q/05be64d8f>`_
  : Use ArrayList.sort() instead of Collections.sort()
* `b8ab46d92 <https://git.opendaylight.org/gerrit/#/q/b8ab46d92>`_
  : Fixup javassist class use #2
* `5208349be <https://git.opendaylight.org/gerrit/#/q/5208349be>`_
  : Fix infinite recursion in ForwardingWriteTransaction
* `a143754a6 <https://git.opendaylight.org/gerrit/#/q/a143754a6>`_
  `MDSAL-374 <https://jira.opendaylight.org/browse/MDSAL-374>`_
  : Separate out builder/impl copy generators
* `a1e19889a <https://git.opendaylight.org/gerrit/#/q/a1e19889a>`_
  `MDSAL-355 <https://jira.opendaylight.org/browse/MDSAL-355>`_
  : Make sure we compare key members via their property name
* `c7d53e2dc <https://git.opendaylight.org/gerrit/#/q/c7d53e2dc>`_
  : Migrate conceptual-data-tree to RST
* `779fa2e41 <https://git.opendaylight.org/gerrit/#/q/779fa2e41>`_
  : Set Fluorine branch version to Fluorine for RTD
* `1879e2f14 <https://git.opendaylight.org/gerrit/#/q/1879e2f14>`_
  : Remove AsciiDoc documentation
* `c8a2d596f <https://git.opendaylight.org/gerrit/#/q/c8a2d596f>`_
  `MDSAL-371 <https://jira.opendaylight.org/browse/MDSAL-371>`_
  : Fix KeyedListAction serialization
* `948aedf2f <https://git.opendaylight.org/gerrit/#/q/948aedf2f>`_
  : Bump yangtools to 2.0.11
* `b1b71b0d8 <https://git.opendaylight.org/gerrit/#/q/b1b71b0d8>`_
  `MDSAL-370 <https://jira.opendaylight.org/browse/MDSAL-370>`_
  : MDSAL-370: expose LogicalDatastoreType-aware constructor
* `ee2895b5a <https://git.opendaylight.org/gerrit/#/q/ee2895b5a>`_
  : Fixup javassist class use
* `81453e000 <https://git.opendaylight.org/gerrit/#/q/81453e000>`_
  `MDSAL-181 <https://jira.opendaylight.org/browse/MDSAL-181>`_
  : Activate BUG-6135 test
* `8bcefeeff <https://git.opendaylight.org/gerrit/#/q/8bcefeeff>`_
  : Fix set schema context to action routing table


netconf
-------
* `224b64dcb <https://git.opendaylight.org/gerrit/#/q/224b64dcb>`_
  : Add subscribeToStream to JSONRestConfService
* `f5ff186d1 <https://git.opendaylight.org/gerrit/#/q/f5ff186d1>`_
  `CONTROLLER-1867 <https://jira.opendaylight.org/browse/CONTROLLER-1867>`_
  : Shade exificient
* `1978c16ab <https://git.opendaylight.org/gerrit/#/q/1978c16ab>`_
  : Remove test dependency on xerces
* `07d67cfb5 <https://git.opendaylight.org/gerrit/#/q/07d67cfb5>`_
  `NETCONF-575 <https://jira.opendaylight.org/browse/NETCONF-575>`_
  : Fix mounting logic in clustered topology
* `da2fd1895 <https://git.opendaylight.org/gerrit/#/q/da2fd1895>`_
  : Fix callhome start problem
* `c006c2f66 <https://git.opendaylight.org/gerrit/#/q/c006c2f66>`_
  : Bump to odlparent 3.1.4 and yangtools 2.0.12
* `3b2eedf1d <https://git.opendaylight.org/gerrit/#/q/3b2eedf1d>`_
  : Release the buffer only after we are done with it
* `41d58dd49 <https://git.opendaylight.org/gerrit/#/q/41d58dd49>`_
  : Fix Fluorine docs version
* `dc9a39421 <https://git.opendaylight.org/gerrit/#/q/dc9a39421>`_
  : Remove use of ThreadPools in sal-netconf-connector
* `6434c77a0 <https://git.opendaylight.org/gerrit/#/q/6434c77a0>`_
  : AbstractEdit: improve error message on missing schema node
* `bcd687edf <https://git.opendaylight.org/gerrit/#/q/bcd687edf>`_
  : Use a dedicated no-op listener class
* `cd4c9ff6c <https://git.opendaylight.org/gerrit/#/q/cd4c9ff6c>`_
  : Do not retain the list of RPCs
* `c2322a442 <https://git.opendaylight.org/gerrit/#/q/c2322a442>`_
  : Cleanup SimulatedCreateSubscription
* `f8e4c2dbd <https://git.opendaylight.org/gerrit/#/q/f8e4c2dbd>`_
  : Honor EXI flag in testtool
* `26e68b518 <https://git.opendaylight.org/gerrit/#/q/26e68b518>`_
  : Allow SshProxyServer to share AsynchronousChannelGroup
* `e00e29e1c <https://git.opendaylight.org/gerrit/#/q/e00e29e1c>`_
  : Fix config-only thinko
* `22c5e4575 <https://git.opendaylight.org/gerrit/#/q/22c5e4575>`_
  : Bump yangtools-2.0.11
* `9da1807de <https://git.opendaylight.org/gerrit/#/q/9da1807de>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Migrate netconf docs to project repo
* `32dda8b48 <https://git.opendaylight.org/gerrit/#/q/32dda8b48>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Bootstrap netconf documentation
* `332280c42 <https://git.opendaylight.org/gerrit/#/q/332280c42>`_
  : Fix missing support of actions in KeepaliveSalFacade
* `7df4fc3f6 <https://git.opendaylight.org/gerrit/#/q/7df4fc3f6>`_
  : Prepare netconf to support YANG 1.1 actions
* `f11b8ddb2 <https://git.opendaylight.org/gerrit/#/q/f11b8ddb2>`_
  `NETCONF-563 <https://jira.opendaylight.org/browse/NETCONF-563>`_
  : Do not instantiate NormalizedNodes for filter


netvirt
-------
* `bba925a13 <https://git.opendaylight.org/gerrit/#/q/bba925a13>`_
  : Fix Infinite loop in addVpnInterface
* `2db52ebf6 <https://git.opendaylight.org/gerrit/#/q/2db52ebf6>`_
  : Rate limit for IPv6 NS punt packets.
* `8b7dbba8d <https://git.opendaylight.org/gerrit/#/q/8b7dbba8d>`_
  `NETVIRT-1356 <https://jira.opendaylight.org/browse/NETVIRT-1356>`_
  : Traffic not flowing after delete and add TEP
* `6798c6699 <https://git.opendaylight.org/gerrit/#/q/6798c6699>`_
  `VPN-1 <https://jira.opendaylight.org/browse/VPN-1>`_
  : Handle VPN Instance Update for dual router case
* `7e3420ed7 <https://git.opendaylight.org/gerrit/#/q/7e3420ed7>`_
  `NETVIRT-1416 <https://jira.opendaylight.org/browse/NETVIRT-1416>`_
  : Fix Single RD update in BGPVPN Instance
* `463f7e1aa <https://git.opendaylight.org/gerrit/#/q/463f7e1aa>`_
  `NETVIRT-1469 <https://jira.opendaylight.org/browse/NETVIRT-1469>`_
  : Stale flows in ACL tables 216/246
* `38a223394 <https://git.opendaylight.org/gerrit/#/q/38a223394>`_
  `NETVIRT-1458 <https://jira.opendaylight.org/browse/NETVIRT-1458>`_
  : Acl cache not updated
* `ce7403a75 <https://git.opendaylight.org/gerrit/#/q/ce7403a75>`_
  : Rate limit for IPv6 RS punt packets.
* `388c0584e <https://git.opendaylight.org/gerrit/#/q/388c0584e>`_
  : Bump to odlparent 3.1.4
* `3b05a15c6 <https://git.opendaylight.org/gerrit/#/q/3b05a15c6>`_
  : Use multiple threads during flow programming
* `1d5438bac <https://git.opendaylight.org/gerrit/#/q/1d5438bac>`_
  : MdsalApiManager cleanup - elanmanager
* `2134993f8 <https://git.opendaylight.org/gerrit/#/q/2134993f8>`_
  `NETVIRT-1440 <https://jira.opendaylight.org/browse/NETVIRT-1440>`_
  : VPNv6 external network support for multiple router
* `96fb89122 <https://git.opendaylight.org/gerrit/#/q/96fb89122>`_
  `NETVIRT-1439 <https://jira.opendaylight.org/browse/NETVIRT-1439>`_
  : NETVIRT-1439 : Delete L3VPN cleanup failure.
* `d1c2ee2f5 <https://git.opendaylight.org/gerrit/#/q/d1c2ee2f5>`_
  : FIP PNF access from another node
* `4dd72b511 <https://git.opendaylight.org/gerrit/#/q/4dd72b511>`_
  : Don't check net type for empty adj list
* `7caabbf72 <https://git.opendaylight.org/gerrit/#/q/7caabbf72>`_
  : Read dpn ids from cache instead of reading DS
* `a534eaeb3 <https://git.opendaylight.org/gerrit/#/q/a534eaeb3>`_
  `NETVIRT-1416 <https://jira.opendaylight.org/browse/NETVIRT-1416>`_
  : Fix primaryRd issue with VpnInstance Update
* `5f44a7142 <https://git.opendaylight.org/gerrit/#/q/5f44a7142>`_
  `NETVIRT-1391 <https://jira.opendaylight.org/browse/NETVIRT-1391>`_
  : Exception on snatint-ip-port-map DS
* `f2ae0ce7a <https://git.opendaylight.org/gerrit/#/q/f2ae0ce7a>`_
  : Netvirt changes for rename of ether-types
* `763bfa817 <https://git.opendaylight.org/gerrit/#/q/763bfa817>`_
  `NETVIRT-1434 <https://jira.opendaylight.org/browse/NETVIRT-1434>`_
  : IPv6: Replace yang notifications
* `27efb9f5a <https://git.opendaylight.org/gerrit/#/q/27efb9f5a>`_
  : Ensure External Connectivity for NAPT Switch
* `b1ca7e2e5 <https://git.opendaylight.org/gerrit/#/q/b1ca7e2e5>`_
  `NETVIRT-1402 <https://jira.opendaylight.org/browse/NETVIRT-1402>`_
  : FIP support for Octavia VIPs
* `6fe983561 <https://git.opendaylight.org/gerrit/#/q/6fe983561>`_
  `NETVIRT-1416 <https://jira.opendaylight.org/browse/NETVIRT-1416>`_
  : BGP-VPN Instance update with additional RD Support
* `3665cec7e <https://git.opendaylight.org/gerrit/#/q/3665cec7e>`_
  : Fix for invisible IP ping failures
* `d5d53e9b7 <https://git.opendaylight.org/gerrit/#/q/d5d53e9b7>`_
  `NETVIRT-1436 <https://jira.opendaylight.org/browse/NETVIRT-1436>`_
  : Use System.out for printing to console
* `81c5e3234 <https://git.opendaylight.org/gerrit/#/q/81c5e3234>`_
  `NETVIRT-1422 <https://jira.opendaylight.org/browse/NETVIRT-1422>`_
  : Tep delete changes for extra-route reachability
* `84452de0d <https://git.opendaylight.org/gerrit/#/q/84452de0d>`_
  `NETVIRT-1417 <https://jira.opendaylight.org/browse/NETVIRT-1417>`_
  : Internet BGPVPN traffic is not working for IPv6
* `f68cbd504 <https://git.opendaylight.org/gerrit/#/q/f68cbd504>`_
  `NETVIRT-1171 <https://jira.opendaylight.org/browse/NETVIRT-1171>`_
  : Avoid Non-VPN Interface Adj IP Learning
* `01cd0f973 <https://git.opendaylight.org/gerrit/#/q/01cd0f973>`_
  : MdsalApiManager cleanup - dhcpservice
* `c566a1b2e <https://git.opendaylight.org/gerrit/#/q/c566a1b2e>`_
  : MdsalApiManager cleanup - coe
* `460fe722a <https://git.opendaylight.org/gerrit/#/q/460fe722a>`_
  `NETVIRT-1417 <https://jira.opendaylight.org/browse/NETVIRT-1417>`_
  : IPv6 FIB enteries not appearing if ExtNwt enabled
* `f846252ad <https://git.opendaylight.org/gerrit/#/q/f846252ad>`_
  `NETVIRT-1406 <https://jira.opendaylight.org/browse/NETVIRT-1406>`_
  : neutron-vpn-portip-port-data d.s not cleared
* `5f4fb39a0 <https://git.opendaylight.org/gerrit/#/q/5f4fb39a0>`_
  `NETVIRT-1418 <https://jira.opendaylight.org/browse/NETVIRT-1418>`_
  : Handle BGPVPN Instance Update/Swap Case Properly
* `488a39047 <https://git.opendaylight.org/gerrit/#/q/488a39047>`_
  : Changes to handle ReadFailedException properly
* `901fd7e64 <https://git.opendaylight.org/gerrit/#/q/901fd7e64>`_
  `NETVIRT-1389 <https://jira.opendaylight.org/browse/NETVIRT-1389>`_
  : Fix For NETVIRT-1389
* `844548102 <https://git.opendaylight.org/gerrit/#/q/844548102>`_
  `NETVIRT-1409 <https://jira.opendaylight.org/browse/NETVIRT-1409>`_
  : OptimisticLockFailedException fix for IPv6 Serv
* `2a7f52824 <https://git.opendaylight.org/gerrit/#/q/2a7f52824>`_
  : Remove GPE requirement for SFC classifier
* `a8c938621 <https://git.opendaylight.org/gerrit/#/q/a8c938621>`_
  : coe dead code removal
* `0adba2be1 <https://git.opendaylight.org/gerrit/#/q/0adba2be1>`_
  : aclservice dead code removal
* `8ef845ea3 <https://git.opendaylight.org/gerrit/#/q/8ef845ea3>`_
  : Use a single function instead of duplicating code
* `b39ea146b <https://git.opendaylight.org/gerrit/#/q/b39ea146b>`_
  `NETVIRT-1430 <https://jira.opendaylight.org/browse/NETVIRT-1430>`_
  : Issue: NETVIRT-1430
* `35446b5b5 <https://git.opendaylight.org/gerrit/#/q/35446b5b5>`_
  : Use BgpConfigurationManager instead of BgpManager
* `f4e909173 <https://git.opendaylight.org/gerrit/#/q/f4e909173>`_
  `NETVIRT-1410 <https://jira.opendaylight.org/browse/NETVIRT-1410>`_
  : VPNInstance IP Addr Family update is not working
* `be47f8efa <https://git.opendaylight.org/gerrit/#/q/be47f8efa>`_
  : Fixes for few NullPointerException
* `48bcecaf8 <https://git.opendaylight.org/gerrit/#/q/48bcecaf8>`_
  : ECMP groups not deleted after extra-routes rm
* `5998eb0e2 <https://git.opendaylight.org/gerrit/#/q/5998eb0e2>`_
  : Fix for ECMP Bucket missing on route update
* `c2a141e94 <https://git.opendaylight.org/gerrit/#/q/c2a141e94>`_
  `NETVIRT-1171 <https://jira.opendaylight.org/browse/NETVIRT-1171>`_
  : IPv4 entries appear in FIB though not asso to Rout
* `a69603d58 <https://git.opendaylight.org/gerrit/#/q/a69603d58>`_
  : ECMP Select group created for even 1 nexthop
* `68d451aaa <https://git.opendaylight.org/gerrit/#/q/68d451aaa>`_
  `NETVIRT-1363 <https://jira.opendaylight.org/browse/NETVIRT-1363>`_
  : Delete stale hidden IPs in FIB.
* `8d0efd498 <https://git.opendaylight.org/gerrit/#/q/8d0efd498>`_
  : Minor change to fetch tunnel state for ECMP UCs
* `a6ec36708 <https://git.opendaylight.org/gerrit/#/q/a6ec36708>`_
  : Add ARP Check Table in doc
* `f970ac240 <https://git.opendaylight.org/gerrit/#/q/f970ac240>`_
  : Support for local and remote ECMP groups
* `261967d5b <https://git.opendaylight.org/gerrit/#/q/261967d5b>`_
  `NETVIRT-1346 <https://jira.opendaylight.org/browse/NETVIRT-1346>`_
  : Datastore-constrained txes: vpnmanager
* `237b460f8 <https://git.opendaylight.org/gerrit/#/q/237b460f8>`_
  `NETVIRT-1339 <https://jira.opendaylight.org/browse/NETVIRT-1339>`_
  : Datastore-constrained txes: elanmanager
* `6ac8fca6d <https://git.opendaylight.org/gerrit/#/q/6ac8fca6d>`_
  : ECMP code changes for handling itm-direct feature
* `b817b12df <https://git.opendaylight.org/gerrit/#/q/b817b12df>`_
  : Handle exceptions in BgpRouteVrfEntryHandler
* `b5d23f967 <https://git.opendaylight.org/gerrit/#/q/b5d23f967>`_
  `NETVIRT-1401 <https://jira.opendaylight.org/browse/NETVIRT-1401>`_
  : Fix issue in natservice with IPv6 VxLAN tunnels
* `eb21838c1 <https://git.opendaylight.org/gerrit/#/q/eb21838c1>`_
  : Troubleshoot netvirt datapath
* `f7c1c3301 <https://git.opendaylight.org/gerrit/#/q/f7c1c3301>`_
  `NETVIRT-1396 <https://jira.opendaylight.org/browse/NETVIRT-1396>`_
  : COE external ip ping failure
* `03f05944d <https://git.opendaylight.org/gerrit/#/q/03f05944d>`_
  `NETVIRT-1414 <https://jira.opendaylight.org/browse/NETVIRT-1414>`_
  : NETVIRT-1414: Multicast traffic is dropped in ACL


neutron
-------
* `0c9f1490 <https://git.opendaylight.org/gerrit/#/q/0c9f1490>`_
  `INFRAUTILS-59 <https://jira.opendaylight.org/browse/INFRAUTILS-59>`_
  : comment out failing ClasspathHellDuplicatesCheckRule in NeutronE2ETest
* `63f2779a <https://git.opendaylight.org/gerrit/#/q/63f2779a>`_
  : Bump to odlparent 3.1.4
* `1bb7ab63 <https://git.opendaylight.org/gerrit/#/q/1bb7ab63>`_
  `NEUTRON-159 <https://jira.opendaylight.org/browse/NEUTRON-159>`_
  : make tenantID in NeutronObject a private field and use through getter()
* `ed7cf7b3 <https://git.opendaylight.org/gerrit/#/q/ed7cf7b3>`_
  `NEUTRON-159 <https://jira.opendaylight.org/browse/NEUTRON-159>`_
  : use an EmptyStringAsNullAdapter in NeutronObject re. null tenant_id
* `632f72b5 <https://git.opendaylight.org/gerrit/#/q/632f72b5>`_
  `NEUTRON-159 <https://jira.opendaylight.org/browse/NEUTRON-159>`_
  : fix JAXB usage/design bug in NeutronObject re. null tenant_id


openflowplugin
--------------
* `f06b0c128 <https://git.opendaylight.org/gerrit/#/q/f06b0c128>`_
  : Bump to odlparent 3.1.4
* `be5e9d733 <https://git.opendaylight.org/gerrit/#/q/be5e9d733>`_
  `OPNFLWPLUG-1034 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1034>`_
  : OPNFLWPLUG-1034
* `f70fdf1d6 <https://git.opendaylight.org/gerrit/#/q/f70fdf1d6>`_
  : Refactoring the code for updating the reconciliation state in the datastore during all scenarios.
* `6ebc5116f <https://git.opendaylight.org/gerrit/#/q/6ebc5116f>`_
  : Enhancement activity in admin reconciliation for handling consecutive triggering of same node
* `a7b492d49 <https://git.opendaylight.org/gerrit/#/q/a7b492d49>`_
  `OPNFLWPLUG-1033 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1033>`_
  : OPNFLWPLUG-1033: Fix for StackOverflowError while stopping forwardingrules-manager bundle
* `0d7230953 <https://git.opendaylight.org/gerrit/#/q/0d7230953>`_
  `OPNFLWPLUG-1030 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1030>`_
  : OPNFLWPLUG-1030: Documentation for the device connection rate limiting feature
* `76c22644f <https://git.opendaylight.org/gerrit/#/q/76c22644f>`_
  `OPNFLWPLUG-1022 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1022>`_
  : Exception while topology-manager writes flow:1 root node to operational datastore. In the clustered environment when all the 3 node comes up, all the three instances of topology-manager tries to write flow:1 node to the operational datastore that results in the OptimisticsLockFailedException. This patch fixes the issue by making Topology-Manager initialization cluster aware, so only selected instance will write the root node.
* `15ced2c8e <https://git.opendaylight.org/gerrit/#/q/15ced2c8e>`_
  : Add user and dev docs for Fluorine
* `2c4a77e75 <https://git.opendaylight.org/gerrit/#/q/2c4a77e75>`_
  : Fix Stack overflow errors in OFP while killing karaf


ovsdb
-----
* `ff9fc07f3 <https://git.opendaylight.org/gerrit/#/q/ff9fc07f3>`_
  : Bump to odlparent 3.1.4
* `c62c504cd <https://git.opendaylight.org/gerrit/#/q/c62c504cd>`_
  `OVSDB-444 <https://jira.opendaylight.org/browse/OVSDB-444>`_
  : Close old OVSDB connection when ping fails
* `6a81cd323 <https://git.opendaylight.org/gerrit/#/q/6a81cd323>`_
  `OVSDB-469 <https://jira.opendaylight.org/browse/OVSDB-469>`_
  : avoid any extra memory allocation in Version.fromString()
* `d9992b839 <https://git.opendaylight.org/gerrit/#/q/d9992b839>`_
  `OVSDB-466 <https://jira.opendaylight.org/browse/OVSDB-466>`_
  : Incorrect IPv6 address for controller
* `26e52a698 <https://git.opendaylight.org/gerrit/#/q/26e52a698>`_
  `INFRAUTILS-48 <https://jira.opendaylight.org/browse/INFRAUTILS-48>`_
  : fix broken build by adding new SystemReadyMonitor getFailureCause() impl


serviceutils
------------
* `e765c1e <https://git.opendaylight.org/gerrit/#/q/e765c1e>`_
  : Bump to odlparent 3.1.4 and yangtools 2.0.12
* `f812715 <https://git.opendaylight.org/gerrit/#/q/f812715>`_
  : Bump yangtools-2.0.11


sfc
---
* `6a9aba9e <https://git.opendaylight.org/gerrit/#/q/6a9aba9e>`_
  : Bump to odlparent 3.1.4
* `499151b1 <https://git.opendaylight.org/gerrit/#/q/499151b1>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Migrate sfc docs to project repo
* `b3b2e048 <https://git.opendaylight.org/gerrit/#/q/b3b2e048>`_
  `CVE-2018 <https://jira.opendaylight.org/browse/CVE-2018>`_
  : Update paramiko to resolve CVE-2018-1000805
* `1ea08e1f <https://git.opendaylight.org/gerrit/#/q/1ea08e1f>`_
  : Remove VXLAN GPE requirement for NSH encap

