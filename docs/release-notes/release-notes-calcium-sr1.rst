Calcium-SR1 Release Notes
=========================

This page details changes and bug fixes between the Calcium Release
and the Calcium Stability Release 1 (Calcium-SR1) of OpenDaylight.


daexim
------
* `e3ba4f6 <https://git.opendaylight.org/gerrit/q/e3ba4f6>`_
  : Bump netconf to 7.0.7
* `7f0f024 <https://git.opendaylight.org/gerrit/q/7f0f024>`_
  : Bump upstreams
* `39019a8 <https://git.opendaylight.org/gerrit/q/39019a8>`_
  : Bump upstreams
* `5f32a30 <https://git.opendaylight.org/gerrit/q/5f32a30>`_
  : Fix karaf packaging


integration/distribution
------------------------
* `58cbb70b <https://git.opendaylight.org/gerrit/q/58cbb70b>`_
  : Bump transportpce
* `c18ba1ef <https://git.opendaylight.org/gerrit/q/c18ba1ef>`_
  : Bump upstreams
* `e0b10d53 <https://git.opendaylight.org/gerrit/q/e0b10d53>`_
  : Bump transportpce versions
* `7ad15e7e <https://git.opendaylight.org/gerrit/q/7ad15e7e>`_
  : Bump upstreams
* `1d37f7d7 <https://git.opendaylight.org/gerrit/q/1d37f7d7>`_
  : Bump transportpce versions
* `eb0b0215 <https://git.opendaylight.org/gerrit/q/eb0b0215>`_
  : Bump upstreams


jsonrpc
-------
* `fddc0839 <https://git.opendaylight.org/gerrit/q/fddc0839>`_
  : Bump netconf to 7.0.7
* `39d6d6a5 <https://git.opendaylight.org/gerrit/q/39d6d6a5>`_
  : Bump upstreams
* `7afcb982 <https://git.opendaylight.org/gerrit/q/7afcb982>`_
  : Bump upstreams


lispflowmapping
---------------
* `2bd75f2f <https://git.opendaylight.org/gerrit/q/2bd75f2f>`_
  : Bump netconf to 7.0.7
* `feec50f3 <https://git.opendaylight.org/gerrit/q/feec50f3>`_
  : Bump upstreams
* `7ac49679 <https://git.opendaylight.org/gerrit/q/7ac49679>`_
  : Bump upstreams
* `d2206690 <https://git.opendaylight.org/gerrit/q/d2206690>`_
  : Fix karaf packaging
* `7f3e673c <https://git.opendaylight.org/gerrit/q/7f3e673c>`_
  : Fixup checkstyle


openflowplugin
--------------
* `541774450 <https://git.opendaylight.org/gerrit/q/541774450>`_
  : Bump netconf to 7.0.7
* `65959364e <https://git.opendaylight.org/gerrit/q/65959364e>`_
  : Bump upstreams
* `e6b8c99c6 <https://git.opendaylight.org/gerrit/q/e6b8c99c6>`_
  : Rework OpenFlowPluginProviderImpl connection provider tracking
* `7ba9597bd <https://git.opendaylight.org/gerrit/q/7ba9597bd>`_
  : Fixup openflow-protocol-impl dependencies
* `ce1a49362 <https://git.opendaylight.org/gerrit/q/ce1a49362>`_
  : Refactor ServerFacade
* `945b2dd05 <https://git.opendaylight.org/gerrit/q/945b2dd05>`_
  : Refactor ShutdownProvider.shutdown()
* `b753a6614 <https://git.opendaylight.org/gerrit/q/b753a6614>`_
  : Refactor SwitchConnectionProvider a bit
* `acb41d869 <https://git.opendaylight.org/gerrit/q/acb41d869>`_
  : Refactor TcpConnectionInitializer
* `dbd582fcb <https://git.opendaylight.org/gerrit/q/dbd582fcb>`_
  : Remove ServerFacade.setThreadConfig()
* `5a64f2402 <https://git.opendaylight.org/gerrit/q/5a64f2402>`_
  : Change getIsOnlineFuture() return type
* `b9595ff8c <https://git.opendaylight.org/gerrit/q/b9595ff8c>`_
  : Bump upstreams
* `41e93b484 <https://git.opendaylight.org/gerrit/q/41e93b484>`_
  `OPNFLWPLUG-1129 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1129>`_
  : Wire OpenFlowPluginProviderImpl via OSGi DS
* `1baa73aa7 <https://git.opendaylight.org/gerrit/q/1baa73aa7>`_
  `OPNFLWPLUG-1127 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1127>`_
  : Clean up command naming
* `1d3367406 <https://git.opendaylight.org/gerrit/q/1d3367406>`_
  `OPNFLWPLUG-1127 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1127>`_
  : Eliminate blueprint for openflowplugins-impl karaf commands
* `e56621c6e <https://git.opendaylight.org/gerrit/q/e56621c6e>`_
  `OPNFLWPLUG-1131 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1131>`_
  : Refactor ConfigurationServiceFactoryOsgiImpl
* `d790db9ff <https://git.opendaylight.org/gerrit/q/d790db9ff>`_
  `OPNFLWPLUG-1130 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1130>`_
  : Use OSGi DS for MessageIntelligenceAgencyImpl
* `266179414 <https://git.opendaylight.org/gerrit/q/266179414>`_
  : Fix MastershipChangeServiceManagerImpl services
* `25b230742 <https://git.opendaylight.org/gerrit/q/25b230742>`_
  : Hide PingPongDataBroker
* `48e7ad49a <https://git.opendaylight.org/gerrit/q/48e7ad49a>`_
  `OPNFLWPLUG-1129 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1129>`_
  : Rewire SwitchConnectionProvider configuration
* `546d2650d <https://git.opendaylight.org/gerrit/q/546d2650d>`_
  `OPNFLWPLUG-1129 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1129>`_
  : Remove SwitchConnectionProviderList
* `1cc443770 <https://git.opendaylight.org/gerrit/q/1cc443770>`_
  : Clean up dependencies a bit
* `5ae202299 <https://git.opendaylight.org/gerrit/q/5ae202299>`_
  : Fix checkstyle


ovsdb
-----
* `954a5258a <https://git.opendaylight.org/gerrit/q/954a5258a>`_
  : Bump netconf to 7.0.7
* `334ddaaec <https://git.opendaylight.org/gerrit/q/334ddaaec>`_
  : Bump upstreams
* `f2e3d282d <https://git.opendaylight.org/gerrit/q/f2e3d282d>`_
  : Bump upstreams
* `5362b9cb5 <https://git.opendaylight.org/gerrit/q/5362b9cb5>`_
  : Fixup checkstyle
* `343462b27 <https://git.opendaylight.org/gerrit/q/343462b27>`_
  : Fix karaf packaging


serviceutils
------------
* `04e67af <https://git.opendaylight.org/gerrit/q/04e67af>`_
  : Bump upstreams
* `7aad243 <https://git.opendaylight.org/gerrit/q/7aad243>`_
  : Bump upstreams
* `b69b1df <https://git.opendaylight.org/gerrit/q/b69b1df>`_
  : Fix karaf packaging

