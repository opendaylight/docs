Fluorine-SR3 Release Notes
==========================

This page details changes and bug fixes between the Fluorine Stability Release 2 (Fluorine-SR2)
and the Fluorine Stability Release 3 (Fluorine-SR3) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `f037bab9 <https://git.opendaylight.org/gerrit/#/q/f037bab9>`_
  : Bump yangtools to 2.0.20
* `e44b4dae <https://git.opendaylight.org/gerrit/#/q/e44b4dae>`_
  : Bump odlparent to 3.1.7
* `799e31b2 <https://git.opendaylight.org/gerrit/#/q/799e31b2>`_
  : Add web-jetty-impl to artifacts
* `b6996ea9 <https://git.opendaylight.org/gerrit/#/q/b6996ea9>`_
  : Remove dependency on features-test
* `93ce74ca <https://git.opendaylight.org/gerrit/#/q/93ce74ca>`_
  `AAA-174 <https://jira.opendaylight.org/browse/AAA-174>`_
  : AAA-174 : Don't reuse JDBC connection
* `b8ae049f <https://git.opendaylight.org/gerrit/#/q/b8ae049f>`_
  `AAA-183 <https://jira.opendaylight.org/browse/AAA-183>`_
  : Fix idmtool print error in case of using python3


bgpcep
------
* `d97bc29a5 <https://git.opendaylight.org/gerrit/#/q/d97bc29a5>`_
  : Bump yangtools to 2.0.20
* `77f256bf2 <https://git.opendaylight.org/gerrit/#/q/77f256bf2>`_
  : Bump odlparent to 3.1.7
* `7ca9f2a31 <https://git.opendaylight.org/gerrit/#/q/7ca9f2a31>`_
  `PCEP-873 <https://jira.opendaylight.org/browse/PCEP-873>`_
  : Revert "remove OSGi dependency from bgp modules"
* `3ee26fd84 <https://git.opendaylight.org/gerrit/#/q/3ee26fd84>`_
  : Fix NPE when no node present in PCEP topology config
* `69986c1d0 <https://git.opendaylight.org/gerrit/#/q/69986c1d0>`_
  : remove OSGi dependency from bgp modules
* `ccd8e7a1b <https://git.opendaylight.org/gerrit/#/q/ccd8e7a1b>`_
  : Fix routing-policy-config
* `81c518752 <https://git.opendaylight.org/gerrit/#/q/81c518752>`_
  : Remove use of AttrBuilders
* `e12a8c80c <https://git.opendaylight.org/gerrit/#/q/e12a8c80c>`_
  : Fix logging mismatches
* `ddd9a05eb <https://git.opendaylight.org/gerrit/#/q/ddd9a05eb>`_
  : Fix day-1 typo in LU parser registration
* `bbd6cd8ed <https://git.opendaylight.org/gerrit/#/q/bbd6cd8ed>`_
  `PCEP-868 <https://jira.opendaylight.org/browse/PCEP-868>`_
  : Do not allow parameter 255 to be registered
* `26de38fc8 <https://git.opendaylight.org/gerrit/#/q/26de38fc8>`_
  `PCEP-870 <https://jira.opendaylight.org/browse/PCEP-870>`_
  : Init data-broker before topo-provider registration to prevent NPE
* `ac6313d3d <https://git.opendaylight.org/gerrit/#/q/ac6313d3d>`_
  : Fix race between BGP config topology DCN and topology-provider registration
* `b77f03882 <https://git.opendaylight.org/gerrit/#/q/b77f03882>`_
  `PCEP-863 <https://jira.opendaylight.org/browse/PCEP-863>`_
  : Guard against torn down peer
* `641bc3aab <https://git.opendaylight.org/gerrit/#/q/641bc3aab>`_
  `PCEP-864 <https://jira.opendaylight.org/browse/PCEP-864>`_
  : Add Errata 4493 error codes


controller
----------
* `ddf07d3772 <https://git.opendaylight.org/gerrit/#/q/ddf07d3772>`_
  : Add buffering to LocalSnapshotStore
* `c2b0e92d2c <https://git.opendaylight.org/gerrit/#/q/c2b0e92d2c>`_
  `CONTROLLER-1900 <https://jira.opendaylight.org/browse/CONTROLLER-1900>`_
  : Send commitIndex updates to followers as soon as possible
* `1b518718bf <https://git.opendaylight.org/gerrit/#/q/1b518718bf>`_
  : Use Files.delete() in LocalSnapshotStore
* `67eeb5bb3a <https://git.opendaylight.org/gerrit/#/q/67eeb5bb3a>`_
  : Bump yangtools to 2.0.20
* `598432ed87 <https://git.opendaylight.org/gerrit/#/q/598432ed87>`_
  : Bump odlparent to 3.1.7
* `7ff4e0f919 <https://git.opendaylight.org/gerrit/#/q/7ff4e0f919>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Do not enque purges for ask based protocol
* `6a2bff836e <https://git.opendaylight.org/gerrit/#/q/6a2bff836e>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Remove PersistAbortTransactionPayload
* `885c6d15fc <https://git.opendaylight.org/gerrit/#/q/885c6d15fc>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Disable transaction tracking for ask-based protocol
* `8247e134d9 <https://git.opendaylight.org/gerrit/#/q/8247e134d9>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Allow transaction tracking to be disabled
* `3fb7440538 <https://git.opendaylight.org/gerrit/#/q/3fb7440538>`_
  : Derive config-artifacts from odlparent-lite
* `d9d8e5bf17 <https://git.opendaylight.org/gerrit/#/q/d9d8e5bf17>`_
  `CONTROLLER-1893 <https://jira.opendaylight.org/browse/CONTROLLER-1893>`_
  : Poison entries outside of main lock
* `8b185b7dc0 <https://git.opendaylight.org/gerrit/#/q/8b185b7dc0>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Allow SnapshotBackedReadTransaction customization
* `67aa99425b <https://git.opendaylight.org/gerrit/#/q/67aa99425b>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Enqueue purge payload directly
* `aab996519b <https://git.opendaylight.org/gerrit/#/q/aab996519b>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Make sure we purge transaction on abort
* `f0ab6d4814 <https://git.opendaylight.org/gerrit/#/q/f0ab6d4814>`_
  `CONTROLLER-1891 <https://jira.opendaylight.org/browse/CONTROLLER-1891>`_
  : Reset snapshot progress after timeout has been hit
* `74367138bb <https://git.opendaylight.org/gerrit/#/q/74367138bb>`_
  : Harden ShardCommitCoordinator to survive EOS write retries
* `ff61d45f12 <https://git.opendaylight.org/gerrit/#/q/ff61d45f12>`_
  `CONTROLLER-1890 <https://jira.opendaylight.org/browse/CONTROLLER-1890>`_
  : Do not break actor containment
* `ce2c9e8b87 <https://git.opendaylight.org/gerrit/#/q/ce2c9e8b87>`_
  : Fix checkstyle in toaster-it
* `6746a752eb <https://git.opendaylight.org/gerrit/#/q/6746a752eb>`_
  : Migrate to use openCursor()
* `16c861b8f4 <https://git.opendaylight.org/gerrit/#/q/16c861b8f4>`_
  : Fix logging messages
* `20eee8b788 <https://git.opendaylight.org/gerrit/#/q/20eee8b788>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Use ReusableNormalizedNodePruner in PruningDataTreeModification
* `2b1ecc8d06 <https://git.opendaylight.org/gerrit/#/q/2b1ecc8d06>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Add ReusableNormalizedNodePruner
* `548d5cc813 <https://git.opendaylight.org/gerrit/#/q/548d5cc813>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Move checkNotSealed() to addBuilder()
* `04ddd207cd <https://git.opendaylight.org/gerrit/#/q/04ddd207cd>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Remove NormalizedNodePruner.findSchemaNodeForNodePath()
* `335e90a0c0 <https://git.opendaylight.org/gerrit/#/q/335e90a0c0>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Do not use Optional in NormalizedNodeWrapper
* `fbce3ef938 <https://git.opendaylight.org/gerrit/#/q/fbce3ef938>`_
  `CONTROLLER-1887 <https://jira.opendaylight.org/browse/CONTROLLER-1887>`_
  : Hide NormalizedNodeBuilderWrapper
* `311a369314 <https://git.opendaylight.org/gerrit/#/q/311a369314>`_
  : Remove NormalizedNodePruner.SimpleStack
* `3867570071 <https://git.opendaylight.org/gerrit/#/q/3867570071>`_
  : Clean up NormalizedNodePruner
* `78f7e0c47b <https://git.opendaylight.org/gerrit/#/q/78f7e0c47b>`_
  : Update javadoc links
* `b72468698f <https://git.opendaylight.org/gerrit/#/q/b72468698f>`_
  `CONTROLLER-1886 <https://jira.opendaylight.org/browse/CONTROLLER-1886>`_
  : Improve aborted transaction logging
* `eaa9e36d7b <https://git.opendaylight.org/gerrit/#/q/eaa9e36d7b>`_
  `CONTROLLER-1885 <https://jira.opendaylight.org/browse/CONTROLLER-1885>`_
  : Do not assert seal transition on forward path
* `d4671b0811 <https://git.opendaylight.org/gerrit/#/q/d4671b0811>`_
  : Fix free-standing transaction lookup with module-based shards
* `e29115936c <https://git.opendaylight.org/gerrit/#/q/e29115936c>`_
  : Remove use of CheckedFuture
* `52e9c7275d <https://git.opendaylight.org/gerrit/#/q/52e9c7275d>`_
  : Migrate to ListenerRegistry.create()
* `49d3f525ad <https://git.opendaylight.org/gerrit/#/q/49d3f525ad>`_
  `MDSAL-422 <https://jira.opendaylight.org/browse/MDSAL-422>`_
  : Account for reported UNMODIFIED nodes


coe
---
* `667dc2e <https://git.opendaylight.org/gerrit/#/q/667dc2e>`_
  : Bump odlparent to 3.1.7
* `03c1af6 <https://git.opendaylight.org/gerrit/#/q/03c1af6>`_
  : Fix formatting in COE doc


daexim
------
* `46c5383 <https://git.opendaylight.org/gerrit/#/q/46c5383>`_
  : Bump odlparent to 3.1.7
* `e733dbc <https://git.opendaylight.org/gerrit/#/q/e733dbc>`_
  : Derive artifacts from odlparent-lite


genius
------
* `85ef0bce <https://git.opendaylight.org/gerrit/#/q/85ef0bce>`_
  : Bump yangtools to 2.0.20
* `c7cdc4ae <https://git.opendaylight.org/gerrit/#/q/c7cdc4ae>`_
  : Bump odlparent to 3.1.7
* `564a8746 <https://git.opendaylight.org/gerrit/#/q/564a8746>`_
  `ENIUS-254 <https://jira.opendaylight.org/browse/ENIUS-254>`_
  : default tunnels are down and/or missing from config
* `20ffa6d1 <https://git.opendaylight.org/gerrit/#/q/20ffa6d1>`_
  `NETVIRT-1262 <https://jira.opendaylight.org/browse/NETVIRT-1262>`_
  : NETVIRT-1262: Tep's are not part of transport zone when a transport zone is removed and added from NB
* `ff47d8b6 <https://git.opendaylight.org/gerrit/#/q/ff47d8b6>`_
  `ENIUS-248 <https://jira.opendaylight.org/browse/ENIUS-248>`_
  : GENIUS-248: ITM-Vtem Auto tunnel feature- Tunnels not coming up after deleting external id's in OVS


infrautils
----------
* `38c5fd79 <https://git.opendaylight.org/gerrit/#/q/38c5fd79>`_
  : Bump odlparent to 3.1.7
* `af5a3c23 <https://git.opendaylight.org/gerrit/#/q/af5a3c23>`_
  `INFRAUTILS-64 <https://jira.opendaylight.org/browse/INFRAUTILS-64>`_
  : INFRAUTILS-64 : Relax check for RMI address


integration/distribution
------------------------
* `132e6a3 <https://git.opendaylight.org/gerrit/#/q/132e6a3>`_
  : Bump yangtools to 2.0.20
* `7724350 <https://git.opendaylight.org/gerrit/#/q/7724350>`_
  : Bump odlparent to 3.1.7
* `a047fb9 <https://git.opendaylight.org/gerrit/#/q/a047fb9>`_
  : Pin pygments to 2.3.1
* `d5f2d96 <https://git.opendaylight.org/gerrit/#/q/d5f2d96>`_
  : Version bump after Flourine SR2 update
* `3c9a8f1 <https://git.opendaylight.org/gerrit/#/q/3c9a8f1>`_
  : Update version after Fluorine SR2
* `08c2a67 <https://git.opendaylight.org/gerrit/#/q/08c2a67>`_
  : Disable SXP project in common distribution


lispflowmapping
---------------
* `02c2615b <https://git.opendaylight.org/gerrit/#/q/02c2615b>`_
  : Bump odlparent to 3.1.7
* `17d4eae8 <https://git.opendaylight.org/gerrit/#/q/17d4eae8>`_
  : Fix links in docs
* `6cd1e817 <https://git.opendaylight.org/gerrit/#/q/6cd1e817>`_
  : Add additional missing images to docs
* `79890e4b <https://git.opendaylight.org/gerrit/#/q/79890e4b>`_
  : Add missing image to docs


mdsal
-----
* `8989c8add <https://git.opendaylight.org/gerrit/#/q/8989c8add>`_
  : Bump yangtools to 2.0.20
* `92c4c2721 <https://git.opendaylight.org/gerrit/#/q/92c4c2721>`_
  : Bump odlparent to 3.1.7
* `08e471b60 <https://git.opendaylight.org/gerrit/#/q/08e471b60>`_
  `MDSAL-448 <https://jira.opendaylight.org/browse/MDSAL-448>`_
  : GroupingDefinitionDependencySort needs to consider actions
* `434471c8c <https://git.opendaylight.org/gerrit/#/q/434471c8c>`_
  `MDSAL-448 <https://jira.opendaylight.org/browse/MDSAL-448>`_
  : Do not issue immediate build when looking up grouping
* `fccad6eeb <https://git.opendaylight.org/gerrit/#/q/fccad6eeb>`_
  `CONTROLLER-1879 <https://jira.opendaylight.org/browse/CONTROLLER-1879>`_
  : Allow SnapshotBackedReadTransaction customization
* `c4e04329a <https://git.opendaylight.org/gerrit/#/q/c4e04329a>`_
  `MDSAL-445 <https://jira.opendaylight.org/browse/MDSAL-445>`_
  : Introduce AbstractAugmentable
* `ee101ab6d <https://git.opendaylight.org/gerrit/#/q/ee101ab6d>`_
  : Speed up BindingReflections.getAugmentations()
* `645b2c8b5 <https://git.opendaylight.org/gerrit/#/q/645b2c8b5>`_
  `MDSAL-442 <https://jira.opendaylight.org/browse/MDSAL-442>`_
  : Optimize DataObjectCodecContext memory footprint
* `4cef66460 <https://git.opendaylight.org/gerrit/#/q/4cef66460>`_
  : Speed up DataContainerCodecPrototype.get() a bit
* `241855474 <https://git.opendaylight.org/gerrit/#/q/241855474>`_
  `MDSAL-182 <https://jira.opendaylight.org/browse/MDSAL-182>`_
  : Tolerate unresolvable leafrefs in groupings
* `6f5eaaf58 <https://git.opendaylight.org/gerrit/#/q/6f5eaaf58>`_
  : Speed up Union stringValue() generation
* `7eccaea41 <https://git.opendaylight.org/gerrit/#/q/7eccaea41>`_
  : Simplify UnionTemplate stringValue() dispatch
* `7d457ed83 <https://git.opendaylight.org/gerrit/#/q/7d457ed83>`_
  : Cleanup RuntimeException throws
* `3aaa92fc4 <https://git.opendaylight.org/gerrit/#/q/3aaa92fc4>`_
  `MDSAL-425 <https://jira.opendaylight.org/browse/MDSAL-425>`_
  : Use E$$ to capture augmentation type
* `700db772a <https://git.opendaylight.org/gerrit/#/q/700db772a>`_
  `MDSAL-422 <https://jira.opendaylight.org/browse/MDSAL-422>`_
  : Account for reported UNMODIFIED nodes
* `7c719c40d <https://git.opendaylight.org/gerrit/#/q/7c719c40d>`_
  `MDSAL-416 <https://jira.opendaylight.org/browse/MDSAL-416>`_
  : Generated javadoc does not separate multi-line description


netconf
-------
* `09bd39758 <https://git.opendaylight.org/gerrit/#/q/09bd39758>`_
  : Bump yangtools to 2.0.20
* `81d6a5986 <https://git.opendaylight.org/gerrit/#/q/81d6a5986>`_
  : Bump odlparent to 3.1.7
* `f157d2de4 <https://git.opendaylight.org/gerrit/#/q/f157d2de4>`_
  : Fix unsafe global config access
* `534f496b2 <https://git.opendaylight.org/gerrit/#/q/534f496b2>`_
  `NETCONF-615 <https://jira.opendaylight.org/browse/NETCONF-615>`_
  : Fix DeviceOp DTCL
* `45550671d <https://git.opendaylight.org/gerrit/#/q/45550671d>`_
  `NETCONF-620 <https://jira.opendaylight.org/browse/NETCONF-620>`_
  : Fix preparing action with path containing augment
* `bb3b65de5 <https://git.opendaylight.org/gerrit/#/q/bb3b65de5>`_
  : Do not deploy shaded-exificient-jar
* `b33dbb336 <https://git.opendaylight.org/gerrit/#/q/b33dbb336>`_
  : Fixed deadlock between AsyncSshHandlerReader and AsyncSshHandler
* `924a58ec8 <https://git.opendaylight.org/gerrit/#/q/924a58ec8>`_
  : Fixed deadlock in AsyncSshHandlerWriter
* `23016f940 <https://git.opendaylight.org/gerrit/#/q/23016f940>`_
  : Reduce the use of AttrBuilders
* `cbaa9941c <https://git.opendaylight.org/gerrit/#/q/cbaa9941c>`_
  : Fix logging arguments
* `1ff7b91a1 <https://git.opendaylight.org/gerrit/#/q/1ff7b91a1>`_
  : Fix logging arguments
* `cdf8bf6f5 <https://git.opendaylight.org/gerrit/#/q/cdf8bf6f5>`_
  : Remove a FindBugs suppression
* `e036804eb <https://git.opendaylight.org/gerrit/#/q/e036804eb>`_
  `NETCONF-588 <https://jira.opendaylight.org/browse/NETCONF-588>`_
  : Replace GsonProvider to JacksonJaxbJsonProvider
* `987c47da3 <https://git.opendaylight.org/gerrit/#/q/987c47da3>`_
  `NETCONF-607 <https://jira.opendaylight.org/browse/NETCONF-607>`_
  : Allow no payload for RPCs with no input
* `1d10e022c <https://git.opendaylight.org/gerrit/#/q/1d10e022c>`_
  `NETCONF-606 <https://jira.opendaylight.org/browse/NETCONF-606>`_
  : Fix Revision confusion


netvirt
-------
* `047d67c14 <https://git.opendaylight.org/gerrit/#/q/047d67c14>`_
  : Bump odlparent to 3.1.7
* `e6734412f <https://git.opendaylight.org/gerrit/#/q/e6734412f>`_
  : Do not install/deploy karaf distro
* `d8b6e2560 <https://git.opendaylight.org/gerrit/#/q/d8b6e2560>`_
  : Pin requests<2.22.0
* `0e05c67f7 <https://git.opendaylight.org/gerrit/#/q/0e05c67f7>`_
  : Pin pygments to 2.3.x
* `f30ea9147 <https://git.opendaylight.org/gerrit/#/q/f30ea9147>`_
  : Add missing initialisation in UpgradeStateListener
* `3f74b6715 <https://git.opendaylight.org/gerrit/#/q/3f74b6715>`_
  `NETVIRT-1553 <https://jira.opendaylight.org/browse/NETVIRT-1553>`_
  : Select groups without any buckets for remote MIPs


neutron
-------
* `bcd7581c <https://git.opendaylight.org/gerrit/#/q/bcd7581c>`_
  : Bump odlparent to 3.1.7


openflowplugin
--------------
* `b8ed2f629 <https://git.opendaylight.org/gerrit/#/q/b8ed2f629>`_
  : Bump odlparent to 3.1.7
* `4c2334b86 <https://git.opendaylight.org/gerrit/#/q/4c2334b86>`_
  : Remove use of internal Netty class
* `9871715ce <https://git.opendaylight.org/gerrit/#/q/9871715ce>`_
  `OPNFLWPLUG-1058 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1058>`_
  : OPNFLWPLUG-1058: Changing INFO  to DEBUG
* `f0e8cda74 <https://git.opendaylight.org/gerrit/#/q/f0e8cda74>`_
  `OPNFLWPLUG-1062 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1062>`_
  : OPNFLWPLUG-1062 Include additional LLDP fields in liblldp


ovsdb
-----
* `aea48af03 <https://git.opendaylight.org/gerrit/#/q/aea48af03>`_
  : Bump odlparent to 3.1.7
* `01506dbe2 <https://git.opendaylight.org/gerrit/#/q/01506dbe2>`_
  : Remove duplicate artifact declarations


serviceutils
------------
* `15b9e82 <https://git.opendaylight.org/gerrit/#/q/15b9e82>`_
  : Bump yangtools to 2.0.20
* `b909085 <https://git.opendaylight.org/gerrit/#/q/b909085>`_
  : Bump odlparent to 3.1.7


sfc
---
* `160a0c0e <https://git.opendaylight.org/gerrit/#/q/160a0c0e>`_
  : Bump odlparent to 3.1.7
* `1e90f7d4 <https://git.opendaylight.org/gerrit/#/q/1e90f7d4>`_
  : Fix indentation

