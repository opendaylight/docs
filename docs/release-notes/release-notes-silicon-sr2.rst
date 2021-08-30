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

transportPCE
------------
* `9e626a09 <https://git.opendaylight.org/gerrit/q/9e626a09>`_
  : Bump mdsal dependency to 7.0.9 for Si SR2
* `1cfb7c8e <https://git.opendaylight.org/gerrit/q/1cfb7c8e>`_
  : Bump Netconf dependency to 1.13.4 for Si SR2
* `e0e59d6c <https://git.opendaylight.org/gerrit/q/e0e59d6c>`_
  : OTN service delete - B100G
* `e1383892 <https://git.opendaylight.org/gerrit/q/e1383892>`_
  : Update configuration files of 400G simus
* `7aa3c5c8 <https://git.opendaylight.org/gerrit/q/7aa3c5c8>`_
  : Renderer Interface delete for B100G TPDR
* `9d813b1c <https://git.opendaylight.org/gerrit/q/9d813b1c>`_
  : Renderer support for higher rates
* `5b9cf395 <https://git.opendaylight.org/gerrit/q/5b9cf395>`_
  : Distinguish flex vs fixed for PCE 400G
* `f6e2b698 <https://git.opendaylight.org/gerrit/q/f6e2b698>`_
  : Change the slot width for 400G
* `fd953488 <https://git.opendaylight.org/gerrit/q/fd953488>`_
  : Enable 400G service rate in device renderer
* `f4583a54 <https://git.opendaylight.org/gerrit/q/f4583a54>`_
  : Refactor PCE Update OTUC4, ODUC4 and 100GE MXPDR
* `101ffbf8 <https://git.opendaylight.org/gerrit/q/101ffbf8>`_
  : Update PCE for OTUC4, ODUC4 and 100GE MXPDR
* `a97928f8 <https://git.opendaylight.org/gerrit/q/a97928f8>`_
  : Update transportpce-topology YANG model
* `034ebeeb <https://git.opendaylight.org/gerrit/q/034ebeeb>`_
  : Update portmapping with switching-pool from notif
* `aa8158bd <https://git.opendaylight.org/gerrit/q/aa8158bd>`_
  : Device renderer for muxponder
* `309ab938 <https://git.opendaylight.org/gerrit/q/309ab938>`_
  : Port-mapping functional tests for B100G muxponder
* `2c33c2d9 <https://git.opendaylight.org/gerrit/q/2c33c2d9>`_
  : Update port-mapping data with trib-slots for B100G
* `826580a1 <https://git.opendaylight.org/gerrit/q/826580a1>`_
  : Port-mapping to support B100G muxponder
* `23c77e51 <https://git.opendaylight.org/gerrit/q/23c77e51>`_
  : Fix ORDM device version in portmapping YANG model
* `b80d8acd <https://git.opendaylight.org/gerrit/q/b80d8acd>`_
  : Remove odl-netconf-connector-all dep from feats
* `1f9a5e09 <https://git.opendaylight.org/gerrit/q/1f9a5e09>`_
  : Handle missing port power advertisement
* `1c8dd5ba <https://git.opendaylight.org/gerrit/q/1c8dd5ba>`_
  : Remove useless netconf dependencies from features
* `d800f9da <https://git.opendaylight.org/gerrit/q/d800f9da>`_
  : Ignore OpenROADM whitepaper URL in docs-linkcheck
* `4eeefcb8 <https://git.opendaylight.org/gerrit/q/4eeefcb8>`_
  : Reduce the number of service notifications sent
* `46bc1181 <https://git.opendaylight.org/gerrit/q/46bc1181>`_
  : Add and run some linters via tox and pre-commit
* `98f51e70 <https://git.opendaylight.org/gerrit/q/98f51e70>`_
  : Update INFO.yaml committers list
* `94476a17 <https://git.opendaylight.org/gerrit/q/94476a17>`_
  : Bump project version to Si-SR2
* `6b0f4629 <https://git.opendaylight.org/gerrit/q/6b0f4629>`_
  : Bump dependencies to Si SR2
