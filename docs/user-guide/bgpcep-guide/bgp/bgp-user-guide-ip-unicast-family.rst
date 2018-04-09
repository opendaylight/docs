.. _bgp-user-guide-ip-unicast-family:

IP Unicast Family
=================
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

IP Unicast API
^^^^^^^^^^^^^^
Following trees illustrate the BGP IP Unicast routes structures.

IPv4 Unicast Route
''''''''''''''''''
.. code-block:: console

   :(ipv4-routes-case)
      +--ro ipv4-routes
        +--ro ipv4-route* [route-key path-id]
           +--ro route-key     string
           +--ro prefix        inet:ipv4-prefix
           +--ro path-id       path-id
           +--ro attributes
              +--ro origin
              |  +--ro value    bgp-t:bgp-origin
              +--ro as-path
              |  +--ro segments*
              |     +--ro as-sequence*   inet:as-number
              |     +--ro as-set*        inet:as-number
              +--ro (c-next-hop)?
              |  +--:(ipv4-next-hop-case)
              |  |  +--ro ipv4-next-hop
              |  |     +--ro global?   inet:ipv4-address
              |  +--:(ipv6-next-hop-case)
              |  |  +--ro ipv6-next-hop
              |  |     +--ro global?       inet:ipv6-address
              |  |     +--ro link-local?   inet:ipv6-address
              |  +--:(empty-next-hop-case)
              |     +--ro empty-next-hop?            empty
              +--ro multi-exit-disc
              |  +--ro med?   uint32
              +--ro local-pref
              |  +--ro pref?   uint32
              +--ro atomic-aggregate!
              +--ro aggregator
              |  +--ro as-number?         inet:as-number
              |  +--ro network-address?   inet:ipv4-address
              +--ro communities*
              |  +--ro as-number?   inet:as-number
              |  +--ro semantics?   uint16
              +--ro extended-communities*
              |  +--ro transitive?                             boolean
              |  +--ro (extended-community)?
              |     +--:(as-specific-extended-community-case)
              |     |  +--ro as-specific-extended-community
              |     |     +--ro global-administrator?   short-as-number
              |     |     +--ro local-administrator?    binary
              |     +--:(inet4-specific-extended-community-case)
              |     |  +--ro inet4-specific-extended-community
              |     |     +--ro global-administrator?   inet:ipv4-address
              |     |     +--ro local-administrator?    binary
              |     +--:(opaque-extended-community-case)
              |     |  +--ro opaque-extended-community
              |     |     +--ro value?   binary
              |     +--:(route-target-extended-community-case)
              |     |  +--ro route-target-extended-community
              |     |     +--ro global-administrator?   short-as-number
              |     |     +--ro local-administrator?    binary
              |     +--:(route-origin-extended-community-case)
              |     |  +--ro route-origin-extended-community
              |     |     +--ro global-administrator?   short-as-number
              |     |     +--ro local-administrator?    binary
              |     +--:(route-target-ipv4-case)
              |     |  +--ro route-target-ipv4
              |     |     +--ro global-administrator?   inet:ipv4-address
              |     |     +--ro local-administrator?    uint16
              |     +--:(route-origin-ipv4-case)
              |     |  +--ro route-origin-ipv4
              |     |     +--ro global-administrator?   inet:ipv4-address
              |     |     +--ro local-administrator?    uint16
              |     +--:(link-bandwidth-case)
              |     |  +--ro link-bandwidth-extended-community
              |     |     +--ro bandwidth    netc:bandwidth
              |     +--:(as-4-generic-spec-extended-community-case)
              |     |  +--ro as-4-generic-spec-extended-community
              |     |     +--ro as-4-specific-common
              |     |        +--ro as-number              inet:as-number
              |     |        +--ro local-administrator    uint16
              |     +--:(as-4-route-target-extended-community-case)
              |     |  +--ro as-4-route-target-extended-community
              |     |     +--ro as-4-specific-common
              |     |        +--ro as-number              inet:as-number
              |     |        +--ro local-administrator    uint16
              |     +--:(as-4-route-origin-extended-community-case)
              |     |  +--ro as-4-route-origin-extended-community
              |     |     +--ro as-4-specific-common
              |     |        +--ro as-number              inet:as-number
              |     |        +--ro local-administrator    uint16
              |     +--:(encapsulation-case)
              |        +--ro encapsulation-extended-community
              |           +--ro tunnel-type    encapsulation-tunnel-type
              +--ro originator-id
              |  +--ro originator?   inet:ipv4-address
              +--ro cluster-id
              |  +--ro cluster*   bgp-t:cluster-identifier
              +--ro aigp
              |  +--ro aigp-tlv
              |     +--ro metric?   netc:accumulated-igp-metric
              +--ro unrecognized-attributes* [type]
                 +--ro partial       boolean
                 +--ro transitive    boolean
                 +--ro type          uint8
                 +--ro value         binary

IPv6 Unicast Route
''''''''''''''''''
.. code-block:: console

   :(ipv6-routes-case)
      +--ro ipv6-routes
         +--ro ipv6-route* [route-key path-id]
            +--ro route-key     string
            +--ro prefix        inet:ipv6-prefix
            +--ro path-id       path-id
            +--ro attributes
            ...

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
Make sure the *Application Peer* is configured first.

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <ipv4-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
       <route-key>10.0.0.11/32</route-key>
       <prefix>10.0.0.11/32</prefix>
       <path-id>0</path-id>
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

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes/ipv4-route/10.0.0.11%2F32/0``

**Method:** ``DELETE``

IPv6 Unicast
''''''''''''
This examples show how to originate and remove IPv6 route via programmable RIB:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv6-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv6-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <ipv6-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
       <route-key>2001:db8:30::3/128</route-key>
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

-----

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv6-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv6-routes/ipv6-route/2001:db8:30::3%2F128/0``

**Method:** ``DELETE``

References
^^^^^^^^^^
* `Multiprotocol Extensions for BGP-4 <https://tools.ietf.org/html/rfc4760>`_
