Phosphorus-SR2 Release Notes
============================

This page details changes and bug fixes between the Phosphorus Stability Release 1 (Phosphorus-SR1)
and the Phosphorus Stability Release 2 (Phosphorus-SR2) of OpenDaylight.

TransportPCE
------------
* `20a9534d <https://git.opendaylight.org/gerrit/q/20a9534d>`_
  : Bump upstream dependencies to P-SR2
* `e4258e1a <https://git.opendaylight.org/gerrit/q/e4258e1a>`_
  : Add protection to PCE network analyzer PceOtnNode
* `2c48cb1b <https://git.opendaylight.org/gerrit/q/2c48cb1b>`_
  : Refactor PCE network analyzer PceOtnNode step 5
* `90df2170 <https://git.opendaylight.org/gerrit/q/90df2170>`_
  : Refactor PCE network analyzer PceOtnNode step 4
* `5fe4b817 <https://git.opendaylight.org/gerrit/q/5fe4b817>`_
  : Remove PCE net. analyzer PceOtnNodeTest useless UT
* `c6c7b5fc <https://git.opendaylight.org/gerrit/q/c6c7b5fc>`_
  : Refactor PCE network analyzer PceOtnNode step 3
* `e2527942 <https://git.opendaylight.org/gerrit/q/e2527942>`_
  : Refactor PCE network analyzer PceOtnNode step 2
* `04043f7f <https://git.opendaylight.org/gerrit/q/04043f7f>`_
  : Port-capability support in port-mapping 1.2.1
* `1b8a9fda <https://git.opendaylight.org/gerrit/q/1b8a9fda>`_
  : Getter for port-capability in port-mapping 2.2.1
* `78151e96 <https://git.opendaylight.org/gerrit/q/78151e96>`_
  : Fix bug in PCE picking wrong client port
* `2825e744 <https://git.opendaylight.org/gerrit/q/2825e744>`_
  : Remove maintenance loopback container
* `36442b3b <https://git.opendaylight.org/gerrit/q/36442b3b>`_
  : Bug in interface delete 400G-Ethernet
* `fe8a2438 <https://git.opendaylight.org/gerrit/q/fe8a2438>`_
  : Distinguish available SRG for uni/bi-direction
* `51190fdd <https://git.opendaylight.org/gerrit/q/51190fdd>`_
  : Update 7.1 port-mapping data after inf delete
* `71aa0aae <https://git.opendaylight.org/gerrit/q/71aa0aae>`_
  : Update power target mask for mixed line-rate
* `4db25e73 <https://git.opendaylight.org/gerrit/q/4db25e73>`_
  : Do not instantiate JsonParser
* `3c4c08c9 <https://git.opendaylight.org/gerrit/q/3c4c08c9>`_
  : Make OpenRoadmOtnTopology class static Maps final
* `be0df46a <https://git.opendaylight.org/gerrit/q/be0df46a>`_
  : Improve networkmodel util OpenRoadmOtnTopology 2/2
* `4e771bfb <https://git.opendaylight.org/gerrit/q/4e771bfb>`_
  : Improve networkmodel util OpenRoadmOtnTopology 1/2
* `c1959127 <https://git.opendaylight.org/gerrit/q/c1959127>`_
  : Portmapping for SRGs with multiple circuit packs
* `a81add9b <https://git.opendaylight.org/gerrit/q/a81add9b>`_
  : Refactor PCE network analyzer PceOtnNode step 1
* `a501a37b <https://git.opendaylight.org/gerrit/q/a501a37b>`_
  : Refactor networkmodel util OpenRoadmOtnTopology
* `9c1b36a8 <https://git.opendaylight.org/gerrit/q/9c1b36a8>`_
  : Correct width for 200G and 300G
* `ee6c66ff <https://git.opendaylight.org/gerrit/q/ee6c66ff>`_
  : Fix gitlint tox profile
* `dd44ea5a <https://git.opendaylight.org/gerrit/q/dd44ea5a>`_
  : Fix the GNPy version used for tests to 1.2.1
* `fd50b7d2 <https://git.opendaylight.org/gerrit/q/fd50b7d2>`_
  : Unrecognized if-supported-capabilities
* `60ba7da4 <https://git.opendaylight.org/gerrit/q/60ba7da4>`_
  : Migrate OTN SH renderer func. tests to RFC8040
* `b0c969d9 <https://git.opendaylight.org/gerrit/q/b0c969d9>`_
  : Refactor func. tests RFC8040 service-path calls
* `dfb6fec7 <https://git.opendaylight.org/gerrit/q/dfb6fec7>`_
  : Device+OTN renderer tests 7.1 w/ intermediate rate
* `3ca5d168 <https://git.opendaylight.org/gerrit/q/3ca5d168>`_
  : Update SH and PCE to support intermediate rates
* `a0a943b3 <https://git.opendaylight.org/gerrit/q/a0a943b3>`_
  : Fix func. tests service-path calls
* `4b590d46 <https://git.opendaylight.org/gerrit/q/4b590d46>`_
  : Migrate OTN renderer func. tests to RFC8040
* `111c3f19 <https://git.opendaylight.org/gerrit/q/111c3f19>`_
  : Fix func. tests utils base URL generation issue
* `e070822a <https://git.opendaylight.org/gerrit/q/e070822a>`_
  : Fix func. tests RFC8040 yang mount utils DS calls
* `01cac129 <https://git.opendaylight.org/gerrit/q/01cac129>`_
  : Upgrade honeynode sim version
* `ac3582b7 <https://git.opendaylight.org/gerrit/q/ac3582b7>`_
  : Refactor func. tests RFC8040 yang mount utils
* `c7070072 <https://git.opendaylight.org/gerrit/q/c7070072>`_
  : Update GNPy functional test
* `e2fcd78f <https://git.opendaylight.org/gerrit/q/e2fcd78f>`_
  : Update transportpce-topology enums
* `2cb59925 <https://git.opendaylight.org/gerrit/q/2cb59925>`_
  : Device renderer support for 100G on 7.1 models
* `fefa9c1b <https://git.opendaylight.org/gerrit/q/fefa9c1b>`_
  : Add support for 200G with 31.6 Gbaud
* `b4fdf053 <https://git.opendaylight.org/gerrit/q/b4fdf053>`_
  : Device renderer functional tests intermediate rate
* `59852698 <https://git.opendaylight.org/gerrit/q/59852698>`_
  : Device renderer support for intermediate rates
* `feaf8b32 <https://git.opendaylight.org/gerrit/q/feaf8b32>`_
  : Change in interface naming convention (B100G)
* `9d987840 <https://git.opendaylight.org/gerrit/q/9d987840>`_
  : Migrate renderer func. tests to RFC8040
* `61a81f30 <https://git.opendaylight.org/gerrit/q/61a81f30>`_
  : Refactor func. tests RFC8040 utils
* `434bb1c0 <https://git.opendaylight.org/gerrit/q/434bb1c0>`_
  : Migrate flex grid func. tests to RFC8040
* `0439b761 <https://git.opendaylight.org/gerrit/q/0439b761>`_
  : Improve some func. tests variables naming
* `35ad809f <https://git.opendaylight.org/gerrit/q/35ad809f>`_
  : Migrate OTN topology func. tests to RFC8040
* `bc57f12d <https://git.opendaylight.org/gerrit/q/bc57f12d>`_
  : Generalize supporting interface (B100G) in port-mapping
* `d37c2543 <https://git.opendaylight.org/gerrit/q/d37c2543>`_
  : Add missing ODUFlex interface
* `44167f1f <https://git.opendaylight.org/gerrit/q/44167f1f>`_
  : Use lighty-core build rather than package dep
* `6f1afa3a <https://git.opendaylight.org/gerrit/q/6f1afa3a>`_
  : Removing the maint-testsignal container
* `e7b9f651 <https://git.opendaylight.org/gerrit/q/e7b9f651>`_
  : Update maven download URL & fix gate
* `6b74e240 <https://git.opendaylight.org/gerrit/q/6b74e240>`_
  : Use environment variables for OLM timers
* `2112b0e5 <https://git.opendaylight.org/gerrit/q/2112b0e5>`_
  : Add and fix Phosphorus lighty.io support
* `ec9473fc <https://git.opendaylight.org/gerrit/q/ec9473fc>`_
  : Enforce pylint in CI via tox
* `3208ac5d <https://git.opendaylight.org/gerrit/q/3208ac5d>`_
  : Fix few NPE in TAPI implementation
* `0270f3cc <https://git.opendaylight.org/gerrit/q/0270f3cc>`_
  : Power control support for 87.5GHz spectrum width
* `2e942386 <https://git.opendaylight.org/gerrit/q/2e942386>`_
  : Fix Log message in OLM provider
* `e493bb37 <https://git.opendaylight.org/gerrit/q/e493bb37>`_
  : Reactive renderer UT
* `f6b86651 <https://git.opendaylight.org/gerrit/q/f6b86651>`_
  : OTN link deletion from full-multilayer TAPI topo
* `9558158b <https://git.opendaylight.org/gerrit/q/9558158b>`_
  : TAPI connectivity upgrade
* `f331326f <https://git.opendaylight.org/gerrit/q/f331326f>`_
  : Openroadm Xpdr link TAPI listener
* `d6c1307e <https://git.opendaylight.org/gerrit/q/d6c1307e>`_
  : Unification iNodeEdgePoint_N & NodeEdgePoint_N
* `18ec46b2 <https://git.opendaylight.org/gerrit/q/18ec46b2>`_
  : New functional tests with intermediate otn switch
* `d44c5eb2 <https://git.opendaylight.org/gerrit/q/d44c5eb2>`_
  : Manage low order otn services over multiple ODU4
* `949516ef <https://git.opendaylight.org/gerrit/q/949516ef>`_
  : Rationalize OpenRoadmInterface221
* `204222ad <https://git.opendaylight.org/gerrit/q/204222ad>`_
  : Manage ODU4 services over multiple OTU4
* `b98460e9 <https://git.opendaylight.org/gerrit/q/b98460e9>`_
  : Introduce s/d ApiInfo in otn-service-path
* `5aa5614c <https://git.opendaylight.org/gerrit/q/5aa5614c>`_
  : Modify OpenRoadmInterfaces implementations
* `52707210 <https://git.opendaylight.org/gerrit/q/52707210>`_
  : Fix: Deletion of 121 and 71  interfaces
* `872ecc4c <https://git.opendaylight.org/gerrit/q/872ecc4c>`_
  : Adapt the updateMapping method
* `bc72a86a <https://git.opendaylight.org/gerrit/q/bc72a86a>`_
  : Change PortMapping implementations
* `093e288d <https://git.opendaylight.org/gerrit/q/093e288d>`_
  : Add new method in PortMapping interface
* `5c0647d9 <https://git.opendaylight.org/gerrit/q/5c0647d9>`_
  : Update portmapping model
* `1165ca7c <https://git.opendaylight.org/gerrit/q/1165ca7c>`_
  : Fix bug in setting rate of tp in network module
* `8b49fe80 <https://git.opendaylight.org/gerrit/q/8b49fe80>`_
  : Adaptation of XPDR mapping from OR to TAPI
* `0ef8df66 <https://git.opendaylight.org/gerrit/q/0ef8df66>`_
  : TapiLink creation refactoring
* `4c5eb31b <https://git.opendaylight.org/gerrit/q/4c5eb31b>`_
  : Fix tapi get-topology-details functional test
* `f7cb9839 <https://git.opendaylight.org/gerrit/q/f7cb9839>`_
  : Migrate topology func. tests to RFC8040 Step 3
* `7226680a <https://git.opendaylight.org/gerrit/q/7226680a>`_
  : Migrate topology func. tests to RFC8040 Step 2
* `9e3d0f96 <https://git.opendaylight.org/gerrit/q/9e3d0f96>`_
  : Reintroduce nb-bierman02 support in new func tests
* `ec8f2463 <https://git.opendaylight.org/gerrit/q/ec8f2463>`_
  : Migrate topology func. tests to RFC8040 Step 1
* `eda327da <https://git.opendaylight.org/gerrit/q/eda327da>`_
  : Set xponder-type in the mapping for Transponders
* `2fd0278e <https://git.opendaylight.org/gerrit/q/2fd0278e>`_
  : Fix remaining pylint warnings apart fixme & dup
* `8c27c4f8 <https://git.opendaylight.org/gerrit/q/8c27c4f8>`_
  : Fix more and more pylint warnings
* `b28c0488 <https://git.opendaylight.org/gerrit/q/b28c0488>`_
  : Fix more pylint warnings
* `61bfb7a0 <https://git.opendaylight.org/gerrit/q/61bfb7a0>`_
  : Fix some pylint warnings
