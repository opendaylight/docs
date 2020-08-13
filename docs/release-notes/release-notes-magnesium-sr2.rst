Magnesium-SR2 Release Notes
===========================

This page details changes and bug fixes between the Magnesium Stability Release 1 (Magnesium-SR1)
and the Magnesium Stability Release 2 (Magnesium-SR2) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `dfa4eadb <https://git.opendaylight.org/gerrit/q/dfa4eadb>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `29941375 <https://git.opendaylight.org/gerrit/q/29941375>`_
  : Bump odlparent/yangtools/mdsal to 6.0.10/4.0.12/5.0.13
* `42e2b8b2 <https://git.opendaylight.org/gerrit/q/42e2b8b2>`_
  : Use version range for odl-mdsal-binding-base
* `1554f47e <https://git.opendaylight.org/gerrit/q/1554f47e>`_
  : Bump odlparent/yangtools/mdsal
* `b32de25c <https://git.opendaylight.org/gerrit/q/b32de25c>`_
  : Update dependency-check


bgpcep
------
* `3f2a8d4d6 <https://git.opendaylight.org/gerrit/q/3f2a8d4d6>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `15dd33021 <https://git.opendaylight.org/gerrit/q/15dd33021>`_
  `BGPCEP-916 <https://jira.opendaylight.org/browse/BGPCEP-916>`_
  : Add an explanatory messages around TCP-MD5
* `da22adcc8 <https://git.opendaylight.org/gerrit/q/da22adcc8>`_
  : Use version range for MRI dependencies
* `2c90e195a <https://git.opendaylight.org/gerrit/q/2c90e195a>`_
  : Attach sources to test-jar
* `3eb335d70 <https://git.opendaylight.org/gerrit/q/3eb335d70>`_
  : Bump odlparent/yangtools/mdsal to 6.0.10/4.0.12/5.0.13
* `ca73527e6 <https://git.opendaylight.org/gerrit/q/ca73527e6>`_
  : Do not fail on warnings for docs-linkcheck
* `56fa3a70c <https://git.opendaylight.org/gerrit/q/56fa3a70c>`_
  `BGPCEP-911 <https://jira.opendaylight.org/browse/BGPCEP-911>`_
  : Fix Path Computation Crashes
* `e1fdc0347 <https://git.opendaylight.org/gerrit/q/e1fdc0347>`_
  `BGPCEP-901 <https://jira.opendaylight.org/browse/BGPCEP-901>`_
  : Prevent deadlock when updating PCEP stats when Tx chain fails
* `7292b55ab <https://git.opendaylight.org/gerrit/q/7292b55ab>`_
  `BGPCEP-913 <https://jira.opendaylight.org/browse/BGPCEP-913>`_
  : Fix wrong SR-NAI type for Path Computation
* `4f9ccb292 <https://git.opendaylight.org/gerrit/q/4f9ccb292>`_
  `BGPCEP-912 <https://jira.opendaylight.org/browse/BGPCEP-912>`_
  : Fix Graph documentation
* `0d9eadca7 <https://git.opendaylight.org/gerrit/q/0d9eadca7>`_
  : Fix Unreserved Bandwidth verification in algo
* `775e4db94 <https://git.opendaylight.org/gerrit/q/775e4db94>`_
  : Bump odlparent/yangtools/mdsal
* `9d6494186 <https://git.opendaylight.org/gerrit/q/9d6494186>`_
  `BGPCEP-907 <https://jira.opendaylight.org/browse/BGPCEP-907>`_
  : Remove superfluous units specification
* `fcf08fa97 <https://git.opendaylight.org/gerrit/q/fcf08fa97>`_
  : Use IetfInetUtil for IpAddressNoZone formatting
* `10553eec1 <https://git.opendaylight.org/gerrit/q/10553eec1>`_
  : Upgrade compendium dependency
* `01869de01 <https://git.opendaylight.org/gerrit/q/01869de01>`_
  `BGPCEP-900 <https://jira.opendaylight.org/browse/BGPCEP-900>`_
  : Handle race-conditions in BGP shutdown code


controller
----------
* `ba1707409a <https://git.opendaylight.org/gerrit/q/ba1707409a>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `5f598454ea <https://git.opendaylight.org/gerrit/q/5f598454ea>`_
  : Do not fail on warnings for docs-linkcheck
* `9e8e357c2a <https://git.opendaylight.org/gerrit/q/9e8e357c2a>`_
  : Fix a sonar-reported bug
* `2e22b459ef <https://git.opendaylight.org/gerrit/q/2e22b459ef>`_
  : Bump odlparent/yangtools/mdsal to 6.0.10/4.0.12/5.0.13
* `3b249e3a5c <https://git.opendaylight.org/gerrit/q/3b249e3a5c>`_
  : Do not deploy opendaylight/model pom
* `fbf39ac570 <https://git.opendaylight.org/gerrit/q/fbf39ac570>`_
  : Fix intermittent IT hangs
* `7c7ab280f5 <https://git.opendaylight.org/gerrit/q/7c7ab280f5>`_
  : Bump odlparent/yangtools/mdsal
* `da8a44f5fa <https://git.opendaylight.org/gerrit/q/da8a44f5fa>`_
  `CONTROLLER-1913 <https://jira.opendaylight.org/browse/CONTROLLER-1913>`_
  : Enable overwrite test suite
* `c2f120f4dd <https://git.opendaylight.org/gerrit/q/c2f120f4dd>`_
  `CONTROLLER-1950 <https://jira.opendaylight.org/browse/CONTROLLER-1950>`_
  : Split modifications on datastore root
* `a951fa21b3 <https://git.opendaylight.org/gerrit/q/a951fa21b3>`_
  : Split TransactionChainProxy.combineWithPriorReadOnlyTxFutures()
* `11d47bac51 <https://git.opendaylight.org/gerrit/q/11d47bac51>`_
  `CONTROLLER-1913 <https://jira.opendaylight.org/browse/CONTROLLER-1913>`_
  : Add a missing space
* `de421d8791 <https://git.opendaylight.org/gerrit/q/de421d8791>`_
  : Simplify LocalTransactionContext
* `6003c09ceb <https://git.opendaylight.org/gerrit/q/6003c09ceb>`_
  `CONTROLLER-1951 <https://jira.opendaylight.org/browse/CONTROLLER-1951>`_
  : Refactor TransactionContext.executeModification()
* `5befb36b04 <https://git.opendaylight.org/gerrit/q/5befb36b04>`_
  `CONTROLLER-1950 <https://jira.opendaylight.org/browse/CONTROLLER-1950>`_
  : Move checking/logging out of executeModification()
* `84defcf72b <https://git.opendaylight.org/gerrit/q/84defcf72b>`_
  : Clean up TransactionProxy a bit
* `97d4926a30 <https://git.opendaylight.org/gerrit/q/97d4926a30>`_
  : Fix NoSuchElementException in toString()
* `4c93424a28 <https://git.opendaylight.org/gerrit/q/4c93424a28>`_
  `CONTROLLER-1913 <https://jira.opendaylight.org/browse/CONTROLLER-1913>`_
  : Add an option to trigger snapshot creation on root overwrites
* `c8cffbbff3 <https://git.opendaylight.org/gerrit/q/c8cffbbff3>`_
  `CONTROLLER-1949 <https://jira.opendaylight.org/browse/CONTROLLER-1949>`_
  : Add option to disable default ActorSystemQuarantinedEvent handling
* `fa9aa2ce1f <https://git.opendaylight.org/gerrit/q/fa9aa2ce1f>`_
  : Add UnsignedLongRangeSet.toString()
* `1ae334f198 <https://git.opendaylight.org/gerrit/q/1ae334f198>`_
  `CONTROLLER-1941 <https://jira.opendaylight.org/browse/CONTROLLER-1941>`_
  : Apply a workaround for the isolation of quarantined node
* `43846988ac <https://git.opendaylight.org/gerrit/q/43846988ac>`_
  `CONTROLLER-1915 <https://jira.opendaylight.org/browse/CONTROLLER-1915>`_
  : Allow incremental recovery
* `cb21bf7748 <https://git.opendaylight.org/gerrit/q/cb21bf7748>`_
  : Add sender actor to the ForwardingDataTreeChangeListener
* `8eb3df3d4d <https://git.opendaylight.org/gerrit/q/8eb3df3d4d>`_
  `CONTROLLER-1943 <https://jira.opendaylight.org/browse/CONTROLLER-1943>`_
  : Fix OpsManager registry instantiation
* `596d083fe4 <https://git.opendaylight.org/gerrit/q/596d083fe4>`_
  : Add odlparent docs reference
* `822e39fede <https://git.opendaylight.org/gerrit/q/822e39fede>`_
  : Add missing images from the docs project
* `5ec81796a6 <https://git.opendaylight.org/gerrit/q/5ec81796a6>`_
  `CONTROLLER-911 <https://jira.opendaylight.org/browse/CONTROLLER-911>`_
  : Add documentation about per-shard settings
* `ed30c03e99 <https://git.opendaylight.org/gerrit/q/ed30c03e99>`_
  `CONTROLLER-1935 <https://jira.opendaylight.org/browse/CONTROLLER-1935>`_
  : Do not bump follower term while it is isolated
* `4348423d32 <https://git.opendaylight.org/gerrit/q/4348423d32>`_
  `CONTROLLER-1932 <https://jira.opendaylight.org/browse/CONTROLLER-1932>`_
  : Add tests for new RootDataTreeChangeListenerProxy and Actor
* `51055d0199 <https://git.opendaylight.org/gerrit/q/51055d0199>`_
  `CONTROLLER-1932 <https://jira.opendaylight.org/browse/CONTROLLER-1932>`_
  : Add support for root DTCL listening on all shards in DS
* `06e3dacea3 <https://git.opendaylight.org/gerrit/q/06e3dacea3>`_
  `CONTROLLER-1934 <https://jira.opendaylight.org/browse/CONTROLLER-1934>`_
  : Fix DeleteEntries persisting with wrong index


daexim
------
* `998cceb <https://git.opendaylight.org/gerrit/q/998cceb>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `c003b88 <https://git.opendaylight.org/gerrit/q/c003b88>`_
  : Bump odlparent/yangtools/mdsal to 6.0.10/4.0.12/5.0.13
* `a357660 <https://git.opendaylight.org/gerrit/q/a357660>`_
  : Bump odlparent/yangtools/mdsal


genius
------
* `e4ace891 <https://git.opendaylight.org/gerrit/q/e4ace891>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `9cd67c69 <https://git.opendaylight.org/gerrit/q/9cd67c69>`_
  : Bump odlparent/yangtools/mdsal to 6.0.10/4.0.12/5.0.13
* `2e40c105 <https://git.opendaylight.org/gerrit/q/2e40c105>`_
  : Bump odlparent/yangtools/mdsal


infrautils
----------
* `4a41dd3c <https://git.opendaylight.org/gerrit/q/4a41dd3c>`_
  : Bump odlparent to 6.0.11
* `df9226cb <https://git.opendaylight.org/gerrit/q/df9226cb>`_
  : Bump odlparent to 6.0.10
* `ba21196b <https://git.opendaylight.org/gerrit/q/ba21196b>`_
  : Fix hangs in integration tests
* `8364ac4f <https://git.opendaylight.org/gerrit/q/8364ac4f>`_
  : Bump odlparent to 6.0.9
* `bd895265 <https://git.opendaylight.org/gerrit/q/bd895265>`_
  : Bump to error-prone to 2.4.0
* `d5c1ab5a <https://git.opendaylight.org/gerrit/q/d5c1ab5a>`_
  : Fix error-prone reported warnings
* `51603d55 <https://git.opendaylight.org/gerrit/q/51603d55>`_
  : Use osgi.cmpn for org.osgi.service.cm


integration/distribution
------------------------
* `92ab1cd <https://git.opendaylight.org/gerrit/q/92ab1cd>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `c1b515d <https://git.opendaylight.org/gerrit/q/c1b515d>`_
  : Bump odlparent/yangtools/mdsal
* `314ce46 <https://git.opendaylight.org/gerrit/q/314ce46>`_
  `BGPCEP-903 <https://jira.opendaylight.org/browse/BGPCEP-903>`_
  : Add BGPCEP missing feature repos
* `6ea70e0 <https://git.opendaylight.org/gerrit/q/6ea70e0>`_
  : Do not fail on warnings for docs-linkcheck
* `1947fb8 <https://git.opendaylight.org/gerrit/q/1947fb8>`_
  : Bump odlparent/yangtools/mdsal
* `90bf143 <https://git.opendaylight.org/gerrit/q/90bf143>`_
  : Fix a typo for aaa-artifacts
* `6e59719 <https://git.opendaylight.org/gerrit/q/6e59719>`_
  : Bump common dist after Magnesium SR1


jsonrpc
-------
* `3530a70 <https://git.opendaylight.org/gerrit/q/3530a70>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `dfcde49 <https://git.opendaylight.org/gerrit/q/dfcde49>`_
  : Bump odlparent/yangtools/mdsal to 6.0.10/4.0.12/5.0.13
* `3372b24 <https://git.opendaylight.org/gerrit/q/3372b24>`_
  : Do not fail on warnings for docs-linkcheck
* `8bb40c9 <https://git.opendaylight.org/gerrit/q/8bb40c9>`_
  : Bump odlparent/yangtools/mdsal
* `cf9fe9e <https://git.opendaylight.org/gerrit/q/cf9fe9e>`_
  : Correctly re-use client Bootstrap
* `8513120 <https://git.opendaylight.org/gerrit/q/8513120>`_
  : Move datastore related methods into separate class
* `302c4e9 <https://git.opendaylight.org/gerrit/q/302c4e9>`_
  : Query paramters are not honored/propagated correctly
* `a2f31f3 <https://git.opendaylight.org/gerrit/q/a2f31f3>`_
  : Add simple adapter for JsonReader


lispflowmapping
---------------
* `cfd8342c <https://git.opendaylight.org/gerrit/q/cfd8342c>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `29a4982f <https://git.opendaylight.org/gerrit/q/29a4982f>`_
  : Bump odlparent/yangtools/mdsal to 6.0.10/4.0.12/5.0.13
* `4728897d <https://git.opendaylight.org/gerrit/q/4728897d>`_
  : Do not fail on warnings for docs-linkcheck
* `0b95de13 <https://git.opendaylight.org/gerrit/q/0b95de13>`_
  : Bump odlparent/yangtools/mdsal


netconf
-------
* `eac66698f <https://git.opendaylight.org/gerrit/q/eac66698f>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `a78077ff8 <https://git.opendaylight.org/gerrit/q/a78077ff8>`_
  `NETCONF-704 <https://jira.opendaylight.org/browse/NETCONF-704>`_
  : Add support for nested notifications to NetconfMessageTransformer
* `e2556c960 <https://git.opendaylight.org/gerrit/q/e2556c960>`_
  : Bump odlparent/yangtools/mdsal to 6.0.10/4.0.12/5.0.13
* `52dee8d37 <https://git.opendaylight.org/gerrit/q/52dee8d37>`_
  `NETCONF-700 <https://jira.opendaylight.org/browse/NETCONF-700>`_
  : Fix missing stream leaf value
* `9c7ef4cd8 <https://git.opendaylight.org/gerrit/q/9c7ef4cd8>`_
  `NETCONF-696 <https://jira.opendaylight.org/browse/NETCONF-696>`_
  : Fix Nested YANG 1.1 Action invocation
* `bdd71505b <https://git.opendaylight.org/gerrit/q/bdd71505b>`_
  : Fix OperationsCreator javadoc
* `2b9b225d5 <https://git.opendaylight.org/gerrit/q/2b9b225d5>`_
  : Bump odlparent/yangtools/mdsal
* `3453c508f <https://git.opendaylight.org/gerrit/q/3453c508f>`_
  : Expand rsa-ssh2 signatures
* `2e3c87406 <https://git.opendaylight.org/gerrit/q/2e3c87406>`_
  : Bump mina-sshd to 2.5.1
* `ea554b228 <https://git.opendaylight.org/gerrit/q/ea554b228>`_
  : Add rsa-sha2 signatures to default client
* `d2d4d76a1 <https://git.opendaylight.org/gerrit/q/d2d4d76a1>`_
  `NETCONF-603 <https://jira.opendaylight.org/browse/NETCONF-603>`_
  : Bind operation prefix to correct namespace
* `1fb1b84fd <https://git.opendaylight.org/gerrit/q/1fb1b84fd>`_
  `NETCONF-682 <https://jira.opendaylight.org/browse/NETCONF-682>`_
  : Report HTTP status 409 on DATA_MISSING error
* `1ad233e35 <https://git.opendaylight.org/gerrit/q/1ad233e35>`_
  `NETCONF-702 <https://jira.opendaylight.org/browse/NETCONF-702>`_
  : Revert "Fix nested YANG 1.1 Action invocation"
* `6071fc649 <https://git.opendaylight.org/gerrit/q/6071fc649>`_
  `NETCONF-695 <https://jira.opendaylight.org/browse/NETCONF-695>`_
  : Catch exception when transformer fails to parse
* `126f12f7a <https://git.opendaylight.org/gerrit/q/126f12f7a>`_
  `NETCONF-696 <https://jira.opendaylight.org/browse/NETCONF-696>`_
  : Fix nested YANG 1.1 Action invocation
* `75c0588b8 <https://git.opendaylight.org/gerrit/q/75c0588b8>`_
  : Clean up some log messages and descriptions
* `15ca5bd20 <https://git.opendaylight.org/gerrit/q/15ca5bd20>`_
  `NETCONF-666 <https://jira.opendaylight.org/browse/NETCONF-666>`_
  : Handle multiple rpc-error in the same rpc-reply
* `00eefd0b4 <https://git.opendaylight.org/gerrit/q/00eefd0b4>`_
  `NETCONF-694 <https://jira.opendaylight.org/browse/NETCONF-694>`_
  : Use censor attribute for CLI commands
* `9d4049345 <https://git.opendaylight.org/gerrit/q/9d4049345>`_
  `NETCONF-685 <https://jira.opendaylight.org/browse/NETCONF-685>`_
  : NETCONF-685 : Correctly propagate 'pageNum' query parameter
* `5547c0da3 <https://git.opendaylight.org/gerrit/q/5547c0da3>`_
  `NETCONF-676 <https://jira.opendaylight.org/browse/NETCONF-676>`_
  : Correct POST Location with lists
* `886013466 <https://git.opendaylight.org/gerrit/q/886013466>`_
  : Clean up PostDataTransactionUtil
* `4ec32e34b <https://git.opendaylight.org/gerrit/q/4ec32e34b>`_
  `NETCONF-641 <https://jira.opendaylight.org/browse/NETCONF-641>`_
  : Allow SshClient to be customized via NetconfClientConfiguration
* `d0a714d1a <https://git.opendaylight.org/gerrit/q/d0a714d1a>`_
  `NETCONF-663 <https://jira.opendaylight.org/browse/NETCONF-663>`_
  : Get notification streams error.
* `63ac8a64a <https://git.opendaylight.org/gerrit/q/63ac8a64a>`_
  `NETCONF-338 <https://jira.opendaylight.org/browse/NETCONF-338>`_
  : NETCONF southbound requires notifications.yang model to be present on the device
* `05eae039e <https://git.opendaylight.org/gerrit/q/05eae039e>`_
  `NETCONF-686 <https://jira.opendaylight.org/browse/NETCONF-686>`_
  : Adjust window on read
* `10c371e3d <https://git.opendaylight.org/gerrit/q/10c371e3d>`_
  `NETCONF-674 <https://jira.opendaylight.org/browse/NETCONF-674>`_
  : Re-integrate ssh client
* `560e49a0c <https://git.opendaylight.org/gerrit/q/560e49a0c>`_
  : Upgrade mina-sshd to 2.4.0
* `7cb1993cc <https://git.opendaylight.org/gerrit/q/7cb1993cc>`_
  `NETCONF-677 <https://jira.opendaylight.org/browse/NETCONF-677>`_
  : Shade mina-sshd
* `12abde2a9 <https://git.opendaylight.org/gerrit/q/12abde2a9>`_
  : Eliminate CallHomeSessionContext.nettyChannel
* `5de591cab <https://git.opendaylight.org/gerrit/q/5de591cab>`_
  `NETCONF-674 <https://jira.opendaylight.org/browse/NETCONF-674>`_
  : Do not require NetconfSessionImpl


netvirt
-------
* `e03677a8a <https://git.opendaylight.org/gerrit/q/e03677a8a>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `d464a3e89 <https://git.opendaylight.org/gerrit/q/d464a3e89>`_
  : Bump odlparent/yangtools/mdsal to 6.0.10/4.0.12/5.0.13
* `155b943c2 <https://git.opendaylight.org/gerrit/q/155b943c2>`_
  : Bump odlparent/yangtools/mdsal


neutron
-------
* `172afd0c <https://git.opendaylight.org/gerrit/q/172afd0c>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `1c88800c <https://git.opendaylight.org/gerrit/q/1c88800c>`_
  : Bump odlparent/yangtools/mdsal to 6.0.10/4.0.12/5.0.13
* `72fa4ed8 <https://git.opendaylight.org/gerrit/q/72fa4ed8>`_
  : Bump odlparent/yangtools/mdsal


openflowplugin
--------------
* `7f611849d <https://git.opendaylight.org/gerrit/q/7f611849d>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `61aca1a34 <https://git.opendaylight.org/gerrit/q/61aca1a34>`_
  : Bump odlparent/yangtools/mdsal to 6.0.10/4.0.12/5.0.13
* `0b9f0dad5 <https://git.opendaylight.org/gerrit/q/0b9f0dad5>`_
  : Bump odlparent/yangtools/mdsal


ovsdb
-----
* `024e7a055 <https://git.opendaylight.org/gerrit/q/024e7a055>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `1d0a597ef <https://git.opendaylight.org/gerrit/q/1d0a597ef>`_
  : Bump odlparent/yangtools/mdsal to 6.0.10/4.0.12/5.0.13
* `55d75c14e <https://git.opendaylight.org/gerrit/q/55d75c14e>`_
  `OVSDB-496 <https://jira.opendaylight.org/browse/OVSDB-496>`_
  : Change log level from ERROR to warn.
* `5ef02b77c <https://git.opendaylight.org/gerrit/q/5ef02b77c>`_
  : Bump odlparent/yangtools/mdsal


serviceutils
------------
* `bf83ba1 <https://git.opendaylight.org/gerrit/q/bf83ba1>`_
  : Bump odlparent/yangtools/mdsal to 6.0.11/4.0.13/5.0.14
* `84d5c5e <https://git.opendaylight.org/gerrit/q/84d5c5e>`_
  : Bump odlparent/yangtools/mdsal to 6.0.10/4.0.12/5.0.13
* `2b16f25 <https://git.opendaylight.org/gerrit/q/2b16f25>`_
  : Bump odlparent/yangtools/mdsal

