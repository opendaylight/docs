Sodium-SR3 Release Notes
========================

This page details changes and bug fixes between the Sodium Stability Release 2 (Sodium-SR2)
and the Sodium Stability Release 3 (Sodium-SR3) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `701c04d <https://git.opendaylight.org/gerrit/#/q/701c04d>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `28c6a5f <https://git.opendaylight.org/gerrit/#/q/28c6a5f>`_
  `AAA-194 <https://jira.opendaylight.org/browse/AAA-194>`_
  : AAA-194 Fix for Pattern Matching in Shiro
* `1bd4f30 <https://git.opendaylight.org/gerrit/#/q/1bd4f30>`_
  : Remove jetty-servlet-tester references
* `44a4cc4 <https://git.opendaylight.org/gerrit/#/q/44a4cc4>`_
  : Migrate OSGi compendium references
* `092b77c <https://git.opendaylight.org/gerrit/#/q/092b77c>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13
* `cbb4ae3 <https://git.opendaylight.org/gerrit/#/q/cbb4ae3>`_
  `AAA-191 <https://jira.opendaylight.org/browse/AAA-191>`_
  : Fix NPE when loading certificate
* `5b35f18 <https://git.opendaylight.org/gerrit/#/q/5b35f18>`_
  `AAA-180 <https://jira.opendaylight.org/browse/AAA-180>`_
  : AAA-180: Fix Dynamic authorization
* `2dfd118 <https://git.opendaylight.org/gerrit/#/q/2dfd118>`_
  : Fix variable name s/newUser/new_user/


bgpcep
------
* `ae2e142 <https://git.opendaylight.org/gerrit/#/q/ae2e142>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `97eafef <https://git.opendaylight.org/gerrit/#/q/97eafef>`_
  : Upgrade compendium dependency
* `246fb0e <https://git.opendaylight.org/gerrit/#/q/246fb0e>`_
  `BGPCEP-900 <https://jira.opendaylight.org/browse/BGPCEP-900>`_
  : Handle race-conditions in BGP shutdown code
* `99fa603 <https://git.opendaylight.org/gerrit/#/q/99fa603>`_
  : Remove use of projectinfo property
* `7abbf30 <https://git.opendaylight.org/gerrit/#/q/7abbf30>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13
* `5893a93 <https://git.opendaylight.org/gerrit/#/q/5893a93>`_
  : Use HashMap.computIfAbsent() in getNode()


controller
----------
* `c3ea32e <https://git.opendaylight.org/gerrit/#/q/c3ea32e>`_
  `CONTROLLER-911 <https://jira.opendaylight.org/browse/CONTROLLER-911>`_
  : Add documentation about per-shard settings
* `f728bdc <https://git.opendaylight.org/gerrit/#/q/f728bdc>`_
  `CONTROLLER-1932 <https://jira.opendaylight.org/browse/CONTROLLER-1932>`_
  : Add tests for new RootDataTreeChangeListenerProxy and Actor
* `35f4829 <https://git.opendaylight.org/gerrit/#/q/35f4829>`_
  `CONTROLLER-1935 <https://jira.opendaylight.org/browse/CONTROLLER-1935>`_
  : Do not bump follower term while it is isolated
* `4f0fc3a <https://git.opendaylight.org/gerrit/#/q/4f0fc3a>`_
  `CONTROLLER-1932 <https://jira.opendaylight.org/browse/CONTROLLER-1932>`_
  : Add support for root DTCL listening on all shards in DS
* `ea3c45e <https://git.opendaylight.org/gerrit/#/q/ea3c45e>`_
  `CONTROLLER-1934 <https://jira.opendaylight.org/browse/CONTROLLER-1934>`_
  : Fix DeleteEntries persisting with wrong index
* `01bbed0 <https://git.opendaylight.org/gerrit/#/q/01bbed0>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `d0e35ca <https://git.opendaylight.org/gerrit/#/q/d0e35ca>`_
  : Migrate OSGI compendium reference
* `78e33f2 <https://git.opendaylight.org/gerrit/#/q/78e33f2>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Switch current {ABI,DataStore,Payload}Version to Sodium SR1
* `afe60ba <https://git.opendaylight.org/gerrit/#/q/afe60ba>`_
  `CONTROLLER-1927 <https://jira.opendaylight.org/browse/CONTROLLER-1927>`_
  : Fixup "Leader should always apply modifications as local" regression
* `7c8ba32 <https://git.opendaylight.org/gerrit/#/q/7c8ba32>`_
  : Allow programmatic module sharding configuration
* `42c4744 <https://git.opendaylight.org/gerrit/#/q/42c4744>`_
  `AAA-195 <https://jira.opendaylight.org/browse/AAA-195>`_
  : Do not use passive connections
* `0216166 <https://git.opendaylight.org/gerrit/#/q/0216166>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13
* `4a8aa00 <https://git.opendaylight.org/gerrit/#/q/4a8aa00>`_
  `CONTROLLER-1929 <https://jira.opendaylight.org/browse/CONTROLLER-1929>`_
  : Expose more fine-grained shutdown methods
* `b4d8af6 <https://git.opendaylight.org/gerrit/#/q/b4d8af6>`_
  `CONTROLLER-1929 <https://jira.opendaylight.org/browse/CONTROLLER-1929>`_
  : Propagate TimeoutException when ActorSystem fails to terminate


coe
---
* `90751d0 <https://git.opendaylight.org/gerrit/#/q/90751d0>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `5110ad4 <https://git.opendaylight.org/gerrit/#/q/5110ad4>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


daexim
------
* `847e7f0 <https://git.opendaylight.org/gerrit/#/q/847e7f0>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `d947c5d <https://git.opendaylight.org/gerrit/#/q/d947c5d>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


genius
------
* `e257e20 <https://git.opendaylight.org/gerrit/#/q/e257e20>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `1987bd1 <https://git.opendaylight.org/gerrit/#/q/1987bd1>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


infrautils
----------
* `be95563 <https://git.opendaylight.org/gerrit/#/q/be95563>`_
  : Bump odlparent to 5.0.7
* `094c460 <https://git.opendaylight.org/gerrit/#/q/094c460>`_
  : Make itestutils pull in pax-exam features
* `5e6c6a5 <https://git.opendaylight.org/gerrit/#/q/5e6c6a5>`_
  : Migrate OSGi companion references
* `416ef07 <https://git.opendaylight.org/gerrit/#/q/416ef07>`_
  `ODLPARENT-136 <https://jira.opendaylight.org/browse/ODLPARENT-136>`_
  : Remove unneeded companion dependencies
* `7caf9fd <https://git.opendaylight.org/gerrit/#/q/7caf9fd>`_
  : Bump to odlparent-5.0.6


integration/distribution
------------------------
* `6b3fe87 <https://git.opendaylight.org/gerrit/#/q/6b3fe87>`_
  : Enable SM projects for Sodium SR3
* `06130ca <https://git.opendaylight.org/gerrit/#/q/06130ca>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `4567e52 <https://git.opendaylight.org/gerrit/#/q/4567e52>`_
  : Add cluster scripts to ONAP distribution
* `15fcd55 <https://git.opendaylight.org/gerrit/#/q/15fcd55>`_
  : Update common versions for Sodium SR3
* `da082b6 <https://git.opendaylight.org/gerrit/#/q/da082b6>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13
* `484309c <https://git.opendaylight.org/gerrit/#/q/484309c>`_
  : Update platform versions
* `d6bcd4e <https://git.opendaylight.org/gerrit/#/q/d6bcd4e>`_
  : Add dlux for Sodium SR2
* `c09fd58 <https://git.opendaylight.org/gerrit/#/q/c09fd58>`_
  : Bump TPCE project


lispflowmapping
---------------
* `9792902 <https://git.opendaylight.org/gerrit/#/q/9792902>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `2571933 <https://git.opendaylight.org/gerrit/#/q/2571933>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


netconf
-------
* `d2e6a73 <https://git.opendaylight.org/gerrit/#/q/d2e6a73>`_
  `NETCONF-676 <https://jira.opendaylight.org/browse/NETCONF-676>`_
  : Correct POST Location with lists
* `5b2a2e7 <https://git.opendaylight.org/gerrit/#/q/5b2a2e7>`_
  `NETCONF-641 <https://jira.opendaylight.org/browse/NETCONF-641>`_
  : Allow SshClient to be customized via NetconfClientConfiguration
* `b742372 <https://git.opendaylight.org/gerrit/#/q/b742372>`_
  : Clean up PostDataTransactionUtil
* `30231f1 <https://git.opendaylight.org/gerrit/#/q/30231f1>`_
  `NETCONF-663 <https://jira.opendaylight.org/browse/NETCONF-663>`_
  : Get notification streams error.
* `3622c67 <https://git.opendaylight.org/gerrit/#/q/3622c67>`_
  : Eliminate useless allocation
* `f6c58f4 <https://git.opendaylight.org/gerrit/#/q/f6c58f4>`_
  `NETCONF-338 <https://jira.opendaylight.org/browse/NETCONF-338>`_
  : NETCONF southbound requires notifications.yang model to be present on the device
* `8a3d6ca <https://git.opendaylight.org/gerrit/#/q/8a3d6ca>`_
  `NETCONF-643 <https://jira.opendaylight.org/browse/NETCONF-643>`_
  : Add Markers.confidential() to netconf protocol messages
* `d1145cd <https://git.opendaylight.org/gerrit/#/q/d1145cd>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `65f621f <https://git.opendaylight.org/gerrit/#/q/65f621f>`_
  `NETCONF-686 <https://jira.opendaylight.org/browse/NETCONF-686>`_
  : Adjust window on read
* `f9f2f83 <https://git.opendaylight.org/gerrit/#/q/f9f2f83>`_
  `NETCONF-674 <https://jira.opendaylight.org/browse/NETCONF-674>`_
  : Re-integrate ssh client
* `99c85b9 <https://git.opendaylight.org/gerrit/#/q/99c85b9>`_
  : Upgrade mina-sshd to 2.4.0
* `c383955 <https://git.opendaylight.org/gerrit/#/q/c383955>`_
  `NETCONF-677 <https://jira.opendaylight.org/browse/NETCONF-677>`_
  : Shade mina-sshd
* `4897337 <https://git.opendaylight.org/gerrit/#/q/4897337>`_
  : Eliminate CallHomeSessionContext.nettyChannel
* `e4d58f6 <https://git.opendaylight.org/gerrit/#/q/e4d58f6>`_
  `NETCONF-674 <https://jira.opendaylight.org/browse/NETCONF-674>`_
  : Do not require NetconfSessionImpl
* `979f5df <https://git.opendaylight.org/gerrit/#/q/979f5df>`_
  : Add sources to shaded-exificient
* `3fe2808 <https://git.opendaylight.org/gerrit/#/q/3fe2808>`_
  : Exclude xmlpull's MANIFEST.MF
* `39e3144 <https://git.opendaylight.org/gerrit/#/q/39e3144>`_
  : Remove unneeded sshd dependency
* `359ffe4 <https://git.opendaylight.org/gerrit/#/q/359ffe4>`_
  : Add eddsa dependency to netconf-testtool
* `5d3e0e4 <https://git.opendaylight.org/gerrit/#/q/5d3e0e4>`_
  : Remove unneeded blueprint-core dependency
* `6db74b2 <https://git.opendaylight.org/gerrit/#/q/6db74b2>`_
  : Move eddsa dependency
* `d7e66a2 <https://git.opendaylight.org/gerrit/#/q/d7e66a2>`_
  : Pull eddsa into netconf-netty-util
* `155954a <https://git.opendaylight.org/gerrit/#/q/155954a>`_
  `NETCONF-657 <https://jira.opendaylight.org/browse/NETCONF-657>`_
  : Add plain PATCH capability to RFC8040 server
* `d2facdb <https://git.opendaylight.org/gerrit/#/q/d2facdb>`_
  : Reuse SchemaContext.NAME for base NETCONF data qname
* `2b7482c <https://git.opendaylight.org/gerrit/#/q/2b7482c>`_
  `NETCONF-665 <https://jira.opendaylight.org/browse/NETCONF-665>`_
  : Add a dedicated AuthenticationFailedException
* `d442f2c <https://git.opendaylight.org/gerrit/#/q/d442f2c>`_
  `NETCONF-664 <https://jira.opendaylight.org/browse/NETCONF-664>`_
  : Fix defensive subscriber removal
* `5a24eec <https://git.opendaylight.org/gerrit/#/q/5a24eec>`_
  : Files should not be executable
* `50803c6 <https://git.opendaylight.org/gerrit/#/q/50803c6>`_
  `NETCONF-497 <https://jira.opendaylight.org/browse/NETCONF-497>`_
  : Do not consider query depth in initial namespace
* `a002f5a <https://git.opendaylight.org/gerrit/#/q/a002f5a>`_
  : Fix default value check
* `c20e3a3 <https://git.opendaylight.org/gerrit/#/q/c20e3a3>`_
  : Remove references to sal-common-impl
* `68640d2 <https://git.opendaylight.org/gerrit/#/q/68640d2>`_
  : Migrate Compendium reference
* `d7db135 <https://git.opendaylight.org/gerrit/#/q/d7db135>`_
  : Bring doc building up to python3
* `df7f081 <https://git.opendaylight.org/gerrit/#/q/df7f081>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13
* `d5b99cf <https://git.opendaylight.org/gerrit/#/q/d5b99cf>`_
  `NETCONF-125 <https://jira.opendaylight.org/browse/NETCONF-125>`_
  : NETCONF-125 connection timeout and between timeout are fixed
* `5f4aab8 <https://git.opendaylight.org/gerrit/#/q/5f4aab8>`_
  : Remove unneeded override
* `359c24a <https://git.opendaylight.org/gerrit/#/q/359c24a>`_
  `NETCONF-653 <https://jira.opendaylight.org/browse/NETCONF-653>`_
  : Reject multiple sessions with the same host key
* `00b7827 <https://git.opendaylight.org/gerrit/#/q/00b7827>`_
  `NETCONF-568 <https://jira.opendaylight.org/browse/NETCONF-568>`_
  : Do not attempt to parse empty RPC/action reply
* `3c0626b <https://git.opendaylight.org/gerrit/#/q/3c0626b>`_
  `NETCONF-641 <https://jira.opendaylight.org/browse/NETCONF-641>`_
  : Add option to provide custom SshClient for netconf-client
* `de6bc64 <https://git.opendaylight.org/gerrit/#/q/de6bc64>`_
  `NETCONF-610 <https://jira.opendaylight.org/browse/NETCONF-610>`_
  : Custom scheme-cache-directory yang models are not replicated among cluster members


netvirt
-------
* `d1764df <https://git.opendaylight.org/gerrit/#/q/d1764df>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `18e3f63 <https://git.opendaylight.org/gerrit/#/q/18e3f63>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


neutron
-------
* `3a8fe6e <https://git.opendaylight.org/gerrit/#/q/3a8fe6e>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `738c668 <https://git.opendaylight.org/gerrit/#/q/738c668>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


openflowplugin
--------------
* `a63030b <https://git.opendaylight.org/gerrit/#/q/a63030b>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `c63e6d6 <https://git.opendaylight.org/gerrit/#/q/c63e6d6>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13
* `4e6394c <https://git.opendaylight.org/gerrit/#/q/4e6394c>`_
  `OPNFLWPLUG-1086 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1086>`_
  : OPNFLWPLUG-1086: Reconciliation framework failure when starting cbench tool for the first time
* `79477e5 <https://git.opendaylight.org/gerrit/#/q/79477e5>`_
  `OPNFLWPLUG-1084 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1084>`_
  : OPNFLWPLUG-1084 Device operational is not getting created if device reconciliation is not enabled
* `2d5f539 <https://git.opendaylight.org/gerrit/#/q/2d5f539>`_
  `OPNFLWPLUG-1074 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1074>`_
  : OPNFLWPLUG-1074: table stats not available after a switch flap
* `b21d866 <https://git.opendaylight.org/gerrit/#/q/b21d866>`_
  `OPNFLWPLUG-1083 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1083>`_
  : OPNFLWPLUG-1083: Stats frozen after applying 2 sec delay in OF channel


ovsdb
-----
* `0ef966a <https://git.opendaylight.org/gerrit/#/q/0ef966a>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `967cab6 <https://git.opendaylight.org/gerrit/#/q/967cab6>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


serviceutils
------------
* `fd579bd <https://git.opendaylight.org/gerrit/#/q/fd579bd>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `0e05eb3 <https://git.opendaylight.org/gerrit/#/q/0e05eb3>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13


sfc
---
* `6eea8b3 <https://git.opendaylight.org/gerrit/#/q/6eea8b3>`_
  : Bump odlparent/yangtools/mdsal to 5.0.7/3.0.11/4.0.14
* `663dded <https://git.opendaylight.org/gerrit/#/q/663dded>`_
  : Bump odlparent/yangtools/mdsal to 5.0.6/3.0.10/4.0.13
