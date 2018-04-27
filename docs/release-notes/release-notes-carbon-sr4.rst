Carbon-SR4 Release Notes
========================

This page details changes and bug fixes between the Carbon Stability Release 3 (Carbon-SR3)
and the Carbon Stability Release 4 (Carbon-SR4) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------

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
* infrautils
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
* tsdr
* ttp
* unimgr
* usc

aaa
---
* `320971a <https://git.opendaylight.org/gerrit/#/q/320971a>`_
  : Add Karaf build profile
* `324c296 <https://git.opendaylight.org/gerrit/#/q/324c296>`_
  `AAA-167 <https://jira.opendaylight.org/browse/AAA-167>`_
  : AAA-167:  Fix AAA test cert


alto
----
* `1de27c7 <https://git.opendaylight.org/gerrit/#/q/1de27c7>`_
  : Add Karaf build profile


bgpcep
------
* `a6f2f54 <https://git.opendaylight.org/gerrit/#/q/a6f2f54>`_
  : Use byte[].clone()
* `20d3481 <https://git.opendaylight.org/gerrit/#/q/20d3481>`_
  `PCEP-786 <https://jira.opendaylight.org/browse/PCEP-786>`_
  : Use dedicated executor for BGPCEP Stats
* `05a24c4 <https://git.opendaylight.org/gerrit/#/q/05a24c4>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `790b06a <https://git.opendaylight.org/gerrit/#/q/790b06a>`_
  : Remove obsolete Maven Site configuration
* `873e63b <https://git.opendaylight.org/gerrit/#/q/873e63b>`_
  `PCEP-740 <https://jira.opendaylight.org/browse/PCEP-740>`_
  : BGPCEP-740: Fix logic for MED comparison in BGP best path selection
* `2c93558 <https://git.opendaylight.org/gerrit/#/q/2c93558>`_
  : Fix model compliance
* `157a73a <https://git.opendaylight.org/gerrit/#/q/157a73a>`_
  `PCEP-732 <https://jira.opendaylight.org/browse/PCEP-732>`_
  : BGPCEP-732:  Pass IpAddress as BGP Peer identifier
* `175db42 <https://git.opendaylight.org/gerrit/#/q/175db42>`_
  `PCEP-770 <https://jira.opendaylight.org/browse/PCEP-770>`_
  : BGPCEP-770: Lock file before processing
* `4e74ed4 <https://git.opendaylight.org/gerrit/#/q/4e74ed4>`_
  `PCEP-774 <https://jira.opendaylight.org/browse/PCEP-774>`_
  : BGPCEP-774: Improver error message when missing AFI/SAFI
* `31b7930 <https://git.opendaylight.org/gerrit/#/q/31b7930>`_
  `PCEP-764 <https://jira.opendaylight.org/browse/PCEP-764>`_
  : BGPCEP-764: Use full Ipv6 form under StrictBGPPeerRegistry
* `a88e3bb <https://git.opendaylight.org/gerrit/#/q/a88e3bb>`_
  `PCEP-739 <https://jira.opendaylight.org/browse/PCEP-739>`_
  : BGPCEP-739: Fix  "raced with transaction PingPongTransaction"
* `55ab216 <https://git.opendaylight.org/gerrit/#/q/55ab216>`_
  `PCEP-760 <https://jira.opendaylight.org/browse/PCEP-760>`_
  : BGPCEP-760: Fix Dead lock
* `0b48f10 <https://git.opendaylight.org/gerrit/#/q/0b48f10>`_
  : Document path-id reserved value
* `fea02a0 <https://git.opendaylight.org/gerrit/#/q/fea02a0>`_
  `PCEP-742 <https://jira.opendaylight.org/browse/PCEP-742>`_
  : BGPCEP-742 Fix BGP NPE filter null BGP State
* `757e290 <https://git.opendaylight.org/gerrit/#/q/757e290>`_
  `PCEP-672 <https://jira.opendaylight.org/browse/PCEP-672>`_
  : BGPCEP-672: Fix key storage un adj-rib-out
* `c33474f <https://git.opendaylight.org/gerrit/#/q/c33474f>`_
  `PCEP-737 <https://jira.opendaylight.org/browse/PCEP-737>`_
  : BGPCEP-737: Implement BMP client reconnection
* `8c759e6 <https://git.opendaylight.org/gerrit/#/q/8c759e6>`_
  `PCEP-748 <https://jira.opendaylight.org/browse/PCEP-748>`_
  : BGPCEP-748: Fix AFI/SAFI
* `4cf4e8c <https://git.opendaylight.org/gerrit/#/q/4cf4e8c>`_
  `PCEP-736 <https://jira.opendaylight.org/browse/PCEP-736>`_
  : BGPCEP-736: BMP Testtool retry connection
* `77db3ac <https://git.opendaylight.org/gerrit/#/q/77db3ac>`_
  `PCEP-758 <https://jira.opendaylight.org/browse/PCEP-758>`_
  : BGPCEP-758: Use random ip for Pcc mock tests


controller
----------
* `489279a <https://git.opendaylight.org/gerrit/#/q/489279a>`_
  `CONTROLLER-1825 <https://jira.opendaylight.org/browse/CONTROLLER-1825>`_
  : Release permits as transactions are replayed
* `d6a2de2 <https://git.opendaylight.org/gerrit/#/q/d6a2de2>`_
  `CONTROLLER-1814 <https://jira.opendaylight.org/browse/CONTROLLER-1814>`_
  : Fix TransactionContextWrapper limiter accounting
* `621482f <https://git.opendaylight.org/gerrit/#/q/621482f>`_
  : Move OperationLimiter.acquire() warnings to callers
* `73b138d <https://git.opendaylight.org/gerrit/#/q/73b138d>`_
  `MDSAL-298 <https://jira.opendaylight.org/browse/MDSAL-298>`_
  : MDSAL-298: properly handle unkeyed lists
* `b8716b0 <https://git.opendaylight.org/gerrit/#/q/b8716b0>`_
  : Do not inline javax.annotation
* `11aa17d <https://git.opendaylight.org/gerrit/#/q/11aa17d>`_
  `CONTROLLER-1814 <https://jira.opendaylight.org/browse/CONTROLLER-1814>`_
  : Fix RemoteTransactionContext limiter accounting
* `478f345 <https://git.opendaylight.org/gerrit/#/q/478f345>`_
  : Fixup test referring to description statement
* `efff2ad <https://git.opendaylight.org/gerrit/#/q/efff2ad>`_
  : Fix intermittent RemoteRpcRegistryMXBeanImplTest failures
* `b1b86bd <https://git.opendaylight.org/gerrit/#/q/b1b86bd>`_
  : register RemoteRpcRegistryMXBean
* `bec1436 <https://git.opendaylight.org/gerrit/#/q/bec1436>`_
  : Fix ModificationType.APPEARED mapping
* `32d315b <https://git.opendaylight.org/gerrit/#/q/32d315b>`_
  : Fix ReadyLocalTransactionSerializer
* `84bd1ca <https://git.opendaylight.org/gerrit/#/q/84bd1ca>`_
  : Guards iteration against concurrent modification
* `25831b6 <https://git.opendaylight.org/gerrit/#/q/25831b6>`_
  `CONTROLLER-1802 <https://jira.opendaylight.org/browse/CONTROLLER-1802>`_
  : ConcurrentDOMDataBroker LOG debug instead of error
* `dd05c1f <https://git.opendaylight.org/gerrit/#/q/dd05c1f>`_
  `CONTROLLER-1812 <https://jira.opendaylight.org/browse/CONTROLLER-1812>`_
  : Fix infinite loop on cancel transaction


genius
------
* `9c9d9a2 <https://git.opendaylight.org/gerrit/#/q/9c9d9a2>`_
  `ENIUS-103 <https://jira.opendaylight.org/browse/ENIUS-103>`_
  : GENIUS-103: use a callback to start LLDP monitoring
* `4ef9379 <https://git.opendaylight.org/gerrit/#/q/4ef9379>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `b48e189 <https://git.opendaylight.org/gerrit/#/q/b48e189>`_
  : Remove obsolete Maven Site configuration
* `7139ccb <https://git.opendaylight.org/gerrit/#/q/7139ccb>`_
  : increase max time out in AbstractTestableListenerTest from 50ms to 500ms
* `fd35275 <https://git.opendaylight.org/gerrit/#/q/fd35275>`_
  `NETVIRT-1009 <https://jira.opendaylight.org/browse/NETVIRT-1009>`_
  : NETVIRT-1009 - Enable genius auto-tz
* `a1374db <https://git.opendaylight.org/gerrit/#/q/a1374db>`_
  : Handle br-int dpid update for genius auto tunnels
* `c01aa26 <https://git.opendaylight.org/gerrit/#/q/c01aa26>`_
  `ENIUS-104 <https://jira.opendaylight.org/browse/ENIUS-104>`_
  : GENIUS-104 Genius auto-tz: use local_ip for TEP IP


integration/distribution
------------------------
* `2c8a2f6 <https://git.opendaylight.org/gerrit/#/q/2c8a2f6>`_
  : Remove VTN from Carbon distribution


lispflowmapping
---------------
* `90372a0 <https://git.opendaylight.org/gerrit/#/q/90372a0>`_
  : Revert "Add Karaf build profile"
* `4f610ac <https://git.opendaylight.org/gerrit/#/q/4f610ac>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `922498c <https://git.opendaylight.org/gerrit/#/q/922498c>`_
  : Remove obsolete Maven Site configuration


mdsal
-----
* `7b7b4c9 <https://git.opendaylight.org/gerrit/#/q/7b7b4c9>`_
  : Use QName.withModule()
* `1b48126 <https://git.opendaylight.org/gerrit/#/q/1b48126>`_
  `MDSAL-335 <https://jira.opendaylight.org/browse/MDSAL-335>`_
  : Fix derived types missing pattern restrictions
* `bdce7d5 <https://git.opendaylight.org/gerrit/#/q/bdce7d5>`_
  `MDSAL-309 <https://jira.opendaylight.org/browse/MDSAL-309>`_
  : Add alternative enum assigned name mapping
* `ae32189 <https://git.opendaylight.org/gerrit/#/q/ae32189>`_
  : Share pre-generated non-verbose string
* `d9cff37 <https://git.opendaylight.org/gerrit/#/q/d9cff37>`_
  : Add DataTreeIdentifier.toString()
* `cf6c107 <https://git.opendaylight.org/gerrit/#/q/cf6c107>`_
  `YANGTOOLS-424 <https://jira.opendaylight.org/browse/YANGTOOLS-424>`_
  : Lookup leaf key methods in parents
* `23a532b <https://git.opendaylight.org/gerrit/#/q/23a532b>`_
  `MDSAL-298 <https://jira.opendaylight.org/browse/MDSAL-298>`_
  : MDSAL-298: properly handle unkeyed lists
* `e43f08f <https://git.opendaylight.org/gerrit/#/q/e43f08f>`_
  `CONTROLLER-1812 <https://jira.opendaylight.org/browse/CONTROLLER-1812>`_
  : Fix infinite loop on cancel transaction


netconf
-------
* `a6571ab <https://git.opendaylight.org/gerrit/#/q/a6571ab>`_
  `NETCONF-526 <https://jira.opendaylight.org/browse/NETCONF-526>`_
  : NETCONF-526 : edit-config payload default-operation needs to be set to default-value For the PUT/POST calls right now default-operation tag in the edit-config is set to "none". As per RFC with this value devices can reject a config operation when elements present in the request whose structure is not already present in the tree. For example a nested parent-child structure where parent structure does not yet exist yet in the tree may result in an error based on implementation. We should  leave this field out ( which will default to merge) and let the device make the right decision.
* `a279abf <https://git.opendaylight.org/gerrit/#/q/a279abf>`_
  `NETCONF-505 <https://jira.opendaylight.org/browse/NETCONF-505>`_
  : NETCONF-505: fix decoding of URLs with external leafref
* `64314de <https://git.opendaylight.org/gerrit/#/q/64314de>`_
  `NETCONF-506 <https://jira.opendaylight.org/browse/NETCONF-506>`_
  : NETCONF-506: fix YII deserialization in FilterContentValidator


netvirt
-------
* `523fc69 <https://git.opendaylight.org/gerrit/#/q/523fc69>`_
  : Switch to using lfdocs-conf to pull in theme
* `2e4261c <https://git.opendaylight.org/gerrit/#/q/2e4261c>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `b47ed5a <https://git.opendaylight.org/gerrit/#/q/b47ed5a>`_
  : Remove obsolete Maven Site configuration
* `cec5d03 <https://git.opendaylight.org/gerrit/#/q/cec5d03>`_
  `NETVIRT-1009 <https://jira.opendaylight.org/browse/NETVIRT-1009>`_
  : NETVIRT-1009 - Disable netvirt dynamic tunnels
* `3317517 <https://git.opendaylight.org/gerrit/#/q/3317517>`_
  `NETVIRT-1043 <https://jira.opendaylight.org/browse/NETVIRT-1043>`_
  : NETVIRT-1043: L3 VPN flows remain when the router unattaches from the subnet
* `902616d <https://git.opendaylight.org/gerrit/#/q/902616d>`_
  `NETVIRT-1103 <https://jira.opendaylight.org/browse/NETVIRT-1103>`_
  : NETVIRT-1103 : display issue in ip bgp vpnv4 all summary command White spaces inbetween the text was getting deleted which caused the display issue,so changing the regex in replaceAll to resolve the issue Signed-off-by: Loshmitha <loshmitha@ericsson.com>
* `d9091dd <https://git.opendaylight.org/gerrit/#/q/d9091dd>`_
  : Fix AclStatefulTest
* `6489a0b <https://git.opendaylight.org/gerrit/#/q/6489a0b>`_
  : Minor: fix two log statements
* `b7ba40c <https://git.opendaylight.org/gerrit/#/q/b7ba40c>`_
  `NETVIRT-659 <https://jira.opendaylight.org/browse/NETVIRT-659>`_
  : Bug 8400 - ACL changes doesn't affect the existing connections
* `c2267d9 <https://git.opendaylight.org/gerrit/#/q/c2267d9>`_
  `NETVIRT-984 <https://jira.opendaylight.org/browse/NETVIRT-984>`_
  : NETVIRT-984: Fix of issue that l2gw connection creation failed in L2GW HA environment.
* `a2d04f0 <https://git.opendaylight.org/gerrit/#/q/a2d04f0>`_
  `NETVIRT-1044 <https://jira.opendaylight.org/browse/NETVIRT-1044>`_
  : NETVIRT-1044  fix for Exception in karaf when delete neutron port


neutron
-------
* `a66421b <https://git.opendaylight.org/gerrit/#/q/a66421b>`_
  : Revert "Add Karaf build profile"
* `3cacce5 <https://git.opendaylight.org/gerrit/#/q/3cacce5>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile


nic
---
* `397bb0f <https://git.opendaylight.org/gerrit/#/q/397bb0f>`_
  : Remove VTN dependencies.


odlparent
---------
* `7c30203 <https://git.opendaylight.org/gerrit/#/q/7c30203>`_
  : Bump akka to 2.4.20
* `18135e1 <https://git.opendaylight.org/gerrit/#/q/18135e1>`_
  : Bump scala to 2.11.12


openflowplugin
--------------
* `6e11f06 <https://git.opendaylight.org/gerrit/#/q/6e11f06>`_
  `OPNFLWPLUG-995 <https://jira.opendaylight.org/browse/OPNFLWPLUG-995>`_
  : must use full node-connector string when writing queue stats
* `f9b5004 <https://git.opendaylight.org/gerrit/#/q/f9b5004>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `0eb9f05 <https://git.opendaylight.org/gerrit/#/q/0eb9f05>`_
  `OPNFLWPLUG-945 <https://jira.opendaylight.org/browse/OPNFLWPLUG-945>`_
  : OPNFLWPLUG-945
* `b318a06 <https://git.opendaylight.org/gerrit/#/q/b318a06>`_
  `OPNFLWPLUG-984 <https://jira.opendaylight.org/browse/OPNFLWPLUG-984>`_
  : OPNFLWPLUG-984: always use ingress node for link discovery
* `a7fba2a <https://git.opendaylight.org/gerrit/#/q/a7fba2a>`_
  `OPNFLWPLUG-983 <https://jira.opendaylight.org/browse/OPNFLWPLUG-983>`_
  : OPNFLWPLUG-983 Group and flow removal stats are not reported in order
* `70dd971 <https://git.opendaylight.org/gerrit/#/q/70dd971>`_
  `OPNFLWPLUG-952 <https://jira.opendaylight.org/browse/OPNFLWPLUG-952>`_
  : OPNFLWPLUG-952: All links disappear from the topology
* `6fb1245 <https://git.opendaylight.org/gerrit/#/q/6fb1245>`_
  `OPNFLWPLUG-958 <https://jira.opendaylight.org/browse/OPNFLWPLUG-958>`_
  : Bug : OPNFLWPLUG-958 Description : ConcurrentModificationException: at org.opendaylight.openflowplugin.impl.registry.flow.DeviceFlowRegistryImpl.getExistingKey HashBiMap throws ConcurrentModifcationException when there are modification by multiple threads. This is observed in cluster environment.
* `815bc83 <https://git.opendaylight.org/gerrit/#/q/815bc83>`_
  `OPNFLWPLUG-974 <https://jira.opendaylight.org/browse/OPNFLWPLUG-974>`_
  : OPNFLWPLUG-974: Message deserialization failed


ovsdb
-----
* `ce6ef26 <https://git.opendaylight.org/gerrit/#/q/ce6ef26>`_
  : Revert "Add Karaf build profile"
* `29c97ae <https://git.opendaylight.org/gerrit/#/q/29c97ae>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `6676239 <https://git.opendaylight.org/gerrit/#/q/6676239>`_
  : Remove obsolete Maven Site configuration


sfc
---
* `291f92b <https://git.opendaylight.org/gerrit/#/q/291f92b>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `beaa131 <https://git.opendaylight.org/gerrit/#/q/beaa131>`_
  `SFC-217 <https://jira.opendaylight.org/browse/SFC-217>`_
  : SFC-217: Fix sfc-py pep8 issues and packaging
* `2ca0f11 <https://git.opendaylight.org/gerrit/#/q/2ca0f11>`_
  `SFC-216 <https://jira.opendaylight.org/browse/SFC-216>`_
  : SFC-216: Fix exception message check for bad macs


sxp
---
* `e7059ff <https://git.opendaylight.org/gerrit/#/q/e7059ff>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile


topoprocessing
--------------
* `1ac02e3 <https://git.opendaylight.org/gerrit/#/q/1ac02e3>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `d25df58 <https://git.opendaylight.org/gerrit/#/q/d25df58>`_
  : Remove obsolete Maven Site configuration


yangtools
---------
* `6a95892 <https://git.opendaylight.org/gerrit/#/q/6a95892>`_
  `YANGTOOLS-806 <https://jira.opendaylight.org/browse/YANGTOOLS-806>`_
  : Consider submodule imports when sorting modules
* `fb17e66 <https://git.opendaylight.org/gerrit/#/q/fb17e66>`_
  : Add ModuleDependencyInfoTest
* `56ba123 <https://git.opendaylight.org/gerrit/#/q/56ba123>`_
  : Optimize QName constructor
* `275d1ae <https://git.opendaylight.org/gerrit/#/q/275d1ae>`_
  : Add YangConstants.operation{Input,Output}QName()
* `6e82e82 <https://git.opendaylight.org/gerrit/#/q/6e82e82>`_
  : Add QName.withModule(QNameModule) method
* `4099732 <https://git.opendaylight.org/gerrit/#/q/4099732>`_
  : Improve ClassLoaderUtils.loadClassWithTCCL()
* `d6b3963 <https://git.opendaylight.org/gerrit/#/q/d6b3963>`_
  `YANGTOOLS-872 <https://jira.opendaylight.org/browse/YANGTOOLS-872>`_
  : Fix leafref require-instance implementation
* `f73a7a2 <https://git.opendaylight.org/gerrit/#/q/f73a7a2>`_
  `YANGTOOLS-870 <https://jira.opendaylight.org/browse/YANGTOOLS-870>`_
  : Revert "Realign ImmutableMapNodeBuilder and XML JSON builder"
* `86d0422 <https://git.opendaylight.org/gerrit/#/q/86d0422>`_
  `NETCONF-486 <https://jira.opendaylight.org/browse/NETCONF-486>`_
  : Realign ImmutableMapNodeBuilder and XML JSON builder
* `ffae353 <https://git.opendaylight.org/gerrit/#/q/ffae353>`_
  : Optimize augment conflict checking
* `2ca4ae8 <https://git.opendaylight.org/gerrit/#/q/2ca4ae8>`_
  : Fix format string
* `2f29e87 <https://git.opendaylight.org/gerrit/#/q/2f29e87>`_
  `YANGTOOLS-846 <https://jira.opendaylight.org/browse/YANGTOOLS-846>`_
  : Validate parsed QName to identity
* `dbef811 <https://git.opendaylight.org/gerrit/#/q/dbef811>`_
  `YANGTOOLS-846 <https://jira.opendaylight.org/browse/YANGTOOLS-846>`_
  : Validate parsed QName to identity
* `d89398f <https://git.opendaylight.org/gerrit/#/q/d89398f>`_
  `YANGTOOLS-798 <https://jira.opendaylight.org/browse/YANGTOOLS-798>`_
  : Encapsulate regexes in a non-capturing group
* `0c14a1e <https://git.opendaylight.org/gerrit/#/q/0c14a1e>`_
  : Move Bug4079/Bug5410 tests from yang-parser to yang-model-util
* `c8e2399 <https://git.opendaylight.org/gerrit/#/q/c8e2399>`_
  `YANGTOOLS-845 <https://jira.opendaylight.org/browse/YANGTOOLS-845>`_
  : Correct double-quoted string whitespace trimming

