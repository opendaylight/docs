Oxygen-SR4 Release Notes
========================

This page details changes and bug fixes between the Oxygen Stability Release 3 (Oxygen-SR3)
and the Oxygen Stability Release 4 (Oxygen-SR4) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `004cbc3d <https://git.opendaylight.org/gerrit/#/q/004cbc3d>`_
  : Bump to odlparent 3.1.4


alto
----
* `be9a0878 <https://git.opendaylight.org/gerrit/#/q/be9a0878>`_
  : Bump to odlparent 3.1.4


bgpcep
------
* `c1f5c0628 <https://git.opendaylight.org/gerrit/#/q/c1f5c0628>`_
  : Remove duplicate message type check
* `3446af41b <https://git.opendaylight.org/gerrit/#/q/3446af41b>`_
  `PCEP-829 <https://jira.opendaylight.org/browse/PCEP-829>`_
  : use thread-safe list in ConfigLoaderImplTest
* `7f523dfc7 <https://git.opendaylight.org/gerrit/#/q/7f523dfc7>`_
  : Bump to odlparent 3.1.4 and yangtools 2.0.6.5
* `fdda5e118 <https://git.opendaylight.org/gerrit/#/q/fdda5e118>`_
  : Cache dataAfter result
* `f5c72bd1b <https://git.opendaylight.org/gerrit/#/q/f5c72bd1b>`_
  `PCEP-847 <https://jira.opendaylight.org/browse/PCEP-847>`_
  : use multi thread executor in unit tests
* `45bcae95a <https://git.opendaylight.org/gerrit/#/q/45bcae95a>`_
  `PCEP-843 <https://jira.opendaylight.org/browse/PCEP-843>`_
  : Fix application peer handling of DISAPPEARED / APPEARED case
* `0d0f863fb <https://git.opendaylight.org/gerrit/#/q/0d0f863fb>`_
  `PCEP-841 <https://jira.opendaylight.org/browse/PCEP-841>`_
  : Solve deadlock
* `6890e61df <https://git.opendaylight.org/gerrit/#/q/6890e61df>`_
  `PCEP-839 <https://jira.opendaylight.org/browse/PCEP-839>`_
  : Fix LEAK: ByteBuf.release()
* `9b39038f5 <https://git.opendaylight.org/gerrit/#/q/9b39038f5>`_
  `PCEP-838 <https://jira.opendaylight.org/browse/PCEP-838>`_
  : Fix LinkstateTopologyBuilder NPE
* `ea7104682 <https://git.opendaylight.org/gerrit/#/q/ea7104682>`_
  `PCEP-829 <https://jira.opendaylight.org/browse/PCEP-829>`_
  : fix concurrent access to config file
* `be1ee7b37 <https://git.opendaylight.org/gerrit/#/q/be1ee7b37>`_
  : Bump yangtools to 2.0.6.3
* `23b2ffd5f <https://git.opendaylight.org/gerrit/#/q/23b2ffd5f>`_
  : Bump yangtools to 2.0.6.2
* `65913ae1b <https://git.opendaylight.org/gerrit/#/q/65913ae1b>`_
  `PCEP-818 <https://jira.opendaylight.org/browse/PCEP-818>`_
  : add server channels closure in tests


bier
----
* `8c983f5 <https://git.opendaylight.org/gerrit/#/q/8c983f5>`_
  : Bump to odlparent 3.1.4


controller
----------
* `00c5217b1 <https://git.opendaylight.org/gerrit/#/q/00c5217b1>`_
  `MDSAL-398 <https://jira.opendaylight.org/browse/MDSAL-398>`_
  : Use Method.getParameterCount()
* `10940275f <https://git.opendaylight.org/gerrit/#/q/10940275f>`_
  : Bump to odlparent 3.1.4 and yangtools 2.0.6.5
* `8b6800a4a <https://git.opendaylight.org/gerrit/#/q/8b6800a4a>`_
  `MDSAL-389 <https://jira.opendaylight.org/browse/MDSAL-389>`_
  : Introduce ReadTransaction.exists()
* `37179c0c7 <https://git.opendaylight.org/gerrit/#/q/37179c0c7>`_
  : Fix DOMDataReadTransaction javadoc
* `1b51c2802 <https://git.opendaylight.org/gerrit/#/q/1b51c2802>`_
  : Bump operation timeout to 500ms
* `8d52cbe9f <https://git.opendaylight.org/gerrit/#/q/8d52cbe9f>`_
  `CONTROLLER-1867 <https://jira.opendaylight.org/browse/CONTROLLER-1867>`_
  : Force UntrustedXML to be initialized from activator
* `212556d37 <https://git.opendaylight.org/gerrit/#/q/212556d37>`_
  `CONTROLLER-1746 <https://jira.opendaylight.org/browse/CONTROLLER-1746>`_
  : Move commit payload propagation
* `6a5ed9865 <https://git.opendaylight.org/gerrit/#/q/6a5ed9865>`_
  : Bump yangtools to 2.0.6.3
* `946398056 <https://git.opendaylight.org/gerrit/#/q/946398056>`_
  : Bump yangtools to 2.0.6.2
* `4bd71be13 <https://git.opendaylight.org/gerrit/#/q/4bd71be13>`_
  : Fix illegal check in CreateTransactionReply
* `7b7c62e39 <https://git.opendaylight.org/gerrit/#/q/7b7c62e39>`_
  : Fix prefix shard configuration update handling
* `278a1ee5e <https://git.opendaylight.org/gerrit/#/q/278a1ee5e>`_
  : Disable artery max frame size settingd


coe
---
* `9e609de <https://git.opendaylight.org/gerrit/#/q/9e609de>`_
  : Bump to odlparent 3.1.4


daexim
------
* `89d7b6f <https://git.opendaylight.org/gerrit/#/q/89d7b6f>`_
  : Prevent unnecessary export based reboot because of stale control data
* `e9b8029 <https://git.opendaylight.org/gerrit/#/q/e9b8029>`_
  : Bump to odlparent 3.1.4
* `7693c3f <https://git.opendaylight.org/gerrit/#/q/7693c3f>`_
  `INFRAUTILS-48 <https://jira.opendaylight.org/browse/INFRAUTILS-48>`_
  : fix broken build by adding new SystemReadyMonitor getFailureCause() impl
* `805b50e <https://git.opendaylight.org/gerrit/#/q/805b50e>`_
  : Synchronize on call to updateNodeStatus.


dlux
----
* `1ae16b2 <https://git.opendaylight.org/gerrit/#/q/1ae16b2>`_
  : Bump to odlparent 3.1.4
* `eeeeb86 <https://git.opendaylight.org/gerrit/#/q/eeeeb86>`_
  : Bump NodeJS, NPM, and Grunt versions


dluxapps
--------
* `b287508 <https://git.opendaylight.org/gerrit/#/q/b287508>`_
  : Bump to odlparent 3.1.4


genius
------
* `142102ec <https://git.opendaylight.org/gerrit/#/q/142102ec>`_
  `ENIUS-237 <https://jira.opendaylight.org/browse/ENIUS-237>`_
  : optimize creation of JobCoordinator key String in EntityOwnershipUtils
* `a05fa8ff <https://git.opendaylight.org/gerrit/#/q/a05fa8ff>`_
  : Unnecessarly log removal in auto-tunnels
* `913f0505 <https://git.opendaylight.org/gerrit/#/q/913f0505>`_
  `ENIUS-240 <https://jira.opendaylight.org/browse/ENIUS-240>`_
  : GENIUS-240 IdPoolListener equals() on DataObject seems to cause huge object allocation overhead
* `a4e72f0d <https://git.opendaylight.org/gerrit/#/q/a4e72f0d>`_
  : GRE Config removal doesn't remove tunnel from Oper DS
* `447fa54d <https://git.opendaylight.org/gerrit/#/q/447fa54d>`_
  : Bump to odlparent 3.1.4
* `13a0d745 <https://git.opendaylight.org/gerrit/#/q/13a0d745>`_
  `ENIUS-236 <https://jira.opendaylight.org/browse/ENIUS-236>`_
  : fix bad toString() in OvsdbNodeListener logging
* `4776c247 <https://git.opendaylight.org/gerrit/#/q/4776c247>`_
  `NETVIRT-1501 <https://jira.opendaylight.org/browse/NETVIRT-1501>`_
  : NETVIRT-1501: ACL: Batched transactions instead of single flow transactions
* `e1620ea7 <https://git.opendaylight.org/gerrit/#/q/e1620ea7>`_
  `NETVIRT-1213 <https://jira.opendaylight.org/browse/NETVIRT-1213>`_
  : Util to check IP address is within CIDR range
* `63a64c62 <https://git.opendaylight.org/gerrit/#/q/63a64c62>`_
  `NETVIRT-1402 <https://jira.opendaylight.org/browse/NETVIRT-1402>`_
  : Add dp-id to ARP notifications
* `449f198b <https://git.opendaylight.org/gerrit/#/q/449f198b>`_
  `NETVIRT-1397 <https://jira.opendaylight.org/browse/NETVIRT-1397>`_
  : NETVIRT-1397: ITM to use the same ID Pool as IFM
* `7a21e2fe <https://git.opendaylight.org/gerrit/#/q/7a21e2fe>`_
  : Fixed issue when null is passed in CLI cmds
* `b4f00964 <https://git.opendaylight.org/gerrit/#/q/b4f00964>`_
  : Cherry-picking the preventive fix from the ITM side for the duplicate ITM tunnels issue.
* `9190add7 <https://git.opendaylight.org/gerrit/#/q/9190add7>`_
  : Remove explicit reference of odlparent3.1.3 for findbugs
* `956993e3 <https://git.opendaylight.org/gerrit/#/q/956993e3>`_
  : API to expose tunnelstate cache
* `36dd25e9 <https://git.opendaylight.org/gerrit/#/q/36dd25e9>`_
  `ENIUS-195 <https://jira.opendaylight.org/browse/ENIUS-195>`_
  : GENIUS-195: Transport Zone default-transport-zone has no subnets
* `bbc7055d <https://git.opendaylight.org/gerrit/#/q/bbc7055d>`_
  : Fix for ITM reporting wrong tunnel status
* `73622752 <https://git.opendaylight.org/gerrit/#/q/73622752>`_
  : Learn action enhancements
* `b92c6a10 <https://git.opendaylight.org/gerrit/#/q/b92c6a10>`_
  : Remove openflowplugin app-config-pusher dependency
* `4c91a4d2 <https://git.opendaylight.org/gerrit/#/q/4c91a4d2>`_
  : Upgrade support for ItmDirectTunnels
* `91983c89 <https://git.opendaylight.org/gerrit/#/q/91983c89>`_
  `ENIUS-108 <https://jira.opendaylight.org/browse/ENIUS-108>`_
  : Improve IFM/ITM DiagStatus
* `74f84e27 <https://git.opendaylight.org/gerrit/#/q/74f84e27>`_
  : Bug: Genius-167


groupbasedpolicy
----------------
* `ccd9b338 <https://git.opendaylight.org/gerrit/#/q/ccd9b338>`_
  : Bump to odlparent 3.1.4


honeycomb/vbd
-------------
* `1c7ee59 <https://git.opendaylight.org/gerrit/#/q/1c7ee59>`_
  : Bump to odlparent 3.1.4


infrautils
----------
* `8c0ddc2 <https://git.opendaylight.org/gerrit/#/q/8c0ddc2>`_
  : Bump to odlparent 3.1.4
* `dfe4787 <https://git.opendaylight.org/gerrit/#/q/dfe4787>`_
  : Exclude META-INF/services
* `0ba48af <https://git.opendaylight.org/gerrit/#/q/0ba48af>`_
  : Fix for showSvcStatus on IPv6 underlay
* `db5b121 <https://git.opendaylight.org/gerrit/#/q/db5b121>`_
  `INFRAUTILS-47 <https://jira.opendaylight.org/browse/INFRAUTILS-47>`_
  : fix actually badly broken /diagstatus/ HTTP return code on GET
* `6d558b9 <https://git.opendaylight.org/gerrit/#/q/6d558b9>`_
  `INFRAUTILS-48 <https://jira.opendaylight.org/browse/INFRAUTILS-48>`_
  : diagstatus JSON response now includes a systemReadyStateErrorCause
* `47a6b58 <https://git.opendaylight.org/gerrit/#/q/47a6b58>`_
  `INFRAUTILS-46 <https://jira.opendaylight.org/browse/INFRAUTILS-46>`_
  : change /diagstatus/ (web) HTTP return code 418 to 503
* `d9faaa2 <https://git.opendaylight.org/gerrit/#/q/d9faaa2>`_
  : Adding additional label support for meters.


integration/distribution
------------------------
* `09da56a <https://git.opendaylight.org/gerrit/#/q/09da56a>`_
  : Bump to odlparent 3.1.4 and yangtools 2.0.6.5


jsonrpc
-------
* `b47bbd3 <https://git.opendaylight.org/gerrit/#/q/b47bbd3>`_
  : Fix race condition in unit test
* `b1a7b04 <https://git.opendaylight.org/gerrit/#/q/b1a7b04>`_
  : Bump to odlparent 3.1.4
* `53b9cda <https://git.opendaylight.org/gerrit/#/q/53b9cda>`_
  : Fix race condition in unit test


l2switch
--------
* `149cafe <https://git.opendaylight.org/gerrit/#/q/149cafe>`_
  : Bump to odlparent 3.1.4


lispflowmapping
---------------
* `d36c4531 <https://git.opendaylight.org/gerrit/#/q/d36c4531>`_
  : Bump to odlparent 3.1.4


mdsal
-----
* `c34db6e95 <https://git.opendaylight.org/gerrit/#/q/c34db6e95>`_
  `MDSAL-398 <https://jira.opendaylight.org/browse/MDSAL-398>`_
  : Index getter methods by String
* `812a658cb <https://git.opendaylight.org/gerrit/#/q/812a658cb>`_
  : Do not box result twice
* `4257a752e <https://git.opendaylight.org/gerrit/#/q/4257a752e>`_
  `MDSAL-398 <https://jira.opendaylight.org/browse/MDSAL-398>`_
  : Index cached data by method name
* `55ffba466 <https://git.opendaylight.org/gerrit/#/q/55ffba466>`_
  `MDSAL-398 <https://jira.opendaylight.org/browse/MDSAL-398>`_
  : Switch on method names
* `01313c7cc <https://git.opendaylight.org/gerrit/#/q/01313c7cc>`_
  `MDSAL-398 <https://jira.opendaylight.org/browse/MDSAL-398>`_
  : Switch on parameterCount
* `fdd0b8913 <https://git.opendaylight.org/gerrit/#/q/fdd0b8913>`_
  `MDSAL-398 <https://jira.opendaylight.org/browse/MDSAL-398>`_
  : Use Method.getParameterCount()
* `00203e6df <https://git.opendaylight.org/gerrit/#/q/00203e6df>`_
  : Define getImplementedInterface name in BindingMapping
* `5aa984586 <https://git.opendaylight.org/gerrit/#/q/5aa984586>`_
  : Bump to odlparent 3.1.4 and yangtools 2.0.6.5
* `50d8a3a75 <https://git.opendaylight.org/gerrit/#/q/50d8a3a75>`_
  `MDSAL-388 <https://jira.opendaylight.org/browse/MDSAL-388>`_
  : Cache mismatched augmentations
* `56674bdd6 <https://git.opendaylight.org/gerrit/#/q/56674bdd6>`_
  : Fix AbstractTypeMember toString()
* `867a7d4e9 <https://git.opendaylight.org/gerrit/#/q/867a7d4e9>`_
  : Optimize AbstractBuilderTemplate key property sort
* `e749dfcb7 <https://git.opendaylight.org/gerrit/#/q/e749dfcb7>`_
  : Use ArrayList.sort() instead of Collections.sort()
* `c4ef887d0 <https://git.opendaylight.org/gerrit/#/q/c4ef887d0>`_
  `MDSAL-355 <https://jira.opendaylight.org/browse/MDSAL-355>`_
  : Make sure we compare key members via their property name
* `a804e1f6d <https://git.opendaylight.org/gerrit/#/q/a804e1f6d>`_
  : Bump yangtools to 2.0.6.3
* `e0db53cee <https://git.opendaylight.org/gerrit/#/q/e0db53cee>`_
  `MDSAL-362 <https://jira.opendaylight.org/browse/MDSAL-362>`_
  : Rework ClusterSingletonServiceGroupImpl locking
* `37543ee77 <https://git.opendaylight.org/gerrit/#/q/37543ee77>`_
  : Bump yangtools to 2.0.6.2
* `6c2df9a44 <https://git.opendaylight.org/gerrit/#/q/6c2df9a44>`_
  `MDSAL-362 <https://jira.opendaylight.org/browse/MDSAL-362>`_
  : Update internal structure to pass registrations
* `e93d82813 <https://git.opendaylight.org/gerrit/#/q/e93d82813>`_
  : Fixup javassist class use
* `817de8926 <https://git.opendaylight.org/gerrit/#/q/817de8926>`_
  `MDSAL-181 <https://jira.opendaylight.org/browse/MDSAL-181>`_
  : Activate BUG-6135 test


nemo
----
* `5a092ec <https://git.opendaylight.org/gerrit/#/q/5a092ec>`_
  : Bump to odlparent 3.1.4


netconf
-------
* `e7ee348a5 <https://git.opendaylight.org/gerrit/#/q/e7ee348a5>`_
  : Fix callhome start problem
* `20c7f89b2 <https://git.opendaylight.org/gerrit/#/q/20c7f89b2>`_
  `NETCONF-580 <https://jira.opendaylight.org/browse/NETCONF-580>`_
  : Use odl hello message capabilities
* `d88680860 <https://git.opendaylight.org/gerrit/#/q/d88680860>`_
  : Bump to odlparent 3.1.4 and yangtools 2.0.6.5
* `4a0eb5f23 <https://git.opendaylight.org/gerrit/#/q/4a0eb5f23>`_
  : Add subscribeToStream to JSONRestConfService
* `2cc3f42c2 <https://git.opendaylight.org/gerrit/#/q/2cc3f42c2>`_
  : Release the buffer only after we are done with it
* `d6f47196e <https://git.opendaylight.org/gerrit/#/q/d6f47196e>`_
  : Use a dedicated no-op listener class
* `890f3f5bd <https://git.opendaylight.org/gerrit/#/q/890f3f5bd>`_
  : Do not retain the list of RPCs
* `a4ac79f5a <https://git.opendaylight.org/gerrit/#/q/a4ac79f5a>`_
  : Cleanup SimulatedCreateSubscription
* `8ee21e46a <https://git.opendaylight.org/gerrit/#/q/8ee21e46a>`_
  : Honor EXI flag in testtool
* `f424abb35 <https://git.opendaylight.org/gerrit/#/q/f424abb35>`_
  : Allow SshProxyServer to share AsynchronousChannelGroup
* `015197b06 <https://git.opendaylight.org/gerrit/#/q/015197b06>`_
  : Fix config-only thinko
* `36f358dce <https://git.opendaylight.org/gerrit/#/q/36f358dce>`_
  : Bump yangtools to 2.0.6.3
* `bc8e10be5 <https://git.opendaylight.org/gerrit/#/q/bc8e10be5>`_
  `NETCONF-563 <https://jira.opendaylight.org/browse/NETCONF-563>`_
  : Do not instantiate NormalizedNodes for filter
* `b8c27f96a <https://git.opendaylight.org/gerrit/#/q/b8c27f96a>`_
  : Bump yangtools to 2.0.6.2
* `2e682cc51 <https://git.opendaylight.org/gerrit/#/q/2e682cc51>`_
  : Bump exificient to 1.0.1
* `d92cb26bb <https://git.opendaylight.org/gerrit/#/q/d92cb26bb>`_
  `NETCONF-241 <https://jira.opendaylight.org/browse/NETCONF-241>`_
  : NETCONF-241: Switch to using Exificient


netvirt
-------
* `1c7ed35ee <https://git.opendaylight.org/gerrit/#/q/1c7ed35ee>`_
  : ECMP - MIP/learnt IPs pointing to groups
* `5f6b64ba3 <https://git.opendaylight.org/gerrit/#/q/5f6b64ba3>`_
  `NETVIRT-1522 <https://jira.opendaylight.org/browse/NETVIRT-1522>`_
  : NETVIRT-1522: Allowed address pair not updated
* `32d372136 <https://git.opendaylight.org/gerrit/#/q/32d372136>`_
  `NETVIRT-1410 <https://jira.opendaylight.org/browse/NETVIRT-1410>`_
  : NETVIRT-1410 Vrf advertised after routes to DC-GW
* `091ce630d <https://git.opendaylight.org/gerrit/#/q/091ce630d>`_
  `NETVIRT-1501 <https://jira.opendaylight.org/browse/NETVIRT-1501>`_
  : NETVIRT-1501: ACL: Used Batched transactions
* `8daf708b8 <https://git.opendaylight.org/gerrit/#/q/8daf708b8>`_
  : Bump to odlparent 3.1.4
* `47c52d064 <https://git.opendaylight.org/gerrit/#/q/47c52d064>`_
  `NETVIRT-1356 <https://jira.opendaylight.org/browse/NETVIRT-1356>`_
  : Traffic not flowing after delete and add TEP
* `8541d9103 <https://git.opendaylight.org/gerrit/#/q/8541d9103>`_
  `NETVIRT-1416 <https://jira.opendaylight.org/browse/NETVIRT-1416>`_
  : Fix Single RD update in BGPVPN Instance
* `8bcbd998f <https://git.opendaylight.org/gerrit/#/q/8bcbd998f>`_
  `NETVIRT-1469 <https://jira.opendaylight.org/browse/NETVIRT-1469>`_
  : Stale flows in ACL tables 216/246
* `7772b3f0d <https://git.opendaylight.org/gerrit/#/q/7772b3f0d>`_
  `NETVIRT-1458 <https://jira.opendaylight.org/browse/NETVIRT-1458>`_
  : Acl cache not updated
* `b3718fb1e <https://git.opendaylight.org/gerrit/#/q/b3718fb1e>`_
  : Use multiple threads during flow programming
* `4f1e944a9 <https://git.opendaylight.org/gerrit/#/q/4f1e944a9>`_
  `NETVIRT-1440 <https://jira.opendaylight.org/browse/NETVIRT-1440>`_
  : VPNv6 external network support for multiple router
* `6301fffb8 <https://git.opendaylight.org/gerrit/#/q/6301fffb8>`_
  : FIP PNF access from another node
* `d20a81d48 <https://git.opendaylight.org/gerrit/#/q/d20a81d48>`_
  : Don't check net type for empty adj list
* `e08482376 <https://git.opendaylight.org/gerrit/#/q/e08482376>`_
  : Fix for invisible IP ping failures
* `340998c28 <https://git.opendaylight.org/gerrit/#/q/340998c28>`_
  : Read dpn ids from cache instead of reading DS
* `57e89e55d <https://git.opendaylight.org/gerrit/#/q/57e89e55d>`_
  `NETVIRT-1416 <https://jira.opendaylight.org/browse/NETVIRT-1416>`_
  : Fix primaryRd issue with VpnInstance Update
* `cd79bf11d <https://git.opendaylight.org/gerrit/#/q/cd79bf11d>`_
  : Ensure External Connectivity for NAPT Switch
* `c0c9737b2 <https://git.opendaylight.org/gerrit/#/q/c0c9737b2>`_
  `NETVIRT-1416 <https://jira.opendaylight.org/browse/NETVIRT-1416>`_
  : BGP-VPN Instance update with additional RD Support
* `bed6bfdce <https://git.opendaylight.org/gerrit/#/q/bed6bfdce>`_
  `NETVIRT-1436 <https://jira.opendaylight.org/browse/NETVIRT-1436>`_
  : Use System.out for printing to console
* `6b0a7f3b1 <https://git.opendaylight.org/gerrit/#/q/6b0a7f3b1>`_
  `NETVIRT-1171 <https://jira.opendaylight.org/browse/NETVIRT-1171>`_
  : Avoid Non-VPN Interface Adj IP Learning
* `535475251 <https://git.opendaylight.org/gerrit/#/q/535475251>`_
  : Fixes for few NullPointerException
* `66c4013ed <https://git.opendaylight.org/gerrit/#/q/66c4013ed>`_
  `NETVIRT-1440 <https://jira.opendaylight.org/browse/NETVIRT-1440>`_
  : Extend IPv6 internet connectivity to N routers
* `4ee845161 <https://git.opendaylight.org/gerrit/#/q/4ee845161>`_
  `NETVIRT-1418 <https://jira.opendaylight.org/browse/NETVIRT-1418>`_
  : Handle BGPVPN Instance Update/Swap Case Properly
* `4b26e9d54 <https://git.opendaylight.org/gerrit/#/q/4b26e9d54>`_
  `NETVIRT-1409 <https://jira.opendaylight.org/browse/NETVIRT-1409>`_
  : OptimisticLockFailedException fix for IPv6 Serv
* `517b2e4f1 <https://git.opendaylight.org/gerrit/#/q/517b2e4f1>`_
  `NETVIRT-1406 <https://jira.opendaylight.org/browse/NETVIRT-1406>`_
  : neutron-vpn-portip-port-data d.s not cleared
* `3399656b6 <https://git.opendaylight.org/gerrit/#/q/3399656b6>`_
  `NETVIRT-1417 <https://jira.opendaylight.org/browse/NETVIRT-1417>`_
  : Internet BGPVPN traffic is not working for IPv6
* `af01f1e1c <https://git.opendaylight.org/gerrit/#/q/af01f1e1c>`_
  `NETVIRT-1417 <https://jira.opendaylight.org/browse/NETVIRT-1417>`_
  : IPv6 FIB enteries not appearing if ExtNwt enabled
* `8736c7b8f <https://git.opendaylight.org/gerrit/#/q/8736c7b8f>`_
  `NETVIRT-1410 <https://jira.opendaylight.org/browse/NETVIRT-1410>`_
  : VPNInstance IP Addr Family update is not working
* `15609bfb2 <https://git.opendaylight.org/gerrit/#/q/15609bfb2>`_
  `NETVIRT-1402 <https://jira.opendaylight.org/browse/NETVIRT-1402>`_
  : FIP support for Octavia VIPs
* `d4dd5ada2 <https://git.opendaylight.org/gerrit/#/q/d4dd5ada2>`_
  : Local Bucket Entry deleted
* `ae29b32c0 <https://git.opendaylight.org/gerrit/#/q/ae29b32c0>`_
  : Fix mvn findBugs errors
* `42e63ac45 <https://git.opendaylight.org/gerrit/#/q/42e63ac45>`_
  : ECMP Select group created for even 1 nexthop
* `26e261bf1 <https://git.opendaylight.org/gerrit/#/q/26e261bf1>`_
  : Support for local and remote ECMP groups
* `fcf34d9a2 <https://git.opendaylight.org/gerrit/#/q/fcf34d9a2>`_
  `NETVIRT-1414 <https://jira.opendaylight.org/browse/NETVIRT-1414>`_
  : NETVIRT-1414: Multicast traffic is dropped in ACL
* `fda36e4be <https://git.opendaylight.org/gerrit/#/q/fda36e4be>`_
  : Minor change to fetch tunnel state for ECMP UCs
* `d062809f1 <https://git.opendaylight.org/gerrit/#/q/d062809f1>`_
  `CONTROLLER-1845 <https://jira.opendaylight.org/browse/CONTROLLER-1845>`_
  : rm runtime logging change in QosAlertGenerator
* `444cd74de <https://git.opendaylight.org/gerrit/#/q/444cd74de>`_
  : Add ARP Check Table in doc
* `275374ca8 <https://git.opendaylight.org/gerrit/#/q/275374ca8>`_
  : Troubleshoot netvirt datapath
* `3bbf70381 <https://git.opendaylight.org/gerrit/#/q/3bbf70381>`_
  `NETVIRT-1401 <https://jira.opendaylight.org/browse/NETVIRT-1401>`_
  : Fix issue in natservice with IPv6 VxLAN tunnels
* `f7a341163 <https://git.opendaylight.org/gerrit/#/q/f7a341163>`_
  : Use managed transactions in vpnmanager-impl
* `611b4001d <https://git.opendaylight.org/gerrit/#/q/611b4001d>`_
  : Handle exceptions in BgpRouteVrfEntryHandler
* `36dc3427b <https://git.opendaylight.org/gerrit/#/q/36dc3427b>`_
  : ECMP code changes for handling itm-direct feature


neutron
-------
* `f6bc7800 <https://git.opendaylight.org/gerrit/#/q/f6bc7800>`_
  : Fix NB API
* `2fc18dff <https://git.opendaylight.org/gerrit/#/q/2fc18dff>`_
  : factor out retry logic from PortStatusUpdateInitializer into new utility
* `d2985340 <https://git.opendaylight.org/gerrit/#/q/d2985340>`_
  `NETVIRT-1460 <https://jira.opendaylight.org/browse/NETVIRT-1460>`_
  : Websocket pre-registration for port status update
* `cc2a91da <https://git.opendaylight.org/gerrit/#/q/cc2a91da>`_
  : Bump to odlparent 3.1.4
* `b03fc517 <https://git.opendaylight.org/gerrit/#/q/b03fc517>`_
  `NEUTRON-159 <https://jira.opendaylight.org/browse/NEUTRON-159>`_
  : make tenantID in NeutronObject a private field and use through getter()
* `e73537e6 <https://git.opendaylight.org/gerrit/#/q/e73537e6>`_
  `NEUTRON-159 <https://jira.opendaylight.org/browse/NEUTRON-159>`_
  : use an EmptyStringAsNullAdapter in NeutronObject re. null tenant_id
* `4e8a6200 <https://git.opendaylight.org/gerrit/#/q/4e8a6200>`_
  `NEUTRON-159 <https://jira.opendaylight.org/browse/NEUTRON-159>`_
  : fix JAXB usage/design bug in NeutronObject re. null tenant_id


of-config
---------
* `e030c88 <https://git.opendaylight.org/gerrit/#/q/e030c88>`_
  : Bump to odlparent 3.1.4


openflowplugin
--------------
* `c2b51b43e <https://git.opendaylight.org/gerrit/#/q/c2b51b43e>`_
  `OPNFLWPLUG-1047 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1047>`_
  : Use QueuedNotificationManager to dispatch tasks
* `86499d5eb <https://git.opendaylight.org/gerrit/#/q/86499d5eb>`_
  `OPNFLWPLUG-1048 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1048>`_
  : fix ArbitratorReconciliationManagerImpl endReconciliation() remove
* `7c305e954 <https://git.opendaylight.org/gerrit/#/q/7c305e954>`_
  `OPNFLWPLUG-1047 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1047>`_
  : Fix raw types in NodeConfiguratorImpl
* `ec9ea16bf <https://git.opendaylight.org/gerrit/#/q/ec9ea16bf>`_
  `OPNFLWPLUG-1043 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1043>`_
  : Close ReadTransactions from ForwardingRulesManager
* `562ef309b <https://git.opendaylight.org/gerrit/#/q/562ef309b>`_
  : Close ReadTransactions
* `939107cf0 <https://git.opendaylight.org/gerrit/#/q/939107cf0>`_
  : Bump to odlparent 3.1.4
* `c9280162e <https://git.opendaylight.org/gerrit/#/q/c9280162e>`_
  `OPNFLWPLUG-1034 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1034>`_
  : OPNFLWPLUG-1034
* `2144d3498 <https://git.opendaylight.org/gerrit/#/q/2144d3498>`_
  `OPNFLWPLUG-1033 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1033>`_
  : OPNFLWPLUG-1033: Fix for StackOverflowError while stopping forwardingrules-manager bundle
* `802cbb4d2 <https://git.opendaylight.org/gerrit/#/q/802cbb4d2>`_
  : Refactoring the code for updating the reconciliation state in the datastore during all scenarios.
* `2dd2a6bb8 <https://git.opendaylight.org/gerrit/#/q/2dd2a6bb8>`_
  `OPNFLWPLUG-1022 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1022>`_
  : Exception while topology-manager writes flow:1 root node to operational datastore. In the clustered environment when all the 3 node comes up, all the three instances of topology-manager tries to write flow:1 node to the operational datastore that results in the OptimisticsLockFailedException. This patch fixes the issue by making Topology-Manager initialization cluster aware, so only selected instance will write the root node.
* `db2bac8db <https://git.opendaylight.org/gerrit/#/q/db2bac8db>`_
  : Fix Stack overflow errors in OFP while killing karaf
* `ee9a7c93e <https://git.opendaylight.org/gerrit/#/q/ee9a7c93e>`_
  `OPNFLWPLUG-1005 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1005>`_
  : OPNFLWPLUG-1005 : Implementation of arbitrator reconciliation(frm changes)
* `719c28c07 <https://git.opendaylight.org/gerrit/#/q/719c28c07>`_
  `OPNFLWPLUG-1005 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1005>`_
  : OPNFLWPLUG-1005 : Implementation of arbitrator reconciliation
* `78f91ba8c <https://git.opendaylight.org/gerrit/#/q/78f91ba8c>`_
  `OPNFLWPLUG-1028 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1028>`_
  : JIRA: OPNFLWPLUG-1028 Fix for Table Miss Entry failed to program in 3 node netvirt CSIT issue
* `98dcee53d <https://git.opendaylight.org/gerrit/#/q/98dcee53d>`_
  `OPNFLWPLUG-985 <https://jira.opendaylight.org/browse/OPNFLWPLUG-985>`_
  : OPNFLWPLUG-985: Service recovery for openfplowplugin
* `25738176e <https://git.opendaylight.org/gerrit/#/q/25738176e>`_
  `OPNFLWPLUG-1004 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1004>`_
  : OPNFLWPLUG-1004 : Spec  arbitrator reconciliation
* `dec669ab7 <https://git.opendaylight.org/gerrit/#/q/dec669ab7>`_
  `OPNFLWPLUG-991 <https://jira.opendaylight.org/browse/OPNFLWPLUG-991>`_
  : OPNFLWPLUG-991 : FRM: Flow Group Dependency support
* `aaaca8c46 <https://git.opendaylight.org/gerrit/#/q/aaaca8c46>`_
  `OPNFLWPLUG-999 <https://jira.opendaylight.org/browse/OPNFLWPLUG-999>`_
  : OPNFLWPLUG-999 Spec - Reconciliation CLI and alarm for openflow nodes
* `67a4b2bf5 <https://git.opendaylight.org/gerrit/#/q/67a4b2bf5>`_
  : Version bump device ownership service
* `6110982dd <https://git.opendaylight.org/gerrit/#/q/6110982dd>`_
  : Enhancement activity in admin reconciliation for handling consecutive triggering of same node
* `e04ad1da6 <https://git.opendaylight.org/gerrit/#/q/e04ad1da6>`_
  : Reconciliation Failure Count is not increased in failure scenarios.
* `32c52b70f <https://git.opendaylight.org/gerrit/#/q/32c52b70f>`_
  `OPNFLWPLUG-1007 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1007>`_
  : OPNFLWPLUG-1007 : Future (eventually) failed: addFlow -and- transmitPacket


ovsdb
-----
* `2d06d26ed <https://git.opendaylight.org/gerrit/#/q/2d06d26ed>`_
  `OVSDB-472 <https://jira.opendaylight.org/browse/OVSDB-472>`_
  : Fixes overwrite when adding termination point
* `4aee59a2f <https://git.opendaylight.org/gerrit/#/q/4aee59a2f>`_
  : Bump to odlparent 3.1.4
* `247331a51 <https://git.opendaylight.org/gerrit/#/q/247331a51>`_
  `OVSDB-444 <https://jira.opendaylight.org/browse/OVSDB-444>`_
  : Close old OVSDB connection when ping fails
* `265803fbe <https://git.opendaylight.org/gerrit/#/q/265803fbe>`_
  `OVSDB-469 <https://jira.opendaylight.org/browse/OVSDB-469>`_
  : avoid any extra memory allocation in Version.fromString()
* `587f8e453 <https://git.opendaylight.org/gerrit/#/q/587f8e453>`_
  `OVSDB-466 <https://jira.opendaylight.org/browse/OVSDB-466>`_
  : Incorrect IPv6 address for controller


p4plugin
--------
* `7def1cf <https://git.opendaylight.org/gerrit/#/q/7def1cf>`_
  : Bump to odlparent 3.1.4


packetcable
-----------
* `ae83690 <https://git.opendaylight.org/gerrit/#/q/ae83690>`_
  : Bump to odlparent 3.1.4


serviceutils
------------
* `c2ee03c <https://git.opendaylight.org/gerrit/#/q/c2ee03c>`_
  : Bump to odlparent 3.1.4


sfc
---
* `b2221a4e <https://git.opendaylight.org/gerrit/#/q/b2221a4e>`_
  : Bump to odlparent 3.1.4
* `ac114551 <https://git.opendaylight.org/gerrit/#/q/ac114551>`_
  : Replace bower with npm


snmp
----
* `ed6abbb <https://git.opendaylight.org/gerrit/#/q/ed6abbb>`_
  : Bump to odlparent 3.1.4


snmp4sdn
--------
* `3b44b2c <https://git.opendaylight.org/gerrit/#/q/3b44b2c>`_
  : Bump to odlparent 3.1.4


sxp
---
* `6e84f0a <https://git.opendaylight.org/gerrit/#/q/6e84f0a>`_
  `SXP-155 <https://jira.opendaylight.org/browse/SXP-155>`_
  : Fix SXP release validation issues
* `84ffa14 <https://git.opendaylight.org/gerrit/#/q/84ffa14>`_
  : Bump odlparent to 3.1.4 and yangtools to 2.0.6.5
* `86fd46a <https://git.opendaylight.org/gerrit/#/q/86fd46a>`_
  `SXP-146 <https://jira.opendaylight.org/browse/SXP-146>`_
  : DatastoreAccess on one cluster node (leader) is closed
* `2483a1a <https://git.opendaylight.org/gerrit/#/q/2483a1a>`_
  : Revert "Move NODES map to own class"
* `5ec69d3 <https://git.opendaylight.org/gerrit/#/q/5ec69d3>`_
  : Remove blank lines
* `a1d98b9 <https://git.opendaylight.org/gerrit/#/q/a1d98b9>`_
  : Move NODES map to own class
* `0859230 <https://git.opendaylight.org/gerrit/#/q/0859230>`_
  : Organize imports
* `f67ee0f <https://git.opendaylight.org/gerrit/#/q/f67ee0f>`_
  `SXP-145 <https://jira.opendaylight.org/browse/SXP-145>`_
  : Register RPC services on cluster owner only
* `18e69ab <https://git.opendaylight.org/gerrit/#/q/18e69ab>`_
  : Use jackson transitive dependency
* `3368bc8 <https://git.opendaylight.org/gerrit/#/q/3368bc8>`_
  : Bump yangtools to 2.0.6.3


tsdr
----
* `cd398fe <https://git.opendaylight.org/gerrit/#/q/cd398fe>`_
  : Bump to odlparent 3.1.4


usc
---
* `fe91a25 <https://git.opendaylight.org/gerrit/#/q/fe91a25>`_
  : Bump to odlparent 3.1.4

