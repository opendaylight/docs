Aluminium-SR1 Release Notes
===========================

This page details changes and bug fixes between the Aluminium Release
and the Aluminium Stability Release 1 (Aluminium-SR1) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `ece7c8d4 <https://git.opendaylight.org/gerrit/q/ece7c8d4>`_
  : Bump upstreams for Aluminium SR1
* `8d0675b9 <https://git.opendaylight.org/gerrit/q/8d0675b9>`_
  : Clean up aaa-encrypt-service/impl
* `4b941f4e <https://git.opendaylight.org/gerrit/q/4b941f4e>`_
  `AAA-201 <https://jira.opendaylight.org/browse/AAA-201>`_
  : Repair AuthenticationManager
* `61ab740d <https://git.opendaylight.org/gerrit/q/61ab740d>`_
  : Clean up DefaultPasswordHashService
* `57aac461 <https://git.opendaylight.org/gerrit/q/57aac461>`_
  : Do not override managed version
* `37a2fa89 <https://git.opendaylight.org/gerrit/q/37a2fa89>`_
  `AAA-182 <https://jira.opendaylight.org/browse/AAA-182>`_
  : Migrate aaa-cert use of BC APIs
* `079a812c <https://git.opendaylight.org/gerrit/q/079a812c>`_
  : Bump MRI projects


bgpcep
------
* `2b75ae2ae <https://git.opendaylight.org/gerrit/q/2b75ae2ae>`_
  : Bump upstreams for Aluminium SR1
* `f8b4c3edd <https://git.opendaylight.org/gerrit/q/f8b4c3edd>`_
  : Bump MRI projects


daexim
------
* `6cc63fa <https://git.opendaylight.org/gerrit/q/6cc63fa>`_
  : Bump upstreams for Aluminium SR1
* `507fbfc <https://git.opendaylight.org/gerrit/q/507fbfc>`_
  : Bump MRI projects
* `6a81698 <https://git.opendaylight.org/gerrit/q/6a81698>`_
  : Fix conf.yaml version to Aluminium


genius
------
* `ffe3a1d3 <https://git.opendaylight.org/gerrit/q/ffe3a1d3>`_
  : Bump upstreams for Aluminium SR1
* `94594073 <https://git.opendaylight.org/gerrit/q/94594073>`_
  : Bump MRI projects


integration/distribution
------------------------
* `e8e3cac <https://git.opendaylight.org/gerrit/q/e8e3cac>`_
  : Bump upstreams for Aluminium SR1
* `a300b63 <https://git.opendaylight.org/gerrit/q/a300b63>`_
  : Update versions after Aluminium release
* `c0510d3 <https://git.opendaylight.org/gerrit/q/c0510d3>`_
  : add precisions on BOMs in platform versions doc
* `74e1ec4 <https://git.opendaylight.org/gerrit/q/74e1ec4>`_
  : Revert "add restconf-artifacts to platform versions doc"
* `80f1308 <https://git.opendaylight.org/gerrit/q/80f1308>`_
  : add restconf-artifacts to platform versions doc
* `06ff669 <https://git.opendaylight.org/gerrit/q/06ff669>`_
  : Bump MRI projects
* `e3478ae <https://git.opendaylight.org/gerrit/q/e3478ae>`_
  `TRNSPRTPCE-323 <https://jira.opendaylight.org/browse/TRNSPRTPCE-323>`_
  : fix TPCE version in opendaylight/pom.xml


jsonrpc
-------
* `bbe9562 <https://git.opendaylight.org/gerrit/q/bbe9562>`_
  : Bump upstreams for Aluminium SR1
* `26c5554 <https://git.opendaylight.org/gerrit/q/26c5554>`_
  : Fix controller mis-reference
* `5a90042 <https://git.opendaylight.org/gerrit/q/5a90042>`_
  : Bump MRI projects
* `f989ef6 <https://git.opendaylight.org/gerrit/q/f989ef6>`_
  `JSONRPC-51 <https://jira.opendaylight.org/browse/JSONRPC-51>`_
  : Remove asynchronous RPC dispatch
* `1538967 <https://git.opendaylight.org/gerrit/q/1538967>`_
  `JSONRPC-49 <https://jira.opendaylight.org/browse/JSONRPC-49>`_
  : Don't return empty container for non-existent data
* `e968136 <https://git.opendaylight.org/gerrit/q/e968136>`_
  `JSONRPC-52 <https://jira.opendaylight.org/browse/JSONRPC-52>`_
  : Register RPC implementation in cluster
* `92881e7 <https://git.opendaylight.org/gerrit/q/92881e7>`_
  `JSONRPC-50 <https://jira.opendaylight.org/browse/JSONRPC-50>`_
  : Inband schema provider now require YangXPathParserFactory


lispflowmapping
---------------
* `c363ff93 <https://git.opendaylight.org/gerrit/q/c363ff93>`_
  : Bump upstreams for Aluminium SR1
* `9cdd2e1b <https://git.opendaylight.org/gerrit/q/9cdd2e1b>`_
  : Bump MRI projects


netconf
-------
* `28925cdfe <https://git.opendaylight.org/gerrit/q/28925cdfe>`_
  `SSHD-1028 <https://jira.opendaylight.org/browse/SSHD-1028>`_
  : Add workaround for SSH connection issue related to SSHD-1028
* `8327a8aae <https://git.opendaylight.org/gerrit/q/8327a8aae>`_
  : Bump upstreams for Aluminium SR1
* `583fd5c82 <https://git.opendaylight.org/gerrit/q/583fd5c82>`_
  : Update NETCONF user documentation
* `4448d0723 <https://git.opendaylight.org/gerrit/q/4448d0723>`_
  : Squash registrations
* `532a37f1c <https://git.opendaylight.org/gerrit/q/532a37f1c>`_
  `NETCONF-675 <https://jira.opendaylight.org/browse/NETCONF-675>`_
  : Add SchemaSourceRegistration list to NetconfConnectorDTO
* `31eeb5587 <https://git.opendaylight.org/gerrit/q/31eeb5587>`_
  : Bump MRI projects


netvirt
-------
* `7c3b86c54 <https://git.opendaylight.org/gerrit/q/7c3b86c54>`_
  : Bump upstreams for Aluminium SR1
* `2ae9c18cf <https://git.opendaylight.org/gerrit/q/2ae9c18cf>`_
  : Make subnetroute label and flow management more robust
* `cf65f54f2 <https://git.opendaylight.org/gerrit/q/cf65f54f2>`_
  : NPE for IPv6 Internet UC
* `fca739665 <https://git.opendaylight.org/gerrit/q/fca739665>`_
  : Bump MRI projects
* `b24797239 <https://git.opendaylight.org/gerrit/q/b24797239>`_
  : Use DJC to handle subnet addition/removal from VPN
* `120145851 <https://git.opendaylight.org/gerrit/q/120145851>`_
  `NEUTRON-208 <https://jira.opendaylight.org/browse/NEUTRON-208>`_
  : NEUTRON-208: Neutronvpn changes for BGPVPN network and router association
* `a4b8ffd68 <https://git.opendaylight.org/gerrit/q/a4b8ffd68>`_
  : Remote FIB entry missing for NAT Prefixes
* `75d6fce3e <https://git.opendaylight.org/gerrit/q/75d6fce3e>`_
  : AAP stops working when VM is restarted
* `d89738edc <https://git.opendaylight.org/gerrit/q/d89738edc>`_
  : IPv6 loopback ip is not displaying in fib entry
* `e397f2ab0 <https://git.opendaylight.org/gerrit/q/e397f2ab0>`_
  : Ignore unnecessary update() processing in NVPN MD-SAL listeners
* `969d48843 <https://git.opendaylight.org/gerrit/q/969d48843>`_
  : IPv6 table=45 unknown flows on subnet add


neutron
-------
* `0f585c8e <https://git.opendaylight.org/gerrit/q/0f585c8e>`_
  : Bump upstreams for Aluminium SR1
* `f061de69 <https://git.opendaylight.org/gerrit/q/f061de69>`_
  : Bump MRI projects
* `a39fd0c9 <https://git.opendaylight.org/gerrit/q/a39fd0c9>`_
  `NEUTRON-208 <https://jira.opendaylight.org/browse/NEUTRON-208>`_
  : NEUTRON-208: BGPVPN network and router association


openflowplugin
--------------
* `3b86877b5 <https://git.opendaylight.org/gerrit/q/3b86877b5>`_
  : Bump upstreams for Aluminium SR1
* `f91529e69 <https://git.opendaylight.org/gerrit/q/f91529e69>`_
  : Bump MRI projects


ovsdb
-----
* `c47bd1583 <https://git.opendaylight.org/gerrit/q/c47bd1583>`_
  : Bump upstreams for Aluminium SR1
* `928fcb6c0 <https://git.opendaylight.org/gerrit/q/928fcb6c0>`_
  : Bump MRI projects


serviceutils
------------
* `a446562 <https://git.opendaylight.org/gerrit/q/a446562>`_
  : Bump upstreams for Aluminium SR1
* `9ac15ae <https://git.opendaylight.org/gerrit/q/9ac15ae>`_
  : Bump MRI projects

