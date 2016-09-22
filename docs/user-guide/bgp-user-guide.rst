Border Gateway Protocol User Guide
==================================
This guide contains information on how to use OpenDayliht Border Gateway Protocol (BGP) plugin.
The user should learn about BGP basic concepts, supported capabilities, configuration and usage.

Overview
--------
This section provides high-level overview of the Border Gateway Protocol, OpenDaylight implementation and BGP usage in SDN era.

Border Gateway Protocol
^^^^^^^^^^^^^^^^^^^^^^^
The Border Gateway Protocol (BGP) is an inter-Autonomous System (AS) routing protocol.
The primary role of the BGP is an exchange of routes among other BGP systems.
The route is an unit of information which pairs destination (IP address prefix) with attributes to the path with the destination.
One of the most interesting attributes is a list of ASes that the route traversed - essential when avoiding loop routing.
Advertised routes are stored in the Routing Information Bases (RIBs). Routes are later used to forward packets, stored in Routing Table for this purpose.
The main advantage of the BGP over other routing protocols is its scalability, thus it has become the standardised Internet routing protocol (Internet is a set of ASes).

BGP in SDN
^^^^^^^^^^
However BGP evolved long time before SDN was born, it plays a significant role in many SDN use-cases.
Also, continuous evolution of the protocol brings extensions that are very well suited for SDN.
Nowadays, BGP can carry various types of routing information - L3VPN, L2VPN, IP multicast, linkstate, etc.
Here is a brief list of software-based/legacy-network technologies where BGP-based SDN solution get into an action:

* SDN WAN - WAN orchestration and optimisation
* SDN router - Turns switch into an Internet router
* Virtual Route Reflector - High-performance server-based BGP Route Reflector
* SDX - A Software Defined Internet Exchange controller
* Large-Scale Data Centres - BGP Data Center Routing, MPLS/SR in DCs, DC interconnection
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

* fully dynamic runtime standardised BGP configuration
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
This paragraph explains how to install BGP plugin.

1. Install BGP feature - ``odl-bgpcep-bgp``.
   Also, for sake of this sample, it is required to install RESTCONF too.
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

Basic Configuration & Concepts
------------------------------
Following section shows the way to configure BGP basics, how to verify functionality and presents essential components of the plugin.
Next samples manifest the plugin's runtime configuration capability.
It shows the way to configure the plugin via REST, using standardised OpenConfig BGP APIs.

Protocol Configuration
^^^^^^^^^^^^^^^^^^^^^^
As a first step, a new protocol instance needs to be configured.
It is a very basic configuration conforming with RFC4271.

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,7,8

   <protocol xmlns="http://openconfig.net/yang/network-instance">
       <name>bgp-example</name>
       <identifier xmlns:x="http://openconfig.net/yang/policy-types">x:BGP</identifier>
       <bgp xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
           <global>
               <config>
                   <router-id>127.0.0.1</router-id>
                   <as>65000</as>
               </config>
           </global>
       </bgp>
   </protocol>

2. The unique protocol instance identifier.

7. BGP Identifier of the speaker.

8. Local autonomous system number of the speaker. Note that, OpenDaylight BGP implementation supports four-octet AS numbers only.

The new instance presence can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,4

   <rib xmlns="urn:opendaylight:params:xml:ns:yang:bgp-rib">
       <id>bgp-example</id>
       <loc-rib>
           <tables>
               <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</afi>
               <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:unicast-subsequent-address-family</safi>
               <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet"></ipv4-routes>
               <attributes>
                   <uptodate>true</uptodate>
               </attributes>
           </tables>
       </loc-rib>
   </rib>

3. Loc-RIB - Per-protocol instance RIB, which contains the routes that have been selected by local BGP speaker's decision process.

4. The BGP-4 supports carrying IPv4 prefixes, such routes are stored in *ipv4-address-family*/*unicast-subsequent-address-family* table.

BGP Peering
^^^^^^^^^^^
To exchange routing information between two BGP systems (peers), it is required to configure a peering on both BGP speakers first.
This mean that each BGP speaker has a white list of neighbours, representing remote peers, with which the peering is allowed.
BGP uses TCP as its transport protocol, by default listens on port 179.

.. important:: OpenDaylight BGP plugin is configured to listen on port *1790*, due to privileged ports restriction for non-root users.
   One of the workarounds is to use port redirection.

The TCP connection is established between two peers and they exchange messages to open and confirm the connection parameters followed by routes exchange.

Here is a sample basic neighbour configuration:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,4

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>127.0.0.2</neighbor-address>
       <timers>
           <config>
               <hold-time>90</hold-time>
               <connect-retry>10</connect-retry>
           </config>
       </timers>
       <transport>
           <config>
               <remote-port>179</remote-port>
               <passive-mode>false</passive-mode>
           </config>
       </transport>
       <config>
           <peer-type>INTERNAL</peer-type>
       </config>
   </neighbor>

2. IP address of the remote BGP peer. Also serves as an unique identifier of a neighbour in a list of neighbours.

5. Proposed number of seconds for value of the Hold Timer. Default value is **90**.

6. Time interval in seconds between attempts to establish session with the peer. Effective in active mode only. Default value is **30**.

11. Remote port number to which the local BGP is connecting. Effective in active mode only. Default value **179**.

12. Wait for peers to issue requests to open a BGP session, rather than initiating sessions from the local router. Default value is **false**.

16. Explicitly designate the peer as internal or external. Default value is **INTERNAL**.

Once the remote peer is connected and it advertised routes to local BGP system, routes are stored in peer's RIBs.
The RIBs can be checked via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/peer/bgp:%2F%2F127.0.0.2``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 8,13,35,40,62,66

   <peer xmlns="urn:opendaylight:params:xml:ns:yang:bgp-rib">
       <peer-id>bgp://127.0.0.2</peer-id>
       <supported-tables>
           <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</afi>
           <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:unicast-subsequent-address-family</safi>
       </supported-tables>
       <peer-role>ibgp</peer-role>
       <adj-rib-in>
           <tables>
               <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</afi>
               <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:unicast-subsequent-address-family</safi>
               <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
                   <ipv4-route>
                       <path-id>0</path-id>
                       <prefix>10.0.0.10/32</prefix>
                       <attributes>
                           <as-path></as-path>
                           <origin>
                               <value>igp</value>
                           </origin>
                           <local-pref>
                               <pref>100</pref>
                           </local-pref>
                           <ipv4-next-hop>
                               <global>10.10.1.1</global>
                           </ipv4-next-hop>
                       </attributes>
                   </ipv4-route>
               </ipv4-routes>
               <attributes>
                   <uptodate>true</uptodate>
               </attributes>
           </tables>
       </adj-rib-in>
       <effective-rib-in>
           <tables>
               <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</afi>
               <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:unicast-subsequent-address-family</safi>
               <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
                   <ipv4-route>
                       <path-id>0</path-id>
                       <prefix>10.0.0.10/32</prefix>
                       <attributes>
                           <as-path></as-path>
                           <origin>
                               <value>igp</value>
                           </origin>
                           <local-pref>
                               <pref>100</pref>
                           </local-pref>
                           <ipv4-next-hop>
                               <global>10.10.1.1</global>
                           </ipv4-next-hop>
                       </attributes>
                   </ipv4-route>
               </ipv4-routes>
               <attributes>
                   <uptodate>true</uptodate>
               </attributes>
           </tables>
       </effective-rib-in>
       <adj-rib-out>
           <tables>
               <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</afi>
               <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:unicast-subsequent-address-family</safi>
               <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet"></ipv4-routes>
               <attributes></attributes>
           </tables>
       </adj-rib-out>
   </peer>

8. **Adj-RIB-In** - Per-peer RIB, which contains unprocessed routes that has been advertised to local BGP speaker by the remote peer.

13. Here is the reported route with destination *10.0.0.10/32* in Adj-RIB-In.

35. **Effective-RIB-In** - Per-peer RIB, which contains processed routes as a result of applying inbound policy to Adj-RIB-In routes.

40. Here is the reported route with destination *10.0.0.10/32*, same as in Adj-RIB-In, as it was not touched by import policy.

62. **Adj-RIB-Out** - Per-peer RIB, which contains routes for advertisement to the peer by means of the local speaker's UPDATE message.

66. The peer's Adj-RIB-Out is empty as there are no routes to be advertise from local BGP speaker.

Also the same route should appeared in Loc-RIB now:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/ipv4-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 4,6,8,11,14

   <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
       <ipv4-route>
           <path-id>0</path-id>
           <prefix>10.0.0.10/32</prefix>
           <attributes>
               <as-path></as-path>
               <origin>
                   <value>igp</value>
               </origin>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <ipv4-next-hop>
                   <global>10.10.1.1</global>
               </ipv4-next-hop>
           </attributes>
       </ipv4-route>
   </ipv4-routes>

4. **Destination** - IPv4 Prefix Address.

6. **AS_PATH** - mandatory attribute, contains a list of the autonomous system numbers through that routing information has traversed.

8. **ORIGIN** - mandatory attribute, indicates an origin of the route - **ibgp**, **egp**, **incomplete**.

11. **LOCAL_PREF** - indicates a degree of preference for external routes, higher value is preferred.

14. **NEXT_HOP** - mandatory attribute, defines IP address of the router that should be used as the next hop to the destination.

There are much more attributes that may be carried along with the destination:

**BGP-4 Path Attributes**

* **MULTI_EXIT_DISC** (MED)
   Optional attribute, to be used to discriminate among multiple exit/entry points on external links, lower number is preferred.

   .. code-block:: xml

      <multi-exit-disc>
       <med>0</med>
      </multi-exit-disc>


* **ATOMIC_AGGREGATE**
   Indicates whether AS_SET was excluded from AS_PATH due to routes aggregation.

   .. code-block:: xml

      <atomic-aggregate/>

* **AGGREGATOR**
   Optional attribute, contains AS number and IP address of a BGP speaker which perfomed routes aggregation.

   .. code-block:: xml

      <aggregator>
          <as-number>65000</as-number>
          <network-address>127.0.0.1</network-address>
      </aggregator>

* **Unrecognised**
   Optional attribute, used to store optional attributes, unrecognised by a local BGP speaker.

   .. code-block:: xml

      <unrecognized-attributes>
          <partial>true</partial>
          <transitive>true</transitive>
          <type>101</type>
          <value>0101010101010101</value>
      </unrecognized-attributes>

**Route Reflector Attributes**

* **ORIGINATOR_ID**
   Optional attribute, carries BGP Identifier of the originator of the route.

   .. code-block:: xml

      <originator-id>
          <originator>41.41.41.41</originator>
      </originator-id>

* **CLUSTER_LIST**
   Optional attribute, contains a list of CLUSTER_ID values representing the path that the route has traversed.

   .. code-block:: xml

      <cluster-id>
          <cluster>40.40.40.40</cluster>
      </cluster-id>

* **Communities**
   Optional attribute, may be used for policy routing.

   .. code-block:: xml

      <communities>
          <as-number>65000</as-number>
          <semantics>30740</semantics>
      </communities>

**Extended Communities**

* **Route Target**
   Identifies one or more routers that may receive a route.

   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <route-target-ipv4>
              <global-administrator>127.0.0.1</global-administrator>
              <local-administrator>123</local-administrator>
          </route-target-ipv4>
      </extended-communities>
      <extended-communities>
          <transitive>true</transitive>
          <as-4-route-target-extended-community>
                  <as-4-specific-common>
                  <as-number>65000</as-number>
                  <local-administrator>123</local-administrator>
              </as-4-specific-common>
          </as-4-route-target-extended-community>
      </extended-communities>


* **Route Origin**
   Identifies one or more routers that injected a route.

   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <route-origin-ipv4>
              <global-administrator>127.0.0.1</global-administrator>
              <local-administrator>123</local-administrator>
          </route-origin-ipv4>
      </extended-communities>
      <extended-communities>
          <transitive>true</transitive>
          <as-4-route-origin-extended-community>
              <as-4-specific-common>
                  <as-number>65000</as-number>
                  <local-administrator>123</local-administrator>
              </as-4-origin-common>
          </as-4-route-target-extended-community>
      </extended-communities>


* **Link Bandwidth**
   Carries the cost to reach external neighbour.

   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <link-bandwidth-extended-community>
              <bandwidth>BH9CQAA=</bandwidth>
          </link-bandwidth-extended-community>
      </extended-communities>

* **AIGP**
   Optional attribute, carries accumulated IGP metric.

   .. code-block:: xml

      <aigp>
          <aigp-tlv>
              <metric>120</metric>
          </aigp-tlv>
      </aigp>


.. note:: When the remote peer disconnects, it disappear from operational state of local speaker instance and advertised routes are removed too.

External peering configuration
''''''''''''''''''''''''''''''
An example above provided configuration for internal peering only.
Following configuration sample is intended for external peering:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 5

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>127.0.0.3</neighbor-address>
       <config>
           <peer-type>EXTERNAL</peer-type>
           <peer-as>64999</peer-as>
       </config>
   </neighbor>

5. AS number of the remote peer.

Route reflector client configuration
''''''''''''''''''''''''''''''''''''
Following configuration sample is intended for external peering:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 8

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>127.0.0.4</neighbor-address>
       <config>
           <peer-type>INTERNAL</peer-type>
       </config>
       <route-reflector>
           <config>
               <route-reflector-client>true</route-reflector-client>
           </config>
       </route-reflector>
   </neighbor>

8. Configure the neighbour as a route reflector client. Default value is *false*.

MD5 authentication configuration
''''''''''''''''''''''''''''''''
The OpenDaylight BGP implementation is supporting TCP MD5 for authentication.
Sample configuration below shows how to set authentication password for a peer:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 4

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>127.0.0.5</neighbor-address>
       <config>
           <auth-password>topsecret</auth-password>
       </config>
   </neighbor>

4. Configures an MD5 authentication password for use with neighbouring devices.

.. note:: Existing neighbour configuration can be reconfigured (change configuration parameters) anytime.
   As a result, established connection is dropped, peer instance is recreated with a new configuration settings and connection re-established.

.. note:: The BGP configuration is persisted on OpendDaylight shutdown and restored after the re-start.

BGP application peer and programmable RIB
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The OpenDaylight BGP implementation also supports routes injection via *application peer*.
Such peer has its own programmable RIB, which can be modified by user.
This concept allows user to originate new routes and advertise them to all connected peers.

Application peer configuration
''''''''''''''''''''''''''''''
Following configuration sample show a way to configure application peer:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,4

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>127.0.0.6</neighbor-address>
       <config>
           <peer-group>application-peers</peer-group>
       </config>
   </neighbor>

2. IP address is uniquely identifying application peer and its programmable RIB. Address is also used in local BGP speaker decision process.

4. Indicates that peer is associated with *application-peers* group. It serves to distinguish application peers from regular neighbours.

The application peer presence can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/peer/bgp:%2F%2F127.0.0.6``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,8

   <peer xmlns="urn:opendaylight:params:xml:ns:yang:bgp-rib">
       <peer-id>bgp://127.0.0.6</peer-id>
       <peer-role>internal</peer-role>
       <adj-rib-in>
           <tables>
               <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</afi>
               <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:unicast-subsequent-address-family</safi>
               <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet"></ipv4-routes>
               <attributes>
                   <uptodate>false</uptodate>
               </attributes>
           </tables>
       </adj-rib-in>
       <effective-rib-in>
           <tables>
               <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</afi>
               <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:unicast-subsequent-address-family</safi>
               <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet"></ipv4-routes>
               <attributes></attributes>
           </tables>
       </effective-rib-in>
   </peer>

3. Peer role for application peer is *internal*.

8. Adj-RIB-In is empty, as no routes were originated yet.

.. note:: There is no Adj-RIB-Out for application peer.

Programmable RIB
''''''''''''''''
Next example shows how to inject a route into the programmable RIB.

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.6/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <ipv4-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
       <path-id>0</path-id>
       <prefix>10.0.0.11/32</prefix>
       <attributes>
           <as-path></as-path>
           <origin>
               <value>igp</value>
           </origin>
           <local-pref>
               <pref>100</pref>
           </local-pref>
           <ipv4-next-hop>
               <global>10.11.1.1</global>
           </ipv4-next-hop>
       </attributes>
   </ipv4-route>

Now the injected route appears in application peer's RIBs and in local speaker's Loc-RIB:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/peer/bgp:%2F%2F127.0.0.6``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 9

   <peer xmlns="urn:opendaylight:params:xml:ns:yang:bgp-rib">
       <peer-id>bgp://127.0.0.6</peer-id>
       <peer-role>internal</peer-role>
       <adj-rib-in>
           <tables>
               <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</afi>
               <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:unicast-subsequent-address-family</safi>
               <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
                   <ipv4-route>
                       <path-id>0</path-id>
                       <prefix>10.0.0.11/32</prefix>
                       <attributes>
                           <as-path></as-path>
                           <origin>
                               <value>igp</value>
                           </origin>
                           <local-pref>
                               <pref>100</pref>
                           </local-pref>
                           <ipv4-next-hop>
                               <global>10.11.1.1</global>
                           </ipv4-next-hop>
                       </attributes>
                   </ipv4-route>
               </ipv4-routes>
               <attributes>
                   <uptodate>false</uptodate>
               </attributes>
           </tables>
       </adj-rib-in>
       <effective-rib-in>
           <tables>
               <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</afi>
               <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:unicast-subsequent-address-family</safi>
               <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
                   <ipv4-route>
                       <path-id>0</path-id>
                       <prefix>10.0.0.11/32</prefix>
                       <attributes>
                           <as-path></as-path>
                           <origin>
                               <value>igp</value>
                           </origin>
                           <local-pref>
                               <pref>100</pref>
                           </local-pref>
                           <ipv4-next-hop>
                               <global>10.11.1.1</global>
                           </ipv4-next-hop>
                       </attributes>
                   </ipv4-route>
               </ipv4-routes>
               <attributes></attributes>
           </tables>
       </effective-rib-in>
   </peer>

9. Injected route is present in application peer's Adj-RIB-In and Effective-RIB-In.

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/ipv4-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2

   <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
       <ipv4-route>
           <path-id>0</path-id>
           <prefix>10.0.0.10/32</prefix>
           <attributes>
               <as-path></as-path>
               <origin>
                   <value>igp</value>
               </origin>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <ipv4-next-hop>
                   <global>10.11.1.1</global>
               </ipv4-next-hop>
           </attributes>
       </ipv4-route>
       <ipv4-route>
           <path-id>0</path-id>
           <prefix>10.0.0.10/32</prefix>
           <attributes>
               <as-path></as-path>
               <origin>
                   <value>igp</value>
               </origin>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <ipv4-next-hop>
                   <global>10.10.1.1</global>
               </ipv4-next-hop>
           </attributes>
       </ipv4-route>
   </ipv4-routes>

2. The injected route is now present in Loc-RIB along with a route (destination *10.0.0.10/32*) advertised by remote peer.

This route is also advertised to the remote peer (*127.0.0.2*), hence route appears in its Adj-RIB-Out:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/peer/bgp:%2F%2F127.0.0.2/adj-rib-out/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <ipv4-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
       <path-id>0</path-id>
       <prefix>10.0.0.11/32</prefix>
       <attributes>
           <as-path></as-path>
           <origin>
               <value>igp</value>
           </origin>
           <local-pref>
               <pref>100</pref>
           </local-pref>
           <ipv4-next-hop>
               <global>10.11.1.1</global>
           </ipv4-next-hop>
       </attributes>
   </ipv4-route>

Injected route can be removed from programmable RIB in a following way:

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.6/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes/ipv4-route/10.0.0.11%2F32/0``

**Method:** ``DELETE``

Consequently, route disappears from programmable RIB, application peer's RIBs, Loc-RIB and peer's Adj-RIB-Out (UPDATE message with prefix withdrawal is send).

.. note:: Routes stored in programmable RIB are persisted on OpendDaylight shutdown and restored after the re-start.

BGP pipeline
^^^^^^^^^^^^
.. figure:: ./images/bgpcep/bgp-pipeline.png
   :alt: BGP pipeline.

   BGP pipeline - routes re-advertisement.

.. figure:: ./images/bgpcep/bgp-app-pipeline.png
   :alt: BGP application peer pipeline.

   BGP applcaition peer pipeline - routes injection.

References
^^^^^^^^^^
* `A Border Gateway Protocol 4 (BGP-4) <https://tools.ietf.org/html/rfc4271>`_
* `BGP Route Reflection <https://tools.ietf.org/html/rfc4456>`_
* `BGP Communities Attribute <https://tools.ietf.org/html/rfc1997>`_
* `BGP Support for Four-Octet Autonomous System (AS) Number Space <https://tools.ietf.org/html/rfc6793>`_
* `The Accumulated IGP Metric Attribute for BGP <https://tools.ietf.org/html/rfc7311>`_
* `4-Octet AS Specific BGP Extended Community <https://tools.ietf.org/html/rfc5668>`_
* `BGP Link Bandwidth Extended Community <https://tools.ietf.org/html/draft-ietf-idr-link-bandwidth-06>`_
* `Use of BGP for Routing in Large-Scale Data Centers <https://tools.ietf.org/html/rfc7938>`_

IP Unicast Family
-----------------
The BGP-4 allows to carry IPv4 specific information only.
The basic BGP Multiprotocol extension brings *Unicast* Subsequent Address Family (SAFI) - intended to be used for IP unicast forwarding.
The combination of IPv4 and IPv6 Address Family (AF) and Unicast SAFI is essential for Internet routing.
The IPv4 Unicast routes are interchangeable with BGP-4 routes, as they can carry the same type of routing information.

Configuration
^^^^^^^^^^^^^
This section shows a way to enable IPv4 and IPv6 Unicast family in BGP speaker and peer configuration.

BGP Speaker
'''''''''''
To enable IPv4 and IPv6 Unicast support in BGP plugin, first configure BGP speaker instance:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <protocol xmlns="http://openconfig.net/yang/network-instance">
       <name>bgp-example</name>
       <identifier xmlns:x="http://openconfig.net/yang/policy-types">x:BGP</identifier>
       <bgp xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
           <global>
               <config>
                   <router-id>127.0.0.1</router-id>
                   <as>65000</as>
               </config>
               <afi-safis>
                   <afi-safi>
                       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-UNICAST</afi-safi-name>
                   </afi-safi>
                   <afi-safi>
                       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-UNICAST</afi-safi-name>
                   </afi-safi>
               </afi-safis>
           </global>
       </bgp>
   </protocol>

BGP Peer
''''''''
Here is an example for BGP peer configuration with enabled IPv4 and IPv6 Unicast family.

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>127.0.0.2</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-UNICAST</afi-safi-name>
           </afi-safi>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-UNICAST</afi-safi-name>
           </afi-safi>
       </afi-safis>
   </neighbor>

Usage
^^^^^
IPv4 Unicast
''''''''''''
The IPv4 Unicast table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/ipv4-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
       <ipv4-route>
           <path-id>0</path-id>
           <prefix>193.0.2.1/32</prefix>
           <attributes>
               <as-path></as-path>
               <origin>
                   <value>igp</value>
               </origin>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <ipv4-next-hop>
                   <global>10.0.0.1</global>
               </ipv4-next-hop>
           </attributes>
       </ipv4-route>
   </ipv4-routes>

IPv6 Unicast
''''''''''''
The IPv6 Unicast table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/ipv6-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <ipv6-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
       <ipv6-route>
           <path-id>0</path-id>
           <prefix>2a02:b80:0:1::/64</prefix>
           <attributes>
               <as-path></as-path>
               <origin>
                   <value>igp</value>
               </origin>
               <local-pref>
                   <pref>200</pref>
               </local-pref>
               <ipv6-next-hop>
                   <global>2a02:b80:0:2::1</global>
               </ipv6-next-hop>
           </attributes>
       </ipv6-route>
   </ipv6-routes>

.. note:: IPv4/6 routes mapping to topology nodes is supported by BGP Topology Provider.

Programming
^^^^^^^^^^^
IPv4 Unicast
''''''''''''
This examples show how to originate and remove IPv4 route via programmable RIB.
Make sure the application peer is configured first.

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <ipv4-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
       <path-id>0</path-id>
       <prefix>10.0.0.11/32</prefix>
       <attributes>
           <as-path></as-path>
           <origin>
               <value>igp</value>
           </origin>
           <local-pref>
               <pref>100</pref>
           </local-pref>
           <ipv4-next-hop>
               <global>10.11.1.1</global>
           </ipv4-next-hop>
       </attributes>
   </ipv4-route>

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes/ipv4-route/10.0.0.11%2F32/0``

**Method:** ``DELETE``

IPv6 Unicast
''''''''''''
This examples show how to originate and remove IPv6 route via programmable RIB:

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv6-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv6-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <ipv6-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
       <prefix>2001:db8:30::3/128</prefix>
       <path-id>0</path-id>
       <attributes>
           <ipv6-next-hop>
               <global>2001:db8:1::6</global>
           </ipv6-next-hop>
           <as-path/>
           <origin>
               <value>igp</value>
           </origin>
           <local-pref>
               <pref>100</pref>
           </local-pref>
       </attributes>
   </ipv6-route>

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv6-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv6-routes/ipv6-route/2001:db8:30::3%2F128/0``

**Method:** ``DELETE``

References
^^^^^^^^^^
* `Multiprotocol Extensions for BGP-4 <https://tools.ietf.org/html/rfc4760>`_

IP Labelled Unicast Family
--------------------------
The BGP Labelled Unicast (BGP-LU) Multiprotocol extension is used to distribute a MPLS label that is mapped to a particular route.
It can be used to advertise a MPLS transport path between IGP regions and Autonomous Systems.
Also, BGP-LU can help to solve the Inter-domain traffic-engineering problem and can be deployed in large-scale data centres along with MPLS and Spring.
In addition, IPv6 Labelled Unicast can be used to interconnect IPv6 islands over IPv4/MPLS networks using 6PE.

Configuration
^^^^^^^^^^^^^
This section shows a way to enable IPv4 and IPv6 Labelled Unicast family in BGP speaker and peer configuration.

BGP Speaker
'''''''''''
To enable IPv4 and IPv6 Labelled Unicast support in BGP plugin, first configure BGP speaker instance:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <protocol xmlns="http://openconfig.net/yang/network-instance">
       <name>bgp-example</name>
       <identifier xmlns:x="http://openconfig.net/yang/policy-types">x:BGP</identifier>
       <bgp xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
           <global>
               <config>
                   <router-id>127.0.0.1</router-id>
                   <as>65000</as>
               </config>
               <afi-safis>
                   <afi-safi>
                       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-LABELLED-UNICAST</afi-safi-name>
                   </afi-safi>
                   <afi-safi>
                       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-LABELLED-UNICAST</afi-safi-name>
                   </afi-safi>
               </afi-safis>
           </global>
       </bgp>
   </protocol>

BGP Peer
''''''''
Here is an example for BGP peer configuration with enabled IPv4 and IPv6 Labelled Unicast family.

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>127.0.0.2</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-LABELLED-UNICAST</afi-safi-name>
           </afi-safi>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-LABELLED-UNICAST</afi-safi-name>
           </afi-safi>
       </afi-safis>
   </neighbor>

Usage
^^^^^
The IPv4 Labelled Unicast table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-labeled-unicast:labeled-unicast-subsequent-address-family/bgp-labeled-unicast:labeled-unicast-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <labeled-unicast-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-labeled-unicast">
       <labeled-unicast-route>
           <path-id>0</path-id>
           <route-key>MAA+gRQAAA==</route-key>
           <attributes>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <ipv4-next-hop>
                   <global>200.10.0.101</global>
               </ipv4-next-hop>
               <as-path></as-path>
               <origin>
                   <value>igp</value>
               </origin>
           </attributes>
           <label-stack>
               <label-value>1000</label-value>
           </label-stack>
           <prefix>20.0.0.0/24</prefix>
       </labeled-unicast-route>
   </labeled-unicast-routes>

Programming
^^^^^^^^^^^
IPv4 Labelled
'''''''''''''
This examples show how to originate and remove IPv4 labelled route via programmable RIB.
Make sure the application peer is configured first.

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv4-address-family/bgp-labeled-unicast:labeled-unicast-subsequent-address-family/bgp-labeled-unicast:labeled-unicast-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <labeled-unicast-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-labeled-unicast">
       <route-key>label1</route-key>
       <prefix>1.1.1.1/32</prefix>
       <path-id>0</path-id>
       <label-stack>
           <label-value>800322</label-value>
       </label-stack>
       <attributes>
           <ipv4-next-hop>
               <global>199.20.160.41</global>
           </ipv4-next-hop>
           <origin>
               <value>igp</value>
           </origin>
           <as-path/>
           <local-pref>
               <pref>100</pref>
           </local-pref>
       </attributes>
   </labeled-unicast-route>

In addition, BGP-LU Spring extension allows to attach BGP Prefix SID attribute to the route, in order to signal the BGP-Prefix-SID, where the SR is applied to MPLS dataplane.

.. code-block:: xml

   <bgp-prefix-sid>
       <bgp-prefix-sid-tlvs>
           <label-index-tlv xmlns="urn:opendaylight:params:xml:ns:yang:bgp-labeled-unicast">322</label-index-tlv>
       </bgp-prefix-sid-tlvs>
       <bgp-prefix-sid-tlvs>
           <srgb-value xmlns="urn:opendaylight:params:xml:ns:yang:bgp-labeled-unicast">
               <base>800000</base>
               <range>4095</range>
           </srgb-value>
       </bgp-prefix-sid-tlvs>
   </bgp-prefix-sid>

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv4-address-family/bgp-labeled-unicast:labeled-unicast-subsequent-address-family/bgp-labeled-unicast:labeled-unicast-routes/bgp-labeled-unicast:labeled-unicast-route/label1/0``

**Method:** ``DELETE``

IPv6 Labelled
'''''''''''''
This examples show how to originate and remove IPv6 labelled route via programmable RIB.

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv4-address-family/bgp-labeled-unicast:labeled-unicast-subsequent-address-family/bgp-labeled-unicast:labeled-unicast-ipv6-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <labeled-unicast-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-labeled-unicast">
       <route-key>label1</route-key>
       <prefix>2001:db8:30::3/128</prefix>
       <path-id>0</path-id>
       <label-stack>
           <label-value>123</label-value>
       </label-stack>
       <attributes>
           <ipv6-next-hop>
               <global>2003:4:5:6::7</global>
           </ipv6-next-hop>
           <origin>
               <value>igp</value>
           </origin>
           <as-path/>
           <local-pref>
               <pref>100</pref>
           </local-pref>
       </attributes>
   </labeled-unicast-route>

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv4-address-family/bgp-labeled-unicast:labeled-unicast-subsequent-address-family/bgp-labeled-unicast:labeled-unicast-ipv6-routes/bgp-labeled-unicast:labeled-unicast-route/label1/0``

**Method:** ``DELETE``

References
^^^^^^^^^^
* `Carrying Label Information in BGP-4 <https://tools.ietf.org/html/rfc3107>`_
* `Segment Routing Prefix SID extensions for BGP <https://tools.ietf.org/html/draft-ietf-idr-bgp-prefix-sid-03>`_
* `Connecting IPv6 Islands over IPv4 MPLS Using IPv6 Provider Edge Routers (6PE) <https://tools.ietf.org/html/rfc4798>`_
* `BGP-Prefix Segment in large-scale data centers <https://tools.ietf.org/html/draft-ietf-spring-segment-routing-msdc-01>`_
* `Egress Peer Engineering using BGP-LU <https://tools.ietf.org/html/draft-gredler-idr-bgplu-epe-06>`_

IP L3VPN Family
---------------
The BGP/MPLS IP Virtual Private Networks (BGP L3VPN) Multiprotocol extension can be used to exchange particular VPN (customer) routes among the provider's routers attached to that VPN.
Also, routes are distributed to specific VPN remote sites.

Configuration
^^^^^^^^^^^^^
This section shows a way to enable IPv4 and IPv6 L3VPN family in BGP speaker and peer configuration.

BGP Speaker
'''''''''''
To enable IPv4 and IPv6 L3VPN support in BGP plugin, first configure BGP speaker instance:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <protocol xmlns="http://openconfig.net/yang/network-instance">
       <name>bgp-example</name>
       <identifier xmlns:x="http://openconfig.net/yang/policy-types">x:BGP</identifier>
       <bgp xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
           <global>
               <config>
                   <router-id>127.0.0.1</router-id>
                   <as>65000</as>
               </config>
               <afi-safis>
                   <afi-safi>
                       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV4-UNICAST</afi-safi-name>
                   </afi-safi>
                   <afi-safi>
                       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV4-UNICAST</afi-safi-name>
                   </afi-safi>
               </afi-safis>
           </global>
       </bgp>
   </protocol>

BGP Peer
''''''''
Here is an example for BGP peer configuration with enabled IPv4 and IPv6 L3VPN family.

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>127.0.0.2</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV4-UNICAST</afi-safi-name>
           </afi-safi>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV4-UNICAST</afi-safi-name>
           </afi-safi>
       </afi-safis>
   </neighbor>

Usage
^^^^^
IPv4 L3VPN
''''''''''
The IPv4 L3VPN table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-types:mpls-labeled-vpn-subsequent-address-family/bgp-vpn-ipv4:vpn-ipv4-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <vpn-ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-vpn-ipv4">
       <vpn-route>
           <route-key>cAXdYQABrBAALABlCgIi</route-key>
           <label-stack>
               <label-value>24022</label-value>
           </label-stack>
           <attributes>
               <extended-communities>
                   <transitive>true</transitive>
                   <route-target-extended-community>
                       <global-administrator>65000</global-administrator>
                       <local-administrator>AAAAZQ==</local-administrator>
                   </route-target-extended-community>
               </extended-communities>
               <origin>
                   <value>igp</value>
               </origin>
               <as-path></as-path>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <ipv4-next-hop>
                   <global>127.16.0.44</global>
               </ipv4-next-hop>
           </attributes>
           <route-distinguisher>172.16.0.44:101</route-distinguisher>
           <prefix>10.2.34.0/24</prefix>
       </vpn-route>
   </vpn-ipv4-routes>

IPv6 L3VPN
''''''''''
The IPv6 L3VPN table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv6-address-family/bgp-types:mpls-labeled-vpn-subsequent-address-family/bgp-vpn-ipv6:vpn-ipv6-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <vpn-ipv6-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-vpn-ipv6">
       <vpn-route>
           <route-key>mAXdcQABrBAALABlKgILgAAAAAE=</route-key>
           <label-stack>
               <label-value>24023</label-value>
           </label-stack>
           <attributes>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <extended-communities>
                   <route-target-extended-community>
                       <global-administrator>65000</global-administrator>
                       <local-administrator>AAAAZQ==</local-administrator>
                   </route-target-extended-community>
                   <transitive>true</transitive>
               </extended-communities>
               <ipv6-next-hop>
                   <global>2a02:b80:0:2::1</global>
               </ipv6-next-hop>
               <origin>
                   <value>igp</value>
               </origin>
               <as-path></as-path>
           </attributes>
           <route-distinguisher>172.16.0.44:101</route-distinguisher>
           <prefix>2a02:b80:0:1::/64</prefix>
       </vpn-route>
   </vpn-ipv6-routes>

Programming
^^^^^^^^^^^
This examples show how to originate and remove IPv4 L3VPN route via programmable RIB:

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv4-address-family/bgp-types:mpls-labeled-vpn-subsequent-address-family/bgp-vpn-ipv4:vpn-ipv4-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <vpn-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-vpn-ipv4">
       <route-key>vpn1</route-key>
       <label-stack>
           <label-value>123</label-value>
       </label-stack>
       <route-distinguisher>429496729:1</route-distinguisher>
       <prefix>2.2.2.2/32</prefix>
       <attributes>
           <ipv4-next-hop>
               <global>199.20.166.41</global>
           </ipv4-next-hop>
           <as-path/>
           <origin>
               <value>igp</value>
           </origin>
           <extended-communities>
               <route-target-extended-community>
                   <global-administrator>65000</global-administrator>
                   <local-administrator>AAAAZQ==</local-administrator>
               </route-target-extended-community>
               <transitive>true</transitive>
           </extended-communities>
       </attributes>
   </vpn-route>

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv4-address-family/bgp-types:mpls-labeled-vpn-subsequent-address-family/bgp-vpn-ipv4:vpn-ipv4-routes/vpn-route/vpn1``

**Method:** ``DELETE``

References
^^^^^^^^^^
* `BGP/MPLS IP Virtual Private Networks (VPNs) <https://tools.ietf.org/html/rfc4364>`_
* `BGP-MPLS IP Virtual Private Network (VPN) Extension for IPv6 VPN <https://tools.ietf.org/html/rfc4659>`_
* `BGP/MPLS VPN Virtual PE <https://tools.ietf.org/html/draft-ietf-bess-virtual-pe-00>`_

Link-State Family
-----------------
The BGP Link-State (BGP-LS) Multiprotocol extension allows to distribute Link-State and Traffic Engineering (TE) information.
This information is typically distributed by IGP routing protocols with in the network, limiting LSDB or TED visibility to the IGP area.
The BGP-LS-enabled routers are capable to collect such information from networks (multiple IGP areas, inter-AS) and share with external components (i.e. OpenDaylight BGP).
The information is applicable in ALTO servers and PCEs, as both need to gather information about topologies.
In addition, link-state information is extended to carry segment information (Spring).

Configuration
^^^^^^^^^^^^^
This section shows a way to enable IPv4 and IPv6 Labelled Unicast family in BGP speaker and peer configuration.

BGP Speaker
'''''''''''
To enable BGP-LS support in BGP plugin, first configure BGP speaker instance:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <protocol xmlns="http://openconfig.net/yang/network-instance">
       <name>bgp-example</name>
       <identifier xmlns:x="http://openconfig.net/yang/policy-types">x:BGP</identifier>
       <bgp xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
           <global>
               <config>
                   <router-id>127.0.0.1</router-id>
                   <as>65000</as>
               </config>
               <afi-safis>
                   <afi-safi>
                       <afi-safi-name>LINKSTATE</afi-safi-name>
                   </afi-safi>
               </afi-safis>
           </global>
       </bgp>
   </protocol>

BGP Peer
''''''''
Here is an example for BGP peer configuration with enabled BGP-LS family.

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>127.0.0.2</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name>LINKSTATE</afi-safi-name>
           </afi-safi>
       </afi-safis>
   </neighbor>

Usage
^^^^^
The Link-State table in a instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-linkstate:linkstate-address-family/bgp-linkstate:linkstate-subsequent-address-family/linkstate-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <linkstate-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-linkstate">
      ...
   </linkstate-routes>

.. note:: Link-State routes mapping to topology links/nodes/prefixes is supported by BGP Topology Provider.

References
^^^^^^^^^^
* `North-Bound Distribution of Link-State and Traffic Engineering (TE) Information Using BGP <https://tools.ietf.org/html/rfc7752>`_
* `BGP Link-State extensions for Segment Routing <https://tools.ietf.org/html/draft-gredler-idr-bgp-ls-segment-routing-ext-03>`_
* `Segment Routing BGP Egress Peer Engineering BGP-LS Extensions <https://tools.ietf.org/html/draft-ietf-idr-bgpls-segment-routing-epe-05>`_
* `BGP Link-State Information Distribution Implementation Report <https://tools.ietf.org/html/draft-ietf-idr-ls-distribution-impl-04>`_

Flow Specification Family
-------------------------
The BGP Flow Specification (BGP-FS) Multiprotocol extension can be used to distribute traffic flow specifications.
For example, the BGP-FS can be used in a case of (distributed)denial-of-service (DDoS) attack mitigation procedures and traffic filtering (BGP/MPLS VPN service, DC).

Configuration
^^^^^^^^^^^^^
This section shows a way to enable BGP-FS family in BGP speaker and peer configuration.

BGP Speaker
'''''''''''
To enable BGP-FS support in BGP plugin, first configure BGP speaker instance:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <protocol xmlns="http://openconfig.net/yang/network-instance">
       <name>bgp-example</name>
       <identifier xmlns:x="http://openconfig.net/yang/policy-types">x:BGP</identifier>
       <bgp xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
           <global>
               <config>
                   <router-id>127.0.0.1</router-id>
                   <as>65000</as>
               </config>
               <afi-safis>
                   <afi-safi>
                       <afi-safi-name>IPV4-FLOW</afi-safi-name>
                   </afi-safi>
                   <afi-safi>
                       <afi-safi-name>IPV6-FLOW</afi-safi-name>
                   </afi-safi>
                   <afi-safi>
                       <afi-safi-name>IPV4-L3VPN-FLOW</afi-safi-name>
                   </afi-safi>
                   <afi-safi>
                       <afi-safi-name>IPV6-L3VPN-FLOW</afi-safi-name>
                   </afi-safi>
               </afi-safis>
           </global>
       </bgp>
   </protocol>

BGP Peer
''''''''
Here is an example for BGP peer configuration with enabled BGP-FS family.

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>127.0.0.2</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name>IPV4-FLOW</afi-safi-name>
           </afi-safi>
           <afi-safi>
               <afi-safi-name>IPV6-FLOW</afi-safi-name>
           </afi-safi>
           <afi-safi>
               <afi-safi-name>IPV4-L3VPN-FLOW</afi-safi-name>
           </afi-safi>
           <afi-safi>
               <afi-safi-name>IPV6-L3VPN-FLOW</afi-safi-name>
           </afi-safi>
       </afi-safis>
   </neighbor>

Usage
^^^^^
The flowspec route represent rules and an action is defined as extended community.

IPv4 Flow Specification
'''''''''''''''''''''''
The IPv4 Flowspec table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <flowspec-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-flowspec">
       <flowspec-route>
           <path-id>0</path-id>
           <route-key>all packets to 192.168.0.1/32 AND from 10.0.0.2/32 AND where IP protocol equals to 17 or equals to 6 AND where port equals to 80 or equals to 8080 AND where destination port is greater than 8080 and is less than 8088 or equals to 3128 AND where source port is greater than 1024 </route-key>
           <attributes>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <origin>
                   <value>igp</value>
               </origin>
               <as-path></as-path>
               <extended-communities>
                   <transitive>true</transitive>
                   <redirect-extended-community>
                       <local-administrator>AgMWLg==</local-administrator>
                       <global-administrator>258</global-administrator>
                   </redirect-extended-community>
               </extended-communities>
           </attributes>
           <flowspec>
               <destination-prefix>192.168.0.1/32</destination-prefix>
           </flowspec>
           <flowspec>
               <source-prefix>10.0.0.2/32</source-prefix>
           </flowspec>
           <flowspec>
               <protocol-ips>
                   <op>equals</op>
                   <value>17</value>
               </protocol-ips>
               <protocol-ips>
                   <op>equals end-of-list</op>
                   <value>6</value>
               </protocol-ips>
           </flowspec>
           <flowspec>
               <ports>
                   <op>equals</op>
                   <value>80</value>
               </ports>
               <ports>
                   <op>equals end-of-list</op>
                   <value>8080</value>
               </ports>
           </flowspec>
           <flowspec>
               <destination-ports>
                   <op>greater-than</op>
                   <value>8080</value>
               </destination-ports>
               <destination-ports>
                   <op>less-than and-bit</op>
                   <value>8088</value>
               </destination-ports>
               <destination-ports>
                   <op>equals end-of-list</op>
                   <value>3128</value>
               </destination-ports>
           </flowspec>
           <flowspec>
               <source-ports>
                   <op>end-of-list greater-than</op>
                   <value>1024</value>
               </source-ports>
           </flowspec>
       </flowspec-route>
   </flowspec-routes>

IPv6 Flows Specification
''''''''''''''''''''''''
The IPv6 Flowspec table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv6-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-ipv6-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <flowspec-ipv6-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-flowspec">
       <flowspec-route>
           <path-id>0</path-id>
           <route-key>all packets to 2001:db8:31::/64 AND from 2001:db8:30::/64 AND where next header equals to 17 AND where DSCP equals to 50 AND where flow label equals to 2013 </route-key>
           <attributes>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <origin>
                   <value>igp</value>
               </origin>
               <as-path></as-path>
               <extended-communities>
                   <transitive>true</transitive>
                   <traffic-rate-extended-community>
                       <informative-as>0</informative-as>
                       <local-administrator>AAAAAA==</local-administrator>
                   </traffic-rate-extended-community>
               </extended-communities>
           </attributes>
           <flowspec>
               <destination-prefix>2001:db8:31::/64</destination-prefix>
           </flowspec>
           <flowspec>
               <source-prefix>2001:db8:30::/64</source-prefix>
           </flowspec>
           <flowspec>
               <next-headers>
                   <op>equals end-of-list</op>
                   <value>17</value>
               </next-headers>
           </flowspec>
           <flowspec>
               <dscps>
                   <op>equals end-of-list</op>
                   <value>50</value>
               </dscps>
           </flowspec>
           <flowspec>
               <flow-label>
                   <op>equals end-of-list</op>
                   <value>2013</value>
               </flow-label>
           </flowspec>
       </flowspec-route>
   </flowspec-ipv6-routes>

IPv4 L3VPN Flows Specification
''''''''''''''''''''''''''''''
The IPv4 L3VPN Flowspec table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-flowspec:flowspec-l3vpn-subsequent-address-family/bgp-flowspec:flowspec-l3vpn-ipv4-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <flowspec-l3vpn-ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-flowspec">
       <flowspec-l3vpn-route>
           <path-id>0</path-id>
           <route-key>[l3vpn with route-distinguisher 172.16.0.44:101] all packets from 10.0.0.3/32</route-key>
           <attributes>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <ipv4-next-hop>
                   <global>5.6.7.8</global>
               </ipv4-next-hop>
               <origin>
                   <value>igp</value>
               </origin>
               <as-path></as-path>
               <extended-communities>
                   <transitive>true</transitive>
                   <redirect-ip-nh-extended-community>
                       <copy>false</copy>
                       <next-hop-address>0.0.0.0</next-hop-address>
                   </redirect-ip-nh-extended-community>
               </extended-communities>
           </attributes>
           <route-distinguisher>172.16.0.44:101</route-distinguisher>
           <flowspec>
               <source-prefix>10.0.0.3/32</source-prefix>
           </flowspec>
       </flowspec-l3vpn-route>
   </flowspec-l3vpn-ipv4-routes>

Programming
^^^^^^^^^^^
IPv4 Flow Specification
'''''''''''''''''''''''
This examples show how to originate and remove IPv4 fowspec route via programmable RIB.

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv4-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <flowspec-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-flowspec">
       <route-key>flow1</route-key>
       <path-id>0</path-id>
       <flowspec>
           <destination-prefix>192.168.0.1/32</destination-prefix>
       </flowspec>
       <flowspec>
           <source-prefix>10.0.0.1/32</source-prefix>
       </flowspec>
       <flowspec>
           <protocol-ips>
               <op>equals end-of-list</op>
               <value>6</value>
           </protocol-ips>
       </flowspec>
       <flowspec>
           <ports>
               <op>equals end-of-list</op>
               <value>80</value>
           </ports>
       </flowspec>
       <flowspec>
           <destination-ports>
               <op>greater-than</op>
               <value>8080</value>
           </destination-ports>
           <destination-ports>
               <op>and-bit less-than end-of-list</op>
               <value>8088</value>
           </destination-ports>
       </flowspec>
       <flowspec>
           <source-ports>
               <op>greater-than end-of-list</op>
               <value>1024</value>
           </source-ports>
       </flowspec>
       <flowspec>
           <types>
               <op>equals end-of-list</op>
               <value>0</value>
           </types>
       </flowspec>
       <flowspec>
           <codes>
               <op>equals end-of-list</op>
               <value>0</value>
           </codes>
       </flowspec>
       <flowspec>
           <tcp-flags>
               <op>match end-of-list</op>
               <value>32</value>
           </tcp-flags>
       </flowspec>
       <flowspec>
           <packet-lengths>
               <op>greater-than</op>
               <value>400</value>
           </packet-lengths>
           <packet-lengths>
               <op>and-bit less-than end-of-list</op>
               <value>500</value>
           </packet-lengths>
       </flowspec>
       <flowspec>
           <dscps>
               <op>equals end-of-list</op>
               <value>20</value>
           </dscps>
       </flowspec>
       <flowspec>
           <fragments>
               <op>match end-of-list</op>
               <value>first</value>
           </fragments>
       </flowspec>
       <attributes>
           <origin>
               <value>igp</value>
           </origin>
           <as-path/>
           <local-pref>
               <pref>100</pref>
           </local-pref>
           <extended-communities>
               ....
           </extended-communities>
       </attributes>
   </flowspec-route>

**Extended Communities**

* **Traffic Rate**
   .. code-block:: xml
      :linenos:
      :emphasize-lines: 5

      <extended-communities>
          <transitive>true</transitive>
          <traffic-rate-extended-community>
              <informative-as>123</informative-as>
              <local-administrator>AAAAAA==</local-administrator>
          </traffic-rate-extended-community>
      </extended-communities>

   5. A rate in bytes per second, *AAAAAA==* (0) means traffic discard.

* **Traffic Action**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <traffic-action-extended-community>
              <sample>true</sample>
              <terminal-action>false</terminal-action>
          </traffic-action-extended-community>
      </extended-communities>


* **Redirect to VRF AS 2byte format**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <redirect-extended-community>
              <global-administrator>123</global-administrator>
              <local-administrator>AAAAew==</local-administrator>
          </redirect-extended-community>
      </extended-communities>

* **Redirect to VRF IPv4 format**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <redirect-ipv4>
              <global-administrator>192.168.0.1</global-administrator>
              <local-administrator>12345</local-administrator>
          </redirect-ipv4>
      </extended-communities>

* **Redirect to VRF AS 4byte format**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <redirect-as4>
              <global-administrator>64495</global-administrator>
              <local-administrator>12345</local-administrator>
          </redirect-as4>
      </extended-communities>

* **Redirect to IP**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <redirect-ip-nh-extended-community>
              <copy>false</false>
          </redirect-ip-nh-extended-community>
      </extended-communities>

* **Traffic Marking**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <traffic-marking-extended-community>
              <global-administrator>20</global-administrator>
          </traffic-marking-extended-community>
      </extended-communities>

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv4-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-routes/bgp-flowspec:flowspec-route/flow1/0``

**Method:** ``DELETE``

IPv6 Flow Specification
'''''''''''''''''''''''
This examples show how to originate and remove IPv4 fowspec route via programmable RIB.

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv6-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-ipv6-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <flowspec-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-flowspec">
       <route-key>flow-v6</route-key>
       <path-id>0</path-id>
       <flowspec>
           <destination-prefix>2001:db8:30::3/128</destination-prefix>
       </flowspec>
       <flowspec>
           <source-prefix>2001:db8:31::3/128</source-prefix>
        </flowspec>
       <flowspec>
           <flow-label>
               <op>equals end-of-list</op>
               <value>1</value>
           </flow-label>
       </flowspec>
       <attributes>
           <extended-communities>
               <transitive>true</transitive>
               <redirect-ipv6>
                   <global-administrator>2001:db8:1::6</global-administrator>
                   <local-administrator>12345</local-administrator>
               </redirect-ipv6>
           </extended-communities>
           <origin>
               <value>igp</value>
           </origin>
           <as-path/>
           <local-pref>
               <pref>100</pref>
           </local-pref>
       </attributes>
   </flowspec-route>

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/bgp-types:ipv6-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-ipv6-routes/bgp-flowspec:flowspec-route/flow-v6/0``

**Method:** ``DELETE``

References
^^^^^^^^^^
* `Dissemination of Flow Specification Rules <https://tools.ietf.org/html/rfc5575>`_
* `Dissemination of Flow Specification Rules for IPv6 <https://tools.ietf.org/html/draft-ietf-idr-flow-spec-v6-07>`_
* `BGP Flow-Spec Extended Community for Traffic Redirect to IP Next Hop <https://tools.ietf.org/html/draft-ietf-idr-flowspec-redirect-ip-00>`_
* `Clarification of the Flowspec Redirect Extended Community <https://tools.ietf.org/html/rfc7674>`_
* `Revised Validation Procedure for BGP Flow Specifications <https://tools.ietf.org/html/draft-ietf-idr-bgp-flowspec-oid-03>`_

EVPN Family
-----------
The BGP MPLS-Based Ethernet VPN (BGP EVPN) Multiprotocol extension can be used to distribute Ethernet L2VPN service related routes in order to support a concept of MAC routing.
A major use-case for BGP EVPN is data-center interconnection (DCI), where advantage of BGP EVPN are MAC/IP address advertising across MPLS network, Multihoming functionality including Fast Convergence, Split Horizon and Aliasing support, VM (MAC) Mobility, support Multicast and Broadcast traffic.
In addition to MPLS, IP tunnelling encapsulation techniques like VXLAN, NVGRE, MPLSoGRE and others can be used for packet transportation.
Also, Provider Backbone Bridging (PBB) can be combined with EVPN in order to reduce a number of MAC Advertisement routes.

Configuration
^^^^^^^^^^^^^
This section shows a way to enable EVPN family in BGP speaker and peer configuration.

BGP Speaker
'''''''''''
To enable EVPN support in BGP plugin, first configure BGP speaker instance:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <protocol xmlns="http://openconfig.net/yang/network-instance">
       <name>bgp-example</name>
       <identifier xmlns:x="http://openconfig.net/yang/policy-types">x:BGP</identifier>
       <bgp xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
           <global>
               <config>
                   <router-id>127.0.0.1</router-id>
                   <as>65000</as>
               </config>
               <afi-safis>
                   <afi-safi>
                       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L2VPN-EVPN</afi-safi-name>
                   </afi-safi>
               </afi-safis>
           </global>
       </bgp>
   </protocol>

BGP Peer
''''''''
Here is an example for BGP peer configuration with enabled EVPN family.

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>127.0.0.2</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L2VPN-EVPN</afi-safi-name>
           </afi-safi>
       </afi-safis>
   </neighbor>

Usage
^^^^^
The L2VPN EVPN table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/odl-bgp-evpn:l2vpn-address-family/odl-bgp-evpn:evpn-subsequent-address-family/evpn-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <evpn-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-evpn">
       ...
   </evpn-routes>

Programming
^^^^^^^^^^^
This examples show how to originate and remove EVPN routes via programmable RIB.
There are four different types of EVPN routes, and several extended communities.
Routes can be used for variety of use-cases supported by BGP/MPLS EVPN, PBB EVPN and NVO EVPN).

**URL:** ``/restconf/config/bgp-rib:application-rib/127.0.0.3/tables/odl-bgp-evpn:l2vpn-address-family/odl-bgp-evpn:evpn-subsequent-address-family/odl-bgp-evpn:evpn-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,4,14

   <evpn-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-evpn">
       <route-key>evpn1</route-key>
       <route-distinguisher>172.12.123.3:200</route-distinguisher>
       ....
       <attributes>
           <ipv4-next-hop>
               <global>199.20.166.41</global>
           </ipv4-next-hop>
           <as-path/>
           <origin>
               <value>igp</value>
           </origin>
           <extended-communities>
           ....
           </extended-communities>
       </attributes>
   </evpn-route>

3. Route Distinguisher (RD) - set to RD of the MAC-VRF advertising the NLRI, recommended format *<IP>:<VLAN_ID>*

4. One of the EVPN route must be set here.

14. In some cases, specific extended community presence is required. The route may carry one or more Route Target attributes.

**EVPN Routes:**

* **Ethernet AD per ESI**
   .. code-block:: xml

      <ethernet-a-d-route>
          <mpls-label>0</mpls-label>
          <ethernet-tag-id>
              <vlan-id>4294967295</vlan-id>
          </ethernet-tag-id>
          <arbitrary>
              <arbitrary>AAAAAAAAAAAA</arbitrary>
          </arbitrary>
      </ethernet-a-d-route>

* **Ethernet AD per EVI**
   .. code-block:: xml

      <ethernet-a-d-route>
          <mpls-label>24001</mpls-label>
          <ethernet-tag-id>
              <vlan-id>2200</vlan-id>
          </ethernet-tag-id>
          <arbitrary>
              <arbitrary>AAAAAAAAAAAA</arbitrary>
          </arbitrary>
      </ethernet-a-d-route>

* **MAC/IP Advertisement**
   .. code-block:: xml

      <mac-ip-adv-route>
          <arbitrary>
              <arbitrary>AAAAAAAAAAAA</arbitrary>
          </arbitrary>
          <ethernet-tag-id>
              <vlan-id>2100</vlan-id>
          </ethernet-tag-id>
          <mac-address>f2:0c:dd:80:9f:f7</mac-address>
          <ip-address>10.0.1.12</ip-address>
          <mpls-label1>299776</mpls-label1>
      </mac-ip-adv-route>


* **Inclusive Multicast Ethernet Tag**
   .. code-block:: xml

      <inc-multi-ethernet-tag-res>
          <ethernet-tag-id>
              <vlan-id>2100</vlan-id>
          </ethernet-tag-id>
          <orig-route-ip>43.43.43.43</orig-route-ip>
      </inc-multi-ethernet-tag-res>

* **Ethernet Segment**
   .. code-block:: xml

      <es-route>
          <orig-route-ip>43.43.43.43</orig-route-ip>
          <arbitrary>
              <arbitrary>AAAAAAAAAAAA</arbitrary>
          </arbitrary>
      </es-route>

**EVPN Ethernet Segment Identifier (ESI):**

* **Type 0**
   Indicates an arbitrary 9-octet ESI.

   .. code-block:: xml

      <arbitrary>
          <arbitrary>AAAAAAAAAAAA</arbitrary>
      </arbitrary>

* **Type 1**
   IEEE 802.1AX LACP is used.

   .. code-block:: xml

      <lacp-auto-generated>
          <ce-lacp-mac-address>f2:0c:dd:80:9f:f7</ce-lacp-mac-address>
          <ce-lacp-port-key>22</ce-lacp-port-key>
      </lacp-auto-generated>

* **Type 2**
   Indirectly connected hosts via a bridged LAN.

   .. code-block:: xml

      <lan-auto-generated>
          <root-bridge-mac-address>f2:0c:dd:80:9f:f7</root-bridge-mac-address>
          <root-bridge-priority>20</root-bridge-priority>
      </lan-auto-generated>

* **Type 3**
   MAC-based ESI.
   
   .. code-block:: xml

      <mac-auto-generated>
          <system-mac-address>f2:0c:dd:80:9f:f7</system-mac-address>
          <local-discriminator>2000</local-discriminator>
      </mac-auto-generated>

* **Type 4**
   Router-ID ESI

   .. code-block:: xml

      <router-id-generated>
          <router-id>43.43.43.43</router-id>
          <local-discriminator>2000</local-discriminator>
      </router-id-generated>

* **Type 5**
   AS-based ESI

   .. code-block:: xml

      <as-generated>
          <as>16843009</as>
          <local-discriminator>2000</local-discriminator>
      </as-generated>

**Extended Communities:**

* **ESI Label Extended Community**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <esi-label-extended-community>
              <single-active-mode>false</single-active-mode>
              <esi-label>24001</esi-label>
          </esi-label-extended-community >
      </extended-communities>

* **ES-Import Route Target**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <es-import-route-extended-community>
              <es-import>f2:0c:dd:80:9f:f7</es-import>
          </es-import-route-extended-community>
      </extended-communities>

* **MAC Mobility Extended Community**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <mac-mobility-extended-community>
              <static>true</static>
              <seq-number>200</seq-number>
          </mac-mobility-extended-community>
      </extended-communities>

* **Default Gateway Extended Community**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <default-gateway-extended-community>
          </default-gateway-extended-community>
      </extended-communities>

* **EVPN Layer 2 attributes extended community**
   .. code-block:: xml

      <extended-communities>
          <transitive>false</transitive>
          <layer-2-attributes-extended-community>
              <primary-pe>true</primary-pe>
              <backup-pe>true</backup-pe>
              <control-word >true</control-word>
              <l2-mtu>200</l2-mtu>
          </layer-2-attributes-extended-community>
      </extended-communities>

* **BGP Encapsulation extended community**
   .. code-block:: xml
      :linenos:
      :emphasize-lines: 4

      <extended-communities>
          <transitive>false</transitive>
          <encapsulation-extended-community>
              <tunnel-type>vxlan</tunnel-type>
          </encapsulation-extended-community>
      </extended-communities>

   4. `full list of tunnel types <http://www.iana.org/assignments/bgp-parameters/bgp-parameters.xhtml#tunnel-types>`_

* **P-Multicast Service Interface Tunnel (PMSI) attribute**
   .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <ingress-replication>
              <receiving-endpoint-address>172.12.123.3</receiving-endpoint-address>
          </ingress-replication>
      </pmsi-tunnel>

+--------------------------------------+-----------------------------------------------------+-------------------------------------------+
| EVN Route Type                       | Extended Communities                                | Usage                                     |
+======================================+=====================================================+===========================================+
| **Ethernet Auto-discovery**          | ESI Label, BGP EncapsulationEVPN Layer 2 attributes | Fast Convergence, Split Horizon, Aliasing |
+--------------------------------------+-----------------------------------------------------+-------------------------------------------+
| **MAC/IP Advertisement**             | BGP Encapsulation, MAC Mobility, Default Gateway    | MAC address reachability                  |
+--------------------------------------+-----------------------------------------------------+-------------------------------------------+
| **Inclusive Multicast Ethernet Tag** | PMSI Tunnel, BGP Encapsulation                      | Handling of Multi-destination traffic     |
+--------------------------------------+-----------------------------------------------------+-------------------------------------------+
| **Ethernet Segment**                 | BGP Encapsulation, ES-Import Route Target           | Designated Forwarder Election             |
+--------------------------------------+-----------------------------------------------------+-------------------------------------------+

References
^^^^^^^^^^
* `BGP MPLS-Based Ethernet VPN <https://tools.ietf.org/html/rfc7432>`_
* `Provider Backbone Bridging Combined with Ethernet VPN <https://tools.ietf.org/html/rfc7623>`_
* `VPWS support in EVPN <https://tools.ietf.org/html/draft-ietf-bess-evpn-vpws-07>`_
* `A Network Virtualization Overlay Solution using EVPN <https://tools.ietf.org/html/draft-ietf-bess-evpn-overlay-04>`_
* `Interconnect Solution for EVPN Overlay networks <https://tools.ietf.org/html/draft-ietf-bess-dci-evpn-overlay-04>`_
* `Usage and applicability of BGP MPLS based Ethernet VPN <https://tools.ietf.org/html/draft-ietf-bess-evpn-usage-03>`_

Additional Path
---------------
The ADD-PATH capability allows to advertise multiple paths for the same address prefix.
It can help with optimal routing and routing convergence in a network by providing potential alternate or backup paths.

Configuration
^^^^^^^^^^^^^
This section shows a way to enable ADD-PATH capability in BGP speaker and peer configuration.

.. note:: The capability is applicable for IP Unicast, IP Labelled Unicast and Flow Specification address families.

BGP Speaker
'''''''''''
To enable ADD-PATH capability in BGP plugin, first configure BGP speaker instance:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 14

   <protocol xmlns="http://openconfig.net/yang/network-instance">
       <name>bgp-example</name>
       <identifier xmlns:x="http://openconfig.net/yang/policy-types">x:BGP</identifier>
       <bgp xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
           <global>
               <config>
                   <router-id>127.0.0.1</router-id>
                   <as>65000</as>
               </config>
               <afi-safis>
                   <afi-safi>
                       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-UNICAST</afi-safi-name>
                       <receive>true</receive>
                       <send-max>2</send-max>
                   </afi-safi>
               </afi-safis>
           </global>
       </bgp>
   </protocol>

14. Defines path selection strategy: *send-max* > 1 -> Advertise N Paths or *send-max* = 0 -> Advertise All Paths

BGP Peer
''''''''
Here is an example for BGP peer configuration with enabled ADD-PATH capability.

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>127.0.0.2</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-LABELLED-UNICAST</afi-safi-name>
           </afi-safi>
               <afi-safis>
                   <afi-safi>
                       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-UNICAST</afi-safi-name>
                       <receive>true</receive>
                       <send-max>0</send-max>
                   </afi-safi>
               </afi-safis>
       </afi-safis>
   </neighbor>

.. note:: The path selection strategy is not configurable on per peer basis. The send-max presence indicates a willingness to send ADD-PATH NLRIs to the neighbour.

Usage
^^^^^
The IPv4 Unicast table with enabled ADD-PATH capability in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/ipv4-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3

   <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
       <ipv4-route>
           <path-id>1</path-id>
           <prefix>193.0.2.1/32</prefix>
           <attributes>
               <as-path></as-path>
               <origin>
                   <value>igp</value>
               </origin>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <ipv4-next-hop>
                   <global>10.0.0.1</global>
               </ipv4-next-hop>
           </attributes>
       </ipv4-route>
       <ipv4-route>
           <path-id>2</path-id>
           <prefix>193.0.2.1/32</prefix>
           <attributes>
               <as-path></as-path>
               <origin>
                   <value>igp</value>
               </origin>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <ipv4-next-hop>
                   <global>10.0.0.2</global>
               </ipv4-next-hop>
           </attributes>
       </ipv4-route>
   </ipv4-routes>

3. The routes with the same destination are distinguished by *path-id* attribute.

References
^^^^^^^^^^
* `Advertisement of Multiple Paths in BGP <https://tools.ietf.org/html/rfc7911>`_
* `Best Practices for Advertisement of Multiple Paths in IBGP <https://tools.ietf.org/html/draft-ietf-idr-add-paths-guidelines-08>`_

Route Refresh
-------------
The Route Refresh Capability allows to dynamically request a re-advertisement of the Adj-RIB-Out from a BGP peer.
This is useful when the inbound routing policy for a peer changes and all prefixes from a peer must be reexamined against a new policy.

Configuration
^^^^^^^^^^^^^
The capability is enabled by default, no additional configuration is required.

Usage
^^^^^
To send a Route Refresh request from OpenDaylight BGP speaker instance to its neighbour, invoke RPC:

**URL:** ``/restconf/operations/bgp-peer-rpc:route-refresh-request``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <input xmlns="urn:opendaylight:params:xml:ns:yang:bgp-peer-rpc">
       <afi xmlns:types="urn:opendaylight:params:xml:ns:yang:bgp-types">types:ipv4-address-family</afi>
       <safi xmlns:types="urn:opendaylight:params:xml:ns:yang:bgp-types">types:unicast-subsequent-address-family</safi>
       <peer-ref xmlns:rib="urn:opendaylight:params:xml:ns:yang:bgp-rib">/rib:bgp-rib/rib:rib[rib:id="bgp-example"]/rib:peer[rib:peer-id="bgp://127.0.0.3"]</peer-ref>
   </input>

References
^^^^^^^^^^
* `Route Refresh Capability for BGP-4 <https://tools.ietf.org/html/rfc2918>`_

High Availability
-----------------
Running OpenDaylight BGP in clustered environment brings an advantage of the plugin's high availability (HA).
This section illustrates a basic scenario for HA, also presents a configuration for clustered OpenDaylight BGP.

Configuration
^^^^^^^^^^^^^
Following example shows a configuration for running BGP in clustered environment.

#. As the first step, configure (replicated *deafult* shard and *topology* shard if needed) and run OpenDaylight in clustered environment, install BGP and RESTCONF.

#. On one node (OpenDaylight instance), configure BGP speaker instance and neighbour. In addition, configure BGP topology exporter if required. The configuration is shared across all interconnected cluster nodes, however BGP become active only on one node. Other nodes with configured BGP serves as stand-by backups.

#. Remote peer should be configured to accept/initiate connection from/to all OpenDaylight cluster nodes with configured BGP plugin.

#. Connect remote peer, let it advertise some routes. Verify routes presence in Loc-RIB and/or BGP topology exporter instance on all nodes of the OpenDaylight cluster.

.. warning::

   Replicating RIBs across the cluster nodes is causing severe scalability issue and overall performance degradation. To avoid this problems, configure BGP RIB module as a separate shard without enabled replication. Change configuration on all nodes as following (`configuration/initial`):

   * In ``modules.conf`` add a new module:
      .. code-block:: console

         {
             name = "bgp_rib"
             namespace = "urn:opendaylight:params:xml:ns:yang:bgp-rib"
             shard-strategy = "module"
         }

   * In ``module-shards.conf`` define a new module shard:
      .. code-block:: console

         {
             name = "bgp_rib"
             shards = [
                 {
                     name="bgp_rib"
                     replicas = [
                         "member-1"
                     ]
                 }
             ]
         }

   **Note:** Use correct member name in module shard configuration.

Failover scenario
^^^^^^^^^^^^^^^^^
Following section presents a basic BGP speaker failover scenario on 3-node OpenDaylight cluster setup.

.. figure:: ./images/bgpcep/BGP_HA.png
   :alt: BGP HA setup.

   Once the OpenDaylight BGP is configured, the speaker become active on one of the cluster nodes. Remote peer can establish connection with this BGP instance.
   Routes advertised by remote peer are replicated, hence RIBs state on all nodes is the same.

.. figure:: ./images/bgpcep/BGP_HA_failure.png
   :alt: Node went down.

   In a case a cluster node, where BGP instance is running, goes down (unexpected failure, restart), active BGP session is dropped.

.. figure:: ./images/bgpcep/BGP_HA_recovery.png
   :alt: BGP recovery.

   Now, one of the stand-by BGP speaker instances become active. Remote peer establishes new connection and advertises routes again.

Topology Provider
-----------------
This section provides an overview of the BGP topology provider service.
It shows how to configure and use all available BGP topology providers.
Providers are building topology view of BGP routes stored in local BGP speaker's Loc-RIB.
Output topologies are rendered in a form of standardised IETF network topology model.

Inet Reachability Topology
^^^^^^^^^^^^^^^^^^^^^^^^^^
Inet reachability topology exporter offers a mapping service from IPv4/6 routes to network topology nodes.

Configuration
'''''''''''''
Following example shows how to create a new instance of IPv4 BGP topology exporter:

**URL:** ``/restconf/config/network-topology:network-topology``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,4,6

   <topology  xmlns="urn:TBD:params:xml:ns:yang:network-topology">
       <topology-id>bgp-example-ipv4-topology</topology-id>
       <topology-types>
           <bgp-ipv4-reachability-topology xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-topology-types"></bgp-ipv4-reachability-topology>
       </topology-types>
       <rib-id xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-topology-config">bgp-example</rib-id>
   </topology>

2. An identifier for a topology.

4. Used to identify type of the topology. In this case BGP IPv4 reachability topology.

6. A name of the local BGP speaker instance.

Following example shows how to create a new instance of IPv6 BGP topology exporter:

**URL:** ``/restconf/config/network-topology:network-topology``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <topology xmlns="urn:TBD:params:xml:ns:yang:network-topology">
       <topology-id>bgp-example-ipv6-topology</topology-id>
       <topology-types>
           <bgp-ipv6-reachability-topology xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-topology-types"></bgp-ipv6-reachability-topology>
       </topology-types>
       <rib-id xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-topology-config">bgp-example</rib-id>
   </topology>

Usage
'''''
Operational state of the topology can be verified via REST:

**URL:** ``/restconf/operational/network-topology:network-topology/topology/bgp-example-ipv4-topology``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 8,11

   <topology xmlns="urn:TBD:params:xml:ns:yang:network-topology">
       <topology-id>bgp-example-ipv4-topology</topology-id>
       <server-provided>true</server-provided>
       <topology-types>
           <bgp-ipv4-reachability-topology xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-topology-types"></bgp-ipv4-reachability-topology>
       </topology-types>
       <node>
           <node-id>10.10.1.1</node-id>
           <igp-node-attributes xmlns="urn:TBD:params:xml:ns:yang:nt:l3-unicast-igp-topology">
               <prefix>
                   <prefix>10.0.0.10/32</prefix>
               </prefix>
           </igp-node-attributes>
       </node>
   </topology>

8. The identifier of a node in a topology. Its value is mapped from route's NEXT_HOP attribute.

11. The IP prefix attribute of the node. Its value is mapped from routes's destination IP prefix.

BGP Linkstate Topology
^^^^^^^^^^^^^^^^^^^^^^
BGP linkstate topology exporter offers a mapping service from BGP-LS routes to network topology nodes and links.

Configuration
'''''''''''''
Following example shows how to create a new instance of linkstate BGP topology exporter:

**URL:** ``/restconf/config/network-topology:network-topology``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <topology  xmlns="urn:TBD:params:xml:ns:yang:network-topology">
       <topology-id>bgp-example-linkstate-topology</topology-id>
       <topology-types>
           <bgp-linkstate-topology xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-topology-types"></bgp-linkstate-topology>
       </topology-types>
       <rib-id xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-topology-config">bgp-example</rib-id>
   </topology>

Usage
'''''
Operational state of the topology can be verified via REST.
A sample output below represents a two node topology with two unidirectional links interconnecting those nodes.

**URL:** ``/restconf/operational/network-topology:network-topology/topology/bgp-example-linkstate-topology``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <topology xmlns="urn:TBD:params:xml:ns:yang:network-topology">
       <topology-id>bgp-example-linkstate-topology</topology-id>
       <server-provided>true</server-provided>
       <topology-types>
           <bgp-linkstate-topology xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-topology-types"></bgp-linkstate-topology>
       </topology-types>
       <node>
           <node-id>bgpls://IsisLevel2:1/type=node&amp;as=65000&amp;domain=673720360&amp;router=0000.0000.0040</node-id>
           <termination-point>
               <tp-id>bgpls://IsisLevel2:1/type=tp&amp;ipv4=203.20.160.40</tp-id>
               <igp-termination-point-attributes xmlns="urn:TBD:params:xml:ns:yang:nt:l3-unicast-igp-topology"/>
           </termination-point>
           <igp-node-attributes xmlns="urn:TBD:params:xml:ns:yang:nt:l3-unicast-igp-topology">
               <prefix>
                   <prefix>40.40.40.40/32</prefix>
                   <metric>10</metric>
               </prefix>
               <prefix>
                   <prefix>203.20.160.0/24</prefix>
                   <metric>10</metric>
               </prefix>
               <name>node1</name>
               <router-id>40.40.40.40</router-id>
               <isis-node-attributes xmlns="urn:TBD:params:xml:ns:yang:network:isis-topology">
                   <ted>
                       <te-router-id-ipv4>40.40.40.40</te-router-id-ipv4>
                   </ted>
                   <iso>
                       <iso-system-id>MDAwMDAwMDAwMDY0</iso-system-id>
                   </iso>
               </isis-node-attributes>
           </igp-node-attributes>
       </node>
       <node>
           <node-id>bgpls://IsisLevel2:1/type=node&amp;as=65000&amp;domain=673720360&amp;router=0000.0000.0039</node-id>
           <termination-point>
               <tp-id>bgpls://IsisLevel2:1/type=tp&amp;ipv4=203.20.160.39</tp-id>
               <igp-termination-point-attributes xmlns="urn:TBD:params:xml:ns:yang:nt:l3-unicast-igp-topology"/>
           </termination-point>
           <igp-node-attributes xmlns="urn:TBD:params:xml:ns:yang:nt:l3-unicast-igp-topology">
               <prefix>
                   <prefix>39.39.39.39/32</prefix>
                   <metric>10</metric>
               </prefix>
               <prefix>
                   <prefix>203.20.160.0/24</prefix>
                   <metric>10</metric>
               </prefix>
               <name>node2</name>
               <router-id>39.39.39.39</router-id>
               <isis-node-attributes xmlns="urn:TBD:params:xml:ns:yang:network:isis-topology">
                   <ted>
                       <te-router-id-ipv4>39.39.39.39</te-router-id-ipv4>
                   </ted>
                   <iso>
                       <iso-system-id>MDAwMDAwMDAwMDg3</iso-system-id>
                   </iso>
               </isis-node-attributes>
           </igp-node-attributes>
       </node>
       <link>
           <destination>
               <dest-node>bgpls://IsisLevel2:1/type=node&amp;as=65000&amp;domain=673720360&amp;router=0000.0000.0039</dest-node>
               <dest-tp>bgpls://IsisLevel2:1/type=tp&amp;ipv4=203.20.160.39</dest-tp>
           </destination>
           <link-id>bgpls://IsisLevel2:1/type=link&amp;local-as=65000&amp;local-domain=673720360&amp;local-router=0000.0000.0040&amp;remote-as=65000&amp;remote-domain=673720360&amp;remote-router=0000.0000.0039&amp;ipv4-iface=203.20.160.40&amp;ipv4-neigh=203.20.160.39</link-id>
           <source>
               <source-node>bgpls://IsisLevel2:1/type=node&amp;as=65000&amp;domain=673720360&amp;router=0000.0000.0040</source-node>
               <source-tp>bgpls://IsisLevel2:1/type=tp&amp;ipv4=203.20.160.40</source-tp>
           </source>
           <igp-link-attributes xmlns="urn:TBD:params:xml:ns:yang:nt:l3-unicast-igp-topology">
               <metric>10</metric>
               <isis-link-attributes xmlns="urn:TBD:params:xml:ns:yang:network:isis-topology">
                   <ted>
                       <color>0</color>
                       <max-link-bandwidth>1250000.0</max-link-bandwidth>
                       <max-resv-link-bandwidth>12500.0</max-resv-link-bandwidth>
                       <te-default-metric>0</te-default-metric>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>0</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>1</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>2</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>3</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>4</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>5</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>6</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>7</priority>
                       </unreserved-bandwidth>
                   </ted>
               </isis-link-attributes>
           </igp-link-attributes>
       </link>
       <link>
           <destination>
               <dest-node>bgpls://IsisLevel2:1/type=node&amp;as=65000&amp;domain=673720360&amp;router=0000.0000.0040</dest-node>
               <dest-tp>bgpls://IsisLevel2:1/type=tp&amp;ipv4=203.20.160.40</dest-tp>
           </destination>
           <link-id>bgpls://IsisLevel2:1/type=link&amp;local-as=65000&amp;local-domain=673720360&amp;local-router=0000.0000.0039&amp;remote-as=65000&amp;remote-domain=673720360&amp;remote-router=0000.0000.0040&amp;ipv4-iface=203.20.160.39&amp;ipv4-neigh=203.20.160.40</link-id>
           <source>
               <source-node>bgpls://IsisLevel2:1/type=node&amp;as=65000&amp;domain=673720360&amp;router=0000.0000.0039</source-node>
               <source-tp>bgpls://IsisLevel2:1/type=tp&amp;ipv4=203.20.160.39</source-tp>
           </source>
           <igp-link-attributes xmlns="urn:TBD:params:xml:ns:yang:nt:l3-unicast-igp-topology">
               <metric>10</metric>
               <isis-link-attributes xmlns="urn:TBD:params:xml:ns:yang:network:isis-topology">
                   <ted>
                       <color>0</color>
                       <max-link-bandwidth>1250000.0</max-link-bandwidth>
                       <max-resv-link-bandwidth>12500.0</max-resv-link-bandwidth>
                       <te-default-metric>0</te-default-metric>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>0</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>1</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>2</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>3</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>4</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>5</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>6</priority>
                       </unreserved-bandwidth>
                       <unreserved-bandwidth>
                           <bandwidth>12500.0</bandwidth>
                           <priority>7</priority>
                       </unreserved-bandwidth>
                   </ted>
               </isis-link-attributes>
           </igp-link-attributes>
       </link>
   </topology>

Test Tools
----------
BGP test tools serves to test basic BGP functionality, scalability and performance.

BGP Test Tool
^^^^^^^^^^^^^
The BGP Test Tool is a stand-alone Java application purposed to simulate remote BGP peers, that are capable to advertise sample routes.
This application is not part of the OpenDaylight Karaf distribution, however it can be downloaded from OpenDaylight's Nexus (use latest release version):

``https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/bgpcep/bgp-testtool``

Usage
'''''
The application can be run from command line:

.. code-block:: console

   java -jar bgp-testtool-*-executable.jar


with optional input parameters:

.. code-block:: console

   -i <BOOLEAN>, --active <BOOLEAN>
      Active initialisation of the connection, by default false.

   -ho <N>, --holdtimer <N>
      In seconds, value of the desired holdtimer, by default 90.

   -sc <N>, --speakersCount <N>
      Number of simulated BGP speakers, when creating each speaker, uses incremented local-address for binding, by default 0.

   -ra <IP_ADDRESS:PORT,...>, --remoteAddress <IP_ADDRESS:PORT,...>
      A list of IP addresses of remote BGP peers, that the tool can accept or initiate connect to that address (based on the mode), by default 127.0.0.1:1790.

   -la <IP_ADDRESS:PORT>, --localAddress <IP_ADDRESS:PORT>
      IP address of BGP speakers which the tools simulates, by default 127.0.0.1:0.

   -pr <N>, --prefixes <N>
      Number of prefixes to be advertised by each simulated speaker

   -mp <BOOLEAN>, --multiPathSupport <BOOLEAN>
      Active ADD-PATH support, by default false.

   -as <N>, --as <N>
      Local AS Number, by default 64496.

   -ec <EXTENDED_COMMUNITIES>, --extended_communities <EXTENDED_COMMUNITIES>
      Extended communities to be send. Format: x,x,x  where  x  is  each  extended  community from bgp-types.yang, by default empty.

   -ll <LOG_LEVEL>, --log_level <LOG_LEVEL>
      Log level for console output, by default INFO.

BGP Application Peer Benchmark
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
It is a simple OpenDaylight application which is capable to inject and remove specific amount of IPv4 routes.
This application is part of the OpenDaylight Karaf distribution.

Configuration
'''''''''''''
As a first step install BGP, RESTCONF and NETCONF connector plugin, then configure BGP Application Peer peer.
Install ``odl-bgpcep-bgp-benchmark`` feature and reconfigure BGP Application Peer Benchmark application as per following:

**URL:** ``/restconf/config/network-topology:network-topology/topology/topology-netconf/node/controller-config/yang-ext:mount/config:modules/module/odl-bgp-benchmark-cfg:app-peer-benchmark/bgp-app-peer-benchmark``

**Method:** ``PUT``

**Content-Type:** application/xml

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 12

   <module xmlns="urn:opendaylight:params:xml:ns:yang:controller:config">
       <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:odl-bgp-benchmark-cfg">x:app-peer-benchmark</type>
       <name>bgp-app-peer-benchmark</name>
       <binding-data-broker xmlns="urn:opendaylight:params:xml:ns:yang:controller:odl-bgp-benchmark-cfg">
           <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:md:sal:binding">x:binding-async-data-broker</type>
           <name>pingpong-binding-data-broker</name>
       </binding-data-broker>
       <rpc-registry xmlns="urn:opendaylight:params:xml:ns:yang:controller:odl-bgp-benchmark-cfg">
           <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:md:sal:binding">x:binding-rpc-registry</type>
           <name>binding-rpc-broker</name>
       </rpc-registry>
       <app-rib-id xmlns="urn:opendaylight:params:xml:ns:yang:controller:odl-bgp-benchmark-cfg">127.0.0.3</app-rib-id>
   </module>

12. A application peer identifier.

.. warning:: This configuration will be moved to configuration datastore in Carbon release.

Inject routes
'''''''''''''
Routes injection can be invoked via RPC:

**URL:** ``/restconf/operations/odl-bgp-app-peer-benchmark:add-prefix``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,3,4,5

   <input xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-app-peer-benchmark">
       <prefix>1.1.1.1/32</prefix>
       <count>100000</count>
       <batchsize>2000</batchsize>
       <nexthop>127.0.0.1</nexthop>
   </input>

2. A initial IPv4 prefix carried in route. Value is incremented for following routes.

3. An amount of routes to be added to application peer's programmable RIB.

4. A size of the transaction batch.

5. A NEXT_HOP attribute value used in all injected routes.

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,4,5

   <output xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-app-peer-benchmark">
       <result>
           <duration>4301</duration>
           <rate>25000</rate>
           <count>100000</count>
       </result>
   </output>

3. Request duration in milliseconds.

4. Writes per second rate.

5. An amount of routes added to application peer's programmable RIB.

Remove routes
'''''''''''''
Routes deletion can be invoked via RPC:

**URL:** ``/restconf/operations/odl-bgp-app-peer-benchmark:delete-prefix``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,3,4

   <input xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-app-peer-benchmark">
       <prefix>1.1.1.1/32</prefix>
       <count>100000</count>
       <batchsize>2000</batchsize>
   </input>

2. A initial IPv4 prefix carried in route to be removed. Value is incremented for following routes.

3. An amount of routes to be removed from application peer's programmable RIB.

4. A size of the transaction batch.

**Response Body:**

.. code-block:: xml

   <output xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-app-peer-benchmark">
       <result>
           <duration>1837</duration>
           <rate>54500</rate>
           <count>100000</count>
       </result>
   </output>

Troubleshooting
---------------
This section offers advices in a case OpenDaylight BGP plugin is not working as expected.

BGP is not working...
^^^^^^^^^^^^^^^^^^^^^
* First of all, ensure that all required features are installed, local and remote BGP configuration is correct.

* Check OpenDaylight Karaf logs:

From Karaf console:

.. code-block:: console

   log:tail

or open log file: ``data/log/karaf.log``

Possibly, a reason/hint for a cause of the problem can be found there.

* Try to minimise effect of other OpenDaylight features, when searching for a reason of the problem.

Bug reporting
^^^^^^^^^^^^^
Before you report a bug, check `BGPCEP Bugzilla <https://bugs.opendaylight.org/buglist.cgi?list_id=65849&product=bgpcep&resolution=--->`_ to ensure same/similar bug is not already filed there.

Write an e-mail to bgpcep-users@lists.opendaylight.org and provide following information:

#. State OpenDaylight version

#. Describe your use-case and provide as much details related to BGP as possible

#. Steps to reproduce

#. Attach Karaf log files, optionally packet captures, REST input/output