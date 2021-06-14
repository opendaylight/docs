Silicon-SR1 Release Notes
=========================

This page details changes and bug fixes between the Silicon Release
and the Silicon Stability Release 1 (Silicon-SR1) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


bgpcep
------
* `f6b26a729 <https://git.opendaylight.org/gerrit/q/f6b26a729>`_
  : Bump MRI upstreams
* `58245c112 <https://git.opendaylight.org/gerrit/q/58245c112>`_
  `BGPCEP-920 <https://jira.opendaylight.org/browse/BGPCEP-920>`_
  : Re-create transaction chain upon failure in TopologyStatsProvider
* `602dc1b0c <https://git.opendaylight.org/gerrit/q/602dc1b0c>`_
  `BGPCEP-948 <https://jira.opendaylight.org/browse/BGPCEP-948>`_
  : Instantiate BgpPeer only once
* `cb762f5e0 <https://git.opendaylight.org/gerrit/q/cb762f5e0>`_
  `BGPCEP-920 <https://jira.opendaylight.org/browse/BGPCEP-920>`_
  : Rework synchronization of SessionStateImpl
* `f09d292b3 <https://git.opendaylight.org/gerrit/q/f09d292b3>`_
  `BGPCEP-920 <https://jira.opendaylight.org/browse/BGPCEP-920>`_
  : Handle TopologyNodeState release properly


daexim
------
* `762b556 <https://git.opendaylight.org/gerrit/q/762b556>`_
  : Bump MRI upstreams


integration/distribution
------------------------
* `c65c643 <https://git.opendaylight.org/gerrit/q/c65c643>`_
  `CONTROLLER-1968 <https://jira.opendaylight.org/browse/CONTROLLER-1968>`_
  : Update distribution scripts
* `267d522 <https://git.opendaylight.org/gerrit/q/267d522>`_
  : Bump MRI upstreams
* `232c1a6 <https://git.opendaylight.org/gerrit/q/232c1a6>`_
  : Use actual version number in karaf pom.xml
* `75ffd68 <https://git.opendaylight.org/gerrit/q/75ffd68>`_
  : Overwrite karaf pom.xml for building distribution
* `e99f5ac <https://git.opendaylight.org/gerrit/q/e99f5ac>`_
  : Change Silicon version to 14.0.0
* `265d2cb <https://git.opendaylight.org/gerrit/q/265d2cb>`_
  : Remove devnet from distribution
* `6a20d2f <https://git.opendaylight.org/gerrit/q/6a20d2f>`_
  `TRNSPRTPCE-407 <https://jira.opendaylight.org/browse/TRNSPRTPCE-407>`_
  : Activate transportpce + update version & features


jsonrpc
-------
* `51661d2 <https://git.opendaylight.org/gerrit/q/51661d2>`_
  : Bump MRI upstreams


lispflowmapping
---------------
* `6ee75433 <https://git.opendaylight.org/gerrit/q/6ee75433>`_
  : Bump MRI upstreams


neutron
-------
* `2e15310d <https://git.opendaylight.org/gerrit/q/2e15310d>`_
  : Bump MRI upstreams
* `31e3e20e <https://git.opendaylight.org/gerrit/q/31e3e20e>`_
  : Cleanup @StatusCodes formatting


openflowplugin
--------------
* `4dbdc120f <https://git.opendaylight.org/gerrit/q/4dbdc120f>`_
  : Bump MRI upstreams


ovsdb
-----
* `fd564b399 <https://git.opendaylight.org/gerrit/q/fd564b399>`_
  : Bump MRI upstreams


serviceutils
------------
* `7313878 <https://git.opendaylight.org/gerrit/q/7313878>`_
  : Bump MRI upstreams

transportpce
------------
* `23450283 <https://git.opendaylight.org/gerrit/q/23450283>`_
  : Prepare use of Lighty core dev SNAPSHOTs
* `b1027f95 <https://git.opendaylight.org/gerrit/q/b1027f95>`_
  : Make honeynode install script more robust
* `6cfc5a22 <https://git.opendaylight.org/gerrit/q/6cfc5a22>`_
  : Fix bug in ODU interface creation for device 7.1
* `28af7d79 <https://git.opendaylight.org/gerrit/q/28af7d79>`_
  : Increase sims startup timeout in functional tests
* `1c17e949 <https://git.opendaylight.org/gerrit/q/1c17e949>`_
  : Refactor (un)registration of device listeners
* `36944907 <https://git.opendaylight.org/gerrit/q/36944907>`_
  : Handle notification reception on port state change
* `8a936d90 <https://git.opendaylight.org/gerrit/q/8a936d90>`_
  : Bump project version to 3.1.0-SNAPSHOT
* `79e4710c <https://git.opendaylight.org/gerrit/q/79e4710c>`_
  : Update portmapping on port state notification
* `a0118cc7 <https://git.opendaylight.org/gerrit/q/a0118cc7>`_
  : Increase controller startup timeout in func tests
* `2cda4862 <https://git.opendaylight.org/gerrit/q/2cda4862>`_
  : Decrease docs tox profiles logs verbosity
* `d8272fdf <https://git.opendaylight.org/gerrit/q/d8272fdf>`_
  : Upgrade honeynode sim for device 1.2.1 and 7.1
* `e26c778f <https://git.opendaylight.org/gerrit/q/e26c778f>`_
  : Update device transactions operation
* `49e4bc3b <https://git.opendaylight.org/gerrit/q/49e4bc3b>`_
  : Bump deps to new Silicon dev versions
* `450c421e <https://git.opendaylight.org/gerrit/q/450c421e>`_
  : Lighty support Silicon migration
* `156b223e <https://git.opendaylight.org/gerrit/q/156b223e>`_
  : Fix function test PCE 400G return code
* `3fa24c50 <https://git.opendaylight.org/gerrit/q/3fa24c50>`_
  : Add nbinotifications feature documentation
* `24628383 <https://git.opendaylight.org/gerrit/q/24628383>`_
  : Improve docs/conf.py
* `795a9970 <https://git.opendaylight.org/gerrit/q/795a9970>`_
  : Add Dmaap client feature documentation
* `669891a8 <https://git.opendaylight.org/gerrit/q/669891a8>`_
  : fix issue in Lighty for PortMapping
