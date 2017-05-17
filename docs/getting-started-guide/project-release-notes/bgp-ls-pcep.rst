===========
BGP LS PCEP
===========

Major Features
==============

odl-bgpcep-bgp
--------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bgp/features-bgp/src/main/features/features.xml;h=66c79d8a949d139b21ad3aab43d4b75bcf3cf385;hb=73449afa26d3771525d10abbf7441c094e638c9b
* **Feature Description:**  OpenDaylight Border Gateway Protocol (BGP) plugin.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://logs.opendaylight.org/releng/jenkins092/bgpcep-csit-1node-userfeatures-all-carbon/284/archives/log.html.gz

odl-bgpcep-bmp
--------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bmp/features-bmp/src/main/features/features.xml;h=d614ef9789bd254242fae352fb701dc5ca816208;hb=73449afa26d3771525d10abbf7441c094e638c9bhttps://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bmp/features-bmp/src/main/features/features.xml;h=d614ef9789bd254242fae352fb701dc5ca816208;hb=73449afa26d3771525d10abbf7441c094e638c9b
* **Feature Description:**  OpenDaylight BGP Monitoring Protocol (BMP) plugin.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://logs.opendaylight.org/releng/jenkins092/bgpcep-csit-1node-userfeatures-all-carbon/284/archives/log.html.gz

odl-bgpcep-pcep
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/pcep/features-pcep/src/main/features/features.xml;h=e43f22337c2492df39ff498f29744e8e69a8659a;hb=73449afa26d3771525d10abbf7441c094e638c9b
* **Feature Description:**  OpenDaylight Path Computation Element Configuration Protocol (PCEP) plugin.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://logs.opendaylight.org/releng/jenkins092/bgpcep-csit-1node-userfeatures-all-carbon/284/archives/log.html.gz


Documentation
=============

* **User Guide(s):**

  * `BGP User Guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/bgp-user-guide.rst;h=a85531538ae1383a1ab785a24c5992ef009c5697;hb=HEAD>`_
  * `BGP Monitoring Protocol User Guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/bgp-monitoring-protocol-user-guide.rst;h=581607dcac271ffde9b80e5c1abdd85e34021be4;hb=HEAD>`_
  * `PCEP User Guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/pcep-user-guide.rst;h=8e5d21c2eb2294b83e5530380a9dcfef852e105f;hb=HEAD>`_

* **Developer Guide(s):**

  * `BGP Developer Guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/bgp-developer-guide.rst;h=5910d0ab0565ea7ddfae72e98d266650b53d8995;hb=HEAD>`_
  * `BGP Monitoring Protocol Developer Guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/bgp-monitoring-protocol-developer-guide.rst;h=a6e84a7bf2e5c6c18ce6316c6eb75938a77cbc1b;hb=HEAD>`_
  * `PCEP Developer Guide <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/pcep-developer-guide.rst;h=467a9c32a98071637ea09ef64d7aea19ebe192e3;hb=HEAD>`_

Security Considerations
=======================

None Known - all protocol implements the TCP Authentication Option (TCP MD5)

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=10075>`_ (80,8%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/bgpcep/>`_
* Other manual testing and QA information

* `User features test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-only-carbon/>`_
* `PCEP performance and scale tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-throughpcep-only-carbon/>`_
* `BGP Application peer performance and scale tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-bgp-ingest-only-carbon/>`_
* `BGP performance and scale test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-bgp-ingest-mixed-only-carbon/>`_
* `BGP clustering <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-3node-periodic-bgpclustering-only-carbon/>`_

* Testing methodology. How extensive was it? What should be expected to work?
  The BGP extensions were tested manually with vendor's BGP router implementation or other software implementations (exaBGP, bagpipeBGP). Also, they are covered by the unit tests and automated system tests.
  What has not been tested as much?
  New BGP Openconfig statistics feature.

Migration
---------

* Is is possible migrate from the previous release? If so, how?

Compatiblity
------------

* Is this release compatible with the previous release?
  Yes
* Any API changes?
* Any configuration changes?
  BGP Openconfig configuration should be used instead of previous BGP CSS configuration.

Bugs Fixed
----------

* `List of bugs fixed since the previous release <https://bugs.opendaylight.org/buglist.cgi?columnlist=product%2Ccomponent%2Cassigned_to%2Cbug_severity%2Ccf_issue_type%2Cshort_desc%2Cbug_status%2Cpriority%2Cdeadline%2Ccf_target_milestone&f1=cf_target_milestone&f2=cf_issue_type&known_name=Lithium%3A%20bgpcep&o1=substring&o2=equals&product=bgpcep&query_based_on=Lithium%3A%20bgpcep&query_format=advanced&resolution=FIXED&v1=Carbon&v2=Bug>`_

Known Issues
------------

* `BUG-6562 <https://bugs.opendaylight.org/show_bug.cgi?id=6562>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

Standards
=========

* List of standards implemented and to what extent

RFC4271 - A Border Gateway Protocol 4 (BGP-4)
RFC4760 - Multiprotocol Extensions for BGP-4
RFC1997 - BGP Communities Attribute
RFC4360 - BGP Extended Communities Attribute
RFC4486 - Subcodes for BGP Cease Notification Message
RFC5004 - Avoid BGP Best Path Transitions from One External to Another
RFC7752 - North-Bound Distribution of Link-State and TE Information using BGP
RFC5440 - Path Computation Element (PCE) Communication Protocol (PCEP)
RFC5541 - Encoding of Objective Functions in the Path Computation Element Communication Protocol (PCEP)
RFC5455 - Diffserv-Aware Class-Type Object for the Path Computation Element Communication Protocol
RFC5492 - Capabilities Advertisement with BGP-4
RFC5521 - Extensions to the Path Computation Element Communication Protocol (PCEP) for Route Exclusions
RFC5557 - Path Computation Element Communication Protocol (PCEP) Requirements and Protocol Extensions in Support of Global Concurrent Optimization
RFC5575 - Flow Specification
RFC5886 - A Set of Monitoring Tools for Path Computation Element (PCE)-Based Architecture
RFC6286 - Autonomous-System-Wide Unique BGP Identifier for BGP-4
RFC6793 - BGP Support for Four-Octet Autonomous System (AS) Number Space
RFC7311 - The Accumulated IGP Metric Attribute for BGP
RFC7674 - Clarification of the Flowspec Redirect Extended Community
RFC5668 - 4-Octet AS Specific BGP Extended Community
RFC3107 - Carrying Label Information in BGP-4
RFC4364 - BGP/MPLS IP Virtual Private Networks (VPNs)
RFC7432 - BGP MPLS-Based Ethernet VPN
RFC7911 - Advertisement of Multiple Paths in BGP
RFC2918 - Route Refresh Capability for BGP-4
draft-ietf-bess-evpn-overlay - A Network Virtualization Overlay Solution using EVPN
draft-ietf-pce-pceps - Secure Transport for PCEP
draft-gredler-idr-bgp-ls-segment-routing-ext-03 - BGP Link-State extensions for Segment Routing
draft-ietf-idr-bgpls-segment-routing-epe-05 - Segment Routing Egress Peer Engineering BGP-LS Extensions
draft-ietf-idr-flow-spec-v6-06 - Dissemination of Flow Specification Rules for IPv6
draft-ietf-idr-flowspec-redirect-ip-01 - BGP Flow-Spec Redirect to IP Action
Stateful extensions to the Path Computation Element Protocol, December 2013
draft-ietf-pce-stateful-pce-07 - PCEP Extensions for Stateful PCE
draft-ietf-pce-pce-initiated-lsp-00 - PCEP Extensions for PCE-initiated LSP Setup in a Stateful PCE Model
Segment routing extension to the Path Computation Element Protocol, October 2014
draft-ietf-pce-segment-routing-01 - PCEP Extension for segment routing
draft-ietf-pce-lsp-setup-type-01 - PCEP Extension for path setup type
draft-ietf-pce-stateful-sync-optimizations-03 - Optimizations of Label Switched Path State Synchronization Procedures for a Stateful PCE
draft-sivabalan-pce-binding-label-sid-01 - Carrying Binding Label/Segment-ID in PCE-based Networks
RFC7854 - BGP Monitoring Protocol

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/BGP_LS_PCEP:Carbon_Release_Plan>`_
* Describe any major shifts in release schedule from the release plan
   Not Done

  * BUG-6966 Introduce infrastructure for inbound/outbound routing policies
  * BUG-6973 Migrate PCEP topology provider to use BP wiring
  * BUG-6976 Migrate BMP collector to use BP wiring
  * BUG-6978 Integrate BMP collector with Cluster Singleton Service

.. note::

   We will also ask about your testing of the latest SR, but that should
   probably not formally be part of this document.
