Carbon-SR3 Release Notes
========================

This page details changes and bug fixes between the Carbon Stability Release 2 (Carbon-SR2)
and the Carbon Stability Release 3 (Carbon-SR3) of OpenDaylight.

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
* groupbasedpolicy
* honeycomb/vbd
* integration/distribution
* iotdm
* l2switch
* lacp
* nemo
* netide
* neutron
* nic
* ocpplugin
* odlparent
* of-config
* openflowjava
* packetcable
* sdninterfaceapp
* sfc
* snmp
* snmp4sdn
* sxp
* topoprocessing
* tsdr
* ttp
* unimgr
* usc

aaa
---
* `f8af7c2 <https://git.opendaylight.org/gerrit/#/q/f8af7c2>`_
  `AAA-151 <https://jira.opendaylight.org/browse/AAA-151>`_
  : AAA-151:  Invalidate claim cache for CLI initiated changes


bgpcep
------
* `4bd353d <https://git.opendaylight.org/gerrit/#/q/4bd353d>`_
  `PCEP-724 <https://jira.opendaylight.org/browse/PCEP-724>`_
  : BGPCEP-724 Make BGP Session recoverable
* `8ab787d <https://git.opendaylight.org/gerrit/#/q/8ab787d>`_
  `PCEP-728 <https://jira.opendaylight.org/browse/PCEP-728>`_
  : BGPCEP-728: BMP Mock clustering
* `b44d1a8 <https://git.opendaylight.org/gerrit/#/q/b44d1a8>`_
  : Improve CheckUtil testss
* `494fc72 <https://git.opendaylight.org/gerrit/#/q/494fc72>`_
  `PCEP-717 <https://jira.opendaylight.org/browse/PCEP-717>`_
  : BGPCEP-717: Add logback config file
* `314a2c8 <https://git.opendaylight.org/gerrit/#/q/314a2c8>`_
  `PCEP-717 <https://jira.opendaylight.org/browse/PCEP-717>`_
  : BGPCEP-717: Add logback config file
* `a82ddce <https://git.opendaylight.org/gerrit/#/q/a82ddce>`_
  `PCEP-711 <https://jira.opendaylight.org/browse/PCEP-711>`_
  : BGPCEP-711: BMP test tool clustering support
* `af95a6c <https://git.opendaylight.org/gerrit/#/q/af95a6c>`_
  `PCEP-706 <https://jira.opendaylight.org/browse/PCEP-706>`_
  : BGPCEP-706: Fix BGP Flowspec NumbericOphrand
* `8ba07f7 <https://git.opendaylight.org/gerrit/#/q/8ba07f7>`_
  `BGPCEP-686 <https://jira.opendaylight.org/browse/BGPCEP-686>`_
  : BUG-9079 Make PCEP session recoverable from exception
* `cfa08e0 <https://git.opendaylight.org/gerrit/#/q/cfa08e0>`_
  `BGPCEP-691 <https://jira.opendaylight.org/browse/BGPCEP-691>`_
  : Bug 9205: NPE received while receiving BGP peers
* `033f370 <https://git.opendaylight.org/gerrit/#/q/033f370>`_
  `BGPCEP-680 <https://jira.opendaylight.org/browse/BGPCEP-680>`_
  : BUG-8929: NPE during singleton startup


controller
----------
* `6910bd6 <https://git.opendaylight.org/gerrit/#/q/6910bd6>`_
  `CONTROLLER-1760 <https://jira.opendaylight.org/browse/CONTROLLER-1760>`_
  : Bug 9060: Minor mdsaltrace_config.xml /this/will/never/exist
* `a92c795 <https://git.opendaylight.org/gerrit/#/q/a92c795>`_
  : Correct logging in FrontendClientMetadataBuilder
* `68e4774 <https://git.opendaylight.org/gerrit/#/q/68e4774>`_
  `CONTROLLER-1792 <https://jira.opendaylight.org/browse/CONTROLLER-1792>`_
  : Tracing Transaction wrappers delegate equals/hashCode/equals
* `fa1d3fe <https://git.opendaylight.org/gerrit/#/q/fa1d3fe>`_
  : Toaster is shardless
* `fccaf5f <https://git.opendaylight.org/gerrit/#/q/fccaf5f>`_
  : ForwardingRead[Only]/WriteTransaction implementations
* `3475c7c <https://git.opendaylight.org/gerrit/#/q/3475c7c>`_
  : ForwardingDataBroker
* `4633116 <https://git.opendaylight.org/gerrit/#/q/4633116>`_
  : TracingBroker: collapse ellipses


genius
------
* `08b088a <https://git.opendaylight.org/gerrit/#/q/08b088a>`_
  `ENIUS-102 <https://jira.opendaylight.org/browse/ENIUS-102>`_
  : GENIUS-102: interface manager: use transaction manager
* `468144c <https://git.opendaylight.org/gerrit/#/q/468144c>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Fix possible transaction leak in ItmInternalTunnelDeleteWorker
* `eaa4fe3 <https://git.opendaylight.org/gerrit/#/q/eaa4fe3>`_
  `ENIUS-102 <https://jira.opendaylight.org/browse/ENIUS-102>`_
  : Fix bad transaction leak in SouthboundUtils
* `f8e155a <https://git.opendaylight.org/gerrit/#/q/f8e155a>`_
  : Bug 8400 - ACL changes doesn't affect the existing connections
* `2a6c509 <https://git.opendaylight.org/gerrit/#/q/2a6c509>`_
  : @Ignore IdManagerTest testMultithreadedIdAllocationFromReleasedIds
* `00af977 <https://git.opendaylight.org/gerrit/#/q/00af977>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Fix bad transaction leak in ItmInternalTunnelAddWorker
* `e8e0d0b <https://git.opendaylight.org/gerrit/#/q/e8e0d0b>`_
  : Fix too long service binding INFO logs
* `8409df3 <https://git.opendaylight.org/gerrit/#/q/8409df3>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Add ReadWriteTransaction support
* `59caf78 <https://git.opendaylight.org/gerrit/#/q/59caf78>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : ManagedTransactionRunner utility to help close transactions
* `8b1861b <https://git.opendaylight.org/gerrit/#/q/8b1861b>`_
  : Enable bound services update
* `c01faf2 <https://git.opendaylight.org/gerrit/#/q/c01faf2>`_
  : This patch implements the genius mdsal interface for supporting conntrack ct_mark match (with mask) and action (without mask).


infrautils
----------
* `39550b6 <https://git.opendaylight.org/gerrit/#/q/39550b6>`_
  : ListenableFutures util to simplify adding error logging callbacks


lispflowmapping
---------------
* `318e94e <https://git.opendaylight.org/gerrit/#/q/318e94e>`_
  `LISPMAP-171 <https://jira.opendaylight.org/browse/LISPMAP-171>`_
  : Bug 9311: Remove expired mappings before printing
* `7d3f781 <https://git.opendaylight.org/gerrit/#/q/7d3f781>`_
  `LISPMAP-169 <https://jira.opendaylight.org/browse/LISPMAP-169>`_
  : Bug 9172: Don't store subscribers with "No Address" source EID


mdsal
-----
* `1cd647e <https://git.opendaylight.org/gerrit/#/q/1cd647e>`_
  `MDSAL-302 <https://jira.opendaylight.org/browse/MDSAL-302>`_
  : MDSAL-302: make sure uses+augment works in RPCs
* `3c6b129 <https://git.opendaylight.org/gerrit/#/q/3c6b129>`_
  : Binding v2 generator - fix getting elements from empty array.


netconf
-------
* `7d25cfd <https://git.opendaylight.org/gerrit/#/q/7d25cfd>`_
  : Support for patch command
* `59f61a6 <https://git.opendaylight.org/gerrit/#/q/59f61a6>`_
  `SR-1 <https://jira.opendaylight.org/browse/SR-1>`_
  : Extra superfluous edit-config RPC sent - Netconf-482
* `a6bd566 <https://git.opendaylight.org/gerrit/#/q/a6bd566>`_
  `NETCONF-475 <https://jira.opendaylight.org/browse/NETCONF-475>`_
  : Bug 9256: Add websocket server config knob for ip (CSS for carbon)
* `2429f19 <https://git.opendaylight.org/gerrit/#/q/2429f19>`_
  : Transition ListenerAdapter to ClusteredDOMDataTreeListener
* `829c5ce <https://git.opendaylight.org/gerrit/#/q/829c5ce>`_
  : Add unit tests for ListenerAdapter
* `5f608f5 <https://git.opendaylight.org/gerrit/#/q/5f608f5>`_
  : Add local MultivaluedHashMap implementation


netvirt
-------
* `ba9c5cf <https://git.opendaylight.org/gerrit/#/q/ba9c5cf>`_
  `NETVIRT-1047 <https://jira.opendaylight.org/browse/NETVIRT-1047>`_
  : NETVIRT-1047 : On vm subnet delete from a router SG flows are not updated with elan id
* `f13fede <https://git.opendaylight.org/gerrit/#/q/f13fede>`_
  `NETVIRT-1063 <https://jira.opendaylight.org/browse/NETVIRT-1063>`_
  : NETVIRT-1063 SNAT flows fails to install sporadically(conntrack SNAT)
* `44621ab <https://git.opendaylight.org/gerrit/#/q/44621ab>`_
  : Remove policyservice
* `34c8634 <https://git.opendaylight.org/gerrit/#/q/34c8634>`_
  `NETVIRT-1030 <https://jira.opendaylight.org/browse/NETVIRT-1030>`_
  : NETVIRT-1030 Unbinding elan service during interface state change
* `6eb0f10 <https://git.opendaylight.org/gerrit/#/q/6eb0f10>`_
  `NETVIRT-1065 <https://jira.opendaylight.org/browse/NETVIRT-1065>`_
  : NETVIRT-1065 Handle new bridges
* `6623aac <https://git.opendaylight.org/gerrit/#/q/6623aac>`_
  : Unbind and bind DHCP service as part of state.
* `13bc1a6 <https://git.opendaylight.org/gerrit/#/q/13bc1a6>`_
  `NETVIRT-1038 <https://jira.opendaylight.org/browse/NETVIRT-1038>`_
  : NETVIRT-1038 Fix bind logic in policymgr
* `cde86d9 <https://git.opendaylight.org/gerrit/#/q/cde86d9>`_
  : Updated to call bind/unbind from ACL interface state listener to avoid stale flows during VM migration
* `cc3d55c <https://git.opendaylight.org/gerrit/#/q/cc3d55c>`_
  `NETVIRT-916 <https://jira.opendaylight.org/browse/NETVIRT-916>`_
  : Fix ConflictingModificationAppliedException with 3 retries
* `4a9828f <https://git.opendaylight.org/gerrit/#/q/4a9828f>`_
  : Updated two display commands provided by 6wind
* `6116ca4 <https://git.opendaylight.org/gerrit/#/q/6116ca4>`_
  `NETVIRT-1023 <https://jira.opendaylight.org/browse/NETVIRT-1023>`_
  : NETVIRT-1023 - OptimisticLockFailedException: infrautils.jobcoordinator-impl
* `e15d9d2 <https://git.opendaylight.org/gerrit/#/q/e15d9d2>`_
  : Net-odl full-sync. Set router ext gw MAC
* `a66d5ee <https://git.opendaylight.org/gerrit/#/q/a66d5ee>`_
  `NETVIRT-937 <https://jira.opendaylight.org/browse/NETVIRT-937>`_
  : NETVIRT-937: Fix NPE in ElanInstanceManager
* `de3071d <https://git.opendaylight.org/gerrit/#/q/de3071d>`_
  : Fix NPE in VpnSubnetRouteHandler
* `665c061 <https://git.opendaylight.org/gerrit/#/q/665c061>`_
  : Fix NPE in SubnetmapChangeListener
* `515f439 <https://git.opendaylight.org/gerrit/#/q/515f439>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Fix the fix for the bad transaction leak in VpnInterfaceManager
* `0e3235d <https://git.opendaylight.org/gerrit/#/q/0e3235d>`_
  `NETVIRT-999 <https://jira.opendaylight.org/browse/NETVIRT-999>`_
  : NETVIRT-999 - Interface leak when subnet deleted
* `b719fc6 <https://git.opendaylight.org/gerrit/#/q/b719fc6>`_
  `NETVIRT-989 <https://jira.opendaylight.org/browse/NETVIRT-989>`_
  : BugId: NETVIRT-989 TEP not deleted when subnet is deleted
* `2756f4d <https://git.opendaylight.org/gerrit/#/q/2756f4d>`_
  `NETVIRT-1000 <https://jira.opendaylight.org/browse/NETVIRT-1000>`_
  : NETVIRT-1000: protect VpnInterfaceManager::remove
* `88ef62e <https://git.opendaylight.org/gerrit/#/q/88ef62e>`_
  `NETVIRT-1000 <https://jira.opendaylight.org/browse/NETVIRT-1000>`_
  : NETVIRT-1000: protect VrfEntryListener (partially)
* `8d1d1c8 <https://git.opendaylight.org/gerrit/#/q/8d1d1c8>`_
  `NETVIRT-1000 <https://jira.opendaylight.org/browse/NETVIRT-1000>`_
  : NETVIRT-1000: protect TunnelEndPointChangeListener
* `3eb7add <https://git.opendaylight.org/gerrit/#/q/3eb7add>`_
  `NETVIRT-1000 <https://jira.opendaylight.org/browse/NETVIRT-1000>`_
  : NETVIRT-1000: protect manageRemoteRouteOnDPN
* `c3be18b <https://git.opendaylight.org/gerrit/#/q/c3be18b>`_
  `NETVIRT-1000 <https://jira.opendaylight.org/browse/NETVIRT-1000>`_
  : NETVIRT-1000: protect handleNeutronPortUpdated
* `58e1d7d <https://git.opendaylight.org/gerrit/#/q/58e1d7d>`_
  `NETVIRT-1000 <https://jira.opendaylight.org/browse/NETVIRT-1000>`_
  : NETVIRT-1000: protect handleNeutronPortCreated
* `a54964c <https://git.opendaylight.org/gerrit/#/q/a54964c>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Fix bad transaction leak in VpnInterfaceManager
* `40e95fd <https://git.opendaylight.org/gerrit/#/q/40e95fd>`_
  : Shell Commands to Display Ipv6Service Cache
* `6faaf63 <https://git.opendaylight.org/gerrit/#/q/6faaf63>`_
  `NETVIRT-886 <https://jira.opendaylight.org/browse/NETVIRT-886>`_
  : Fix bad transaction leak in NeutronvpnManager
* `4b57bdc <https://git.opendaylight.org/gerrit/#/q/4b57bdc>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Fix bad transaction leak in InterfaceStateChangeListener
* `81b3233 <https://git.opendaylight.org/gerrit/#/q/81b3233>`_
  `NETVIRT-981 <https://jira.opendaylight.org/browse/NETVIRT-981>`_
  : NETVIRT-981 CSIT Sporadic failures - snat conntrack job failing many tempest scenario tests Changes are made to avoid stale entries when an external network is deleted. https://jira.opendaylight.org/browse/NETVIRT-981
* `e34d572 <https://git.opendaylight.org/gerrit/#/q/e34d572>`_
  `NETVIRT-886 <https://jira.opendaylight.org/browse/NETVIRT-886>`_
  : Fix bad transaction leak in StatisticsImpl
* `ff76704 <https://git.opendaylight.org/gerrit/#/q/ff76704>`_
  `NETVIRT-968 <https://jira.opendaylight.org/browse/NETVIRT-968>`_
  : NETVIRT-968	 : Conntrack SNAT fails in a cluster setup.
* `abd30a4 <https://git.opendaylight.org/gerrit/#/q/abd30a4>`_
  : Bug9298 : ModifiedNodeDoesNotExistException for FIP
* `7a69cdd <https://git.opendaylight.org/gerrit/#/q/7a69cdd>`_
  `NETVIRT-959 <https://jira.opendaylight.org/browse/NETVIRT-959>`_
  : Bug 9297 : Adjacency doesn't exist exception fo FIP
* `7b83854 <https://git.opendaylight.org/gerrit/#/q/7b83854>`_
  `NETVIRT-961 <https://jira.opendaylight.org/browse/NETVIRT-961>`_
  : Bug 9299 - In conntrack SNAT Vpn to dpn maps fails to update when a subnet is added/removed
* `1463d51 <https://git.opendaylight.org/gerrit/#/q/1463d51>`_
  : 21->nat-group flow is not present on OVS after “upgrade”
* `596b05e <https://git.opendaylight.org/gerrit/#/q/596b05e>`_
  `NETVIRT-926 <https://jira.opendaylight.org/browse/NETVIRT-926>`_
  : NETVIRT-926 - Maxpath value should be between 1 to 64 in BGP multipath
* `eb0afb3 <https://git.opendaylight.org/gerrit/#/q/eb0afb3>`_
  `NETVIRT-940 <https://jira.opendaylight.org/browse/NETVIRT-940>`_
  : Bug9245: Table=21 related exceptions fixes
* `df3f7c2 <https://git.opendaylight.org/gerrit/#/q/df3f7c2>`_
  : Updated to use bind-service update instead of bind and unbind in Acl VPN listener
* `0332dad <https://git.opendaylight.org/gerrit/#/q/0332dad>`_
  : Handle usecase when ELAN is null, and ACL service BIND/ADD fails due to NPE
* `58efa60 <https://git.opendaylight.org/gerrit/#/q/58efa60>`_
  `NETVIRT-919 <https://jira.opendaylight.org/browse/NETVIRT-919>`_
  : Bug 9181: Code changes for conflicting modifications exceptions of table=19
* `c47835c <https://git.opendaylight.org/gerrit/#/q/c47835c>`_
  `NETVIRT-941 <https://jira.opendaylight.org/browse/NETVIRT-941>`_
  : Bug 9246: Conflicting modification from ARP and Router-GW-Mac


openflowplugin
--------------
* `cfd1b87 <https://git.opendaylight.org/gerrit/#/q/cfd1b87>`_
  : openflowplugin-975
* `c9fc0fe <https://git.opendaylight.org/gerrit/#/q/c9fc0fe>`_
  `NETVIRT-1022 <https://jira.opendaylight.org/browse/NETVIRT-1022>`_
  : NETVIRT-1022 : fix csit failures
* `f5f97a5 <https://git.opendaylight.org/gerrit/#/q/f5f97a5>`_
  : Rename addDeleteOperationTotTxChain => addDeleteOperationToTxChain
* `dc71a44 <https://git.opendaylight.org/gerrit/#/q/dc71a44>`_
  `OPNFLWPLUG-858 <https://jira.opendaylight.org/browse/OPNFLWPLUG-858>`_
  : Bug 7826 Identified the root cause for issue TransactionCommitFailed for group during statistic collection.
* `d9d4102 <https://git.opendaylight.org/gerrit/#/q/d9d4102>`_
  `OPNFLWPLUG-961 <https://jira.opendaylight.org/browse/OPNFLWPLUG-961>`_
  : Fix possible transaction leak in StatisticsGatheringUtils
* `cd12bde <https://git.opendaylight.org/gerrit/#/q/cd12bde>`_
  : Lower logging level of FRM reconciliation process
* `bf10fc6 <https://git.opendaylight.org/gerrit/#/q/bf10fc6>`_
  : Add Docs for Openflowplugin
* `1c37cc2 <https://git.opendaylight.org/gerrit/#/q/1c37cc2>`_
  `OPNFLWPLUG-858 <https://jira.opendaylight.org/browse/OPNFLWPLUG-858>`_
  : bug-7826: Data validation failed for group-id
* `c38f49c <https://git.opendaylight.org/gerrit/#/q/c38f49c>`_
  `OPNFLWPLUG-930 <https://jira.opendaylight.org/browse/OPNFLWPLUG-930>`_
  : OPNFLWPLUG-930 Inconsistent flow IDs between flows  in config and operational data stores
* `81e79ed <https://git.opendaylight.org/gerrit/#/q/81e79ed>`_
  `OPNFLWPLUG-950 <https://jira.opendaylight.org/browse/OPNFLWPLUG-950>`_
  : BUG-9223:Remove hardcoded value of lldp interval


ovsdb
-----
* `d212bdd <https://git.opendaylight.org/gerrit/#/q/d212bdd>`_
  `OVSDB-435 <https://jira.opendaylight.org/browse/OVSDB-435>`_
  : OVSDB-435: fix transaction leak in BridgeOperationState
* `d1723dd <https://git.opendaylight.org/gerrit/#/q/d1723dd>`_
  `OVSDB-425 <https://jira.opendaylight.org/browse/OVSDB-425>`_
  : Fix transaction leak in BridgeConfigReconciliationTask
* `b4d2a15 <https://git.opendaylight.org/gerrit/#/q/b4d2a15>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Fix transaction leak in OvsdbConnectionManager
* `8bad9e3 <https://git.opendaylight.org/gerrit/#/q/8bad9e3>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Fix possible transaction leak in BridgeOperationalState


vtn
---
* `782e9c5 <https://git.opendaylight.org/gerrit/#/q/782e9c5>`_
  `VTN-166 <https://jira.opendaylight.org/browse/VTN-166>`_
  : Bug 9224 - Fix for mapping issue of protocol and dscp values
* `f6ed2f8 <https://git.opendaylight.org/gerrit/#/q/f6ed2f8>`_
  `VTN-165 <https://jira.opendaylight.org/browse/VTN-165>`_
  : Bug 9208: Fixed UDP L4 match details creation failures


yangtools
---------
* `5d19e59 <https://git.opendaylight.org/gerrit/#/q/5d19e59>`_
  : Handling empty text nodes
* `90a5fb4 <https://git.opendaylight.org/gerrit/#/q/90a5fb4>`_
  `YANGTOOLS-804 <https://jira.opendaylight.org/browse/YANGTOOLS-804>`_
  : BUG 8927: Netconf response payload fails to render in JSON
* `a370484 <https://git.opendaylight.org/gerrit/#/q/a370484>`_
  `YANGTOOLS-827 <https://jira.opendaylight.org/browse/YANGTOOLS-827>`_
  : YANGTOOLS-827: fix revision compare
* `e7ce81c <https://git.opendaylight.org/gerrit/#/q/e7ce81c>`_
  `YANGTOOLS-823 <https://jira.opendaylight.org/browse/YANGTOOLS-823>`_
  : YANGTOOLS-823: take modifier into account when enforcing patterns
* `a003b20 <https://git.opendaylight.org/gerrit/#/q/a003b20>`_
  `YANGTOOLS-815 <https://jira.opendaylight.org/browse/YANGTOOLS-815>`_
  : Bug 9242: Reuse deviating statement contexts
* `b8a1214 <https://git.opendaylight.org/gerrit/#/q/b8a1214>`_
  `YANGTOOLS-817 <https://jira.opendaylight.org/browse/YANGTOOLS-817>`_
  : Bug 9244: Fix deviate replace of implicit substatements
* `6f5637a <https://git.opendaylight.org/gerrit/#/q/6f5637a>`_
  `YANGTOOLS-814 <https://jira.opendaylight.org/browse/YANGTOOLS-814>`_
  : Bug 9241: Action definition should implicitly define input/output

