Magnesium-SR3 Release Notes
===========================

This page details changes and bug fixes between the Magnesium Stability Release 2 (Magnesium-SR2)
and the Magnesium Stability Release 3 (Magnesium-SR3) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `a48bd213 <https://git.opendaylight.org/gerrit/q/a48bd213>`_
  : Bump upstream versions
* `7490542c <https://git.opendaylight.org/gerrit/q/7490542c>`_
  : Use StandardCharsets.UTF_8
* `22e2e9cb <https://git.opendaylight.org/gerrit/q/22e2e9cb>`_
  `AAA-201 <https://jira.opendaylight.org/browse/AAA-201>`_
  : Repair AuthenticationManager
* `f53a86f7 <https://git.opendaylight.org/gerrit/q/f53a86f7>`_
  : Do not fail on warnings for docs-linkcheck


bgpcep
------
* `6d0582e80 <https://git.opendaylight.org/gerrit/q/6d0582e80>`_
  `BGPCEP-906 <https://jira.opendaylight.org/browse/BGPCEP-906>`_
  : Propagate only negotiated afi/safi routes to adj-rib-out
* `9809c6d7a <https://git.opendaylight.org/gerrit/q/9809c6d7a>`_
  : Bump upstream versions
* `fd2ba8334 <https://git.opendaylight.org/gerrit/q/fd2ba8334>`_
  : remove some useless empty lines
* `f0769647d <https://git.opendaylight.org/gerrit/q/f0769647d>`_
  : update wiki URL in poms
* `bc01d790e <https://git.opendaylight.org/gerrit/q/bc01d790e>`_
  : refine path declaration in config-loader FileWatch
* `7d49f4209 <https://git.opendaylight.org/gerrit/q/7d49f4209>`_
  `BGPCEP-915 <https://jira.opendaylight.org/browse/BGPCEP-915>`_
  : Handle the case of empty optional capabilities
* `6527f59f7 <https://git.opendaylight.org/gerrit/q/6527f59f7>`_
  `BGPCEP-910 <https://jira.opendaylight.org/browse/BGPCEP-910>`_
  : Non ipv4 advertising peer causes BGP session flaps
* `8a6da07d8 <https://git.opendaylight.org/gerrit/q/8a6da07d8>`_
  `BGPCEP-915 <https://jira.opendaylight.org/browse/BGPCEP-915>`_
  : Process open mesage more defensively


controller
----------
* `121603c6b5 <https://git.opendaylight.org/gerrit/q/121603c6b5>`_
  `CONTROLLER-1928 <https://jira.opendaylight.org/browse/CONTROLLER-1928>`_
  : Make sure to clear candidate from memory
* `be5e66cd42 <https://git.opendaylight.org/gerrit/q/be5e66cd42>`_
  : Bump upstream versions
* `40c466e1c6 <https://git.opendaylight.org/gerrit/q/40c466e1c6>`_
  `CONTROLLER-1963 <https://jira.opendaylight.org/browse/CONTROLLER-1963>`_
  : Expose AskTimeoutException counter from DatastoreInfoMXBean
* `0fa11fe973 <https://git.opendaylight.org/gerrit/q/0fa11fe973>`_
  : Migrate SnapshotManagerTest
* `a39a37d2f8 <https://git.opendaylight.org/gerrit/q/a39a37d2f8>`_
  : Migrate ReplicatedLogImplTest
* `6635826071 <https://git.opendaylight.org/gerrit/q/6635826071>`_
  `CONTROLLER-1957 <https://jira.opendaylight.org/browse/CONTROLLER-1957>`_
  : Do not reset datasize after a fake snapshot
* `441c4a44c8 <https://git.opendaylight.org/gerrit/q/441c4a44c8>`_
  `CONTROLLER-1957 <https://jira.opendaylight.org/browse/CONTROLLER-1957>`_
  : Log replicated log dataSize changes
* `5b99d189e0 <https://git.opendaylight.org/gerrit/q/5b99d189e0>`_
  : Reformat AbstractReplicatedLogImpl
* `eca0b63083 <https://git.opendaylight.org/gerrit/q/eca0b63083>`_
  : Clean up AbstractReplicatedLogImplTest
* `42feecb52d <https://git.opendaylight.org/gerrit/q/42feecb52d>`_
  : Correct javadoc reference
* `5ed0b16605 <https://git.opendaylight.org/gerrit/q/5ed0b16605>`_
  `CONTROLLER-1961 <https://jira.opendaylight.org/browse/CONTROLLER-1961>`_
  : Odl-jolokia package superfluous artifacts
* `318414b07f <https://git.opendaylight.org/gerrit/q/318414b07f>`_
  `CONTROLLER-1956 <https://jira.opendaylight.org/browse/CONTROLLER-1956>`_
  : Add direct in-memory journal threshold


daexim
------
* `9d2eafe <https://git.opendaylight.org/gerrit/q/9d2eafe>`_
  : Bump upstream versions


genius
------
* `52a13e75 <https://git.opendaylight.org/gerrit/q/52a13e75>`_
  : Bump upstream versions
* `df966905 <https://git.opendaylight.org/gerrit/q/df966905>`_
  : Fix loose typing in ItmMonitorWorker


infrautils
----------
* `84484363 <https://git.opendaylight.org/gerrit/q/84484363>`_
  : Bump odlparent to 6.0.12


integration/distribution
------------------------
* `140f748 <https://git.opendaylight.org/gerrit/q/140f748>`_
  `INTTEST-123 <https://jira.opendaylight.org/browse/INTTEST-123>`_
  : Do not package mdsal features
* `ed62a2e <https://git.opendaylight.org/gerrit/q/ed62a2e>`_
  : Bump upstream versions
* `a14510c <https://git.opendaylight.org/gerrit/q/a14510c>`_
  : Update versions after Magnesium SR2 release
* `7d88ebb <https://git.opendaylight.org/gerrit/q/7d88ebb>`_
  : add a note on restconf-artifacts BOM deprecation
* `0e54c9a <https://git.opendaylight.org/gerrit/q/0e54c9a>`_
  : add precisions on BOMs in platform versions doc
* `b844513 <https://git.opendaylight.org/gerrit/q/b844513>`_
  `INTTEST-123 <https://jira.opendaylight.org/browse/INTTEST-123>`_
  : Do not package mdsal.git's features-mdsal
* `c5f11a6 <https://git.opendaylight.org/gerrit/q/c5f11a6>`_
  : Add yangtools/mdsal experimental features
* `9ee7a82 <https://git.opendaylight.org/gerrit/q/9ee7a82>`_
  : Re-add TPCE to common distribution
* `019fc66 <https://git.opendaylight.org/gerrit/q/019fc66>`_
  : Update platform versions after Mg SR2


jsonrpc
-------
* `ff3d93e <https://git.opendaylight.org/gerrit/q/ff3d93e>`_
  : Bump upstream versions


lispflowmapping
---------------
* `a065c610 <https://git.opendaylight.org/gerrit/q/a065c610>`_
  : Bump upstream versions


netconf
-------
* `053ebe8ce <https://git.opendaylight.org/gerrit/q/053ebe8ce>`_
  : Bump upstream versions
* `95f511769 <https://git.opendaylight.org/gerrit/q/95f511769>`_
  `NETCONF-741 <https://jira.opendaylight.org/browse/NETCONF-741>`_
  : Correct operations input/output media types
* `c048a78f7 <https://git.opendaylight.org/gerrit/q/c048a78f7>`_
  `NETCONF-737 <https://jira.opendaylight.org/browse/NETCONF-737>`_
  : fix example string generation for types with isBasicLatin pattern
* `b68e21554 <https://git.opendaylight.org/gerrit/q/b68e21554>`_
  : Test SchemaExportContentYangBodyWriter
* `953592d62 <https://git.opendaylight.org/gerrit/q/953592d62>`_
  `SSHD-1028 <https://jira.opendaylight.org/browse/SSHD-1028>`_
  : Add workaround for SSH connection issue related to SSHD-1028
* `31f1175d1 <https://git.opendaylight.org/gerrit/q/31f1175d1>`_
  : Squash registrations
* `91d24fb0e <https://git.opendaylight.org/gerrit/q/91d24fb0e>`_
  `NETCONF-675 <https://jira.opendaylight.org/browse/NETCONF-675>`_
  : Add SchemaSourceRegistration list to NetconfConnectorDTO
* `c9ebd8a2f <https://git.opendaylight.org/gerrit/q/c9ebd8a2f>`_
  `NETCONF-720 <https://jira.opendaylight.org/browse/NETCONF-720>`_
  : If there is only one revision is present, return it.
* `7f579c921 <https://git.opendaylight.org/gerrit/q/7f579c921>`_
  `NETCONF-716 <https://jira.opendaylight.org/browse/NETCONF-716>`_
  : Revert "Revert "Upgrade mina-sshd to 2.4.0""
* `bfc169eee <https://git.opendaylight.org/gerrit/q/bfc169eee>`_
  : Use YangConstants.RFC6020_YIN_MEDIA_TYPE
* `4d339917b <https://git.opendaylight.org/gerrit/q/4d339917b>`_
  : Use YangConstants.RFC6020_YANG_MEDIA_TYPE
* `714823970 <https://git.opendaylight.org/gerrit/q/714823970>`_
  `NETCONF-716 <https://jira.opendaylight.org/browse/NETCONF-716>`_
  : Enable server heartbeats
* `a2eacd3d1 <https://git.opendaylight.org/gerrit/q/a2eacd3d1>`_
  `NETCONF-716 <https://jira.opendaylight.org/browse/NETCONF-716>`_
  : Disable NIO read timeout by default
* `3438ffd94 <https://git.opendaylight.org/gerrit/q/3438ffd94>`_
  `NETCONF-716 <https://jira.opendaylight.org/browse/NETCONF-716>`_
  : Revert "Upgrade mina-sshd to 2.4.0"
* `402f804f6 <https://git.opendaylight.org/gerrit/q/402f804f6>`_
  : Revert "Expand rsa-ssh2 signatures"
* `7332caad8 <https://git.opendaylight.org/gerrit/q/7332caad8>`_
  `SR-1 <https://jira.opendaylight.org/browse/SR-1>`_
  : Extra superfluous edit-config RPC sent
* `1e2095d4c <https://git.opendaylight.org/gerrit/q/1e2095d4c>`_
  `NETCONF-670 <https://jira.opendaylight.org/browse/NETCONF-670>`_
  : Add import for netconf-node-optional
* `3101cd8f5 <https://git.opendaylight.org/gerrit/q/3101cd8f5>`_
  `NETCONF-312 <https://jira.opendaylight.org/browse/NETCONF-312>`_
  : Return Location in resp header for notif subscrip
* `a33c37210 <https://git.opendaylight.org/gerrit/q/a33c37210>`_
  `NETCONF-715 <https://jira.opendaylight.org/browse/NETCONF-715>`_
  : Synchronize stop and reschedule keepalive methods


netvirt
-------
* `f36aa770a <https://git.opendaylight.org/gerrit/q/f36aa770a>`_
  : Bump upstream versions


neutron
-------
* `57638a94 <https://git.opendaylight.org/gerrit/q/57638a94>`_
  : Bump upstream versions


openflowplugin
--------------
* `39abb3244 <https://git.opendaylight.org/gerrit/q/39abb3244>`_
  : Bump upstream versions
* `42df9b0ee <https://git.opendaylight.org/gerrit/q/42df9b0ee>`_
  `OPNFLWPLUG-1101 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1101>`_
  : Clear Flow registry on all flow remove
* `11b5c0b5a <https://git.opendaylight.org/gerrit/q/11b5c0b5a>`_
  `OPNFLWPLUG-1094 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1094>`_
  : Add SwitchCertificate attributes in TLS failure notification


ovsdb
-----
* `9d4eab402 <https://git.opendaylight.org/gerrit/q/9d4eab402>`_
  : Bump upstream versions


serviceutils
------------
* `c2e2b3e <https://git.opendaylight.org/gerrit/q/c2e2b3e>`_
  : Bump upstream versions

