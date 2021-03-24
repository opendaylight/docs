Aluminium-SR3 Release Notes
===========================

This page details changes and bug fixes between the Aluminium Stability Release 2 (Aluminium-SR2)
and the Aluminium Stability Release 3 (Aluminium-SR3) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------

* aaa
* bgpcep
* daexim
* genius
* jsonrpc
* lispflowmapping
* netvirt
* neutron
* openflowplugin
* ovsdb
* serviceutils

integration/distribution
------------------------
* `2fc5c95 <https://git.opendaylight.org/gerrit/q/2fc5c95>`_
  : Re-add T-PCE to common distribution


netconf
-------
* `709348910 <https://git.opendaylight.org/gerrit/q/709348910>`_
  `NETCONF-757 <https://jira.opendaylight.org/browse/NETCONF-757>`_
  : Generate new jax-rs Response for every /.well-known/* request
* `1de236682 <https://git.opendaylight.org/gerrit/q/1de236682>`_
  `NETCONF-753 <https://jira.opendaylight.org/browse/NETCONF-753>`_
  : Fix authentication mechanism in RESTconf(rfc8040 northbound)
* `adb2e3669 <https://git.opendaylight.org/gerrit/q/adb2e3669>`_
  : Fixing errors check in RestconfDocumentedExceptionMapper

transportpce
------------
* `79e956d6 <https://git.opendaylight.org/gerrit/q/79e956d6>`_
  : Small improvement in PceGraph
* `57f961c1 <https://git.opendaylight.org/gerrit/q/57f961c1>`_
  : Improve honeynode installation process in tox
* `71d06d81 <https://git.opendaylight.org/gerrit/q/71d06d81>`_
  : Honeynode for 7.1 devices
* `d24c4968 <https://git.opendaylight.org/gerrit/q/d24c4968>`_
  : Fix grep feature name in test_utils.py
* `0fe11ab2 <https://git.opendaylight.org/gerrit/q/0fe11ab2>`_
  : Add protection on Xponder-in/out link creation
* `b05f094e <https://git.opendaylight.org/gerrit/q/b05f094e>`_
  : GNPy client refactor
* `b31acefa <https://git.opendaylight.org/gerrit/q/b31acefa>`_
  : JsonStringConverter in GNPy
* `d2828627 <https://git.opendaylight.org/gerrit/q/d2828627>`_
  : Add generic json String converter
* `cc2d9a48 <https://git.opendaylight.org/gerrit/q/cc2d9a48>`_
  : disable PMD/CPD checks in 2 portmapping classes
* `0e1c5b11 <https://git.opendaylight.org/gerrit/q/0e1c5b11>`_
  : Add portmapping methods to fill XpdR LCPs maps
* `0ea58afa <https://git.opendaylight.org/gerrit/q/0ea58afa>`_
  : Fix usage of deprecated method in portmapping
* `36490913 <https://git.opendaylight.org/gerrit/q/36490913>`_
  : Fix+align portmapping protections and log messages
* `effedfca <https://git.opendaylight.org/gerrit/q/effedfca>`_
  : Add a portmapping method to retrieve Xpdr port2
* `2ef38c85 <https://git.opendaylight.org/gerrit/q/2ef38c85>`_
  : Set mandatory UUID in TAPI connectivity module
* `fc369a37 <https://git.opendaylight.org/gerrit/q/fc369a37>`_
  : Fix the SIP uuid generation in TAPI topology
* `83b9c604 <https://git.opendaylight.org/gerrit/q/83b9c604>`_
  : Bump dependencies and project version to Al SR3
* `e2a96205 <https://git.opendaylight.org/gerrit/q/e2a96205>`_
  : Fix variable name in tapi-topology
* `3ac152f1 <https://git.opendaylight.org/gerrit/q/3ac152f1>`_
  : Change maven download link
* `acf1e75a <https://git.opendaylight.org/gerrit/q/acf1e75a>`_
  : Add a portmapping putXpdrLcpsInMaps method
* `3de1a23f <https://git.opendaylight.org/gerrit/q/3de1a23f>`_
  : Add a portmapping method to create Xpdr LCP names
* `c9450eb0 <https://git.opendaylight.org/gerrit/q/c9450eb0>`_
  : Improve portmapping LCP names creation process
* `4f14db15 <https://git.opendaylight.org/gerrit/q/4f14db15>`_
  : Add a portmapping method to map degrees
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