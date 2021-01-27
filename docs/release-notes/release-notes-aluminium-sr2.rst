Aluminium-SR2 Release Notes
===========================

This page details changes and bug fixes between the Aluminium Stability Release 1 (Aluminium-SR1)
and the Aluminium Stability Release 2 (Aluminium-SR2) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `54f17318 <https://git.opendaylight.org/gerrit/q/54f17318>`_
  : Bump upstreams for Aluminium SR2
* `e72365f8 <https://git.opendaylight.org/gerrit/q/e72365f8>`_
  : Use StandardCharsets.UTF_8
* `b360cd99 <https://git.opendaylight.org/gerrit/q/b360cd99>`_
  `AAA-211 <https://jira.opendaylight.org/browse/AAA-211>`_
  : Make JerseyServletSupport a @Component


bgpcep
------
* `1301dfbad <https://git.opendaylight.org/gerrit/q/1301dfbad>`_
  : Bump upstreams for Aluminium SR2
* `b801986c6 <https://git.opendaylight.org/gerrit/q/b801986c6>`_
  : Use ImmutableMap.toImmutableMap()
* `83ea7498e <https://git.opendaylight.org/gerrit/q/83ea7498e>`_
  : Be more defensive when checking nodes
* `f71d18eb3 <https://git.opendaylight.org/gerrit/q/f71d18eb3>`_
  `BGPCEP-901 <https://jira.opendaylight.org/browse/BGPCEP-901>`_
  : Prevent deadlock between PCEP session mgmt and stats thread
* `c129fcca9 <https://git.opendaylight.org/gerrit/q/c129fcca9>`_
  : remove attributes odl:type default from blueprints
* `72268e66c <https://git.opendaylight.org/gerrit/q/72268e66c>`_
  : remove some useless empty lines
* `322edfbc8 <https://git.opendaylight.org/gerrit/q/322edfbc8>`_
  : update wiki URL in poms
* `b189fbd0d <https://git.opendaylight.org/gerrit/q/b189fbd0d>`_
  : refine path declaration in config-loader FileWatch


daexim
------
* `e11697f <https://git.opendaylight.org/gerrit/q/e11697f>`_
  : Bump upstreams for Aluminium SR2


genius
------
* `3e61ca7b <https://git.opendaylight.org/gerrit/q/3e61ca7b>`_
  : Bump upstreams for Aluminium SR2


integration/distribution
------------------------
* `5f20eb5 <https://git.opendaylight.org/gerrit/q/5f20eb5>`_
  : Bump upstreams for Aluminium SR2
* `9f2c9d1 <https://git.opendaylight.org/gerrit/q/9f2c9d1>`_
  : Update versions after Aluminium SR1 release


jsonrpc
-------
* `3a7da1e <https://git.opendaylight.org/gerrit/q/3a7da1e>`_
  : Bump upstreams for Aluminium SR2


lispflowmapping
---------------
* `1c69a361 <https://git.opendaylight.org/gerrit/q/1c69a361>`_
  : Improve ConcurrentLispSouthboundStats
* `f646a6a6 <https://git.opendaylight.org/gerrit/q/f646a6a6>`_
  : Bump upstreams for Aluminium SR2


netconf
-------
* `df04b746b <https://git.opendaylight.org/gerrit/q/df04b746b>`_
  : Bump upstreams for Aluminium SR2
* `5dcb4f15d <https://git.opendaylight.org/gerrit/q/5dcb4f15d>`_
  : Remove netconf-topology-singleton's NetconfConnectorDTO
* `3b1eee281 <https://git.opendaylight.org/gerrit/q/3b1eee281>`_
  : Fix a raw type warning
* `40f553468 <https://git.opendaylight.org/gerrit/q/40f553468>`_
  : Fixed domain-name usage in NETCONF southbound
* `9e246c687 <https://git.opendaylight.org/gerrit/q/9e246c687>`_
  `NETCONF-499 <https://jira.opendaylight.org/browse/NETCONF-499>`_
  : Implement RESTCONF Extensibility (discovery)
* `2f389900e <https://git.opendaylight.org/gerrit/q/2f389900e>`_
  `NETCONF-717 <https://jira.opendaylight.org/browse/NETCONF-717>`_
  : Refactor KeepaliveSalFacade time tracking
* `5bc58d559 <https://git.opendaylight.org/gerrit/q/5bc58d559>`_
  : Remove jaxb-api dependency
* `f8da5e019 <https://git.opendaylight.org/gerrit/q/f8da5e019>`_
  `NETCONF-720 <https://jira.opendaylight.org/browse/NETCONF-720>`_
  : If there is only one revision is present, return it.
* `8a556da86 <https://git.opendaylight.org/gerrit/q/8a556da86>`_
  `NETCONF-737 <https://jira.opendaylight.org/browse/NETCONF-737>`_
  : fix example string generation for types with isBasicLatin pattern
* `3e15caa7f <https://git.opendaylight.org/gerrit/q/3e15caa7f>`_
  : Fixed handling of identityref type in list key
* `29aaaeba7 <https://git.opendaylight.org/gerrit/q/29aaaeba7>`_
  `NETCONF-741 <https://jira.opendaylight.org/browse/NETCONF-741>`_
  : Correct operations input/output media types
* `08505cdbc <https://git.opendaylight.org/gerrit/q/08505cdbc>`_
  : Test SchemaExportContentYangBodyWriter


netvirt
-------
* `df18975c8 <https://git.opendaylight.org/gerrit/q/df18975c8>`_
  : Bump upstreams for Aluminium SR2


neutron
-------
* `cf2896ec <https://git.opendaylight.org/gerrit/q/cf2896ec>`_
  : Bump upstreams for Aluminium SR2


openflowplugin
--------------
* `0f12c5098 <https://git.opendaylight.org/gerrit/q/0f12c5098>`_
  : Fix statistics multipart handling
* `6879a5412 <https://git.opendaylight.org/gerrit/q/6879a5412>`_
  : Bump upstreams for Aluminium SR2
* `7efc6e041 <https://git.opendaylight.org/gerrit/q/7efc6e041>`_
  : Fix LearnCodecUtil scalability
* `6f7d35032 <https://git.opendaylight.org/gerrit/q/6f7d35032>`_
  : Fix checkstyle
* `b43ef0864 <https://git.opendaylight.org/gerrit/q/b43ef0864>`_
  : Cleanup MatchUtil


ovsdb
-----
* `f7df01ea7 <https://git.opendaylight.org/gerrit/q/f7df01ea7>`_
  : Bump upstreams for Aluminium SR2


serviceutils
------------
* `48b712a <https://git.opendaylight.org/gerrit/q/48b712a>`_
  : Bump upstreams for Aluminium SR2

transportpce
------------
* `695adc71 <https://git.opendaylight.org/gerrit/q/695adc71>`_
  : Fix resource deletion issue in openroadm-topology
* `010bd289 <https://git.opendaylight.org/gerrit/q/010bd289>`_
  : bump lighty build to 13.1.0
* `ce21be59 <https://git.opendaylight.org/gerrit/q/ce21be59>`_
  : Bump uptream dependencies to Al SR2
* `1c85cf4c <https://git.opendaylight.org/gerrit/q/1c85cf4c>`_
  : Update PCE-GNPy for flexgrid
* `2c1a1024 <https://git.opendaylight.org/gerrit/q/2c1a1024>`_
  : Refactor to remove useless wavelength reference
* `e81dbd96 <https://git.opendaylight.org/gerrit/q/e81dbd96>`_
  : Update connection and interface name
* `f820fd6e <https://git.opendaylight.org/gerrit/q/f820fd6e>`_
  : Use slot width granularity in PCE
* `3a7e2e9a <https://git.opendaylight.org/gerrit/q/3a7e2e9a>`_
  : Add methods to GridUtils
* `7565b70c <https://git.opendaylight.org/gerrit/q/7565b70c>`_
  : New version of transportpce common types
* `e835fbb4 <https://git.opendaylight.org/gerrit/q/e835fbb4>`_
  : Networkmodel class renaming
* `4d58697a <https://git.opendaylight.org/gerrit/q/4d58697a>`_
  : Network model add enable wavelength unit test
* `d0599fd6 <https://git.opendaylight.org/gerrit/q/d0599fd6>`_
  : Test-common module update
* `7ca7cc66 <https://git.opendaylight.org/gerrit/q/7ca7cc66>`_
  : Flexgrid for pce and network model
* `c64569dd <https://git.opendaylight.org/gerrit/q/c64569dd>`_
  : Move TopologyDataUtils from tapi to test-common
* `c4e5b9e1 <https://git.opendaylight.org/gerrit/q/c4e5b9e1>`_
  : Constants for service type
* `12b8d480 <https://git.opendaylight.org/gerrit/q/12b8d480>`_
  : Frequency computation
* `837ee83e <https://git.opendaylight.org/gerrit/q/837ee83e>`_
  : PCE modification in order to prepare flexgrid
* `5b92228a <https://git.opendaylight.org/gerrit/q/5b92228a>`_
  : New version of transportpce-pathDescription
* `9d384ea5 <https://git.opendaylight.org/gerrit/q/9d384ea5>`_
  : Update naming following flexgrid specification
* `c9a3c33f <https://git.opendaylight.org/gerrit/q/c9a3c33f>`_
  : Add getDataBroker to NetworkTransactionService
* `5d3930e4 <https://git.opendaylight.org/gerrit/q/5d3930e4>`_
  : Light refactor on PceOpticalNode
* `c8827ade <https://git.opendaylight.org/gerrit/q/c8827ade>`_
  : Minimal refactor of renderer to prepare flexgrid
* `cb37837f <https://git.opendaylight.org/gerrit/q/cb37837f>`_
  : Move NodeIdPair from renderer to common
* `05909ec4 <https://git.opendaylight.org/gerrit/q/05909ec4>`_
  : New version of transportpce-servicehandler yang
* `be443123 <https://git.opendaylight.org/gerrit/q/be443123>`_
  : New version of yang transportpce-renderer
* `9816decf <https://git.opendaylight.org/gerrit/q/9816decf>`_
  : outsource flexgrid constants import in functests
* `fec2244e <https://git.opendaylight.org/gerrit/q/fec2244e>`_
  : clean renderer NetworkModelWavelengthServiceImpl
* `81582523 <https://git.opendaylight.org/gerrit/q/81582523>`_
  : split checkPartnerPort method in PortMapping
* `47fde854 <https://git.opendaylight.org/gerrit/q/47fde854>`_
  : remove some useless null checks from portmapping
* `aafa7dd6 <https://git.opendaylight.org/gerrit/q/aafa7dd6>`_
  : improve partner-port check in createTtpPortMapping
* `64837af1 <https://git.opendaylight.org/gerrit/q/64837af1>`_
  : Align and improve Portmapping versions Step 2
* `dc7a551e <https://git.opendaylight.org/gerrit/q/dc7a551e>`_
  : use ternary operators in portmapping
* `124272b1 <https://git.opendaylight.org/gerrit/q/124272b1>`_
  : make honeynode download quieter
* `fa4045a7 <https://git.opendaylight.org/gerrit/q/fa4045a7>`_
  : make honeynode and lighty builds unzip quieter
* `b4d6a837 <https://git.opendaylight.org/gerrit/q/b4d6a837>`_
  : Update OTN E2E functional tests for 1GE
* `fed129b4 <https://git.opendaylight.org/gerrit/q/fed129b4>`_
  : Port capabilities handling in OTN topology
* `17a8dacb <https://git.opendaylight.org/gerrit/q/17a8dacb>`_
  : Update OTN configuration files for honeynode
* `b9e1f114 <https://git.opendaylight.org/gerrit/q/b9e1f114>`_
  : Fix issue in PCE
* `63e3de9d <https://git.opendaylight.org/gerrit/q/63e3de9d>`_
  : Update Honeynode simulator version
* `6ce05481 <https://git.opendaylight.org/gerrit/q/6ce05481>`_
  : Upgrade to OpenROADM 7.1.0 network models
* `dcde89a2 <https://git.opendaylight.org/gerrit/q/dcde89a2>`_
  : add a documentation spellchecker tox profile
* `b47148e4 <https://git.opendaylight.org/gerrit/q/b47148e4>`_
  : Ordmodels - Remove generated code from source control
* `fcde2c1f <https://git.opendaylight.org/gerrit/q/fcde2c1f>`_
  : reformat api YANG models with pyang
* `54ce52f0 <https://git.opendaylight.org/gerrit/q/54ce52f0>`_
  : add pyang tox profiles to check/format api models
* `b2108755 <https://git.opendaylight.org/gerrit/q/b2108755>`_
  : fix DM_CONVERT_CASE SpotBugs issues in portmapping
* `a28111a1 <https://git.opendaylight.org/gerrit/q/a28111a1>`_
  : explicit a cast in portmapping Version 2.2.1
* `04f1a192 <https://git.opendaylight.org/gerrit/q/04f1a192>`_
  : Add protection in portmapping connection-map loop
* `25cc02a1 <https://git.opendaylight.org/gerrit/q/25cc02a1>`_
  : bug fixes in Portmapping 7.1.0
* `dbb45f07 <https://git.opendaylight.org/gerrit/q/dbb45f07>`_
  : Align and improve Portmapping versions Step 1
* `951c9976 <https://git.opendaylight.org/gerrit/q/951c9976>`_
  : create a FnvUtils class in common mapping
* `615d87c1 <https://git.opendaylight.org/gerrit/q/615d87c1>`_
  : Port-mapping for 7.1.0 models
* `8160dd3c <https://git.opendaylight.org/gerrit/q/8160dd3c>`_
  : Port-mapping changes to support 7.1.0 models
* `60866cf0 <https://git.opendaylight.org/gerrit/q/60866cf0>`_
  : Add OpenROADM 7.1.0 device and common models
* `93500092 <https://git.opendaylight.org/gerrit/q/93500092>`_
  : Remove unused test resource files
* `bb1f19cf <https://git.opendaylight.org/gerrit/q/bb1f19cf>`_
  : Bump project version to Al SR2
* `9302a7f2 <https://git.opendaylight.org/gerrit/q/9302a7f2>`_
  : Bump netconf dependencies to Al SR2
* `1279304e <https://git.opendaylight.org/gerrit/q/1279304e>`_
  : Update developer-guide with TAPI section
* `6bfd282e <https://git.opendaylight.org/gerrit/q/6bfd282e>`_
  : Rewrite TAPI topology functional tests
* `92b809b0 <https://git.opendaylight.org/gerrit/q/92b809b0>`_
  : TAPI topology consolidation - step3
* `dd021ba2 <https://git.opendaylight.org/gerrit/q/dd021ba2>`_
  : TAPI topology consolidation - step2
* `73848270 <https://git.opendaylight.org/gerrit/q/73848270>`_
  : TAPI topology consolidation
* `bd83f4a9 <https://git.opendaylight.org/gerrit/q/bd83f4a9>`_
  : Fix a method name typo in tapi module
* `cd314275 <https://git.opendaylight.org/gerrit/q/cd314275>`_
  : Make AbstractTest as static class
* `d54e3082 <https://git.opendaylight.org/gerrit/q/d54e3082>`_
  : Strengthens independence between UTs in OLM
