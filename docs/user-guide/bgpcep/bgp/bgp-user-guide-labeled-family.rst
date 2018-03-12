.. _bgp-user-guide-labeled-family:
IP Labeled Unicast Family
=========================
The BGP Labeled Unicast (BGP-LU) Multiprotocol extension is used to distribute a MPLS label that is mapped to a particular route.
It can be used to advertise a MPLS transport path between IGP regions and Autonomous Systems.
Also, BGP-LU can help to solve the Inter-domain traffic-engineering problem and can be deployed in large-scale data centers along with MPLS and Spring.
In addition, IPv6 Labeled Unicast can be used to interconnect IPv6 islands over IPv4/MPLS networks using 6PE.

.. contents:: Contents
   :depth: 2
   :local:

Configuration
^^^^^^^^^^^^^
This section shows a way to enable IPv4 and IPv6 Labeled Unicast family in BGP speaker and peer configuration.

BGP Speaker
'''''''''''
To enable IPv4 and IPv6 Labeled Unicast support in BGP plugin, first configure BGP speaker instance:

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
Here is an example for BGP peer configuration with enabled IPv4 and IPv6 Labeled Unicast family.

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>192.0.2.1</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-LABELLED-UNICAST</afi-safi-name>
           </afi-safi>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-LABELLED-UNICAST</afi-safi-name>
           </afi-safi>
       </afi-safis>
   </neighbor>

IP Labeled Unicast API
^^^^^^^^^^^^^^^^^^^^^^
Following trees illustrate the BGP IP Labeled Unicast routes structures.

IPv4 Labeled Unicast Route
''''''''''''''''''''''''''
.. code-block:: console

   :(labeled-unicast-routes-case)
     +--ro labeled-unicast-routes
        +--ro labeled-unicast-route* [route-key path-id]
           +--ro route-key      string
           +--ro label-stack*
           |  +--ro label-value?   netc:mpls-label
           +--ro prefix?        inet:ip-prefix
           +--ro path-id        path-id
           +--ro attributes
           ...


IPv6 Labeled Unicast Route
''''''''''''''''''''''''''
.. code-block:: console

   :(labeled-unicast-ipv6-routes-case)
      +--ro labeled-unicast-ipv6-routes
         +--ro labeled-unicast-route* [route-key path-id]
            +--ro route-key      string
            +--ro label-stack*
            |  +--ro label-value?   netc:mpls-label
            +--ro prefix?        inet:ip-prefix
            +--ro path-id        path-id
            +--ro attributes
            ...

Usage
^^^^^
The IPv4 Labeled Unicast table in an instance of the speaker's Loc-RIB can be verified via REST:

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
IPv4 Labeled
''''''''''''
This examples show how to originate and remove IPv4 labeled route via programmable RIB.
Make sure the *Application Peer* is configured first.

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-labeled-unicast:labeled-unicast-subsequent-address-family/bgp-labeled-unicast:labeled-unicast-routes``

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

-----

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

-----

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-labeled-unicast:labeled-unicast-subsequent-address-family/bgp-labeled-unicast:labeled-unicast-routes/bgp-labeled-unicast:labeled-unicast-route/label1/0``

**Method:** ``DELETE``

IPv6 Labeled
''''''''''''
This examples show how to originate and remove IPv6 labeled route via programmable RIB.

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-labeled-unicast:labeled-unicast-subsequent-address-family/bgp-labeled-unicast:labeled-unicast-ipv6-routes``

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

-----

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-labeled-unicast:labeled-unicast-subsequent-address-family/bgp-labeled-unicast:labeled-unicast-ipv6-routes/bgp-labeled-unicast:labeled-unicast-route/label1/0``

**Method:** ``DELETE``

References
^^^^^^^^^^
* `Carrying Label Information in BGP-4 <https://tools.ietf.org/html/rfc3107>`_
* `Segment Routing Prefix SID extensions for BGP <https://tools.ietf.org/html/draft-ietf-idr-bgp-prefix-sid-03>`_
* `Connecting IPv6 Islands over IPv4 MPLS Using IPv6 Provider Edge Routers (6PE) <https://tools.ietf.org/html/rfc4798>`_
* `BGP-Prefix Segment in large-scale data centers <https://tools.ietf.org/html/draft-ietf-spring-segment-routing-msdc-01>`_
* `Egress Peer Engineering using BGP-LU <https://tools.ietf.org/html/draft-gredler-idr-bgplu-epe-06>`_
