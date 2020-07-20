Sodium-SR3 Release Notes
========================

This page details changes and bug fixes between the Sodium Stability Release 2 (Sodium-SR2)
and the Sodium Stability Release 3 (Sodium-SR3) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `701c04d9 <https://git.opendaylight.org/gerrit/q/701c04d9>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `28c6a5ff <https://git.opendaylight.org/gerrit/q/28c6a5ff>`_
  `AAA-194 <https://jira.opendaylight.org/browse/AAA-194>`_
  : AAA-194 Fix for Pattern Matching in Shiro
* `1bd4f300 <https://git.opendaylight.org/gerrit/q/1bd4f300>`_
  : Remove jetty-servlet-tester references
* `44a4cc40 <https://git.opendaylight.org/gerrit/q/44a4cc40>`_
  : Migrate OSGi compendium references
* `092b77c9 <https://git.opendaylight.org/gerrit/q/092b77c9>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13
* `cbb4ae35 <https://git.opendaylight.org/gerrit/q/cbb4ae35>`_
  `AAA-191 <https://jira.opendaylight.org/browse/AAA-191>`_
  : Fix NPE when loading certificate
* `5b35f181 <https://git.opendaylight.org/gerrit/q/5b35f181>`_
  `AAA-180 <https://jira.opendaylight.org/browse/AAA-180>`_
  : AAA-180: Fix Dynamic authorization
* `2dfd1182 <https://git.opendaylight.org/gerrit/q/2dfd1182>`_
  : Fix variable name s/newUser/new_user/


bgpcep
------
* `ae2e14242 <https://git.opendaylight.org/gerrit/q/ae2e14242>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `97eafeff8 <https://git.opendaylight.org/gerrit/q/97eafeff8>`_
  : Upgrade compendium dependency
* `246fb0e27 <https://git.opendaylight.org/gerrit/q/246fb0e27>`_
  `BGPCEP-900 <https://jira.opendaylight.org/browse/BGPCEP-900>`_
  : Handle race-conditions in BGP shutdown code
* `99fa6030b <https://git.opendaylight.org/gerrit/q/99fa6030b>`_
  : Remove use of projectinfo property
* `7abbf30ff <https://git.opendaylight.org/gerrit/q/7abbf30ff>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13
* `5893a9396 <https://git.opendaylight.org/gerrit/q/5893a9396>`_
  : Use HashMap.computIfAbsent() in getNode()


controller
----------
* `c3ea32ecbe <https://git.opendaylight.org/gerrit/q/c3ea32ecbe>`_
  `CONTROLLER-911 <https://jira.opendaylight.org/browse/CONTROLLER-911>`_
  : Add documentation about per-shard settings
* `f728bdc4d2 <https://git.opendaylight.org/gerrit/q/f728bdc4d2>`_
  `CONTROLLER-1932 <https://jira.opendaylight.org/browse/CONTROLLER-1932>`_
  : Add tests for new RootDataTreeChangeListenerProxy and Actor
* `35f4829f85 <https://git.opendaylight.org/gerrit/q/35f4829f85>`_
  `CONTROLLER-1935 <https://jira.opendaylight.org/browse/CONTROLLER-1935>`_
  : Do not bump follower term while it is isolated
* `4f0fc3a788 <https://git.opendaylight.org/gerrit/q/4f0fc3a788>`_
  `CONTROLLER-1932 <https://jira.opendaylight.org/browse/CONTROLLER-1932>`_
  : Add support for root DTCL listening on all shards in DS
* `ea3c45eb94 <https://git.opendaylight.org/gerrit/q/ea3c45eb94>`_
  `CONTROLLER-1934 <https://jira.opendaylight.org/browse/CONTROLLER-1934>`_
  : Fix DeleteEntries persisting with wrong index
* `01bbed0e8c <https://git.opendaylight.org/gerrit/q/01bbed0e8c>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `d0e35ca48b <https://git.opendaylight.org/gerrit/q/d0e35ca48b>`_
  : Migrate OSGI compendium reference
* `78e33f2690 <https://git.opendaylight.org/gerrit/q/78e33f2690>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Switch current {ABI,DataStore,Payload}Version to Sodium SR1
* `afe60bac11 <https://git.opendaylight.org/gerrit/q/afe60bac11>`_
  `CONTROLLER-1927 <https://jira.opendaylight.org/browse/CONTROLLER-1927>`_
  : Fixup "Leader should always apply modifications as local" regression
* `7c8ba32614 <https://git.opendaylight.org/gerrit/q/7c8ba32614>`_
  : Allow programmatic module sharding configuration
* `42c4744ef1 <https://git.opendaylight.org/gerrit/q/42c4744ef1>`_
  `AAA-195 <https://jira.opendaylight.org/browse/AAA-195>`_
  : Do not use passive connections
* `02161666c9 <https://git.opendaylight.org/gerrit/q/02161666c9>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13
* `4a8aa00e56 <https://git.opendaylight.org/gerrit/q/4a8aa00e56>`_
  `CONTROLLER-1929 <https://jira.opendaylight.org/browse/CONTROLLER-1929>`_
  : Expose more fine-grained shutdown methods
* `b4d8af6a74 <https://git.opendaylight.org/gerrit/q/b4d8af6a74>`_
  `CONTROLLER-1929 <https://jira.opendaylight.org/browse/CONTROLLER-1929>`_
  : Propagate TimeoutException when ActorSystem fails to terminate


coe
---
* `90751d0 <https://git.opendaylight.org/gerrit/q/90751d0>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `5110ad4 <https://git.opendaylight.org/gerrit/q/5110ad4>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


daexim
------
* `847e7f0 <https://git.opendaylight.org/gerrit/q/847e7f0>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `d947c5d <https://git.opendaylight.org/gerrit/q/d947c5d>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


genius
------
* `e257e206 <https://git.opendaylight.org/gerrit/q/e257e206>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `1987bd1c <https://git.opendaylight.org/gerrit/q/1987bd1c>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


infrautils
----------
* `be955633 <https://git.opendaylight.org/gerrit/q/be955633>`_
  : Bump odlparent to 5.0.7
* `094c4603 <https://git.opendaylight.org/gerrit/q/094c4603>`_
  : Make itestutils pull in pax-exam features
* `5e6c6a56 <https://git.opendaylight.org/gerrit/q/5e6c6a56>`_
  : Migrate OSGi companion references
* `416ef078 <https://git.opendaylight.org/gerrit/q/416ef078>`_
  `ODLPARENT-136 <https://jira.opendaylight.org/browse/ODLPARENT-136>`_
  : Remove unneeded companion dependencies
* `7caf9fd2 <https://git.opendaylight.org/gerrit/q/7caf9fd2>`_
  : Bump to odlparent-5.0.6


integration/distribution
------------------------
* `6b3fe87 <https://git.opendaylight.org/gerrit/q/6b3fe87>`_
  : Enable SM projects for Sodium SR3
* `06130ca <https://git.opendaylight.org/gerrit/q/06130ca>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `4567e52 <https://git.opendaylight.org/gerrit/q/4567e52>`_
  : Add cluster scripts to ONAP distribution
* `15fcd55 <https://git.opendaylight.org/gerrit/q/15fcd55>`_
  : Update common versions for Sodium SR3
* `da082b6 <https://git.opendaylight.org/gerrit/q/da082b6>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13
* `484309c <https://git.opendaylight.org/gerrit/q/484309c>`_
  : Update platform versions
* `d6bcd4e <https://git.opendaylight.org/gerrit/q/d6bcd4e>`_
  : Add dlux for Sodium SR2
* `c09fd58 <https://git.opendaylight.org/gerrit/q/c09fd58>`_
  : Bump TPCE project


lispflowmapping
---------------
* `97929021 <https://git.opendaylight.org/gerrit/q/97929021>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `2571933f <https://git.opendaylight.org/gerrit/q/2571933f>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


netconf
-------
* `d2e6a73b0 <https://git.opendaylight.org/gerrit/q/d2e6a73b0>`_
  `NETCONF-676 <https://jira.opendaylight.org/browse/NETCONF-676>`_
  : Correct POST Location with lists
* `5b2a2e768 <https://git.opendaylight.org/gerrit/q/5b2a2e768>`_
  `NETCONF-641 <https://jira.opendaylight.org/browse/NETCONF-641>`_
  : Allow SshClient to be customized via NetconfClientConfiguration
* `b74237267 <https://git.opendaylight.org/gerrit/q/b74237267>`_
  : Clean up PostDataTransactionUtil
* `30231f156 <https://git.opendaylight.org/gerrit/q/30231f156>`_
  `NETCONF-663 <https://jira.opendaylight.org/browse/NETCONF-663>`_
  : Get notification streams error.
* `3622c671c <https://git.opendaylight.org/gerrit/q/3622c671c>`_
  : Eliminate useless allocation
* `f6c58f4e5 <https://git.opendaylight.org/gerrit/q/f6c58f4e5>`_
  `NETCONF-338 <https://jira.opendaylight.org/browse/NETCONF-338>`_
  : NETCONF southbound requires notifications.yang model to be present on the device
* `8a3d6ca7c <https://git.opendaylight.org/gerrit/q/8a3d6ca7c>`_
  `NETCONF-643 <https://jira.opendaylight.org/browse/NETCONF-643>`_
  : Add Markers.confidential() to netconf protocol messages
* `d1145cd25 <https://git.opendaylight.org/gerrit/q/d1145cd25>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `65f621ffc <https://git.opendaylight.org/gerrit/q/65f621ffc>`_
  `NETCONF-686 <https://jira.opendaylight.org/browse/NETCONF-686>`_
  : Adjust window on read
* `f9f2f83fa <https://git.opendaylight.org/gerrit/q/f9f2f83fa>`_
  `NETCONF-674 <https://jira.opendaylight.org/browse/NETCONF-674>`_
  : Re-integrate ssh client
* `99c85b9d6 <https://git.opendaylight.org/gerrit/q/99c85b9d6>`_
  : Upgrade mina-sshd to 2.4.0
* `c383955c2 <https://git.opendaylight.org/gerrit/q/c383955c2>`_
  `NETCONF-677 <https://jira.opendaylight.org/browse/NETCONF-677>`_
  : Shade mina-sshd
* `48973379f <https://git.opendaylight.org/gerrit/q/48973379f>`_
  : Eliminate CallHomeSessionContext.nettyChannel
* `e4d58f680 <https://git.opendaylight.org/gerrit/q/e4d58f680>`_
  `NETCONF-674 <https://jira.opendaylight.org/browse/NETCONF-674>`_
  : Do not require NetconfSessionImpl
* `979f5dfc1 <https://git.opendaylight.org/gerrit/q/979f5dfc1>`_
  : Add sources to shaded-exificient
* `3fe280884 <https://git.opendaylight.org/gerrit/q/3fe280884>`_
  : Exclude xmlpull's MANIFEST.MF
* `39e314458 <https://git.opendaylight.org/gerrit/q/39e314458>`_
  : Remove unneeded sshd dependency
* `359ffe454 <https://git.opendaylight.org/gerrit/q/359ffe454>`_
  : Add eddsa dependency to netconf-testtool
* `5d3e0e488 <https://git.opendaylight.org/gerrit/q/5d3e0e488>`_
  : Remove unneeded blueprint-core dependency
* `6db74b29d <https://git.opendaylight.org/gerrit/q/6db74b29d>`_
  : Move eddsa dependency
* `d7e66a237 <https://git.opendaylight.org/gerrit/q/d7e66a237>`_
  : Pull eddsa into netconf-netty-util
* `155954a2f <https://git.opendaylight.org/gerrit/q/155954a2f>`_
  `NETCONF-657 <https://jira.opendaylight.org/browse/NETCONF-657>`_
  : Add plain PATCH capability to RFC8040 server
* `d2facdbf8 <https://git.opendaylight.org/gerrit/q/d2facdbf8>`_
  : Reuse SchemaContext.NAME for base NETCONF data qname
* `2b7482c46 <https://git.opendaylight.org/gerrit/q/2b7482c46>`_
  `NETCONF-665 <https://jira.opendaylight.org/browse/NETCONF-665>`_
  : Add a dedicated AuthenticationFailedException
* `d442f2c30 <https://git.opendaylight.org/gerrit/q/d442f2c30>`_
  `NETCONF-664 <https://jira.opendaylight.org/browse/NETCONF-664>`_
  : Fix defensive subscriber removal
* `5a24eec00 <https://git.opendaylight.org/gerrit/q/5a24eec00>`_
  : Files should not be executable
* `50803c603 <https://git.opendaylight.org/gerrit/q/50803c603>`_
  `NETCONF-497 <https://jira.opendaylight.org/browse/NETCONF-497>`_
  : Do not consider query depth in initial namespace
* `a002f5a40 <https://git.opendaylight.org/gerrit/q/a002f5a40>`_
  : Fix default value check
* `c20e3a3b4 <https://git.opendaylight.org/gerrit/q/c20e3a3b4>`_
  : Remove references to sal-common-impl
* `68640d232 <https://git.opendaylight.org/gerrit/q/68640d232>`_
  : Migrate Compendium reference
* `d7db13578 <https://git.opendaylight.org/gerrit/q/d7db13578>`_
  : Bring doc building up to python3
* `df7f08126 <https://git.opendaylight.org/gerrit/q/df7f08126>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13
* `d5b99cffb <https://git.opendaylight.org/gerrit/q/d5b99cffb>`_
  `NETCONF-125 <https://jira.opendaylight.org/browse/NETCONF-125>`_
  : NETCONF-125 connection timeout and between timeout are fixed
* `5f4aab80d <https://git.opendaylight.org/gerrit/q/5f4aab80d>`_
  : Remove unneeded override
* `359c24a5f <https://git.opendaylight.org/gerrit/q/359c24a5f>`_
  `NETCONF-653 <https://jira.opendaylight.org/browse/NETCONF-653>`_
  : Reject multiple sessions with the same host key
* `00b782700 <https://git.opendaylight.org/gerrit/q/00b782700>`_
  `NETCONF-568 <https://jira.opendaylight.org/browse/NETCONF-568>`_
  : Do not attempt to parse empty RPC/action reply
* `3c0626b42 <https://git.opendaylight.org/gerrit/q/3c0626b42>`_
  `NETCONF-641 <https://jira.opendaylight.org/browse/NETCONF-641>`_
  : Add option to provide custom SshClient for netconf-client
* `de6bc64fd <https://git.opendaylight.org/gerrit/q/de6bc64fd>`_
  `NETCONF-610 <https://jira.opendaylight.org/browse/NETCONF-610>`_
  : Custom scheme-cache-directory yang models are not replicated among cluster members


netvirt
-------
* `d1764df56 <https://git.opendaylight.org/gerrit/q/d1764df56>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `18e3f6383 <https://git.opendaylight.org/gerrit/q/18e3f6383>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


neutron
-------
* `3a8fe6ea <https://git.opendaylight.org/gerrit/q/3a8fe6ea>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `738c668e <https://git.opendaylight.org/gerrit/q/738c668e>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


openflowplugin
--------------
* `a63030b7c <https://git.opendaylight.org/gerrit/q/a63030b7c>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `c63e6d659 <https://git.opendaylight.org/gerrit/q/c63e6d659>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13
* `4e6394c5e <https://git.opendaylight.org/gerrit/q/4e6394c5e>`_
  `OPNFLWPLUG-1086 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1086>`_
  : OPNFLWPLUG-1086: Reconciliation framework failure when starting cbench tool for the first time
* `79477e580 <https://git.opendaylight.org/gerrit/q/79477e580>`_
  `OPNFLWPLUG-1084 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1084>`_
  : OPNFLWPLUG-1084 Device operational is not getting created if device reconciliation is not enabled
* `2d5f53916 <https://git.opendaylight.org/gerrit/q/2d5f53916>`_
  `OPNFLWPLUG-1074 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1074>`_
  : OPNFLWPLUG-1074: table stats not available after a switch flap
* `b21d86660 <https://git.opendaylight.org/gerrit/q/b21d86660>`_
  `OPNFLWPLUG-1083 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1083>`_
  : OPNFLWPLUG-1083: Stats frozen after applying 2 sec delay in OF channel


ovsdb
-----
* `0ef966a47 <https://git.opendaylight.org/gerrit/q/0ef966a47>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `967cab664 <https://git.opendaylight.org/gerrit/q/967cab664>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


serviceutils
------------
* `fd579bd <https://git.opendaylight.org/gerrit/q/fd579bd>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `0e05eb3 <https://git.opendaylight.org/gerrit/q/0e05eb3>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


sfc
---
* `6eea8b3f <https://git.opendaylight.org/gerrit/q/6eea8b3f>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `663dded6 <https://git.opendaylight.org/gerrit/q/663dded6>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13

