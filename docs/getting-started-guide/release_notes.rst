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

   project-release-notes/aaa
   project-release-notes/alto
   project-release-notes/bgp-ls-pcep
   project-release-notes/bier
   project-release-notes/cardinal
   project-release-notes/controller
   project-release-notes/didm
   project-release-notes/distribution
   project-release-notes/dluxapps
   project-release-notes/docs
   project-release-notes/eman
   project-release-notes/faas-release-notes
   project-release-notes/federation
   project-release-notes/gbp-release-notes
   project-release-notes/genius
   project-release-notes/infrautils
   project-release-notes/iotdm
   project-release-notes/l2switch
   project-release-notes/lacp
   project-release-notes/lispflowmapping
   project-release-notes/mdsal
   project-release-notes/netconf
   project-release-notes/netide
   project-release-notes/netvirt
   project-release-notes/neutron-northbound
   project-release-notes/nic
   project-release-notes/ocpplugin-release-notes
   project-release-notes/odl-sdni-release-notes
   project-release-notes/odlparent
   project-release-notes/of-config-release-notes
   project-release-notes/openflowjava
   project-release-notes/openflowplugin
   project-release-notes/opflex
   project-release-notes/ovsdb
   project-release-notes/sfc
   project-release-notes/snmp
   project-release-notes/snmp4sdn
   project-release-notes/sxp
   project-release-notes/topology-processing-framework
   project-release-notes/tsdr
   project-release-notes/ttp
   project-release-notes/unimgr
   project-release-notes/usc
   project-release-notes/vbd
   project-release-notes/vtn
   project-release-notes/yangtools

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

