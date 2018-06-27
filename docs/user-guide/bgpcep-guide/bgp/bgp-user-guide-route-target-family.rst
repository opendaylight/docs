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

Programming
^^^^^^^^^^^
These examples show how to originate and remove ROUTE TARGET CONSTRAIN routes via programmable RIB.
There are different types of ROUTE TARGET CONSTRAIN routes based on route target extended communities.
Make sure the *Application Peer* is configured first.

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-route-target-constrain:route-target-constrain-subsequent-address-family/bgp-route-target-constrain:route-target-constrain-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 4,17

   <route-target-constrain-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp:route:target:constrain">
      <route-key>flow1</route-key>
      <path-id>0</path-id>
      <origin-as>64511</origin-as>
      <route-target-extended-community>
          <global-administrator>65000</global-administrator>
          <local-administrator>AAAAZQ==</local-administrator>
      </route-target-extended-community>
      ....
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
          <extended-communities>
          ....
          </extended-communities>
      </attributes>
   </route-target-constrain-route>

@line 4: One of the ROUTE TARGET route must be set here.

@line 15: In some cases, specific extended community presence is required.

-----

**ROUTE TARGET CONSTRAIN Routes:**

* **Route Target Default**
   .. code-block:: xml

    <route-target-constrain-default-route/>

* **Route Target type 0**
   .. code-block:: xml

    <origin-as>64511</origin-as>
    <route-target-extended-community>
        <global-administrator>65000</global-administrator>
        <local-administrator>AAAAZQ==</local-administrator>
    </route-target-extended-community>

* **Route Target type 1**
   .. code-block:: xml

    <origin-as>64511</origin-as>
    <route-target-ipv4>
        <global-administrator>192.0.2.2</global-administrator>
        <local-administrator>123</local-administrator>
    </route-target-ipv4>

* **Route Target type 2**
   .. code-block:: xml

    <origin-as>64511</origin-as>
    <as-4-route-target-extended-community>
        <as-4-specific-common>
            <as-number>65000</as-number>
            <local-administrator>123</local-administrator>
        </as-4-specific-common>
    </as-4-route-target-extended-community>

-----

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-route-target-constrain:route-target-constrain-subsequent-address-family/bgp-route-target-constrain:route-target-routes/route-target-constrain-route/flow1/0``

**Method:** ``DELETE``

References
^^^^^^^^^^
* `Constrained Route Distribution for Border Gateway Protocol/MultiProtocol Label Switching (BGP/MPLS) Internet Protocol (IP) Virtual Private Networks (VPNs) <https://tools.ietf.org/html/rfc4684>`_
