.. _bgp-user-guide-config-concepts:
Basic Configuration & Concepts
==============================
The following section shows how to configure BGP basics, how to verify functionality and presents essential components of the plugin.
Next samples demonstrate the plugin's runtime configuration capability.
It shows the way to configure the plugin via REST, using standardized OpenConfig BGP APIs.

.. contents:: Contents
   :depth: 2
   :local:

BGP RIB API
^^^^^^^^^^^
This tree illustrates the BGP RIBs organization in datastore.

.. code-block:: console

    bgp-rib
      +--ro rib* [id]
         +--ro id         rib-id
         +--ro peer* [peer-id]
         |  +--ro peer-id                  peer-id
         |  +--ro peer-role                peer-role
         |  +--ro simple-routing-policy?   simple-routing-policy
         |  +--ro supported-tables* [afi safi]
         |  |  +--ro afi             identityref
         |  |  +--ro safi            identityref
         |  |  +--ro send-receive?   send-receive
         |  +--ro adj-rib-in
         |  |  +--ro tables* [afi safi]
         |  |     +--ro afi           identityref
         |  |     +--ro safi          identityref
         |  |     +--ro attributes
         |  |     |  +--ro uptodate?   boolean
         |  |     +--ro (routes)?
         |  +--ro effective-rib-in
         |  |  +--ro tables* [afi safi]
         |  |     +--ro afi           identityref
         |  |     +--ro safi          identityref
         |  |     +--ro attributes
         |  |     |  +--ro uptodate?   boolean
         |  |     +--ro (routes)?
         |  +--ro adj-rib-out
         |     +--ro tables* [afi safi]
         |        +--ro afi           identityref
         |        +--ro safi          identityref
         |        +--ro attributes
         |        |  +--ro uptodate?   boolean
         |        +--ro (routes)?
         +--ro loc-rib
            +--ro tables* [afi safi]
               +--ro afi           identityref
               +--ro safi          identityref
               +--ro attributes
               |  +--ro uptodate?   boolean
               +--ro (routes)?

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
                   <router-id>192.0.2.2</router-id>
                   <as>65000</as>
               </config>
           </global>
       </bgp>
   </protocol>

@line 2: The unique protocol instance identifier.

@line 7: BGP Identifier of the speaker.

@line 8: Local autonomous system number of the speaker. Note that, OpenDaylight BGP implementation supports four-octet AS numbers only.

-----

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

@line 3: Loc-RIB - Per-protocol instance RIB, which contains the routes that have been selected by local BGP speaker's decision process.

@line 4: The BGP-4 supports carrying IPv4 prefixes, such routes are stored in *ipv4-address-family*/*unicast-subsequent-address-family* table.

BGP Server
^^^^^^^^^^

BGP uses TCP as its transport protocol, by default listens on port 179. OpenDaylight BGP plugin is configured to listen on port *1790*, due to
privileged ports restriction for non-root users.
One of the workarounds is to use port redirection. In case other port is desired to be used instead, we can reconfigure it.

Here is a sample of bgp port listening re-configuration:

**URL:** ``/restconf/config/odl-bgp-peer-acceptor-config:bgp-peer-acceptor-config/default``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,4

   <bgp-peer-acceptor-config xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-peer-acceptor-config">
       <config-name>default</config-name>
       <binding-address>0.0.0.0</binding-address>
       <binding-port>1791</binding-port>
   </bgp-peer-acceptor-config>

@line 3: Binding address: By default is 0.0.0.0, so it is not a mandatory field.

@line 4: Binding Port: Port were BGP Server will listen.

BGP Peering
^^^^^^^^^^^
To exchange routing information between two BGP systems (peers), it is required to configure a peering on both BGP speakers first.
This mean that each BGP speaker has a white list of neighbors, representing remote peers, with which the peering is allowed.
The TCP connection is established between two peers and they exchange messages to open and confirm the connection parameters followed by routes exchange.

Here is a sample basic neighbor configuration:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,4

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>192.0.2.1</neighbor-address>
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

@line 2: IP address of the remote BGP peer. Also serves as an unique identifier of a neighbor in a list of neighbors.

@line 5: Proposed number of seconds for value of the Hold Timer. Default value is **90**.

@line 6: Time interval in seconds between attempts to establish session with the peer. Effective in active mode only. Default value is **30**.

@line 11: Remote port number to which the local BGP is connecting. Effective in active mode only. Default value **179**.

@line 12: Wait for peers to issue requests to open a BGP session, rather than initiating sessions from the local router. Default value is **false**.

@line 16: Explicitly designate the peer as internal or external. Default value is **INTERNAL**.

-----

Once the remote peer is connected and it advertised routes to local BGP system, routes are stored in peer's RIBs.
The RIBs can be checked via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/peer/bgp:%2F%2F192.0.2.1``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 8,13,35,40,62,66

   <peer xmlns="urn:opendaylight:params:xml:ns:yang:bgp-rib">
       <peer-id>bgp://192.0.2.1</peer-id>
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

@line 8: **Adj-RIB-In** - Per-peer RIB, which contains unprocessed routes that has been advertised to local BGP speaker by the remote peer.

@line 13: Here is the reported route with destination *10.0.0.10/32* in Adj-RIB-In.

@line 35: **Effective-RIB-In** - Per-peer RIB, which contains processed routes as a result of applying inbound policy to Adj-RIB-In routes.

@line 40: Here is the reported route with destination *10.0.0.10/32*, same as in Adj-RIB-In, as it was not touched by import policy.

@line 62: **Adj-RIB-Out** - Per-peer RIB, which contains routes for advertisement to the peer by means of the local speaker's UPDATE message.

@line 66: The peer's Adj-RIB-Out is empty as there are no routes to be advertise from local BGP speaker.

-----

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

@line 4: **Destination** - IPv4 Prefix Address.

@line 6: **AS_PATH** - mandatory attribute, contains a list of the autonomous system numbers through that routing information has traversed.

@line 8: **ORIGIN** - mandatory attribute, indicates an origin of the route - **ibgp**, **egp**, **incomplete**.

@line 11: **LOCAL_PREF** - indicates a degree of preference for external routes, higher value is preferred.

@line 14: **NEXT_HOP** - mandatory attribute, defines IP address of the router that should be used as the next hop to the destination.

-----

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
   Optional attribute, contains AS number and IP address of a BGP speaker which performed routes aggregation.

   .. code-block:: xml

      <aggregator>
          <as-number>65000</as-number>
          <network-address>192.0.2.2</network-address>
      </aggregator>

* **Unrecognised**
   Optional attribute, used to store optional attributes, unrecognized by a local BGP speaker.

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
              <global-administrator>192.0.2.2</global-administrator>
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
              <global-administrator>192.0.2.2</global-administrator>
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
   Carries the cost to reach external neighbor.

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
       <neighbor-address>192.0.2.3</neighbor-address>
       <config>
           <peer-type>EXTERNAL</peer-type>
           <peer-as>64999</peer-as>
       </config>
   </neighbor>

@line 5: AS number of the remote peer.

Route reflector configuration
'''''''''''''''''''''''''''''
The local BGP speaker can be configured with a specific *cluster ID*.
Following example adds the cluster ID to the existing speaker instance:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/global/config``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 4

   <config>
       <router-id>192.0.2.2</router-id>
       <as>65000</as>
       <route-reflector-cluster-id>192.0.2.1</route-reflector-cluster-id>
   </config>

@line 4: Route-reflector cluster id to use when local router is configured as a route reflector.
   The *router-id* is used as a default value.

-----

Following configuration sample is intended for route reflector client peering:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 8

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>192.0.2.4</neighbor-address>
       <config>
           <peer-type>INTERNAL</peer-type>
       </config>
       <route-reflector>
           <config>
               <route-reflector-client>true</route-reflector-client>
           </config>
       </route-reflector>
   </neighbor>

@line 8: Configure the neighbor as a route reflector client. Default value is *false*.

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
       <neighbor-address>192.0.2.5</neighbor-address>
       <config>
           <auth-password>topsecret</auth-password>
       </config>
   </neighbor>

@line 4: Configures an MD5 authentication password for use with neighboring devices.

Simple Routing Policy configuration
'''''''''''''''''''''''''''''''''''
The OpenDaylight BGP implementation is supporting *Simple Routing Policy*.
Sample configuration below shows how to set *Simple Routing Policy* for a peer:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 4

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>192.0.2.7</neighbor-address>
       <config>
           <simple-routing-policy>learn-none</simple-routing-policy>
       </config>
   </neighbor>

@line 4: *Simple Routing Policy*:

   * ``learn-none`` - routes advertised by the peer are not propagated to Effective-RIB-In and Loc-RIB
   * ``announce-none`` - routes from local Loc-RIB are not advertised to the peer

.. note:: Existing neighbor configuration can be reconfigured (change configuration parameters) anytime.
   As a result, established connection is dropped, peer instance is recreated with a new configuration settings and connection re-established.

.. note:: The BGP configuration is persisted on OpendDaylight shutdown and restored after the re-start.

BGP Application Peer and programmable RIB
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The OpenDaylight BGP implementation also supports routes injection via *Application Peer*.
Such peer has its own programmable RIB, which can be modified by user.
This concept allows user to originate new routes and advertise them to all connected peers.

Application Peer configuration
''''''''''''''''''''''''''''''
Following configuration sample show a way to configure the *Application Peer*:

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,4

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>10.25.1.9</neighbor-address>
       <config>
           <peer-group>application-peers</peer-group>
       </config>
   </neighbor>

@line 2: IP address is uniquely identifying *Application Peer* and its programmable RIB. Address is also used in local BGP speaker decision process.

@line 4: Indicates that peer is associated with *application-peers* group. It serves to distinguish *Application Peer's* from regular neighbors.

-----

The *Application Peer* presence can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/peer/bgp:%2F%2F10.25.1.9``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,8

   <peer xmlns="urn:opendaylight:params:xml:ns:yang:bgp-rib">
       <peer-id>bgp://10.25.1.9</peer-id>
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

@line 3: Peer role for *Application Peer* is *internal*.

@line 8: Adj-RIB-In is empty, as no routes were originated yet.

.. note:: There is no Adj-RIB-Out for *Application Peer*.

Programmable RIB
''''''''''''''''
Next example shows how to inject a route into the programmable RIB.

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes``

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

-----

Now the injected route appears in *Application Peer's* RIBs and in local speaker's Loc-RIB:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/peer/bgp:%2F%2F10.25.1.9``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 9

   <peer xmlns="urn:opendaylight:params:xml:ns:yang:bgp-rib">
       <peer-id>bgp://10.25.1.9</peer-id>
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

@line 9: Injected route is present in *Application Peer's* Adj-RIB-In and Effective-RIB-In.

-----

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

@line 2: The injected route is now present in Loc-RIB along with a route (destination *10.0.0.10/32*) advertised by remote peer.

-----

This route is also advertised to the remote peer (*192.0.2.1*), hence route appears in its Adj-RIB-Out:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/peer/bgp:%2F%2F192.0.2.1/adj-rib-out/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes``

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

-----

The injected route can be modified (i.e. different path attribute):

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes/ipv4-route/10.0.0.11%2F32/0``

**Method:** ``PUT``

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
               <pref>50</pref>
           </local-pref>
           <ipv4-next-hop>
               <global>10.11.1.2</global>
           </ipv4-next-hop>
       </attributes>
   </ipv4-route>

-----

The route can be removed from programmable RIB in a following way:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes/ipv4-route/10.0.0.11%2F32/0``

**Method:** ``DELETE``

-----

Also it is possible to remove all routes from a particular table at once:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes/``

**Method:** ``DELETE``

-----

Consequently, route disappears from programmable RIB, *Application Peer's* RIBs, Loc-RIB and peer's Adj-RIB-Out (UPDATE message with prefix withdrawal is send).

.. note:: Routes stored in programmable RIB are persisted on OpendDaylight shutdown and restored after the re-start.

BGP Protocol Configuration Loader
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

BGP Protocol Configuration Loader allows the user to define the static initial configuration for a BGP protocol instance.
This service will detect the creation of new configuration files following the pattern "protocols-*.xml" under the path "etc/opendaylight/bgpcep".
Once the file is processed, the defined configuration will be available from the configuration Data Store.

.. note:: If the BGP instance is already present, no update or configuration will be applied.

**PATH:** ``etc/opendaylight/bgpcep/protocols-config.xml``

.. code-block:: xml

    <protocols xmlns="http://openconfig.net/yang/network-instance">
        <protocol>
            <name>example-bgp-rib</name>
            <identifier xmlns:x="http://openconfig.net/yang/policy-types">x:BGP</identifier>
            <bgp xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
                <global>
                    <config>
                        <router-id>192.0.2.2</router-id>
                        <as>64496</as>
                        <!-- if cluster-id is not present, it's value is the same as bgp-id -->
                        <!-- <route-reflector-cluster-id>192.0.2.3</route-reflector-cluster-id> -->
                        <!-- <read-only-limit>120</read-only-limit>-->
                    </config>
                    <afi-safis>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-UNICAST</afi-safi-name>
                            <!--Advertise N Paths
                            <receive>true</receive>
                            <send-max>2</send-max>-->
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-UNICAST</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-LABELLED-UNICAST</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-LABELLED-UNICAST</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV4-UNICAST</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV6-UNICAST</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L2VPN-EVPN</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name>LINKSTATE</afi-safi-name>
                        </afi-safi>
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
                <neighbors xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
                    <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
                        <neighbor-address>192.0.2.1</neighbor-address>
                        <config>
                            <peer-type>INTERNAL</peer-type>
                            <peer-as>64496</peer-as>
                        </config>
                        <transport>
                            <config>
                                <remote-port>179</remote-port>
                                <passive-mode>true</passive-mode>
                            </config>
                        </transport>
                        <timers>
                            <config>
                                <hold-time>180</hold-time>
                                <connect-retry>10</connect-retry>
                            </config>
                        </timers>
                        <route-reflector>
                            <config>
                                <route-reflector-client>false</route-reflector-client>
                            </config>
                        </route-reflector>
                        <afi-safis>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-UNICAST</afi-safi-name>
                                <!--Advertise N Paths
                                <receive>true</receive>
                                <send-max>0</send-max>-->
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-UNICAST</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-LABELLED-UNICAST</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-LABELLED-UNICAST</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV4-UNICAST</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV6-UNICAST</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L2VPN-EVPN</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name>LINKSTATE</afi-safi-name>
                            </afi-safi>
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
                    <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
                        <neighbor-address>192.0.2.6</neighbor-address>
                        <config>
                            <peer-group>application-peers</peer-group>
                        </config>
                    </neighbor>
                </neighbors>
            </bgp>
        </protocol>
    </protocols>

BGP Configuration Example
'''''''''''''''''''''''''

BGP provides a feature providing a BGP Protocol and Network Topology configuration file example.
Once feature is installed defined configuration will be loaded and setup.

.. code-block:: console

   feature:install odl-bgpcep-bgp-config-example

BGP pipeline
^^^^^^^^^^^^
.. figure:: ./images/bgp-pipeline.png
   :alt: BGP pipeline.

   BGP pipeline - routes re-advertisement.

.. figure:: ./images/bgp-app-pipeline.png
   :alt: BGP Application Peer pipeline.

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

.. contents:: Contents
   :depth: 2
   :local:

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
                   <router-id>192.0.2.2</router-id>
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
       <neighbor-address>192.0.2.1</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-UNICAST</afi-safi-name>
           </afi-safi>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-UNICAST</afi-safi-name>
           </afi-safi>
       </afi-safis>
   </neighbor>
