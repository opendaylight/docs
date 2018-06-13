Oxygen-SR2 Release Notes
========================

This page details changes and bug fixes between the Oxygen Stability Release 1 (Oxygen-SR1)
and the Oxygen Stability Release 2 (Oxygen-SR2) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------

* aaa
* bier
* coe
* daexim
* dlux
* dluxapps
* groupbasedpolicy
* honeycomb/vbd
* integration/distribution
* l2switch
* nemo
* of-config
* p4plugin
* packetcable
* snmp
* snmp4sdn
* tsdr

alto
----
* `95fbc56 <https://git.opendaylight.org/gerrit/#/q/95fbc56>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile


bgpcep
------
* `2fca13f <https://git.opendaylight.org/gerrit/#/q/2fca13f>`_
  : Use range to import yangtools features
* `aa664a1 <https://git.opendaylight.org/gerrit/#/q/aa664a1>`_
  : Bump yangtools to 2.0.5
* `c0166a8 <https://git.opendaylight.org/gerrit/#/q/c0166a8>`_
  : Fix IllegalStateException in StateProviderImpl
* `4e6eefd <https://git.opendaylight.org/gerrit/#/q/4e6eefd>`_
  : Improve TopologyStatsProvider transaction chain failure
* `1ef054c <https://git.opendaylight.org/gerrit/#/q/1ef054c>`_
  : Improve chain transaction fail handling
* `c3ec2d5 <https://git.opendaylight.org/gerrit/#/q/c3ec2d5>`_
  : Rework OffsetMap.remove() and share empty arrays
* `641c7e4 <https://git.opendaylight.org/gerrit/#/q/641c7e4>`_
  : Use byte[].clone()
* `e675622 <https://git.opendaylight.org/gerrit/#/q/e675622>`_
  : Do not use 'new Long()'
* `f99d0b8 <https://git.opendaylight.org/gerrit/#/q/f99d0b8>`_
  : Migrate deprecated OsgiCommandSupport
* `cca4c6a <https://git.opendaylight.org/gerrit/#/q/cca4c6a>`_
  : Migrate to karaf shell api
* `e49e3d3 <https://git.opendaylight.org/gerrit/#/q/e49e3d3>`_
  : Migrate ShellTable to non-deprecated class
* `2b83eeb <https://git.opendaylight.org/gerrit/#/q/2b83eeb>`_
  : Deprecate parseNlri method


controller
----------
* `2303bc4 <https://git.opendaylight.org/gerrit/#/q/2303bc4>`_
  `CONTROLLER-1833 <https://jira.opendaylight.org/browse/CONTROLLER-1833>`_
  : Fix shard commit deadlock
* `9a3ef14 <https://git.opendaylight.org/gerrit/#/q/9a3ef14>`_
  : Add MDSAL TRACE to Artifacts
* `7378db3 <https://git.opendaylight.org/gerrit/#/q/7378db3>`_
  : Add get-top rpc with output to sal-test-model
* `ed3f7a3 <https://git.opendaylight.org/gerrit/#/q/ed3f7a3>`_
  : Bump yangtools to 2.0.5
* `cacbb01 <https://git.opendaylight.org/gerrit/#/q/cacbb01>`_
  `CONTROLLER-1830 <https://jira.opendaylight.org/browse/CONTROLLER-1830>`_
  : Add path context to data validation failures
* `bb758fc <https://git.opendaylight.org/gerrit/#/q/bb758fc>`_
  : Rely on odlparent version of jolokia
* `030ebf9 <https://git.opendaylight.org/gerrit/#/q/030ebf9>`_
  : Remove jersey-core dependency in CSS


genius
------
* `4fa070b <https://git.opendaylight.org/gerrit/#/q/4fa070b>`_
  `ENIUS-163 <https://jira.opendaylight.org/browse/ENIUS-163>`_
  : Revert "OVS Port Delete not going through"
* `13077dd <https://git.opendaylight.org/gerrit/#/q/13077dd>`_
  : Adding API support for ELAN
* `05a85ea <https://git.opendaylight.org/gerrit/#/q/05a85ea>`_
  `ENIUS-121 <https://jira.opendaylight.org/browse/ENIUS-121>`_
  : GENIUS-121:  TEP with same local & remote IP
* `7ed642e <https://git.opendaylight.org/gerrit/#/q/7ed642e>`_
  `ENIUS-141 <https://jira.opendaylight.org/browse/ENIUS-141>`_
  : JIRA: GENIUS-141 DataTreeEventCallbackRegistrar should use ClusteredListener
* `6b03d6b <https://git.opendaylight.org/gerrit/#/q/6b03d6b>`_
  `ENIUS-140 <https://jira.opendaylight.org/browse/ENIUS-140>`_
  : fix bug in AlivenessMonitor
* `9a2180c <https://git.opendaylight.org/gerrit/#/q/9a2180c>`_
  : ITM Tunnels State Container should be operational
* `501c9b0 <https://git.opendaylight.org/gerrit/#/q/501c9b0>`_
  : Remove deprecated utils in mdsalutil-api
* `0f45773 <https://git.opendaylight.org/gerrit/#/q/0f45773>`_
  : Fixing bug while updating port status to UNKNOWN.
* `e2017fa <https://git.opendaylight.org/gerrit/#/q/e2017fa>`_
  : Fix concurrency edge cases in DataTreeEventCallbackRegistrar
* `68c338a <https://git.opendaylight.org/gerrit/#/q/68c338a>`_
  `ENIUS-122 <https://jira.opendaylight.org/browse/ENIUS-122>`_
  : add timeout support to DataTreeEventCallbackRegistrar
* `6181bf2 <https://git.opendaylight.org/gerrit/#/q/6181bf2>`_
  : ITM Direct Tunnels: Handling of UNKNOWN port status.
* `6f5ab5b <https://git.opendaylight.org/gerrit/#/q/6f5ab5b>`_
  : Move tepsNotHosted from Config DS to Oper DS
* `defcf9a <https://git.opendaylight.org/gerrit/#/q/defcf9a>`_
  `ENIUS-117 <https://jira.opendaylight.org/browse/ENIUS-117>`_
  : GENIUS-117 Create MPLSGRE only for OVS2.8.0+
* `4315476 <https://git.opendaylight.org/gerrit/#/q/4315476>`_
  : To fix bfd status related issue seen on ovs restart in tdd-wip
* `109f112 <https://git.opendaylight.org/gerrit/#/q/109f112>`_
  : Stop git from thinking logo.png has changed
* `c420053 <https://git.opendaylight.org/gerrit/#/q/c420053>`_
  `ENIUS-133 <https://jira.opendaylight.org/browse/ENIUS-133>`_
  : OVS Port Delete not going through
* `4731555 <https://git.opendaylight.org/gerrit/#/q/4731555>`_
  : Fix a typo
* `5342ee9 <https://git.opendaylight.org/gerrit/#/q/5342ee9>`_
  : Rpc changes for performance enhacements cherry-pick from: https://git.opendaylight.org/gerrit/#/c/68397/ netvirt changes: Ib65733e577182067d02d0e90234c06591da09074 includes fixes for Elan Junits: I9e2d285e18cea4ec44cfe5794ee5772843708633
* `4d09ea9 <https://git.opendaylight.org/gerrit/#/q/4d09ea9>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Switch to using lfdocs-conf to pull in theme
* `d26af43 <https://git.opendaylight.org/gerrit/#/q/d26af43>`_
  : Support for ITM direct tunnels in ITM workers
* `e6fabc5 <https://git.opendaylight.org/gerrit/#/q/e6fabc5>`_
  : Updating tunnel status based on tp status update
* `e599dff <https://git.opendaylight.org/gerrit/#/q/e599dff>`_
  : Implemented tunnel state Updation
* `02c5a68 <https://git.opendaylight.org/gerrit/#/q/02c5a68>`_
  : Support for tunnel creation directly by ITM
* `815ab49 <https://git.opendaylight.org/gerrit/#/q/815ab49>`_
  `ENIUS-126 <https://jira.opendaylight.org/browse/ENIUS-126>`_
  : AlivenessMonitor pause/stop should work in cluster
* `c9f84e4 <https://git.opendaylight.org/gerrit/#/q/c9f84e4>`_
  : Cherry pick changes on listeners some changes from master
* `3f1e473 <https://git.opendaylight.org/gerrit/#/q/3f1e473>`_
  : Migrate users of mdsalutil-api/Abstract listener base classes to tools/listeners
* `d527422 <https://git.opendaylight.org/gerrit/#/q/d527422>`_
  : Migrate mdsalutil-api/FutureRpcResults to tools/FutureRpcResults
* `a564845 <https://git.opendaylight.org/gerrit/#/q/a564845>`_
  : Moving datastore related utils from mdsalutil to new "genius.tools"
* `51f0a19 <https://git.opendaylight.org/gerrit/#/q/51f0a19>`_
  : Support for dynamic update of local_ip from SBound
* `7bf3021 <https://git.opendaylight.org/gerrit/#/q/7bf3021>`_
  : Change ext ID tzname key to transport_zone
* `5801575 <https://git.opendaylight.org/gerrit/#/q/5801575>`_
  : Fix issues with SRM test plan
* `d4b588e <https://git.opendaylight.org/gerrit/#/q/d4b588e>`_
  : Spec update against reviews #70100, #70246, #70319
* `f9e1490 <https://git.opendaylight.org/gerrit/#/q/f9e1490>`_
  : TestPlan for SRM


infrautils
----------
* `1e9ec6d <https://git.opendaylight.org/gerrit/#/q/1e9ec6d>`_
  `INFRAUTILS-39 <https://jira.opendaylight.org/browse/INFRAUTILS-39>`_
  : JIRA: INFRAUTILS-39 Due to some bug, openflowplugin's service Descriptor was null, and in such scenarios, when we execute "showSvcStatus" the CLI was throwing some exception. This one would require fixes from both openflowplugin and infrautils. This one is for infrautils.
* `c67d727 <https://git.opendaylight.org/gerrit/#/q/c67d727>`_
  : Diagstatus : Remote vs Local Status Optimization


jsonrpc
-------
* `c99d8fe <https://git.opendaylight.org/gerrit/#/q/c99d8fe>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile


lispflowmapping
---------------
* `b407ccf <https://git.opendaylight.org/gerrit/#/q/b407ccf>`_
  : Re-enable integrationtests


mdsal
-----
* `0c87983 <https://git.opendaylight.org/gerrit/#/q/0c87983>`_
  `MDSAL-346 <https://jira.opendaylight.org/browse/MDSAL-346>`_
  : Fix BindingReflections with no revisions
* `395c945 <https://git.opendaylight.org/gerrit/#/q/395c945>`_
  `MDSAL-345 <https://jira.opendaylight.org/browse/MDSAL-345>`_
  : Fix codegen of root choices
* `65288f6 <https://git.opendaylight.org/gerrit/#/q/65288f6>`_
  `MDSAL-344 <https://jira.opendaylight.org/browse/MDSAL-344>`_
  : Fix YangModuleInfoTemplate
* `d47ce25 <https://git.opendaylight.org/gerrit/#/q/d47ce25>`_
  : Bump yangtools to 2.0.5
* `5819cfe <https://git.opendaylight.org/gerrit/#/q/5819cfe>`_
  `MDSAL-213 <https://jira.opendaylight.org/browse/MDSAL-213>`_
  : add additional (debug) logging to AbstractStreamWriterGenerator
* `0fee029 <https://git.opendaylight.org/gerrit/#/q/0fee029>`_
  : Use QName.withModule()


netconf
-------
* `f94becc <https://git.opendaylight.org/gerrit/#/q/f94becc>`_
  `NETCONF-543 <https://jira.opendaylight.org/browse/NETCONF-543>`_
  : Allow specification of ODL's HELLO message
* `4deb04e <https://git.opendaylight.org/gerrit/#/q/4deb04e>`_
  : Add slave/master end-to-end test
* `c5565d8 <https://git.opendaylight.org/gerrit/#/q/c5565d8>`_
  `NETCONF-542 <https://jira.opendaylight.org/browse/NETCONF-542>`_
  : NETCONF-542: PUT request return 500 if operational data are used
* `c8ac056 <https://git.opendaylight.org/gerrit/#/q/c8ac056>`_
  : Mods/improvements to NetconfNodeActorTest et al
* `8774915 <https://git.opendaylight.org/gerrit/#/q/8774915>`_
  : NetconfTopologyManager and UT mods/improvements
* `c39727c <https://git.opendaylight.org/gerrit/#/q/c39727c>`_
  : Slave mount point registration hardening/resiliency
* `f8ec45e <https://git.opendaylight.org/gerrit/#/q/f8ec45e>`_
  : Bump yangtools to 2.0.5
* `e9f8d46 <https://git.opendaylight.org/gerrit/#/q/e9f8d46>`_
  `NETCONF-539 <https://jira.opendaylight.org/browse/NETCONF-539>`_
  : NETCONF-539: use netconf namespace in base:1.1 capability check
* `a831ae3 <https://git.opendaylight.org/gerrit/#/q/a831ae3>`_
  `NETCONF-540 <https://jira.opendaylight.org/browse/NETCONF-540>`_
  : NETCONF-540: ignore namespace prefix when sending error rpc-reply
* `13213a7 <https://git.opendaylight.org/gerrit/#/q/13213a7>`_
  `NETCONF-526 <https://jira.opendaylight.org/browse/NETCONF-526>`_
  : NETCONF-526 : edit-config payload default-operation needs to be set to default-value
* `ef1e1b4 <https://git.opendaylight.org/gerrit/#/q/ef1e1b4>`_
  : Specify necessary dependencies


netvirt
-------
* `4fe5c19 <https://git.opendaylight.org/gerrit/#/q/4fe5c19>`_
  `NETVIRT-1135 <https://jira.opendaylight.org/browse/NETVIRT-1135>`_
  : Conflicting modification exception for 47->21 flow
* `d8c69a9 <https://git.opendaylight.org/gerrit/#/q/d8c69a9>`_
  `NETVIRT-1137 <https://jira.opendaylight.org/browse/NETVIRT-1137>`_
  : NETVIRT-1137: NPE: Direct Exception
* `41b7e8b <https://git.opendaylight.org/gerrit/#/q/41b7e8b>`_
  : Fail builds on warnings
* `890bba3 <https://git.opendaylight.org/gerrit/#/q/890bba3>`_
  : Resolve Sphinx build warnings
* `d34acdb <https://git.opendaylight.org/gerrit/#/q/d34acdb>`_
  : New Route Origin For Routes learnt dynamically in the data-path
* `3a36f99 <https://git.opendaylight.org/gerrit/#/q/3a36f99>`_
  `NETVIRT-1276 <https://jira.opendaylight.org/browse/NETVIRT-1276>`_
  : Handling NPE
* `f34204b <https://git.opendaylight.org/gerrit/#/q/f34204b>`_
  `NETVIRT-1255 <https://jira.opendaylight.org/browse/NETVIRT-1255>`_
  : NETVIRT-1255: Corrected wrong goto table number specified with two of the default flows
* `ae49a06 <https://git.opendaylight.org/gerrit/#/q/ae49a06>`_
  : QoS Alert code cleanup
* `4f105f7 <https://git.opendaylight.org/gerrit/#/q/4f105f7>`_
  `NETVIRT-1282 <https://jira.opendaylight.org/browse/NETVIRT-1282>`_
  : NETVIRT-1282 updating default BGP config server port 7644 modified default log file location of bgp
* `64b2a86 <https://git.opendaylight.org/gerrit/#/q/64b2a86>`_
  `NETVIRT-1238 <https://jira.opendaylight.org/browse/NETVIRT-1238>`_
  : The NFIP to FIP traffic is failing when there are multiple route
* `759d2ce <https://git.opendaylight.org/gerrit/#/q/759d2ce>`_
  `NETVIRT-1279 <https://jira.opendaylight.org/browse/NETVIRT-1279>`_
  : Enable SNAT flows on router update
* `daff03f <https://git.opendaylight.org/gerrit/#/q/daff03f>`_
  : netvirt-1115: ecmp configuration on non bgpvpn router is possible again
* `c58d419 <https://git.opendaylight.org/gerrit/#/q/c58d419>`_
  `NETVIRT-1261 <https://jira.opendaylight.org/browse/NETVIRT-1261>`_
  : NETVIRT-1261: ACL Stats: Drop stats is 0 sometimes
* `7730d31 <https://git.opendaylight.org/gerrit/#/q/7730d31>`_
  : Avoid UT failures in AclServiceIPV6 tests due to errors in shutting down of JobCoordinatorImpl, before next tests are initiated
* `5c41778 <https://git.opendaylight.org/gerrit/#/q/5c41778>`_
  `NETVIRT-1197 <https://jira.opendaylight.org/browse/NETVIRT-1197>`_
  : Revert "NETVIRT-1197: Stale entries exists in ACL caches"
* `957bf66 <https://git.opendaylight.org/gerrit/#/q/957bf66>`_
  `NETVIRT-1080 <https://jira.opendaylight.org/browse/NETVIRT-1080>`_
  : NETVIRT-1080 : Fix PNF discovery failure after FIP detached
* `117d206 <https://git.opendaylight.org/gerrit/#/q/117d206>`_
  `NETVIRT-1197 <https://jira.opendaylight.org/browse/NETVIRT-1197>`_
  : NETVIRT-1197: Stale entries exists in ACL caches
* `7450705 <https://git.opendaylight.org/gerrit/#/q/7450705>`_
  : Minor fix in print message.
* `a7b6cad <https://git.opendaylight.org/gerrit/#/q/a7b6cad>`_
  `NETVIRT-1254 <https://jira.opendaylight.org/browse/NETVIRT-1254>`_
  : NETVIRT-1254: ext-nw VRF not published to Quagga
* `2f748f9 <https://git.opendaylight.org/gerrit/#/q/2f748f9>`_
  `NETVIRT-1200 <https://jira.opendaylight.org/browse/NETVIRT-1200>`_
  : NETVIRT-1200: Upstreaming fixes
* `d4c3431 <https://git.opendaylight.org/gerrit/#/q/d4c3431>`_
  : Netvirt-QoS: new listener for bw rules programming
* `2f124f3 <https://git.opendaylight.org/gerrit/#/q/2f124f3>`_
  `NETVIRT-1157 <https://jira.opendaylight.org/browse/NETVIRT-1157>`_
  : The SNAT FIB flow miss entry id is made more unique
* `6a93e5d <https://git.opendaylight.org/gerrit/#/q/6a93e5d>`_
  `NETVIRT-1224 <https://jira.opendaylight.org/browse/NETVIRT-1224>`_
  : NETVIRT-1224 host routes not updated in VM if subnet is updated with host routes
* `ed6d1e8 <https://git.opendaylight.org/gerrit/#/q/ed6d1e8>`_
  : Bucket entries are not updated after karaf restart:
* `205493f <https://git.opendaylight.org/gerrit/#/q/205493f>`_
  : VNI based forwarding support for BGPVPN
* `6485ef6 <https://git.opendaylight.org/gerrit/#/q/6485ef6>`_
  `NETVIRT-1252 <https://jira.opendaylight.org/browse/NETVIRT-1252>`_
  : NETVIRT-1252: NPE while creating internet VPN interface
* `90a6bcf <https://git.opendaylight.org/gerrit/#/q/90a6bcf>`_
  : itm-direct tunnel related changes for scaling depends on genius RPC implementation: https://git.opendaylight.org/gerrit/#/c/71566/ includes Junits fixes: Ia20fa0493bfacd1d7ef231d17a28e9ff9017ebbd
* `13d9262 <https://git.opendaylight.org/gerrit/#/q/13d9262>`_
  `NETVIRT-1227 <https://jira.opendaylight.org/browse/NETVIRT-1227>`_
  : NETVIRT-1227 : L2gw with multisegment network fail
* `ff70c77 <https://git.opendaylight.org/gerrit/#/q/ff70c77>`_
  : Add doc for debugging port status update
* `73d2829 <https://git.opendaylight.org/gerrit/#/q/73d2829>`_
  `NETVIRT-1207 <https://jira.opendaylight.org/browse/NETVIRT-1207>`_
  : NETVIRT-1207 QoS Alert not working
* `a747095 <https://git.opendaylight.org/gerrit/#/q/a747095>`_
  `NETVIRT-1225 <https://jira.opendaylight.org/browse/NETVIRT-1225>`_
  : NETVIRT-1225 QOS bandwidth rule not pushed to ovs
* `f0e267f <https://git.opendaylight.org/gerrit/#/q/f0e267f>`_
  `NETVIRT-1194 <https://jira.opendaylight.org/browse/NETVIRT-1194>`_
  : NAT has two Listener on Interface-State Oper DS
* `ebe124d <https://git.opendaylight.org/gerrit/#/q/ebe124d>`_
  : Set docs version to Oxygen
* `349fa1a <https://git.opendaylight.org/gerrit/#/q/349fa1a>`_
  `NETVIRT-1198 <https://jira.opendaylight.org/browse/NETVIRT-1198>`_
  : NETVIRT-1198: Acl Stats does not support Anti Spoof drop stats.
* `e66d68c <https://git.opendaylight.org/gerrit/#/q/e66d68c>`_
  `NETVIRT-1171 <https://jira.opendaylight.org/browse/NETVIRT-1171>`_
  : NETVIRT-1171:IPv4 entries appearing in FIB though not associated to Router
* `f7c5452 <https://git.opendaylight.org/gerrit/#/q/f7c5452>`_
  : Provide a class in VPN to manage cluster ownership.
* `17f2c29 <https://git.opendaylight.org/gerrit/#/q/17f2c29>`_
  `NETVIRT-1206 <https://jira.opendaylight.org/browse/NETVIRT-1206>`_
  : Fix NPE in startArpMonitoring for a dual-stack network
* `7d5b591 <https://git.opendaylight.org/gerrit/#/q/7d5b591>`_
  : Switch to using lfdocs-conf to pull in theme
* `2f47027 <https://git.opendaylight.org/gerrit/#/q/2f47027>`_
  `NETVIRT-1201 <https://jira.opendaylight.org/browse/NETVIRT-1201>`_
  : NETVIRT-1201 Upstream fixes to master --- 7
* `8160b86 <https://git.opendaylight.org/gerrit/#/q/8160b86>`_
  `NETVIRT-1190 <https://jira.opendaylight.org/browse/NETVIRT-1190>`_
  : NETVIRT-1190: Local Adjacency for extra-route is not cleaned up from the vpn-netxhop data-store
* `a059b1f <https://git.opendaylight.org/gerrit/#/q/a059b1f>`_
  : Migrate from genius mdsalutil-api/utils to tools-api/utils
* `834f3f9 <https://git.opendaylight.org/gerrit/#/q/834f3f9>`_
  `NETVIRT-1227 <https://jira.opendaylight.org/browse/NETVIRT-1227>`_
  : NETVIRT-1227 : L2gw with multisegment network fail
* `b45c1c2 <https://git.opendaylight.org/gerrit/#/q/b45c1c2>`_
  `NETVIRT-1215 <https://jira.opendaylight.org/browse/NETVIRT-1215>`_
  : reduce LOG.error() to debug() in ElanUtils.waitForTransactionToComplete
* `c5f0b0f <https://git.opendaylight.org/gerrit/#/q/c5f0b0f>`_
  `NETVIRT-1215 <https://jira.opendaylight.org/browse/NETVIRT-1215>`_
  : fix error handling in elanmanager-impl workers
* `e306497 <https://git.opendaylight.org/gerrit/#/q/e306497>`_
  `NETVIRT-1193 <https://jira.opendaylight.org/browse/NETVIRT-1193>`_
  : NETVIRT-1193: ACL dropping IPv6 RA packets from external router.
* `1e49f81 <https://git.opendaylight.org/gerrit/#/q/1e49f81>`_
  `NETVIRT-1210 <https://jira.opendaylight.org/browse/NETVIRT-1210>`_
  : Ensure NeutronPCL txs are closed
* `8123eab <https://git.opendaylight.org/gerrit/#/q/8123eab>`_
  `NETVIRT-1163 <https://jira.opendaylight.org/browse/NETVIRT-1163>`_
  : No option to configure IPV6 on ODL IPV6 option was not able in ConfigCli so adding the option in it
* `08533c8 <https://git.opendaylight.org/gerrit/#/q/08533c8>`_
  `NETVIRT-1064 <https://jira.opendaylight.org/browse/NETVIRT-1064>`_
  : Router internal address not reachable
* `2de4a08 <https://git.opendaylight.org/gerrit/#/q/2de4a08>`_
  `NETVIRT-1208 <https://jira.opendaylight.org/browse/NETVIRT-1208>`_
  : VMs on tennant vlan network not getting an IP when spwaned after the networks are added to the router.
* `3140abd <https://git.opendaylight.org/gerrit/#/q/3140abd>`_
  : Fix tox errors in existing specs
* `0687bb5 <https://git.opendaylight.org/gerrit/#/q/0687bb5>`_
  `NETVIRT-1157 <https://jira.opendaylight.org/browse/NETVIRT-1157>`_
  : NETVIRT-1157 Stale flows after clearing gateway info from a router
* `67a9e5c <https://git.opendaylight.org/gerrit/#/q/67a9e5c>`_
  `NETVIRT-221 <https://jira.opendaylight.org/browse/NETVIRT-221>`_
  : NETVIRT-221: Fixed rules are not added when no SG is associated with the port.
* `a50a575 <https://git.opendaylight.org/gerrit/#/q/a50a575>`_
  `NETVIRT-1200 <https://jira.opendaylight.org/browse/NETVIRT-1200>`_
  : NETVIRT-1200: Upstreaming fixes 2


neutron
-------
* `0efb038 <https://git.opendaylight.org/gerrit/#/q/0efb038>`_
  : Add feature identity for qos rule types
* `ff5f371 <https://git.opendaylight.org/gerrit/#/q/ff5f371>`_
  `NEUTRON-162 <https://jira.opendaylight.org/browse/NEUTRON-162>`_
  : NEUTRON-162: vlan_transparent attribute is missing in network_attributes


openflowplugin
--------------
* `c22d7b8 <https://git.opendaylight.org/gerrit/#/q/c22d7b8>`_
  : Eliminate InstanceIdentifier.toInstance() reference
* `551a678 <https://git.opendaylight.org/gerrit/#/q/551a678>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : OPNFLWPLUG-898 Improve code quality in liblldp module
* `bd7ae18 <https://git.opendaylight.org/gerrit/#/q/bd7ae18>`_
  `OPNFLWPLUG-1011 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1011>`_
  : IllegalArgumentException with metadata field in learn action
* `511674c <https://git.opendaylight.org/gerrit/#/q/511674c>`_
  `OPNFLWPLUG-1014 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1014>`_
  : OPNFLWPLUG-1014: Negotiate openflow version for protocol OF 1.4 and above
* `184817a <https://git.opendaylight.org/gerrit/#/q/184817a>`_
  `OPNFLWPLUG-1013 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1013>`_
  : Add missing iteration synchronisation
* `fca690a <https://git.opendaylight.org/gerrit/#/q/fca690a>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : OPNFLWPLUG-898 : remove deprecated checkedfuture
* `c831265 <https://git.opendaylight.org/gerrit/#/q/c831265>`_
  `INFRAUTILS-39 <https://jira.opendaylight.org/browse/INFRAUTILS-39>`_
  : fix diagstatus NPE on showSvcStatus CLI
* `c26ef7b <https://git.opendaylight.org/gerrit/#/q/c26ef7b>`_
  `OPNFLWPLUG-1008 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1008>`_
  : OPNFLWPLUG-1008 : Make OpenflowPluginDiagStatusProvider ip address confiugrable
* `94c64c5 <https://git.opendaylight.org/gerrit/#/q/94c64c5>`_
  `OPNFLWPLUG-1009 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1009>`_
  : OPNFLWPLUG-1009 : Bind ports 6653/6633 on specified address
* `cc218df <https://git.opendaylight.org/gerrit/#/q/cc218df>`_
  `OPNFLWPLUG-990 <https://jira.opendaylight.org/browse/OPNFLWPLUG-990>`_
  : OPNFLWPLUG-990: Administrative Reconciliation alarm
* `70f9304 <https://git.opendaylight.org/gerrit/#/q/70f9304>`_
  : Fix IPv6 OXMHeader Mask issue for multi-layer
* `73f03d1 <https://git.opendaylight.org/gerrit/#/q/73f03d1>`_
  `OPNFLWPLUG-989 <https://jira.opendaylight.org/browse/OPNFLWPLUG-989>`_
  : OPNFLWPLUG-989: Counter for Administrative Reconciliation on multiple/all Nodes
* `1f89be7 <https://git.opendaylight.org/gerrit/#/q/1f89be7>`_
  : add default value to channel-outbound-queue-size
* `a74c994 <https://git.opendaylight.org/gerrit/#/q/a74c994>`_
  `OPNFLWPLUG-995 <https://jira.opendaylight.org/browse/OPNFLWPLUG-995>`_
  : must use full node-connector string when writing queue stats


ovsdb
-----
* `d2a43b5 <https://git.opendaylight.org/gerrit/#/q/d2a43b5>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Add Documentation for OVSDB
* `77aec33 <https://git.opendaylight.org/gerrit/#/q/77aec33>`_
  `NETVIRT-1178 <https://jira.opendaylight.org/browse/NETVIRT-1178>`_
  : Detect stale conns when ping times out


sfc
---
* `6c1309f <https://git.opendaylight.org/gerrit/#/q/6c1309f>`_
  : Fixing SFC build issues after migration to genius tools-api
* `22a3ef6 <https://git.opendaylight.org/gerrit/#/q/22a3ef6>`_
  : Bump java-uuid-generator to 3.1.5
* `b293e6b <https://git.opendaylight.org/gerrit/#/q/b293e6b>`_
  : Migrate from genius mdsalutil-api/utils to tools-api/utils


sxp
---
* `d4c3cca <https://git.opendaylight.org/gerrit/#/q/d4c3cca>`_
  : Bump yangtools to 2.0.5
* `b07d4eb <https://git.opendaylight.org/gerrit/#/q/b07d4eb>`_
  : Use awaitility in sxp135 test


usc
---
* `b6cf673 <https://git.opendaylight.org/gerrit/#/q/b6cf673>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `2ca0f1f <https://git.opendaylight.org/gerrit/#/q/2ca0f1f>`_
  : Remove obsolete Maven Site configuration

