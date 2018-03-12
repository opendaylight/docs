.. _bgp-user-guide:
BGP User Guide
==============
This guide contains information on how to use OpenDaylight Border Gateway Protocol (BGP) plugin.
The user should learn about BGP basic concepts, supported capabilities, configuration and usage.

.. toctree::
   :maxdepth: 1

   bgp-user-guide-config-concepts
   bgp-user-guide-ip-unicast-family
   bgp-user-guide-labeled-family
   bgp-user-guide-l3vpn-family
   bgp-user-guide-linkstate-family
   bgp-user-guide-flowspec-family
   bgp-user-guide-evpn-family
   bgp-user-guide-additional-path-capability
   bgp-user-guide-route-refresh-capability
   bgp-user-guide-operational-state
   bgp-user-guide-high-availability
   bgp-user-guide-topology-provider
   bgp-user-guide-test-tools
   bgp-user-guide-troubleshooting

.. contents:: Contents
   :depth: 1
   :local:

Overview
--------
This section provides high-level overview of the Border Gateway Protocol, OpenDaylight implementation and BGP usage in SDN era.

.. contents:: Contents
   :depth: 2
   :local:

Border Gateway Protocol
^^^^^^^^^^^^^^^^^^^^^^^
The Border Gateway Protocol (BGP) is an inter-Autonomous System (AS) routing protocol.
The primary role of the BGP is an exchange of routes among other BGP systems.
The route is an unit of information which pairs destination (IP address prefix) with attributes to the path with the destination.
One of the most interesting attributes is a list of ASes that the route traversed - essential when avoiding loop routing.
Advertised routes are stored in the Routing Information Bases (RIBs). Routes are later used to forward packets, stored in Routing Table for this purpose.
The main advantage of the BGP over other routing protocols is its scalability, thus it has become the standardized Internet routing protocol (Internet is a set of ASes).

BGP in SDN
^^^^^^^^^^
However BGP evolved long time before SDN was born, it plays a significant role in many SDN use-cases.
Also, continuous evolution of the protocol brings extensions that are very well suited for SDN.
Nowadays, BGP can carry various types of routing information - L3VPN, L2VPN, IP multicast, linkstate, etc.
Here is a brief list of software-based/legacy-network technologies where BGP-based SDN solution get into an action:

* SDN WAN - WAN orchestration and optimization
* SDN router - Turns switch into an Internet router
* Virtual Route Reflector - High-performance server-based BGP Route Reflector
* SDX - A Software Defined Internet Exchange controller
* Large-Scale Data Centers - BGP Data Center Routing, MPLS/SR in DCs, DC interconnection
* DDoS mitigation - Traffic Filtering distribution with BGP

OpenDaylight BGP plugin
^^^^^^^^^^^^^^^^^^^^^^^
The OpenDaylight controller provides an implementation of BGP (RFC 4271) as a south-bound protocol plugin.
The implementation renders all basic *BGP speaker capabilities*:

* inter/intra-AS peering
* routes advertising
* routes originating
* routes storage

The plugin's **north-bound API** (``REST``/``Java``) provides to user:

* fully dynamic runtime standardized BGP configuration
* read-only access to all RIBs
* read-write programmable RIBs
* read-only reachability/linkstate topology view

.. note:: The BGP plugin is NOT a virtual router - does not construct Routing Tables, nor forward traffic.

List of supported capabilities
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
In addition to the base protocol implementation, the plugin provides many extensions to BGP, all based on IETF standards.

* `RFC4271 <https://tools.ietf.org/html/rfc4271>`_ - A Border Gateway Protocol 4 (BGP-4)
* `RFC4456 <https://tools.ietf.org/html/rfc4456>`_ - BGP Route Reflection: An Alternative to Full Mesh Internal BGP (IBGP)
* `RFC1997 <https://tools.ietf.org/html/rfc1997>`_ - BGP Communities Attribute
* `RFC4360 <https://tools.ietf.org/html/rfc4360>`_ - BGP Extended Communities Attribute
* `RFC4486 <https://tools.ietf.org/html/rfc4486>`_ - Subcodes for BGP Cease Notification Message
* `RFC5492 <https://tools.ietf.org/html/rfc5492>`_ - Capabilities Advertisement with BGP-4
* `RFC5004 <https://tools.ietf.org/html/rfc5004>`_ - Avoid BGP Best Path Transitions from One External to Another
* `RFC6286 <https://tools.ietf.org/html/rfc6286>`_ - Autonomous-System-Wide Unique BGP Identifier for BGP-4
* `RFC6793 <https://tools.ietf.org/html/rfc6793>`_ - BGP Support for Four-Octet Autonomous System (AS) Number Space
* `RFC7311 <https://tools.ietf.org/html/rfc7311>`_ - The Accumulated IGP Metric Attribute for BGP
* `RFC5668 <https://tools.ietf.org/html/rfc5668>`_ - 4-Octet AS Specific BGP Extended Community
* `draft-ietf-idr-link-bandwidth <https://tools.ietf.org/html/draft-ietf-idr-link-bandwidth-06>`_ - BGP Link Bandwidth Extended Community
* `draft-ietf-idr-bgp-extended-messages <https://tools.ietf.org/html/draft-ietf-idr-bgp-extended-messages-13>`_ - Extended Message support for BGP
* `draft-sajassi-bess-evpn-vpws-fxc-01 <https://tools.ietf.org/html/draft-sajassi-bess-evpn-vpws-fxc-01>`_ - EVPN VPWS Flexible Cross-Connect Service
* `RFC4760 <https://tools.ietf.org/html/rfc4760>`_ - Multiprotocol Extensions for BGP-4
   * `RFC7752 <https://tools.ietf.org/html/rfc7752>`_ - North-Bound Distribution of Link-State and TE Information using BGP
      * `draft-gredler-idr-bgp-ls-segment-routing-ext <https://tools.ietf.org/html/draft-gredler-idr-bgp-ls-segment-routing-ext-03>`_  - BGP Link-State extensions for Segment Routing
      * `draft-ietf-idr-bgpls-segment-routing-epe <https://tools.ietf.org/html/draft-ietf-idr-bgpls-segment-routing-epe-05>`_  - Segment Routing Egress Peer Engineering BGP-LS Extensions
   * `RFC5575 <https://tools.ietf.org/html/rfc5575>`_ - Dissemination of Flow Specification Rules
      * `RFC7674 <http://tools.ietf.org/html/rfc7674>`_  - Clarification of the Flowspec Redirect Extended Community
      * `draft-ietf-idr-flow-spec-v6 <https://tools.ietf.org/html/draft-ietf-idr-flow-spec-v6-07>`_  - Dissemination of Flow Specification Rules for IPv6
      * `draft-ietf-idr-flowspec-redirect-ip <https://tools.ietf.org/html/draft-ietf-idr-flowspec-redirect-ip-00>`_  - BGP Flow-Spec Redirect to IP Action
   * `RFC3107 <https://tools.ietf.org/html/rfc3107>`_  - Carrying Label Information in BGP-4
      * `draft-ietf-idr-bgp-prefix-sid <https://tools.ietf.org/html/draft-ietf-idr-bgp-prefix-sid-03>`_  - Segment Routing Prefix SID extensions for BGP
   * `RFC4364 <https://tools.ietf.org/html/rfc4364>`_  - BGP/MPLS IP Virtual Private Networks (VPNs)
      * `RFC4659 <https://tools.ietf.org/html/rfc4659>`_  - BGP-MPLS IP Virtual Private Network (VPN) Extension for IPv6 VPN
   * `RFC7432 <https://tools.ietf.org/html/rfc7432>`_  - BGP MPLS-Based Ethernet VPN
      * `draft-ietf-bess-evpn-overlay <https://tools.ietf.org/html/draft-ietf-bess-evpn-overlay-04>`_  - A Network Virtualization Overlay Solution using EVPN
      * `draft-ietf-bess-evpn-vpws <https://tools.ietf.org/html/draft-ietf-bess-evpn-vpws-07>`_  - VPWS support in EVPN
* `RFC7911 <https://tools.ietf.org/html/rfc7911>`_  - Advertisement of Multiple Paths in BGP
* `RFC2918 <https://tools.ietf.org/html/rfc2918>`_  - Route Refresh Capability for BGP-4

Running BGP
-----------
This section explains how to install BGP plugin.

1. Install BGP feature - ``odl-bgpcep-bgp``.
   Also, for sake of this sample, it is required to install RESTCONF.
   In the Karaf console, type command:

   .. code-block:: console

      feature:install odl-restconf odl-bgpcep-bgp

2. The BGP plugin contains a default configuration, which is applied after the feature starts up.
   One instance of BGP plugin is created (named *example-bgp-rib*), and its presence can be verified via REST:

   **URL:** ``/restconf/operational/bgp-rib:bgp-rib``

   **Method:** ``GET``

   **Response Body:**

   .. code-block:: xml

      <bgp-rib xmlns="urn:opendaylight:params:xml:ns:yang:bgp-rib">
         <rib>
             <id>example-bgp-rib</id>
             <loc-rib>
             ....
             </loc-rib>
         </rib>
      </bgp-rib>
