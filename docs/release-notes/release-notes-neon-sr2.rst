Neon-SR2 Release Notes
======================

This page details changes and bug fixes between the Neon Stability Release 1 (Neon-SR1)
and the Neon Stability Release 2 (Neon-SR2) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `9f450fdb <https://git.opendaylight.org/gerrit/#/q/9f450fdb>`_
  `AAA-185 <https://jira.opendaylight.org/browse/AAA-185>`_
  : update dev-guide.rst
* `4d7f2f0c <https://git.opendaylight.org/gerrit/#/q/4d7f2f0c>`_
  : Bump mdsal to 3.0.10
* `d32b49bb <https://git.opendaylight.org/gerrit/#/q/d32b49bb>`_
  : Bump mdsal to 3.0.9
* `e8043ea7 <https://git.opendaylight.org/gerrit/#/q/e8043ea7>`_
  : Bump yangtools to 2.1.11
* `f70e400e <https://git.opendaylight.org/gerrit/#/q/f70e400e>`_
  : Bump odlparent to 4.0.11
* `f52a2f37 <https://git.opendaylight.org/gerrit/#/q/f52a2f37>`_
  : Initialize MDSALDynamicAuthorizationFilter lazily
* `35f181ef <https://git.opendaylight.org/gerrit/#/q/35f181ef>`_
  : Add web-jetty-impl to artifacts


bgpcep
------
* `e9a0df948 <https://git.opendaylight.org/gerrit/#/q/e9a0df948>`_
  : Use adaptive allocators again
* `d0f529cbf <https://git.opendaylight.org/gerrit/#/q/d0f529cbf>`_
  : Correct input buffer sizing
* `480af0325 <https://git.opendaylight.org/gerrit/#/q/480af0325>`_
  : Simplify LOG references
* `680db207a <https://git.opendaylight.org/gerrit/#/q/680db207a>`_
  : Cleanup sonar-reported code smells
* `f8ac7fd0c <https://git.opendaylight.org/gerrit/#/q/f8ac7fd0c>`_
  `PCEP-872 <https://jira.opendaylight.org/browse/PCEP-872>`_
  : Improve time tracking overheads a bit
* `0b689bf78 <https://git.opendaylight.org/gerrit/#/q/0b689bf78>`_
  : Use RouterId's peerId
* `aeb8998f6 <https://git.opendaylight.org/gerrit/#/q/aeb8998f6>`_
  : Optimize BgpAttributeConditionsUtil
* `fd9066695 <https://git.opendaylight.org/gerrit/#/q/fd9066695>`_
  : Remove unneeded test dependency declarations
* `9e047e850 <https://git.opendaylight.org/gerrit/#/q/9e047e850>`_
  : Remove superfluous osgi-core dependencies
* `70e373f51 <https://git.opendaylight.org/gerrit/#/q/70e373f51>`_
  : Bump mdsal to 3.0.10
* `b18ccc2df <https://git.opendaylight.org/gerrit/#/q/b18ccc2df>`_
  : Use ImmutableOffsetMapTemplate for route keys
* `e6ccdd9e6 <https://git.opendaylight.org/gerrit/#/q/e6ccdd9e6>`_
  `PCEP-872 <https://jira.opendaylight.org/browse/PCEP-872>`_
  : Update keepalive tracking
* `e0ae4f223 <https://git.opendaylight.org/gerrit/#/q/e0ae4f223>`_
  `PCEP-845 <https://jira.opendaylight.org/browse/PCEP-845>`_
  : Fix unsynchronized LSP counting
* `2380fa157 <https://git.opendaylight.org/gerrit/#/q/2380fa157>`_
  : Bump mdsal to 3.0.9
* `04aa9a5b2 <https://git.opendaylight.org/gerrit/#/q/04aa9a5b2>`_
  : Bump yangtools to 2.1.11
* `cce997fab <https://git.opendaylight.org/gerrit/#/q/cce997fab>`_
  : Bump odlparent to 4.0.11
* `9bd3462ae <https://git.opendaylight.org/gerrit/#/q/9bd3462ae>`_
  `PCEP-873 <https://jira.opendaylight.org/browse/PCEP-873>`_
  : Revert "Remove OSGi dependency from bgp modules"


controller
----------
* `b85def9191 <https://git.opendaylight.org/gerrit/#/q/b85def9191>`_
  : Remove triemap-bom import
* `ca50cf5a6c <https://git.opendaylight.org/gerrit/#/q/ca50cf5a6c>`_
  : Do not log the whole DataTree at debug level
* `3a96832b28 <https://git.opendaylight.org/gerrit/#/q/3a96832b28>`_
  : Bump mdsal to 3.0.10
* `994ebed832 <https://git.opendaylight.org/gerrit/#/q/994ebed832>`_
  `CONTROLLER-1904 <https://jira.opendaylight.org/browse/CONTROLLER-1904>`_
  : Raise EOS unsuccessful request reporting to error
* `0ea559733f <https://git.opendaylight.org/gerrit/#/q/0ea559733f>`_
  : Enforce RegisterListenerLocal arguments
* `bcff886136 <https://git.opendaylight.org/gerrit/#/q/bcff886136>`_
  : Change remaining SnapshotSelectionCriteria to prioritize timestamp
* `0d0d2f080e <https://git.opendaylight.org/gerrit/#/q/0d0d2f080e>`_
  : Do not depend on odl-mdsal-broker-local
* `c1f4a327b3 <https://git.opendaylight.org/gerrit/#/q/c1f4a327b3>`_
  : Fix multiple snapshots present after journal removal
* `a6ffbcf796 <https://git.opendaylight.org/gerrit/#/q/a6ffbcf796>`_
  : Add transaction debugs
* `d41d471e9b <https://git.opendaylight.org/gerrit/#/q/d41d471e9b>`_
  `CONTROLLER-1898 <https://jira.opendaylight.org/browse/CONTROLLER-1898>`_
  : Take advantage of AugmentationIdentifier.create()
* `0b843bb05c <https://git.opendaylight.org/gerrit/#/q/0b843bb05c>`_
  : Bump mdsal to 3.0.9
* `2c6ee736a5 <https://git.opendaylight.org/gerrit/#/q/2c6ee736a5>`_
  : Bump yangtools to 2.1.11
* `b9a68a7c94 <https://git.opendaylight.org/gerrit/#/q/b9a68a7c94>`_
  : Bump odlparent to 4.0.11
* `9c22760a45 <https://git.opendaylight.org/gerrit/#/q/9c22760a45>`_
  : Migrate use of AbstractDOMStoreTransaction
* `4f5c7ef907 <https://git.opendaylight.org/gerrit/#/q/4f5c7ef907>`_
  : Rename SODIUM versions to NEON_SR2
* `e326c615c4 <https://git.opendaylight.org/gerrit/#/q/e326c615c4>`_
  `CONTROLLER-1888 <https://jira.opendaylight.org/browse/CONTROLLER-1888>`_
  : Bump persisted PayloadVersion
* `0e10466fdf <https://git.opendaylight.org/gerrit/#/q/0e10466fdf>`_
  `CONTROLLER-1888 <https://jira.opendaylight.org/browse/CONTROLLER-1888>`_
  : Bump datastore version
* `458a2556a1 <https://git.opendaylight.org/gerrit/#/q/458a2556a1>`_
  : Reset replyReceivedForOffset correctly
* `5a650a307d <https://git.opendaylight.org/gerrit/#/q/5a650a307d>`_
  : Failed chunks should move offset backwards
* `6724dddb6f <https://git.opendaylight.org/gerrit/#/q/6724dddb6f>`_
  `MDSAL-429 <https://jira.opendaylight.org/browse/MDSAL-429>`_
  : Fix IMDS test synchronization
* `218cf1ffcc <https://git.opendaylight.org/gerrit/#/q/218cf1ffcc>`_
  : Reset snapshot progress on IOExceptions
* `e6e14f87df <https://git.opendaylight.org/gerrit/#/q/e6e14f87df>`_
  `CONTROLLER-1888 <https://jira.opendaylight.org/browse/CONTROLLER-1888>`_
  : Remove use of thread-local input
* `4842cd28aa <https://git.opendaylight.org/gerrit/#/q/4842cd28aa>`_
  `CONTROLLER-1900 <https://jira.opendaylight.org/browse/CONTROLLER-1900>`_
  : Send commitIndex updates to followers as soon as possible
* `a2757f50df <https://git.opendaylight.org/gerrit/#/q/a2757f50df>`_
  : Simplify recoveryTime computation
* `6bff404a8e <https://git.opendaylight.org/gerrit/#/q/6bff404a8e>`_
  `CONTROLLER-1888 <https://jira.opendaylight.org/browse/CONTROLLER-1888>`_
  : Remove use of thread-local output
* `515dbcdd4f <https://git.opendaylight.org/gerrit/#/q/515dbcdd4f>`_
  `CONTROLLER-1888 <https://jira.opendaylight.org/browse/CONTROLLER-1888>`_
  : Switch CompositeModification to bypass thread-local streams
* `6e1d28a0db <https://git.opendaylight.org/gerrit/#/q/6e1d28a0db>`_
  `CONTROLLER-1888 <https://jira.opendaylight.org/browse/CONTROLLER-1888>`_
  : Make Modification/Externalizable interface visible
* `c7105cb6f9 <https://git.opendaylight.org/gerrit/#/q/c7105cb6f9>`_
  `CONTROLLER-1888 <https://jira.opendaylight.org/browse/CONTROLLER-1888>`_
  : Bump cds-access-api ABIVersion
* `2d72ea2f5f <https://git.opendaylight.org/gerrit/#/q/2d72ea2f5f>`_
  `CONTROLLER-1898 <https://jira.opendaylight.org/browse/CONTROLLER-1898>`_
  : Add QNameModule coding
* `8edae6ac0a <https://git.opendaylight.org/gerrit/#/q/8edae6ac0a>`_
  `CONTROLLER-1898 <https://jira.opendaylight.org/browse/CONTROLLER-1898>`_
  : Optimize NodeIdentifier reading
* `aec4fefef9 <https://git.opendaylight.org/gerrit/#/q/aec4fefef9>`_
  : Add buffering to LocalSnapshotStore
* `1f6d9ca454 <https://git.opendaylight.org/gerrit/#/q/1f6d9ca454>`_
  `CONTROLLER-1898 <https://jira.opendaylight.org/browse/CONTROLLER-1898>`_
  : Optimize readQNameSet()
* `1a65cdf85f <https://git.opendaylight.org/gerrit/#/q/1a65cdf85f>`_
  `CONTROLLER-1628 <https://jira.opendaylight.org/browse/CONTROLLER-1628>`_
  : Remove ask-based close transaction chain persistence
* `cd08469088 <https://git.opendaylight.org/gerrit/#/q/cd08469088>`_
  `CONTROLLER-1898 <https://jira.opendaylight.org/browse/CONTROLLER-1898>`_
  : Add support for coded QNames/AugmentationIdentifiers
* `733db32922 <https://git.opendaylight.org/gerrit/#/q/733db32922>`_
  `CONTROLLER-1898 <https://jira.opendaylight.org/browse/CONTROLLER-1898>`_
  : Separate lazy-versioned NormalizedNodeDataInput
* `4c3b6e5ae5 <https://git.opendaylight.org/gerrit/#/q/4c3b6e5ae5>`_
  : Centralize read{Augmentation,Node}Identifier() methods
* `29ceb5385e <https://git.opendaylight.org/gerrit/#/q/29ceb5385e>`_
  `CONTROLLER-1897 <https://jira.opendaylight.org/browse/CONTROLLER-1897>`_
  : Do not format QNames to string on input
* `5a0b7e550a <https://git.opendaylight.org/gerrit/#/q/5a0b7e550a>`_
  `CONTROLLER-1897 <https://jira.opendaylight.org/browse/CONTROLLER-1897>`_
  : Update QNameFactory caching
* `5cc558ac2f <https://git.opendaylight.org/gerrit/#/q/5cc558ac2f>`_
  : Use Files.delete() in LocalSnapshotStore
* `9ba29cd861 <https://git.opendaylight.org/gerrit/#/q/9ba29cd861>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Do not enque purges for ask based protocol
* `f437308703 <https://git.opendaylight.org/gerrit/#/q/f437308703>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Remove PersistAbortTransactionPayload
* `bdc460d60b <https://git.opendaylight.org/gerrit/#/q/bdc460d60b>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Disable transaction tracking for ask-based protocol
* `cfdfdee3a1 <https://git.opendaylight.org/gerrit/#/q/cfdfdee3a1>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Allow transaction tracking to be disabled
* `a8fa0eeb17 <https://git.opendaylight.org/gerrit/#/q/a8fa0eeb17>`_
  `CONTROLLER-1893 <https://jira.opendaylight.org/browse/CONTROLLER-1893>`_
  : Poison entries outside of main lock
* `cf2733ffbd <https://git.opendaylight.org/gerrit/#/q/cf2733ffbd>`_
  : Derive config-artifacts from odlparent-lite


coe
---
* `7c13e76 <https://git.opendaylight.org/gerrit/#/q/7c13e76>`_
  : Bump mdsal to 3.0.10
* `562ee0d <https://git.opendaylight.org/gerrit/#/q/562ee0d>`_
  : Bump mdsal to 3.0.9
* `a84bac8 <https://git.opendaylight.org/gerrit/#/q/a84bac8>`_
  : Bump odlparent to 4.0.11


daexim
------
* `71d583a <https://git.opendaylight.org/gerrit/#/q/71d583a>`_
  : Bump mdsal to 3.0.10
* `f001920 <https://git.opendaylight.org/gerrit/#/q/f001920>`_
  : Bump mdsal to 3.0.9
* `3891e67 <https://git.opendaylight.org/gerrit/#/q/3891e67>`_
  : Bump odlparent to 4.0.11
* `8d13ed3 <https://git.opendaylight.org/gerrit/#/q/8d13ed3>`_
  : Derive artifacts from odlparent-lite


genius
------
* `cefa0e8c <https://git.opendaylight.org/gerrit/#/q/cefa0e8c>`_
  : Bump mdsal to 3.0.10
* `3fa65074 <https://git.opendaylight.org/gerrit/#/q/3fa65074>`_
  : Bump mdsal to 3.0.9
* `df5ddec5 <https://git.opendaylight.org/gerrit/#/q/df5ddec5>`_
  : Bump yangtools to 2.1.11
* `34e3d8ac <https://git.opendaylight.org/gerrit/#/q/34e3d8ac>`_
  : Bump odlparent to 4.0.11
* `6615f008 <https://git.opendaylight.org/gerrit/#/q/6615f008>`_
  `ENIUS-275 <https://jira.opendaylight.org/browse/ENIUS-275>`_
  : Fix wrong condition statement in update method


infrautils
----------
* `cebb4a2e <https://git.opendaylight.org/gerrit/#/q/cebb4a2e>`_
  : Bump odlparent to 4.0.11
* `bfdfd92e <https://git.opendaylight.org/gerrit/#/q/bfdfd92e>`_
  : Improve NamedLocks performance


integration/distribution
------------------------
* `e68f4ea <https://git.opendaylight.org/gerrit/#/q/e68f4ea>`_
  : Remove telemetry from distribution
* `d9498f4 <https://git.opendaylight.org/gerrit/#/q/d9498f4>`_
  : Bump mdsal to 3.0.10
* `faf31f7 <https://git.opendaylight.org/gerrit/#/q/faf31f7>`_
  : Bump mdsal to 3.0.9
* `9e123f4 <https://git.opendaylight.org/gerrit/#/q/9e123f4>`_
  : Bump yangtools to 2.1.11
* `01f5e51 <https://git.opendaylight.org/gerrit/#/q/01f5e51>`_
  : Bump odlparent to 4.0.11
* `e169330 <https://git.opendaylight.org/gerrit/#/q/e169330>`_
  : Update version after neon SR1
* `d05151d <https://git.opendaylight.org/gerrit/#/q/d05151d>`_
  : Update versions to reflect Neon SR1 release
* `8667149 <https://git.opendaylight.org/gerrit/#/q/8667149>`_
  : Remove SNMP4SDN from Neon distribution
* `4a69491 <https://git.opendaylight.org/gerrit/#/q/4a69491>`_
  : Pin pygments to 2.3.1


lispflowmapping
---------------
* `dcad9bf4 <https://git.opendaylight.org/gerrit/#/q/dcad9bf4>`_
  : Bump mdsal to 3.0.10
* `57a087e5 <https://git.opendaylight.org/gerrit/#/q/57a087e5>`_
  : Bump mdsal to 3.0.9
* `d56ce441 <https://git.opendaylight.org/gerrit/#/q/d56ce441>`_
  : Bump odlparent to 4.0.11


netconf
-------
* `e7f305bc5 <https://git.opendaylight.org/gerrit/#/q/e7f305bc5>`_
  `NETCONF-637 <https://jira.opendaylight.org/browse/NETCONF-637>`_
  : Fix mapping of Revision in Deviations
* `04d8ebeca <https://git.opendaylight.org/gerrit/#/q/04d8ebeca>`_
  `NETCONF-500 <https://jira.opendaylight.org/browse/NETCONF-500>`_
  : Update user-guide.rst
* `d16ab2fc6 <https://git.opendaylight.org/gerrit/#/q/d16ab2fc6>`_
  : Bump mdsal to 3.0.10
* `ce1226573 <https://git.opendaylight.org/gerrit/#/q/ce1226573>`_
  : Fix odlparent reference
* `9ad9749fc <https://git.opendaylight.org/gerrit/#/q/9ad9749fc>`_
  `NETCONF-633 <https://jira.opendaylight.org/browse/NETCONF-633>`_
  : Update netconf user guide with the information on how to use custom RPC with test-tool.
* `701c5282e <https://git.opendaylight.org/gerrit/#/q/701c5282e>`_
  : Bump mdsal to 3.0.9
* `793c33603 <https://git.opendaylight.org/gerrit/#/q/793c33603>`_
  : Bump yangtools to 2.1.11
* `ed635bd35 <https://git.opendaylight.org/gerrit/#/q/ed635bd35>`_
  : Bump odlparent to 4.0.11
* `9612e983a <https://git.opendaylight.org/gerrit/#/q/9612e983a>`_
  : Remove aaa-encrypt-service version
* `742641866 <https://git.opendaylight.org/gerrit/#/q/742641866>`_
  `TRNSPRTPCE-126 <https://jira.opendaylight.org/browse/TRNSPRTPCE-126>`_
  : Fix for deviation list mapping in Restconf
* `ca1cbb26b <https://git.opendaylight.org/gerrit/#/q/ca1cbb26b>`_
  : Remove dependency on sal-connector-api
* `3c555fe55 <https://git.opendaylight.org/gerrit/#/q/3c555fe55>`_
  : Fix typo: s/then/than
* `d6cc6c95d <https://git.opendaylight.org/gerrit/#/q/d6cc6c95d>`_
  `NETCONF-622 <https://jira.opendaylight.org/browse/NETCONF-622>`_
  : Teach ModelGenerator about AnyDataSchemaNodes
* `d7e246d3d <https://git.opendaylight.org/gerrit/#/q/d7e246d3d>`_
  : Add flexible mount point naming strategy
* `9bb9a8a0a <https://git.opendaylight.org/gerrit/#/q/9bb9a8a0a>`_
  : Improve global config application
* `268bde77f <https://git.opendaylight.org/gerrit/#/q/268bde77f>`_
  : Fix unsafe global config access
* `79780fe1e <https://git.opendaylight.org/gerrit/#/q/79780fe1e>`_
  `NETCONF-615 <https://jira.opendaylight.org/browse/NETCONF-615>`_
  : Fix DeviceOp DTCL
* `4b451950f <https://git.opendaylight.org/gerrit/#/q/4b451950f>`_
  `NETCONF-620 <https://jira.opendaylight.org/browse/NETCONF-620>`_
  : Fix preparing action with path containing augment
* `7ee80deb6 <https://git.opendaylight.org/gerrit/#/q/7ee80deb6>`_
  : Remove dependencies on controller APIs
* `69d5f1650 <https://git.opendaylight.org/gerrit/#/q/69d5f1650>`_
  : Do not deploy shaded-exificient-jar
* `ca0091fe9 <https://git.opendaylight.org/gerrit/#/q/ca0091fe9>`_
  : Fix mdsal-netconf-connector dependencies


netvirt
-------
* `794b687fb <https://git.opendaylight.org/gerrit/#/q/794b687fb>`_
  : Bump mdsal to 3.0.10
* `f9ef7bb9e <https://git.opendaylight.org/gerrit/#/q/f9ef7bb9e>`_
  : Update netvirt-openstack verified combinations
* `69e8d1156 <https://git.opendaylight.org/gerrit/#/q/69e8d1156>`_
  : Bump mdsal to 3.0.9
* `6b11c2791 <https://git.opendaylight.org/gerrit/#/q/6b11c2791>`_
  : Bump odlparent to 4.0.11
* `b41b8c546 <https://git.opendaylight.org/gerrit/#/q/b41b8c546>`_
  `NETVIRT-1604 <https://jira.opendaylight.org/browse/NETVIRT-1604>`_
  : Update resources/README to reflect current status
* `2cbebc359 <https://git.opendaylight.org/gerrit/#/q/2cbebc359>`_
  : Switch to using pre-commit instead of coala
* `3df884bad <https://git.opendaylight.org/gerrit/#/q/3df884bad>`_
  : Cleanup trailing whitespace
* `5bec982d1 <https://git.opendaylight.org/gerrit/#/q/5bec982d1>`_
  `NETVIRT-1591 <https://jira.opendaylight.org/browse/NETVIRT-1591>`_
  : SNAT External Fixed IPs flow missing
* `c55d8c4b6 <https://git.opendaylight.org/gerrit/#/q/c55d8c4b6>`_
  : Do not install/deploy karaf distro
* `975a4cef5 <https://git.opendaylight.org/gerrit/#/q/975a4cef5>`_
  : Pin requests<2.22.0
* `a5a888213 <https://git.opendaylight.org/gerrit/#/q/a5a888213>`_
  : Pin pygments to 2.3.x


neutron
-------
* `23c3aabe <https://git.opendaylight.org/gerrit/#/q/23c3aabe>`_
  : Bump mdsal to 3.0.10
* `60b086d2 <https://git.opendaylight.org/gerrit/#/q/60b086d2>`_
  : Bump mdsal to 3.0.9
* `a86ef3ec <https://git.opendaylight.org/gerrit/#/q/a86ef3ec>`_
  : Bump odlparent to 4.0.11


openflowplugin
--------------
* `c3e108e1f <https://git.opendaylight.org/gerrit/#/q/c3e108e1f>`_
  `OPNFLWPLUG-1052 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1052>`_
  : Do not store empty node list
* `f5d243351 <https://git.opendaylight.org/gerrit/#/q/f5d243351>`_
  : Bump mdsal to 3.0.10
* `de38e09a2 <https://git.opendaylight.org/gerrit/#/q/de38e09a2>`_
  `OPNFLWPLUG-644 <https://jira.opendaylight.org/browse/OPNFLWPLUG-644>`_
  : OPNFLWPLUG-644 : Documentation for openflowplugin event logging using log4j
* `b0d972078 <https://git.opendaylight.org/gerrit/#/q/b0d972078>`_
  `OPNFLWPLUG-644 <https://jira.opendaylight.org/browse/OPNFLWPLUG-644>`_
  : OPNFLWPLUG-644: Openflow Event logging using log4j
* `b9e4b1b54 <https://git.opendaylight.org/gerrit/#/q/b9e4b1b54>`_
  `OPNFLWPLUG-1073 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1073>`_
  : OPNFLWPLUG-1073 : Using ofppool executor for role change service request callbacks
* `9f7e6891e <https://git.opendaylight.org/gerrit/#/q/9f7e6891e>`_
  : Cleanup JobEntry
* `7997b1ea3 <https://git.opendaylight.org/gerrit/#/q/7997b1ea3>`_
  : Simplify job NodeConfiguratorImpl dispatch
* `c61e1cd75 <https://git.opendaylight.org/gerrit/#/q/c61e1cd75>`_
  : Add task termination traces
* `7b1bfa516 <https://git.opendaylight.org/gerrit/#/q/7b1bfa516>`_
  `OPNFLWPLUG-1056 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1056>`_
  : OPNFLWPLUG-1056 : Default table flows missing
* `a624a9f56 <https://git.opendaylight.org/gerrit/#/q/a624a9f56>`_
  : Bump mdsal to 3.0.9
* `02441ab37 <https://git.opendaylight.org/gerrit/#/q/02441ab37>`_
  : Bump odlparent to 4.0.11
* `dc44483dc <https://git.opendaylight.org/gerrit/#/q/dc44483dc>`_
  : Migrate to LoggingFutures
* `96026a691 <https://git.opendaylight.org/gerrit/#/q/96026a691>`_
  `OPNFLWPLUG-1062 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1062>`_
  : OPNFLWPLUG-1062 Include additional LLDP fields in liblldp
* `d6279d55d <https://git.opendaylight.org/gerrit/#/q/d6279d55d>`_
  `OPNFLWPLUG-1067 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1067>`_
  : Add IpConversionUtil.hasIpv4Prefix()
* `c72bf2b1e <https://git.opendaylight.org/gerrit/#/q/c72bf2b1e>`_
  : Reduce use of JdkFutureAdapters
* `7c2c638c2 <https://git.opendaylight.org/gerrit/#/q/7c2c638c2>`_
  : Cleanup use of Guava Function
* `474a4384a <https://git.opendaylight.org/gerrit/#/q/474a4384a>`_
  : Remove use of Objects.{is,non}Null
* `cde7d096e <https://git.opendaylight.org/gerrit/#/q/cde7d096e>`_
  : Take advantage of nonnullFoo()
* `604c8e168 <https://git.opendaylight.org/gerrit/#/q/604c8e168>`_
  : Add NodeConfiguratorImpl enqueue trace
* `b37714664 <https://git.opendaylight.org/gerrit/#/q/b37714664>`_
  : Update flow during arbitrator reconciliation should be handled as delete bundle message for original flow followed by add bundle message for updated flow.
* `bf3a16f0b <https://git.opendaylight.org/gerrit/#/q/bf3a16f0b>`_
  : Remove use of StringBuffer
* `e4cb1c110 <https://git.opendaylight.org/gerrit/#/q/e4cb1c110>`_
  `OPNFLWPLUG-1056 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1056>`_
  : Revert "Merge "OPNFLWPLUG-1056 : Default table flows missing" into stable/neon"
* `ba6fb0750 <https://git.opendaylight.org/gerrit/#/q/ba6fb0750>`_
  `OPNFLWPLUG-1027 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1027>`_
  : OPNFLWPLUG-1027 : Topology manager writes link information everytime topology-lldp-discovery publish the linkAdded/linkRemove notificaiton
* `2284d4f27 <https://git.opendaylight.org/gerrit/#/q/2284d4f27>`_
  `OPNFLWPLUG-1056 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1056>`_
  : OPNFLWPLUG-1056 : Default table flows missing


ovsdb
-----
* `e619d10a7 <https://git.opendaylight.org/gerrit/#/q/e619d10a7>`_
  : Cleanup OvsdbDataTreeChangeListener
* `204a4da45 <https://git.opendaylight.org/gerrit/#/q/204a4da45>`_
  `OVSDB-486 <https://jira.opendaylight.org/browse/OVSDB-486>`_
  : OVSDB-486 Fix Null Pointer Exception in OVSDB
* `5d49a21ca <https://git.opendaylight.org/gerrit/#/q/5d49a21ca>`_
  : Bump mdsal to 3.0.10
* `47a27c898 <https://git.opendaylight.org/gerrit/#/q/47a27c898>`_
  : Bump mdsal to 3.0.9
* `084994f3e <https://git.opendaylight.org/gerrit/#/q/084994f3e>`_
  : Bump odlparent to 4.0.11
* `43f7c687d <https://git.opendaylight.org/gerrit/#/q/43f7c687d>`_
  `OVSDB-480 <https://jira.opendaylight.org/browse/OVSDB-480>`_
  : Update docs/ovsdb-user-guide.rst and README


serviceutils
------------
* `5ddf02f <https://git.opendaylight.org/gerrit/#/q/5ddf02f>`_
  : Bump mdsal to 3.0.10
* `a576a3e <https://git.opendaylight.org/gerrit/#/q/a576a3e>`_
  : Bump mdsal to 3.0.9
* `15f7b01 <https://git.opendaylight.org/gerrit/#/q/15f7b01>`_
  : Bump yangtools to 2.1.11
* `bca9c8f <https://git.opendaylight.org/gerrit/#/q/bca9c8f>`_
  : Bump odlparent to 4.0.11


sfc
---
* `a6f8dc42 <https://git.opendaylight.org/gerrit/#/q/a6f8dc42>`_
  : Bump mdsal to 3.0.10
* `130cb64f <https://git.opendaylight.org/gerrit/#/q/130cb64f>`_
  : Bump mdsal to 3.0.9
* `6fee3425 <https://git.opendaylight.org/gerrit/#/q/6fee3425>`_
  : Bump odlparent to 4.0.11

