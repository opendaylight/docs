Aluminium-SR4 Release Notes
===========================

This page details changes and bug fixes between the Aluminium Stability Release 3 (Aluminium-SR3)
and the Aluminium Stability Release 4 (Aluminium-SR4) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `50154d02 <https://git.opendaylight.org/gerrit/q/50154d02>`_
  : Bump upstreams for Aluminium SR4
* `d5399e90 <https://git.opendaylight.org/gerrit/q/d5399e90>`_
  `AAA-188 <https://jira.opendaylight.org/browse/AAA-188>`_
  : Fix repackaged-shiro sources
* `1964b4f8 <https://git.opendaylight.org/gerrit/q/1964b4f8>`_
  : Tie together CORS filter initialization constats
* `3634d36d <https://git.opendaylight.org/gerrit/q/3634d36d>`_
  : Support async servlets in Jetty
* `b36de442 <https://git.opendaylight.org/gerrit/q/b36de442>`_
  `AAA-188 <https://jira.opendaylight.org/browse/AAA-188>`_
  : Bump shiro to 1.7.1


bgpcep
------
* `37f752765 <https://git.opendaylight.org/gerrit/q/37f752765>`_
  : Bump upstreams for Aluminium SR4
* `5189d860a <https://git.opendaylight.org/gerrit/q/5189d860a>`_
  `BGPCEP-920 <https://jira.opendaylight.org/browse/BGPCEP-920>`_
  : Re-create transaction chain upon failure in TopologyStatsProvider
* `888d0198b <https://git.opendaylight.org/gerrit/q/888d0198b>`_
  `BGPCEP-948 <https://jira.opendaylight.org/browse/BGPCEP-948>`_
  : Instantiate BgpPeer only once
* `72d4c74a5 <https://git.opendaylight.org/gerrit/q/72d4c74a5>`_
  `BGPCEP-920 <https://jira.opendaylight.org/browse/BGPCEP-920>`_
  : Rework synchronization of SessionStateImpl
* `70fa14472 <https://git.opendaylight.org/gerrit/q/70fa14472>`_
  `BGPCEP-920 <https://jira.opendaylight.org/browse/BGPCEP-920>`_
  : Handle TopologyNodeState release properly


daexim
------
* `f9f0ace <https://git.opendaylight.org/gerrit/q/f9f0ace>`_
  : Bump upstreams for Aluminium SR4


genius
------
* `d5682713 <https://git.opendaylight.org/gerrit/q/d5682713>`_
  : Bump upstreams for Aluminium SR4


integration/distribution
------------------------
* `bd12594 <https://git.opendaylight.org/gerrit/q/bd12594>`_
  : Bump upstreams for Aluminium SR4
* `366a143 <https://git.opendaylight.org/gerrit/q/366a143>`_
  : Use actual version number in karaf pom.xml
* `dd69217 <https://git.opendaylight.org/gerrit/q/dd69217>`_
  : Update version after Aluminium SR3 release
* `0016cb9 <https://git.opendaylight.org/gerrit/q/0016cb9>`_
  : Update versions for Aluminium SR3
* `6274180 <https://git.opendaylight.org/gerrit/q/6274180>`_
  : Update Al development platform versions for SR3


jsonrpc
-------
* `b242cb1 <https://git.opendaylight.org/gerrit/q/b242cb1>`_
  : Bump upstreams for Aluminium SR4


lispflowmapping
---------------
* `8dfc98a4 <https://git.opendaylight.org/gerrit/q/8dfc98a4>`_
  : Bump upstreams for Aluminium SR4


netconf
-------
* `4eba0cde9 <https://git.opendaylight.org/gerrit/q/4eba0cde9>`_
  `NETCONF-726 <https://jira.opendaylight.org/browse/NETCONF-726>`_
  : Do not use YIID parser for writing
* `c683b277a <https://git.opendaylight.org/gerrit/q/c683b277a>`_
  : Bump upstreams for Aluminium SR4
* `31295eb04 <https://git.opendaylight.org/gerrit/q/31295eb04>`_
  `NETCONF-776 <https://jira.opendaylight.org/browse/NETCONF-776>`_
  : Enable TCP_NODELAY for SSH client/server
* `d3d48df66 <https://git.opendaylight.org/gerrit/q/d3d48df66>`_
  `NETCONF-780 <https://jira.opendaylight.org/browse/NETCONF-780>`_
  : Add support for RFC8072 media types
* `17e84b41e <https://git.opendaylight.org/gerrit/q/17e84b41e>`_
  `NETCONF-775 <https://jira.opendaylight.org/browse/NETCONF-775>`_
  : Use MediaType.SERVER_SENT_EVENTS
* `87e843c59 <https://git.opendaylight.org/gerrit/q/87e843c59>`_
  : Improve event fragmentation
* `3fcdf2627 <https://git.opendaylight.org/gerrit/q/3fcdf2627>`_
  : Use a simple isEmpty() check
* `330737a5a <https://git.opendaylight.org/gerrit/q/330737a5a>`_
  : Update RestconfDataServiceImpl stream lifecycle
* `037f97aa7 <https://git.opendaylight.org/gerrit/q/037f97aa7>`_
  `NETCONF-726 <https://jira.opendaylight.org/browse/NETCONF-726>`_
  : Added full YIID to ietf-restconf-monitoring DS
* `7289c7327 <https://git.opendaylight.org/gerrit/q/7289c7327>`_
  : Cleanup datastore interactions
* `654c8cbda <https://git.opendaylight.org/gerrit/q/654c8cbda>`_
  `NETCONF-725 <https://jira.opendaylight.org/browse/NETCONF-725>`_
  : Upgrade restconf-nb-rfc8040 to use RFC8525
* `fb6abf6fc <https://git.opendaylight.org/gerrit/q/fb6abf6fc>`_
  `NETCONF-725 <https://jira.opendaylight.org/browse/NETCONF-725>`_
  : Use schemaless builders in RestconfMappingNodeUtil
* `b0fe88840 <https://git.opendaylight.org/gerrit/q/b0fe88840>`_
  `NETCONF-725 <https://jira.opendaylight.org/browse/NETCONF-725>`_
  : Binding QName constants to YANG Library model
* `40eba00b5 <https://git.opendaylight.org/gerrit/q/40eba00b5>`_
  `NETCONF-735 <https://jira.opendaylight.org/browse/NETCONF-735>`_
  : Integration of RESTCONF fields to NETCONF filters
* `75e778ae1 <https://git.opendaylight.org/gerrit/q/75e778ae1>`_
  `NETCONF-744 <https://jira.opendaylight.org/browse/NETCONF-744>`_
  : Fixed reading whole list/leaf-list using GET/GET-CONFIG RPC
* `0b032e950 <https://git.opendaylight.org/gerrit/q/0b032e950>`_
  `NETCONF-735 <https://jira.opendaylight.org/browse/NETCONF-735>`_
  : Added schemaless creation of filter structure
* `240a3d7ff <https://git.opendaylight.org/gerrit/q/240a3d7ff>`_
  `RFC-6241 <https://jira.opendaylight.org/browse/RFC-6241>`_
  : Explicit reading of list keys using subtree filtering
* `91871d75f <https://git.opendaylight.org/gerrit/q/91871d75f>`_
  `NETCONF-735 <https://jira.opendaylight.org/browse/NETCONF-735>`_
  : Implement subtree filtering using fields
* `300bdd6c4 <https://git.opendaylight.org/gerrit/q/300bdd6c4>`_
  : Use ReadOperations.exists() to check existence
* `648fc6c07 <https://git.opendaylight.org/gerrit/q/648fc6c07>`_
  `NETCONF-705 <https://jira.opendaylight.org/browse/NETCONF-705>`_
  : Fix futures handling in the NetconfRestconfStrategy
* `9b20c0547 <https://git.opendaylight.org/gerrit/q/9b20c0547>`_
  `NETCONF-705 <https://jira.opendaylight.org/browse/NETCONF-705>`_
  : Fix permanent lock on the running configuration via RESTconf
* `2f3828a44 <https://git.opendaylight.org/gerrit/q/2f3828a44>`_
  `NETCONF-765 <https://jira.opendaylight.org/browse/NETCONF-765>`_
  : Add diffie-hellman-group14-sha1 to the list of default key exchange algorithms
* `5b644bda4 <https://git.opendaylight.org/gerrit/q/5b644bda4>`_
  `NETCONF-752 <https://jira.opendaylight.org/browse/NETCONF-752>`_
  : Upgrade sshd to 2.6.0
* `de391b88a <https://git.opendaylight.org/gerrit/q/de391b88a>`_
  `NETCONF-735 <https://jira.opendaylight.org/browse/NETCONF-735>`_
  : Add fields-aware NETCONF DOM API
* `be63eea44 <https://git.opendaylight.org/gerrit/q/be63eea44>`_
  `NETCONF-705 <https://jira.opendaylight.org/browse/NETCONF-705>`_
  : Refactor NetconfDataTreeServiceImpl
* `bf199d0da <https://git.opendaylight.org/gerrit/q/bf199d0da>`_
  `NETCONF-755 <https://jira.opendaylight.org/browse/NETCONF-755>`_
  : Unwanted commit to non candidate device fix


netvirt
-------
* `7a7eddd7f <https://git.opendaylight.org/gerrit/q/7a7eddd7f>`_
  : Bump upstreams for Aluminium SR4


neutron
-------
* `60404a25 <https://git.opendaylight.org/gerrit/q/60404a25>`_
  : Bump upstreams for Aluminium SR4


openflowplugin
--------------
* `1248287a4 <https://git.opendaylight.org/gerrit/q/1248287a4>`_
  : Bump upstreams for Aluminium SR4


ovsdb
-----
* `d7a543006 <https://git.opendaylight.org/gerrit/q/d7a543006>`_
  : Bump upstreams for Aluminium SR4


serviceutils
------------
* `acd7830 <https://git.opendaylight.org/gerrit/q/acd7830>`_
  : Bump upstreams for Aluminium SR4

