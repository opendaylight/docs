.. _bgp-user-guide-route-target-family:

Route Target Constrain Family
=============================
The BGP Multicast Route Target (RT) Constrain Multiprotocol extension can be used to restrict advertisement of VPN NLRI to peers that have advertised
their respective Route Targets, effectively building a route distribution graph.

.. contents:: Contents
   :depth: 2
   :local:

Configuration
^^^^^^^^^^^^^
This section shows a way to enable ROUTE-TARGET-CONSTRAIN family in BGP speaker and peer configuration.

BGP Speaker
'''''''''''
To enable ROUTE-TARGET-CONSTRAIN support in BGP plugin, first configure BGP speaker instance:

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
                       <afi-safi-name>ROUTE-TARGET-CONSTRAIN</afi-safi-name>
                   </afi-safi>
               </afi-safis>
           </global>
       </bgp>
   </protocol>

BGP Peer
''''''''
Here is an example for BGP peer configuration with enabled ROUTE-TARGET-CONSTRAIN family.

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>192.0.2.1</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name>ROUTE-TARGET-CONSTRAIN</afi-safi-name>
           </afi-safi>
       </afi-safis>
   </neighbor>

ROUTE-TARGET-CONSTRAIN Route API
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Following tree illustrates the BGP ROUTE-TARGET-CONSTRAIN route structure.

.. code-block:: console

   :(route-target-constrain-routes-case)
     +--rw route-target-constrain-routes
        +--rw route-target-constrain-route* [route-key path-id]
           +--rw origin-as                  inet:as-number
           +--rw (route-target-constrain-choice)
              +--:(route-target-constrain-default-case)
              |  +--rw route-target-constrain-default-route!
              +--:(route-target-constrain-route-case)
              |  +--rw route-target-extended-community
              |     +--rw global-administrator?   short-as-number
              |     +--rw local-administrator?    binary
              +--:(route-target-constrain-ipv4-route-case)
              |  +--rw route-target-ipv4
              |     +--rw global-administrator?   inet:ipv4-address
              |     +--rw local-administrator?    uint16
              +--:(route-target-constrain-as-4-extended-community-case)
                 +--rw as-4-route-target-extended-community
                    +--rw as-4-specific-common
                       +--rw as-number              inet:as-number
                       +--rw local-administrator    uint16

Usage
^^^^^
The ROUTE TARGET CONSTRAIN table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-route-target-constrain:route-target-constrain-subsequent-address-family/bgp-route-target-constrain:route-target-constrain-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <route-target-constrain-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp:route:target:constrain">
      <route-target-constrain-route>
         <route-key>flow1</route-key>
         <path-id>0</path-id>
         <origin-as>64511</origin-as>
         <route-target-extended-community>
             <global-administrator>64511</global-administrator>
             <local-administrator>AAAAZQ==</local-administrator>
         </route-target-extended-community>
         <attributes>
            <ipv4-next-hop>
               <global>199.20.166.41</global>
            </ipv4-next-hop>
            <as-path/>
            <origin>
               <value>igp</value>
            </origin>
            <local-pref>
               <pref>100</pref>
            </local-pref>
         </attributes>
      </route-target-constrain-route>
   </route-target-constrain-routes>

Routing Policies
^^^^^^^^^^^^^^^^

.. code-block:: xml

   <policy-definition>
       <name>default-odl-export-policy</name>
       <statement>
       ...
       <statement>
           <name>from-external-to-external-RTC</name>
           <conditions>
               <bgp-conditions xmlns="http://openconfig.net/yang/bgp-policy">
                   <afi-safi-in xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">x:ROUTE-TARGET-CONSTRAIN</afi-safi-in>
                   <match-role-set xmlns="urn:opendaylight:params:xml:ns:yang:odl:bgp:default:policy">
                       <from-role>
                           <role-set>/rpol:routing-policy/rpol:defined-sets/bgppol:bgp-defined-sets/role-sets/role-set[role-set-name="only-ebgp"]</role-set>
                       </from-role>
                       <to-role>
                           <role-set>/rpol:routing-policy/rpol:defined-sets/bgppol:bgp-defined-sets/role-sets/role-set[role-set-name="only-ebgp"]</role-set>
                       </to-role>
                   </match-role-set>
               </bgp-conditions>
           </conditions>
           <actions>
               <bgp-actions xmlns="http://openconfig.net/yang/bgp-policy">
                   <client-attribute-prepend xmlns="urn:opendaylight:params:xml:ns:yang:bgp:route:target:constrain"/>
               </bgp-actions>
           </actions>
       </statement>
       ...
       </statement>
       <statement>
           <name>from-internal-or-rr-client-to-route-reflector</name>
           <conditions>
               <bgp-conditions xmlns="http://openconfig.net/yang/bgp-policy">
                   <afi-safi-not-in xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions"
                                    xmlns="urn:opendaylight:params:xml:ns:yang:odl:bgp:default:policy">x:ROUTE-TARGET-CONSTRAIN
                   </afi-safi-not-in>
                   <match-role-set xmlns="urn:opendaylight:params:xml:ns:yang:odl:bgp:default:policy">
                       <from-role>
                           <role-set>/rpol:routing-policy/rpol:defined-sets/bgppol:bgp-defined-sets/role-sets/role-set[role-set-name="ibgp-rr-client"]</role-set>
                       </from-role>
                       <to-role>
                           <role-set>/rpol:routing-policy/rpol:defined-sets/bgppol:bgp-defined-sets/role-sets/role-set[role-set-name="only-rr-client"]</role-set>
                       </to-role>
                   </match-role-set>
               </bgp-conditions>
           </conditions>
           <actions>
               <bgp-actions xmlns="http://openconfig.net/yang/bgp-policy">
                   <set-cluster-id-prepend xmlns="urn:opendaylight:params:xml:ns:yang:odl:bgp:default:policy"/>
                   <set-originator-id-prepend xmlns="urn:opendaylight:params:xml:ns:yang:odl:bgp:default:policy"/>
               </bgp-actions>
           </actions>
       </statement>
       <statement>
           <name>from-internal-or-rr-client-to-route-RTC</name>
           <conditions>
               <bgp-conditions xmlns="http://openconfig.net/yang/bgp-policy">
                   <afi-safi-in xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">x:ROUTE-TARGET-CONSTRAIN</afi-safi-in>
                   <match-role-set xmlns="urn:opendaylight:params:xml:ns:yang:odl:bgp:default:policy">
                       <from-role>
                           <role-set>/rpol:routing-policy/rpol:defined-sets/bgppol:bgp-defined-sets/role-sets/role-set[role-set-name="ibgp-rr-client"]</role-set>
                       </from-role>
                       <to-role>
                           <role-set>/rpol:routing-policy/rpol:defined-sets/bgppol:bgp-defined-sets/role-sets/role-set[role-set-name="only-rr-client"]</role-set>
                       </to-role>
                   </match-role-set>
               </bgp-conditions>
           </conditions>
           <actions>
               <bgp-actions xmlns="http://openconfig.net/yang/bgp-policy">
                   <set-originator-id-prepend xmlns="urn:opendaylight:params:xml:ns:yang:odl:bgp:default:policy"/>
                   <set-next-hop>SELF</set-next-hop>
               </bgp-actions>
           </actions>
       </statement>
       <statement>
           <name>vpn-membership-RTC</name>
           <conditions>
               <bgp-conditions xmlns="http://openconfig.net/yang/bgp-policy">
                   <afi-safi-in xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV4-UNICAST</afi-safi-in>
                   <afi-safi-in xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV6-UNICAST</afi-safi-in>
                   <vpn-non-member xmlns="urn:opendaylight:params:xml:ns:yang:odl:bgp:default:policy"/>
               </bgp-conditions>
           </conditions>
           <actions>
               <reject-route/>
           </actions>
       </statement>
       ...
       ...
   </policy-definition>

References
^^^^^^^^^^
* `Constrained Route Distribution for Border Gateway Protocol/MultiProtocol Label Switching (BGP/MPLS) Internet Protocol (IP) Virtual Private Networks (VPNs) <https://tools.ietf.org/html/rfc4684>`_
