===========
BGP LS PCEP
===========

Major Features
==============

odl-bgpcep-bgp
--------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bgp/features-bgp/src/main/features/features.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  OpenDaylight Border Gateway Protocol (BGP) plugin.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://logs.opendaylight.org/releng/jenkins092/bgpcep-csit-1node-userfeatures-all-nitrogen

odl-bgpcep-bmp
--------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bmp/features-bmp/src/main/features/features.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  OpenDaylight BGP Monitoring Protocol (BMP) plugin.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://logs.opendaylight.org/releng/jenkins092/bgpcep-csit-1node-userfeatures-all-nitrogen

odl-bgpcep-pcep
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/pcep/features-pcep/src/main/features/features.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  OpenDaylight Path Computation Element Configuration Protocol (PCEP) plugin.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://logs.opendaylight.org/releng/jenkins092/bgpcep-csit-1node-userfeatures-all-nitrogen


Documentation
=============

* **User Guide(s):**

  * :ref:`BGP User Guide <bgp-user-guide>`
  * :ref:`BGP Monitoring Protocol User Guide <bgp-monitoring-protocol-user-guide>`
  * :ref:`PCEP User Guide <pcep-user-guide>`

* **Developer Guide(s):**

  * :ref:`BGP Developer Guide <bgp-developer-guide>`
  * :ref:`BGP Monitoring Protocol Developer Guide <bgp-monitoring-protocol-developer-guide>`
  * :ref:`PCEP Developer Guide <pcep-developer-guide>`

Security Considerations
=======================

None Known - all protocol implements the TCP Authentication Option (TCP MD5)

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=10075>`_ (80%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/bgpcep/>`_

* `User features test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-only-nitrogen/>`_
* `PCEP performance and scale tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-throughpcep-only-nitrogen/>`_
* `BGP Application peer performance and scale tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-bgp-ingest-only-nitrogen/>`_
* `BGP performance and scale test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-bgp-ingest-mixed-only-nitrogen/>`_
* `BGP clustering <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-3node-periodic-bgpclustering-only-nitrogen/>`_

  The BGP extensions were tested manually with vendor's BGP router implementation or other software implementations (exaBGP, bagpipeBGP). Also, they are covered by the unit tests and automated system tests.

*  New BGP Openconfig statistics feature requires more testing.

Migration
---------

BGP:
^^^^

Protocol Configuration
''''''''''''''''''''''

First we get old configuration

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols``

**Method:** ``GET``

where *example-bmp-monitor* old bmp monitor id

Then we insert it

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols``

**Method:** ``POST``

Topology Configuration
''''''''''''''''''''''

First we get old configuration

**URL:** ``/restconf/config/network-topology:network-topology``

**Method:** ``GET``

Then we insert it

**URL:** ``/restconf/config/network-topology:network-topology``

**Method:** ``POST``

BMP:
^^^^

First we get old configuration

**URL:** ``/restconf/config/network-topology:network-topology/topology/topology-netconf/node/controller-config/yang-ext:mount/config:modules/config:module/odl-bmp-impl-cfg:bmp-monitor-impl/example-bmp-monitor``

**Method:** ``GET``

**example-bmp-monitor** old bmp monitor id

Then we insert it

**URL:** ``/restconf/config/network-topology:network-topology/topology/topology-netconf/node/controller-config/yang-ext:mount/config:modules/config:module/odl-bmp-impl-cfg:bmp-monitor-impl/example-bmp-monitor``

**Method:** ``PUT``

PCEP:
^^^^^

There are no additional steps needed for migration to this release.

Compatibility
-------------

* Is this release compatible with the previous release?
  Yes
* Any API changes?
* Any configuration changes?
  BGP OpenConfig configuration should be used instead of previous BGP CSS configuration.

Bugs Fixed
----------

* `List of bugs fixed since the previous release <https://bugs.opendaylight.org/buglist.cgi?columnlist=product%2Ccomponent%2Cassigned_to%2Cbug_severity%2Ccf_issue_type%2Cshort_desc%2Cbug_status%2Cpriority%2Cdeadline%2Ccf_target_milestone&f1=cf_target_milestone&f2=cf_issue_type&known_name=Carbon%3A%20bgpcep&list_id=84608&o1=substring&o2=equals&product=bgpcep&query_based_on=Carbon%3A%20bgpcep&query_format=advanced&resolution=FIXED&v1=nitrogen&v2=Bug>`_

Known Issues
------------

* `BUG-6562 <https://bugs.opendaylight.org/show_bug.cgi?id=6562>`_ Support add-path in base BGP NLRI

End-of-life
===========

* None

Standards
=========

* `RFC4271 <https://tools.ietf.org/html/rfc4271>`_ - A Border Gateway Protocol 4 (BGP-4)
* `RFC4760 <https://tools.ietf.org/html/rfc4760>`_ - Multiprotocol Extensions for BGP-4
* `RFC1997 <https://tools.ietf.org/html/rfc1997>`_ - BGP Communities Attribute
* `RFC4360 <https://tools.ietf.org/html/rfc4360>`_ - BGP Extended Communities Attribute
* `RFC4486 <https://tools.ietf.org/html/rfc4486>`_ - Subcodes for BGP Cease Notification Message
* `RFC5004 <https://tools.ietf.org/html/rfc5004>`_ - Avoid BGP Best Path Transitions from One External to Another
* `RFC7752 <https://tools.ietf.org/html/rfc7752>`_ - North-Bound Distribution of Link-State and TE Information using BGP
* `RFC5440 <https://tools.ietf.org/html/rfc5440>`_ - Path Computation Element (PCE) Communication Protocol (PCEP)
* `RFC5541 <https://tools.ietf.org/html/rfc5541>`_ - Encoding of Objective Functions in the Path Computation Element Communication Protocol (PCEP)
* `RFC5455 <https://tools.ietf.org/html/rfc5455>`_ - Diffserv-Aware Class-Type Object for the Path Computation Element Communication Protocol
* `RFC5492 <https://tools.ietf.org/html/rfc5492>`_ - Capabilities Advertisement with BGP-4
* `RFC5521 <https://tools.ietf.org/html/rfc5521>`_ - Extensions to the Path Computation Element Communication Protocol (PCEP) for Route Exclusions
* `RFC5557 <https://tools.ietf.org/html/rfc5557>`_ - Path Computation Element Communication Protocol (PCEP) Requirements and Protocol Extensions in Support of Global Concurrent Optimization
* `RFC5575 <https://tools.ietf.org/html/rfc5575>`_ - Flow Specification
* `RFC5886 <https://tools.ietf.org/html/rfc5886>`_ - A Set of Monitoring Tools for Path Computation Element (PCE)-Based Architecture
* `RFC6286 <https://tools.ietf.org/html/rfc6286>`_ - Autonomous-System-Wide Unique BGP Identifier for BGP-4
* `RFC6793 <https://tools.ietf.org/html/rfc6793>`_ - BGP Support for Four-Octet Autonomous System (AS) Number Space
* `RFC7311 <https://tools.ietf.org/html/rfc7311>`_ - The Accumulated IGP Metric Attribute for BGP
* `RFC7674 <https://tools.ietf.org/html/rfc7674>`_ - Clarification of the Flowspec Redirect Extended Community
* `RFC5668 <https://tools.ietf.org/html/rfc5668>`_ - 4-Octet AS Specific BGP Extended Community
* `RFC3107 <https://tools.ietf.org/html/rfc3107>`_ - Carrying Label Information in BGP-4
* `RFC4364 <https://tools.ietf.org/html/rfc4364>`_ - BGP/MPLS IP Virtual Private Networks (VPNs)
* `RFC7432 <https://tools.ietf.org/html/rfc7432>`_ - BGP MPLS-Based Ethernet VPN
* `RFC7911 <https://tools.ietf.org/html/rfc7911>`_ - Advertisement of Multiple Paths in BGP
* `RFC2918 <https://tools.ietf.org/html/rfc2918>`_ - Route Refresh Capability for BGP-4
* `draft-ietf-bess-evpn-overlay <https://tools.ietf.org/html/draft-ietf-bess-evpn-overlay-04>`_ - A Network Virtualization Overlay Solution using EVPN
* `draft-ietf-bess-evpn-vpws-02 <https://tools.ietf.org/html/draft-ietf-bess-evpn-vpws-02>`_ - VPWS support in EVPN
* `draft-ietf-pce-pceps <https://tools.ietf.org/html/draft-ietf-pce-pceps-03>`_ - Secure Transport for PCEP
* `draft-gredler-idr-bgp-ls-segment-routing-ext-03 <https://tools.ietf.org/html/draft-gredler-idr-bgp-ls-segment-routing-ext-03>`_ - BGP Link-State extensions for Segment Routing
* `draft-ietf-idr-bgpls-segment-routing-epe-05 <https://tools.ietf.org/html/draft-ietf-idr-bgpls-segment-routing-epe-05>`_ - Segment Routing Egress Peer Engineering BGP-LS Extensions
* `draft-ietf-idr-flow-spec-v6-06 <https://tools.ietf.org/html/draft-ietf-idr-flow-spec-v6-06>`_ - Dissemination of Flow Specification Rules for IPv6
* `draft-ietf-idr-flowspec-redirect-ip-01 <https://tools.ietf.org/html/draft-ietf-idr-flowspec-redirect-ip-01>`_ - BGP Flow-Spec Redirect to IP Action

* Stateful extensions to the Path Computation Element Protocol, December 2013

  * `draft-ietf-pce-stateful-pce-07 <https://tools.ietf.org/html/draft-ietf-pce-stateful-pce-07>`_ - PCEP Extensions for Stateful PCE
  * `draft-ietf-pce-pce-initiated-lsp-00 <https://tools.ietf.org/html/draft-ietf-pce-pce-initiated-lsp-00>`_ - PCEP Extensions for PCE-initiated LSP Setup in a Stateful PCE Model

* Segment routing extension to the Path Computation Element Protocol, October 2014

  * `draft-ietf-pce-segment-routing-01 <https://tools.ietf.org/html/draft-ietf-pce-segment-routing-01>`_ - PCEP Extension for segment routing
  * `draft-ietf-pce-lsp-setup-type-01 <https://tools.ietf.org/html/draft-ietf-pce-lsp-setup-type-01>`_ - PCEP Extension for path setup type
  * `draft-ietf-pce-stateful-sync-optimizations-03 <https://tools.ietf.org/html/draft-ietf-pce-stateful-sync-optimizations-03>`_ - Optimizations of Label Switched Path State Synchronization Procedures for a Stateful PCE
  * `draft-sivabalan-pce-binding-label-sid-01 <https://tools.ietf.org/html/draft-sivabalan-pce-binding-label-sid-01>`_ - Carrying Binding Label/Segment-ID in PCE-based Networks
  * `RFC7854 <https://tools.ietf.org/html/rfc7854>`_ - BGP Monitoring Protocol

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/BGP_LS_PCEP:Nitrogen_Release_Plan>`_
