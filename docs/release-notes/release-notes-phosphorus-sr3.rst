Phosphorus-SR3 Release Notes
============================

This page details changes and bug fixes between the Phosphorus Stability Release 2 (Phosphorus-SR2)
and the Phosphorus Stability Release 3 (Phosphorus-SR3) of OpenDaylight.


daexim
------
* `89584f2 <https://git.opendaylight.org/gerrit/q/89584f2>`_
  : Bump upstream versions


integration/distribution
------------------------
* `d12c64ad <https://git.opendaylight.org/gerrit/q/d12c64ad>`_
  : Bump upstream versions
* `cbe915d6 <https://git.opendaylight.org/gerrit/q/cbe915d6>`_
  : Reflect Phosphorus SR2 release
* `7a5402dd <https://git.opendaylight.org/gerrit/q/7a5402dd>`_
  : Bump version after release


jsonrpc
-------
* `4b0ced2 <https://git.opendaylight.org/gerrit/q/4b0ced2>`_
  : Bump upstream versions


lispflowmapping
---------------
* `fd3db97e <https://git.opendaylight.org/gerrit/q/fd3db97e>`_
  : Bump upstream versions


openflowplugin
--------------
* `483e30c11 <https://git.opendaylight.org/gerrit/q/483e30c11>`_
  : Bump upstream versions
* `ffaa29cf5 <https://git.opendaylight.org/gerrit/q/ffaa29cf5>`_
  : Clean up GetReconciliationStateProvider
* `875d36703 <https://git.opendaylight.org/gerrit/q/875d36703>`_
  : Use explicit checkState() to guard against nulls
* `395000532 <https://git.opendaylight.org/gerrit/q/395000532>`_
  : Modernize SwitchConnectionProviderImplTest
* `a52288cfa <https://git.opendaylight.org/gerrit/q/a52288cfa>`_
  : Fix topology-manager Blueprint XML location
* `7323d0ec7 <https://git.opendaylight.org/gerrit/q/7323d0ec7>`_
  : Rename autowire.xml
* `ea5aafd04 <https://git.opendaylight.org/gerrit/q/ea5aafd04>`_
  : Consolidate blueprint XML files for of-switch-config-pusher
* `47673326a <https://git.opendaylight.org/gerrit/q/47673326a>`_
  : Consolidate blueprint XML files for FRM
* `d411e7908 <https://git.opendaylight.org/gerrit/q/d411e7908>`_
  : Consolidate blueprint XML files for topology-lldp-discovery
* `447f4edff <https://git.opendaylight.org/gerrit/q/447f4edff>`_
  : Consolidate blueprint XML files for openflowplugin-impl
* `cb06d7bea <https://git.opendaylight.org/gerrit/q/cb06d7bea>`_
  `OPNFLWPLUG-1094 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1094>`_
  : Cleanup switch certificate chain handling
* `c9f8dcbac <https://git.opendaylight.org/gerrit/q/c9f8dcbac>`_
  : Migrate test-provider to OSGi DS
* `697ad5d65 <https://git.opendaylight.org/gerrit/q/697ad5d65>`_
  : Do not use blueprint-maven-plugin in of-switch-config-pusher
* `adafc3d0e <https://git.opendaylight.org/gerrit/q/adafc3d0e>`_
  : Do not use blueprint-maven-plugin in topology-manager
* `127587e0d <https://git.opendaylight.org/gerrit/q/127587e0d>`_
  : Do not use blueprint-maven-plugin in FRM
* `ef21ba0e7 <https://git.opendaylight.org/gerrit/q/ef21ba0e7>`_
  : Do not use blueprint-maven-plugin in device-ownership-service
* `ccc2611d1 <https://git.opendaylight.org/gerrit/q/ccc2611d1>`_
  : Do not use blueprint-maven-plugin in reconciliation-framework
* `d6164fc52 <https://git.opendaylight.org/gerrit/q/d6164fc52>`_
  : Do not use blueprint-maven-plugin in topology-lldp-discovery
* `10a19368d <https://git.opendaylight.org/gerrit/q/10a19368d>`_
  : Do not use blueprint-maven-plugin in arb-reconcile-impl
* `98b782ada <https://git.opendaylight.org/gerrit/q/98b782ada>`_
  : Correct subject-alternate-names
* `50c415c65 <https://git.opendaylight.org/gerrit/q/50c415c65>`_
  : Do not use blueprint-maven-plugin in openflowplugin-impl
* `15d797f43 <https://git.opendaylight.org/gerrit/q/15d797f43>`_
  `OPNFLWPLUG-1122 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1122>`_
  : Replace deprecated initMocks() in openflow-protocol-impl
* `c0f7d62e0 <https://git.opendaylight.org/gerrit/q/c0f7d62e0>`_
  `OPNFLWPLUG-1122 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1122>`_
  : Remove unnecessary initMocks() in openflow-protocol-impl
* `a9dcea72a <https://git.opendaylight.org/gerrit/q/a9dcea72a>`_
  `OPNFLWPLUG-1122 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1122>`_
  : Replace deprecated initMocks() in openflowplugin-impl
* `fd6b32a67 <https://git.opendaylight.org/gerrit/q/fd6b32a67>`_
  `OPNFLWPLUG-1122 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1122>`_
  : Remove unnecessary initMocks() in openflow-protocol-it
* `f14ed587a <https://git.opendaylight.org/gerrit/q/f14ed587a>`_
  `OPNFLWPLUG-1122 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1122>`_
  : Replace deprecated initMocks() in topology-manager
* `9581413b2 <https://git.opendaylight.org/gerrit/q/9581413b2>`_
  `OPNFLWPLUG-1123 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1123>`_
  : Replace Empty.getInstance() with Empty.value()
* `121764c02 <https://git.opendaylight.org/gerrit/q/121764c02>`_
  : Update PTL info
* `555c519be <https://git.opendaylight.org/gerrit/q/555c519be>`_
  : Migrate to assertThrows()
* `2c4bd0e5e <https://git.opendaylight.org/gerrit/q/2c4bd0e5e>`_
  : Do not instantiate JsonParser


ovsdb
-----
* `1c8aa79dd <https://git.opendaylight.org/gerrit/q/1c8aa79dd>`_
  : Bump upstream versions


serviceutils
------------
* `51b1b86 <https://git.opendaylight.org/gerrit/q/51b1b86>`_
  : Bump upstream versions

