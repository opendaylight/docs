.. _bgp-user-guide:

IP L3VPN Family
===============
The BGP/MPLS IP Virtual Private Networks (BGP L3VPN) Multiprotocol extension can be used to exchange particular VPN (customer) routes among the provider's routers attached to that VPN.
Also, routes are distributed to specific VPN remote sites.

.. contents:: Contents
   :depth: 2
   :local:

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
                   <router-id>192.0.2.2</router-id>
                   <as>65000</as>
               </config>
               <afi-safis>
                   <afi-safi>
                       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV4-UNICAST</afi-safi-name>
                   </afi-safi>
                   <afi-safi>
                       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV6-UNICAST</afi-safi-name>
                   </afi-safi>
                   <afi-safi>
                       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV4-MULTICAST</afi-safi-name>
                   </afi-safi>
                   <afi-safi>
                       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV6-MULTICAST</afi-safi-name>
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
       <neighbor-address>192.0.2.1</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV4-UNICAST</afi-safi-name>
           </afi-safi>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV6-UNICAST</afi-safi-name>
           </afi-safi>
       </afi-safis>
   </neighbor>

IP L3VPN API
^^^^^^^^^^^^
Following trees illustrate the BGP IP L3VPN routes structures.

IPv4 L3VPN Unicast Route
''''''''''''''''''''''''
.. code-block:: console

   :(vpn-ipv4-routes-case)
      +--ro vpn-ipv4-routes
         +--ro vpn-route* [route-key path-id]
            +--ro route-key              string
            +--ro path-id                path-id
            +--ro label-stack*
            |  +--ro label-value?   netc:mpls-label
            +--ro prefix?                inet:ip-prefix
            +--ro path-id?               path-id
            +--ro route-distinguisher?   bgp-t:route-distinguisher
            +--ro attributes
            ...

IPv6 L3VPN Unicast Route
''''''''''''''''''''''''
.. code-block:: console

   :(vpn-ipv6-routes-case)
      +--ro vpn-ipv6-routes
         +--ro vpn-route* [route-key path-id]
            +--ro route-key              string
            +--ro path-id                path-id
            +--ro label-stack*
            |  +--ro label-value?   netc:mpls-label
            +--ro prefix?                inet:ip-prefix
            +--ro path-id?               path-id
            +--ro route-distinguisher?   bgp-t:route-distinguisher
            +--ro attributes
            ...

IPv4 L3VPN Multicast Route
''''''''''''''''''''''''''
.. code-block:: console

   :(l3vpn-mcast-routes-ipv4-case)
      +--ro l3vpn-mcast-routes-ipv4
           +--ro l3vpn-mcast-route* [route-key path-id]
              +--ro prefix?                inet:ip-prefix
              +--ro route-distinguisher?   bgp-t:route-distinguisher

IPv6 L3VPN Multicast Route
''''''''''''''''''''''''''
.. code-block:: console

   :(l3vpn-mcast-routes-ipv6-case)
      +--ro l3vpn-mcast-routes-ipv6
           +--ro l3vpn-mcast-route* [route-key path-id]
              +--ro prefix?                inet:ip-prefix
              +--ro route-distinguisher?   bgp-t:route-distinguisher


Usage
^^^^^
IPv4 L3VPN Unicast
''''''''''''''''''
The IPv4 L3VPN Unicast table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-types:mpls-labeled-vpn-subsequent-address-family/bgp-vpn-ipv4:vpn-ipv4-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <vpn-ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-vpn-ipv4">
       <vpn-route>
           <path-id>0</path-id>
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

IPv6 L3VPN Unicast
''''''''''''''''''
The IPv6 L3VPN Unicast table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv6-address-family/bgp-types:mpls-labeled-vpn-subsequent-address-family/bgp-vpn-ipv6:vpn-ipv6-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <vpn-ipv6-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-vpn-ipv6">
       <vpn-route>
           <path-id>0</path-id>
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

IPv4 L3VPN Multicast
''''''''''''''''''''
The IPv4 L3VPN Multicast table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-types:mcast-mpls-labeled-vpn-subsequent-address-family/bgp-l3vpn-mcast:l3vpn-mcast-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <l3vpn-mcast-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp:l3vpn:mcast">
       <l3vpn-mcast-route>
           <path-id>0</path-id>
           <route-key>mAXdcQABrBAALABlKgILgAAAAAE=</route-key>
           <route-distinguisher>172.16.0.44:101</route-distinguisher>
           <prefix>10.2.34.0/24</prefix>
           <attributes>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <extended-communities>
                   <transitive>true</transitive>
                   <vrf-route-import-extended-community>
                       <inet4-specific-extended-community-common>
                           <global-administrator>10.0.0.1</global-administrator>
                           <local-administrator>123=</local-administrator>
                        </inet4-specific-extended-community-common>
                    </vrf-route-import-extended-community>
               </extended-communities>
               <ipv4-next-hop>
                   <global>127.16.0.44</global>
               </ipv4-next-hop>
               <origin>
                   <value>igp</value>
               </origin>
               <as-path></as-path>
           </attributes>
       </l3vpn-mcast-route>
   </l3vpn-mcast-routes>

IPv6 L3VPN Multicast
''''''''''''''''''''
The IPv4 L3VPN Multicast table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv6-address-family/bgp-types:mcast-mpls-labeled-vpn-subsequent-address-family/bgp-l3vpn-mcast:l3vpn-mcast-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <l3vpn-mcast-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp:l3vpn:mcast">
       <l3vpn-mcast-route>
           <path-id>0</path-id>
           <route-key>mAXdcQABrBAALABlKgILgAAAAAE=</route-key>
           <route-distinguisher>172.16.0.44:101</route-distinguisher>
           <prefix>2a02:b80:0:1::/64</prefix>
           <attributes>
               <local-pref>
                   <pref>100</pref>
               </local-pref>
               <extended-communities>
                   <transitive>true</transitive>
                   <vrf-route-import-extended-community>
                       <inet4-specific-extended-community-common>
                           <global-administrator>10.0.0.1</global-administrator>
                           <local-administrator>123=</local-administrator>
                        </inet4-specific-extended-community-common>
                    </vrf-route-import-extended-community>
               </extended-communities>
               <ipv6-next-hop>
                   <global>2a02:b80:0:2::1</global>
               </ipv6-next-hop>
               <origin>
                   <value>igp</value>
               </origin>
               <as-path></as-path>
           </attributes>
       </l3vpn-mcast-route>
   </l3vpn-mcast-routes>

Programming
^^^^^^^^^^^
This examples show how to originate and remove IPv4 L3VPN Unicast route via programmable RIB.
Make sure the *Application Peer* is configured first.

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-types:mpls-labeled-vpn-subsequent-address-family/bgp-vpn-ipv4:vpn-ipv4-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <vpn-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-vpn-ipv4">
       <path-id>0</path-id>
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

-----

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-types:mpls-labeled-vpn-subsequent-address-family/bgp-vpn-ipv4:vpn-ipv4-routes/vpn-route/vpn1/0``

**Method:** ``DELETE``

References
^^^^^^^^^^
* `BGP/MPLS IP Virtual Private Networks (VPNs) <https://tools.ietf.org/html/rfc4364>`_
* `BGP-MPLS IP Virtual Private Network (VPN) Extension for IPv6 VPN <https://tools.ietf.org/html/rfc4659>`_
* `BGP/MPLS VPN Virtual PE <https://tools.ietf.org/html/draft-ietf-bess-virtual-pe-00>`_
