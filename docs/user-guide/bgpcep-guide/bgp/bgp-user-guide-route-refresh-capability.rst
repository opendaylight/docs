.. _bgp-user-guide-route-refresh-capability:

Route Refresh
=============
The Route Refresh Capability allows to dynamically request a re-advertisement of the Adj-RIB-Out from a BGP peer.
This is useful when the inbound routing policy for a peer changes and all prefixes from a peer must be reexamined against a new policy.

.. contents:: Contents
   :depth: 2
   :local:

Configuration
^^^^^^^^^^^^^
The capability is enabled by default, no additional configuration is required.

Usage
^^^^^
To send a Route Refresh request from OpenDaylight BGP speaker instance to its neighbor, invoke RPC:

**URL:** ``/restconf/operations/bgp-peer-rpc:route-refresh-request``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <input xmlns="urn:opendaylight:params:xml:ns:yang:bgp-peer-rpc">
       <afi xmlns:types="urn:opendaylight:params:xml:ns:yang:bgp-types">types:ipv4-address-family</afi>
       <safi xmlns:types="urn:opendaylight:params:xml:ns:yang:bgp-types">types:unicast-subsequent-address-family</safi>
       <peer-ref xmlns:rib="urn:opendaylight:params:xml:ns:yang:bgp-rib">/rib:bgp-rib/rib:rib[rib:id="bgp-example"]/rib:peer[rib:peer-id="bgp://10.25.1.9"]</peer-ref>
   </input>

References
^^^^^^^^^^
* `Route Refresh Capability for BGP-4 <https://tools.ietf.org/html/rfc2918>`_

Peer Session Release
--------------------

BGP provides a RPC feature to release a Neighbor session.

.. contents:: Contents
   :depth: 2
   :local:

Configuration
^^^^^^^^^^^^^
The capability is enabled by default, no additional configuration is required.

Usage
^^^^^
To release neighbor session, invoke RPC:

**URL:** ``/restconf/operations/bgp-peer-rpc:reset-session``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <input xmlns="urn:opendaylight:params:xml:ns:yang:bgp-peer-rpc">
       <peer-ref xmlns:rib="urn:opendaylight:params:xml:ns:yang:bgp-rib">/rib:bgp-rib/rib:rib[rib:id="bgp-example"]/rib:peer[rib:peer-id="bgp://10.25.1.9"]</peer-ref>
   </input>
