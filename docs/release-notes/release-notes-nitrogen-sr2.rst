Nitrogen-SR2 Release Notes
==========================

This page details changes and bug fixes between the Nitrogen Stability Release 1 (Nitrogen-SR1)
and the Nitrogen Stability Release 2 (Nitrogen-SR2) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------

* alto
* bier
* cardinal
* coe
* daexim
* dlux
* dluxapps
* faas
* groupbasedpolicy
* honeycomb/vbd
* infrautils
* l2switch
* nemo
* nic
* ocpplugin
* of-config
* packetcable
* sfc
* snmp
* snmp4sdn
* sxp
* topoprocessing
* ttp
* unimgr
* usc
* vtn

aaa
---
* `2165023 <https://git.opendaylight.org/gerrit/#/q/2165023>`_
  `AAA-155 <https://jira.opendaylight.org/browse/AAA-155>`_
  : AAA-155: don't force non-null input on currentUser cache lookup
* `f47e9db <https://git.opendaylight.org/gerrit/#/q/f47e9db>`_
  : auth endpoints should be restricted to admin role by default


bgpcep
------
* `a53fd0a <https://git.opendaylight.org/gerrit/#/q/a53fd0a>`_
  `PCEP-739 <https://jira.opendaylight.org/browse/PCEP-739>`_
  : BGPCEP-739: Fix  "raced with transaction PingPongTransaction"
* `6f8bed9 <https://git.opendaylight.org/gerrit/#/q/6f8bed9>`_
  : Duplicate pax injection timeout
* `c46104d <https://git.opendaylight.org/gerrit/#/q/c46104d>`_
  `PCEP-748 <https://jira.opendaylight.org/browse/PCEP-748>`_
  : BGPCEP-748: Fix AFI/SAFI
* `70b221f <https://git.opendaylight.org/gerrit/#/q/70b221f>`_
  `PCEP-724 <https://jira.opendaylight.org/browse/PCEP-724>`_
  : BGPCEP-724 Make BGP Session recoverable
* `35c3c8a <https://git.opendaylight.org/gerrit/#/q/35c3c8a>`_
  : Document path-id reserved value
* `3a9e9ce <https://git.opendaylight.org/gerrit/#/q/3a9e9ce>`_
  `PCEP-672 <https://jira.opendaylight.org/browse/PCEP-672>`_
  : BGPCEP-672: Fix key storage un adj-rib-out
* `b4ce9b5 <https://git.opendaylight.org/gerrit/#/q/b4ce9b5>`_
  `PCEP-742 <https://jira.opendaylight.org/browse/PCEP-742>`_
  : BGPCEP-742 Fix BGP NPE filter null BGP State
* `41ac261 <https://git.opendaylight.org/gerrit/#/q/41ac261>`_
  `PCEP-737 <https://jira.opendaylight.org/browse/PCEP-737>`_
  : BGPCEP-737: Implement BMP client reconnection
* `78a58c1 <https://git.opendaylight.org/gerrit/#/q/78a58c1>`_
  `PCEP-736 <https://jira.opendaylight.org/browse/PCEP-736>`_
  : BGPCEP-736: BMP Testtool retry connection
* `c621de8 <https://git.opendaylight.org/gerrit/#/q/c621de8>`_
  : Deprecate interfaces
* `105b6c6 <https://git.opendaylight.org/gerrit/#/q/105b6c6>`_
  : BGP Migrate deprecated netty methods
* `e4698c5 <https://git.opendaylight.org/gerrit/#/q/e4698c5>`_
  : Move Pcep topology to Pcep Topology aggregator
* `61316df <https://git.opendaylight.org/gerrit/#/q/61316df>`_
  : Migrate deprecated netty methods
* `ee3bf58 <https://git.opendaylight.org/gerrit/#/q/ee3bf58>`_
  `PCEP-728 <https://jira.opendaylight.org/browse/PCEP-728>`_
  : BGPCEP-728: BMP Mock clustering
* `ded8ff8 <https://git.opendaylight.org/gerrit/#/q/ded8ff8>`_
  : BUG-726: Move pcep topology tunnel to aggregator
* `288177f <https://git.opendaylight.org/gerrit/#/q/288177f>`_
  : Improve CheckUtil testss
* `0614495 <https://git.opendaylight.org/gerrit/#/q/0614495>`_
  `PCEP-711 <https://jira.opendaylight.org/browse/PCEP-711>`_
  : BGPCEP-711: BMP test tool clustering support
* `c9a6e7a <https://git.opendaylight.org/gerrit/#/q/c9a6e7a>`_
  : move bmp to bmp aggregator
* `b1bae1b <https://git.opendaylight.org/gerrit/#/q/b1bae1b>`_
  : Fix odlparent reference
* `50105ec <https://git.opendaylight.org/gerrit/#/q/50105ec>`_
  `PCEP-718 <https://jira.opendaylight.org/browse/PCEP-718>`_
  : BGPCEP-718: Hide InterruptedException
* `f7cc785 <https://git.opendaylight.org/gerrit/#/q/f7cc785>`_
  `PCEP-706 <https://jira.opendaylight.org/browse/PCEP-706>`_
  : BGPCEP-706: Fix BGP Flowspec NumbericOphrand


controller
----------
* `68661ad <https://git.opendaylight.org/gerrit/#/q/68661ad>`_
  : Guards iteration against concurrent modification
* `f916c1f <https://git.opendaylight.org/gerrit/#/q/f916c1f>`_
  `CONTROLLER-1802 <https://jira.opendaylight.org/browse/CONTROLLER-1802>`_
  : ConcurrentDOMDataBroker LOG debug instead of error
* `afc8a38 <https://git.opendaylight.org/gerrit/#/q/afc8a38>`_
  : Remove stax-utils from features
* `66b1f42 <https://git.opendaylight.org/gerrit/#/q/66b1f42>`_
  `CONTROLLER-1812 <https://jira.opendaylight.org/browse/CONTROLLER-1812>`_
  : Fix infinite loop on cancel transaction
* `db09174 <https://git.opendaylight.org/gerrit/#/q/db09174>`_
  `MDSAL-298 <https://jira.opendaylight.org/browse/MDSAL-298>`_
  : MDSAL-298: properly handle unkeyed lists
* `ed1a96a <https://git.opendaylight.org/gerrit/#/q/ed1a96a>`_
  : Fixup test referring to description statement
* `3f36e87 <https://git.opendaylight.org/gerrit/#/q/3f36e87>`_
  : Fix ModificationType.APPEARED mapping
* `c9aab02 <https://git.opendaylight.org/gerrit/#/q/c9aab02>`_
  : Fix intermittent RemoteRpcRegistryMXBeanImplTest failures
* `fafb6cc <https://git.opendaylight.org/gerrit/#/q/fafb6cc>`_
  : register RemoteRpcRegistryMXBean
* `6df49b4 <https://git.opendaylight.org/gerrit/#/q/6df49b4>`_
  : Do not inline javax.annotation
* `63415b1 <https://git.opendaylight.org/gerrit/#/q/63415b1>`_
  : Prevent non-voting member from becoming entity owner
* `1d0c61f <https://git.opendaylight.org/gerrit/#/q/1d0c61f>`_
  `INFRAUTILS-19 <https://jira.opendaylight.org/browse/INFRAUTILS-19>`_
  : Fix io.dropwizard.metrics version
* `629b5b3 <https://git.opendaylight.org/gerrit/#/q/629b5b3>`_
  `CONTROLLER-1760 <https://jira.opendaylight.org/browse/CONTROLLER-1760>`_
  : Bug 9060: Fix odl-mdsal-trace's missing mdsaltrace_config.xml
* `7a34fa3 <https://git.opendaylight.org/gerrit/#/q/7a34fa3>`_
  `CONTROLLER-1760 <https://jira.opendaylight.org/browse/CONTROLLER-1760>`_
  : Bug 9060: Minor mdsaltrace_config.xml /this/will/never/exist
* `ca5b7a1 <https://git.opendaylight.org/gerrit/#/q/ca5b7a1>`_
  : Toaster is shardless
* `10762da <https://git.opendaylight.org/gerrit/#/q/10762da>`_
  : Correct logging in FrontendClientMetadataBuilder
* `d82da41 <https://git.opendaylight.org/gerrit/#/q/d82da41>`_
  : ForwardingDataBroker
* `ee36b12 <https://git.opendaylight.org/gerrit/#/q/ee36b12>`_
  : ForwardingRead[Only]/WriteTransaction implementations


eman
----
* `586b709 <https://git.opendaylight.org/gerrit/#/q/586b709>`_
  : remove unused it project


genius
------
* `5630daa <https://git.opendaylight.org/gerrit/#/q/5630daa>`_
  `NETVIRT-1009 <https://jira.opendaylight.org/browse/NETVIRT-1009>`_
  : NETVIRT-1009 - Enable genius auto-tz
* `3c13863 <https://git.opendaylight.org/gerrit/#/q/3c13863>`_
  : Changed RPC to retrieve Vxlan DC GWY Ext. Tunnels
* `3af50cc <https://git.opendaylight.org/gerrit/#/q/3af50cc>`_
  : Handle br-int dpid update for genius auto tunnels
* `11e0346 <https://git.opendaylight.org/gerrit/#/q/11e0346>`_
  `ENIUS-104 <https://jira.opendaylight.org/browse/ENIUS-104>`_
  : GENIUS-104 Genius auto-tz: use local_ip for TEP IP
* `d2a101f <https://git.opendaylight.org/gerrit/#/q/d2a101f>`_
  `NETVIRT-659 <https://jira.opendaylight.org/browse/NETVIRT-659>`_
  : Bug 8400 - ACL changes doesn't affect the existing connections
* `46f08eb <https://git.opendaylight.org/gerrit/#/q/46f08eb>`_
  `ENIUS-102 <https://jira.opendaylight.org/browse/ENIUS-102>`_
  : GENIUS-102: interface manager: use transaction manager
* `e3a50c1 <https://git.opendaylight.org/gerrit/#/q/e3a50c1>`_
  : Bug 8998 - ping to TOR vm fails post vm migration
* `3c08713 <https://git.opendaylight.org/gerrit/#/q/3c08713>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Fix possible transaction leak in ItmInternalTunnelDeleteWorker
* `f2c22a4 <https://git.opendaylight.org/gerrit/#/q/f2c22a4>`_
  `ENIUS-86 <https://jira.opendaylight.org/browse/ENIUS-86>`_
  : GENIUS-86 : LockManager fixes
* `916c28a <https://git.opendaylight.org/gerrit/#/q/916c28a>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Fix bad transaction leak in ItmInternalTunnelAddWorker
* `0b7d468 <https://git.opendaylight.org/gerrit/#/q/0b7d468>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Add ReadWriteTransaction support
* `5fdd8ec <https://git.opendaylight.org/gerrit/#/q/5fdd8ec>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : ManagedTransactionRunner utility to help close transactions
* `1427ea2 <https://git.opendaylight.org/gerrit/#/q/1427ea2>`_
  : Log cleanup in InterfaceStateListener
* `ae12625 <https://git.opendaylight.org/gerrit/#/q/ae12625>`_
  : Remove unnecessary log in FlowBasedServicesInterfaceStateListener
* `5b86cf0 <https://git.opendaylight.org/gerrit/#/q/5b86cf0>`_
  : Remove usage of runOnlyInLeaderNode for InterfaceConfigListener
* `107e172 <https://git.opendaylight.org/gerrit/#/q/107e172>`_
  : Ignore flaky testMultithreadedIdAllocationFromReleasedIds() test
* `1e6f114 <https://git.opendaylight.org/gerrit/#/q/1e6f114>`_
  : Fix too long service binding INFO logs
* `6468ee8 <https://git.opendaylight.org/gerrit/#/q/6468ee8>`_
  : AsyncDataTreeChangeListenerBase Thread with name of subclass


integration/distribution
------------------------
* `167465f <https://git.opendaylight.org/gerrit/#/q/167465f>`_
  : Move all netconf features to not compatible


lispflowmapping
---------------
* `4d9a7cf <https://git.opendaylight.org/gerrit/#/q/4d9a7cf>`_
  : Increase some of the integration test timers
* `9bcff5c <https://git.opendaylight.org/gerrit/#/q/9bcff5c>`_
  `LISPMAP-168 <https://jira.opendaylight.org/browse/LISPMAP-168>`_
  : Bug 9171: Fix lookup when first result is expired
* `c2c3d42 <https://git.opendaylight.org/gerrit/#/q/c2c3d42>`_
  `LISPMAP-165 <https://jira.opendaylight.org/browse/LISPMAP-165>`_
  : Bug 9116: Fix negative mapping handling
* `52476fe <https://git.opendaylight.org/gerrit/#/q/52476fe>`_
  `LISPMAP-165 <https://jira.opendaylight.org/browse/LISPMAP-165>`_
  : Bug 9116: Move notification logic to MappingSystem
* `3daa4ca <https://git.opendaylight.org/gerrit/#/q/3daa4ca>`_
  `LISPMAP-165 <https://jira.opendaylight.org/browse/LISPMAP-165>`_
  : Bug 9116: SMR children of a prefix too
* `bff533f <https://git.opendaylight.org/gerrit/#/q/bff533f>`_
  `LISPMAP-165 <https://jira.opendaylight.org/browse/LISPMAP-165>`_
  : Bug 9116: Add getChildPrefixes() method to caches
* `54d5e14 <https://git.opendaylight.org/gerrit/#/q/54d5e14>`_
  `LISPMAP-173 <https://jira.opendaylight.org/browse/LISPMAP-173>`_
  : Fix NPE in MappingSystem#removeMapping()
* `b2f8759 <https://git.opendaylight.org/gerrit/#/q/b2f8759>`_
  `LISPMAP-171 <https://jira.opendaylight.org/browse/LISPMAP-171>`_
  : Bug 9311: Remove expired mappings before printing


mdsal
-----
* `13c0d0e <https://git.opendaylight.org/gerrit/#/q/13c0d0e>`_
  `CONTROLLER-1812 <https://jira.opendaylight.org/browse/CONTROLLER-1812>`_
  : Fix infinite loop on cancel transaction
* `26d2a37 <https://git.opendaylight.org/gerrit/#/q/26d2a37>`_
  : Fix type ordering assumptions
* `7e56e93 <https://git.opendaylight.org/gerrit/#/q/7e56e93>`_
  : Cache group replacement pattern
* `072b644 <https://git.opendaylight.org/gerrit/#/q/072b644>`_
  : Fix YangTemplate key statement generation
* `dd3a876 <https://git.opendaylight.org/gerrit/#/q/dd3a876>`_
  `MDSAL-269 <https://jira.opendaylight.org/browse/MDSAL-269>`_
  : MDSAL-269: fix missing identityref union members
* `2c0f88f <https://git.opendaylight.org/gerrit/#/q/2c0f88f>`_
  `YANGTOOLS-424 <https://jira.opendaylight.org/browse/YANGTOOLS-424>`_
  : Lookup leaf key methods in parents
* `076dcd0 <https://git.opendaylight.org/gerrit/#/q/076dcd0>`_
  `MDSAL-298 <https://jira.opendaylight.org/browse/MDSAL-298>`_
  : MDSAL-298: properly handle unkeyed lists
* `dcd3e44 <https://git.opendaylight.org/gerrit/#/q/dcd3e44>`_
  : Add DataTreeIdentifier.toString()
* `bf6e231 <https://git.opendaylight.org/gerrit/#/q/bf6e231>`_
  `MDSAL-302 <https://jira.opendaylight.org/browse/MDSAL-302>`_
  : MDSAL-302: make sure uses+augment works in RPCs
* `3519f03 <https://git.opendaylight.org/gerrit/#/q/3519f03>`_
  : Share pre-generated non-verbose string


netconf
-------
* `554a1d7 <https://git.opendaylight.org/gerrit/#/q/554a1d7>`_
  `NETCONF-494 <https://jira.opendaylight.org/browse/NETCONF-494>`_
  : NETCONF-494: use RFC7951 JSON codecs
* `ef38783 <https://git.opendaylight.org/gerrit/#/q/ef38783>`_
  : Close nested JSON writers
* `07564c1 <https://git.opendaylight.org/gerrit/#/q/07564c1>`_
  `NETCONF-506 <https://jira.opendaylight.org/browse/NETCONF-506>`_
  : NETCONF-506: fix YII deserialization in FilterContentValidator
* `90de7dd <https://git.opendaylight.org/gerrit/#/q/90de7dd>`_
  `NETCONF-505 <https://jira.opendaylight.org/browse/NETCONF-505>`_
  : NETCONF-505: fix decoding of URLs with external leafref
* `7244590 <https://git.opendaylight.org/gerrit/#/q/7244590>`_
  : Set schemas to global context
* `6fd37e4 <https://git.opendaylight.org/gerrit/#/q/6fd37e4>`_
  : Add missing 'Path' annotation in jax-rs implementations for REST services
* `1423916 <https://git.opendaylight.org/gerrit/#/q/1423916>`_
  : Manual cherrypicks from oxygen
* `92de42e <https://git.opendaylight.org/gerrit/#/q/92de42e>`_
  : Fix KeyPairProvider initialization in NetconfSshServerProvider
* `7edd9c6 <https://git.opendaylight.org/gerrit/#/q/7edd9c6>`_
  : Add missing flush() on buffered writer.


netvirt
-------
* `c677a25 <https://git.opendaylight.org/gerrit/#/q/c677a25>`_
  `NETVIRT-1009 <https://jira.opendaylight.org/browse/NETVIRT-1009>`_
  : NETVIRT-1009 - Disable netvirt dynamic tunnels
* `1917820 <https://git.opendaylight.org/gerrit/#/q/1917820>`_
  `NETVIRT-970 <https://jira.opendaylight.org/browse/NETVIRT-970>`_
  : NETVIRT-970: IPv6 Cluster Support
* `193ee4c <https://git.opendaylight.org/gerrit/#/q/193ee4c>`_
  `NETVIRT-984 <https://jira.opendaylight.org/browse/NETVIRT-984>`_
  : NETVIRT-984: Fix of issue that l2gw connection creation failed in L2GW HA environment.
* `cf2211f <https://git.opendaylight.org/gerrit/#/q/cf2211f>`_
  `NETVIRT-1044 <https://jira.opendaylight.org/browse/NETVIRT-1044>`_
  : NETVIRT-1044  fix for Exception in karaf when delete neutron port
* `9091939 <https://git.opendaylight.org/gerrit/#/q/9091939>`_
  : Include AClStatefulTest
* `63ea9e7 <https://git.opendaylight.org/gerrit/#/q/63ea9e7>`_
  : Minor: fix two log statements
* `551ea3e <https://git.opendaylight.org/gerrit/#/q/551ea3e>`_
  `NETVIRT-1030 <https://jira.opendaylight.org/browse/NETVIRT-1030>`_
  : NETVIRT-1030 Unbinding elan service during interface state change
* `64c70bc <https://git.opendaylight.org/gerrit/#/q/64c70bc>`_
  `NETVIRT-1063 <https://jira.opendaylight.org/browse/NETVIRT-1063>`_
  : NETVIRT-1063 SNAT flows fails to install sporadically(conntrack SNAT)
* `89573a3 <https://git.opendaylight.org/gerrit/#/q/89573a3>`_
  `NETVIRT-1047 <https://jira.opendaylight.org/browse/NETVIRT-1047>`_
  : NETVIRT-1047 : On vm subnet delete from a router SG flows are not updated with elan id
* `216a424 <https://git.opendaylight.org/gerrit/#/q/216a424>`_
  `NETVIRT-1065 <https://jira.opendaylight.org/browse/NETVIRT-1065>`_
  : NETVIRT-1065 Handle new bridges
* `549f5cc <https://git.opendaylight.org/gerrit/#/q/549f5cc>`_
  `NETVIRT-1038 <https://jira.opendaylight.org/browse/NETVIRT-1038>`_
  : NETVIRT-1038 Fix bind logic in policymgr
* `411b86c <https://git.opendaylight.org/gerrit/#/q/411b86c>`_
  : Log level and message updated
* `8550df5 <https://git.opendaylight.org/gerrit/#/q/8550df5>`_
  `NETVIRT-659 <https://jira.opendaylight.org/browse/NETVIRT-659>`_
  : Bug 8400 - ACL changes doesn't affect the existing connections
* `f53dbd9 <https://git.opendaylight.org/gerrit/#/q/f53dbd9>`_
  : Exclude AClStatefulTest
* `32d25c7 <https://git.opendaylight.org/gerrit/#/q/32d25c7>`_
  : Disable building policyservice
* `a2adc1e <https://git.opendaylight.org/gerrit/#/q/a2adc1e>`_
  `NETVIRT-916 <https://jira.opendaylight.org/browse/NETVIRT-916>`_
  : Fix ConflictingModificationAppliedException with 3 retries
* `b2dd158 <https://git.opendaylight.org/gerrit/#/q/b2dd158>`_
  `NETVIRT-968 <https://jira.opendaylight.org/browse/NETVIRT-968>`_
  : NETVIRT-968	 : Conntrack SNAT fails in a cluster setup.
* `db733f4 <https://git.opendaylight.org/gerrit/#/q/db733f4>`_
  : Fix broken build due to ipv6service/shell POM version mistake in back-port
* `878ffe7 <https://git.opendaylight.org/gerrit/#/q/878ffe7>`_
  `NETVIRT-1023 <https://jira.opendaylight.org/browse/NETVIRT-1023>`_
  : NETVIRT-1023 - OptimisticLockFailedException: infrautils.jobcoordinator-impl
* `26f34ab <https://git.opendaylight.org/gerrit/#/q/26f34ab>`_
  : Shell Commands to Display Ipv6Service Cache
* `b7eca08 <https://git.opendaylight.org/gerrit/#/q/b7eca08>`_
  : FIXUP ipVersionChoice in case of mutiple add of ipversion
* `4882af4 <https://git.opendaylight.org/gerrit/#/q/4882af4>`_
  `NETVIRT-981 <https://jira.opendaylight.org/browse/NETVIRT-981>`_
  : NETVIRT-981 CSIT Sporadic failures - snat conntrack job failing many tempest scenario tests Changes are made to avoid stale entries when an external network is deleted. https://jira.opendaylight.org/browse/NETVIRT-981
* `ee289b5 <https://git.opendaylight.org/gerrit/#/q/ee289b5>`_
  : Net-odl full-sync. Set router ext gw MAC
* `704ccc9 <https://git.opendaylight.org/gerrit/#/q/704ccc9>`_
  : Bug9298 : ModifiedNodeDoesNotExistException for FIP
* `30010ad <https://git.opendaylight.org/gerrit/#/q/30010ad>`_
  `NETVIRT-959 <https://jira.opendaylight.org/browse/NETVIRT-959>`_
  : Bug 9297 : Adjacency doesn't exist exception fo FIP
* `470ddef <https://git.opendaylight.org/gerrit/#/q/470ddef>`_
  `NETVIRT-961 <https://jira.opendaylight.org/browse/NETVIRT-961>`_
  : Bug 9299 - In conntrack SNAT Vpn to dpn maps fails to update when a subnet is added/removed
* `c93bf15 <https://git.opendaylight.org/gerrit/#/q/c93bf15>`_
  : 21->nat-group flow is not present on OVS after “upgrade”
* `9608f13 <https://git.opendaylight.org/gerrit/#/q/9608f13>`_
  `NETVIRT-999 <https://jira.opendaylight.org/browse/NETVIRT-999>`_
  : NETVIRT-999 - Interface leak when subnet deleted
* `0617051 <https://git.opendaylight.org/gerrit/#/q/0617051>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Fix bad transaction leak in InterfaceStateChangeListener
* `5111565 <https://git.opendaylight.org/gerrit/#/q/5111565>`_
  `NETVIRT-1000 <https://jira.opendaylight.org/browse/NETVIRT-1000>`_
  : NETVIRT-1000: protect VpnInterfaceManager::remove
* `3fd246f <https://git.opendaylight.org/gerrit/#/q/3fd246f>`_
  `NETVIRT-1000 <https://jira.opendaylight.org/browse/NETVIRT-1000>`_
  : NETVIRT-1000: protect VrfEntryListener (partially)
* `80b1046 <https://git.opendaylight.org/gerrit/#/q/80b1046>`_
  `NETVIRT-1000 <https://jira.opendaylight.org/browse/NETVIRT-1000>`_
  : NETVIRT-1000: protect TunnelEndPointChangeListener
* `69860fe <https://git.opendaylight.org/gerrit/#/q/69860fe>`_
  `NETVIRT-1000 <https://jira.opendaylight.org/browse/NETVIRT-1000>`_
  : NETVIRT-1000: protect manageRemoteRouteOnDPN
* `2ae6695 <https://git.opendaylight.org/gerrit/#/q/2ae6695>`_
  `NETVIRT-1000 <https://jira.opendaylight.org/browse/NETVIRT-1000>`_
  : NETVIRT-1000: protect handleNeutronPortUpdated
* `092e0c2 <https://git.opendaylight.org/gerrit/#/q/092e0c2>`_
  `NETVIRT-1000 <https://jira.opendaylight.org/browse/NETVIRT-1000>`_
  : NETVIRT-1000: protect handleNeutronPortCreated
* `acfee9f <https://git.opendaylight.org/gerrit/#/q/acfee9f>`_
  : Unbind and bind DHCP service as part of state.
* `b872ab0 <https://git.opendaylight.org/gerrit/#/q/b872ab0>`_
  : Updated two display commands provided by 6wind
* `d0d88d9 <https://git.opendaylight.org/gerrit/#/q/d0d88d9>`_
  `NETVIRT-989 <https://jira.opendaylight.org/browse/NETVIRT-989>`_
  : BugId: NETVIRT-989 TEP not deleted when subnet is deleted
* `f8d983f <https://git.opendaylight.org/gerrit/#/q/f8d983f>`_
  : Updated to call bind/unbind from ACL interface state listener to avoid stale flows during VM migration
* `fe23e50 <https://git.opendaylight.org/gerrit/#/q/fe23e50>`_
  : Add .fbExcludeFilterFile to .gitignore
* `51ee457 <https://git.opendaylight.org/gerrit/#/q/51ee457>`_
  `NETVIRT-937 <https://jira.opendaylight.org/browse/NETVIRT-937>`_
  : NETVIRT-937: Fix NPE in ElanInstanceManager
* `53cf346 <https://git.opendaylight.org/gerrit/#/q/53cf346>`_
  `NETVIRT-886 <https://jira.opendaylight.org/browse/NETVIRT-886>`_
  : Fix bad transaction leak in StatisticsImpl
* `2c7bc8d <https://git.opendaylight.org/gerrit/#/q/2c7bc8d>`_
  `NETVIRT-886 <https://jira.opendaylight.org/browse/NETVIRT-886>`_
  : Fix bad transaction leak in NeutronvpnManager
* `03355ca <https://git.opendaylight.org/gerrit/#/q/03355ca>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Fix bad transaction leak in VpnInterfaceManager


neutron
-------
* `367cc0d <https://git.opendaylight.org/gerrit/#/q/367cc0d>`_
  : Remove MOXyJsonProvider from resources


openflowplugin
--------------
* `ea0a150 <https://git.opendaylight.org/gerrit/#/q/ea0a150>`_
  `OPNFLWPLUG-974 <https://jira.opendaylight.org/browse/OPNFLWPLUG-974>`_
  : OPNFLWPLUG-974: Message deserialization failed
* `be252a0 <https://git.opendaylight.org/gerrit/#/q/be252a0>`_
  `OPNFLWPLUG-929 <https://jira.opendaylight.org/browse/OPNFLWPLUG-929>`_
  : OPNFLWPLUG-929 : Remove deprecated guava library
* `676d4be <https://git.opendaylight.org/gerrit/#/q/676d4be>`_
  : Fix checkstyle violations in openflow-protocol-impl - part 11
* `ad1b857 <https://git.opendaylight.org/gerrit/#/q/ad1b857>`_
  : Fix checkstyle violations in openflow-protocol-impl - part 10
* `fd770b4 <https://git.opendaylight.org/gerrit/#/q/fd770b4>`_
  : Fix checkstyle violations in openflow-protocol-impl - part 9
* `772a728 <https://git.opendaylight.org/gerrit/#/q/772a728>`_
  : Fix checkstyle violations in openflow-protocol-impl - part 8
* `0f2b7cc <https://git.opendaylight.org/gerrit/#/q/0f2b7cc>`_
  : Fix checkstyle violations in openflow-protocol-impl - part 7
* `d68d481 <https://git.opendaylight.org/gerrit/#/q/d68d481>`_
  : Fix checkstyle violations in openflow-protocol-impl - part 6
* `49064d8 <https://git.opendaylight.org/gerrit/#/q/49064d8>`_
  : Fix checkstyle violations in openflow-protocol-impl - part 5
* `46234f4 <https://git.opendaylight.org/gerrit/#/q/46234f4>`_
  : Fix checkstyle violations in openflow-protocol-impl - part 4
* `038f182 <https://git.opendaylight.org/gerrit/#/q/038f182>`_
  : Fix checkstyle violations in openflow-protocol-impl - part 3
* `fe3bbd6 <https://git.opendaylight.org/gerrit/#/q/fe3bbd6>`_
  : Fix checkstyle violations in openflow-protocol-impl - part 2
* `d6b81a6 <https://git.opendaylight.org/gerrit/#/q/d6b81a6>`_
  : Fix checkstyle violations in openflow-protocol-impl - part 1
* `1c59df7 <https://git.opendaylight.org/gerrit/#/q/1c59df7>`_
  : Fix checkstyle violations in openflowjava-util
* `9a64b11 <https://git.opendaylight.org/gerrit/#/q/9a64b11>`_
  : Fix checkstyle violations in openflow-protocol-api
* `bacfd45 <https://git.opendaylight.org/gerrit/#/q/bacfd45>`_
  `OPNFLWPLUG-963 <https://jira.opendaylight.org/browse/OPNFLWPLUG-963>`_
  : OPNFLWPLUG-963 : Updating ports delete reason from OFP:
* `2c344e9 <https://git.opendaylight.org/gerrit/#/q/2c344e9>`_
  `OPNFLWPLUG-929 <https://jira.opendaylight.org/browse/OPNFLWPLUG-929>`_
  : OPNFLWPLUG-929 : Remove deprecated guava library
* `6a612a8 <https://git.opendaylight.org/gerrit/#/q/6a612a8>`_
  `OPNFLWPLUG-929 <https://jira.opendaylight.org/browse/OPNFLWPLUG-929>`_
  : OPNFLWPLUG-929 : Remove deprecated guava library
* `af24eaf <https://git.opendaylight.org/gerrit/#/q/af24eaf>`_
  `OPNFLWPLUG-927 <https://jira.opendaylight.org/browse/OPNFLWPLUG-927>`_
  : Remove deprecated EOS services
* `4f86148 <https://git.opendaylight.org/gerrit/#/q/4f86148>`_
  `OPNFLWPLUG-929 <https://jira.opendaylight.org/browse/OPNFLWPLUG-929>`_
  : OPNFLWPLUG-929 : Remove deprecated guava library in openflowplugin-impl
* `e5db15b <https://git.opendaylight.org/gerrit/#/q/e5db15b>`_
  `OPNFLWPLUG-929 <https://jira.opendaylight.org/browse/OPNFLWPLUG-929>`_
  : OPNFLWPLUG-929 : Remove deprecated guava library in applications
* `af62c04 <https://git.opendaylight.org/gerrit/#/q/af62c04>`_
  `OPNFLWPLUG-929 <https://jira.opendaylight.org/browse/OPNFLWPLUG-929>`_
  : OPNFLWPLUG-929 : Remove deprecated guava library
* `4d9aab2 <https://git.opendaylight.org/gerrit/#/q/4d9aab2>`_
  `OPNFLWPLUG-953 <https://jira.opendaylight.org/browse/OPNFLWPLUG-953>`_
  : OPNFLWPLUG-953: Property change listener for lldp discovery config properties
* `a630ddc <https://git.opendaylight.org/gerrit/#/q/a630ddc>`_
  : Minor: Remove 3 un-used private methods found by FindBugs
* `4b1c201 <https://git.opendaylight.org/gerrit/#/q/4b1c201>`_
  : Rename addDeleteOperationTotTxChain => addDeleteOperationToTxChain
* `6779b39 <https://git.opendaylight.org/gerrit/#/q/6779b39>`_
  : Make HandshakeManagerImpl more thread-safe, as recommended by FindBugs
* `e4901a7 <https://git.opendaylight.org/gerrit/#/q/e4901a7>`_
  : Make two classes _static_ inner classes, as recommended by FindBugs
* `4e0c2ed <https://git.opendaylight.org/gerrit/#/q/4e0c2ed>`_
  : Suppress FindBugs null analysis warning in FlowDescriptorDtoTest
* `ab0c9be <https://git.opendaylight.org/gerrit/#/q/ab0c9be>`_
  : Suppress FindBugs concurrency warning which is wrong
* `07ca19c <https://git.opendaylight.org/gerrit/#/q/07ca19c>`_
  : Fix FindBugs null analysis problems due to wrong @Nullable
* `fd8972a <https://git.opendaylight.org/gerrit/#/q/fd8972a>`_
  : FindBugs enforcement in module openflowplugin-api/
* `c1b6a18 <https://git.opendaylight.org/gerrit/#/q/c1b6a18>`_
  : FindBugs enforcement in module common/
* `670f198 <https://git.opendaylight.org/gerrit/#/q/670f198>`_
  : Checkstyle enforcement (and required fixes) in module common/
* `ce2f597 <https://git.opendaylight.org/gerrit/#/q/ce2f597>`_
  `OPNFLWPLUG-961 <https://jira.opendaylight.org/browse/OPNFLWPLUG-961>`_
  : Fix possible transaction leak in StatisticsGatheringUtils
* `06fda59 <https://git.opendaylight.org/gerrit/#/q/06fda59>`_
  : Clean up in module reconciliation-framework
* `6f53d9f <https://git.opendaylight.org/gerrit/#/q/6f53d9f>`_
  : Spec: Reconciliation framework
* `21e3d4f <https://git.opendaylight.org/gerrit/#/q/21e3d4f>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix codestyle
* `7b88d45 <https://git.opendaylight.org/gerrit/#/q/7b88d45>`_
  : Fix issues related to checkstyle enforcement on openflow-impl module
* `e737272 <https://git.opendaylight.org/gerrit/#/q/e737272>`_
  : Fix issues related to checkstyle enforcement
* `f623c85 <https://git.opendaylight.org/gerrit/#/q/f623c85>`_
  : Checkstyle enforcement.
* `3f4c1b9 <https://git.opendaylight.org/gerrit/#/q/3f4c1b9>`_
  : Add Docs for Openflowplugin
* `ca1bb12 <https://git.opendaylight.org/gerrit/#/q/ca1bb12>`_
  : Fix checkstyle issues in openflowplugin-impl module
* `066e0a9 <https://git.opendaylight.org/gerrit/#/q/066e0a9>`_
  `OPNFLWPLUG-931 <https://jira.opendaylight.org/browse/OPNFLWPLUG-931>`_
  : Remove Itemlifecycle
* `4b673cf <https://git.opendaylight.org/gerrit/#/q/4b673cf>`_
  `OPNFLWPLUG-918 <https://jira.opendaylight.org/browse/OPNFLWPLUG-918>`_
  : Gather statistics in separate thread
* `6e85e2c <https://git.opendaylight.org/gerrit/#/q/6e85e2c>`_
  : Fix issues related to checkstyle enforcement
* `d87bf30 <https://git.opendaylight.org/gerrit/#/q/d87bf30>`_
  : Cleanup
* `23417a3 <https://git.opendaylight.org/gerrit/#/q/23417a3>`_
  `OPNFLWPLUG-898 <https://jira.opendaylight.org/browse/OPNFLWPLUG-898>`_
  : Fix checkstyle warnings for statistics package


ovsdb
-----
* `7a5c1f1 <https://git.opendaylight.org/gerrit/#/q/7a5c1f1>`_
  `OVSDB-440 <https://jira.opendaylight.org/browse/OVSDB-440>`_
  : OVSDB-440: Fixes detecting SSL mode with OVSDB nodes
* `dc06cf7 <https://git.opendaylight.org/gerrit/#/q/dc06cf7>`_
  : fix intermittent junit tests failures
* `04c8e88 <https://git.opendaylight.org/gerrit/#/q/04c8e88>`_
  `OVSDB-435 <https://jira.opendaylight.org/browse/OVSDB-435>`_
  : OVSDB-435: fix transaction leak in BridgeOperationState
* `09634e2 <https://git.opendaylight.org/gerrit/#/q/09634e2>`_
  `OVSDB-432 <https://jira.opendaylight.org/browse/OVSDB-432>`_
  : OVSDB-432: Add method to restart OVSDB server and limit retry times and timeout
* `91e288a <https://git.opendaylight.org/gerrit/#/q/91e288a>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Fix possible transaction leak in BridgeOperationalState
* `d47b537 <https://git.opendaylight.org/gerrit/#/q/d47b537>`_
  `OVSDB-425 <https://jira.opendaylight.org/browse/OVSDB-425>`_
  : Fix transaction leak in BridgeConfigReconciliationTask
* `33fbf80 <https://git.opendaylight.org/gerrit/#/q/33fbf80>`_
  `NETVIRT-985 <https://jira.opendaylight.org/browse/NETVIRT-985>`_
  : Fix transaction leak in OvsdbConnectionManager
* `8f01bcd <https://git.opendaylight.org/gerrit/#/q/8f01bcd>`_
  `OVSDB-406 <https://jira.opendaylight.org/browse/OVSDB-406>`_
  : bug 8029 handle expired in transit entries


yangtools
---------
* `3806c46 <https://git.opendaylight.org/gerrit/#/q/3806c46>`_
  : Fix invalid enum definition error string
* `64a3618 <https://git.opendaylight.org/gerrit/#/q/64a3618>`_
  `YANGTOOLS-845 <https://jira.opendaylight.org/browse/YANGTOOLS-845>`_
  : Correct double-quoted string whitespace trimming
* `94f5aaa <https://git.opendaylight.org/gerrit/#/q/94f5aaa>`_
  : Allow shared JSONNNSWriter use
* `dd6442e <https://git.opendaylight.org/gerrit/#/q/dd6442e>`_
  : Handling empty text nodes
* `d027a59 <https://git.opendaylight.org/gerrit/#/q/d027a59>`_
  `YANGTOOLS-841 <https://jira.opendaylight.org/browse/YANGTOOLS-841>`_
  : YANGTOOLS-841: Fix SchemaContextUtil.findNodeInSchemaContext()
* `d0e74b9 <https://git.opendaylight.org/gerrit/#/q/d0e74b9>`_
  `YANGTOOLS-766 <https://jira.opendaylight.org/browse/YANGTOOLS-766>`_
  : YANGTOOLS-766: add RFC7951JSONInstanceIdentifierCodec
* `c162fb4 <https://git.opendaylight.org/gerrit/#/q/c162fb4>`_
  `YANGTOOLS-766 <https://jira.opendaylight.org/browse/YANGTOOLS-766>`_
  : YANGTOOLS-766: introduce JSONCodecFactorySupplier
* `e0b9180 <https://git.opendaylight.org/gerrit/#/q/e0b9180>`_
  : Bump odlparent references to 2.0.5
* `ae5d241 <https://git.opendaylight.org/gerrit/#/q/ae5d241>`_
  `YANGTOOLS-804 <https://jira.opendaylight.org/browse/YANGTOOLS-804>`_
  : BUG 8927: Netconf response payload fails to render in JSON
* `47e6079 <https://git.opendaylight.org/gerrit/#/q/47e6079>`_
  : Add bundle packaging for yang-data-transform

