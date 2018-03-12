.. _bgp-user-guide-overview:

Overview
========
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
