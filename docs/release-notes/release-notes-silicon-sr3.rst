Silicon-SR3 Release Notes
=========================

This page details changes and bug fixes between the Silicon Stability Release 2 (Silicon-SR2)
and the Silicon Stability Release 3 (Silicon-SR3) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


bgpcep
------
* `536bfc1f7 <https://git.opendaylight.org/gerrit/q/536bfc1f7>`_
  : Bump MRI upstreams
* `6ff715b0d <https://git.opendaylight.org/gerrit/q/6ff715b0d>`_
  `BGPCEP-987 <https://jira.opendaylight.org/browse/BGPCEP-987>`_
  : Recognized Extended Administrative Group TLV
* `b0c2dd558 <https://git.opendaylight.org/gerrit/q/b0c2dd558>`_
  : Close read-only transaction in BgpDeployerImpl
* `f26ec5b81 <https://git.opendaylight.org/gerrit/q/f26ec5b81>`_
  `BGPCEP-984 <https://jira.opendaylight.org/browse/BGPCEP-984>`_
  : Add source of incoming message to the log
* `cad1845eb <https://git.opendaylight.org/gerrit/q/cad1845eb>`_
  `BGPCEP-981 <https://jira.opendaylight.org/browse/BGPCEP-981>`_
  : Improve InitiatedPCInitiateMessageParser diagnostics
* `e63800a97 <https://git.opendaylight.org/gerrit/q/e63800a97>`_
  `BGPCEP-981 <https://jira.opendaylight.org/browse/BGPCEP-981>`_
  : Format PCEPErrors in UnknownObject.toString()
* `fce1a53b5 <https://git.opendaylight.org/gerrit/q/fce1a53b5>`_
  `BGPCEP-981 <https://jira.opendaylight.org/browse/BGPCEP-981>`_
  : Improve UnknownObject observability
* `76b051972 <https://git.opendaylight.org/gerrit/q/76b051972>`_
  `BGPCEP-974 <https://jira.opendaylight.org/browse/BGPCEP-974>`_
  : Fix parsing issue of PcReport Objects


daexim
------
* `049dce1 <https://git.opendaylight.org/gerrit/q/049dce1>`_
  : Bump MRI upstreams


integration/distribution
------------------------
* `f246145 <https://git.opendaylight.org/gerrit/q/f246145>`_
  : Bump version after Silicon SR2 release
* `30c247f <https://git.opendaylight.org/gerrit/q/30c247f>`_
  : Bump MRI upstreams
* `c23ecdc <https://git.opendaylight.org/gerrit/q/c23ecdc>`_
  : Prepare documentation for Silicon SR3
* `c3e1e68 <https://git.opendaylight.org/gerrit/q/c3e1e68>`_
  : Re-add TPCE to distribution


jsonrpc
-------
* `0ca73bb <https://git.opendaylight.org/gerrit/q/0ca73bb>`_
  : Bump MRI upstreams


lispflowmapping
---------------
* `8f4a9255 <https://git.opendaylight.org/gerrit/q/8f4a9255>`_
  : Bump MRI upstreams


neutron
-------
* `1c203a0c <https://git.opendaylight.org/gerrit/q/1c203a0c>`_
  : Bump MRI upstreams


openflowplugin
--------------
* `b585bd4b3 <https://git.opendaylight.org/gerrit/q/b585bd4b3>`_
  : Bump MRI upstreams


ovsdb
-----
* `359516f6b <https://git.opendaylight.org/gerrit/q/359516f6b>`_
  : Use provided shell console
* `e45694714 <https://git.opendaylight.org/gerrit/q/e45694714>`_
  : Bump MRI upstreams


serviceutils
------------
* `08bfadc <https://git.opendaylight.org/gerrit/q/08bfadc>`_
  : Bump MRI upstreams

TransportPCE
------------
* `16d05e92 <https://git.opendaylight.org/gerrit/q/16d05e92>`_
  : Bump dependencies to Si SR3
* `aec7fd62 <https://git.opendaylight.org/gerrit/q/aec7fd62>`_
  : Bump mdsal dependency to 7.0.10 for Si SR3
* `d5fd5496 <https://git.opendaylight.org/gerrit/q/d5fd5496>`_
  : Improve container support in tox.ini
* `c19b7a47 <https://git.opendaylight.org/gerrit/q/c19b7a47>`_
  : Refactor buildcontroller tox profile
* `99ee820a <https://git.opendaylight.org/gerrit/q/99ee820a>`_
  : Add documentation to use tox and functional tests
* `e95f7074 <https://git.opendaylight.org/gerrit/q/e95f7074>`_
  : Reenforce Lighty use in the gate
* `83cd3587 <https://git.opendaylight.org/gerrit/q/83cd3587>`_
  : Enforce sims download in the gate
* `22545493 <https://git.opendaylight.org/gerrit/q/22545493>`_
  : Improve Karaf exec customization for tests
* `0faa186f <https://git.opendaylight.org/gerrit/q/0faa186f>`_
  : Improve tox tests parallelization with Karaf
* `1decbd04 <https://git.opendaylight.org/gerrit/q/1decbd04>`_
  : Refactor Karaf post-install scripts for tests
* `eb8671ad <https://git.opendaylight.org/gerrit/q/eb8671ad>`_
  : Allow tox tests with Karaf to run in parallel
* `96733f53 <https://git.opendaylight.org/gerrit/q/96733f53>`_
  : Allow Karaf to use an alternative websocket port
* `3c2237e1 <https://git.opendaylight.org/gerrit/q/3c2237e1>`_
  : Allow Karaf to listen to alternative RMI ports
* `3da6890d <https://git.opendaylight.org/gerrit/q/3da6890d>`_
  : Allow Karaf to listen to an alternative SSH port
* `a2277497 <https://git.opendaylight.org/gerrit/q/a2277497>`_
  : Allow Karaf to use altern. RESTCONF and akka ports
* `e2886508 <https://git.opendaylight.org/gerrit/q/e2886508>`_
  : Create a Karaf post-install script for tests
* `0d7cc953 <https://git.opendaylight.org/gerrit/q/0d7cc953>`_
  : Fallback gate to Karaf and sequence mode
* `4ce6900b <https://git.opendaylight.org/gerrit/q/4ce6900b>`_
  : Allow tox func tests suite to run in parallel
* `62a9ece9 <https://git.opendaylight.org/gerrit/q/62a9ece9>`_
  : Set different controller ports in tox tests suites
* `4737cacd <https://git.opendaylight.org/gerrit/q/4737cacd>`_
  : Allow Lighty build to listen to alternative ports
* `7350cc3b <https://git.opendaylight.org/gerrit/q/7350cc3b>`_
  : Refactor tests launching procedure
* `431cebcd <https://git.opendaylight.org/gerrit/q/431cebcd>`_
  : Outsource PCE tests scripts into a separate folder
* `0cb9cca5 <https://git.opendaylight.org/gerrit/q/0cb9cca5>`_
  : Outsource tests scripts not in envlist
* `a00b026c <https://git.opendaylight.org/gerrit/q/a00b026c>`_
  : Refactor tox.ini to prepare parallelized jobs
* `13ba83db <https://git.opendaylight.org/gerrit/q/13ba83db>`_
  : Update PTL info
