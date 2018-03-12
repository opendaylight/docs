.. _bgp-user-guide-flowspec-family:

Flow Specification Family
=========================
The BGP Flow Specification (BGP-FS) Multiprotocol extension can be used to distribute traffic flow specifications.
For example, the BGP-FS can be used in a case of (distributed) denial-of-service (DDoS) attack mitigation procedures and traffic filtering (BGP/MPLS VPN service, DC).

.. contents:: Contents
   :depth: 2
   :local:

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
                   <router-id>192.0.2.2</router-id>
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
       <neighbor-address>192.0.2.1</neighbor-address>
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

Flow Specification API
^^^^^^^^^^^^^^^^^^^^^^
Following trees illustrate the BGP Flow Specification routes structure.

IPv4 Flow Specification Route
'''''''''''''''''''''''''''''
.. code-block:: console

   :(flowspec-routes-case)
     +--ro flowspec-routes
        +--ro flowspec-route* [route-key path-id]
           +--ro route-key     string
           +--ro flowspec*
           |  +--ro (flowspec-type)?
           |     +--:(port-case)
           |     |  +--ro ports*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   uint16
           |     +--:(destination-port-case)
           |     |  +--ro destination-ports*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   uint16
           |     +--:(source-port-case)
           |     |  +--ro source-ports*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   uint16
           |     +--:(icmp-type-case)
           |     |  +--ro types*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   uint8
           |     +--:(icmp-code-case)
           |     |  +--ro codes*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   uint8
           |     +--:(tcp-flags-case)
           |     |  +--ro tcp-flags*
           |     |     +--ro op?      bitmask-operand
           |     |     +--ro value?   uint16
           |     +--:(packet-length-case)
           |     |  +--ro packet-lengths*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   uint16
           |     +--:(dscp-case)
           |     |  +--ro dscps*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   dscp
           |     +--:(fragment-case)
           |     |  +--ro fragments*
           |     |     +--ro op?      bitmask-operand
           |     |     +--ro value?   fragment
           |     +--:(destination-prefix-case)
           |     |  +--ro destination-prefix?   inet:ipv4-prefix
           |     +--:(source-prefix-case)
           |     |  +--ro source-prefix?        inet:ipv4-prefix
           |     +--:(protocol-ip-case)
           |        +--ro protocol-ips*
           |           +--ro op?      numeric-operand
           |           +--ro value?   uint8
           +--ro path-id       path-id
           +--ro attributes
              +--ro extended-communities*
                 +--ro transitive?                             boolean
                 +--ro (extended-community)?
                    +--:(traffic-rate-extended-community-case)
                    |  +--ro traffic-rate-extended-community
                    |     +--ro informative-as?        bgp-t:short-as-number
                    |     +--ro local-administrator?   netc:bandwidth
                    +--:(traffic-action-extended-community-case)
                    |  +--ro traffic-action-extended-community
                    |     +--ro sample?            boolean
                    |     +--ro terminal-action?   boolean
                    +--:(redirect-extended-community-case)
                    |  +--ro redirect-extended-community
                    |     +--ro global-administrator?   bgp-t:short-as-number
                    |     +--ro local-administrator?    binary
                    +--:(traffic-marking-extended-community-case)
                    |  +--ro traffic-marking-extended-community
                    |     +--ro global-administrator?   dscp
                    +--:(redirect-ipv4-extended-community-case)
                    |  +--ro redirect-ipv4
                    |     +--ro global-administrator?   inet:ipv4-address
                    |     +--ro local-administrator?    uint16
                    +--:(redirect-as4-extended-community-case)
                    |  +--ro redirect-as4
                    |     +--ro global-administrator?   inet:as-number
                    |     +--ro local-administrator?    uint16
                    +--:(redirect-ip-nh-extended-community-case)
                      +--ro redirect-ip-nh-extended-community
                         +--ro next-hop-address?   inet:ip-address
                         +--ro copy?               boolean


IPv6 Flow Specification Route
'''''''''''''''''''''''''''''
.. code-block:: console

   :(flowspec-ipv6-routes-case)
     +--ro flowspec-ipv6-routes
        +--ro flowspec-route* [route-key path-id]
           +--ro flowspec*
           |  +--ro (flowspec-type)?
           |     +--:(port-case)
           |     |  +--ro ports*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   uint16
           |     +--:(destination-port-case)
           |     |  +--ro destination-ports*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   uint16
           |     +--:(source-port-case)
           |     |  +--ro source-ports*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   uint16
           |     +--:(icmp-type-case)
           |     |  +--ro types*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   uint8
           |     +--:(icmp-code-case)
           |     |  +--ro codes*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   uint8
           |     +--:(tcp-flags-case)
           |     |  +--ro tcp-flags*
           |     |     +--ro op?      bitmask-operand
           |     |     +--ro value?   uint16
           |     +--:(packet-length-case)
           |     |  +--ro packet-lengths*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   uint16
           |     +--:(dscp-case)
           |     |  +--ro dscps*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   dscp
           |     +--:(fragment-case)
           |     |  +--ro fragments*
           |     |     +--ro op?      bitmask-operand
           |     |     +--ro value?   fragment
           |     +--:(destination-ipv6-prefix-case)
           |     |  +--ro destination-prefix?   inet:ipv6-prefix
           |     +--:(source-ipv6-prefix-case)
           |     |  +--ro source-prefix?        inet:ipv6-prefix
           |     +--:(next-header-case)
           |     |  +--ro next-headers*
           |     |     +--ro op?      numeric-operand
           |     |     +--ro value?   uint8
           |     +--:(flow-label-case)
           |        +--ro flow-label*
           |           +--ro op?      numeric-operand
           |           +--ro value?   uint32
           +--ro path-id       path-id
           +--ro attributes
              +--ro extended-communities*
                 +--ro transitive?                             boolean
                 +--ro (extended-community)?
                    +--:(traffic-rate-extended-community-case)
                    |  +--ro traffic-rate-extended-community
                    |     +--ro informative-as?        bgp-t:short-as-number
                    |     +--ro local-administrator?   netc:bandwidth
                    +--:(traffic-action-extended-community-case)
                    |  +--ro traffic-action-extended-community
                    |     +--ro sample?            boolean
                    |     +--ro terminal-action?   boolean
                    +--:(redirect-extended-community-case)
                    |  +--ro redirect-extended-community
                    |     +--ro global-administrator?   bgp-t:short-as-number
                    |     +--ro local-administrator?    binary
                    +--:(traffic-marking-extended-community-case)
                    |  +--ro traffic-marking-extended-community
                    |     +--ro global-administrator?   dscp
                    +--:(redirect-ipv6-extended-community-case)
                    |  +--ro redirect-ipv6
                    |     +--ro global-administrator?   inet:ipv6-address
                    |     +--ro local-administrator?    uint16
                    +--:(redirect-as4-extended-community-case)
                    |  +--ro redirect-as4
                    |     +--ro global-administrator?   inet:as-number
                    |     +--ro local-administrator?    uint16
                    +--:(redirect-ip-nh-extended-community-case)
                       +--ro redirect-ip-nh-extended-community
                          +--ro next-hop-address?   inet:ip-address
                          +--ro copy?               boolean

Usage
^^^^^
The flowspec route represents rules and an action, defined as an extended community.

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
Make sure the *Application Peer* is configured first.

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-routes``

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

-----

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

   @line 5: A rate in bytes per second, *AAAAAA==* (0) means traffic discard.

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

-----

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-routes/bgp-flowspec:flowspec-route/flow1/0``

**Method:** ``DELETE``

IPv4 L3VPN Flow Specification
'''''''''''''''''''''''''''''
This examples show how to originate and remove IPv4 L3VPN fowspec route via programmable RIB.

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-flowspec:flowspec-l3vpn-subsequent-address-family/bgp-flowspec:flowspec-l3vpn-ipv4-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

    <flowspec-l3vpn-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-flowspec">
        <path-id>0</path-id>
        <route-key>flow-l3vpn</route-key>
        <route-distinguisher>172.16.0.44:101</route-distinguisher>
        <flowspec>
            <source-prefix>10.0.0.3/32</source-prefix>
        </flowspec>
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
                   <redirect-ipv4>
                       <global-administrator>172.16.0.44</global-administrator>
                       <local-administrator>102</local-administrator>
                   </redirect-ipv4>
               </extended-communities>
        </attributes>
    </flowspec-l3vpn-route>

-----

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-flowspec:flowspec-l3vpn-subsequent-address-family/bgp-flowspec:flowspec-l3vpn-ipv4-routes/flowspec-l3vpn-route/flow-l3vpn/0``

**Method:** ``DELETE``

IPv6 Flow Specification
'''''''''''''''''''''''
This examples show how to originate and remove IPv6 fowspec route via programmable RIB.

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv6-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-ipv6-routes``

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

-----

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv6-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-ipv6-routes/bgp-flowspec:flowspec-route/flow-v6/0``

**Method:** ``DELETE``

References
^^^^^^^^^^
* `Dissemination of Flow Specification Rules <https://tools.ietf.org/html/rfc5575>`_
* `Dissemination of Flow Specification Rules for IPv6 <https://tools.ietf.org/html/draft-ietf-idr-flow-spec-v6-07>`_
* `BGP Flow-Spec Extended Community for Traffic Redirect to IP Next Hop <https://tools.ietf.org/html/draft-ietf-idr-flowspec-redirect-ip-00>`_
* `Clarification of the Flowspec Redirect Extended Community <https://tools.ietf.org/html/rfc7674>`_
* `Revised Validation Procedure for BGP Flow Specifications <https://tools.ietf.org/html/draft-ietf-idr-bgp-flowspec-oid-03>`_
