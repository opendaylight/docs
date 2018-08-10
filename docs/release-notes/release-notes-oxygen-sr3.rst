Oxygen-SR3 Release Notes
========================

This page details changes and bug fixes between the Oxygen Stability Release 2 (Oxygen-SR2)
and the Oxygen Stability Release 3 (Oxygen-SR3) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------

* serviceutils

aaa
---
* `99839b3 <https://git.opendaylight.org/gerrit/#/q/99839b3>`_
  : Split OSGi dependency from AAAShiroProvider into new class
* `b38c242 <https://git.opendaylight.org/gerrit/#/q/b38c242>`_
  `AAA-176 <https://jira.opendaylight.org/browse/AAA-176>`_
  : Handle UnknownSessionException in ODLAuthenticator
* `f04b2bb <https://git.opendaylight.org/gerrit/#/q/f04b2bb>`_
  : Bump to odlparent 3.1.3
* `284c9e4 <https://git.opendaylight.org/gerrit/#/q/284c9e4>`_
  `CONTROLLER-1838 <https://jira.opendaylight.org/browse/CONTROLLER-1838>`_
  : Remove dynamicAuthorization
* `dbd16d2 <https://git.opendaylight.org/gerrit/#/q/dbd16d2>`_
  : Fix MDSALDynamicAuthorizationFilterTest failure
* `bede93c <https://git.opendaylight.org/gerrit/#/q/bede93c>`_
  : Subscribe to authorization information instead of reading it
* `2d3960e <https://git.opendaylight.org/gerrit/#/q/2d3960e>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


alto
----
* `dacf444 <https://git.opendaylight.org/gerrit/#/q/dacf444>`_
  : Fix model typos
* `c70e8d6 <https://git.opendaylight.org/gerrit/#/q/c70e8d6>`_
  : Bump to odlparent 3.1.3
* `fd0d679 <https://git.opendaylight.org/gerrit/#/q/fd0d679>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


bgpcep
------
* `cd1b635 <https://git.opendaylight.org/gerrit/#/q/cd1b635>`_
  : Bump yangtools to 2.0.6.1
* `6d8c440 <https://git.opendaylight.org/gerrit/#/q/6d8c440>`_
  `YANGTOOLS-889 <https://jira.opendaylight.org/browse/YANGTOOLS-889>`_
  : Fix invalid models
* `599f136 <https://git.opendaylight.org/gerrit/#/q/599f136>`_
  : Fix invalid flowspec model
* `3c0db91 <https://git.opendaylight.org/gerrit/#/q/3c0db91>`_
  : Fix invalid rsvp model
* `047f974 <https://git.opendaylight.org/gerrit/#/q/047f974>`_
  : Bump to odlparent 3.1.3
* `af1373b <https://git.opendaylight.org/gerrit/#/q/af1373b>`_
  `PCEP-815 <https://jira.opendaylight.org/browse/PCEP-815>`_
  : fix timing issue in server creation for BmpMockTest
* `37481db <https://git.opendaylight.org/gerrit/#/q/37481db>`_
  : Reduce use of waitFutureSuccess utility
* `7e8bf73 <https://git.opendaylight.org/gerrit/#/q/7e8bf73>`_
  `PCEP-814 <https://jira.opendaylight.org/browse/PCEP-814>`_
  : Rework BmpMockDispatcherTest
* `fb0150a <https://git.opendaylight.org/gerrit/#/q/fb0150a>`_
  `PCEP-813 <https://jira.opendaylight.org/browse/PCEP-813>`_
  : Fix calculation and roll-over of BGP operational neighbor uptime value.
* `7b06268 <https://git.opendaylight.org/gerrit/#/q/7b06268>`_
  `PCEP-799 <https://jira.opendaylight.org/browse/PCEP-799>`_
  : Improve handling for protocols config changes
* `cfe971a <https://git.opendaylight.org/gerrit/#/q/cfe971a>`_
  : Inherit common extensions families dependencies
* `a6d5803 <https://git.opendaylight.org/gerrit/#/q/a6d5803>`_
  : Create common parent for extensions families
* `57c5fa8 <https://git.opendaylight.org/gerrit/#/q/57c5fa8>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


bier
----
* `d270cf9 <https://git.opendaylight.org/gerrit/#/q/d270cf9>`_
  : Bump to odlparent 3.1.3
* `9a01bd9 <https://git.opendaylight.org/gerrit/#/q/9a01bd9>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


controller
----------
* `4a133e1 <https://git.opendaylight.org/gerrit/#/q/4a133e1>`_
  `CONTROLLER-1855 <https://jira.opendaylight.org/browse/CONTROLLER-1855>`_
  : Change log to warn in LocalThreePhaseCommitCohort
* `4c0d917 <https://git.opendaylight.org/gerrit/#/q/4c0d917>`_
  : Bump yangtools to 2.0.6.1
* `203caf5 <https://git.opendaylight.org/gerrit/#/q/203caf5>`_
  : Bump to odlparent 3.1.3
* `f3ef06a <https://git.opendaylight.org/gerrit/#/q/f3ef06a>`_
  : Fix intermittent testFlipMemberVotingStates failure
* `248d53d <https://git.opendaylight.org/gerrit/#/q/248d53d>`_
  : Trace the originating generation in RGE
* `a611ee5 <https://git.opendaylight.org/gerrit/#/q/a611ee5>`_
  `CONTROLLER-1836 <https://jira.opendaylight.org/browse/CONTROLLER-1836>`_
  : Fix shard deadlock in 3 nodes
* `f775f21 <https://git.opendaylight.org/gerrit/#/q/f775f21>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1
* `548f112 <https://git.opendaylight.org/gerrit/#/q/548f112>`_
  `ENIUS-138 <https://jira.opendaylight.org/browse/ENIUS-138>`_
  : export two additional packages containing JMX *M[X]Bean
* `34c55b1 <https://git.opendaylight.org/gerrit/#/q/34c55b1>`_
  : Fix pax exam issue
* `13a99d5 <https://git.opendaylight.org/gerrit/#/q/13a99d5>`_
  `CONTROLLER-1835 <https://jira.opendaylight.org/browse/CONTROLLER-1835>`_
  : fix FollowerInfo @ConstructorProperties for valid ShardStatsMXBean
* `2ddb0c9 <https://git.opendaylight.org/gerrit/#/q/2ddb0c9>`_
  `CONTROLLER-1832 <https://jira.opendaylight.org/browse/CONTROLLER-1832>`_
  : make Transaction Trace re-use BindingToNormalizedNodeCodec instead new
* `bea2448 <https://git.opendaylight.org/gerrit/#/q/bea2448>`_
  `CONTROLLER-1834 <https://jira.opendaylight.org/browse/CONTROLLER-1834>`_
  : fix tracing ping-pong DataBroker wiring bug in trace blueprint XML
* `5afe951 <https://git.opendaylight.org/gerrit/#/q/5afe951>`_
  : BUG-8858: remove sleeps from test driver


coe
---
* `5c232a2 <https://git.opendaylight.org/gerrit/#/q/5c232a2>`_
  : Bump to odlparent 3.1.3
* `f1ed856 <https://git.opendaylight.org/gerrit/#/q/f1ed856>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1
* `1c53779 <https://git.opendaylight.org/gerrit/#/q/1c53779>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Switch to using lfdocs-conf to pull in theme


daexim
------
* `6bc2c86 <https://git.opendaylight.org/gerrit/#/q/6bc2c86>`_
  : Bump to odlparent 3.1.3
* `c22fb3d <https://git.opendaylight.org/gerrit/#/q/c22fb3d>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


dlux
----
* `58fd7fc <https://git.opendaylight.org/gerrit/#/q/58fd7fc>`_
  : Bump node version o at least 4.x
* `7f7f0cd <https://git.opendaylight.org/gerrit/#/q/7f7f0cd>`_
  : Bump to odlparent 3.1.3
* `2060262 <https://git.opendaylight.org/gerrit/#/q/2060262>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


dluxapps
--------
* `e947ca6 <https://git.opendaylight.org/gerrit/#/q/e947ca6>`_
  : Bump to odlparent 3.1.3
* `f31549e <https://git.opendaylight.org/gerrit/#/q/f31549e>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


genius
------
* `87668aa <https://git.opendaylight.org/gerrit/#/q/87668aa>`_
  `ENIUS-192 <https://jira.opendaylight.org/browse/ENIUS-192>`_
  : netvirt 3node CSIT - Unable to initialize bean tepCommandHelper
* `2ee61de <https://git.opendaylight.org/gerrit/#/q/2ee61de>`_
  : Add default genius-mdsaulutil-config.xml
* `f983a3c <https://git.opendaylight.org/gerrit/#/q/f983a3c>`_
  : Simplify ActionConverterUtil
* `4517839 <https://git.opendaylight.org/gerrit/#/q/4517839>`_
  `ENIUS-133 <https://jira.opendaylight.org/browse/ENIUS-133>`_
  : OVS Port Delete not going through
* `51524a9 <https://git.opendaylight.org/gerrit/#/q/51524a9>`_
  `YANGTOOLS-889 <https://jira.opendaylight.org/browse/YANGTOOLS-889>`_
  : Fix invalid models
* `1070899 <https://git.opendaylight.org/gerrit/#/q/1070899>`_
  : InterfaceInventoryStateListener: check presence in tx
* `151e142 <https://git.opendaylight.org/gerrit/#/q/151e142>`_
  `ENIUS-102 <https://jira.opendaylight.org/browse/ENIUS-102>`_
  : GENIUS-102: interface manager: use transaction manager
* `4ae6dfb <https://git.opendaylight.org/gerrit/#/q/4ae6dfb>`_
  `SRVUTILS-2 <https://jira.opendaylight.org/browse/SRVUTILS-2>`_
  : Use new UpgradeConfig
* `cddd757 <https://git.opendaylight.org/gerrit/#/q/cddd757>`_
  : Bump to odlparent 3.1.3
* `d4acea7 <https://git.opendaylight.org/gerrit/#/q/d4acea7>`_
  `ENIUS-191 <https://jira.opendaylight.org/browse/ENIUS-191>`_
  : IFM Instance Recovery failing randomly.
* `dbc8e7a <https://git.opendaylight.org/gerrit/#/q/dbc8e7a>`_
  : Default monitor interval changed to 1000.
* `a47cf6d <https://git.opendaylight.org/gerrit/#/q/a47cf6d>`_
  `ENIUS-178 <https://jira.opendaylight.org/browse/ENIUS-178>`_
  : Add a returning variant of managed transactions
* `ca68b73 <https://git.opendaylight.org/gerrit/#/q/ca68b73>`_
  `ENIUS-164 <https://jira.opendaylight.org/browse/ENIUS-164>`_
  : GENIUS-164 Fix-Table 0 not programmed occasionally
* `8d941ca <https://git.opendaylight.org/gerrit/#/q/8d941ca>`_
  : Remove DJC documentation
* `9d09b0c <https://git.opendaylight.org/gerrit/#/q/9d09b0c>`_
  `OPNFLWPLUG-1024 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1024>`_
  : Avoid ofp topology discovery
* `e6108fe <https://git.opendaylight.org/gerrit/#/q/e6108fe>`_
  : Remove some BigInteger/String conversions
* `6d84b1a <https://git.opendaylight.org/gerrit/#/q/6d84b1a>`_
  `ENIUS-175 <https://jira.opendaylight.org/browse/ENIUS-175>`_
  : vlan member interface creation fails in netvirt 3 node CSIT
* `72e38d2 <https://git.opendaylight.org/gerrit/#/q/72e38d2>`_
  : To drop update interface in case of tep add
* `7d99eab <https://git.opendaylight.org/gerrit/#/q/7d99eab>`_
  : Fix typo in interfacemanager design document
* `f5fe9a8 <https://git.opendaylight.org/gerrit/#/q/f5fe9a8>`_
  : Omitting group-id from DS:dpn-teps-state
* `002e141 <https://git.opendaylight.org/gerrit/#/q/002e141>`_
  : getInterfaceFromIfIndex() should not log ERROR
* `d3b966f <https://git.opendaylight.org/gerrit/#/q/d3b966f>`_
  : Handling external tunnel Deletion
* `cbb1c02 <https://git.opendaylight.org/gerrit/#/q/cbb1c02>`_
  : Remove genius/tools and genius/srm
* `62993c6 <https://git.opendaylight.org/gerrit/#/q/62993c6>`_
  : Updating service recovery spec to point to existing service recovery test-plans
* `e11f2a4 <https://git.opendaylight.org/gerrit/#/q/e11f2a4>`_
  : Add IfIndex-Interface Cache
* `d7bc870 <https://git.opendaylight.org/gerrit/#/q/d7bc870>`_
  : remove duplicate pax-cdi-api dependency in mdsalutil-impl
* `f18121c <https://git.opendaylight.org/gerrit/#/q/f18121c>`_
  `CONTROLLER-1835 <https://jira.opendaylight.org/browse/CONTROLLER-1835>`_
  : extend DatastoreServiceStatusProvider with Shard Leader/Follower status
* `376cfae <https://git.opendaylight.org/gerrit/#/q/376cfae>`_
  `ENIUS-138 <https://jira.opendaylight.org/browse/ENIUS-138>`_
  : look up MBean in DatastoreServiceStatusProvider constructor
* `2efb1b5 <https://git.opendaylight.org/gerrit/#/q/2efb1b5>`_
  `ENIUS-138 <https://jira.opendaylight.org/browse/ENIUS-138>`_
  : use strong instead "stringly" typing in DatastoreServiceStatusProvider
* `8e8f259 <https://git.opendaylight.org/gerrit/#/q/8e8f259>`_
  `INFRAUTILS-31 <https://jira.opendaylight.org/browse/INFRAUTILS-31>`_
  : report exceptions from datastore service with cause (INFRAUTILS-31)
* `54176e0 <https://git.opendaylight.org/gerrit/#/q/54176e0>`_
  : Add Equinox Common to the Xtend Maven plugin
* `726681e <https://git.opendaylight.org/gerrit/#/q/726681e>`_
  `ENIUS-138 <https://jira.opendaylight.org/browse/ENIUS-138>`_
  : make initial datastore service report query for real
* `bfa6e3f <https://git.opendaylight.org/gerrit/#/q/bfa6e3f>`_
  : use MBeanUtils getMBeanAttribute instead deprecated readMBeanAttribute
* `d0f0f24 <https://git.opendaylight.org/gerrit/#/q/d0f0f24>`_
  : Remove redundant type information
* `7c20649 <https://git.opendaylight.org/gerrit/#/q/7c20649>`_
  : ItmRpcService to return tunnelName
* `bfc6b6a <https://git.opendaylight.org/gerrit/#/q/bfc6b6a>`_
  `NETVIRT-1307 <https://jira.opendaylight.org/browse/NETVIRT-1307>`_
  : Set Proper EtherType for MPLS Pop Action based on the IP Prefix address family
* `a33d5ee <https://git.opendaylight.org/gerrit/#/q/a33d5ee>`_
  `ENIUS-162 <https://jira.opendaylight.org/browse/ENIUS-162>`_
  : GENIUS-162: Minor changes to karaf log levels and messages
* `f863e2c <https://git.opendaylight.org/gerrit/#/q/f863e2c>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1
* `5d15a87 <https://git.opendaylight.org/gerrit/#/q/5d15a87>`_
  : Turning on BFD selectively
* `fffc3e5 <https://git.opendaylight.org/gerrit/#/q/fffc3e5>`_
  : fix broken DataTreeEventCallbackRegistrar onAddOrUpdate()
* `6926968 <https://git.opendaylight.org/gerrit/#/q/6926968>`_
  `ENIUS-132 <https://jira.opendaylight.org/browse/ENIUS-132>`_
  : GENIUS-132: Add timeout support for Genius service recovery.
* `8fc62b4 <https://git.opendaylight.org/gerrit/#/q/8fc62b4>`_
  : itm-direct-tunnels : key=flow should be set for internal vxlan tunnels


groupbasedpolicy
----------------
* `b3eb247 <https://git.opendaylight.org/gerrit/#/q/b3eb247>`_
  : Fix wrong prefix
* `51ead1c <https://git.opendaylight.org/gerrit/#/q/51ead1c>`_
  : Bump to odlparent 3.1.3
* `08cad35 <https://git.opendaylight.org/gerrit/#/q/08cad35>`_
  : Replace bower with npm
* `90ae366 <https://git.opendaylight.org/gerrit/#/q/90ae366>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


honeycomb/vbd
-------------
* `b7c3264 <https://git.opendaylight.org/gerrit/#/q/b7c3264>`_
  : fix missing imports for ietf-interfaces
* `20a6a29 <https://git.opendaylight.org/gerrit/#/q/20a6a29>`_
  : Bump to odlparent 3.1.3
* `6f64fb1 <https://git.opendaylight.org/gerrit/#/q/6f64fb1>`_
  : Replace bower with npm
* `e57af41 <https://git.opendaylight.org/gerrit/#/q/e57af41>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


infrautils
----------
* `aee908c <https://git.opendaylight.org/gerrit/#/q/aee908c>`_
  : Add infrautils getting-started-guide
* `1dc7e4b <https://git.opendaylight.org/gerrit/#/q/1dc7e4b>`_
  : Bump to odlparent 3.1.3
* `6864ea5 <https://git.opendaylight.org/gerrit/#/q/6864ea5>`_
  : Add a CheckedFunction
* `8c86485 <https://git.opendaylight.org/gerrit/#/q/8c86485>`_
  : Handle IPv6 addresses in the cluster
* `aab8359 <https://git.opendaylight.org/gerrit/#/q/aab8359>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Switch to using lfdocs-conf to pull in theme
* `21900da <https://git.opendaylight.org/gerrit/#/q/21900da>`_
  : Enable Sphinx nitpicky mode and fail on warnings
* `04bc9aa <https://git.opendaylight.org/gerrit/#/q/04bc9aa>`_
  : Fix Sphinx build warnings
* `8fcbda6 <https://git.opendaylight.org/gerrit/#/q/8fcbda6>`_
  `INFRAUTILS-31 <https://jira.opendaylight.org/browse/INFRAUTILS-31>`_
  : INFRAUTILS-31: Add errorCause to ServiceDescriptor
* `6e8e5d8 <https://git.opendaylight.org/gerrit/#/q/6e8e5d8>`_
  : Print isOperational() in statusSummary
* `b70e9cb <https://git.opendaylight.org/gerrit/#/q/b70e9cb>`_
  `INFRAUTILS-33 <https://jira.opendaylight.org/browse/INFRAUTILS-33>`_
  : add diagstatus.web with /diagstatus servlet
* `3f8cf9f <https://git.opendaylight.org/gerrit/#/q/3f8cf9f>`_
  : let MBeanUtils' readMBeanAttribute throw problems, not swallow and log
* `6cb7a79 <https://git.opendaylight.org/gerrit/#/q/6cb7a79>`_
  `INFRAUTILS-33 <https://jira.opendaylight.org/browse/INFRAUTILS-33>`_
  : add isOperational() to diagstatus, and expose it in JSON and CLI
* `e076d0a <https://git.opendaylight.org/gerrit/#/q/e076d0a>`_
  `INFRAUTILS-33 <https://jira.opendaylight.org/browse/INFRAUTILS-33>`_
  : move diagstatus JSON from MBean into core Service
* `78d5485 <https://git.opendaylight.org/gerrit/#/q/78d5485>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1
* `9f2b918 <https://git.opendaylight.org/gerrit/#/q/9f2b918>`_
  `ENIUS-138 <https://jira.opendaylight.org/browse/ENIUS-138>`_
  : add getMBean(String jmxName, Class<T> klass) to MBeanUtils
* `f6afed6 <https://git.opendaylight.org/gerrit/#/q/f6afed6>`_
  : Enhance diagstatus ERROR message
* `011a926 <https://git.opendaylight.org/gerrit/#/q/011a926>`_
  `INFRAUTILS-44 <https://jira.opendaylight.org/browse/INFRAUTILS-44>`_
  : fix SystemReady.registerListener(SystemReadyListener) if already active


integration/distribution
------------------------
* `8285fad <https://git.opendaylight.org/gerrit/#/q/8285fad>`_
  : Bump to odlparent 3.1.3
* `5657078 <https://git.opendaylight.org/gerrit/#/q/5657078>`_
  : Fix cluster script to handle "only" default shard
* `8370145 <https://git.opendaylight.org/gerrit/#/q/8370145>`_
  : Set activeByDefault=true for serviceutils
* `bd3318d <https://git.opendaylight.org/gerrit/#/q/bd3318d>`_
  : Add serviceutils to distribution
* `7022701 <https://git.opendaylight.org/gerrit/#/q/7022701>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


jsonrpc
-------
* `c1d7830 <https://git.opendaylight.org/gerrit/#/q/c1d7830>`_
  : Bump to odlparent 3.1.3
* `a26f21a <https://git.opendaylight.org/gerrit/#/q/a26f21a>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


l2switch
--------
* `f4e67ce <https://git.opendaylight.org/gerrit/#/q/f4e67ce>`_
  : Bump to odlparent 3.1.3
* `1d59b28 <https://git.opendaylight.org/gerrit/#/q/1d59b28>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


lispflowmapping
---------------
* `098c58f <https://git.opendaylight.org/gerrit/#/q/098c58f>`_
  : Bump to odlparent 3.1.3
* `ecd6fb8 <https://git.opendaylight.org/gerrit/#/q/ecd6fb8>`_
  : Add ignore-lispflowmapping-integrationtest profile
* `290f665 <https://git.opendaylight.org/gerrit/#/q/290f665>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1
* `6a4a198 <https://git.opendaylight.org/gerrit/#/q/6a4a198>`_
  : Fix integrationtest log levels
* `2f03c0f <https://git.opendaylight.org/gerrit/#/q/2f03c0f>`_
  : Keep integrationtest runtime folder


mdsal
-----
* `d13f76f <https://git.opendaylight.org/gerrit/#/q/d13f76f>`_
  : Bump yangtools to 2.0.6.1
* `5c370a4 <https://git.opendaylight.org/gerrit/#/q/5c370a4>`_
  : Fix case-related augment test
* `4cf568b <https://git.opendaylight.org/gerrit/#/q/4cf568b>`_
  : Bump to odlparent 3.1.3
* `139984d <https://git.opendaylight.org/gerrit/#/q/139984d>`_
  `ODLPARENT-156 <https://jira.opendaylight.org/browse/ODLPARENT-156>`_
  : Enforce Xtend Maven plugin dependencies
* `b8c6040 <https://git.opendaylight.org/gerrit/#/q/b8c6040>`_
  : BUG-7697: add defences against nulls
* `4a95929 <https://git.opendaylight.org/gerrit/#/q/4a95929>`_
  : Override xtend-maven-plugin dependencies
* `c6eafa6 <https://git.opendaylight.org/gerrit/#/q/c6eafa6>`_
  `MDSAL-328 <https://jira.opendaylight.org/browse/MDSAL-328>`_
  : Validate augmentation binding class
* `528f05b <https://git.opendaylight.org/gerrit/#/q/528f05b>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


nemo
----
* `26102f5 <https://git.opendaylight.org/gerrit/#/q/26102f5>`_
  : Bump to odlparent 3.1.3
* `2f15b41 <https://git.opendaylight.org/gerrit/#/q/2f15b41>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


netconf
-------
* `95d503b <https://git.opendaylight.org/gerrit/#/q/95d503b>`_
  : Bump yangtools to 2.0.6.1
* `388a8c2 <https://git.opendaylight.org/gerrit/#/q/388a8c2>`_
  `NETCONF-551 <https://jira.opendaylight.org/browse/NETCONF-551>`_
  : NETCONF-551 : Invalid CSS URI in apidocs explorer
* `0a45aca <https://git.opendaylight.org/gerrit/#/q/0a45aca>`_
  : Bump to odlparent 3.1.3
* `30f0380 <https://git.opendaylight.org/gerrit/#/q/30f0380>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1
* `69c92b2 <https://git.opendaylight.org/gerrit/#/q/69c92b2>`_
  : Make RuntimeRpc revision aware
* `2eb70b5 <https://git.opendaylight.org/gerrit/#/q/2eb70b5>`_
  : Convert ProxyDOMDataBroker tx creation to async


netvirt
-------
* `468f123 <https://git.opendaylight.org/gerrit/#/q/468f123>`_
  `NETVIRT-1388 <https://jira.opendaylight.org/browse/NETVIRT-1388>`_
  : ECMP IPv6 Extra Route is not working with L3VPN
* `6c31b36 <https://git.opendaylight.org/gerrit/#/q/6c31b36>`_
  : Remove app-config-pusher feature dependency
* `1cb20c9 <https://git.opendaylight.org/gerrit/#/q/1cb20c9>`_
  `NETVIRT-1294 <https://jira.opendaylight.org/browse/NETVIRT-1294>`_
  : 21->26 flow missing for NAT use case
* `4e4bdd4 <https://git.opendaylight.org/gerrit/#/q/4e4bdd4>`_
  `NETVIRT-1387 <https://jira.opendaylight.org/browse/NETVIRT-1387>`_
  : Traffic drop b/w DC-GW and VM
* `00a0217 <https://git.opendaylight.org/gerrit/#/q/00a0217>`_
  `NETVIRT-1385 <https://jira.opendaylight.org/browse/NETVIRT-1385>`_
  : Use managed transactions in natservice-impl
* `0cb7f0c <https://git.opendaylight.org/gerrit/#/q/0cb7f0c>`_
  : Bump to odlparent 3.1.3
* `716fb89 <https://git.opendaylight.org/gerrit/#/q/716fb89>`_
  `NETVIRT-1182 <https://jira.opendaylight.org/browse/NETVIRT-1182>`_
  : VPN-to-Router Associate/Disas Performance Improve
* `538452e <https://git.opendaylight.org/gerrit/#/q/538452e>`_
  `NETVIRT-1383 <https://jira.opendaylight.org/browse/NETVIRT-1383>`_
  : Conntrack headers fails to parse.
* `438d08b <https://git.opendaylight.org/gerrit/#/q/438d08b>`_
  `NETVIRT-1382 <https://jira.opendaylight.org/browse/NETVIRT-1382>`_
  : Fix exception in addSwitch
* `36cd441 <https://git.opendaylight.org/gerrit/#/q/36cd441>`_
  : Fix typos in log message
* `a754f2e <https://git.opendaylight.org/gerrit/#/q/a754f2e>`_
  `NETVIRT-1182 <https://jira.opendaylight.org/browse/NETVIRT-1182>`_
  : VPN-to-Router Associate/Disas Performance Improve
* `39be95f <https://git.opendaylight.org/gerrit/#/q/39be95f>`_
  `NETVIRT-1209 <https://jira.opendaylight.org/browse/NETVIRT-1209>`_
  : VNI based L3 forwarding support for BGPVPN
* `a2ec02b <https://git.opendaylight.org/gerrit/#/q/a2ec02b>`_
  : LPort tag issue with controller-snat
* `57f1ad5 <https://git.opendaylight.org/gerrit/#/q/57f1ad5>`_
  `NETVIRT-1379 <https://jira.opendaylight.org/browse/NETVIRT-1379>`_
  : Close transactions in VpnInterfaceManager::update
* `5cec914 <https://git.opendaylight.org/gerrit/#/q/5cec914>`_
  : Close txes in NatRouterInterfaceListener::add
* `7953c87 <https://git.opendaylight.org/gerrit/#/q/7953c87>`_
  `NETVIRT-1352 <https://jira.opendaylight.org/browse/NETVIRT-1352>`_
  : Remote group flow fails in conntrack SNAT
* `d31cb21 <https://git.opendaylight.org/gerrit/#/q/d31cb21>`_
  `OPNFLWPLUG-1024 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1024>`_
  : Avoid ofp topology discovery
* `853b8d9 <https://git.opendaylight.org/gerrit/#/q/853b8d9>`_
  `NETVIRT-1371 <https://jira.opendaylight.org/browse/NETVIRT-1371>`_
  : ARP flow fails due missing group
* `6a3e7e5 <https://git.opendaylight.org/gerrit/#/q/6a3e7e5>`_
  `NETVIRT-1375 <https://jira.opendaylight.org/browse/NETVIRT-1375>`_
  : L3VPN creation is throwing Exception
* `1a66a89 <https://git.opendaylight.org/gerrit/#/q/1a66a89>`_
  : syncRemoteAclTable removed as synchronized
* `a76ae43 <https://git.opendaylight.org/gerrit/#/q/a76ae43>`_
  `NETVIRT-1355 <https://jira.opendaylight.org/browse/NETVIRT-1355>`_
  : ECMP routes are not clearing in dualstack network
* `dcc08bf <https://git.opendaylight.org/gerrit/#/q/dcc08bf>`_
  : Fix for VM deletion issue
* `f708ec2 <https://git.opendaylight.org/gerrit/#/q/f708ec2>`_
  : Delete unProcessedElanInterfaces properly
* `68474df <https://git.opendaylight.org/gerrit/#/q/68474df>`_
  `NETVIRT-1369 <https://jira.opendaylight.org/browse/NETVIRT-1369>`_
  : NETVIRT-1369: Conntrack headers are not removed
* `21f4003 <https://git.opendaylight.org/gerrit/#/q/21f4003>`_
  `NETVIRT-1223 <https://jira.opendaylight.org/browse/NETVIRT-1223>`_
  : Prefix to interface d.s not cleared
* `8cd5a86 <https://git.opendaylight.org/gerrit/#/q/8cd5a86>`_
  : Remove redundant method invocation
* `43dfb64 <https://git.opendaylight.org/gerrit/#/q/43dfb64>`_
  `NETVIRT-1132 <https://jira.opendaylight.org/browse/NETVIRT-1132>`_
  : Fix for NPE in TunnelInterfaceStateListener
* `b504132 <https://git.opendaylight.org/gerrit/#/q/b504132>`_
  : Fix for Stale entry in table 21 for same dest
* `908ba27 <https://git.opendaylight.org/gerrit/#/q/908ba27>`_
  : ECMP: Change bucket weight from 0 to 1
* `62727ed <https://git.opendaylight.org/gerrit/#/q/62727ed>`_
  `NETVIRT-1361 <https://jira.opendaylight.org/browse/NETVIRT-1361>`_
  : Fix invalid dpnId configured as NAPT Switch
* `9e824db <https://git.opendaylight.org/gerrit/#/q/9e824db>`_
  `NETVIRT-1359 <https://jira.opendaylight.org/browse/NETVIRT-1359>`_
  : NPE in SNAT conntrack tempest.
* `8e834ef <https://git.opendaylight.org/gerrit/#/q/8e834ef>`_
  : Fix for populating datastore properly
* `2f23532 <https://git.opendaylight.org/gerrit/#/q/2f23532>`_
  : Disable building unused cloud-servicechain
* `d303717 <https://git.opendaylight.org/gerrit/#/q/d303717>`_
  : syncDelete replaced with non sync delete
* `3431951 <https://git.opendaylight.org/gerrit/#/q/3431951>`_
  : Tunnel update changes for ECMP
* `aaf90e8 <https://git.opendaylight.org/gerrit/#/q/aaf90e8>`_
  : Migrate to serviceutils/tools and serviceutils/srm
* `e7a8dac <https://git.opendaylight.org/gerrit/#/q/e7a8dac>`_
  : remove leftover netvirt-ui
* `08d30a4 <https://git.opendaylight.org/gerrit/#/q/08d30a4>`_
  : disable statistics module
* `6c6f66d <https://git.opendaylight.org/gerrit/#/q/6c6f66d>`_
  `NETVIRT-1054 <https://jira.opendaylight.org/browse/NETVIRT-1054>`_
  : NETVIRT-1054 : FATAL:fib-entries container missing
* `a98ec9f <https://git.opendaylight.org/gerrit/#/q/a98ec9f>`_
  `NETVIRT-1358 <https://jira.opendaylight.org/browse/NETVIRT-1358>`_
  : Fix for invalid vpnid in default snat flow
* `a33b16d <https://git.opendaylight.org/gerrit/#/q/a33b16d>`_
  `NETVIRT-1040 <https://jira.opendaylight.org/browse/NETVIRT-1040>`_
  : Conflicit Modification Exception on napt-Switch
* `bef1912 <https://git.opendaylight.org/gerrit/#/q/bef1912>`_
  `NETVIRT-1330 <https://jira.opendaylight.org/browse/NETVIRT-1330>`_
  : NETVIRT-1330: Fix ARP responder flows.
* `8e96fd9 <https://git.opendaylight.org/gerrit/#/q/8e96fd9>`_
  `NETVIRT-1201 <https://jira.opendaylight.org/browse/NETVIRT-1201>`_
  : NETVIRT-1201 Upstream fixes to master --- 8
* `ab397f7 <https://git.opendaylight.org/gerrit/#/q/ab397f7>`_
  `NETVIRT-963 <https://jira.opendaylight.org/browse/NETVIRT-963>`_
  : CSIT:bound-service-state is not present for IPv6
* `22e08fc <https://git.opendaylight.org/gerrit/#/q/22e08fc>`_
  : Add napt switch id in log
* `17a8503 <https://git.opendaylight.org/gerrit/#/q/17a8503>`_
  : Only raise alarm when RDs less than nexthops
* `4159ab6 <https://git.opendaylight.org/gerrit/#/q/4159ab6>`_
  : Add logs in napt scheduler.
* `3f34fb0 <https://git.opendaylight.org/gerrit/#/q/3f34fb0>`_
  : Fix to advertise VRF routes from DC-GW
* `489b09c <https://git.opendaylight.org/gerrit/#/q/489b09c>`_
  : Do not apply rate limit rule on subport
* `16dff83 <https://git.opendaylight.org/gerrit/#/q/16dff83>`_
  : QoS Log clean-up
* `16a82cd <https://git.opendaylight.org/gerrit/#/q/16a82cd>`_
  `NETVIRT-1353 <https://jira.opendaylight.org/browse/NETVIRT-1353>`_
  : Fix NPE in updateVpnInterfacesForUnProcessAdj
* `f1850e1 <https://git.opendaylight.org/gerrit/#/q/f1850e1>`_
  `NETVIRT-1248 <https://jira.opendaylight.org/browse/NETVIRT-1248>`_
  : IPV6 adress lost after ODL upgrade.
* `29fd11b <https://git.opendaylight.org/gerrit/#/q/29fd11b>`_
  : Add Equinox Common to the Xtend Maven plugin
* `fe3d42b <https://git.opendaylight.org/gerrit/#/q/fe3d42b>`_
  : DEBUG loggers added
* `97a47d1 <https://git.opendaylight.org/gerrit/#/q/97a47d1>`_
  `NETVIRT-1157 <https://jira.opendaylight.org/browse/NETVIRT-1157>`_
  : Fixes stale fib flows for the g/w and PNF
* `1a32d6e <https://git.opendaylight.org/gerrit/#/q/1a32d6e>`_
  : To include internal tunnel fetch
* `c5ddaa2 <https://git.opendaylight.org/gerrit/#/q/c5ddaa2>`_
  : SingleTransactionDataBroker in Vpn - Part 5 of 5
* `343606b <https://git.opendaylight.org/gerrit/#/q/343606b>`_
  : SingleTransactionDataBroker in Vpn - Part 4 of 5
* `1cde282 <https://git.opendaylight.org/gerrit/#/q/1cde282>`_
  `NETVIRT-1307 <https://jira.opendaylight.org/browse/NETVIRT-1307>`_
  : Set Proper EtherType for MplsPopAction
* `13dc046 <https://git.opendaylight.org/gerrit/#/q/13dc046>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1
* `71ffe04 <https://git.opendaylight.org/gerrit/#/q/71ffe04>`_
  `NETVIRT-1133 <https://jira.opendaylight.org/browse/NETVIRT-1133>`_
  : Add missing parameters to RPC call
* `cd4129a <https://git.opendaylight.org/gerrit/#/q/cd4129a>`_
  `NETVIRT-1249 <https://jira.opendaylight.org/browse/NETVIRT-1249>`_
  : Uncaught IAE in SNAT
* `4324053 <https://git.opendaylight.org/gerrit/#/q/4324053>`_
  : Helper patch for handling external router changes
* `9bf0927 <https://git.opendaylight.org/gerrit/#/q/9bf0927>`_
  `NETVIRT-1302 <https://jira.opendaylight.org/browse/NETVIRT-1302>`_
  : SNAT Connectivity from non-FIP instances
* `820a8ee <https://git.opendaylight.org/gerrit/#/q/820a8ee>`_
  `NETVIRT-1283 <https://jira.opendaylight.org/browse/NETVIRT-1283>`_
  : NETVIRT-1283: Support VLAN Transparency
* `79493b2 <https://git.opendaylight.org/gerrit/#/q/79493b2>`_
  : Supply correct tunnel type to get tunnel names
* `09c0d7f <https://git.opendaylight.org/gerrit/#/q/09c0d7f>`_
  : QoS: DSCP marking doesn't work for dual stack VMs
* `ba7c1eb <https://git.opendaylight.org/gerrit/#/q/ba7c1eb>`_
  : Use SingleTransactionDataBroker to read instead of VpnUtil read() - Part 3 of 5
* `f38c482 <https://git.opendaylight.org/gerrit/#/q/f38c482>`_
  : Use SingleTransactionDataBroker to read instead of VpnUtil read() - Part 2 of 5
* `2cebad0 <https://git.opendaylight.org/gerrit/#/q/2cebad0>`_
  : Use SingleTransactionDataBroker to read instead of VpnUtil read() - Part 1 of 5
* `bb70397 <https://git.opendaylight.org/gerrit/#/q/bb70397>`_
  : Avoid NPE for IPv6 external subnets
* `c9cc7c7 <https://git.opendaylight.org/gerrit/#/q/c9cc7c7>`_
  `NETVIRT-1235 <https://jira.opendaylight.org/browse/NETVIRT-1235>`_
  : Prefix-To-Interface ds not cleared
* `d73282c <https://git.opendaylight.org/gerrit/#/q/d73282c>`_
  `NETVIRT-1263 <https://jira.opendaylight.org/browse/NETVIRT-1263>`_
  : NETVIRT-1263: Elan destination mac table(51) flows have drop action
* `b286676 <https://git.opendaylight.org/gerrit/#/q/b286676>`_
  `NETVIRT-1305 <https://jira.opendaylight.org/browse/NETVIRT-1305>`_
  : NETVIRT-1305 ODL not conecting to QBGP
* `604f389 <https://git.opendaylight.org/gerrit/#/q/604f389>`_
  : An atempt is made to reduce DS operations before fixed flows are programmed for a VM
* `cbf1265 <https://git.opendaylight.org/gerrit/#/q/cbf1265>`_
  : Test-plan for ELAN Recovery:
* `e0cb40c <https://git.opendaylight.org/gerrit/#/q/e0cb40c>`_
  : Fix: ECMP table 21 extra route stale entries
* `b07fcf6 <https://git.opendaylight.org/gerrit/#/q/b07fcf6>`_
  `NETVIRT-1245 <https://jira.opendaylight.org/browse/NETVIRT-1245>`_
  : Dynamic IPv6 assignment for sub-port is not working
* `2fd185b <https://git.opendaylight.org/gerrit/#/q/2fd185b>`_
  `NETVIRT-1220 <https://jira.opendaylight.org/browse/NETVIRT-1220>`_
  : Update L3_GW_MAC table to match on ip/ipv6 for external network
* `badd305 <https://git.opendaylight.org/gerrit/#/q/badd305>`_
  `NETVIRT-1157 <https://jira.opendaylight.org/browse/NETVIRT-1157>`_
  : Fix stale snatmiss group entry on non-NAPT Switch (conntrack snat)
* `7c3b95f <https://git.opendaylight.org/gerrit/#/q/7c3b95f>`_
  `NETVIRT-1291 <https://jira.opendaylight.org/browse/NETVIRT-1291>`_
  : Use managed transactions in fibmanager-impl
* `ce6c4b8 <https://git.opendaylight.org/gerrit/#/q/ce6c4b8>`_
  : Enable coala checks
* `3487e4c <https://git.opendaylight.org/gerrit/#/q/3487e4c>`_
  `NETVIRT-1293 <https://jira.opendaylight.org/browse/NETVIRT-1293>`_
  : NETVIRT-1293: Stales not getting cleaned up upon neutron v2 driver


neutron
-------
* `3e1ba6c <https://git.opendaylight.org/gerrit/#/q/3e1ba6c>`_
  : Bump to odlparent 3.1.3
* `6206c95 <https://git.opendaylight.org/gerrit/#/q/6206c95>`_
  `NEUTRON-159 <https://jira.opendaylight.org/browse/NEUTRON-159>`_
  : bump EclipseLink Moxy JAXB implementation from 2.6.2 to 2.7.1
* `a278ee3 <https://git.opendaylight.org/gerrit/#/q/a278ee3>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1
* `b73f981 <https://git.opendaylight.org/gerrit/#/q/b73f981>`_
  : comment out integration/test ITNeutronE2E


of-config
---------
* `2e72dae <https://git.opendaylight.org/gerrit/#/q/2e72dae>`_
  : Bump to odlparent 3.1.3
* `05ae1e5 <https://git.opendaylight.org/gerrit/#/q/05ae1e5>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


openflowplugin
--------------
* `2e2e882 <https://git.opendaylight.org/gerrit/#/q/2e2e882>`_
  `OPNFLWPLUG-1020 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1020>`_
  : Fix opendaylight-flow-types.yang cases
* `9cf556b <https://git.opendaylight.org/gerrit/#/q/9cf556b>`_
  : Bump to odlparent 3.1.3
* `949833e <https://git.opendaylight.org/gerrit/#/q/949833e>`_
  `OPNFLWPLUG-1024 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1024>`_
  : Break all the application part of odl-openflowplugin-app-topology feature to their own feature, so that user can load the required module only.
* `f2b441f <https://git.opendaylight.org/gerrit/#/q/f2b441f>`_
  `OPNFLWPLUG-1006 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1006>`_
  : OPNFLWPLUG-1006: ODL cannot control switch with pre-existing meters
* `feb9333 <https://git.opendaylight.org/gerrit/#/q/feb9333>`_
  : Correct NshNpCodec serializer key
* `7dcd81a <https://git.opendaylight.org/gerrit/#/q/7dcd81a>`_
  `OPNFLWPLUG-997 <https://jira.opendaylight.org/browse/OPNFLWPLUG-997>`_
  : OPNFLWPLUG-997 Spec - Southbound cli implementation
* `856ad2c <https://git.opendaylight.org/gerrit/#/q/856ad2c>`_
  `RELENG-86 <https://jira.opendaylight.org/browse/RELENG-86>`_
  : Add Karaf build profile
* `c8fb151 <https://git.opendaylight.org/gerrit/#/q/c8fb151>`_
  : Renaming reconciliation cli's
* `63b5117 <https://git.opendaylight.org/gerrit/#/q/63b5117>`_
  `OPNFLWPLUG-917 <https://jira.opendaylight.org/browse/OPNFLWPLUG-917>`_
  : OPNFLWPLUG-917 : pkt_mark support in nicira extension
* `5844a0d <https://git.opendaylight.org/gerrit/#/q/5844a0d>`_
  `OPNFLWPLUG-1021 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1021>`_
  : OPNFLWPLUG-1021 : ct_tp_src and ct_tp_dst support in nicira extension
* `739c4e7 <https://git.opendaylight.org/gerrit/#/q/739c4e7>`_
  : Bundle Reconciliation: Close bundle on switch before reconciliation
* `9e2c4fd <https://git.opendaylight.org/gerrit/#/q/9e2c4fd>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1
* `bb33c6e <https://git.opendaylight.org/gerrit/#/q/bb33c6e>`_
  `OPNFLWPLUG-990 <https://jira.opendaylight.org/browse/OPNFLWPLUG-990>`_
  : OPNFLWPLUG-990: Administrative Reconciliation alarm - log correction
* `54d8748 <https://git.opendaylight.org/gerrit/#/q/54d8748>`_
  : Remove uses of BindingAwareProvider/Consumer
* `0853f23 <https://git.opendaylight.org/gerrit/#/q/0853f23>`_
  : minor: fix JavaDoc in class Packet
* `5237444 <https://git.opendaylight.org/gerrit/#/q/5237444>`_
  `OPNFLWPLUG-1015 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1015>`_
  : OPNFLWPLUG-1015 : OF Bundle add message failing with incorrect XID
* `404298a <https://git.opendaylight.org/gerrit/#/q/404298a>`_
  : Bundle Reconciliation: Close bundle on switch before reconciliation
* `57a15cb <https://git.opendaylight.org/gerrit/#/q/57a15cb>`_
  `OPNFLWPLUG-1000 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1000>`_
  : OPNFLWPLUG-1000 : Execute reconciliation asynchronously when the user selected all openflow switch
* `b0c9f8b <https://git.opendaylight.org/gerrit/#/q/b0c9f8b>`_
  `OPNFLWPLUG-990 <https://jira.opendaylight.org/browse/OPNFLWPLUG-990>`_
  : OPNFLWPLUG-990: Administrative Reconciliation alarm - setting correct alarmID
* `1ae9414 <https://git.opendaylight.org/gerrit/#/q/1ae9414>`_
  `OPNFLWPLUG-970 <https://jira.opendaylight.org/browse/OPNFLWPLUG-970>`_
  : OPNFLWPLUG-970: Remove deviceInfo from connectingDevices in destroyContextChain
* `7a59c27 <https://git.opendaylight.org/gerrit/#/q/7a59c27>`_
  `OPNFLWPLUG-970 <https://jira.opendaylight.org/browse/OPNFLWPLUG-970>`_
  : OPNFLWPLUG-970: Prevent ConcurrentModificationException when switches disconnected
* `5a46ca2 <https://git.opendaylight.org/gerrit/#/q/5a46ca2>`_
  : Enable nitpicky mode and fail on warnings
* `fac4e38 <https://git.opendaylight.org/gerrit/#/q/fac4e38>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Switch to using lfdocs-conf to pull in theme
* `cd41340 <https://git.opendaylight.org/gerrit/#/q/cd41340>`_
  : Resolve Sphinx build warnings


ovsdb
-----
* `944a04e <https://git.opendaylight.org/gerrit/#/q/944a04e>`_
  : Bump to odlparent 3.1.3
* `fa432b3 <https://git.opendaylight.org/gerrit/#/q/fa432b3>`_
  `OVSDB-439 <https://jira.opendaylight.org/browse/OVSDB-439>`_
  : OVSDB-439 Stale connection check
* `184f706 <https://git.opendaylight.org/gerrit/#/q/184f706>`_
  `OVSDB-462 <https://jira.opendaylight.org/browse/OVSDB-462>`_
  : OVSDB-462 Bridge randomly missing in operds
* `60d5ddb <https://git.opendaylight.org/gerrit/#/q/60d5ddb>`_
  `OVSDB-463 <https://jira.opendaylight.org/browse/OVSDB-463>`_
  : Don't use hostIP for controller-ip
* `76e3269 <https://git.opendaylight.org/gerrit/#/q/76e3269>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1
* `1a696de <https://git.opendaylight.org/gerrit/#/q/1a696de>`_
  `OVSDB-465 <https://jira.opendaylight.org/browse/OVSDB-465>`_
  : Make OvsdbConnectionService instance-only
* `0ae9fe0 <https://git.opendaylight.org/gerrit/#/q/0ae9fe0>`_
  `OVSDB-458 <https://jira.opendaylight.org/browse/OVSDB-458>`_
  : OVSDB-458 DiagStatus support for OVSDB
* `d15f8b3 <https://git.opendaylight.org/gerrit/#/q/d15f8b3>`_
  `OVSDB-464 <https://jira.opendaylight.org/browse/OVSDB-464>`_
  : Make OVSDB Listener IP configurable


p4plugin
--------
* `c4b2111 <https://git.opendaylight.org/gerrit/#/q/c4b2111>`_
  : Bump to odlparent 3.1.3
* `3e02840 <https://git.opendaylight.org/gerrit/#/q/3e02840>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


packetcable
-----------
* `f6b41bb <https://git.opendaylight.org/gerrit/#/q/f6b41bb>`_
  : Bump to odlparent 3.1.3
* `aa0ac1a <https://git.opendaylight.org/gerrit/#/q/aa0ac1a>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


sfc
---
* `222fd62 <https://git.opendaylight.org/gerrit/#/q/222fd62>`_
  : Bump to odlparent 3.1.3
* `1334fdf <https://git.opendaylight.org/gerrit/#/q/1334fdf>`_
  `DOCS-69 <https://jira.opendaylight.org/browse/DOCS-69>`_
  : Switch to using lfdocs-conf to pull in theme
* `7063266 <https://git.opendaylight.org/gerrit/#/q/7063266>`_
  : Migrate to serviceutils/tools
* `05ebd6e <https://git.opendaylight.org/gerrit/#/q/05ebd6e>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1
* `d87f401 <https://git.opendaylight.org/gerrit/#/q/d87f401>`_
  : Resolve Sphinx build warnings
* `4b0e130 <https://git.opendaylight.org/gerrit/#/q/4b0e130>`_
  : Add .coafile for linting, fix tox verify job


snmp
----
* `7142c90 <https://git.opendaylight.org/gerrit/#/q/7142c90>`_
  : Bump to odlparent 3.1.3
* `5d4a2b6 <https://git.opendaylight.org/gerrit/#/q/5d4a2b6>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


snmp4sdn
--------
* `a105a50 <https://git.opendaylight.org/gerrit/#/q/a105a50>`_
  : Bump to odlparent 3.1.3
* `9b34ee6 <https://git.opendaylight.org/gerrit/#/q/9b34ee6>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


sxp
---
* `7ef07fd <https://git.opendaylight.org/gerrit/#/q/7ef07fd>`_
  : Bump yangtools to 2.0.6.1
* `9aab22e <https://git.opendaylight.org/gerrit/#/q/9aab22e>`_
  : Bump to odlparent 3.1.3
* `9cd5d82 <https://git.opendaylight.org/gerrit/#/q/9cd5d82>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


tsdr
----
* `39a8d35 <https://git.opendaylight.org/gerrit/#/q/39a8d35>`_
  : Bump to odlparent 3.1.3
* `d4d467d <https://git.opendaylight.org/gerrit/#/q/d4d467d>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1


usc
---
* `7b610fe <https://git.opendaylight.org/gerrit/#/q/7b610fe>`_
  : Bump to odlparent 3.1.3
* `09748ae <https://git.opendaylight.org/gerrit/#/q/09748ae>`_
  `RELENG-129 <https://jira.opendaylight.org/browse/RELENG-129>`_
  : Bump to odlparent 3.1.1

