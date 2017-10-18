*************
Release Notes
*************

Target Environment
==================

For Execution
-------------

The OpenDaylight Karaf container, OSGi bundles, and Java class files
are portable and should run on any Java 7- or Java 8-compliant JVM to
run. Certain projects and certain features of some projects may have
additional requirements. Those are noted in the project-specific
release notes.

Projects and features which have known additional requirements are:

* TCP-MD5 requires 64-bit Linux
* TSDR has extended requirements for external databases
* Persistence has extended requirements for external databases
* SFC requires addition features for certain configurations
* SXP depends on TCP-MD5 on thus requires 64-bit Linux
* SNBI has requirements for Linux and Docker
* OpFlex requires Linux
* DLUX requires a modern web browser to view the UI
* AAA when using federation has additional requirements for external tools
* VTN has components which require Linux

For Development
---------------

OpenDaylight is written primarily in Java project and primarily uses
Maven as a build tool Consequently the two main requirements to develop
projects within OpenDaylight are:

* A Java 8-compliant JDK
* Maven 3.1.1 or later

Applications and tools built on top of OpenDaylight using it's REST
APIs should have no special requirements beyond whatever is needed to
run the application or tool and make the REST calls.

In some places, OpenDaylight makes use of the Xtend language. While
Maven will download the appropriate tools to build this, additional
plugins may be required for IDE support.

The projects with additional requirements for execution typically have
similar or more extensive additional requirements for development. See
the project-specific release notes for details.

Known Issues and Limitations
============================

Other than as noted in project-specific release notes, we know of the
following limitations:

* Migration from prior OpenDaylight releases to Carbon has not been
  extensively tested. The per-project release notes include migration and
  compatibility information when it is known.
* There are scales beyond which the controller has been unreliable when
  collecting flow statistics from OpenFlow switches. In tests, these
  issues became apparent when managing thousands of OpenFlow
  switches, however this may vary depending on deployment and use cases.

.. _proj_rel_notes:

Project-specific Release Notes
==============================

.. toctree::
   :maxdepth: 1

   projects/aaa
   projects/alto
   projects/bgp-ls-pcep
   projects/bier
   projects/cardinal
   projects/controller
   projects/didm
   projects/distribution
   projects/dluxapps
   projects/docs
   projects/eman
   projects/faas
   projects/federation
   projects/gbp
   projects/genius
   projects/infrautils
   projects/iotdm
   projects/l2switch
   projects/lacp
   projects/lispflowmapping
   projects/mdsal
   projects/netconf
   projects/netide
   projects/netvirt
   projects/neutron-northbound
   projects/nic
   projects/ocpplugin
   projects/odl-sdni
   projects/odlparent
   projects/of-config
   projects/openflowjava
   projects/openflowplugin
   projects/opflex
   projects/ovsdb
   projects/sfc
   projects/snmp
   projects/snmp4sdn
   projects/sxp
   projects/topology-processing-framework
   projects/tsdr
   projects/ttp
   projects/unimgr
   projects/usc
   projects/vbd
   projects/vtn
   projects/yangtools

.. Still missing:
.. * PacketCable: https://git.opendaylight.org/gerrit/57218
.. * DLUX
.. * NeXt

Carbon-SR1 Release Notes
========================

This page details changes and bug fixes between the Carbon Release
and the Carbon Stability Release 1 (Carbon-SR1) of OpenDaylight.

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
* infrautils
* integration/distribution
* iotdm
* l2switch
* lacp
* nemo
* netide
* next
* nic
* ocpplugin
* of-config
* packetcable
* sdninterfaceapp
* snmp
* snmp4sdn
* topoprocessing
* tsdr
* ttp
* unimgr
* usc
* vtn

aaa
---
* `2a5c42e <https://git.opendaylight.org/gerrit/#/q/2a5c42e>`_
  : Utility service to encode/decode public/private keys of type RSA, DSA and ECDSA. Placing it here to make a common place to access this service.
* `aec3cb5 <https://git.opendaylight.org/gerrit/#/q/aec3cb5>`_
  : Fix a parameter description in the CLI
* `6050784 <https://git.opendaylight.org/gerrit/#/q/6050784>`_
  `BUG-8352 <https://bugs.opendaylight.org/show_bug.cgi?id=8352>`_
  : Bug 8352: Explicitly set the SecurityManager
* `0a73ed4 <https://git.opendaylight.org/gerrit/#/q/0a73ed4>`_
  `BUG-8382 <https://bugs.opendaylight.org/show_bug.cgi?id=8382>`_
  : Bug 8382: Update idmtool to not utilize ids in payload
* `59037c1 <https://git.opendaylight.org/gerrit/#/q/59037c1>`_
  `BUG-8382 <https://bugs.opendaylight.org/show_bug.cgi?id=8382>`_
  : Bug 8382: disallow client specified ids
* `8479ba0 <https://git.opendaylight.org/gerrit/#/q/8479ba0>`_
  : Remove <prerequisites><maven> from pom.xml to avoid WARNING


alto
----
* `60773394 <https://git.opendaylight.org/gerrit/#/q/60773394>`_
  : Fix yang model validity
* `dfeb1414 <https://git.opendaylight.org/gerrit/#/q/dfeb1414>`_
  : Drop incomplete features


bgpcep
------
* `fa65215b0 <https://git.opendaylight.org/gerrit/#/q/fa65215b0>`_
  `BUG-8156 <https://bugs.opendaylight.org/show_bug.cgi?id=8156>`_
  : Revert "BUG-8156 Terminate PCEP session properly when ServerSessionManager is closed"
* `361265e3d <https://git.opendaylight.org/gerrit/#/q/361265e3d>`_
  `BUG-8156 <https://bugs.opendaylight.org/show_bug.cgi?id=8156>`_
  : BUG-8156 Terminate PCEP session properly when ServerSessionManager is closed
* `edd1a955e <https://git.opendaylight.org/gerrit/#/q/edd1a955e>`_
  `BUG-7027 <https://bugs.opendaylight.org/show_bug.cgi?id=7027>`_
  : BUG-7027 : wired data-change-counter with Blueprint
* `4d94edbf0 <https://git.opendaylight.org/gerrit/#/q/4d94edbf0>`_
  : Code Cleanup: unused var and imports
* `40059ebe6 <https://git.opendaylight.org/gerrit/#/q/40059ebe6>`_
  : Code cleanup: Duplicate Code
* `51646d108 <https://git.opendaylight.org/gerrit/#/q/51646d108>`_
  `BUG-8292 <https://bugs.opendaylight.org/show_bug.cgi?id=8292>`_
  : BUG-8292 Fix BGP flowspec NLRI length read
* `d6ab593f2 <https://git.opendaylight.org/gerrit/#/q/d6ab593f2>`_
  `BUG-8156 <https://bugs.opendaylight.org/show_bug.cgi?id=8156>`_
  : BUG-8156 Fix PCEP topology registration
* `7740fa89b <https://git.opendaylight.org/gerrit/#/q/7740fa89b>`_
  : Remove unused LOG
* `9483e0a24 <https://git.opendaylight.org/gerrit/#/q/9483e0a24>`_
  `BUG-8548 <https://bugs.opendaylight.org/show_bug.cgi?id=8548>`_
  : BUG-8548: Pass missing parameter to
* `ec677a582 <https://git.opendaylight.org/gerrit/#/q/ec677a582>`_
  : Fix RD pattern in RouteDistinguisherBuilder
* `f91691688 <https://git.opendaylight.org/gerrit/#/q/f91691688>`_
  : migrate yangtools deprecated BindingNormalizedNodeSerializer


controller
----------
* `1e07329c0 <https://git.opendaylight.org/gerrit/#/q/1e07329c0>`_
  `BUG-8704 <https://bugs.opendaylight.org/show_bug.cgi?id=8704>`_
  : BUG-8704: rework seal mechanics to not wait during replay
* `35b7e5959 <https://git.opendaylight.org/gerrit/#/q/35b7e5959>`_
  `BUG-8768 <https://bugs.opendaylight.org/show_bug.cgi?id=8768>`_
  : Bug 8768: Close itemProducer for every code path
* `b7657c3ac <https://git.opendaylight.org/gerrit/#/q/b7657c3ac>`_
  `BUG-8494 <https://bugs.opendaylight.org/show_bug.cgi?id=8494>`_
  : BUG-8494: rework AbstractTransactionHandler
* `741013a2d <https://git.opendaylight.org/gerrit/#/q/741013a2d>`_
  : Improve ShardBackendInfo.toString()
* `0ea09c71a <https://git.opendaylight.org/gerrit/#/q/0ea09c71a>`_
  `BUG-8445 <https://bugs.opendaylight.org/show_bug.cgi?id=8445>`_
  : BUG-8445: ignore responses from mismatched sessions
* `5e986f532 <https://git.opendaylight.org/gerrit/#/q/5e986f532>`_
  `BUG-8494 <https://bugs.opendaylight.org/show_bug.cgi?id=8494>`_
  : BUG-8494: fix failure path thinko
* `1c495bceb <https://git.opendaylight.org/gerrit/#/q/1c495bceb>`_
  `BUG-8445 <https://bugs.opendaylight.org/show_bug.cgi?id=8445>`_
  : BUG-8445: check sessionId before propagating failures
* `d97061af6 <https://git.opendaylight.org/gerrit/#/q/d97061af6>`_
  `BUG-8494 <https://bugs.opendaylight.org/show_bug.cgi?id=8494>`_
  : BUG-8494: Cleanup clustering-it-provider
* `bc5486e6d <https://git.opendaylight.org/gerrit/#/q/bc5486e6d>`_
  `BUG-8629 <https://bugs.opendaylight.org/show_bug.cgi?id=8629>`_
  : BUG 8629: Try to allow notification processing to finish in unsubscribe of listeners.
* `bdf02e09c <https://git.opendaylight.org/gerrit/#/q/bdf02e09c>`_
  `BUG-8621 <https://bugs.opendaylight.org/show_bug.cgi?id=8621>`_
  : Bug 8621 - Add shutdown-prefix-shard-replica rpc to MdsalLowLevelTestProvider
* `d5fcf5d66 <https://git.opendaylight.org/gerrit/#/q/d5fcf5d66>`_
  `BUG-8621 <https://bugs.opendaylight.org/show_bug.cgi?id=8621>`_
  : Bug 8621 - Add shutdown-shard-replica rpc to MdsalLowLevelTestProvider
* `b6a43d9e3 <https://git.opendaylight.org/gerrit/#/q/b6a43d9e3>`_
  `BUG-8494 <https://bugs.opendaylight.org/show_bug.cgi?id=8494>`_
  : BUG-8494: propagate submit failure immediately
* `4a2b10bdd <https://git.opendaylight.org/gerrit/#/q/4a2b10bdd>`_
  : Fix format string mismatch
* `da09aa703 <https://git.opendaylight.org/gerrit/#/q/da09aa703>`_
  `BUG-8445 <https://bugs.opendaylight.org/show_bug.cgi?id=8445>`_
  : BUG-8445: Guard against NPE
* `27193873c <https://git.opendaylight.org/gerrit/#/q/27193873c>`_
  : Lower UnboundedDequeBasedControlAwareMailbox logging
* `9797fc8e5 <https://git.opendaylight.org/gerrit/#/q/9797fc8e5>`_
  : Cleanup ProduceTransactionsHandler
* `d3c5dc3b0 <https://git.opendaylight.org/gerrit/#/q/d3c5dc3b0>`_
  : Optimize Follower.isOutOfSync()
* `bdb818fbf <https://git.opendaylight.org/gerrit/#/q/bdb818fbf>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: update sync status only after processing
* `890e4bbf4 <https://git.opendaylight.org/gerrit/#/q/890e4bbf4>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: make sync threshold tuneable
* `22e817f68 <https://git.opendaylight.org/gerrit/#/q/22e817f68>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: improve debug logs
* `2c42c1d35 <https://git.opendaylight.org/gerrit/#/q/2c42c1d35>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: refactor SyncStatusTracker state
* `a816f1394 <https://git.opendaylight.org/gerrit/#/q/a816f1394>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: make sure we refresh backend info
* `97875ef26 <https://git.opendaylight.org/gerrit/#/q/97875ef26>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: add threshold crossing debugs
* `8e1dd830b <https://git.opendaylight.org/gerrit/#/q/8e1dd830b>`_
  : Log data after in IdIntsDOMDataTreeLIstener
* `715bf60ac <https://git.opendaylight.org/gerrit/#/q/715bf60ac>`_
  : Improve timeout message
* `8ed5603b4 <https://git.opendaylight.org/gerrit/#/q/8ed5603b4>`_
  `BUG-8665 <https://bugs.opendaylight.org/show_bug.cgi?id=8665>`_
  : BUG-8665: fix memory leak around RangeSets
* `92308eaeb <https://git.opendaylight.org/gerrit/#/q/92308eaeb>`_
  `BUG-8606 <https://bugs.opendaylight.org/show_bug.cgi?id=8606>`_
  : Bug 8606: Continue leadership transfer on pauseLeader timeout
* `872a40f7a <https://git.opendaylight.org/gerrit/#/q/872a40f7a>`_
  : Fix intermittent PreLeaderScenarioTest failure
* `072303707 <https://git.opendaylight.org/gerrit/#/q/072303707>`_
  `BUG-8494 <https://bugs.opendaylight.org/show_bug.cgi?id=8494>`_
  : BUG 8494 log possibly hanged futures in tx handlers
* `ec7342454 <https://git.opendaylight.org/gerrit/#/q/ec7342454>`_
  `BUG-8604 <https://bugs.opendaylight.org/show_bug.cgi?id=8604>`_
  : BUG 8604 set proper tag when producer creation times out
* `8a298158f <https://git.opendaylight.org/gerrit/#/q/8a298158f>`_
  `BUG-8649 <https://bugs.opendaylight.org/show_bug.cgi?id=8649>`_
  : BUG 8649: remove bounded mailbox from ShardManager and notification actors
* `2c510d40d <https://git.opendaylight.org/gerrit/#/q/2c510d40d>`_
  `BUG-8629 <https://bugs.opendaylight.org/show_bug.cgi?id=8629>`_
  : BUG 8629: log inconsistent notifications as warn
* `0849bf398 <https://git.opendaylight.org/gerrit/#/q/0849bf398>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG 8618: Log leader status when rejecting request
* `31a52c56c <https://git.opendaylight.org/gerrit/#/q/31a52c56c>`_
  : Catch all exceptions when submitting in tx handlers
* `11b30d768 <https://git.opendaylight.org/gerrit/#/q/11b30d768>`_
  : Do not flood logs with modifications
* `70ce27dbe <https://git.opendaylight.org/gerrit/#/q/70ce27dbe>`_
  `BUG-5740 <https://bugs.opendaylight.org/show_bug.cgi?id=5740>`_
  : Bug 5740: Configure control-aware mailbox
* `6c4aaa51a <https://git.opendaylight.org/gerrit/#/q/6c4aaa51a>`_
  `BUG-5740 <https://bugs.opendaylight.org/show_bug.cgi?id=5740>`_
  : Bug 5740: Add Deque-based control-aware mailbox
* `721e8da78 <https://git.opendaylight.org/gerrit/#/q/721e8da78>`_
  `BUG-5740 <https://bugs.opendaylight.org/show_bug.cgi?id=5740>`_
  : Bug 5740: Add ControlMessage interface to raft messages
* `169a0c062 <https://git.opendaylight.org/gerrit/#/q/169a0c062>`_
  `BUG-5740 <https://bugs.opendaylight.org/show_bug.cgi?id=5740>`_
  : Bug 5740: Remove Serializable where not necessary
* `b84289ee6 <https://git.opendaylight.org/gerrit/#/q/b84289ee6>`_
  `BUG-5740 <https://bugs.opendaylight.org/show_bug.cgi?id=5740>`_
  : Bug 5740: Change TimeoutNow and Shutdown to externalizable proxy
* `600535590 <https://git.opendaylight.org/gerrit/#/q/600535590>`_
  `BUG-5740 <https://bugs.opendaylight.org/show_bug.cgi?id=5740>`_
  : Bug 5740: Change RequestVote(Reply) to externalizable proxy
* `da42d2ffc <https://git.opendaylight.org/gerrit/#/q/da42d2ffc>`_
  `BUG-8620 <https://bugs.opendaylight.org/show_bug.cgi?id=8620>`_
  : BUG-8620: handle direct commit and disconnect correctly
* `09630b9ae <https://git.opendaylight.org/gerrit/#/q/09630b9ae>`_
  `BUG-8602 <https://bugs.opendaylight.org/show_bug.cgi?id=8602>`_
  : BUG 8602: Skip initial fill of idints
* `188b3e7bb <https://git.opendaylight.org/gerrit/#/q/188b3e7bb>`_
  : Fix RecoveryIntegrationSingleNodeTest failure
* `584be7bf6 <https://git.opendaylight.org/gerrit/#/q/584be7bf6>`_
  `BUG-8494 <https://bugs.opendaylight.org/show_bug.cgi?id=8494>`_
  : BUG-8494: do not attempt to reconnect ReconnectingClientConnection
* `b135d9ab1 <https://git.opendaylight.org/gerrit/#/q/b135d9ab1>`_
  `BUG-8403 <https://bugs.opendaylight.org/show_bug.cgi?id=8403>`_
  : BUG-8403: fix DONE state propagation
* `9da46962e <https://git.opendaylight.org/gerrit/#/q/9da46962e>`_
  : Replace LOGGER by LOG
* `851fb56fb <https://git.opendaylight.org/gerrit/#/q/851fb56fb>`_
  `BUG-8494 <https://bugs.opendaylight.org/show_bug.cgi?id=8494>`_
  : BUG-8494: fix throttling during reconnect
* `59ffaa4e9 <https://git.opendaylight.org/gerrit/#/q/59ffaa4e9>`_
  `BUG-8403 <https://bugs.opendaylight.org/show_bug.cgi?id=8403>`_
  : BUG-8403: propagate DONE state to successor
* `9b4c07ca2 <https://git.opendaylight.org/gerrit/#/q/9b4c07ca2>`_
  `BUG-8403 <https://bugs.opendaylight.org/show_bug.cgi?id=8403>`_
  : BUG-8403: go through the DONE transition
* `720292646 <https://git.opendaylight.org/gerrit/#/q/720292646>`_
  `BUG-8403 <https://bugs.opendaylight.org/show_bug.cgi?id=8403>`_
  : BUG-8403: add state documentation and DONE state
* `cc5009b8f <https://git.opendaylight.org/gerrit/#/q/cc5009b8f>`_
  `BUG-8403 <https://bugs.opendaylight.org/show_bug.cgi?id=8403>`_
  : BUG-8403: move successor allocation to AbstractProxyTransaction
* `15a67bd10 <https://git.opendaylight.org/gerrit/#/q/15a67bd10>`_
  `BUG-8494 <https://bugs.opendaylight.org/show_bug.cgi?id=8494>`_
  : BUG-8494: Cap queue sleep time
* `ea6ba6660 <https://git.opendaylight.org/gerrit/#/q/ea6ba6660>`_
  `BUG-8446 <https://bugs.opendaylight.org/show_bug.cgi?id=8446>`_
  : Bug 8446 - Increase timeout in leadership transfer
* `a0f85a19b <https://git.opendaylight.org/gerrit/#/q/a0f85a19b>`_
  : Cleanup time access
* `51a85b6c8 <https://git.opendaylight.org/gerrit/#/q/51a85b6c8>`_
  `BUG-8515 <https://bugs.opendaylight.org/show_bug.cgi?id=8515>`_
  : BUG-8515: make sure we retry connection on NotLeaderException
* `20ece8c54 <https://git.opendaylight.org/gerrit/#/q/20ece8c54>`_
  `BUG-8403 <https://bugs.opendaylight.org/show_bug.cgi?id=8403>`_
  : BUG-8403: do not throttle purge requests
* `8fca604f2 <https://git.opendaylight.org/gerrit/#/q/8fca604f2>`_
  `BUG-8538 <https://bugs.opendaylight.org/show_bug.cgi?id=8538>`_
  : BUG-8538: rework transaction abort paths
* `8123d0fc5 <https://git.opendaylight.org/gerrit/#/q/8123d0fc5>`_
  `BUG-8538 <https://bugs.opendaylight.org/show_bug.cgi?id=8538>`_
  : BUG-8538: do not invoke read callbacks during replay.
* `8f18717f6 <https://git.opendaylight.org/gerrit/#/q/8f18717f6>`_
  `BUG-8371 <https://bugs.opendaylight.org/show_bug.cgi?id=8371>`_
  : BUG-8371: Respond to CreateLocalHistoryRequest after replication
* `a3b2c1a05 <https://git.opendaylight.org/gerrit/#/q/a3b2c1a05>`_
  `BUG-8540 <https://bugs.opendaylight.org/show_bug.cgi?id=8540>`_
  : BUG-8540: suppress ConnectingClientConnection backend timeout
* `7ef280776 <https://git.opendaylight.org/gerrit/#/q/7ef280776>`_
  `BUG-8525 <https://bugs.opendaylight.org/show_bug.cgi?id=8525>`_
  : BUG 8525 Listeners not getting triggered from followers
* `7426d4050 <https://git.opendaylight.org/gerrit/#/q/7426d4050>`_
  : Do not retain initial SchemaContext
* `b24517538 <https://git.opendaylight.org/gerrit/#/q/b24517538>`_
  `BUG-8402 <https://bugs.opendaylight.org/show_bug.cgi?id=8402>`_
  : BUG-8402: correctly propagate read-only bit
* `5d2832361 <https://git.opendaylight.org/gerrit/#/q/5d2832361>`_
  `BUG-8402 <https://bugs.opendaylight.org/show_bug.cgi?id=8402>`_
  : BUG 8402: Close readonly tx
* `7ea291d0c <https://git.opendaylight.org/gerrit/#/q/7ea291d0c>`_
  `BUG-8318 <https://bugs.opendaylight.org/show_bug.cgi?id=8318>`_
  : BUG 8318: Add section for remoting transport-failure-detector
* `773f2f6b0 <https://git.opendaylight.org/gerrit/#/q/773f2f6b0>`_
  `BUG-8525 <https://bugs.opendaylight.org/show_bug.cgi?id=8525>`_
  : BUG 8525: Prevent NPE in test-app listeners
* `bf9e4dc04 <https://git.opendaylight.org/gerrit/#/q/bf9e4dc04>`_
  `BUG-8403 <https://bugs.opendaylight.org/show_bug.cgi?id=8403>`_
  : BUG 8403 Timeout writetransactions on initial ensure
* `956797bba <https://git.opendaylight.org/gerrit/#/q/956797bba>`_
  `BUG-8403 <https://bugs.opendaylight.org/show_bug.cgi?id=8403>`_
  : BUG-8403: raise misordered request log message
* `f336a5c15 <https://git.opendaylight.org/gerrit/#/q/f336a5c15>`_
  `BUG-8371 <https://bugs.opendaylight.org/show_bug.cgi?id=8371>`_
  : BUG-8371: raise unknown history log to warn
* `acded3392 <https://git.opendaylight.org/gerrit/#/q/acded3392>`_
  : Don't use File(In/Out)putStream in FileBackedOutputStream


genius
------
* `8b143a87 <https://git.opendaylight.org/gerrit/#/q/8b143a87>`_
  `BUG-8528 <https://bugs.opendaylight.org/show_bug.cgi?id=8528>`_
  : BUG 8528: Fix duplicate Apply Actions Instruction
* `208655aa <https://git.opendaylight.org/gerrit/#/q/208655aa>`_
  : Genius wide blueprint xml path change: /OSGI-INF/ -> /org/opendaylight/
* `cb8ef123 <https://git.opendaylight.org/gerrit/#/q/cb8ef123>`_
  `BUG-8146 <https://bugs.opendaylight.org/show_bug.cgi?id=8146>`_
  : Bug 8146:BFD tunnel monitoring interval update fix
* `9a5c5ae5 <https://git.opendaylight.org/gerrit/#/q/9a5c5ae5>`_
  : Fixing a typo in DJC log statement
* `1e630b73 <https://git.opendaylight.org/gerrit/#/q/1e630b73>`_
  : Use polymorphism instead of Optional
* `19edb799 <https://git.opendaylight.org/gerrit/#/q/19edb799>`_
  : Neutron Port Allocation For DHCP Service
* `bdbd660d <https://git.opendaylight.org/gerrit/#/q/bdbd660d>`_
  `BUG-8008 <https://bugs.opendaylight.org/show_bug.cgi?id=8008>`_
  : Bug 8008: NPE detected in IfMgrRpcService.getDpnInterfaceList
* `e8ca1d21 <https://git.opendaylight.org/gerrit/#/q/e8ca1d21>`_
  `BUG-8555 <https://bugs.opendaylight.org/show_bug.cgi?id=8555>`_
  : Bug 8555 - Too many log info print to the console
* `631c662e <https://git.opendaylight.org/gerrit/#/q/631c662e>`_
  : Fix checkstyle problems not detected by the current version
* `0e3074a6 <https://git.opendaylight.org/gerrit/#/q/0e3074a6>`_
  : Add missing @Override and serialVersionUID to genius.mdsalutil
* `9a9cff70 <https://git.opendaylight.org/gerrit/#/q/9a9cff70>`_
  : EVPN RT2 : L2VNI Demux Table id
* `406c34a6 <https://git.opendaylight.org/gerrit/#/q/406c34a6>`_
  : Support API that configures IPv6 address as sourceAddress
* `22b652f2 <https://git.opendaylight.org/gerrit/#/q/22b652f2>`_
  : Support for moving Src/Dest IPv6 addresses in NxRegMove action
* `0aad230b <https://git.opendaylight.org/gerrit/#/q/0aad230b>`_
  : Utility api to configure icmpv6 type
* `2e01048c <https://git.opendaylight.org/gerrit/#/q/2e01048c>`_
  : Avoid extending Object
* `00259552 <https://git.opendaylight.org/gerrit/#/q/00259552>`_
  : @Immutable GroupEntity
* `a35ef1a0 <https://git.opendaylight.org/gerrit/#/q/a35ef1a0>`_
  : Make testutils a JAR instead of a POM
* `eb011c16 <https://git.opendaylight.org/gerrit/#/q/eb011c16>`_
  : Make ActionInfo.toString() generic
* `a91282fc <https://git.opendaylight.org/gerrit/#/q/a91282fc>`_
  : Remove TestableDataTreeChangeListenerModule from ResourceManagerTest
* `aae81869 <https://git.opendaylight.org/gerrit/#/q/aae81869>`_
  : Listener base classes should not throw exception if close()'d
* `cc7ec571 <https://git.opendaylight.org/gerrit/#/q/cc7ec571>`_
  : Replace LOGGER by LOG
* `e7a333d9 <https://git.opendaylight.org/gerrit/#/q/e7a333d9>`_
  : Simplify boolean expressions
* `6cd063e4 <https://git.opendaylight.org/gerrit/#/q/6cd063e4>`_
  : Fix vlanIdModified test
* `5b721418 <https://git.opendaylight.org/gerrit/#/q/5b721418>`_
  : Simplify ResourceManager
* `bb738955 <https://git.opendaylight.org/gerrit/#/q/bb738955>`_
  : Replace toUpperCase().equals by equalsIgnoreCase()
* `83517ba7 <https://git.opendaylight.org/gerrit/#/q/83517ba7>`_
  : Incorrect handling of admin state update for interface
* `60f334a0 <https://git.opendaylight.org/gerrit/#/q/60f334a0>`_
  : fix for indefinite wait on the resource lock
* `dc0f5aa0 <https://git.opendaylight.org/gerrit/#/q/dc0f5aa0>`_
  : IMdsalApiManager API simplification
* `7fb63878 <https://git.opendaylight.org/gerrit/#/q/7fb63878>`_
  : Remove <prerequisites><maven> from pom.xml to avoid WARNING
* `186fdef0 <https://git.opendaylight.org/gerrit/#/q/186fdef0>`_
  `BUG-7826 <https://bugs.opendaylight.org/show_bug.cgi?id=7826>`_
  : Bug 7826: Data validation failed for path


groupbasedpolicy
----------------
* `ec50b66e <https://git.opendaylight.org/gerrit/#/q/ec50b66e>`_
  `BUG-8701 <https://bugs.opendaylight.org/show_bug.cgi?id=8701>`_
  : Bug 8701 - Location provider in VPP cleared + UT
* `3457d49a <https://git.opendaylight.org/gerrit/#/q/3457d49a>`_
  `BUG-8608 <https://bugs.opendaylight.org/show_bug.cgi?id=8608>`_
  : Bug 8608 - quick fix for async transaction creation
* `11a10da6 <https://git.opendaylight.org/gerrit/#/q/11a10da6>`_
  `BUG-8559 <https://bugs.opendaylight.org/show_bug.cgi?id=8559>`_
  : Bug 8559 - updating metadata endpoints
* `249331d0 <https://git.opendaylight.org/gerrit/#/q/249331d0>`_
  : Support for metadata in HA
* `2c4309ca <https://git.opendaylight.org/gerrit/#/q/2c4309ca>`_
  `BUG-8584 <https://bugs.opendaylight.org/show_bug.cgi?id=8584>`_
  : Bug 8584 - missing implementation in NM for floating IPs


honeycomb/vbd
-------------
* `edb9630 <https://git.opendaylight.org/gerrit/#/q/edb9630>`_
  : Tiny fix for failing transaction


lispflowmapping
---------------
* `113e820b <https://git.opendaylight.org/gerrit/#/q/113e820b>`_
  : Don't build Karaf 4 features
* `6b16fcac <https://git.opendaylight.org/gerrit/#/q/6b16fcac>`_
  `BUG-8679 <https://bugs.opendaylight.org/show_bug.cgi?id=8679>`_
  : Bug 8679: Fix widest negative prefix calculation
* `1ab0ea0f <https://git.opendaylight.org/gerrit/#/q/1ab0ea0f>`_
  : Add CSR1Kv configs
* `f384b983 <https://git.opendaylight.org/gerrit/#/q/f384b983>`_
  `BUG-8503 <https://bugs.opendaylight.org/show_bug.cgi?id=8503>`_
  : Bug 8503: Remove empty structures in DAO
* `18c55905 <https://git.opendaylight.org/gerrit/#/q/18c55905>`_
  `BUG-8591 <https://bugs.opendaylight.org/show_bug.cgi?id=8591>`_
  : Bug 8591: Add knob to disable authentication


mdsal
-----
* `2e10d2796 <https://git.opendaylight.org/gerrit/#/q/2e10d2796>`_
  `BUG-8769 <https://bugs.opendaylight.org/show_bug.cgi?id=8769>`_
  : Bug 8769 YangTextTemplate throw exception during yang binding Code Generator
* `23f792397 <https://git.opendaylight.org/gerrit/#/q/23f792397>`_
  : Binding v2 runtime - write transaction fix
* `0ff85fbec <https://git.opendaylight.org/gerrit/#/q/0ff85fbec>`_
  : Binding generator v2 - namespace fix #4
* `691e52c36 <https://git.opendaylight.org/gerrit/#/q/691e52c36>`_
  : Binding generator v2 - namespace fix #3
* `881c8a173 <https://git.opendaylight.org/gerrit/#/q/881c8a173>`_
  : Binding generator v2 - namespace fix #2
* `d4a474872 <https://git.opendaylight.org/gerrit/#/q/d4a474872>`_
  : Binding generator v2 - namespace fix #1
* `34c2cb2c3 <https://git.opendaylight.org/gerrit/#/q/34c2cb2c3>`_
  : Binding generator v2 - Action, ListAction fix
* `1ccbd41d3 <https://git.opendaylight.org/gerrit/#/q/1ccbd41d3>`_
  : Binding generator v2 - Binary key fix
* `abc714a3f <https://git.opendaylight.org/gerrit/#/q/abc714a3f>`_
  : Binding generator v2 - Identities fix
* `bc7da02e5 <https://git.opendaylight.org/gerrit/#/q/bc7da02e5>`_
  : Binding generator v2 - Augments fix
* `ce7de27a2 <https://git.opendaylight.org/gerrit/#/q/ce7de27a2>`_
  : Binding v2 runtime - adapters - abstract data broker test
* `655637498 <https://git.opendaylight.org/gerrit/#/q/655637498>`_
  : MDSAL Binding2 Features - Carbon only
* `49493c2eb <https://git.opendaylight.org/gerrit/#/q/49493c2eb>`_
  : Binding v2 runtime - adapters - impl - operations
* `f66597152 <https://git.opendaylight.org/gerrit/#/q/f66597152>`_
  : Recover removed test case for JavaIdentifierNormalizerTest
* `4e32d91d1 <https://git.opendaylight.org/gerrit/#/q/4e32d91d1>`_
  : Binding v2 runtime - adapters - impl - operations invoker
* `6e395a9ed <https://git.opendaylight.org/gerrit/#/q/6e395a9ed>`_
  : Binding v2 runtime - adapters - impl - notifications
* `09daf490a <https://git.opendaylight.org/gerrit/#/q/09daf490a>`_
  : Binding generator v2 - augments fix #3
* `de80b14d6 <https://git.opendaylight.org/gerrit/#/q/de80b14d6>`_
  : Binding generator v2 - augments fix #2
* `e3ea7da70 <https://git.opendaylight.org/gerrit/#/q/e3ea7da70>`_
  : Binding generator v2 - Namespace - Typedef package name fix
* `7e9798790 <https://git.opendaylight.org/gerrit/#/q/7e9798790>`_
  : Binding v2 runtime - adapters - impl - mount point
* `ad84b3019 <https://git.opendaylight.org/gerrit/#/q/ad84b3019>`_
  : Binding v2 runtime - adapters - transactions
* `9abf11a6a <https://git.opendaylight.org/gerrit/#/q/9abf11a6a>`_
  : Binding generator v2 - augments fix #1
* `dcb7ee994 <https://git.opendaylight.org/gerrit/#/q/dcb7ee994>`_
  : Binding v2 runtime - adapters - impl - data tree
* `1968d644a <https://git.opendaylight.org/gerrit/#/q/1968d644a>`_
  : Binding v2 runtime - adapters - registration
* `680ac63ca <https://git.opendaylight.org/gerrit/#/q/680ac63ca>`_
  : Binding v2 runtime - adapters - spi
* `7aba6e53e <https://git.opendaylight.org/gerrit/#/q/7aba6e53e>`_
  : Binding v2 runtime - adapters - extractors
* `859ff0409 <https://git.opendaylight.org/gerrit/#/q/859ff0409>`_
  : Binding2 runtime - Codecs - serialized
* `8a5686706 <https://git.opendaylight.org/gerrit/#/q/8a5686706>`_
  : Binding v2 runtime - codecs - modificators
* `9b16d5fb7 <https://git.opendaylight.org/gerrit/#/q/9b16d5fb7>`_
  : Binding2 runtime - Codecs impl - codecs - part4
* `b60f81f89 <https://git.opendaylight.org/gerrit/#/q/b60f81f89>`_
  : Binding2 runtime version fix
* `8e224c826 <https://git.opendaylight.org/gerrit/#/q/8e224c826>`_
  : Binding generator v2 - Decimal* - getDefaultInstance() fix
* `5a198b3d1 <https://git.opendaylight.org/gerrit/#/q/5a198b3d1>`_
  : Binding generator v2 - Bits - getDefaultInstance() fix
* `f63cd5bd2 <https://git.opendaylight.org/gerrit/#/q/f63cd5bd2>`_
  : Binding generator v2 - Identityref - Compilability fix
* `f181f88e4 <https://git.opendaylight.org/gerrit/#/q/f181f88e4>`_
  : Binding generator v2 - Augmentation - Fix package name for recursively uses augment
* `b7b78e4ca <https://git.opendaylight.org/gerrit/#/q/b7b78e4ca>`_
  : Binding generator v2 - Package name
* `3f2e012b1 <https://git.opendaylight.org/gerrit/#/q/3f2e012b1>`_
  : Binding generator v2 - Enumeration fix
* `d629df699 <https://git.opendaylight.org/gerrit/#/q/d629df699>`_
  : Binding generator v2 - Instantiable compilability fix
* `2975744b8 <https://git.opendaylight.org/gerrit/#/q/2975744b8>`_
  : Binding generator v2 - Unions - Union's builder fix
* `a6a89419d <https://git.opendaylight.org/gerrit/#/q/a6a89419d>`_
  : Binding generator v2 - Unions - fix getValue()
* `875e9cb51 <https://git.opendaylight.org/gerrit/#/q/875e9cb51>`_
  : Binding generator v2 - Unions - Enclosing type fix
* `926a6022a <https://git.opendaylight.org/gerrit/#/q/926a6022a>`_
  : Binding2 runtime - Codecs impl - tests
* `eb01ab81d <https://git.opendaylight.org/gerrit/#/q/eb01ab81d>`_
  : Binding2 runtime - Codecs
* `89a052a3a <https://git.opendaylight.org/gerrit/#/q/89a052a3a>`_
  : Binding2 runtime - Module info context
* `42341be6d <https://git.opendaylight.org/gerrit/#/q/42341be6d>`_
  : Binding2 runtime - Codecs impl - codecs - part3
* `7d19e16c3 <https://git.opendaylight.org/gerrit/#/q/7d19e16c3>`_
  : Binding2 runtime - Codecs impl - context - part3
* `842da41ce <https://git.opendaylight.org/gerrit/#/q/842da41ce>`_
  : Binding2 runtime - Codecs impl - codecs - part2
* `5bae96b11 <https://git.opendaylight.org/gerrit/#/q/5bae96b11>`_
  : Binding2 runtime - Codecs impl - context - part2
* `12181d1ed <https://git.opendaylight.org/gerrit/#/q/12181d1ed>`_
  : Binding2 runtime - Codecs impl - codecs
* `38e5738c6 <https://git.opendaylight.org/gerrit/#/q/38e5738c6>`_
  : Binding2 runtime - Codecs impl - cache
* `82044665e <https://git.opendaylight.org/gerrit/#/q/82044665e>`_
  : Binding2 runtime - Codecs impl - writers
* `853ac32db <https://git.opendaylight.org/gerrit/#/q/853ac32db>`_
  : Binding2 runtime - Codecs impl - context
* `0c1f5e979 <https://git.opendaylight.org/gerrit/#/q/0c1f5e979>`_
  : Binding2 runtime - Codecs impl #2
* `ec66b2ce6 <https://git.opendaylight.org/gerrit/#/q/ec66b2ce6>`_
  : Binding v2 runtime - refactor - part3
* `4ecf20777 <https://git.opendaylight.org/gerrit/#/q/4ecf20777>`_
  : Binding v2 runtime - refactor - part2
* `918a0567e <https://git.opendaylight.org/gerrit/#/q/918a0567e>`_
  : Binding v2 runtime - refactor - part1
* `46afb6058 <https://git.opendaylight.org/gerrit/#/q/46afb6058>`_
  : Binding v2 runtime - init module
* `2c51cf4bf <https://git.opendaylight.org/gerrit/#/q/2c51cf4bf>`_
  `BUG-8634 <https://bugs.opendaylight.org/show_bug.cgi?id=8634>`_
  : Bug 8634: list & leaf-list compilability fix
* `a48a8dd53 <https://git.opendaylight.org/gerrit/#/q/a48a8dd53>`_
  : Add endline to gettermethod and property
* `0b719c159 <https://git.opendaylight.org/gerrit/#/q/0b719c159>`_
  : Support for Yang 1.1 Anydata statement in mdsal-binding2-generator
* `d9c754afe <https://git.opendaylight.org/gerrit/#/q/d9c754afe>`_
  : Add implement type 'BindingTypes.INSTANTIABLE' to augment type -Add implement type 'BindingTypes.INSTANTIABLE' to augment type to replace 'DataObject' as to override the interface "implementedInterface" in it's builder.
* `22f672062 <https://git.opendaylight.org/gerrit/#/q/22f672062>`_
  : Binding v2 DOM Codec - generator - SPI - part 2
* `6487567fe <https://git.opendaylight.org/gerrit/#/q/6487567fe>`_
  : Binding generator v2 - leaf-list support
* `7d3c2791b <https://git.opendaylight.org/gerrit/#/q/7d3c2791b>`_
  : Binding v2 DOM Codec - generator - SPI - part 1
* `8c88fc1f6 <https://git.opendaylight.org/gerrit/#/q/8c88fc1f6>`_
  : Binding v2 DOM Codec - choice serializer implementation
* `5f27be897 <https://git.opendaylight.org/gerrit/#/q/5f27be897>`_
  : Binding v2 DOM Codec - augmentation
* `b29c4d806 <https://git.opendaylight.org/gerrit/#/q/b29c4d806>`_
  : Binding generator v2 - Choice/Cases support
* `1d900bb8a <https://git.opendaylight.org/gerrit/#/q/1d900bb8a>`_
  `BUG-8583 <https://bugs.opendaylight.org/show_bug.cgi?id=8583>`_
  : Bug 8583 - Duplicate appending rank to augement class
* `996e1c53e <https://git.opendaylight.org/gerrit/#/q/996e1c53e>`_
  `BUG-8593 <https://bugs.opendaylight.org/show_bug.cgi?id=8593>`_
  : Bug 8593 - Augmentation's Builder overrides a method from interface Augmentable.
* `1d5c1ce06 <https://git.opendaylight.org/gerrit/#/q/1d5c1ce06>`_
  `BUG-8575 <https://bugs.opendaylight.org/show_bug.cgi?id=8575>`_
  : Bug 8575 - IllegalArgumentException thrown when uses a grouping which name is not unique
* `6a5bdd0e9 <https://git.opendaylight.org/gerrit/#/q/6a5bdd0e9>`_
  `BUG-706 <https://bugs.opendaylight.org/show_bug.cgi?id=706>`_
  : Bug 706: - Missing support for anyxml statement in java generator and mapping service
* `db8eaf0d9 <https://git.opendaylight.org/gerrit/#/q/db8eaf0d9>`_
  : Binding generator v2 - Unions compilability fix
* `4ed1730aa <https://git.opendaylight.org/gerrit/#/q/4ed1730aa>`_
  : Binding v2 DOM Codec - generator - base implementation
* `535a0e0d7 <https://git.opendaylight.org/gerrit/#/q/535a0e0d7>`_
  : Binding v2 DOM Codec - generator - API
* `dd829b575 <https://git.opendaylight.org/gerrit/#/q/dd829b575>`_
  : Binding v2 DOM Codec - Javassist part
* `e8c52d628 <https://git.opendaylight.org/gerrit/#/q/e8c52d628>`_
  : Binding2 runtime - Codecs impl #1
* `bf496a42e <https://git.opendaylight.org/gerrit/#/q/bf496a42e>`_
  : Binding v2 DOM Codec - codecs API - Part 2
* `335cbc7b4 <https://git.opendaylight.org/gerrit/#/q/335cbc7b4>`_
  : Binding v2 runtime context
* `6c6fc1583 <https://git.opendaylight.org/gerrit/#/q/6c6fc1583>`_
  : Binding v2 DOM Codec - codecs API - Part 1
* `cbd735efa <https://git.opendaylight.org/gerrit/#/q/cbd735efa>`_
  : Binding spec runtime v2 - TreeNodeSerializer & relatives
* `6742ba2b4 <https://git.opendaylight.org/gerrit/#/q/6742ba2b4>`_
  : Binding2 runtime - API #7
* `df9528682 <https://git.opendaylight.org/gerrit/#/q/df9528682>`_
  : Binding2 runtime - API #6
* `a9831c2db <https://git.opendaylight.org/gerrit/#/q/a9831c2db>`_
  : Binding2 runtime - API #5
* `770f7cbfd <https://git.opendaylight.org/gerrit/#/q/770f7cbfd>`_
  : Binding2 runtime - API #4
* `f87a95ab6 <https://git.opendaylight.org/gerrit/#/q/f87a95ab6>`_
  : Binding2 runtime - API #3
* `dc5cacd6d <https://git.opendaylight.org/gerrit/#/q/dc5cacd6d>`_
  : Binding2 runtime - API #2
* `19393f668 <https://git.opendaylight.org/gerrit/#/q/19393f668>`_
  : Binding2 runtime - API #1
* `ad2fd7f3a <https://git.opendaylight.org/gerrit/#/q/ad2fd7f3a>`_
  : Binding generator v2 - Identities support
* `b99e965cb <https://git.opendaylight.org/gerrit/#/q/b99e965cb>`_
  : Binding v2 runtime
* `419106173 <https://git.opendaylight.org/gerrit/#/q/419106173>`_
  : Binding generator v2 - Unions fix
* `f70cbe576 <https://git.opendaylight.org/gerrit/#/q/f70cbe576>`_
  : Binding generator v2 - Notifications
* `2a454020b <https://git.opendaylight.org/gerrit/#/q/2a454020b>`_
  `BUG-8226 <https://bugs.opendaylight.org/show_bug.cgi?id=8226>`_
  : BUG-8226: do not import nested classes
* `8df2cadfa <https://git.opendaylight.org/gerrit/#/q/8df2cadfa>`_
  `BUG-8307 <https://bugs.opendaylight.org/show_bug.cgi?id=8307>`_
  : Bug 8307: Add the option for activating deviation statements
* `b3e33459a <https://git.opendaylight.org/gerrit/#/q/b3e33459a>`_
  : BindingDOMRpcProviderServiceAdapter should implement its interface


netconf
-------
* `30de8f44 <https://git.opendaylight.org/gerrit/#/q/30de8f44>`_
  `BUG-8839 <https://bugs.opendaylight.org/show_bug.cgi?id=8839>`_
  : BUG 8839: Revert "Make netconf utilize encrypted passwords only"
* `1867bf17 <https://git.opendaylight.org/gerrit/#/q/1867bf17>`_
  : Make netconf utilize encrypted passwords only
* `32621d57 <https://git.opendaylight.org/gerrit/#/q/32621d57>`_
  `BUG-8697 <https://bugs.opendaylight.org/show_bug.cgi?id=8697>`_
  : BUG-8697: select correct transformer for schemaless netconf mounts
* `e51312f7 <https://git.opendaylight.org/gerrit/#/q/e51312f7>`_
  : Remove UriInfo from JSONRestconfService API methods
* `557006cd <https://git.opendaylight.org/gerrit/#/q/557006cd>`_
  : Un-deprecate JSONRestconfService(Impl)
* `6c78a97e <https://git.opendaylight.org/gerrit/#/q/6c78a97e>`_
  `BUG-8085 <https://bugs.opendaylight.org/show_bug.cgi?id=8085>`_
  : BUG-8085: create missing parent augmentation node
* `9318c37a <https://git.opendaylight.org/gerrit/#/q/9318c37a>`_
  `BUG-8566 <https://bugs.opendaylight.org/show_bug.cgi?id=8566>`_
  : BUG 8566 direct writes to ordered list fail
* `848c94b7 <https://git.opendaylight.org/gerrit/#/q/848c94b7>`_
  : Fixing NPE caused when rpc definition does not include "input" or "output"
* `b140321b <https://git.opendaylight.org/gerrit/#/q/b140321b>`_
  `BUG-8533 <https://bugs.opendaylight.org/show_bug.cgi?id=8533>`_
  : Bug 8533: Not possible to invoke RPC on mount points with new Restconf
* `eb8a4d94 <https://git.opendaylight.org/gerrit/#/q/eb8a4d94>`_
  `BUG-7933 <https://bugs.opendaylight.org/show_bug.cgi?id=7933>`_
  : Bug 7933: NPE when posting using XML
* `3b0ec164 <https://git.opendaylight.org/gerrit/#/q/3b0ec164>`_
  `BUG-7933 <https://bugs.opendaylight.org/show_bug.cgi?id=7933>`_
  : Bug 7933: NPE when posting using XML
* `514af3f6 <https://git.opendaylight.org/gerrit/#/q/514af3f6>`_
  `BUG-8455 <https://bugs.opendaylight.org/show_bug.cgi?id=8455>`_
  : Bug 8455: Yang Patch response is not having the error details
* `0fb6a272 <https://git.opendaylight.org/gerrit/#/q/0fb6a272>`_
  `BUG-8490 <https://bugs.opendaylight.org/show_bug.cgi?id=8490>`_
  : Bug 8490 - Ignore unstable SSHServerTest


netvirt
-------
* `acfe4033b <https://git.opendaylight.org/gerrit/#/q/acfe4033b>`_
  `BUG-8793 <https://bugs.opendaylight.org/show_bug.cgi?id=8793>`_
  : Bug 8793: Null Pointer Exceptions in Carbon CSIT
* `c29f9e25d <https://git.opendaylight.org/gerrit/#/q/c29f9e25d>`_
  `BUG-8793 <https://bugs.opendaylight.org/show_bug.cgi?id=8793>`_
  : Bug 8793: Null Pointer Exceptions in Carbon CSIT
* `b2879380e <https://git.opendaylight.org/gerrit/#/q/b2879380e>`_
  `BUG-8793 <https://bugs.opendaylight.org/show_bug.cgi?id=8793>`_
  : Bug 8793: Null Pointer Exceptions in Carbon CSIT
* `015dd2dc5 <https://git.opendaylight.org/gerrit/#/q/015dd2dc5>`_
  : Adding logs in ACL.
* `f60e325b9 <https://git.opendaylight.org/gerrit/#/q/f60e325b9>`_
  : Fix NPE in aclService test
* `ba9b4d33f <https://git.opendaylight.org/gerrit/#/q/ba9b4d33f>`_
  : Fix clear bug in BgpConfigurationManager's interVpnLinkService
* `ceed744f1 <https://git.opendaylight.org/gerrit/#/q/ceed744f1>`_
  : Revert "Neutron Port allocation for DHCP Service"
* `c4fea9383 <https://git.opendaylight.org/gerrit/#/q/c4fea9383>`_
  `BUG-7824 <https://bugs.opendaylight.org/show_bug.cgi?id=7824>`_
  : BUG 7824: Handling Optimistic lock exception for elanmodule
* `11831b359 <https://git.opendaylight.org/gerrit/#/q/11831b359>`_
  : Remove sfc-translator MdsalUtils::put()
* `4fcd543ea <https://git.opendaylight.org/gerrit/#/q/4fcd543ea>`_
  : Remove sfc-translator MdsalUtils::merge()
* `c7adf8be7 <https://git.opendaylight.org/gerrit/#/q/c7adf8be7>`_
  : Remove sfc-translator MdsalUtils::delete()
* `67c6932b3 <https://git.opendaylight.org/gerrit/#/q/67c6932b3>`_
  : Remove sfc-translator MdsalUtils::read()
* `4e72f268d <https://git.opendaylight.org/gerrit/#/q/4e72f268d>`_
  : Remove NatUtil::read()
* `4db213e80 <https://git.opendaylight.org/gerrit/#/q/4db213e80>`_
  : Use documenting constants for put()
* `0361f8d06 <https://git.opendaylight.org/gerrit/#/q/0361f8d06>`_
  : Remove old NetVirt
* `bdb38f669 <https://git.opendaylight.org/gerrit/#/q/bdb38f669>`_
  : Fix NPE triggered after disabling SG on a port
* `7b3aae5bb <https://git.opendaylight.org/gerrit/#/q/7b3aae5bb>`_
  `BUG-8398 <https://bugs.opendaylight.org/show_bug.cgi?id=8398>`_
  : Bug 8398 - communication between two tenant network failed while using default SG (stateful mode)
* `631dae5c8 <https://git.opendaylight.org/gerrit/#/q/631dae5c8>`_
  `BUG-8398 <https://bugs.opendaylight.org/show_bug.cgi?id=8398>`_
  : Bug 8398 - communication between two tenant network failed while using default SG (stateful mode)
* `e773730bb <https://git.opendaylight.org/gerrit/#/q/e773730bb>`_
  `BUG-8645 <https://bugs.opendaylight.org/show_bug.cgi?id=8645>`_
  : Bug 8645: Alarm not cleared while deleting the bgp neighbor
* `b0eaccad8 <https://git.opendaylight.org/gerrit/#/q/b0eaccad8>`_
  `BUG-7599 <https://bugs.opendaylight.org/show_bug.cgi?id=7599>`_
  : bug 7599 hwvtep ucast mac add performance improv
* `0babe2d94 <https://git.opendaylight.org/gerrit/#/q/0babe2d94>`_
  : VrfEntryListener refactoring using chain of responsibility pattern
* `6f525ec4f <https://git.opendaylight.org/gerrit/#/q/6f525ec4f>`_
  : Neutron Port allocation for DHCP Service
* `77003ee0c <https://git.opendaylight.org/gerrit/#/q/77003ee0c>`_
  `BUG-7939 <https://bugs.opendaylight.org/show_bug.cgi?id=7939>`_
  : Bug 7939 - CSIT Sporadic failures - Flow(s) missing in VPNService suite on compute node
* `1228741cc <https://git.opendaylight.org/gerrit/#/q/1228741cc>`_
  `BUG-8553 <https://bugs.opendaylight.org/show_bug.cgi?id=8553>`_
  : BUG 8553: Rules are not deleted/added to the SG.
* `ef8c8b711 <https://git.opendaylight.org/gerrit/#/q/ef8c8b711>`_
  `BUG-8743 <https://bugs.opendaylight.org/show_bug.cgi?id=8743>`_
  : Bug 8743 : Fix NAT Service to safely use vpn-to-dpn list.
* `8b517bd58 <https://git.opendaylight.org/gerrit/#/q/8b517bd58>`_
  : Move fibmanager-shell blueprint.xml from OSGI-INF/blueprint to org/opendaylight/blueprint
* `88673d301 <https://git.opendaylight.org/gerrit/#/q/88673d301>`_
  : Netvirt wide blueprint xml path change: /OSGI-INF/ -> /org/opendaylight/
* `70391261d <https://git.opendaylight.org/gerrit/#/q/70391261d>`_
  `BUG-8179 <https://bugs.opendaylight.org/show_bug.cgi?id=8179>`_
  : Bug 8179 - Data validation failed for path bgp/networks
* `0174759f6 <https://git.opendaylight.org/gerrit/#/q/0174759f6>`_
  `BUG-7824 <https://bugs.opendaylight.org/show_bug.cgi?id=7824>`_
  : Bug 7824: Handling CSIT Exception under Elan module
* `06dae48ec <https://git.opendaylight.org/gerrit/#/q/06dae48ec>`_
  `BUG-8710 <https://bugs.opendaylight.org/show_bug.cgi?id=8710>`_
  : Bug 8710: Bgp afi related bug fixes
* `12ffded5a <https://git.opendaylight.org/gerrit/#/q/12ffded5a>`_
  : VrfEntryListener refactoring using chain of responsibility pattern
* `5c7a7b61a <https://git.opendaylight.org/gerrit/#/q/5c7a7b61a>`_
  : Spec update for DHCP Neutron Port Allocation
* `230a53309 <https://git.opendaylight.org/gerrit/#/q/230a53309>`_
  `BUG-8441 <https://bugs.opendaylight.org/show_bug.cgi?id=8441>`_
  `BUG-8630 <https://bugs.opendaylight.org/show_bug.cgi?id=8630>`_
  : Bug 8441, 8630 - LB groups not deleted after extra route deletion
* `7b5cdf963 <https://git.opendaylight.org/gerrit/#/q/7b5cdf963>`_
  : Fix null Optional instantiations
* `1393b174d <https://git.opendaylight.org/gerrit/#/q/1393b174d>`_
  : Restore VRF imported routes case
* `86dfa5406 <https://git.opendaylight.org/gerrit/#/q/86dfa5406>`_
  `BUG-8706 <https://bugs.opendaylight.org/show_bug.cgi?id=8706>`_
  : Bug 8706: Restore null-check in createLocalFibEntry
* `1fff16efb <https://git.opendaylight.org/gerrit/#/q/1fff16efb>`_
  : Minor code clean-up
* `60de18928 <https://git.opendaylight.org/gerrit/#/q/60de18928>`_
  `BUG-8657 <https://bugs.opendaylight.org/show_bug.cgi?id=8657>`_
  : Bug 8657: Fix for failure seen with IPv6 extra-route
* `9be663c46 <https://git.opendaylight.org/gerrit/#/q/9be663c46>`_
  `BUG-8552 <https://bugs.opendaylight.org/show_bug.cgi?id=8552>`_
  : Bug 8552 - [l3vpn]Stale flow entries not getting removed even when all the VM config are deleted
* `d24cb415e <https://git.opendaylight.org/gerrit/#/q/d24cb415e>`_
  : Use optional for dataBroker
* `f92712962 <https://git.opendaylight.org/gerrit/#/q/f92712962>`_
  : Fix SingleFeatureTest breakage on fibmanager-shell bundle
* `407be04a2 <https://git.opendaylight.org/gerrit/#/q/407be04a2>`_
  `BUG-8520 <https://bugs.opendaylight.org/show_bug.cgi?id=8520>`_
  : Bug 8520 - NPE at org.opendaylight.netvirt.vpnmanager.arp.responder.ArpResponderUtil.getActions
* `a0b48836d <https://git.opendaylight.org/gerrit/#/q/a0b48836d>`_
  `BUG-8374 <https://bugs.opendaylight.org/show_bug.cgi?id=8374>`_
  : Bug 8374: NPE observed on fib-show command
* `c59ae8ba9 <https://git.opendaylight.org/gerrit/#/q/c59ae8ba9>`_
  : Fixes: - BgpAlarms: avoid un-necessary reading of neighbor list
* `470f4b05a <https://git.opendaylight.org/gerrit/#/q/470f4b05a>`_
  `BUG-8646 <https://bugs.opendaylight.org/show_bug.cgi?id=8646>`_
  : Bug 8646: QoS log level changed to debug
* `ba90814c9 <https://git.opendaylight.org/gerrit/#/q/ba90814c9>`_
  : Use TestInterfaceManager that's now in testutils
* `26b3f40e0 <https://git.opendaylight.org/gerrit/#/q/26b3f40e0>`_
  `BUG-8615 <https://bugs.opendaylight.org/show_bug.cgi?id=8615>`_
  : Bug 8615 - Stale flows in table 46, 47 and 44 when SNAT is disabled (Conntrack Based)
* `9a252a3cb <https://git.opendaylight.org/gerrit/#/q/9a252a3cb>`_
  : Support ping6 for Neutron internal router interfaces
* `664629b24 <https://git.opendaylight.org/gerrit/#/q/664629b24>`_
  `BUG-8302 <https://bugs.opendaylight.org/show_bug.cgi?id=8302>`_
  : Bug 8302 fix for ELAN TS table flow leftovers
* `384d1a08a <https://git.opendaylight.org/gerrit/#/q/384d1a08a>`_
  `BUG-8588 <https://bugs.opendaylight.org/show_bug.cgi?id=8588>`_
  : Revert "Bug 8588 - NPE at at org.opendaylight.netvirt.fibmanager.VrfEntryListener.createLocalFibEntry"
* `190a4fc87 <https://git.opendaylight.org/gerrit/#/q/190a4fc87>`_
  : EVPN RT2 : UT Bug fixes
* `c4e4cfd94 <https://git.opendaylight.org/gerrit/#/q/c4e4cfd94>`_
  `BUG-8610 <https://bugs.opendaylight.org/show_bug.cgi?id=8610>`_
  : Bug 8610 - In NAPT HA(Conntrack based) NAT rules are not programmed when a switch comes back after a failure.
* `bc9c45bca <https://git.opendaylight.org/gerrit/#/q/bc9c45bca>`_
  `BUG-8440 <https://bugs.opendaylight.org/show_bug.cgi?id=8440>`_
  : Bug 8440: Traffic from remote OVS to LB Group
* `01bd86175 <https://git.opendaylight.org/gerrit/#/q/01bd86175>`_
  : Fix NPE in DhcpAllocationPoolManager close()
* `2ceab8669 <https://git.opendaylight.org/gerrit/#/q/2ceab8669>`_
  `BUG-8588 <https://bugs.opendaylight.org/show_bug.cgi?id=8588>`_
  : Bug 8588 - NPE at at org.opendaylight.netvirt.fibmanager.VrfEntryListener.createLocalFibEntry
* `371da7bea <https://git.opendaylight.org/gerrit/#/q/371da7bea>`_
  `BUG-8609 <https://bugs.opendaylight.org/show_bug.cgi?id=8609>`_
  : Bug 8609 - CSIT Sporadic failures - vpnservice suite - l3 rule leftover in table=19
* `990c2dbdc <https://git.opendaylight.org/gerrit/#/q/990c2dbdc>`_
  : Simplify some streaming constructs
* `6a01861e4 <https://git.opendaylight.org/gerrit/#/q/6a01861e4>`_
  `BUG-8549 <https://bugs.opendaylight.org/show_bug.cgi?id=8549>`_
  : Bug 8549 - Inter OVS traffic over EVPN does not work with openstack-vni-semantics-enforce set to true
* `199a312cf <https://git.opendaylight.org/gerrit/#/q/199a312cf>`_
  : Bug7830:Conflict modification exception for NAT
* `c42a0b2ec <https://git.opendaylight.org/gerrit/#/q/c42a0b2ec>`_
  `BUG-8614 <https://bugs.opendaylight.org/show_bug.cgi?id=8614>`_
  : Bug 8614: NPE observed in cloud-sc's VrfListener
* `29d13afd0 <https://git.opendaylight.org/gerrit/#/q/29d13afd0>`_
  `BUG-8595 <https://bugs.opendaylight.org/show_bug.cgi?id=8595>`_
  : Bug 8595 - DNAT traffic from DC gateway to FIP fails
* `94f619722 <https://git.opendaylight.org/gerrit/#/q/94f619722>`_
  `BUG-8585 <https://bugs.opendaylight.org/show_bug.cgi?id=8585>`_
  : Bug 8585: Exception with invalid QoS Alert params
* `3d41f9439 <https://git.opendaylight.org/gerrit/#/q/3d41f9439>`_
  : Fix checkstyle problems not detected by the current version
* `847e42b30 <https://git.opendaylight.org/gerrit/#/q/847e42b30>`_
  `BUG-7451 <https://bugs.opendaylight.org/show_bug.cgi?id=7451>`_
  : Bug 7451 - guarding NPE
* `45bbaabf2 <https://git.opendaylight.org/gerrit/#/q/45bbaabf2>`_
  `BUG-8581 <https://bugs.opendaylight.org/show_bug.cgi?id=8581>`_
  : Bug 8581: DNAT failure with openstack/ocata
* `536500961 <https://git.opendaylight.org/gerrit/#/q/536500961>`_
  : elanName is null
* `02f5ecf18 <https://git.opendaylight.org/gerrit/#/q/02f5ecf18>`_
  `BUG-8586 <https://bugs.opendaylight.org/show_bug.cgi?id=8586>`_
  : Bug 8586: Alarm raised due to stale stats polling
* `323f1d925 <https://git.opendaylight.org/gerrit/#/q/323f1d925>`_
  : Replace LOGGER by LOG
* `f2c425ad6 <https://git.opendaylight.org/gerrit/#/q/f2c425ad6>`_
  : Clean up Optional uses
* `4fa31a70a <https://git.opendaylight.org/gerrit/#/q/4fa31a70a>`_
  : Replace logger and log by LOG
* `c9ef771d1 <https://git.opendaylight.org/gerrit/#/q/c9ef771d1>`_
  `BUG-8589 <https://bugs.opendaylight.org/show_bug.cgi?id=8589>`_
  : Bug 8589: Fix regression in Ipv6PktHandler
* `7ace0f995 <https://git.opendaylight.org/gerrit/#/q/7ace0f995>`_
  : Use named constants in ElanUtils
* `0180e6634 <https://git.opendaylight.org/gerrit/#/q/0180e6634>`_
  : Use direct comparisons instead of Objects.isNull
* `0cc35f770 <https://git.opendaylight.org/gerrit/#/q/0cc35f770>`_
  `BUG-7451 <https://bugs.opendaylight.org/show_bug.cgi?id=7451>`_
  : Bug 7451 - VPN service cleanup of Table 17
* `bff012f8a <https://git.opendaylight.org/gerrit/#/q/bff012f8a>`_
  : SNAT performance improvement for Controller-Based SNAT
* `1d8c463d7 <https://git.opendaylight.org/gerrit/#/q/1d8c463d7>`_
  `BUG-8417 <https://bugs.opendaylight.org/show_bug.cgi?id=8417>`_
  : Bug 8417 - [l3vpn_ecmp] Deleting MPLS GRE Tunnel port doesn't delete the
* `b34b78a26 <https://git.opendaylight.org/gerrit/#/q/b34b78a26>`_
  : Minor Checkstyle fix Custom Import Order error
* `e4a51eec3 <https://git.opendaylight.org/gerrit/#/q/e4a51eec3>`_
  `BUG-7451 <https://bugs.opendaylight.org/show_bug.cgi?id=7451>`_
  : Bug 7451 - Leftovers in dispatcher table when unbind and ietf-state delete
* `87175b44b <https://git.opendaylight.org/gerrit/#/q/87175b44b>`_
  `BUG-8498 <https://bugs.opendaylight.org/show_bug.cgi?id=8498>`_
  : Bug 8498 - ICMP traffic from DHCP NS not blocked when ICMP rule to allow VM-VM traffic is added in learn mode.
* `b44f0dee0 <https://git.opendaylight.org/gerrit/#/q/b44f0dee0>`_
  : Add JUnits for InterVpnLinkLocator
* `7aa5b477a <https://git.opendaylight.org/gerrit/#/q/7aa5b477a>`_
  : Fix a few non-null collections
* `0ac9ee70b <https://git.opendaylight.org/gerrit/#/q/0ac9ee70b>`_
  `BUG-8376 <https://bugs.opendaylight.org/show_bug.cgi?id=8376>`_
  : Bug 8376: Fix DHCP for external tunnels
* `f4dd180e7 <https://git.opendaylight.org/gerrit/#/q/f4dd180e7>`_
  : BUG:8341 IAE seen in CSIT logs when port/vlan name is not matching UUID
* `2e8189e05 <https://git.opendaylight.org/gerrit/#/q/2e8189e05>`_
  `BUG-7599 <https://bugs.opendaylight.org/show_bug.cgi?id=7599>`_
  : bug 7599 hwvtep ucast mac add performance improv
* `e3f31f88d <https://git.opendaylight.org/gerrit/#/q/e3f31f88d>`_
  : elanmanager-impl <dependency> interfacemanager-impl <scope>test
* `46ddf16f5 <https://git.opendaylight.org/gerrit/#/q/46ddf16f5>`_
  : Use named constants for PolicyAceFlowWrapper
* `5d8147468 <https://git.opendaylight.org/gerrit/#/q/5d8147468>`_
  : Adjust tunnel state listeners for logical tunnel
* `b0f7dae78 <https://git.opendaylight.org/gerrit/#/q/b0f7dae78>`_
  : BUG:8232 updating BGPVPN with the List of RDs
* `863faf4ec <https://git.opendaylight.org/gerrit/#/q/863faf4ec>`_
  : Fix Unused log and private final
* `ed6133931 <https://git.opendaylight.org/gerrit/#/q/ed6133931>`_
  : EVPN RT2 : Silent host changes
* `0a673e695 <https://git.opendaylight.org/gerrit/#/q/0a673e695>`_
  `BUG-8508 <https://bugs.opendaylight.org/show_bug.cgi?id=8508>`_
  : Bug 8508 : Id-manager exception during releasing id for router
* `f6834b105 <https://git.opendaylight.org/gerrit/#/q/f6834b105>`_
  `BUG-8539 <https://bugs.opendaylight.org/show_bug.cgi?id=8539>`_
  : Bug 8539: IPv6 L3 Forwarding broken.
* `a7f9131ed <https://git.opendaylight.org/gerrit/#/q/a7f9131ed>`_
  `BUG-8485 <https://bugs.opendaylight.org/show_bug.cgi?id=8485>`_
  : Bug 8485 : EVPN was also coming as Layer_3 VRF
* `a322e2c43 <https://git.opendaylight.org/gerrit/#/q/a322e2c43>`_
  `BUG-8358 <https://bugs.opendaylight.org/show_bug.cgi?id=8358>`_
  : Bug 8358 - Local next hop group not deleted after VM migration
* `d0f10882f <https://git.opendaylight.org/gerrit/#/q/d0f10882f>`_
  `BUG-8412 <https://bugs.opendaylight.org/show_bug.cgi?id=8412>`_
  : Bug 8412 - NPE while adding and removing elanmacentry
* `e19a8ac22 <https://git.opendaylight.org/gerrit/#/q/e19a8ac22>`_
  `BUG-8537 <https://bugs.opendaylight.org/show_bug.cgi?id=8537>`_
  : BUG 8537: Get destination from interface remote ip
* `196760494 <https://git.opendaylight.org/gerrit/#/q/196760494>`_
  : Replace toUpperCase().equals by equalsIgnoreCase()


neutron
-------
* `a159f5a6 <https://git.opendaylight.org/gerrit/#/q/a159f5a6>`_
  `BUG-8660 <https://bugs.opendaylight.org/show_bug.cgi?id=8660>`_
  : Bug 8660: use southbound-artifacts


odlparent
---------
* `6166f35 <https://git.opendaylight.org/gerrit/#/q/6166f35>`_
  : Add method to skip karaf4 featureTest
* `a20d9dd <https://git.opendaylight.org/gerrit/#/q/a20d9dd>`_
  : Bump akka to 2.4.18
* `d897d97 <https://git.opendaylight.org/gerrit/#/q/d897d97>`_
  : Bump scala to 2.11.11
* `3213a5a <https://git.opendaylight.org/gerrit/#/q/3213a5a>`_
  `BUG-4219 <https://bugs.opendaylight.org/show_bug.cgi?id=4219>`_
  : BUG-4219: fix karaf CLI reload


openflowjava
------------
* `15d34417 <https://git.opendaylight.org/gerrit/#/q/15d34417>`_
  `BUG-8772 <https://bugs.opendaylight.org/show_bug.cgi?id=8772>`_
  : Add method to register listener for unknown msg


openflowplugin
--------------
* `d01b87519 <https://git.opendaylight.org/gerrit/#/q/d01b87519>`_
  : Solves compilation error
* `2417e3acd <https://git.opendaylight.org/gerrit/#/q/2417e3acd>`_
  `BUG-8762 <https://bugs.opendaylight.org/show_bug.cgi?id=8762>`_
  : Fix NPE in ConnectionContextImpl
* `364cfe697 <https://git.opendaylight.org/gerrit/#/q/364cfe697>`_
  : Revert "Remove lifecycle service from tx chain manager"
* `5bbffc61f <https://git.opendaylight.org/gerrit/#/q/5bbffc61f>`_
  : Remove lifecycle service from tx chain manager
* `fba409c7e <https://git.opendaylight.org/gerrit/#/q/fba409c7e>`_
  `BUG-8668 <https://bugs.opendaylight.org/show_bug.cgi?id=8668>`_
  : Fix context chain closing
* `e8c589841 <https://git.opendaylight.org/gerrit/#/q/e8c589841>`_
  `BUG-2188 <https://bugs.opendaylight.org/show_bug.cgi?id=2188>`_
  : Report (TCP) port number for switches
* `6d1003040 <https://git.opendaylight.org/gerrit/#/q/6d1003040>`_
  `BUG-8411 <https://bugs.opendaylight.org/show_bug.cgi?id=8411>`_
  : Fix "stale" state after controller disconnected.
* `68b13d25b <https://git.opendaylight.org/gerrit/#/q/68b13d25b>`_
  `BUG-8635 <https://bugs.opendaylight.org/show_bug.cgi?id=8635>`_
  : Ensure that statistics gathering is terminated
* `ca350d22e <https://git.opendaylight.org/gerrit/#/q/ca350d22e>`_
  `BUG-7664 <https://bugs.opendaylight.org/show_bug.cgi?id=7664>`_
  : Fix connection when slave role request is unsupported
* `2e39bb6bb <https://git.opendaylight.org/gerrit/#/q/2e39bb6bb>`_
  `BUG-4747 <https://bugs.opendaylight.org/show_bug.cgi?id=4747>`_
  : Fix port update
* `4dea3ebb4 <https://git.opendaylight.org/gerrit/#/q/4dea3ebb4>`_
  `BUG-2095 <https://bugs.opendaylight.org/show_bug.cgi?id=2095>`_
  : Fix 'INPORT' keyword in port field
* `3a64e2719 <https://git.opendaylight.org/gerrit/#/q/3a64e2719>`_
  `BUG-4422 <https://bugs.opendaylight.org/show_bug.cgi?id=4422>`_
  : Fix onSwitchIdleEvent echo request-reply xid
* `94517229c <https://git.opendaylight.org/gerrit/#/q/94517229c>`_
  `BUG-8607 <https://bugs.opendaylight.org/show_bug.cgi?id=8607>`_
  : BUG-8607: Replace logger and log by LOG
* `2793d643d <https://git.opendaylight.org/gerrit/#/q/2793d643d>`_
  : Make create-parents in bulk-o-matic not required
* `c952c2e25 <https://git.opendaylight.org/gerrit/#/q/c952c2e25>`_
  `BUG-8647 <https://bugs.opendaylight.org/show_bug.cgi?id=8647>`_
  : Bug 8647: remove odl-dlux-core as artifact POM
* `b0f6f2271 <https://git.opendaylight.org/gerrit/#/q/b0f6f2271>`_
  `BUG-7332 <https://bugs.opendaylight.org/show_bug.cgi?id=7332>`_
  : BUG 7332: Cleanup queue after switch disconnect
* `a10509a8b <https://git.opendaylight.org/gerrit/#/q/a10509a8b>`_
  `BUG-8598 <https://bugs.opendaylight.org/show_bug.cgi?id=8598>`_
  : Close OpenFlowPluginProvider during shutdown
* `965c67fa6 <https://git.opendaylight.org/gerrit/#/q/965c67fa6>`_
  `BUG-7940 <https://bugs.opendaylight.org/show_bug.cgi?id=7940>`_
  : Stop reschedule stat. after device disconnected
* `3d1016e73 <https://git.opendaylight.org/gerrit/#/q/3d1016e73>`_
  `BUG-4862 <https://bugs.opendaylight.org/show_bug.cgi?id=4862>`_
  : HeaderDeserializer and HeaderSerializer for codecs
* `ab267d4e6 <https://git.opendaylight.org/gerrit/#/q/ab267d4e6>`_
  `BUG-6908 <https://bugs.opendaylight.org/show_bug.cgi?id=6908>`_
  : Write port statistics when needed
* `06c47763e <https://git.opendaylight.org/gerrit/#/q/06c47763e>`_
  : Add Nicira extension support for matching IPv6 Src/Dst
* `d0ca4c70c <https://git.opendaylight.org/gerrit/#/q/d0ca4c70c>`_
  `BUG-6755 <https://bugs.opendaylight.org/show_bug.cgi?id=6755>`_
  : Fix auxiliary connections
* `fad3e013d <https://git.opendaylight.org/gerrit/#/q/fad3e013d>`_
  : Optimize port status and hello message handling
* `8f2534284 <https://git.opendaylight.org/gerrit/#/q/8f2534284>`_
  `BUG-8497
7957 <https://bugs.opendaylight.org/show_bug.cgi?id=8497
7957>`_
  : Bug 8497 - Provide config knob to disable the Forwarding Rule Manager reconciliation
* `657983013 <https://git.opendaylight.org/gerrit/#/q/657983013>`_
  `BUG-8527 <https://bugs.opendaylight.org/show_bug.cgi?id=8527>`_
  : Add missing convertors for OF1.0 actions
* `ebcbab40c <https://git.opendaylight.org/gerrit/#/q/ebcbab40c>`_
  `BUG-8253 <https://bugs.opendaylight.org/show_bug.cgi?id=8253>`_
  : Bug 8253: Set-Field can not accept vendor extension fields.
* `05000c40b <https://git.opendaylight.org/gerrit/#/q/05000c40b>`_
  `BUG-8535 <https://bugs.opendaylight.org/show_bug.cgi?id=8535>`_
  : Bug 8535: Fix IPv6 OXMHeader Mask issue
* `ad3e26b7f <https://git.opendaylight.org/gerrit/#/q/ad3e26b7f>`_
  : Adding Reason Attribute to FlowCapableNodeConnector
* `b3f50be0d <https://git.opendaylight.org/gerrit/#/q/b3f50be0d>`_
  : Though shall not use org.eclipse.tycho's osgi.. you don't even need it!
* `628814041 <https://git.opendaylight.org/gerrit/#/q/628814041>`_
  : Fix logging of exception in HandshakeListenerImpl
* `284858037 <https://git.opendaylight.org/gerrit/#/q/284858037>`_
  : Fix no reserved xid
* `f82bbc324 <https://git.opendaylight.org/gerrit/#/q/f82bbc324>`_
  : Remove unused method
* `4e38a2e15 <https://git.opendaylight.org/gerrit/#/q/4e38a2e15>`_
  `BUG-8293 <https://bugs.opendaylight.org/show_bug.cgi?id=8293>`_
  : Bug 8293: Add table writer to bulk-o-matic


ovsdb
-----
* `47e43793 <https://git.opendaylight.org/gerrit/#/q/47e43793>`_
  `BUG-8674 <https://bugs.opendaylight.org/show_bug.cgi?id=8674>`_
  : bug 8674 fix port vlan bindings reconciliation
* `74520bb3 <https://git.opendaylight.org/gerrit/#/q/74520bb3>`_
  `BUG-8720 <https://bugs.opendaylight.org/show_bug.cgi?id=8720>`_
  : BUG 8720: Add schema version information to Hwvtep node
* `063f6d04 <https://git.opendaylight.org/gerrit/#/q/063f6d04>`_
  `BUG-8529 <https://bugs.opendaylight.org/show_bug.cgi?id=8529>`_
  : BUG 8529: Deleted vlantag and trunks present in operational
* `45209f5c <https://git.opendaylight.org/gerrit/#/q/45209f5c>`_
  `BUG-8257 <https://bugs.opendaylight.org/show_bug.cgi?id=8257>`_
  : bug 8257 handling back to back ucast mac updates
* `737f2979 <https://git.opendaylight.org/gerrit/#/q/737f2979>`_
  `BUG-8257 <https://bugs.opendaylight.org/show_bug.cgi?id=8257>`_
  : bug 8257 handling back to back logical switches
* `4b0913ac <https://git.opendaylight.org/gerrit/#/q/4b0913ac>`_
  `BUG-8257 <https://bugs.opendaylight.org/show_bug.cgi?id=8257>`_
  : bug 8257 handling back to back mcast mac updates


sfc
---
* `c934c445 <https://git.opendaylight.org/gerrit/#/q/c934c445>`_
  : Disable odl-sfclisp Karaf 4 feature
* `4044bd2c <https://git.opendaylight.org/gerrit/#/q/4044bd2c>`_
  `BUG-8543 <https://bugs.opendaylight.org/show_bug.cgi?id=8543>`_
  : Bug 8543: Pop_nsh should be last
* `ebfc926d <https://git.opendaylight.org/gerrit/#/q/ebfc926d>`_
  : Remove redundant modifier


sxp
---
* `1f32353 <https://git.opendaylight.org/gerrit/#/q/1f32353>`_
  : Fix byte pointing and shortened ipv4 in lua dissector
* `ed37cec <https://git.opendaylight.org/gerrit/#/q/ed37cec>`_
  `BUG-8504 <https://bugs.opendaylight.org/show_bug.cgi?id=8504>`_
  : Bug 8504 - jrobot test library fails with IllegalArgumentException
* `6c0ad59 <https://git.opendaylight.org/gerrit/#/q/6c0ad59>`_
  `BUG-8428 <https://bugs.opendaylight.org/show_bug.cgi?id=8428>`_
  : Bug 8428 - DS listeners creates conflicting transactions
* `9ebe0f0 <https://git.opendaylight.org/gerrit/#/q/9ebe0f0>`_
  `BUG-8368 <https://bugs.opendaylight.org/show_bug.cgi?id=8368>`_
  : Bug 8368 - UT - ThreadsWorker tests consist of race conditions


yangtools
---------
* `9a17ea82c <https://git.opendaylight.org/gerrit/#/q/9a17ea82c>`_
  : Fix uninitialized ExtensionDefinition for openconfig-version
* `2653c7610 <https://git.opendaylight.org/gerrit/#/q/2653c7610>`_
  : Bypass array-based sort
* `7315c8fa8 <https://git.opendaylight.org/gerrit/#/q/7315c8fa8>`_
  `BUG-6897 <https://bugs.opendaylight.org/show_bug.cgi?id=6897>`_
  : Bug 6897: [YANG 1.1] Allow notifications to be tied to data nodes
* `3c6798fa8 <https://git.opendaylight.org/gerrit/#/q/3c6798fa8>`_
  : Make getOriginalCtx() give out an Optional
* `7c9b9c8e6 <https://git.opendaylight.org/gerrit/#/q/7c9b9c8e6>`_
  `BUG-6972 <https://bugs.opendaylight.org/show_bug.cgi?id=6972>`_
  : BUG-6972: inline copy operation modifications
* `177924d2a <https://git.opendaylight.org/gerrit/#/q/177924d2a>`_
  `BUG-6972 <https://bugs.opendaylight.org/show_bug.cgi?id=6972>`_
  : BUG-6972: Do not allow root StmtContext to be copied
* `28fc34ebe <https://git.opendaylight.org/gerrit/#/q/28fc34ebe>`_
  : Eliminate StmtContext.isRootContext()
* `ab5da769a <https://git.opendaylight.org/gerrit/#/q/ab5da769a>`_
  : Remove appendCopyHistory from public view
* `75402d418 <https://git.opendaylight.org/gerrit/#/q/75402d418>`_
  `BUG-7052 <https://bugs.opendaylight.org/show_bug.cgi?id=7052>`_
  : BUG-7052: Move qnameFromArgument to StmtContextUtils
* `79c91b337 <https://git.opendaylight.org/gerrit/#/q/79c91b337>`_
  : Do not tolerate invalid status arguments
* `82187ad56 <https://git.opendaylight.org/gerrit/#/q/82187ad56>`_
  `BUG-7052 <https://bugs.opendaylight.org/show_bug.cgi?id=7052>`_
  : BUG-7052: reduce StatementContextBase proliferation even more
* `0ac84541b <https://git.opendaylight.org/gerrit/#/q/0ac84541b>`_
  `BUG-7052 <https://bugs.opendaylight.org/show_bug.cgi?id=7052>`_
  : BUG-7052: Move RecursiveObjectLeader to util
* `beca28535 <https://git.opendaylight.org/gerrit/#/q/beca28535>`_
  `BUG-7052 <https://bugs.opendaylight.org/show_bug.cgi?id=7052>`_
  : BUG-7052: reduce StatementContextBase proliferation
* `b08219c63 <https://git.opendaylight.org/gerrit/#/q/b08219c63>`_
  : Enforce namespace listener compatibility
* `3eb67390c <https://git.opendaylight.org/gerrit/#/q/3eb67390c>`_
  : Refactor InferenceAction
* `ed48d7fc4 <https://git.opendaylight.org/gerrit/#/q/ed48d7fc4>`_
  : Move DeviateKind parsing
* `9cb460f49 <https://git.opendaylight.org/gerrit/#/q/9cb460f49>`_
  : ModifierImpl has no use for phase
* `d85b112f9 <https://git.opendaylight.org/gerrit/#/q/d85b112f9>`_
  : Cleanup effectiveStatements() access
* `e8134d5d1 <https://git.opendaylight.org/gerrit/#/q/e8134d5d1>`_
  : Do not duplicate findModuleByNamespaceAndRevision()
* `59d8d58a8 <https://git.opendaylight.org/gerrit/#/q/59d8d58a8>`_
  : Optimize ModuleDependencySort
* `2d529417d <https://git.opendaylight.org/gerrit/#/q/2d529417d>`_
  : Do not create temporary array for module sorting
* `7fd91ede7 <https://git.opendaylight.org/gerrit/#/q/7fd91ede7>`_
  : Intern low-cardinality statement arguments
* `f590351ee <https://git.opendaylight.org/gerrit/#/q/f590351ee>`_
  : Do not throw IllegalArgumentException
* `fa6156735 <https://git.opendaylight.org/gerrit/#/q/fa6156735>`_
  `BUG-8523 <https://bugs.opendaylight.org/show_bug.cgi?id=8523>`_
  : Bug 8523: Add support for parsing restconf:yang-data extension
* `e68ea7a73 <https://git.opendaylight.org/gerrit/#/q/e68ea7a73>`_
  `BUG-8597 <https://bugs.opendaylight.org/show_bug.cgi?id=8597>`_
  : Bug 8597 - Empty description and reference of ModuleImport in some cases
* `d3185b26d <https://git.opendaylight.org/gerrit/#/q/d3185b26d>`_
  `BUG-4640 <https://bugs.opendaylight.org/show_bug.cgi?id=4640>`_
  : Bug 4640: Change semantic-version to openconfig-version
* `ea4c6b36a <https://git.opendaylight.org/gerrit/#/q/ea4c6b36a>`_
  `BUG-7037 <https://bugs.opendaylight.org/show_bug.cgi?id=7037>`_
  : Bug 7037 - Improve mapping of YANG extensions
* `afe3c3170 <https://git.opendaylight.org/gerrit/#/q/afe3c3170>`_
  `BUG-8566 <https://bugs.opendaylight.org/show_bug.cgi?id=8566>`_
  : BUG 8566 Introduce a fallback for ChoiceSchemaNode lookup
* `00c086821 <https://git.opendaylight.org/gerrit/#/q/00c086821>`_
  : Add hook for interning raw argument
* `f4cfbeded <https://git.opendaylight.org/gerrit/#/q/f4cfbeded>`_
  `BUG-8307 <https://bugs.opendaylight.org/show_bug.cgi?id=8307>`_
  : Bug 8307: Add the option for activating deviation statements
* `241baf414 <https://git.opendaylight.org/gerrit/#/q/241baf414>`_
  : Do not use FileInputStream
* `c53db9088 <https://git.opendaylight.org/gerrit/#/q/c53db9088>`_
  `BUG-7844 <https://bugs.opendaylight.org/show_bug.cgi?id=7844>`_
  : Bug 7844 - Unable to create LeafRefContext for leafref


Carbon-SR2 Release Notes
------------------------

This page details changes and bug fixes between the Carbon Stability Release 1 (Carbon-SR1)
and the Carbon Stability Release 2 (Carbon-SR2) of OpenDaylight.

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
* sxp
* topoprocessing
* tsdr
* ttp
* usc

aaa
---
* `c1ea553 <https://git.opendaylight.org/gerrit/#/q/c1ea553>`_
  `BUG-9040 <https://bugs.opendaylight.org/show_bug.cgi?id=9040>`_
  : Bug 9040: avoid using dynamicAuthorization for cluster-admin operations
* `0c97134 <https://git.opendaylight.org/gerrit/#/q/0c97134>`_
  : Revert "Propagate exceptions from encrypt and decrypt services in aaa-encryption-service API."
* `def98d6 <https://git.opendaylight.org/gerrit/#/q/def98d6>`_
  : Propagate exceptions from encrypt and decrypt services in aaa-encryption-service API.
* `0ed8405 <https://git.opendaylight.org/gerrit/#/q/0ed8405>`_
  : Export aaa-cli-jar in the artifacts


bgpcep
------
* `d3c0a1e9d <https://git.opendaylight.org/gerrit/#/q/d3c0a1e9d>`_
  `BUG-8987 <https://bugs.opendaylight.org/show_bug.cgi?id=8987>`_
  : BUG-8987: Print Exception when Css registration fails
* `93dbe1f8a <https://git.opendaylight.org/gerrit/#/q/93dbe1f8a>`_
  `BUG-8942 <https://bugs.opendaylight.org/show_bug.cgi?id=8942>`_
  : Bug-8942: Fix DelegatedLspsCount
* `e8c321941 <https://git.opendaylight.org/gerrit/#/q/e8c321941>`_
  `BUG-8156 <https://bugs.opendaylight.org/show_bug.cgi?id=8156>`_
  : BUG-8156 : conflicting listener fix
* `32eccfc95 <https://git.opendaylight.org/gerrit/#/q/32eccfc95>`_
  `BUG-8156 <https://bugs.opendaylight.org/show_bug.cgi?id=8156>`_
  : BUG-8156 : fixed start of session manager
* `7d9607f75 <https://git.opendaylight.org/gerrit/#/q/7d9607f75>`_
  `BUG-8156 <https://bugs.opendaylight.org/show_bug.cgi?id=8156>`_
  : BUG-8156 : duplicate session up fixed
* `385b5f6b2 <https://git.opendaylight.org/gerrit/#/q/385b5f6b2>`_
  : Enforce no split packages
* `ad75debff <https://git.opendaylight.org/gerrit/#/q/ad75debff>`_
  `BUG-5876 <https://bugs.opendaylight.org/show_bug.cgi?id=5876>`_
  : BUG-8722: fix regression introduced by BUG-5876
* `bf16dcb17 <https://git.opendaylight.org/gerrit/#/q/bf16dcb17>`_
  `BUG-8667 <https://bugs.opendaylight.org/show_bug.cgi?id=8667>`_
  : Bug 8667 - PCEP: When peer closes got IO exception
* `91fe407a2 <https://git.opendaylight.org/gerrit/#/q/91fe407a2>`_
  `BUG-7027 <https://bugs.opendaylight.org/show_bug.cgi?id=7027>`_
  : BUG-7027 : Remove Data change counter CSS configuration


controller
----------
* `c67ff0496 <https://git.opendaylight.org/gerrit/#/q/c67ff0496>`_
  : Lower verbosity in SimpletxDomRead
* `3bcdbbb63 <https://git.opendaylight.org/gerrit/#/q/3bcdbbb63>`_
  `BUG-9165 <https://bugs.opendaylight.org/show_bug.cgi?id=9165>`_
  : Bug 9165: Log config subsystem readiness as INFO
* `3d650410b <https://git.opendaylight.org/gerrit/#/q/3d650410b>`_
  `BUG-8829 <https://bugs.opendaylight.org/show_bug.cgi?id=8829>`_
  : Bug 8829: Ignore error when initializing dsbenchmark
* `3b16b0d98 <https://git.opendaylight.org/gerrit/#/q/3b16b0d98>`_
  `BUG-9060 <https://bugs.opendaylight.org/show_bug.cgi?id=9060>`_
  : Bug 9060: Filter TracingBroker stack trace elements
* `39b7a263d <https://git.opendaylight.org/gerrit/#/q/39b7a263d>`_
  `BUG-8639 <https://bugs.opendaylight.org/show_bug.cgi?id=8639>`_
  : BUG-8639: always invalidate primary info cache
* `274b3b90e <https://git.opendaylight.org/gerrit/#/q/274b3b90e>`_
  `BUG-9054 <https://bugs.opendaylight.org/show_bug.cgi?id=9054>`_
  : BUG-9054: add a ClusterSingletonService integration test
* `0cb983d35 <https://git.opendaylight.org/gerrit/#/q/0cb983d35>`_
  `BUG-8858 <https://bugs.opendaylight.org/show_bug.cgi?id=8858>`_
  : BUG-8858: remove sleeps from test driver
* `9ea02d25f <https://git.opendaylight.org/gerrit/#/q/9ea02d25f>`_
  `BUG-9008 <https://bugs.opendaylight.org/show_bug.cgi?id=9008>`_
  : Bug 9008: Fix the error of the persisted journal data format
* `c18c8af26 <https://git.opendaylight.org/gerrit/#/q/c18c8af26>`_
  : Fix intermitent testFollowerResyncWith*LeaderRestart failure
* `334cb5c1f <https://git.opendaylight.org/gerrit/#/q/334cb5c1f>`_
  : Fix intermittent testOwnerChangesOnPeerAvailabilityChanges failure
* `71a4b6377 <https://git.opendaylight.org/gerrit/#/q/71a4b6377>`_
  `BUG-9054 <https://bugs.opendaylight.org/show_bug.cgi?id=9054>`_
  : BUG-9054: do not use BatchedModifications needlessly
* `892d03c37 <https://git.opendaylight.org/gerrit/#/q/892d03c37>`_
  `BUG-9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9060
9034>`_
  : Bug 9060: Karaf CLI command to print open transactions
* `36b7ca973 <https://git.opendaylight.org/gerrit/#/q/36b7ca973>`_
  `BUG-9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9060
9034>`_
  : Bug 9060: TracingBroker printOpenTransactions
* `d5606ac01 <https://git.opendaylight.org/gerrit/#/q/d5606ac01>`_
  `BUG-9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9060
9034>`_
  : Bug 9060: Remove un-used Instant getObjectCreated() from CloseTracked
* `d119e4376 <https://git.opendaylight.org/gerrit/#/q/d119e4376>`_
  `BUG-9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9060
9034>`_
  : Bug 9060: mdsal-trace tooling with getAllUnique() to find Tx leaks
* `c1579d0a1 <https://git.opendaylight.org/gerrit/#/q/c1579d0a1>`_
  `BUG-9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9060
9034>`_
  : Bug 9060: TracingBroker with transaction-debug-context-enabled
* `28739e1f6 <https://git.opendaylight.org/gerrit/#/q/28739e1f6>`_
  `BUG-9034
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9034
9034>`_
  : Bug 9034: TracingBroker with TracingReadOnlyTransaction
* `4a09cad99 <https://git.opendaylight.org/gerrit/#/q/4a09cad99>`_
  `BUG-9034
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9034
9034>`_
  : Bug 9034: TracingBroker with TracingTransactionChain
* `644bc122a <https://git.opendaylight.org/gerrit/#/q/644bc122a>`_
  `BUG-8885 <https://bugs.opendaylight.org/show_bug.cgi?id=8885>`_
  : Bug 8885: Fix DistributedShardedDOMDataTree initialization
* `b66d6180f <https://git.opendaylight.org/gerrit/#/q/b66d6180f>`_
  `BUG-9028 <https://bugs.opendaylight.org/show_bug.cgi?id=9028>`_
  : BUG-9028: make NonPersistentDataProvider schedule invocation
* `361c7f260 <https://git.opendaylight.org/gerrit/#/q/361c7f260>`_
  : Add debug to pinpoint lastApplied movement
* `d1de9c55e <https://git.opendaylight.org/gerrit/#/q/d1de9c55e>`_
  : Make testTransactionForwardedToLeaderAfterRetry purge-aware
* `3e86a2e5c <https://git.opendaylight.org/gerrit/#/q/3e86a2e5c>`_
  : Make ShardTest.testCommitWhenTransactionHasModifications() wait a bit
* `456e2facc <https://git.opendaylight.org/gerrit/#/q/456e2facc>`_
  `BUG-8941 <https://bugs.opendaylight.org/show_bug.cgi?id=8941>`_
  : BUG-8941: enqueue purges once ask-based transactions resolve
* `babc1ee03 <https://git.opendaylight.org/gerrit/#/q/babc1ee03>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: eliminate ProxyRegistration
* `606c917c9 <https://git.opendaylight.org/gerrit/#/q/606c917c9>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: refactor IdInts listeners
* `2ac32ea2c <https://git.opendaylight.org/gerrit/#/q/2ac32ea2c>`_
  `BUG-8898 <https://bugs.opendaylight.org/show_bug.cgi?id=8898>`_
  : BUG-8898: prioritize InternalCommand
* `53afb54d5 <https://git.opendaylight.org/gerrit/#/q/53afb54d5>`_
  : Switch from config-parent to bundle-parent in mdsal-trace
* `4367f456f <https://git.opendaylight.org/gerrit/#/q/4367f456f>`_
  `BUG-8898 <https://bugs.opendaylight.org/show_bug.cgi?id=8898>`_
  : BUG-8898: do not invoke timeouts directly
* `f79548400 <https://git.opendaylight.org/gerrit/#/q/f79548400>`_
  `BUG-7464 <https://bugs.opendaylight.org/show_bug.cgi?id=7464>`_
  : Revert "Revert "BUG-7464: use yangtools.triemap""
* `4bc5f74ae <https://git.opendaylight.org/gerrit/#/q/4bc5f74ae>`_
  `BUG-7464 <https://bugs.opendaylight.org/show_bug.cgi?id=7464>`_
  : Revert "BUG-7464: use yangtools.triemap"
* `874411923 <https://git.opendaylight.org/gerrit/#/q/874411923>`_
  `BUG-8494 <https://bugs.opendaylight.org/show_bug.cgi?id=8494>`_
  : Bug 8494: Separate writing and completion threads
* `5df3476d8 <https://git.opendaylight.org/gerrit/#/q/5df3476d8>`_
  : Explicitly load the real DataBroker with component-name
* `31283ab78 <https://git.opendaylight.org/gerrit/#/q/31283ab78>`_
  : fix config file for mdsal-trace and filtering mechanism
* `db65d6f15 <https://git.opendaylight.org/gerrit/#/q/db65d6f15>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: use DataTreeCandidateNodes.empty()
* `b83c7f5e5 <https://git.opendaylight.org/gerrit/#/q/b83c7f5e5>`_
  `BUG-8619 <https://bugs.opendaylight.org/show_bug.cgi?id=8619>`_
  : BUG-8619: do not touch forward path during purge enqueue
* `5e00c9fdb <https://git.opendaylight.org/gerrit/#/q/5e00c9fdb>`_
  `BUG-7464 <https://bugs.opendaylight.org/show_bug.cgi?id=7464>`_
  : BUG-7464: use yangtools.triemap
* `1529bb8bd <https://git.opendaylight.org/gerrit/#/q/1529bb8bd>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: refresh transaction access when isolated
* `55661ed80 <https://git.opendaylight.org/gerrit/#/q/55661ed80>`_
  `BUG-8792 <https://bugs.opendaylight.org/show_bug.cgi?id=8792>`_
  : BUG-8792: allow transactions to not time out after reconnect
* `7633a2a50 <https://git.opendaylight.org/gerrit/#/q/7633a2a50>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: record LeaderFrontendState time
* `12b4928ef <https://git.opendaylight.org/gerrit/#/q/12b4928ef>`_
  `BUG-8619 <https://bugs.opendaylight.org/show_bug.cgi?id=8619>`_
  : Bug 8619: Introduce inheritance of progress trackers
* `80e6514d5 <https://git.opendaylight.org/gerrit/#/q/80e6514d5>`_
  : ProgressTracker: Decrease delay due nearestAllowed
* `2be77b3bc <https://git.opendaylight.org/gerrit/#/q/2be77b3bc>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: fix test driver
* `40d27d44d <https://git.opendaylight.org/gerrit/#/q/40d27d44d>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: add pause/unpause mechanics for tell-based protocol
* `a15d7e439 <https://git.opendaylight.org/gerrit/#/q/a15d7e439>`_
  : Fix .1 version references
* `1734dccbd <https://git.opendaylight.org/gerrit/#/q/1734dccbd>`_
  : mdsaltrace utility for debugging
* `3a10a45e0 <https://git.opendaylight.org/gerrit/#/q/3a10a45e0>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: introduce RaftActor.unpauseLeader()
* `2783c9dff <https://git.opendaylight.org/gerrit/#/q/2783c9dff>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: eliminate SimpleShardDataTreeCohort subclasses
* `c525e5f25 <https://git.opendaylight.org/gerrit/#/q/c525e5f25>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: rework AbstractProxyTransaction.flushState()
* `70f287502 <https://git.opendaylight.org/gerrit/#/q/70f287502>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: reconnect connections more aggressively
* `0d5408c4b <https://git.opendaylight.org/gerrit/#/q/0d5408c4b>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: turn timeouts in READY state into canCommit failures
* `d2d9179e5 <https://git.opendaylight.org/gerrit/#/q/d2d9179e5>`_
  `BUG-8618 <https://bugs.opendaylight.org/show_bug.cgi?id=8618>`_
  : BUG-8618: improve logging
* `773ee5e88 <https://git.opendaylight.org/gerrit/#/q/773ee5e88>`_
  : Fix Verify/Preconditions string format


genius
------
* `1c695e1c <https://git.opendaylight.org/gerrit/#/q/1c695e1c>`_
  : Lower log level for non errors
* `47cc44e5 <https://git.opendaylight.org/gerrit/#/q/47cc44e5>`_
  `BUG-7380 <https://bugs.opendaylight.org/show_bug.cgi?id=7380>`_
  : bug 7380: Add getIfaceInfoFromConfigDataStore
* `be08b298 <https://git.opendaylight.org/gerrit/#/q/be08b298>`_
  : Genius Logging enhancements
* `02d9b884 <https://git.opendaylight.org/gerrit/#/q/02d9b884>`_
  : ITM mesh creation issue - teps added in succession.
* `a8e92f17 <https://git.opendaylight.org/gerrit/#/q/a8e92f17>`_
  : Cleanup
* `96500cfb <https://git.opendaylight.org/gerrit/#/q/96500cfb>`_
  : Replace *Index(" by *Index('
* `cd76d6e0 <https://git.opendaylight.org/gerrit/#/q/cd76d6e0>`_
  : Use INFO for logging null DPID
* `6fa10a25 <https://git.opendaylight.org/gerrit/#/q/6fa10a25>`_
  `BUG-9099 <https://bugs.opendaylight.org/show_bug.cgi?id=9099>`_
  : Bug 9099 - Suspected WriteOnlyTransaction leak in interfacemanager
* `cd9be0c6 <https://git.opendaylight.org/gerrit/#/q/cd9be0c6>`_
  : Remove start() method
* `db86a183 <https://git.opendaylight.org/gerrit/#/q/db86a183>`_
  `BUG-9034
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9034
9034>`_
  : Bug 9034: LockManager cancel() ReadWriteTransaction if it's not submit()
* `6bb41bb1 <https://git.opendaylight.org/gerrit/#/q/6bb41bb1>`_
  : Log enhancements for better debuggability
* `e9189b29 <https://git.opendaylight.org/gerrit/#/q/e9189b29>`_
  : Changing the default value of Interfacemanager statistics polling interval to 15 Minutes
* `9cfde260 <https://git.opendaylight.org/gerrit/#/q/9cfde260>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `cf06e143 <https://git.opendaylight.org/gerrit/#/q/cf06e143>`_
  `BUG-7599 <https://bugs.opendaylight.org/show_bug.cgi?id=7599>`_
  : Bug 7599 -hwvtep ucast mac consumption improvement
* `cccc6c2d <https://git.opendaylight.org/gerrit/#/q/cccc6c2d>`_
  `BUG-8859 <https://bugs.opendaylight.org/show_bug.cgi?id=8859>`_
  : Bug 8859 : Table 220 programmed with wrong service-index
* `847c03af <https://git.opendaylight.org/gerrit/#/q/847c03af>`_
  : Fix Service-binding flowRef
* `cff98ccf <https://git.opendaylight.org/gerrit/#/q/cff98ccf>`_
  : @Ignore flaky newl2vlanInterfaceTests InterfaceManagerConfigurationTest
* `df7d10ca <https://git.opendaylight.org/gerrit/#/q/df7d10ca>`_
  : Make DJC to be more concurrent and fixing signal issue b/w enqueue jobs
* `143d6816 <https://git.opendaylight.org/gerrit/#/q/143d6816>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `efd8a1d0 <https://git.opendaylight.org/gerrit/#/q/efd8a1d0>`_
  `BUG-8876 <https://bugs.opendaylight.org/show_bug.cgi?id=8876>`_
  : BUG 8876 - Fix to remove ELAN interface flows when external network deleted
* `81510d54 <https://git.opendaylight.org/gerrit/#/q/81510d54>`_
  : Cleanup
* `1ca0f40f <https://git.opendaylight.org/gerrit/#/q/1ca0f40f>`_
  : Add private constructor to this utility class
* `c69a7956 <https://git.opendaylight.org/gerrit/#/q/c69a7956>`_
  : IdManager: Use lock only when required
* `0a7a33d7 <https://git.opendaylight.org/gerrit/#/q/0a7a33d7>`_
  : Cleanup
* `b2e6235e <https://git.opendaylight.org/gerrit/#/q/b2e6235e>`_
  : Fix IfmClusterUtils logs
* `e6a9ca0b <https://git.opendaylight.org/gerrit/#/q/e6a9ca0b>`_
  : Enqueued Job not getting cleaned up in some cases
* `afd2b46f <https://git.opendaylight.org/gerrit/#/q/afd2b46f>`_
  `BUG-8476 <https://bugs.opendaylight.org/show_bug.cgi?id=8476>`_
  : Bug 8476 Add support for logical switch replication mode
* `49f2167e <https://git.opendaylight.org/gerrit/#/q/49f2167e>`_
  : Capture flow addition to debug log
* `8e8cc016 <https://git.opendaylight.org/gerrit/#/q/8e8cc016>`_
  : hwvtep transaction batching separation across shards
* `5c21c1e8 <https://git.opendaylight.org/gerrit/#/q/5c21c1e8>`_
  : Exception in service-binding logic when a neutron port is deleted
* `6822bc82 <https://git.opendaylight.org/gerrit/#/q/6822bc82>`_
  : Guard some TRACE logs in DJC
* `083980f3 <https://git.opendaylight.org/gerrit/#/q/083980f3>`_
  : Removing unnecessary TRACE log in service-binding
* `277a7b2b <https://git.opendaylight.org/gerrit/#/q/277a7b2b>`_
  `BUG-8800 <https://bugs.opendaylight.org/show_bug.cgi?id=8800>`_
  : Bug 8800: Prevent xtendbeans NPE warn.log in InstructionApplyActions
* `bb14bf11 <https://git.opendaylight.org/gerrit/#/q/bb14bf11>`_
  : Making ActionConverterUtil log to DEBUG


groupbasedpolicy
----------------
* `c682e508 <https://git.opendaylight.org/gerrit/#/q/c682e508>`_
  : Fix AddressEndpointWithLocation issues
* `f5d5698b <https://git.opendaylight.org/gerrit/#/q/f5d5698b>`_
  : Code improvements for FDS scenarios
* `d21ad1b8 <https://git.opendaylight.org/gerrit/#/q/d21ad1b8>`_
  `BUG-8900 <https://bugs.opendaylight.org/show_bug.cgi?id=8900>`_
  : Bug 8900 - fixing ACL updates
* `cf962d0d <https://git.opendaylight.org/gerrit/#/q/cf962d0d>`_
  : Policy exclusions & parallel netconf transactions


honeycomb/vbd
-------------
* `e74240b <https://git.opendaylight.org/gerrit/#/q/e74240b>`_
  `BUG-9009 <https://bugs.opendaylight.org/show_bug.cgi?id=9009>`_
  : Bug 9009: Add cache mechanism for Tenant interface IP
* `1ebf97b <https://git.opendaylight.org/gerrit/#/q/1ebf97b>`_
  : implementing parallel netconf transactions


infrautils
----------
* `82d4449 <https://git.opendaylight.org/gerrit/#/q/82d4449>`_
  : Add bind2ToInstance to AbstractGuiceJsr250Module


integration/distribution
------------------------
* `d38a8f5 <https://git.opendaylight.org/gerrit/#/q/d38a8f5>`_
  : Remove karaf (not distribution-karaf)
* `8e1089e <https://git.opendaylight.org/gerrit/#/q/8e1089e>`_
  : Ignore extracted distros in Coala linting
* `0576951 <https://git.opendaylight.org/gerrit/#/q/0576951>`_
  : Improve Coala linting, add section stubs/ignores
* `bf50225 <https://git.opendaylight.org/gerrit/#/q/bf50225>`_
  `BUG-9060 <https://bugs.opendaylight.org/show_bug.cgi?id=9060>`_
  : Bug 9060: Add odl-mdsal-trace


lispflowmapping
---------------
* `bc9d18d0 <https://git.opendaylight.org/gerrit/#/q/bc9d18d0>`_
  `BUG-8746 <https://bugs.opendaylight.org/show_bug.cgi?id=8746>`_
  : Bug 8746: Multi-threading improvements
* `a54b02e6 <https://git.opendaylight.org/gerrit/#/q/a54b02e6>`_
  `BUG-8469 <https://bugs.opendaylight.org/show_bug.cgi?id=8469>`_
  : Bug 8469: Account for losing prefix length in Source EID
* `46e3e487 <https://git.opendaylight.org/gerrit/#/q/46e3e487>`_
  `BUG-8764 <https://bugs.opendaylight.org/show_bug.cgi?id=8764>`_
  : Bug 8764: Fix handling of old negative
* `37f612ce <https://git.opendaylight.org/gerrit/#/q/37f612ce>`_
  : Make negative mapping TTL configurable
* `7b132851 <https://git.opendaylight.org/gerrit/#/q/7b132851>`_
  : Return negative mapping with 0 TTL for deletion


mdsal
-----
* `ae88651f1 <https://git.opendaylight.org/gerrit/#/q/ae88651f1>`_
  `BUG-9145 <https://bugs.opendaylight.org/show_bug.cgi?id=9145>`_
  : BUG-9145: rework singleton service group state tracking
* `34745e0aa <https://git.opendaylight.org/gerrit/#/q/34745e0aa>`_
  : Fix use of deprecated Futures.addCallback()
* `c26292234 <https://git.opendaylight.org/gerrit/#/q/c26292234>`_
  `BUG-8858 <https://bugs.opendaylight.org/show_bug.cgi?id=8858>`_
  : BUG-8858: add integration test suite
* `cb1f6ccf2 <https://git.opendaylight.org/gerrit/#/q/cb1f6ccf2>`_
  `BUG-8858 <https://bugs.opendaylight.org/show_bug.cgi?id=8858>`_
  : BUG-8858: rework singleton group locking
* `e84146b5e <https://git.opendaylight.org/gerrit/#/q/e84146b5e>`_
  `BUG-8910
8911 <https://bugs.opendaylight.org/show_bug.cgi?id=8910
8911>`_
  : Bug 8910 - Binding v2 generator exception: Failed to find leafref target
* `2befd716a <https://git.opendaylight.org/gerrit/#/q/2befd716a>`_
  : Binding generator v2 - fix units field name
* `ce0ef9dae <https://git.opendaylight.org/gerrit/#/q/ce0ef9dae>`_
  : Binding generator v2 - fix choice
* `ec6debe00 <https://git.opendaylight.org/gerrit/#/q/ec6debe00>`_
  : Binding generator v2 - uses statement - uses inner type
* `571836239 <https://git.opendaylight.org/gerrit/#/q/571836239>`_
  : Binding generator v2 - uses statement - uses grouping choice"
* `fb411f70c <https://git.opendaylight.org/gerrit/#/q/fb411f70c>`_
  : Binding generator v2 - fix getter in builder
* `2131dc162 <https://git.opendaylight.org/gerrit/#/q/2131dc162>`_
  : Binding generator v2 - fix getter method name
* `a0d2d0a7a <https://git.opendaylight.org/gerrit/#/q/a0d2d0a7a>`_
  : Binding generator v2 - uses statement - uses inner type #2
* `5e3f23bf8 <https://git.opendaylight.org/gerrit/#/q/5e3f23bf8>`_
  : Binding generator v2 - uses statement - uses inner type #1
* `5a8a3fd7e <https://git.opendaylight.org/gerrit/#/q/5a8a3fd7e>`_
  : Binding generator v2 - uses statement - uses of list
* `318b05512 <https://git.opendaylight.org/gerrit/#/q/318b05512>`_
  : Binding generator v2 - fix leaflist return type
* `94180b861 <https://git.opendaylight.org/gerrit/#/q/94180b861>`_
  : Binding generator v2 - fix choice's parent
* `29446c1a3 <https://git.opendaylight.org/gerrit/#/q/29446c1a3>`_
  : Binding generator v2 - fix double dot package name
* `735201caf <https://git.opendaylight.org/gerrit/#/q/735201caf>`_
  : Binding generator v2 - fix submodule class name
* `7038c5df8 <https://git.opendaylight.org/gerrit/#/q/7038c5df8>`_
  : Binding generator v2 - fix format javadoc text
* `caed33579 <https://git.opendaylight.org/gerrit/#/q/caed33579>`_
  : Binding generator v2 - uses implement - fix finding target grouping
* `74f818bbb <https://git.opendaylight.org/gerrit/#/q/74f818bbb>`_
  : Binding generator v2 - uses statement - uses leafref #2
* `e214685f6 <https://git.opendaylight.org/gerrit/#/q/e214685f6>`_
  : Binding generator v2 - uses statement - uses leafref #1
* `5a2d5d69c <https://git.opendaylight.org/gerrit/#/q/5a2d5d69c>`_
  : Binding generator v2 - fix InstanceIdentifier package path in classTemplate
* `eb050ae2f <https://git.opendaylight.org/gerrit/#/q/eb050ae2f>`_
  : Binding generator v2 - uses statement - uses of cases
* `c2f5a3ab7 <https://git.opendaylight.org/gerrit/#/q/c2f5a3ab7>`_
  : Binding generator v2 - fix action #3
* `bf39a1f51 <https://git.opendaylight.org/gerrit/#/q/bf39a1f51>`_
  : Binding generator v2 - fix action #2
* `d4b8df977 <https://git.opendaylight.org/gerrit/#/q/d4b8df977>`_
  : Binding generator v2 - fix action #1
* `67b940dfb <https://git.opendaylight.org/gerrit/#/q/67b940dfb>`_
  : JavaIdentifierNormalizer ThreadSafe/Memory leak fix
* `5281fa941 <https://git.opendaylight.org/gerrit/#/q/5281fa941>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: switch to using DOMDataTreeListener-based APIs
* `f09e24084 <https://git.opendaylight.org/gerrit/#/q/f09e24084>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: Add ListenableDOMDataTreeShard
* `02b122215 <https://git.opendaylight.org/gerrit/#/q/02b122215>`_
  : Cleanup ShardRootModificationContext
* `b7c1f342d <https://git.opendaylight.org/gerrit/#/q/b7c1f342d>`_
  `BUG-8449 <https://bugs.opendaylight.org/show_bug.cgi?id=8449>`_
  : Bug 8449 - BindingToNormalizedNodeCodec fails to deserialize union of leafrefs
* `b2aa3f4c1 <https://git.opendaylight.org/gerrit/#/q/b2aa3f4c1>`_
  : Fix a few warnings
* `20d2832ce <https://git.opendaylight.org/gerrit/#/q/20d2832ce>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: use DataTreeCandidateNodes.empty()
* `55490ce1e <https://git.opendaylight.org/gerrit/#/q/55490ce1e>`_
  : Optimize transaction collection
* `a7a06d4bb <https://git.opendaylight.org/gerrit/#/q/a7a06d4bb>`_
  : Do not obfuscate constant 0/1
* `afb9c3563 <https://git.opendaylight.org/gerrit/#/q/afb9c3563>`_
  : Optimize JavaIdentifierNormalizer reserved words lookup
* `e35ab396d <https://git.opendaylight.org/gerrit/#/q/e35ab396d>`_
  : Binding2-runtime JUnit code coverage increase
* `9f590ba6f <https://git.opendaylight.org/gerrit/#/q/9f590ba6f>`_
  : Binding generator v2 - fix union getter name in camel-case
* `4a9e8f988 <https://git.opendaylight.org/gerrit/#/q/4a9e8f988>`_
  : Binding generator v2 - code style & cleanup
* `191a88cfa <https://git.opendaylight.org/gerrit/#/q/191a88cfa>`_
  : Binding generator v2 - augment statement #4
* `94b1de705 <https://git.opendaylight.org/gerrit/#/q/94b1de705>`_
  : Binding generator v2 - augment statement #3
* `ecd068d67 <https://git.opendaylight.org/gerrit/#/q/ecd068d67>`_
  : Optimize JavaIdentifierNormalizer.normalizeClassIdentifier()
* `8a87cb7e2 <https://git.opendaylight.org/gerrit/#/q/8a87cb7e2>`_
  : Do not use temporary string to extract last character
* `61ad1fa17 <https://git.opendaylight.org/gerrit/#/q/61ad1fa17>`_
  : Optimize JavaIdentifierNormalizer.normalizeClassIdentifier()
* `585fc0b56 <https://git.opendaylight.org/gerrit/#/q/585fc0b56>`_
  : Optimize fixCasesByJavaType for packages
* `e1a008965 <https://git.opendaylight.org/gerrit/#/q/e1a008965>`_
  : Optimize convertIdentifierEnumValue()
* `1446c18fb <https://git.opendaylight.org/gerrit/#/q/1446c18fb>`_
  : Optimize JavaIdentifierNormalizer.fixCases()
* `78f471fa2 <https://git.opendaylight.org/gerrit/#/q/78f471fa2>`_
  : Binding generator v2 - uses statement - uses augment
* `17cf88e77 <https://git.opendaylight.org/gerrit/#/q/17cf88e77>`_
  : Binding generator v2 - augment statement #2
* `eac685287 <https://git.opendaylight.org/gerrit/#/q/eac685287>`_
  : Binding generator v2 - augment statement #1
* `e20f0f558 <https://git.opendaylight.org/gerrit/#/q/e20f0f558>`_
  : Binding generator v2 - uses statement - uses of list
* `a26de047d <https://git.opendaylight.org/gerrit/#/q/a26de047d>`_
  : Binding generator v2 - uses statement - uses of module
* `398f49eb4 <https://git.opendaylight.org/gerrit/#/q/398f49eb4>`_
  : Binding generator v2 - uses statement - support choice
* `0f0884af9 <https://git.opendaylight.org/gerrit/#/q/0f0884af9>`_
  : Binding generator v2 - uses statement - uses of rpc & action
* `b469d95c2 <https://git.opendaylight.org/gerrit/#/q/b469d95c2>`_
  : Binding generator v2 - uses statement - restore getter
* `3aa24f4ac <https://git.opendaylight.org/gerrit/#/q/3aa24f4ac>`_
  : Binding generator v2 - Type reference fix
* `4178b9af2 <https://git.opendaylight.org/gerrit/#/q/4178b9af2>`_
  : Binding generator v2 - Identity fix
* `5428e290f <https://git.opendaylight.org/gerrit/#/q/5428e290f>`_
  : Optimize JavaIdentifierNormalizer.convertFirst()
* `692617fbb <https://git.opendaylight.org/gerrit/#/q/692617fbb>`_
  : Binding generator v2 - uses statement - support list
* `8fe6ecf50 <https://git.opendaylight.org/gerrit/#/q/8fe6ecf50>`_
  : Binding generator v2 - uses statement - resolve uses node
* `a02749e07 <https://git.opendaylight.org/gerrit/#/q/a02749e07>`_
  : Binding generator v2 - uses statement - uses of notification
* `518f2b46f <https://git.opendaylight.org/gerrit/#/q/518f2b46f>`_
  : Optimize JavaIdentifierNormalizer.normalizePartialPackageName()
* `29219aaad <https://git.opendaylight.org/gerrit/#/q/29219aaad>`_
  : Optimize JavaIdentifierNormalizer.normalizeFullPackageName()
* `c10229680 <https://git.opendaylight.org/gerrit/#/q/c10229680>`_
  : Optimize JavaIdentifierNormalizer.existNext()
* `e1b0b507f <https://git.opendaylight.org/gerrit/#/q/e1b0b507f>`_
  : Binding generator v2 - uses statement - uses implements
* `76ec951b6 <https://git.opendaylight.org/gerrit/#/q/76ec951b6>`_
  : Binding2-dom-adapter JUnit code coverage increase
* `f5808d2b8 <https://git.opendaylight.org/gerrit/#/q/f5808d2b8>`_
  : Binding generator v2 - fix case builder to dto
* `f88d9a13b <https://git.opendaylight.org/gerrit/#/q/f88d9a13b>`_
  : Cleanup JavaIdentifierNormalizer
* `3deb23905 <https://git.opendaylight.org/gerrit/#/q/3deb23905>`_
  : Binding v2 - remove checked future


netconf
-------
* `99561178c <https://git.opendaylight.org/gerrit/#/q/99561178c>`_
  `BUG-9132 <https://bugs.opendaylight.org/show_bug.cgi?id=9132>`_
  : BUG-9132: don't provide a value for restconf/streams/events
* `f4b545aa2 <https://git.opendaylight.org/gerrit/#/q/f4b545aa2>`_
  : Minor cleanup of blueprint config
* `d4a44ff4b <https://git.opendaylight.org/gerrit/#/q/d4a44ff4b>`_
  `BUG-8989 <https://bugs.opendaylight.org/show_bug.cgi?id=8989>`_
  : Bug 8989 - Create just one DS for each test-tool's simulated netconf device
* `f2becfbe3 <https://git.opendaylight.org/gerrit/#/q/f2becfbe3>`_
  `BUG-8977 <https://bugs.opendaylight.org/show_bug.cgi?id=8977>`_
  : Bug 8977 - Failed on binary key type
* `36f684fc9 <https://git.opendaylight.org/gerrit/#/q/36f684fc9>`_
  : RPC for netconf node addition. Supports encrypt option for password encryption.
* `0a347d8cd <https://git.opendaylight.org/gerrit/#/q/0a347d8cd>`_
  : Enable public key based authentication for netconf
* `6de81fd1b <https://git.opendaylight.org/gerrit/#/q/6de81fd1b>`_
  : Do not pull in yang-maven-plugin
* `cdc6e07df <https://git.opendaylight.org/gerrit/#/q/cdc6e07df>`_
  `BUG-8824 <https://bugs.opendaylight.org/show_bug.cgi?id=8824>`_
  : Bug 8824 - NETCONF request hangs when rpc-rply has invalid xml
* `6053c0951 <https://git.opendaylight.org/gerrit/#/q/6053c0951>`_
  `BUG-8832 <https://bugs.opendaylight.org/show_bug.cgi?id=8832>`_
  : Bug 8832 - rpc-error in keepalive rpc-reply shouldn't bounce the session


netvirt
-------
* `2a54b326c <https://git.opendaylight.org/gerrit/#/q/2a54b326c>`_
  `BUG-8976 <https://bugs.opendaylight.org/show_bug.cgi?id=8976>`_
  : Bug 8976 - Upstreaming fixes to master
* `923bbe7a8 <https://git.opendaylight.org/gerrit/#/q/923bbe7a8>`_
  `BUG-8964 <https://bugs.opendaylight.org/show_bug.cgi?id=8964>`_
  : Bug 8964 - Neutron test neutron.tests.tempest.scenario.test_floatingip.FloatingIpSameNetwork.test_east_west fails
* `95fc2656d <https://git.opendaylight.org/gerrit/#/q/95fc2656d>`_
  : Test SNAT mostSignificantBit()
* `e1779ca40 <https://git.opendaylight.org/gerrit/#/q/e1779ca40>`_
  `BUG-9226 <https://bugs.opendaylight.org/show_bug.cgi?id=9226>`_
  : Bug 9226: VPN Traffic fails after VM Migration
* `cf2b4bfbc <https://git.opendaylight.org/gerrit/#/q/cf2b4bfbc>`_
  `BUG-9237 <https://bugs.opendaylight.org/show_bug.cgi?id=9237>`_
  : Bug 9237 - NPE: InternalToExternalPortMapKey
* `a9a9e25fb <https://git.opendaylight.org/gerrit/#/q/a9a9e25fb>`_
  `BUG-9180 <https://bugs.opendaylight.org/show_bug.cgi?id=9180>`_
  : Bug 9180: Conflicting modification Exception from NAT Module
* `f7172d87f <https://git.opendaylight.org/gerrit/#/q/f7172d87f>`_
  `BUG-7596 <https://bugs.opendaylight.org/show_bug.cgi?id=7596>`_
  : BUG 7596 - Update to handle change in Neutron Network external attribute
* `978960583 <https://git.opendaylight.org/gerrit/#/q/978960583>`_
  : Remove unneeded mdsal and yangtools artifacts
* `64b80caf1 <https://git.opendaylight.org/gerrit/#/q/64b80caf1>`_
  : Remove unneeded pom version values
* `4edc3586a <https://git.opendaylight.org/gerrit/#/q/4edc3586a>`_
  : Undo incorrect code changes made during merge conflict.
* `d68b40a55 <https://git.opendaylight.org/gerrit/#/q/d68b40a55>`_
  `BUG-9066 <https://bugs.opendaylight.org/show_bug.cgi?id=9066>`_
  : Bug 9066:Use Single Transaction for DNAT Flow Install and Remove
* `f85a8d949 <https://git.opendaylight.org/gerrit/#/q/f85a8d949>`_
  `BUG-9077 <https://bugs.opendaylight.org/show_bug.cgi?id=9077>`_
  : Bug 9077: Fix of issue that the existing NW communication failure when new NW is created
* `e51a9dec4 <https://git.opendaylight.org/gerrit/#/q/e51a9dec4>`_
  : Lower log level for non errors
* `11c3ddac3 <https://git.opendaylight.org/gerrit/#/q/11c3ddac3>`_
  `BUG-9209 <https://bugs.opendaylight.org/show_bug.cgi?id=9209>`_
  : Bug 9209: PNF learned on external networks to skip local FIB Processing
* `35e6b1d2c <https://git.opendaylight.org/gerrit/#/q/35e6b1d2c>`_
  : Renamed acl-impl.rst to acl-reflection-on-existing-traffic.rst
* `c804c1331 <https://git.opendaylight.org/gerrit/#/q/c804c1331>`_
  : Remove explicit default super-constructor calls
* `95d7b1a24 <https://git.opendaylight.org/gerrit/#/q/95d7b1a24>`_
  `BUG-9190 <https://bugs.opendaylight.org/show_bug.cgi?id=9190>`_
  : bug-9190: NullPointerException at getIsExternal
* `1d0e2af74 <https://git.opendaylight.org/gerrit/#/q/1d0e2af74>`_
  : Lower log level for non errors
* `1c0b27923 <https://git.opendaylight.org/gerrit/#/q/1c0b27923>`_
  : Bug9091 : Removing uncessary MD-SAL Read Operation in NAT
* `4116fbcee <https://git.opendaylight.org/gerrit/#/q/4116fbcee>`_
  : bgpmanager: change API of bgpmanager to add VRF IPv4 or IPv6
* `16c55ed71 <https://git.opendaylight.org/gerrit/#/q/16c55ed71>`_
  : neutronvpn: create ipv4 or ipv6 context
* `d9945bb0f <https://git.opendaylight.org/gerrit/#/q/d9945bb0f>`_
  : Dualstack support for L3VPN - single router Dual stack
* `b2d602081 <https://git.opendaylight.org/gerrit/#/q/b2d602081>`_
  `BUG-8953 <https://bugs.opendaylight.org/show_bug.cgi?id=8953>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin
* `a90e9969d <https://git.opendaylight.org/gerrit/#/q/a90e9969d>`_
  : lower log levels for non-errors
* `f17c140b2 <https://git.opendaylight.org/gerrit/#/q/f17c140b2>`_
  : ClearBgpCli reads from socket to send/receive from bgpd (some previous commit modifed to read from session parameters)
* `325f4817b <https://git.opendaylight.org/gerrit/#/q/325f4817b>`_
  `BUG-9196 <https://bugs.opendaylight.org/show_bug.cgi?id=9196>`_
  : Bug 9196 - Maxpath value should be between 1 to 64 in BGP multipath
* `be22588cc <https://git.opendaylight.org/gerrit/#/q/be22588cc>`_
  `BUG-8963 <https://bugs.opendaylight.org/show_bug.cgi?id=8963>`_
  : Bug 8963 - Option to configure EVPN address family
* `ed2fe656f <https://git.opendaylight.org/gerrit/#/q/ed2fe656f>`_
  : bgpmanager thrift upgrade to 0.9.3
* `d7d4b5b30 <https://git.opendaylight.org/gerrit/#/q/d7d4b5b30>`_
  `BUG-8930 <https://bugs.opendaylight.org/show_bug.cgi?id=8930>`_
  : BUG 8930 - delete Op VPN interface when deleting external network
* `e1015de35 <https://git.opendaylight.org/gerrit/#/q/e1015de35>`_
  : elanmanager: clean up Futures collections
* `a0087dd51 <https://git.opendaylight.org/gerrit/#/q/a0087dd51>`_
  `BUG-9193 <https://bugs.opendaylight.org/show_bug.cgi?id=9193>`_
  : Bug 9193 - In conntrack SNAT , flows are programmed twice on a router g/w set.
* `ad94beb55 <https://git.opendaylight.org/gerrit/#/q/ad94beb55>`_
  : Lower log levels for non error's
* `a64737e36 <https://git.opendaylight.org/gerrit/#/q/a64737e36>`_
  : IfMgr clean-up
* `6a1dea55d <https://git.opendaylight.org/gerrit/#/q/6a1dea55d>`_
  : Restrict NeutronvpnUtils.read
* `8a5c4d1ea <https://git.opendaylight.org/gerrit/#/q/8a5c4d1ea>`_
  `BUG-8969 <https://bugs.opendaylight.org/show_bug.cgi?id=8969>`_
  : BUG 8969 - Fix Exeption when clearing external router GW
* `6e1747bf5 <https://git.opendaylight.org/gerrit/#/q/6e1747bf5>`_
  `BUG-9190 <https://bugs.opendaylight.org/show_bug.cgi?id=9190>`_
  : bug-9190: NullPointerException at getIsExternal
* `04441af15 <https://git.opendaylight.org/gerrit/#/q/04441af15>`_
  `BUG-9105 <https://bugs.opendaylight.org/show_bug.cgi?id=9105>`_
  : Bug 9105: close removeElanInterface transaction
* `02d4647a7 <https://git.opendaylight.org/gerrit/#/q/02d4647a7>`_
  : ElanUtils clean-up: ElanL2GatewayUtils
* `c9a42e739 <https://git.opendaylight.org/gerrit/#/q/c9a42e739>`_
  : ElanUtils clean-up: L2GatewayConnectionUtils
* `861f94206 <https://git.opendaylight.org/gerrit/#/q/861f94206>`_
  : ElanUtils clean-up: remove unnecessary references
* `a16c5e763 <https://git.opendaylight.org/gerrit/#/q/a16c5e763>`_
  : ElanUtils clean-up: ElanL2Gateway{Multicast,}Utils
* `be8fca0fe <https://git.opendaylight.org/gerrit/#/q/be8fca0fe>`_
  : ElanUtils clean-up: more ElanL2GatewayMulticastUtils
* `1b467f0ae <https://git.opendaylight.org/gerrit/#/q/1b467f0ae>`_
  : ElanUtils clean-up: ElanL2GatewayMulticastUtils
* `6cee45837 <https://git.opendaylight.org/gerrit/#/q/6cee45837>`_
  : ElanUtils clean-up: make read() static
* `a7bd956f9 <https://git.opendaylight.org/gerrit/#/q/a7bd956f9>`_
  `BUG-8998 <https://bugs.opendaylight.org/show_bug.cgi?id=8998>`_
  : Bug 8998 - L2GW:Vlan bindings missing on reboot
* `d91afa740 <https://git.opendaylight.org/gerrit/#/q/d91afa740>`_
  : aclservice: clean up Futures collections
* `f5e469602 <https://git.opendaylight.org/gerrit/#/q/f5e469602>`_
  : dhcpservice: clean up Futures collections
* `9b5727e80 <https://git.opendaylight.org/gerrit/#/q/9b5727e80>`_
  `BUG-8978 <https://bugs.opendaylight.org/show_bug.cgi?id=8978>`_
  : Bug 8978 - Network deletion issue.
* `fda3885c7 <https://git.opendaylight.org/gerrit/#/q/fda3885c7>`_
  : Remove un-used SynchronousEachOperationNewWriteTransaction
* `d71df4d4e <https://git.opendaylight.org/gerrit/#/q/d71df4d4e>`_
  : cleanup sync
* `88809296e <https://git.opendaylight.org/gerrit/#/q/88809296e>`_
  `BUG-9018 <https://bugs.opendaylight.org/show_bug.cgi?id=9018>`_
  : bug 9018 l2gw designated dhcp fix
* `16dd4e6fc <https://git.opendaylight.org/gerrit/#/q/16dd4e6fc>`_
  `BUG-8973 <https://bugs.opendaylight.org/show_bug.cgi?id=8973>`_
  : Bug 8973 : DHCP fixes
* `b28c5d7d0 <https://git.opendaylight.org/gerrit/#/q/b28c5d7d0>`_
  : Fix cloud-servicechain YANG
* `4c1747493 <https://git.opendaylight.org/gerrit/#/q/4c1747493>`_
  `BUG-9014 <https://bugs.opendaylight.org/show_bug.cgi?id=9014>`_
  : BUG 9014 : Remove unnecessary log statements in VPN Engine
* `5ff7c1f41 <https://git.opendaylight.org/gerrit/#/q/5ff7c1f41>`_
  : Remove aggregator from artifactId
* `a17284be8 <https://git.opendaylight.org/gerrit/#/q/a17284be8>`_
  : rm it module
* `573530cec <https://git.opendaylight.org/gerrit/#/q/573530cec>`_
  `BUG-8965 <https://bugs.opendaylight.org/show_bug.cgi?id=8965>`_
  : Bug 8965 - L2gw update is not suported
* `58e9af3b3 <https://git.opendaylight.org/gerrit/#/q/58e9af3b3>`_
  `BUG-7380 <https://bugs.opendaylight.org/show_bug.cgi?id=7380>`_
  : Bug 7380: service-binding exceptions from ACL
* `f85a2e7ca <https://git.opendaylight.org/gerrit/#/q/f85a2e7ca>`_
  `BUG-8953 <https://bugs.opendaylight.org/show_bug.cgi?id=8953>`_
  : Bug 8953: Fix exceptions raised due to PNF confused with FIP
* `fa4669d5a <https://git.opendaylight.org/gerrit/#/q/fa4669d5a>`_
  `BUG-9026 <https://bugs.opendaylight.org/show_bug.cgi?id=9026>`_
  : Bug 9026: ACL issue in handling port-create
* `bd66523d5 <https://git.opendaylight.org/gerrit/#/q/bd66523d5>`_
  `BUG-8953 <https://bugs.opendaylight.org/show_bug.cgi?id=8953>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin.
* `e484f5ad0 <https://git.opendaylight.org/gerrit/#/q/e484f5ad0>`_
  : Remove learn mode from aclserivce.
* `fbecdd444 <https://git.opendaylight.org/gerrit/#/q/fbecdd444>`_
  : Fix exception handling in neutronvpn shell
* `8a716d54b <https://git.opendaylight.org/gerrit/#/q/8a716d54b>`_
  `BUG-8860 <https://bugs.opendaylight.org/show_bug.cgi?id=8860>`_
  : Bug 8860 : Populate elantag at time of elanInstance creation
* `1a4aeb7fd <https://git.opendaylight.org/gerrit/#/q/1a4aeb7fd>`_
  : Remove transparent mode from aclservice.
* `09ad109b2 <https://git.opendaylight.org/gerrit/#/q/09ad109b2>`_
  `BUG-8893 <https://bugs.opendaylight.org/show_bug.cgi?id=8893>`_
  : BUG-8893 patch port mysteriously deleted
* `8f7fdba99 <https://git.opendaylight.org/gerrit/#/q/8f7fdba99>`_
  `BUG-8964 <https://bugs.opendaylight.org/show_bug.cgi?id=8964>`_
  : Bug 8964 - Neutron test neutron.tests.tempest.scenario.test_floatingip.FloatingIpSameNetwork.test_east_west fails
* `010d05782 <https://git.opendaylight.org/gerrit/#/q/010d05782>`_
  : Spec for Acl change reflection on existing communication
* `77d2276b3 <https://git.opendaylight.org/gerrit/#/q/77d2276b3>`_
  : Remove deprecated CheckedFuture
* `61024528a <https://git.opendaylight.org/gerrit/#/q/61024528a>`_
  : Remove unused references to DataChangeListener
* `b991f2af2 <https://git.opendaylight.org/gerrit/#/q/b991f2af2>`_
  : Bug7380:CSIT FIP ping is getting failed for Ext Flat/VLAN Network
* `5bbfc3cf5 <https://git.opendaylight.org/gerrit/#/q/5bbfc3cf5>`_
  `BUG-9136
9136 <https://bugs.opendaylight.org/show_bug.cgi?id=9136
9136>`_
  : Bug 9136 - Suspected ReadOnlyTransaction leak in QosNeutronUtils
* `e41f59b33 <https://git.opendaylight.org/gerrit/#/q/e41f59b33>`_
  `BUG-7380 <https://bugs.opendaylight.org/show_bug.cgi?id=7380>`_
  : Bug 7380: service-binding exceptions from ACL
* `ae6f198f9 <https://git.opendaylight.org/gerrit/#/q/ae6f198f9>`_
  : Remove stateless mode from AclService.
* `0a80bcec9 <https://git.opendaylight.org/gerrit/#/q/0a80bcec9>`_
  : Minor code cleanup in QoS
* `dd2529d66 <https://git.opendaylight.org/gerrit/#/q/dd2529d66>`_
  : Cleanup cherry-pick of 61888
* `9a28be361 <https://git.opendaylight.org/gerrit/#/q/9a28be361>`_
  `BUG-9100 <https://bugs.opendaylight.org/show_bug.cgi?id=9100>`_
  : Bug 9100 : tx leak in DhcpExternalTunnelManager
* `c1610df5d <https://git.opendaylight.org/gerrit/#/q/c1610df5d>`_
  : Replace <? extends Object> by <?>
* `1b102313e <https://git.opendaylight.org/gerrit/#/q/1b102313e>`_
  `BUG-9012 <https://bugs.opendaylight.org/show_bug.cgi?id=9012>`_
  : Bug 9012 : BGP not connecting to config server
* `270e11400 <https://git.opendaylight.org/gerrit/#/q/270e11400>`_
  : Cluster support for netvirt QoS
* `5dab330a3 <https://git.opendaylight.org/gerrit/#/q/5dab330a3>`_
  : vpnmanager DJC enqueueJob without using AbstractDataStoreJob API
* `5533d26dd <https://git.opendaylight.org/gerrit/#/q/5533d26dd>`_
  `BUG-9003 <https://bugs.opendaylight.org/show_bug.cgi?id=9003>`_
  : BUG 9003: Fix classifier entry processing order
* `5ba7f1e0b <https://git.opendaylight.org/gerrit/#/q/5ba7f1e0b>`_
  `BUG-9003 <https://bugs.opendaylight.org/show_bug.cgi?id=9003>`_
  : BUG 9003: Fix port chain event triggered two times
* `3385dee0f <https://git.opendaylight.org/gerrit/#/q/3385dee0f>`_
  : BUG: Adapt SFC translator to SFC code in Nitrogen
* `0c6ecdf47 <https://git.opendaylight.org/gerrit/#/q/0c6ecdf47>`_
  : BUG9094 Bind to last SF interface if origin node
* `43bc42f11 <https://git.opendaylight.org/gerrit/#/q/43bc42f11>`_
  : BUG9095 Capture SFC tunnel traffic for path egress
* `e219b226e <https://git.opendaylight.org/gerrit/#/q/e219b226e>`_
  `BUG-9003 <https://bugs.opendaylight.org/show_bug.cgi?id=9003>`_
  : BUG 9003: Support source-logical-port acl match
* `9a86dedd5 <https://git.opendaylight.org/gerrit/#/q/9a86dedd5>`_
  : Replace size()==0 by isEmpty()
* `65e472949 <https://git.opendaylight.org/gerrit/#/q/65e472949>`_
  : Cleanup
* `683ceee8c <https://git.opendaylight.org/gerrit/#/q/683ceee8c>`_
  `BUG-9035 <https://bugs.opendaylight.org/show_bug.cgi?id=9035>`_
  : Bug 9035: - NPE at org.opendaylight.netvirt.elan.arp.responder.ArpResponderUtil.getMatchCriteria
* `fea76a166 <https://git.opendaylight.org/gerrit/#/q/fea76a166>`_
  : Add missing null check
* `b079a62db <https://git.opendaylight.org/gerrit/#/q/b079a62db>`_
  : Bug:9013 ElanUtils: RPC Call to Get egress actions for interface, OptimisticLockFailedException
* `050842d9f <https://git.opendaylight.org/gerrit/#/q/050842d9f>`_
  `BUG-9085 <https://bugs.opendaylight.org/show_bug.cgi?id=9085>`_
  : Bug 9085 - CSIT Sporadic failures - test_security_groups_basic_ops.TestSecurityGroupsBasicOps.test_cross_tenant_traffic
* `68e5dd154 <https://git.opendaylight.org/gerrit/#/q/68e5dd154>`_
  : bgpmanager BgpUtil code clean-up: Make private what can, and rm unused
* `f13b13ee8 <https://git.opendaylight.org/gerrit/#/q/f13b13ee8>`_
  : lower BGPconnect logs to debug level
* `7d542cf91 <https://git.opendaylight.org/gerrit/#/q/7d542cf91>`_
  : Remove unused NatNodeEventListener
* `0a5f9929f <https://git.opendaylight.org/gerrit/#/q/0a5f9929f>`_
  `BUG-6349 <https://bugs.opendaylight.org/show_bug.cgi?id=6349>`_
  : Bug 6349: try connecting to qthrift only when configured. - default values are set to invalid host/port. - verify whether port/host configured before connecting
* `004eb5a67 <https://git.opendaylight.org/gerrit/#/q/004eb5a67>`_
  `BUG-9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9034>`_
  : Bug 9034: bgpmanager BgpUtil rm unused pendingWrTransaction
* `54db8fe10 <https://git.opendaylight.org/gerrit/#/q/54db8fe10>`_
  `BUG-9012 <https://bugs.opendaylight.org/show_bug.cgi?id=9012>`_
  : Bug 9012 : BGP reconnect and retry logic to QBGP
* `f99399a81 <https://git.opendaylight.org/gerrit/#/q/f99399a81>`_
  `BUG-8996 <https://bugs.opendaylight.org/show_bug.cgi?id=8996>`_
  : Bug 8996 : BGP EOR and some minor fixes
* `1f350e9e7 <https://git.opendaylight.org/gerrit/#/q/1f350e9e7>`_
  : Bug9016:Using Single Transaction during NAPT SwitchOver
* `bb32ca907 <https://git.opendaylight.org/gerrit/#/q/bb32ca907>`_
  : Replace size()==0 by isEmpty()
* `79acd5d36 <https://git.opendaylight.org/gerrit/#/q/79acd5d36>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `a28cd0577 <https://git.opendaylight.org/gerrit/#/q/a28cd0577>`_
  `BUG-9022 <https://bugs.opendaylight.org/show_bug.cgi?id=9022>`_
  : Bug 9022: ACL: Broadcast traffic is dropped in ACL tables
* `bd093eb82 <https://git.opendaylight.org/gerrit/#/q/bd093eb82>`_
  `BUG-8976 <https://bugs.opendaylight.org/show_bug.cgi?id=8976>`_
  : Bug 8976 - Upstreaming fixes to master
* `19f5c2bd9 <https://git.opendaylight.org/gerrit/#/q/19f5c2bd9>`_
  `BUG-9102 <https://bugs.opendaylight.org/show_bug.cgi?id=9102>`_
  : Bug 9102 Fix ReadOnlyTransaction leak in NeutronvpnUtils
* `72f80979d <https://git.opendaylight.org/gerrit/#/q/72f80979d>`_
  : Fix bad cherry-pick of 61976
* `486c42d89 <https://git.opendaylight.org/gerrit/#/q/486c42d89>`_
  `BUG-8976 <https://bugs.opendaylight.org/show_bug.cgi?id=8976>`_
  : Bug 8976 - Upstreaming fixes to master
* `142616db1 <https://git.opendaylight.org/gerrit/#/q/142616db1>`_
  `BUG-8860 <https://bugs.opendaylight.org/show_bug.cgi?id=8860>`_
  : Bug 8860: NPE in getElanTag from SubnetmapChangeListener
* `167386da3 <https://git.opendaylight.org/gerrit/#/q/167386da3>`_
  `BUG-8953 <https://bugs.opendaylight.org/show_bug.cgi?id=8953>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin
* `56e5a95f9 <https://git.opendaylight.org/gerrit/#/q/56e5a95f9>`_
  `BUG-9030 <https://bugs.opendaylight.org/show_bug.cgi?id=9030>`_
  : Bug 9030 - port and port security groups cannot be null
* `7d78ac953 <https://git.opendaylight.org/gerrit/#/q/7d78ac953>`_
  `BUG-8953 <https://bugs.opendaylight.org/show_bug.cgi?id=8953>`_
  : Bug 8953 - IllegalArgumentException: vrfEntry is missing mandatory descendant origin
* `2c9ee9d3c <https://git.opendaylight.org/gerrit/#/q/2c9ee9d3c>`_
  `BUG-9051 <https://bugs.opendaylight.org/show_bug.cgi?id=9051>`_
  : Bug 9051 - Failed to handle router GW flow in GW-MAC table. DPN id is missing for router-id
* `c354cb141 <https://git.opendaylight.org/gerrit/#/q/c354cb141>`_
  `BUG-9030 <https://bugs.opendaylight.org/show_bug.cgi?id=9030>`_
  : Bug 9030 - port and port security groups cannot be null
* `679376d4a <https://git.opendaylight.org/gerrit/#/q/679376d4a>`_
  `BUG-8945 <https://bugs.opendaylight.org/show_bug.cgi?id=8945>`_
  : Bug 8945 - Missing key is getVrfId. Supplied key is VpnInstanceOpDataEntryKey
* `7ff240d17 <https://git.opendaylight.org/gerrit/#/q/7ff240d17>`_
  `BUG-9014 <https://bugs.opendaylight.org/show_bug.cgi?id=9014>`_
  : BUG 9014: Remove unnecessary Log statements for evpn/subnetroute
* `0f47bfb25 <https://git.opendaylight.org/gerrit/#/q/0f47bfb25>`_
  `BUG-8960 <https://bugs.opendaylight.org/show_bug.cgi?id=8960>`_
  : Bug 8960: port information for 1 dpn is missing in subnet-op-data and port-op-data
* `c705463bd <https://git.opendaylight.org/gerrit/#/q/c705463bd>`_
  `BUG-9014
9014 <https://bugs.opendaylight.org/show_bug.cgi?id=9014
9014>`_
  : Bug 9014 - ElanUtils: buildRemoteDmacFlowEntry
* `62ad72f96 <https://git.opendaylight.org/gerrit/#/q/62ad72f96>`_
  : cleanup for erros that should be info
* `9d2df477e <https://git.opendaylight.org/gerrit/#/q/9d2df477e>`_
  `BUG-8974 <https://bugs.opendaylight.org/show_bug.cgi?id=8974>`_
  : Bug 8974: Fix subnet-directed-broadcast-addr ARP issue
* `c5d75741b <https://git.opendaylight.org/gerrit/#/q/c5d75741b>`_
  : Use INFO for logging GW search misses
* `a8d034553 <https://git.opendaylight.org/gerrit/#/q/a8d034553>`_
  `BUG-9015 <https://bugs.opendaylight.org/show_bug.cgi?id=9015>`_
  : Bug 9015 - Unable to install group
* `7d7267df0 <https://git.opendaylight.org/gerrit/#/q/7d7267df0>`_
  : Fix Junit failures in master in ACL & SFC
* `3df86fea4 <https://git.opendaylight.org/gerrit/#/q/3df86fea4>`_
  `BUG-8774 <https://bugs.opendaylight.org/show_bug.cgi?id=8774>`_
  : Bug 8774 DHCP Service to use DHCP Port MAC Address
* `3dfb2942f <https://git.opendaylight.org/gerrit/#/q/3dfb2942f>`_
  : set BGP connect problem to be info
* `1a0a6b2a8 <https://git.opendaylight.org/gerrit/#/q/1a0a6b2a8>`_
  `BUG-8981 <https://bugs.opendaylight.org/show_bug.cgi?id=8981>`_
  : Bug 8981: ACL: ARP/DHCP anti-spoofing flows does not include VM/AAP ip/mac matches in VM egress direction
* `9160eb50e <https://git.opendaylight.org/gerrit/#/q/9160eb50e>`_
  `BUG-8979 <https://bugs.opendaylight.org/show_bug.cgi?id=8979>`_
  : Bug 8979: Logging enhancements for VPNService
* `25d4c8839 <https://git.opendaylight.org/gerrit/#/q/25d4c8839>`_
  `BUG-8801 <https://bugs.opendaylight.org/show_bug.cgi?id=8801>`_
  : Bug 8801 - EVPN remote routes are not pushed to ovs flow table
* `433bc242e <https://git.opendaylight.org/gerrit/#/q/433bc242e>`_
  `BUG-9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9060
9034>`_
  : Bug 9060: Package mdsal trace utility in netvirt Karaf distribution
* `b465f01c0 <https://git.opendaylight.org/gerrit/#/q/b465f01c0>`_
  `BUG-9039 <https://bugs.opendaylight.org/show_bug.cgi?id=9039>`_
  : Bug 9039 - In Conntrack SNAT, when a router g/w is cleared traffic is dropped for other routers
* `35509ed81 <https://git.opendaylight.org/gerrit/#/q/35509ed81>`_
  `BUG-8982 <https://bugs.opendaylight.org/show_bug.cgi?id=8982>`_
  : Bug 8982: avoid .transform() NPEs
* `3661b68d7 <https://git.opendaylight.org/gerrit/#/q/3661b68d7>`_
  `BUG-9034
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9034
9034>`_
  : Bug 9034: bgpmanager BgpUtil rm unused BindingTransactionChain & Co.
* `b795753cc <https://git.opendaylight.org/gerrit/#/q/b795753cc>`_
  : Bug8861 : Data validation failed for path /snatint-ip-port-map
* `ae32206c8 <https://git.opendaylight.org/gerrit/#/q/ae32206c8>`_
  `BUG-8926 <https://bugs.opendaylight.org/show_bug.cgi?id=8926>`_
  : Bug 8926: Fix instance doesn't get an IP after deployment
* `64fddf7a0 <https://git.opendaylight.org/gerrit/#/q/64fddf7a0>`_
  `BUG-8960 <https://bugs.opendaylight.org/show_bug.cgi?id=8960>`_
  : Revert "Bug 8960: port information for 1 dpn is missing in subnet-op-data and port-op-data"
* `9396559d0 <https://git.opendaylight.org/gerrit/#/q/9396559d0>`_
  : Do not catch Throwable
* `ca2f69a0b <https://git.opendaylight.org/gerrit/#/q/ca2f69a0b>`_
  `BUG-8972 <https://bugs.opendaylight.org/show_bug.cgi?id=8972>`_
  : Bug 8972: dhcp-show does not display the defaults
* `4e4865592 <https://git.opendaylight.org/gerrit/#/q/4e4865592>`_
  `BUG-8894 <https://bugs.opendaylight.org/show_bug.cgi?id=8894>`_
  : BUG-8894 : display VPN interface count number for each VPN instance.
* `c2f221235 <https://git.opendaylight.org/gerrit/#/q/c2f221235>`_
  `BUG-8821 <https://bugs.opendaylight.org/show_bug.cgi?id=8821>`_
  : Bug 8821 : BGP Manager / BGP counter incorrect with VPNv6 prefixes
* `42ecc050b <https://git.opendaylight.org/gerrit/#/q/42ecc050b>`_
  : Neutron Port allocation for DHCP Service
* `27eb8068c <https://git.opendaylight.org/gerrit/#/q/27eb8068c>`_
  `BUG-8960 <https://bugs.opendaylight.org/show_bug.cgi?id=8960>`_
  : Bug 8960: port information for 1 dpn is missing in subnet-op-data and port-op-data
* `1a55cb7db <https://git.opendaylight.org/gerrit/#/q/1a55cb7db>`_
  `BUG-8863 <https://bugs.opendaylight.org/show_bug.cgi?id=8863>`_
  : Bug 8863: NPE at VpnFloatingIpHandler
* `6cee87347 <https://git.opendaylight.org/gerrit/#/q/6cee87347>`_
  `BUG-8962 <https://bugs.opendaylight.org/show_bug.cgi?id=8962>`_
  : Bug 8962: Fix non-parameterized LOG statements as per guidelines
* `bb6d6219e <https://git.opendaylight.org/gerrit/#/q/bb6d6219e>`_
  : Docs: add supported combinations
* `b9077c156 <https://git.opendaylight.org/gerrit/#/q/b9077c156>`_
  `BUG-8958 <https://bugs.opendaylight.org/show_bug.cgi?id=8958>`_
  : Bug 8958: Java Null pointer exception for display vpn-config after deleting a vpn from CLI
* `335f02fc8 <https://git.opendaylight.org/gerrit/#/q/335f02fc8>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails Changed set_field to load action and set only the relevent bits and other bits are preserved.
* `71eab1bad <https://git.opendaylight.org/gerrit/#/q/71eab1bad>`_
  `BUG-8937 <https://bugs.opendaylight.org/show_bug.cgi?id=8937>`_
  : Bug 8937 : High CPU utilization of Java process due to SNAT packet looping
* `3038140a9 <https://git.opendaylight.org/gerrit/#/q/3038140a9>`_
  : ELAN service is not unbound when nova delete followed by neutron port delete
* `ae08e69d7 <https://git.opendaylight.org/gerrit/#/q/ae08e69d7>`_
  `BUG-8883 <https://bugs.opendaylight.org/show_bug.cgi?id=8883>`_
  : BUG 8883 : LOG enhancement for NAT service module
* `107d12e23 <https://git.opendaylight.org/gerrit/#/q/107d12e23>`_
  `BUG-7545 <https://bugs.opendaylight.org/show_bug.cgi?id=7545>`_
  : Bug 7545 - FIP-FIP traffic between vm in same n/w in same compute is not working in stateful SG mode.
* `fea4f9460 <https://git.opendaylight.org/gerrit/#/q/fea4f9460>`_
  `BUG-8876 <https://bugs.opendaylight.org/show_bug.cgi?id=8876>`_
  : BUG 8876 - Fix to remove ELAN interface flows when external network deleted
* `a957f6df3 <https://git.opendaylight.org/gerrit/#/q/a957f6df3>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Revert "Bug 8882 - With conntrack SNAT communication with PNF fails "
* `5a57c87d0 <https://git.opendaylight.org/gerrit/#/q/5a57c87d0>`_
  `BUG-8936 <https://bugs.opendaylight.org/show_bug.cgi?id=8936>`_
  : Bug 8936: Fix IPv6 IPAM issues when an IPv6 subnet is added to IPv4 network
* `182068e3c <https://git.opendaylight.org/gerrit/#/q/182068e3c>`_
  `BUG-8789 <https://bugs.opendaylight.org/show_bug.cgi?id=8789>`_
  : Bug 8789 - Designated DHCP DPN is missing.
* `1075f5cbb <https://git.opendaylight.org/gerrit/#/q/1075f5cbb>`_
  : Add chain egress classifier support
* `84d0243b4 <https://git.opendaylight.org/gerrit/#/q/84d0243b4>`_
  : Fix some logs
* `aa214fc52 <https://git.opendaylight.org/gerrit/#/q/aa214fc52>`_
  : Replace size()==0 by isEmpty()
* `3f868b073 <https://git.opendaylight.org/gerrit/#/q/3f868b073>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `d08947abb <https://git.opendaylight.org/gerrit/#/q/d08947abb>`_
  `BUG-8914 <https://bugs.opendaylight.org/show_bug.cgi?id=8914>`_
  : BUG 8914: Fix NPE in sfc.classifier-impl
* `10b553c76 <https://git.opendaylight.org/gerrit/#/q/10b553c76>`_
  `BUG-8346 <https://bugs.opendaylight.org/show_bug.cgi?id=8346>`_
  : Bug 8346 - Conflicting modification for vpnNextHops.
* `92322950b <https://git.opendaylight.org/gerrit/#/q/92322950b>`_
  : Cleanup
* `e1f96c371 <https://git.opendaylight.org/gerrit/#/q/e1f96c371>`_
  `BUG-8917 <https://bugs.opendaylight.org/show_bug.cgi?id=8917>`_
  : Bug 8917 - CSIT Sporadic failures - Arp learning suite - missing flow on compute node
* `56098b2b9 <https://git.opendaylight.org/gerrit/#/q/56098b2b9>`_
  `BUG-8875
6770 <https://bugs.opendaylight.org/show_bug.cgi?id=8875
6770>`_
  : Bug 8875 - fix in handleNeutronPortUpdated
* `f2a6b9f88 <https://git.opendaylight.org/gerrit/#/q/f2a6b9f88>`_
  `BUG-8439 <https://bugs.opendaylight.org/show_bug.cgi?id=8439>`_
  : Bug 8439: Handling interface update event for ECMP extra routes.
* `495bece14 <https://git.opendaylight.org/gerrit/#/q/495bece14>`_
  `BUG-8884 <https://bugs.opendaylight.org/show_bug.cgi?id=8884>`_
  : Bug 8884: SNAT traffic is getting dropped when router gateway is removed
* `d8e1926de <https://git.opendaylight.org/gerrit/#/q/d8e1926de>`_
  `BUG-8632 <https://bugs.opendaylight.org/show_bug.cgi?id=8632>`_
  : Bug 8632: ECMP LB group not updated during tunnel events
* `1989e096f <https://git.opendaylight.org/gerrit/#/q/1989e096f>`_
  : Remove not needed Thread.sleep() from aclservice component tests
* `34dbc7c04 <https://git.opendaylight.org/gerrit/#/q/34dbc7c04>`_
  `BUG-8838 <https://bugs.opendaylight.org/show_bug.cgi?id=8838>`_
  : Bug 8838: aclservice NPE's
* `bf5d2f9ae <https://git.opendaylight.org/gerrit/#/q/bf5d2f9ae>`_
  `BUG-8476 <https://bugs.opendaylight.org/show_bug.cgi?id=8476>`_
  : Bug 8476 Add support for logical switch replication mode
* `f6b592571 <https://git.opendaylight.org/gerrit/#/q/f6b592571>`_
  `BUG-8892 <https://bugs.opendaylight.org/show_bug.cgi?id=8892>`_
  : Bug 8892 - LOG.error format error(VpnManagerImpl.java:176)
* `c20d1dbd8 <https://git.opendaylight.org/gerrit/#/q/c20d1dbd8>`_
  `BUG-8864 <https://bugs.opendaylight.org/show_bug.cgi?id=8864>`_
  : Bug 8864: DNAT to SNAT traffic is getting failed on same DPN for VXLAN
* `c81fd6945 <https://git.opendaylight.org/gerrit/#/q/c81fd6945>`_
  `BUG-8880
8020 <https://bugs.opendaylight.org/show_bug.cgi?id=8880
8020>`_
  : BUG 8880: Trunk port flows not created for subports
* `8139526fb <https://git.opendaylight.org/gerrit/#/q/8139526fb>`_
  : Remove derivation from controller config-parent
* `6e7f4816c <https://git.opendaylight.org/gerrit/#/q/6e7f4816c>`_
  `BUG-8853 <https://bugs.opendaylight.org/show_bug.cgi?id=8853>`_
  : Bug 8853 - In conntrack SNAT , FIB flows are not created for existing Non-NAPT switch ports.
* `8cf2c1585 <https://git.opendaylight.org/gerrit/#/q/8cf2c1585>`_
  `BUG-8753 <https://bugs.opendaylight.org/show_bug.cgi?id=8753>`_
  : Bug 8753 : Changes to create bgpvpn without VPN target
* `619dbc0ae <https://git.opendaylight.org/gerrit/#/q/619dbc0ae>`_
  `BUG-8841 <https://bugs.opendaylight.org/show_bug.cgi?id=8841>`_
  : Bug 8841 : add fib-show option to select entries per address-family or prefix
* `f2ddba6f5 <https://git.opendaylight.org/gerrit/#/q/f2ddba6f5>`_
  `BUG-8683 <https://bugs.opendaylight.org/show_bug.cgi?id=8683>`_
  : Bug 8683: Aclservice releaseId IdManager Exception
* `d139debee <https://git.opendaylight.org/gerrit/#/q/d139debee>`_
  : Move statistics into org.opendaylight.netvirt
* `f272f13aa <https://git.opendaylight.org/gerrit/#/q/f272f13aa>`_
  : Clean up lambdas and streams
* `fe51f67e7 <https://git.opendaylight.org/gerrit/#/q/fe51f67e7>`_
  `BUG-8857 <https://bugs.opendaylight.org/show_bug.cgi?id=8857>`_
  : Bug 8857 - SNAT Conntrack - VM MAC is used as Source MAC for all outbound traffic
* `327dc13ba <https://git.opendaylight.org/gerrit/#/q/327dc13ba>`_
  `BUG-8810 <https://bugs.opendaylight.org/show_bug.cgi?id=8810>`_
  : Bug 8810 : BGP Manager / support for EVPN on OAM submodule missing
* `66a968261 <https://git.opendaylight.org/gerrit/#/q/66a968261>`_
  `BUG-8809 <https://bugs.opendaylight.org/show_bug.cgi?id=8809>`_
  : Bug 8809 : BGP Manager / neighbor summary for VPNv6 wrongly parsed
* `b38b6a531 <https://git.opendaylight.org/gerrit/#/q/b38b6a531>`_
  `BUG-8811 <https://bugs.opendaylight.org/show_bug.cgi?id=8811>`_
  : Bug 8811 : BGP Manager / bgp-nbr shell config with afi vpnv6 / evpn
* `223a9b63b <https://git.opendaylight.org/gerrit/#/q/223a9b63b>`_
  `BUG-8818 <https://bugs.opendaylight.org/show_bug.cgi?id=8818>`_
  : Bug 8818 : BGP Manager. VPNv6 prefixes injected to QBGP
* `0c6928ae3 <https://git.opendaylight.org/gerrit/#/q/0c6928ae3>`_
  `BUG-8822 <https://bugs.opendaylight.org/show_bug.cgi?id=8822>`_
  : Bug 8822 : Bgp Manager / bgp-cache dumps unknown address-families
* `37b25203f <https://git.opendaylight.org/gerrit/#/q/37b25203f>`_
  : Spec to support dualstack VMs in L3VPN
* `da481cc4f <https://git.opendaylight.org/gerrit/#/q/da481cc4f>`_
  `BUG-8770 <https://bugs.opendaylight.org/show_bug.cgi?id=8770>`_
  : Bug 8770: Stale NAT entries are not getting removed for external FLAT
* `ee23cd929 <https://git.opendaylight.org/gerrit/#/q/ee23cd929>`_
  : Add a private constructor to this utility class
* `8bc1f08e8 <https://git.opendaylight.org/gerrit/#/q/8bc1f08e8>`_
  : Revert "Ship aaa-cli-jar.jar in the distribution"
* `1d7be7f43 <https://git.opendaylight.org/gerrit/#/q/1d7be7f43>`_
  : natservice-impl: propagate upstream non-null annotations
* `f92f853cd <https://git.opendaylight.org/gerrit/#/q/f92f853cd>`_
  `BUG-8835 <https://bugs.opendaylight.org/show_bug.cgi?id=8835>`_
  : Bug 8835: Java NullPointerException in display-bgp-config command
* `5c035b577 <https://git.opendaylight.org/gerrit/#/q/5c035b577>`_
  `BUG-8567 <https://bugs.opendaylight.org/show_bug.cgi?id=8567>`_
  : Bug 8567: Addition of new flows after addng extra route
* `34201d966 <https://git.opendaylight.org/gerrit/#/q/34201d966>`_
  : New Yang model container for Neutron DHCP Port service. Updated spec with correct yang.
* `9c846dc32 <https://git.opendaylight.org/gerrit/#/q/9c846dc32>`_
  : Enforce non-null collection returns in NatUtil
* `b7a19dc90 <https://git.opendaylight.org/gerrit/#/q/b7a19dc90>`_
  `BUG-8844 <https://bugs.opendaylight.org/show_bug.cgi?id=8844>`_
  : Bug 8844: CSIT Job: NullPointerException from NAT feature
* `cbf6784b2 <https://git.opendaylight.org/gerrit/#/q/cbf6784b2>`_
  : SNAT performance improvement for Controller-Based SNAT
* `85a50a360 <https://git.opendaylight.org/gerrit/#/q/85a50a360>`_
  `BUG-8796 <https://bugs.opendaylight.org/show_bug.cgi?id=8796>`_
  : Bug 8796: Fix of issue that vxlan port is created with remote_ip set to the node itself
* `22ec593f5 <https://git.opendaylight.org/gerrit/#/q/22ec593f5>`_
  : Ship aaa-cli-jar.jar in the distribution
* `97579dd37 <https://git.opendaylight.org/gerrit/#/q/97579dd37>`_
  `BUG-8791 <https://bugs.opendaylight.org/show_bug.cgi?id=8791>`_
  : Bug 8791 - L2gateway delete is not clearing l2gwCo
* `23aced2b2 <https://git.opendaylight.org/gerrit/#/q/23aced2b2>`_
  `BUG-8790 <https://bugs.opendaylight.org/show_bug.cgi?id=8790>`_
  : Bug 8790 - Local Macs getting cleared
* `912deac5f <https://git.opendaylight.org/gerrit/#/q/912deac5f>`_
  : Fix dpnId handling in SRISCListener
* `2611d2913 <https://git.opendaylight.org/gerrit/#/q/2611d2913>`_
  `BUG-8828 <https://bugs.opendaylight.org/show_bug.cgi?id=8828>`_
  : BUG 8828: Fix NPE when no remote IP on interface
* `bcf70ca8c <https://git.opendaylight.org/gerrit/#/q/bcf70ca8c>`_
  : Filter notifications for unwanted interfaces
* `ec9b17a77 <https://git.opendaylight.org/gerrit/#/q/ec9b17a77>`_
  : Revert "Spec to support dualstack VMs in L3VPN"
* `c573f20fb <https://git.opendaylight.org/gerrit/#/q/c573f20fb>`_
  : Fix ActionNxResubmit in FlowEntryObjectsStateless for aclservice
* `53e54a7de <https://git.opendaylight.org/gerrit/#/q/53e54a7de>`_
  : Use right version for statistics pom
* `e9ed39a1e <https://git.opendaylight.org/gerrit/#/q/e9ed39a1e>`_
  : Fix cherry-pick of 56902
* `2806c874a <https://git.opendaylight.org/gerrit/#/q/2806c874a>`_
  : Fix cherry-pick of 56875
* `1065b201e <https://git.opendaylight.org/gerrit/#/q/1065b201e>`_
  : Fix cherry-pick of 58749
* `a0cc3c17d <https://git.opendaylight.org/gerrit/#/q/a0cc3c17d>`_
  : Fix funny character in ebgp.yang (slanted quotation mark)
* `76a76a21d <https://git.opendaylight.org/gerrit/#/q/76a76a21d>`_
  : Adding Log statements, helps during debugging
* `146521dbc <https://git.opendaylight.org/gerrit/#/q/146521dbc>`_
  `BUG-8800
8800
8800 <https://bugs.opendaylight.org/show_bug.cgi?id=8800
8800
8800>`_
  : Bug 8800: Fix AclServiceStatefulTest newInterfaceWithMultipleAcl()
* `1407e68df <https://git.opendaylight.org/gerrit/#/q/1407e68df>`_
  `BUG-8838 <https://bugs.opendaylight.org/show_bug.cgi?id=8838>`_
  : Bug 8838 - aclservice NPE's
* `c7d20f183 <https://git.opendaylight.org/gerrit/#/q/c7d20f183>`_
  `BUG-8838 <https://bugs.opendaylight.org/show_bug.cgi?id=8838>`_
  : Bug 8838 - aclservice NPE's
* `507b59be0 <https://git.opendaylight.org/gerrit/#/q/507b59be0>`_
  : Fix NullPointerException in QosInterfaceStateChangeListener
* `301589e59 <https://git.opendaylight.org/gerrit/#/q/301589e59>`_
  : Use manual setters instead @Immutable in IdentifiedAceBuilder.xtend
* `590dcb2a9 <https://git.opendaylight.org/gerrit/#/q/590dcb2a9>`_
  : Spec to support dualstack VMs in L3VPN


neutron
-------
* `e2db0a97 <https://git.opendaylight.org/gerrit/#/q/e2db0a97>`_
  : Karaf 3 features must only use other K3 features
* `7db7a1c2 <https://git.opendaylight.org/gerrit/#/q/7db7a1c2>`_
  : Add missing Karaf 3 dependency


nic
---
* `86ae4b1 <https://git.opendaylight.org/gerrit/#/q/86ae4b1>`_
  : Fix autorelease by moving neutron dependency


odlparent
---------
* `4fece59 <https://git.opendaylight.org/gerrit/#/q/4fece59>`_
  `BUG-9228 <https://bugs.opendaylight.org/show_bug.cgi?id=9228>`_
  : Bug 9228: Package bcprov-ext-jdk15on jar


openflowplugin
--------------
* `ba0f1d1b2 <https://git.opendaylight.org/gerrit/#/q/ba0f1d1b2>`_
  : Fix possible NPE on ContextChainHolderImpl
* `8f1b3ed16 <https://git.opendaylight.org/gerrit/#/q/8f1b3ed16>`_
  : This patch implements ct-mark support in nicira extensions.
* `0cdf07a56 <https://git.opendaylight.org/gerrit/#/q/0cdf07a56>`_
  `BUG-9217 <https://bugs.opendaylight.org/show_bug.cgi?id=9217>`_
  : Do not try to close context with null deviceInfo
* `654c8c413 <https://git.opendaylight.org/gerrit/#/q/654c8c413>`_
  `BUG-9216 <https://bugs.opendaylight.org/show_bug.cgi?id=9216>`_
  : Sort bucket actions
* `1f56ac9d0 <https://git.opendaylight.org/gerrit/#/q/1f56ac9d0>`_
  `BUG-9089 <https://bugs.opendaylight.org/show_bug.cgi?id=9089>`_
  : Use HashedWheelTimer instead of item scheduler
* `6896f5702 <https://git.opendaylight.org/gerrit/#/q/6896f5702>`_
  `BUG-9089 <https://bugs.opendaylight.org/show_bug.cgi?id=9089>`_
  : Terminate SLAVE task before sending role change
* `575b50379 <https://git.opendaylight.org/gerrit/#/q/575b50379>`_
  `BUG-9038 <https://bugs.opendaylight.org/show_bug.cgi?id=9038>`_
  : Fix transaction manager closing.
* `7601f1244 <https://git.opendaylight.org/gerrit/#/q/7601f1244>`_
  `BUG-9038 <https://bugs.opendaylight.org/show_bug.cgi?id=9038>`_
  : Fix TransactionChainManager IllegalStateException
* `ffc9c24dc <https://git.opendaylight.org/gerrit/#/q/ffc9c24dc>`_
  `BUG-8723 <https://bugs.opendaylight.org/show_bug.cgi?id=8723>`_
  : Solves issue with two connections from one device.
* `bf886e634 <https://git.opendaylight.org/gerrit/#/q/bf886e634>`_
  `BUG-8668 <https://bugs.opendaylight.org/show_bug.cgi?id=8668>`_
  : Fix context state comparison
* `c338fe99b <https://git.opendaylight.org/gerrit/#/q/c338fe99b>`_
  `BUG-8882 <https://bugs.opendaylight.org/show_bug.cgi?id=8882>`_
  : Bug 8882 - With conntrack SNAT communication with PNF fails
* `4da1fac23 <https://git.opendaylight.org/gerrit/#/q/4da1fac23>`_
  `BUG-8805 <https://bugs.opendaylight.org/show_bug.cgi?id=8805>`_
  : Close CSS registration in separate thread
* `b2ebefe1a <https://git.opendaylight.org/gerrit/#/q/b2ebefe1a>`_
  `BUG-8805 <https://bugs.opendaylight.org/show_bug.cgi?id=8805>`_
  : Fix context chain initialization and SLAVE change
* `3b5d944f7 <https://git.opendaylight.org/gerrit/#/q/3b5d944f7>`_
  `BUG-8836 <https://bugs.opendaylight.org/show_bug.cgi?id=8836>`_
  : Fix match extensions deserialization
* `2629a084f <https://git.opendaylight.org/gerrit/#/q/2629a084f>`_
  `BUG-7501 <https://bugs.opendaylight.org/show_bug.cgi?id=7501>`_
  : Improve flow collection


ovsdb
-----
* `476e2bbc <https://git.opendaylight.org/gerrit/#/q/476e2bbc>`_
  `BUG-9166 <https://bugs.opendaylight.org/show_bug.cgi?id=9166>`_
  : BUG 9166 - Fix Netvirt L2GW Illegal state exception
* `b26aa382 <https://git.opendaylight.org/gerrit/#/q/b26aa382>`_
  : Refactor compareDbVersionToMinVersion
* `5f045af1 <https://git.opendaylight.org/gerrit/#/q/5f045af1>`_
  `BUG-9072
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9072
9034>`_
  : BUG 9072 - Fix OVSDB TransactionChain memory leak
* `c997346f <https://git.opendaylight.org/gerrit/#/q/c997346f>`_
  `BUG-9073
9060
9034 <https://bugs.opendaylight.org/show_bug.cgi?id=9073
9060
9034>`_
  : BUG 9073 Fix memory leak - close TransactionChain
* `189c2716 <https://git.opendaylight.org/gerrit/#/q/189c2716>`_
  `BUG-8874 <https://bugs.opendaylight.org/show_bug.cgi?id=8874>`_
  : Bug 8874 - Tunnel_ips of hardware_vtep is cleared when Open vSwitch process restarted in Open vSwitch HWVTEP Emulator
* `c9bbb9b3 <https://git.opendaylight.org/gerrit/#/q/c9bbb9b3>`_
  `BUG-8476 <https://bugs.opendaylight.org/show_bug.cgi?id=8476>`_
  : Bug 8476 Add support for logical switch replication mode
* `9779ec50 <https://git.opendaylight.org/gerrit/#/q/9779ec50>`_
  `BUG-8476 <https://bugs.opendaylight.org/show_bug.cgi?id=8476>`_
  : Bug 8476 Add support for logical switch replication mode
* `9fd9d974 <https://git.opendaylight.org/gerrit/#/q/9fd9d974>`_
  `BUG-8673 <https://bugs.opendaylight.org/show_bug.cgi?id=8673>`_
  : bug 8673 physical switch node is not removed


sfc
---
* `fb1f7da7 <https://git.opendaylight.org/gerrit/#/q/fb1f7da7>`_
  : Replace size()==0 by isEmpty()
* `79939f8c <https://git.opendaylight.org/gerrit/#/q/79939f8c>`_
  : Add private constructor to this utility class
* `cb233bb6 <https://git.opendaylight.org/gerrit/#/q/cb233bb6>`_
  : Fix some logs
* `e8f1c20b <https://git.opendaylight.org/gerrit/#/q/e8f1c20b>`_
  : Join and simplify if(s) statements


unimgr
------
* `f5e14b4 <https://git.opendaylight.org/gerrit/#/q/f5e14b4>`_
  : Fix autorelease: update adjacency changes


vtn
---
* `1a8cac82 <https://git.opendaylight.org/gerrit/#/q/1a8cac82>`_
  `BUG-9225 <https://bugs.opendaylight.org/show_bug.cgi?id=9225>`_
  : Bug 9225: Upgrade Apache Tomcat for VTN coordinator to 7.0.82.
* `eea766b8 <https://git.opendaylight.org/gerrit/#/q/eea766b8>`_
  `BUG-9225 <https://bugs.opendaylight.org/show_bug.cgi?id=9225>`_
  : Bug 9225: Upgrade Apache Tomcat for VTN coordinator to 7.0.81.
* `97305e05 <https://git.opendaylight.org/gerrit/#/q/97305e05>`_
  `BUG-9174 <https://bugs.opendaylight.org/show_bug.cgi?id=9174>`_
  : Bug 9174: Fix for VTN Coordinator Flowlistentry Creation failure
* `35a07a73 <https://git.opendaylight.org/gerrit/#/q/35a07a73>`_
  `BUG-9024 <https://bugs.opendaylight.org/show_bug.cgi?id=9024>`_
  : Bug 9024: Set null to bundle version qualifier if it is empty.
* `010288c6 <https://git.opendaylight.org/gerrit/#/q/010288c6>`_
  : Disable VSEM Provider Build temporarily
* `f765574e <https://git.opendaylight.org/gerrit/#/q/f765574e>`_
  : BUG:8761 Portmapping fails due to unnecessary hex conversion


yangtools
---------
* `842b35b6a <https://git.opendaylight.org/gerrit/#/q/842b35b6a>`_
  : Fix AnyXml node handling
* `3f22345f1 <https://git.opendaylight.org/gerrit/#/q/3f22345f1>`_
  `BUG-7246 <https://bugs.opendaylight.org/show_bug.cgi?id=7246>`_
  : Bug 7246 - Fix of SchemaTracker initialization and lookup of schema nodes
* `9a23a0866 <https://git.opendaylight.org/gerrit/#/q/9a23a0866>`_
  `BUG-8713 <https://bugs.opendaylight.org/show_bug.cgi?id=8713>`_
  : Bug 8713 - BGP models not compatible with leafref context
* `ee3185a8f <https://git.opendaylight.org/gerrit/#/q/ee3185a8f>`_
  : Throw SourceException instead of IllegalArgumentException
* `8b3dc57ef <https://git.opendaylight.org/gerrit/#/q/8b3dc57ef>`_
  `BUG-9005 <https://bugs.opendaylight.org/show_bug.cgi?id=9005>`_
  : Bug 9005 - scope of model import prefix should be module/submodule
* `6d56ef028 <https://git.opendaylight.org/gerrit/#/q/6d56ef028>`_
  `BUG-8922 <https://bugs.opendaylight.org/show_bug.cgi?id=8922>`_
  : Bug 8922 - Evaluation of if-features is done regardless of ancestors
* `0334db2b2 <https://git.opendaylight.org/gerrit/#/q/0334db2b2>`_
  `BUG-7051 <https://bugs.opendaylight.org/show_bug.cgi?id=7051>`_
  : Bug 7051 - Refactoring of StmtContextUtils
* `1d93c8cb7 <https://git.opendaylight.org/gerrit/#/q/1d93c8cb7>`_
  `BUG-7051 <https://bugs.opendaylight.org/show_bug.cgi?id=7051>`_
  : Bug 7051 - moving of SubstatementValidator into spi.meta package
* `2ea61b9a6 <https://git.opendaylight.org/gerrit/#/q/2ea61b9a6>`_
  `BUG-8831 <https://bugs.opendaylight.org/show_bug.cgi?id=8831>`_
  : Bug 8831 - Yang 1.1 default values are not checked correctly
* `8c3d5c715 <https://git.opendaylight.org/gerrit/#/q/8c3d5c715>`_
  : Cleanup SchemaTracker logic
* `2bee5fa78 <https://git.opendaylight.org/gerrit/#/q/2bee5fa78>`_
  `BUG-7464 <https://bugs.opendaylight.org/show_bug.cgi?id=7464>`_
  : BUG-7464: do not depend on odlparent's triemap
* `ffab937a0 <https://git.opendaylight.org/gerrit/#/q/ffab937a0>`_
  `BUG-7464 <https://bugs.opendaylight.org/show_bug.cgi?id=7464>`_
  : BUG-7464: Switch to use forked TrieMap
* `c53dce13e <https://git.opendaylight.org/gerrit/#/q/c53dce13e>`_
  `BUG-8803 <https://bugs.opendaylight.org/show_bug.cgi?id=8803>`_
  : Bug 8803: check for null return NamespaceContext.getNamespaceURI()
* `2671dcb87 <https://git.opendaylight.org/gerrit/#/q/2671dcb87>`_
  `BUG-8733
8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733
8733>`_
  : BUG-8733: add YangInstanceIdentifierBuilder.append()
* `14f1f1332 <https://git.opendaylight.org/gerrit/#/q/14f1f1332>`_
  `BUG-8733 <https://bugs.opendaylight.org/show_bug.cgi?id=8733>`_
  : BUG-8733: add EmptyDataTreeCandidateNode
* `104b5d943 <https://git.opendaylight.org/gerrit/#/q/104b5d943>`_
  `BUG-6972 <https://bugs.opendaylight.org/show_bug.cgi?id=6972>`_
  : BUG-6972: eliminate StmtContext.getOrder()
* `e856047ff <https://git.opendaylight.org/gerrit/#/q/e856047ff>`_
  `BUG-6972 <https://bugs.opendaylight.org/show_bug.cgi?id=6972>`_
  : BUG-6972: Add OptionaBoolean utility
