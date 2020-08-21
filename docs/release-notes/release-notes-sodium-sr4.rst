Sodium-SR4 Release Notes
========================

This page details changes and bug fixes between the Sodium Stability Release 3 (Sodium-SR3)
and the Sodium Stability Release 4 (Sodium-SR4) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `1a864373 <https://git.opendaylight.org/gerrit/q/1a864373>`_
  : Do not fail on warnings for docs-linkcheck
* `4757c947 <https://git.opendaylight.org/gerrit/q/4757c947>`_
  : Bump odlparent/yangtools/mdsal to 5.0.11/3.0.16/4.0.17
* `b745c1a7 <https://git.opendaylight.org/gerrit/q/b745c1a7>`_
  : Update dependency-check


bgpcep
------
* `aa617da07 <https://git.opendaylight.org/gerrit/q/aa617da07>`_
  `BGPCEP-910 <https://jira.opendaylight.org/browse/BGPCEP-910>`_
  : Non ipv4 advertising peer causes BGP session flaps
* `c075b12c0 <https://git.opendaylight.org/gerrit/q/c075b12c0>`_
  `BGPCEP-915 <https://jira.opendaylight.org/browse/BGPCEP-915>`_
  : Process open mesage more defensively
* `d0834d968 <https://git.opendaylight.org/gerrit/q/d0834d968>`_
  : Bump odlparent/yangtools/mdsal to 5.0.11/3.0.16/4.0.17
* `7e452e6e3 <https://git.opendaylight.org/gerrit/q/7e452e6e3>`_
  `BGPCEP-916 <https://jira.opendaylight.org/browse/BGPCEP-916>`_
  : Add an explanatory messages around TCP-MD5
* `9d219c452 <https://git.opendaylight.org/gerrit/q/9d219c452>`_
  : Attach sources to test-jar
* `c0c9fa6bc <https://git.opendaylight.org/gerrit/q/c0c9fa6bc>`_
  : Do not fail on warnings for docs-linkcheck
* `7ccb00121 <https://git.opendaylight.org/gerrit/q/7ccb00121>`_
  `BGPCEP-901 <https://jira.opendaylight.org/browse/BGPCEP-901>`_
  : Prevent deadlock when updating PCEP stats when Tx chain fails


controller
----------
* `78dbae481c <https://git.opendaylight.org/gerrit/q/78dbae481c>`_
  : Bump odlparent/yangtools/mdsal to 5.0.11/3.0.16/4.0.17
* `438014a18e <https://git.opendaylight.org/gerrit/q/438014a18e>`_
  : Do not fail on warnings for docs-linkcheck
* `5c78ed0702 <https://git.opendaylight.org/gerrit/q/5c78ed0702>`_
  : Do not deploy opendaylight/model pom
* `4aec5ce1f2 <https://git.opendaylight.org/gerrit/q/4aec5ce1f2>`_
  : Fix intermittent IT hangs
* `688da70993 <https://git.opendaylight.org/gerrit/q/688da70993>`_
  `CONTROLLER-1913 <https://jira.opendaylight.org/browse/CONTROLLER-1913>`_
  : Enable overwrite test suite
* `75aa76c635 <https://git.opendaylight.org/gerrit/q/75aa76c635>`_
  `CONTROLLER-1950 <https://jira.opendaylight.org/browse/CONTROLLER-1950>`_
  : Split modifications on datastore root
* `678cb6ade2 <https://git.opendaylight.org/gerrit/q/678cb6ade2>`_
  : Simplify LocalTransactionContext
* `8ec5f25a20 <https://git.opendaylight.org/gerrit/q/8ec5f25a20>`_
  `CONTROLLER-1951 <https://jira.opendaylight.org/browse/CONTROLLER-1951>`_
  : Refactor TransactionContext.executeModification()
* `918285d16d <https://git.opendaylight.org/gerrit/q/918285d16d>`_
  : Split TransactionChainProxy.combineWithPriorReadOnlyTxFutures()
* `8c3a40e5c5 <https://git.opendaylight.org/gerrit/q/8c3a40e5c5>`_
  `CONTROLLER-1913 <https://jira.opendaylight.org/browse/CONTROLLER-1913>`_
  : Add a missing space
* `d63c249c30 <https://git.opendaylight.org/gerrit/q/d63c249c30>`_
  `CONTROLLER-1950 <https://jira.opendaylight.org/browse/CONTROLLER-1950>`_
  : Move checking/logging out of executeModification()
* `443a2f66bd <https://git.opendaylight.org/gerrit/q/443a2f66bd>`_
  : Clean up TransactionProxy a bit
* `2114b53e07 <https://git.opendaylight.org/gerrit/q/2114b53e07>`_
  : Fix NoSuchElementException in toString()
* `b7ead23301 <https://git.opendaylight.org/gerrit/q/b7ead23301>`_
  `CONTROLLER-1913 <https://jira.opendaylight.org/browse/CONTROLLER-1913>`_
  : Add an option to trigger snapshot creation on root overwrites
* `e830296759 <https://git.opendaylight.org/gerrit/q/e830296759>`_
  `CONTROLLER-1949 <https://jira.opendaylight.org/browse/CONTROLLER-1949>`_
  : Add option to disable default ActorSystemQuarantinedEvent handling
* `11abfbefca <https://git.opendaylight.org/gerrit/q/11abfbefca>`_
  : Add UnsignedLongRangeSet.toString()
* `16c36370f6 <https://git.opendaylight.org/gerrit/q/16c36370f6>`_
  `CONTROLLER-1941 <https://jira.opendaylight.org/browse/CONTROLLER-1941>`_
  : Apply a workaround for the isolation of quarantined node
* `0aa788f7c4 <https://git.opendaylight.org/gerrit/q/0aa788f7c4>`_
  : Add sender actor to the ForwardingDataTreeChangeListener
* `2562991c45 <https://git.opendaylight.org/gerrit/q/2562991c45>`_
  `CONTROLLER-1915 <https://jira.opendaylight.org/browse/CONTROLLER-1915>`_
  : Allow incremental recovery
* `47a9c28947 <https://git.opendaylight.org/gerrit/q/47a9c28947>`_
  `CONTROLLER-1943 <https://jira.opendaylight.org/browse/CONTROLLER-1943>`_
  : Fix OpsManager registry instantiation


coe
---
* `9f2ff6e <https://git.opendaylight.org/gerrit/q/9f2ff6e>`_
  : Bump odlparent/yangtools/mdsal to 5.0.11/3.0.16/4.0.17


daexim
------
* `89b4c3e <https://git.opendaylight.org/gerrit/q/89b4c3e>`_
  : Bump odlparent/yangtools/mdsal to 5.0.11/3.0.16/4.0.17


genius
------
* `7b8d136f <https://git.opendaylight.org/gerrit/q/7b8d136f>`_
  : Bump odlparent/yangtools/mdsal to 5.0.11/3.0.16/4.0.17


infrautils
----------
* `3d815f72 <https://git.opendaylight.org/gerrit/q/3d815f72>`_
  : Bump odlparent to 5.0.11
* `944b65bf <https://git.opendaylight.org/gerrit/q/944b65bf>`_
  `INFRAUTILS-65 <https://jira.opendaylight.org/browse/INFRAUTILS-65>`_
  : Remove unneeded dependencies on odl-infrautils-inject
* `afc11ac7 <https://git.opendaylight.org/gerrit/q/afc11ac7>`_
  `INFRAUTILS-65 <https://jira.opendaylight.org/browse/INFRAUTILS-65>`_
  : Split out ready-guice
* `924aa272 <https://git.opendaylight.org/gerrit/q/924aa272>`_
  `INFRAUTILS-65 <https://jira.opendaylight.org/browse/INFRAUTILS-65>`_
  : Do not pollute annotations to runtime
* `355dda90 <https://git.opendaylight.org/gerrit/q/355dda90>`_
  : Fix hangs in integration tests


integration/distribution
------------------------
* `e2e22ce <https://git.opendaylight.org/gerrit/q/e2e22ce>`_
  : Bump odlparent/yangtools/mdsal
* `d24dc17 <https://git.opendaylight.org/gerrit/q/d24dc17>`_
  : Post-Sodium SR3 documentation update
* `52d6c34 <https://git.opendaylight.org/gerrit/q/52d6c34>`_
  : Do not fail on warnings for docs-linkcheck
* `b9bcf1e <https://git.opendaylight.org/gerrit/q/b9bcf1e>`_
  : Remove dlux from Sodium SR3 distribution


lispflowmapping
---------------
* `d2a07707 <https://git.opendaylight.org/gerrit/q/d2a07707>`_
  : Bump odlparent/yangtools/mdsal to 5.0.11/3.0.16/4.0.17
* `bdf2528d <https://git.opendaylight.org/gerrit/q/bdf2528d>`_
  : Do not fail on warnings for docs-linkcheck


netconf
-------
* `8ba93b740 <https://git.opendaylight.org/gerrit/q/8ba93b740>`_
  `NETCONF-312 <https://jira.opendaylight.org/browse/NETCONF-312>`_
  : Return Location in resp header for notif subscrip
* `ebe6e071c <https://git.opendaylight.org/gerrit/q/ebe6e071c>`_
  : Bump odlparent/yangtools/mdsal to 5.0.11/3.0.16/4.0.17
* `0f42b1589 <https://git.opendaylight.org/gerrit/q/0f42b1589>`_
  : Expand rsa-ssh2 signatures
* `60534520f <https://git.opendaylight.org/gerrit/q/60534520f>`_
  `NETCONF-700 <https://jira.opendaylight.org/browse/NETCONF-700>`_
  : Fix missing stream leaf value
* `40fcd1009 <https://git.opendaylight.org/gerrit/q/40fcd1009>`_
  `NETCONF-696 <https://jira.opendaylight.org/browse/NETCONF-696>`_
  : Fix Nested YANG 1.1 Action invocation
* `7d79923bd <https://git.opendaylight.org/gerrit/q/7d79923bd>`_
  : Bump mina-sshd to 2.5.1
* `890c30119 <https://git.opendaylight.org/gerrit/q/890c30119>`_
  `NETCONF-603 <https://jira.opendaylight.org/browse/NETCONF-603>`_
  : Bind operation prefix to correct namespace
* `d56cfd2f8 <https://git.opendaylight.org/gerrit/q/d56cfd2f8>`_
  : Add rsa-sha2 signatures to default client
* `512463195 <https://git.opendaylight.org/gerrit/q/512463195>`_
  `NETCONF-682 <https://jira.opendaylight.org/browse/NETCONF-682>`_
  : Report HTTP status 409 on DATA_MISSING error
* `599966a95 <https://git.opendaylight.org/gerrit/q/599966a95>`_
  `NETCONF-666 <https://jira.opendaylight.org/browse/NETCONF-666>`_
  : Handle multiple rpc-error in the same rpc-reply
* `5ce9c1989 <https://git.opendaylight.org/gerrit/q/5ce9c1989>`_
  `NETCONF-702 <https://jira.opendaylight.org/browse/NETCONF-702>`_
  : Revert "Fix nested YANG 1.1 Action invocation"
* `2b148710e <https://git.opendaylight.org/gerrit/q/2b148710e>`_
  `NETCONF-694 <https://jira.opendaylight.org/browse/NETCONF-694>`_
  : Use censor attribute for CLI commands
* `fce007c3b <https://git.opendaylight.org/gerrit/q/fce007c3b>`_
  `NETCONF-696 <https://jira.opendaylight.org/browse/NETCONF-696>`_
  : Fix nested YANG 1.1 Action invocation
* `4a6984171 <https://git.opendaylight.org/gerrit/q/4a6984171>`_
  `NETCONF-685 <https://jira.opendaylight.org/browse/NETCONF-685>`_
  : NETCONF-685 : Correctly propagate 'pageNum' query parameter


netvirt
-------
* `1e7b37576 <https://git.opendaylight.org/gerrit/q/1e7b37576>`_
  : Fix json code blocks with valid json
* `48c716ee3 <https://git.opendaylight.org/gerrit/q/48c716ee3>`_
  : Bump odlparent/yangtools/mdsal


neutron
-------
* `e298b06d <https://git.opendaylight.org/gerrit/q/e298b06d>`_
  : Bump odlparent/yangtools/mdsal to 5.0.11/3.0.16/4.0.17


openflowplugin
--------------
* `a80c69e79 <https://git.opendaylight.org/gerrit/q/a80c69e79>`_
  : Bump odlparent/yangtools/mdsal to 5.0.11/3.0.16/4.0.17


ovsdb
-----
* `87618d1a3 <https://git.opendaylight.org/gerrit/q/87618d1a3>`_
  : Bump odlparent/yangtools/mdsal to 5.0.11/3.0.16/4.0.17


serviceutils
------------
* `c409b7d <https://git.opendaylight.org/gerrit/q/c409b7d>`_
  : Bump odlparent/yangtools/mdsal to 5.0.11/3.0.16/4.0.17


sfc
---
* `a4e359f9 <https://git.opendaylight.org/gerrit/q/a4e359f9>`_
  : Bump odlparent/yangtools/mdsal to 5.0.11/3.0.16/4.0.17

