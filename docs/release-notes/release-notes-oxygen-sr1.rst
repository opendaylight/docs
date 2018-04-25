Oxygen-SR1 Release Notes
========================

This page details changes and bug fixes between the Oxygen Release
and the Oxygen Stability Release 1 (Oxygen-SR1) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `8121054 <https://git.opendaylight.org/gerrit/#/q/8121054>`_
  `RELENG-85 <https://jira.opendaylight.org/browse/RELENG-85>`_
  : Ensure Jersey is initialised before AAA-Shiro
* `e1c2e19 <https://git.opendaylight.org/gerrit/#/q/e1c2e19>`_
  `AAA-166 <https://jira.opendaylight.org/browse/AAA-166>`_
  : AAA-166 fix
* `eed0d65 <https://git.opendaylight.org/gerrit/#/q/eed0d65>`_
  : Add Karaf build profile
* `2730476 <https://git.opendaylight.org/gerrit/#/q/2730476>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


alto
----
* `2cfbee1 <https://git.opendaylight.org/gerrit/#/q/2cfbee1>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


bgpcep
------
* `ceee868 <https://git.opendaylight.org/gerrit/#/q/ceee868>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `38eed02 <https://git.opendaylight.org/gerrit/#/q/38eed02>`_
  : Remove obsolete Maven Site configuration
* `9e017e8 <https://git.opendaylight.org/gerrit/#/q/9e017e8>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `02548b0 <https://git.opendaylight.org/gerrit/#/q/02548b0>`_
  : Fix findbug NP_NONNULL_PARAM_VIOLATION complains
* `f6f57b6 <https://git.opendaylight.org/gerrit/#/q/f6f57b6>`_
  `PCEP-786 <https://jira.opendaylight.org/browse/PCEP-786>`_
  : Use dedicated executor for BGPCEP Stats
* `ec6ce4b <https://git.opendaylight.org/gerrit/#/q/ec6ce4b>`_
  `PCEP-740 <https://jira.opendaylight.org/browse/PCEP-740>`_
  : BGPCEP-740: Fix logic for MED comparison in BGP best path selection
* `cee2eb4 <https://git.opendaylight.org/gerrit/#/q/cee2eb4>`_
  : Add missing copyrights
* `65cb009 <https://git.opendaylight.org/gerrit/#/q/65cb009>`_
  `PCEP-770 <https://jira.opendaylight.org/browse/PCEP-770>`_
  : BGPCEP-770: Lock file before processing
* `19238f0 <https://git.opendaylight.org/gerrit/#/q/19238f0>`_
  `PCEP-574 <https://jira.opendaylight.org/browse/PCEP-574>`_
  : BGPCEP-574: Deprecate simple-routing-policy
* `12d8bcd <https://git.opendaylight.org/gerrit/#/q/12d8bcd>`_
  : Fix model compliance
* `1b4bc14 <https://git.opendaylight.org/gerrit/#/q/1b4bc14>`_
  `PCEP-764 <https://jira.opendaylight.org/browse/PCEP-764>`_
  : BGPCEP-764: Use full Ipv6 form under StrictBGPPeerRegistry


bier
----
* `457d255 <https://git.opendaylight.org/gerrit/#/q/457d255>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `a6db924 <https://git.opendaylight.org/gerrit/#/q/a6db924>`_
  : Do not repackage controller's model-topology
* `5649e40 <https://git.opendaylight.org/gerrit/#/q/5649e40>`_
  : Minimize upstream dependencies
* `98166af <https://git.opendaylight.org/gerrit/#/q/98166af>`_
  : Pull topology model from controller feature
* `5972935 <https://git.opendaylight.org/gerrit/#/q/5972935>`_
  : Do not use mina-core for ConcurrentHashSet
* `2eae20b <https://git.opendaylight.org/gerrit/#/q/2eae20b>`_
  : Clean up bier features


controller
----------
* `c98f76a <https://git.opendaylight.org/gerrit/#/q/c98f76a>`_
  `CONTROLLER-1825 <https://jira.opendaylight.org/browse/CONTROLLER-1825>`_
  : Release permits as transactions are replayed
* `dc295d9 <https://git.opendaylight.org/gerrit/#/q/dc295d9>`_
  `CONTROLLER-1814 <https://jira.opendaylight.org/browse/CONTROLLER-1814>`_
  : Fix TransactionContextWrapper limiter accounting
* `435a1a7 <https://git.opendaylight.org/gerrit/#/q/435a1a7>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `473b6b0 <https://git.opendaylight.org/gerrit/#/q/473b6b0>`_
  : Finish SimpleReplicatedLogEntry migration
* `6744682 <https://git.opendaylight.org/gerrit/#/q/6744682>`_
  : Move OperationLimiter.acquire() warnings to callers
* `19d1951 <https://git.opendaylight.org/gerrit/#/q/19d1951>`_
  : Fix odl-config-persister
* `17dbdac <https://git.opendaylight.org/gerrit/#/q/17dbdac>`_
  : Fix duplicate benchmark packaging
* `e29215e <https://git.opendaylight.org/gerrit/#/q/e29215e>`_
  : Change transformation from DOMRpcResult to RpcResult
* `ea95222 <https://git.opendaylight.org/gerrit/#/q/ea95222>`_
  : odl-controller-model-topology should not pull in yangtools
* `cf6947f <https://git.opendaylight.org/gerrit/#/q/cf6947f>`_
  `CONTROLLER-1814 <https://jira.opendaylight.org/browse/CONTROLLER-1814>`_
  : Fix RemoteTransactionContext limiter accounting


coe
---
* `5a2c59e <https://git.opendaylight.org/gerrit/#/q/5a2c59e>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `353755d <https://git.opendaylight.org/gerrit/#/q/353755d>`_
  : Remove obsolete Maven Site configuration
* `d06917a <https://git.opendaylight.org/gerrit/#/q/d06917a>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


daexim
------
* `083c08d <https://git.opendaylight.org/gerrit/#/q/083c08d>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `13a82fc <https://git.opendaylight.org/gerrit/#/q/13a82fc>`_
  `DAEXIM-6 <https://jira.opendaylight.org/browse/DAEXIM-6>`_
  : DAEXIM-6: Prevent overwrite of initial daexim status written by different cluster nodes


dlux
----
* `02eda68 <https://git.opendaylight.org/gerrit/#/q/02eda68>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


dluxapps
--------
* `019b40d <https://git.opendaylight.org/gerrit/#/q/019b40d>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


genius
------
* `5d31240 <https://git.opendaylight.org/gerrit/#/q/5d31240>`_
  `ENIUS-123 <https://jira.opendaylight.org/browse/ENIUS-123>`_
  : GENIUS-123: Efficient Handling of DPN disconnect
* `444e732 <https://git.opendaylight.org/gerrit/#/q/444e732>`_
  `ENIUS-124 <https://jira.opendaylight.org/browse/ENIUS-124>`_
  : GENIUS-124: CSIT Failure as BFD status is not reflected accurately
* `754e983 <https://git.opendaylight.org/gerrit/#/q/754e983>`_
  `NETVIRT-1198 <https://jira.opendaylight.org/browse/NETVIRT-1198>`_
  : NETVIRT-1198: Acl Stats does not support Anti Spoof drop stats.
* `c9cf1fd <https://git.opendaylight.org/gerrit/#/q/c9cf1fd>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `cd6acf6 <https://git.opendaylight.org/gerrit/#/q/cd6acf6>`_
  : Remove obsolete Maven Site configuration
* `aefd2ee <https://git.opendaylight.org/gerrit/#/q/aefd2ee>`_
  : Fix FindBugs issues with odlparent 3.1.0
* `a420d8f <https://git.opendaylight.org/gerrit/#/q/a420d8f>`_
  : AlivenessMonitorUtils: wrap top-level in transactions
* `d11e81d <https://git.opendaylight.org/gerrit/#/q/d11e81d>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `a699df4 <https://git.opendaylight.org/gerrit/#/q/a699df4>`_
  : Utils for itm performance enhancements depends on the patch : https://git.opendaylight.org/gerrit/#/c/69941/ which implements the caches needed for these utils.
* `4d539a2 <https://git.opendaylight.org/gerrit/#/q/4d539a2>`_
  : Caches for newly introduced immutables in ITM needs to get merged after data obj cache is extended for custom key: https://git.opendaylight.org/gerrit/#/c/69964/
* `e2e711f <https://git.opendaylight.org/gerrit/#/q/e2e711f>`_
  : Extend DataObjectCache to allow for custom key
* `691776c <https://git.opendaylight.org/gerrit/#/q/691776c>`_
  : Removed unused ACL constants
* `e2c2e1c <https://git.opendaylight.org/gerrit/#/q/e2c2e1c>`_
  : ifm changes for itm performance enhancements
* `f1c09cb <https://git.opendaylight.org/gerrit/#/q/f1c09cb>`_
  : increase max time out in AbstractTestableListenerTest from 50ms to 500ms
* `1b8f4a0 <https://git.opendaylight.org/gerrit/#/q/1b8f4a0>`_
  : Fix ActionNxConntrack.NxCtMark problem with xtendbeans (with a test)
* `45ae159 <https://git.opendaylight.org/gerrit/#/q/45ae159>`_
  : Add InstanceIdDataObjectCache
* `db532af <https://git.opendaylight.org/gerrit/#/q/db532af>`_
  : Service Recovery Manager for ITM
* `3781da1 <https://git.opendaylight.org/gerrit/#/q/3781da1>`_
  : Revert "Add InstanceIdDataObjectCache"
* `15c2321 <https://git.opendaylight.org/gerrit/#/q/15c2321>`_
  : Add InstanceIdDataObjectCache
* `e3c5620 <https://git.opendaylight.org/gerrit/#/q/e3c5620>`_
  : Make recoverableListenerMap maintain a queue of recoverableListeners.
* `addea9c <https://git.opendaylight.org/gerrit/#/q/addea9c>`_
  : Service-Recovery: support for elan-interface entity type instead of elan-instance entity type
* `89ca12b <https://git.opendaylight.org/gerrit/#/q/89ca12b>`_
  : Issues with SRM service recovery
* `3d58705 <https://git.opendaylight.org/gerrit/#/q/3d58705>`_
  : SRM refactoring
* `8c801c6 <https://git.opendaylight.org/gerrit/#/q/8c801c6>`_
  : Service-Recovery: Support needed for ACL feature introduced in SRM framework.
* `3264106 <https://git.opendaylight.org/gerrit/#/q/3264106>`_
  : Immutables for performance enhancements
* `88a89d8 <https://git.opendaylight.org/gerrit/#/q/88a89d8>`_
  : yang changes for scaling, to support corresponding netvirt changes
* `f72119e <https://git.opendaylight.org/gerrit/#/q/f72119e>`_
  : Genius Specific Changes to support QoS with SRM


groupbasedpolicy
----------------
* `08b759b <https://git.opendaylight.org/gerrit/#/q/08b759b>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `d1af870 <https://git.opendaylight.org/gerrit/#/q/d1af870>`_
  : Fix features-groupbasedpolicy
* `9a8c51c <https://git.opendaylight.org/gerrit/#/q/9a8c51c>`_
  : Fix Models


honeycomb/vbd
-------------
* `7f9e2b1 <https://git.opendaylight.org/gerrit/#/q/7f9e2b1>`_
  : Fix the use of same prefixes in multiple models
* `cea662d <https://git.opendaylight.org/gerrit/#/q/cea662d>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `56537a9 <https://git.opendaylight.org/gerrit/#/q/56537a9>`_
  : Fix 802dot1 identifiers


infrautils
----------
* `0b14165 <https://git.opendaylight.org/gerrit/#/q/0b14165>`_
  : diagstatus not able to retrieve status in certain clustered deployments.
* `b5b2ac8 <https://git.opendaylight.org/gerrit/#/q/b5b2ac8>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `5dd113a <https://git.opendaylight.org/gerrit/#/q/5dd113a>`_
  : Remove obsolete Maven Site configuration
* `3be3793 <https://git.opendaylight.org/gerrit/#/q/3be3793>`_
  : Enhancing logs for invokeRemoteJMXOperation
* `f945f43 <https://git.opendaylight.org/gerrit/#/q/f945f43>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `0689968 <https://git.opendaylight.org/gerrit/#/q/0689968>`_
  : Fix a couple of thinkos in metrics Configuration
* `f6fa9d5 <https://git.opendaylight.org/gerrit/#/q/f6fa9d5>`_
  : make new ThreadsWatcher log intervals configurable (and fix volatile)


integration/distribution
------------------------
* `c1c8e4c <https://git.opendaylight.org/gerrit/#/q/c1c8e4c>`_
  : Re-enable odl-yanglib
* `2b68b5b <https://git.opendaylight.org/gerrit/#/q/2b68b5b>`_
  : Clean projects did not make oxygen
* `95e4f30 <https://git.opendaylight.org/gerrit/#/q/95e4f30>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


jsonrpc
-------
* `fd9f855 <https://git.opendaylight.org/gerrit/#/q/fd9f855>`_
  : Ignore FB warning
* `005424a <https://git.opendaylight.org/gerrit/#/q/005424a>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


l2switch
--------
* `b2bc5e8 <https://git.opendaylight.org/gerrit/#/q/b2bc5e8>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


lispflowmapping
---------------
* `064eb72 <https://git.opendaylight.org/gerrit/#/q/064eb72>`_
  : Remove obsolete Maven Site configuration
* `6c7251b <https://git.opendaylight.org/gerrit/#/q/6c7251b>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


mdsal
-----
* `900efb4 <https://git.opendaylight.org/gerrit/#/q/900efb4>`_
  `MDSAL-335 <https://jira.opendaylight.org/browse/MDSAL-335>`_
  : Fix derived types missing pattern restrictions
* `53baa29 <https://git.opendaylight.org/gerrit/#/q/53baa29>`_
  : artifacts mdsal-binding-test-utils <scope>test
* `d1f45a8 <https://git.opendaylight.org/gerrit/#/q/d1f45a8>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `57af312 <https://git.opendaylight.org/gerrit/#/q/57af312>`_
  : Fix invalid yang models
* `93c1be4 <https://git.opendaylight.org/gerrit/#/q/93c1be4>`_
  : Upgrade ietf-inet-types dependency to 2013-07-15
* `db777a0 <https://git.opendaylight.org/gerrit/#/q/db777a0>`_
  : make sure to eliminate any reference to builders
* `5574d44 <https://git.opendaylight.org/gerrit/#/q/5574d44>`_
  `MDSAL-315 <https://jira.opendaylight.org/browse/MDSAL-315>`_
  : Refactor GeneratedTypeBuilderImpl
* `641c8e3 <https://git.opendaylight.org/gerrit/#/q/641c8e3>`_
  `MDSAL-315 <https://jira.opendaylight.org/browse/MDSAL-315>`_
  : Refactor GeneratedTOBuilderImpl
* `3e9224b <https://git.opendaylight.org/gerrit/#/q/3e9224b>`_
  `MDSAL-312 <https://jira.opendaylight.org/browse/MDSAL-312>`_
  : Do not generate pattern constraints in runtime types
* `f4e602e <https://git.opendaylight.org/gerrit/#/q/f4e602e>`_
  `MDSAL-312 <https://jira.opendaylight.org/browse/MDSAL-312>`_
  : Split up TypeProviderImpl
* `ad57cd2 <https://git.opendaylight.org/gerrit/#/q/ad57cd2>`_
  `MDSAL-312 <https://jira.opendaylight.org/browse/MDSAL-312>`_
  : Split out BindingRuntimeGenerator
* `1cc5abc <https://git.opendaylight.org/gerrit/#/q/1cc5abc>`_
  : Fix deprecation warnings in RangeGenerators
* `4039619 <https://git.opendaylight.org/gerrit/#/q/4039619>`_
  `MDSAL-314 <https://jira.opendaylight.org/browse/MDSAL-314>`_
  : Invert enforcement patterns when needed
* `0ca7e3e <https://git.opendaylight.org/gerrit/#/q/0ca7e3e>`_
  : Fix a patterns reference
* `8959664 <https://git.opendaylight.org/gerrit/#/q/8959664>`_
  : Silence code generator a bit
* `632a173 <https://git.opendaylight.org/gerrit/#/q/632a173>`_
  : Squash regular expression constants
* `83305a6 <https://git.opendaylight.org/gerrit/#/q/83305a6>`_
  : Remove ietf-inet-types dependency from ietf-interfaces
* `55e89a5 <https://git.opendaylight.org/gerrit/#/q/55e89a5>`_
  : Fix YangModuleInfoTemplate
* `672ca7d <https://git.opendaylight.org/gerrit/#/q/672ca7d>`_
  `MDSAL-309 <https://jira.opendaylight.org/browse/MDSAL-309>`_
  : Add alternative enum assigned name mapping
* `f410955 <https://git.opendaylight.org/gerrit/#/q/f410955>`_
  : Change transformation from DOMRpcResult to RpcResult
* `420e09d <https://git.opendaylight.org/gerrit/#/q/420e09d>`_
  : Eliminate twirl execution from mdsal-binding2-generator-impl


nemo
----
* `671e6f7 <https://git.opendaylight.org/gerrit/#/q/671e6f7>`_
  : Do not repackage jung2
* `6a191e9 <https://git.opendaylight.org/gerrit/#/q/6a191e9>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


netconf
-------
* `63e1b46 <https://git.opendaylight.org/gerrit/#/q/63e1b46>`_
  : Specify explicit javax.ws.rs version in yanglib
* `c734a43 <https://git.opendaylight.org/gerrit/#/q/c734a43>`_
  : Fix yanglib SFT failure
* `694c618 <https://git.opendaylight.org/gerrit/#/q/694c618>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `674c998 <https://git.opendaylight.org/gerrit/#/q/674c998>`_
  `NETCONF-530 <https://jira.opendaylight.org/browse/NETCONF-530>`_
  : NETCONF-530 - netconf-testtool failed on start with NullPointerException
* `346c8b2 <https://git.opendaylight.org/gerrit/#/q/346c8b2>`_
  : Restconf 8040 should return 204 for delete and put
* `bbd99ea <https://git.opendaylight.org/gerrit/#/q/bbd99ea>`_
  `NETCONF-514 <https://jira.opendaylight.org/browse/NETCONF-514>`_
  : NETCONF-514: Use exists instead of read for PUT
* `fcd724b <https://git.opendaylight.org/gerrit/#/q/fcd724b>`_
  : Fix odl-config-netconf-connector
* `0532f8e <https://git.opendaylight.org/gerrit/#/q/0532f8e>`_
  : Add odl-restconf-common


netvirt
-------
* `7bb027d <https://git.opendaylight.org/gerrit/#/q/7bb027d>`_
  `NETVIRT-1216 <https://jira.opendaylight.org/browse/NETVIRT-1216>`_
  : Clean up VPN data on VPN delete.
* `6c1681c <https://git.opendaylight.org/gerrit/#/q/6c1681c>`_
  : Fix FindBugs issues with odlparent 3.1.0
* `50e48e4 <https://git.opendaylight.org/gerrit/#/q/50e48e4>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `b4e4232 <https://git.opendaylight.org/gerrit/#/q/b4e4232>`_
  `NETVIRT-1181 <https://jira.opendaylight.org/browse/NETVIRT-1181>`_
  : NETVIRT-1181: 3 issues related to port-udpate with Allowed address pairs are addressed in this fix. 1. AAP added as port-udpate, is added for L2Broadcast allow rule. 2. AAP deleted as port-update, is handled to remove L2Broadcast allow rule only if there is no other aap with same mac. 3. AAP deleted as port-udpate, is handled to remove Dhcp v4 & v6 allow rule only if there is no other aap with same mac
* `1e916a0 <https://git.opendaylight.org/gerrit/#/q/1e916a0>`_
  `NETVIRT-1141 <https://jira.opendaylight.org/browse/NETVIRT-1141>`_
  : NETVIRT-1141: Remote ACL count missing in acl stats data
* `c26eac5 <https://git.opendaylight.org/gerrit/#/q/c26eac5>`_
  `NETVIRT-1173 <https://jira.opendaylight.org/browse/NETVIRT-1173>`_
  : NETVIRT-1173 : Prevent SNAT packets unnecessary looping
* `8c80a2e <https://git.opendaylight.org/gerrit/#/q/8c80a2e>`_
  `NETVIRT-1188 <https://jira.opendaylight.org/browse/NETVIRT-1188>`_
  : NETVIRT-1188: ACL: Stats not working for ingress direction
* `2642f99 <https://git.opendaylight.org/gerrit/#/q/2642f99>`_
  `NETVIRT-1068 <https://jira.opendaylight.org/browse/NETVIRT-1068>`_
  : NETVIRT-1068: Upstreaming fixes 2
* `62398f1 <https://git.opendaylight.org/gerrit/#/q/62398f1>`_
  `NETVIRT-1187 <https://jira.opendaylight.org/browse/NETVIRT-1187>`_
  : NETVIRT-1187 Imported FIB Route is not being translated to flows
* `0e952d5 <https://git.opendaylight.org/gerrit/#/q/0e952d5>`_
  : Removal of deprecated ACL table constants.
* `0637a8a <https://git.opendaylight.org/gerrit/#/q/0637a8a>`_
  `NETVIRT-1170 <https://jira.opendaylight.org/browse/NETVIRT-1170>`_
  : NETVIRT-1170: Deleting VM with a learnt IP does not clean up prefix-to-interface DS for the VM
* `3749546 <https://git.opendaylight.org/gerrit/#/q/3749546>`_
  : ELAN L2GW Junit Test Cases
* `275bec0 <https://git.opendaylight.org/gerrit/#/q/275bec0>`_
  `NETVIRT-1189 <https://jira.opendaylight.org/browse/NETVIRT-1189>`_
  : NETVIRT-1189 Opening update server port with specified IP address (if configured) update server port shall depend on EoS-entity-BGP.
* `afca0d6 <https://git.opendaylight.org/gerrit/#/q/afca0d6>`_
  : Switch to InstanceIdDataObjectCache needs to be merged along with https://git.opendaylight.org/gerrit/#/c/69958/
* `7403bc6 <https://git.opendaylight.org/gerrit/#/q/7403bc6>`_
  `NETVIRT-942 <https://jira.opendaylight.org/browse/NETVIRT-942>`_
  : NETVIRT-942, NETVIRT-945 : Conflicting modification for path...
* `07202cb <https://git.opendaylight.org/gerrit/#/q/07202cb>`_
  : ELAN Service Recovery
* `a851776 <https://git.opendaylight.org/gerrit/#/q/a851776>`_
  : Add debug log for port status update
* `3e4acab <https://git.opendaylight.org/gerrit/#/q/3e4acab>`_
  `NETVIRT-1169 <https://jira.opendaylight.org/browse/NETVIRT-1169>`_
  : NETVIRT-1169 : Upgrade - GW-MAC flows are sometimes not programmed on some of the DPNs
* `170cdef <https://git.opendaylight.org/gerrit/#/q/170cdef>`_
  : Unit Test Cases Changes
* `454f74a <https://git.opendaylight.org/gerrit/#/q/454f74a>`_
  : Service-Recovery: Below service recovery actions are supported for ACL (a) ACL service recovery: As part of this, all ACL listeners are re-registered (unregistered and registerd again) (b) ACL Interface recovery (c) ACL Instance recovery
* `038e8ba <https://git.opendaylight.org/gerrit/#/q/038e8ba>`_
  : Service Recover for QoS Service as a whole & QoS Policy Instance.
* `5967860 <https://git.opendaylight.org/gerrit/#/q/5967860>`_
  `NETVIRT-1155 <https://jira.opendaylight.org/browse/NETVIRT-1155>`_
  : NETVIRT-1155: L3nexthop group count is not decremented for extra-route
* `07dc59b <https://git.opendaylight.org/gerrit/#/q/07dc59b>`_
  `RELENG-63 <https://jira.opendaylight.org/browse/RELENG-63>`_
  : RELENG-63: Move COE bundle to odl-netvirt-coe
* `6da0e95 <https://git.opendaylight.org/gerrit/#/q/6da0e95>`_
  `NETVIRT-1062 <https://jira.opendaylight.org/browse/NETVIRT-1062>`_
  : NETVIRT-1062: refactor SubnetmapChangeListener
* `1423148 <https://git.opendaylight.org/gerrit/#/q/1423148>`_
  `NETVIRT-1166 <https://jira.opendaylight.org/browse/NETVIRT-1166>`_
  : NETVIRT-1166:IPv6 NA packet is setting with wrong solicited flag
* `2c548a8 <https://git.opendaylight.org/gerrit/#/q/2c548a8>`_
  `NETVIRT-1158 <https://jira.opendaylight.org/browse/NETVIRT-1158>`_
  : NETVIRT-1158 ping to floating IPs of VMs start working only after pinging from within VM to the outside first


neutron
-------
* `a7aca73 <https://git.opendaylight.org/gerrit/#/q/a7aca73>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


of-config
---------
* `598a838 <https://git.opendaylight.org/gerrit/#/q/598a838>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


openflowplugin
--------------
* `a3aa992 <https://git.opendaylight.org/gerrit/#/q/a3aa992>`_
  `OPNFLWPLUG-987 <https://jira.opendaylight.org/browse/OPNFLWPLUG-987>`_
  : OPNFLWPLUG-987: Apps not getting proper notification for the port status messages
* `df42bfe <https://git.opendaylight.org/gerrit/#/q/df42bfe>`_
  : Remove controller lldp dependency
* `b3ad709 <https://git.opendaylight.org/gerrit/#/q/b3ad709>`_
  `OPNFLWPLUG-986 <https://jira.opendaylight.org/browse/OPNFLWPLUG-986>`_
  : OPNFLWPLUG-986: Administrative Reconciliation for multiple/all Nodes
* `e0b81ff <https://git.opendaylight.org/gerrit/#/q/e0b81ff>`_
  : Logs are added to identify the flows and groups being added in the node for the corresponding transaction ID when it's pushed in the form of bundle messages going via bundle experimenter messages.
* `57dbac8 <https://git.opendaylight.org/gerrit/#/q/57dbac8>`_
  `OPNFLWPLUG-992 <https://jira.opendaylight.org/browse/OPNFLWPLUG-992>`_
  : OPNFLWPLUG-992 : Device connection rate limiter implemenation
* `c991a8e <https://git.opendaylight.org/gerrit/#/q/c991a8e>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `e37632b <https://git.opendaylight.org/gerrit/#/q/e37632b>`_
  : Add doc for bundle reconciliation usage
* `10c3045 <https://git.opendaylight.org/gerrit/#/q/10c3045>`_
  : Update group add mod spec to reflect the correct details
* `cc7593e <https://git.opendaylight.org/gerrit/#/q/cc7593e>`_
  `OPNFLWPLUG-981 <https://jira.opendaylight.org/browse/OPNFLWPLUG-981>`_
  : OPNFLWPLUG-981: per-capability configuration for stats polling
* `92af189 <https://git.opendaylight.org/gerrit/#/q/92af189>`_
  `OPNFLWPLUG-951 <https://jira.opendaylight.org/browse/OPNFLWPLUG-951>`_
  : OPNFLWPLUG-951: Adding equal role functionality
* `4f6935a <https://git.opendaylight.org/gerrit/#/q/4f6935a>`_
  : Do not repackage guava
* `fd5cd25 <https://git.opendaylight.org/gerrit/#/q/fd5cd25>`_
  `OPNFLWPLUG-968 <https://jira.opendaylight.org/browse/OPNFLWPLUG-968>`_
  : OPNFLWPLUG-968: The channelOutboundQueueSize is made configurable:
* `64e8704 <https://git.opendaylight.org/gerrit/#/q/64e8704>`_
  : Make TCs to assert on actual values and remove toString asserts
* `384b389 <https://git.opendaylight.org/gerrit/#/q/384b389>`_
  : Enable findbugs in parent pom
* `7333897 <https://git.opendaylight.org/gerrit/#/q/7333897>`_
  : Fix findbugs violations in test-provider and drop-test-karaf
* `68dff78 <https://git.opendaylight.org/gerrit/#/q/68dff78>`_
  : Fix findbugs violations in openflowplugin-impl
* `8d9524a <https://git.opendaylight.org/gerrit/#/q/8d9524a>`_
  : Fix findbugs violations in openflowplugin
* `dbe4551 <https://git.opendaylight.org/gerrit/#/q/dbe4551>`_
  : Fix findbugs violations in extensions
* `6db37f8 <https://git.opendaylight.org/gerrit/#/q/6db37f8>`_
  : Fix findbugs violations in samples
* `cbd7ea4 <https://git.opendaylight.org/gerrit/#/q/cbd7ea4>`_
  : Fix findbugs violations in liblldp
* `2f5b53e <https://git.opendaylight.org/gerrit/#/q/2f5b53e>`_
  : Fix findbugs violations in applications
* `0387507 <https://git.opendaylight.org/gerrit/#/q/0387507>`_
  : Fix findbugs violations in openflowjava
* `86ef866 <https://git.opendaylight.org/gerrit/#/q/86ef866>`_
  : Enable checkstyle enforcement in openflowplugin-parent
* `5e0f6ee <https://git.opendaylight.org/gerrit/#/q/5e0f6ee>`_
  : Fix checkstyle in openflowjava-extension-nicira
* `2d96d36 <https://git.opendaylight.org/gerrit/#/q/2d96d36>`_
  : BUG-86: Fixed echo response processing
* `59425e3 <https://git.opendaylight.org/gerrit/#/q/59425e3>`_
  : Fix checkstyle violations in test bundles
* `23a1cde <https://git.opendaylight.org/gerrit/#/q/23a1cde>`_
  : Fix checkstyle violations in openflowplugin - part 5
* `8777e13 <https://git.opendaylight.org/gerrit/#/q/8777e13>`_
  : Fix checkstyle violations in openflowplugin - part 4
* `746e0b8 <https://git.opendaylight.org/gerrit/#/q/746e0b8>`_
  : Fix checkstyle violations in openflowplugin - part 3
* `1aa2c54 <https://git.opendaylight.org/gerrit/#/q/1aa2c54>`_
  : Fix checkstyle violations in openflowplugin - part 2
* `a413ca4 <https://git.opendaylight.org/gerrit/#/q/a413ca4>`_
  : Fix checkstyle violations in openflowplugin - part 1
* `d1318ca <https://git.opendaylight.org/gerrit/#/q/d1318ca>`_
  `OPNFLWPLUG-984 <https://jira.opendaylight.org/browse/OPNFLWPLUG-984>`_
  : OPNFLWPLUG-984: always use ingress node for link discovery
* `b9905ee <https://git.opendaylight.org/gerrit/#/q/b9905ee>`_
  `OPNFLWPLUG-952 <https://jira.opendaylight.org/browse/OPNFLWPLUG-952>`_
  : OPNFLWPLUG-952: All links disappear from the topology
* `d1f64d6 <https://git.opendaylight.org/gerrit/#/q/d1f64d6>`_
  `OPNFLWPLUG-983 <https://jira.opendaylight.org/browse/OPNFLWPLUG-983>`_
  : OPNFLWPLUG-983 Group and flow removal stats are not reported in order
* `ad72f0b <https://git.opendaylight.org/gerrit/#/q/ad72f0b>`_
  : use feature for inter-project dependency


ovsdb
-----
* `fc75e94 <https://git.opendaylight.org/gerrit/#/q/fc75e94>`_
  : Revert "Add Karaf build profile"
* `ec897b2 <https://git.opendaylight.org/gerrit/#/q/ec897b2>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `74c112b <https://git.opendaylight.org/gerrit/#/q/74c112b>`_
  : Remove obsolete Maven Site configuration
* `af9c4d2 <https://git.opendaylight.org/gerrit/#/q/af9c4d2>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `c6e547d <https://git.opendaylight.org/gerrit/#/q/c6e547d>`_
  : Check for null certManager
* `77f0ef9 <https://git.opendaylight.org/gerrit/#/q/77f0ef9>`_
  `OVSDB-449 <https://jira.opendaylight.org/browse/OVSDB-449>`_
  : OVSDB-449 Fixes loading keystores dynamically per connection
* `9555c93 <https://git.opendaylight.org/gerrit/#/q/9555c93>`_
  : Fix odl-ovsdb-utils


p4plugin
--------
* `57d10ad <https://git.opendaylight.org/gerrit/#/q/57d10ad>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


packetcable
-----------
* `3aade2c <https://git.opendaylight.org/gerrit/#/q/3aade2c>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


sfc
---
* `e1fc3d8 <https://git.opendaylight.org/gerrit/#/q/e1fc3d8>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `2396ccf <https://git.opendaylight.org/gerrit/#/q/2396ccf>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `ba27069 <https://git.opendaylight.org/gerrit/#/q/ba27069>`_
  `SFC-217 <https://jira.opendaylight.org/browse/SFC-217>`_
  : SFC-217: Fix sfc-py pep8 issues and packaging


snmp
----
* `fe29afb <https://git.opendaylight.org/gerrit/#/q/fe29afb>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


snmp4sdn
--------
* `edd5107 <https://git.opendaylight.org/gerrit/#/q/edd5107>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


sxp
---
* `2ac46ff <https://git.opendaylight.org/gerrit/#/q/2ac46ff>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `b7ec88e <https://git.opendaylight.org/gerrit/#/q/b7ec88e>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3
* `2d3eb7c <https://git.opendaylight.org/gerrit/#/q/2d3eb7c>`_
  `SXP-137 <https://jira.opendaylight.org/browse/SXP-137>`_
  : SXP-137 Make retryOpen timer tied to connection lifecycle
* `c3233e9 <https://git.opendaylight.org/gerrit/#/q/c3233e9>`_
  `SXP-135 <https://jira.opendaylight.org/browse/SXP-135>`_
  : SXP-135 Shutdown connections on Openmsg when connection is ON


tsdr
----
* `0f82dde <https://git.opendaylight.org/gerrit/#/q/0f82dde>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3


usc
---
* `7d83d37 <https://git.opendaylight.org/gerrit/#/q/7d83d37>`_
  : Bump to odlparent 3.1.0 and yangtools 2.0.3

