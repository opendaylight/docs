Silicon-SR2 Release Notes
=========================

This page details changes and bug fixes between the Silicon Stability Release 1 (Silicon-SR1)
and the Silicon Stability Release 2 (Silicon-SR2) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


bgpcep
------
* `802954675 <https://git.opendaylight.org/gerrit/q/802954675>`_
  : Bump MRI upstreams
* `394df11c4 <https://git.opendaylight.org/gerrit/q/394df11c4>`_
  : Fix LinkstateGraphBuilder.ipv6toKey()
* `2c25495b3 <https://git.opendaylight.org/gerrit/q/2c25495b3>`_
  : Do not copy Ipv{4,6}Addresses
* `1b1794742 <https://git.opendaylight.org/gerrit/q/1b1794742>`_
  : Improve Ipv{4,6}Address handling
* `dce3888f0 <https://git.opendaylight.org/gerrit/q/dce3888f0>`_
  : Simplify LinkstateGraphBuilder.getLinkAttributes()
* `ebcf438cc <https://git.opendaylight.org/gerrit/q/ebcf438cc>`_
  : Improve withdrawn routes parsing
* `f302e226d <https://git.opendaylight.org/gerrit/q/f302e226d>`_
  `BGPCEP-973 <https://jira.opendaylight.org/browse/BGPCEP-973>`_
  : Fix potential ByteBuf leak in bgp-inet
* `a54bf7f59 <https://git.opendaylight.org/gerrit/q/a54bf7f59>`_
  `BGPCEP-973 <https://jira.opendaylight.org/browse/BGPCEP-973>`_
  : Fix potential ByteBuf leaks in bgp-l3vpn
* `96f14238d <https://git.opendaylight.org/gerrit/q/96f14238d>`_
  `BGPCEP-973 <https://jira.opendaylight.org/browse/BGPCEP-973>`_
  : Fix potential ByteBuf leak in bgp-inet
* `e9b3c8b5a <https://git.opendaylight.org/gerrit/q/e9b3c8b5a>`_
  `BGPCEP-973 <https://jira.opendaylight.org/browse/BGPCEP-973>`_
  : Fix potential ByteBuf leaks in bgp-labeled-unicast
* `526389db4 <https://git.opendaylight.org/gerrit/q/526389db4>`_
  `BGPCEP-973 <https://jira.opendaylight.org/browse/BGPCEP-973>`_
  : Fix potential ByteBuf leaks in pcep-base-parser
* `0758ecb05 <https://git.opendaylight.org/gerrit/q/0758ecb05>`_
  `BGPCEP-973 <https://jira.opendaylight.org/browse/BGPCEP-973>`_
  : Use ByteBuf.readSlice() in bgp-mvpn
* `e512a3e8f <https://git.opendaylight.org/gerrit/q/e512a3e8f>`_
  `BGPCEP-972 <https://jira.opendaylight.org/browse/BGPCEP-972>`_
  : Activate Segment Routing by default
* `d29235688 <https://git.opendaylight.org/gerrit/q/d29235688>`_
  `BGPCEP-970 <https://jira.opendaylight.org/browse/BGPCEP-970>`_
  : Handle SID Index in SRGB block
* `ec0a32a18 <https://git.opendaylight.org/gerrit/q/ec0a32a18>`_
  : Optimize getVertex() a bit
* `baba4797b <https://git.opendaylight.org/gerrit/q/baba4797b>`_
  : Do not store ConnectedGraphProvider
* `2213657d4 <https://git.opendaylight.org/gerrit/q/2213657d4>`_
  : Optimize LinkstateGraphBuilder.getVertexId()
* `612a0b081 <https://git.opendaylight.org/gerrit/q/612a0b081>`_
  `BGPCEP-971 <https://jira.opendaylight.org/browse/BGPCEP-971>`_
  : Fix address handling in LinkstateGraphBuilder
* `f26df27c2 <https://git.opendaylight.org/gerrit/q/f26df27c2>`_
  : Bump MRI upstreams
* `038ff70ec <https://git.opendaylight.org/gerrit/q/038ff70ec>`_
  : Use OSGi R7


daexim
------
* `b1782a0 <https://git.opendaylight.org/gerrit/q/b1782a0>`_
  : Bump MRI upstreams
* `069f0cc <https://git.opendaylight.org/gerrit/q/069f0cc>`_
  : Bump MRI upstreams


integration/distribution
------------------------
* `c4a76ac <https://git.opendaylight.org/gerrit/q/c4a76ac>`_
  : Bump MRI upstreams
* `5c091e9 <https://git.opendaylight.org/gerrit/q/5c091e9>`_
  : Bump MRI upstreams
* `ce09b99 <https://git.opendaylight.org/gerrit/q/ce09b99>`_
  : Update version after SR1 release
* `68cb54c <https://git.opendaylight.org/gerrit/q/68cb54c>`_
  : Update version after silicon release


jsonrpc
-------
* `020afe9 <https://git.opendaylight.org/gerrit/q/020afe9>`_
  : Bump MRI upstreams
* `95d12b1 <https://git.opendaylight.org/gerrit/q/95d12b1>`_
  : Bump MRI upstreams


lispflowmapping
---------------
* `eeee1920 <https://git.opendaylight.org/gerrit/q/eeee1920>`_
  : Revert accidental version bump
* `3b20b71f <https://git.opendaylight.org/gerrit/q/3b20b71f>`_
  : Bump MRI upstreams
* `e7c737a6 <https://git.opendaylight.org/gerrit/q/e7c737a6>`_
  : Bump MRI upstreams


neutron
-------
* `7b264f38 <https://git.opendaylight.org/gerrit/q/7b264f38>`_
  : Bump MRI upstreams
* `249b74c4 <https://git.opendaylight.org/gerrit/q/249b74c4>`_
  : Bump MRI upstreams


openflowplugin
--------------
* `e31ac872f <https://git.opendaylight.org/gerrit/q/e31ac872f>`_
  : Bump MRI upstreams
* `4b224cbf6 <https://git.opendaylight.org/gerrit/q/4b224cbf6>`_
  : Bump MRI upstreams


ovsdb
-----
* `dd07c2834 <https://git.opendaylight.org/gerrit/q/dd07c2834>`_
  : Bump MRI upstreams
* `9c89137e9 <https://git.opendaylight.org/gerrit/q/9c89137e9>`_
  : Bump MRI upstreams


serviceutils
------------
* `dcb9bed <https://git.opendaylight.org/gerrit/q/dcb9bed>`_
  : Bump MRI upstreams
* `d45074a <https://git.opendaylight.org/gerrit/q/d45074a>`_
  : Bump MRI upstreams

