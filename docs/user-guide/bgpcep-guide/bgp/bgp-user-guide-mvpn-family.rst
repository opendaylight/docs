.. _bgp-user-guide-mvpn-family:

MCAST-VPN Family
================
The BGP Multicast VPN(BGP MCAST-VPN) Multiprotocol extension can be used for MVPN auto-discovery, advertising MVPN to Inclusive P-Multicast Service
Interface (I-PMSI) tunnel binding, advertising (C-S,C-G) to Selective PMSI (S-PMSI) tunnel binding, VPN customer multicast routing 
information exchange among Provider Edge routers (PEs), choosing a single forwarder PE, and for procedures in support of co-locating a 
Customer Rendezvous Point (C-RP) on a PE.

.. contents:: Contents
   :depth: 2
   :local:

Configuration
^^^^^^^^^^^^^
This section shows a way to enable MCAST-VPN family in BGP speaker and peer configuration.

BGP Speaker
'''''''''''
To enable MCAST-VPN support in BGP plugin, first configure BGP speaker instance:

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
                       <afi-safi-name>IPV4-MCAST-VPN</afi-safi-name>
                   </afi-safi>
                   <afi-safi>
                       <afi-safi-name>IPV6-MCAST-VPN</afi-safi-name>
                   </afi-safi>
               </afi-safis>
           </global>
       </bgp>
   </protocol>

BGP Peer
''''''''
Here is an example for BGP peer configuration with enabled IPV4 MCAST-VPN family.

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>192.0.2.1</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name>IPV4-MCAST-VPN</afi-safi-name>
           </afi-safi>
       </afi-safis>
   </neighbor>

Ipv4 MCAST-VPN Route API
^^^^^^^^^^^^^^^^^^^^^^^^
Following tree illustrate the BGP MCAST-VPN route structure.

.. code-block:: console

   :(mvpn-routes-ipv4-case)
      +--ro mvpn-routes-ipv4
         +--ro mvpn-route* [route-key path-id]
            +--ro (mvpn-choice)
               +--:(intra-as-i-pmsi-a-d-case)
               |  +--ro intra-as-i-pmsi-a-d
               +--:(inter-as-i-pmsi-a-d-case)
               |  +--ro inter-as-i-pmsi-a-d
               |     +--ro source-as    inet:as-number
               +--:(s-pmsi-a-d-case)
               |  +--ro s-pmsi-a-d
               |     +--ro multicast-source             inet:ip-address
               |     +--ro (multicast-group)?
               |        +--:(c-g-address-case)
               |        |  +--ro c-g-address?           inet:ip-address
               |        +--:(ldp-mp-opaque-value-case)
               |           +--ro ldp-mp-opaque-value
               |              +--ro opaque-type             uint8
               |              +--ro opaque-extended-type?   uint16
               |              +--ro opaque                  yang:hex-string
               +--:(leaf-a-d-case)
               |  +--ro leaf-a-d
               |     +--ro (leaf-a-d-route-key)
               |        +--:(inter-as-i-pmsi-a-d-case)
               |        |  +--ro inter-as-i-pmsi-a-d
               |        |     +--ro source-as    inet:as-number
               |        +--:(s-pmsi-a-d-case)
               |           +--ro s-pmsi-a-d
               |              +--ro multicast-source             inet:ip-address
               |              +--ro (multicast-group)?
               |                 +--:(c-g-address-case)
               |                 |  +--ro c-g-address?           inet:ip-address
               |                 +--:(ldp-mp-opaque-value-case)
               |                    +--ro ldp-mp-opaque-value
               |                       +--ro opaque-type             uint8
               |                       +--ro opaque-extended-type?   uint16
               |                       +--ro opaque                  yang:hex-string
               +--:(source-active-a-d-case)
               |  +--ro source-active-a-d
               |     +--ro multicast-source    inet:ip-address
               |     +--ro multicast-group     inet:ip-address
               +--:(shared-tree-join-case)
               |  +--ro shared-tree-join
               |     +--ro c-multicast
               |        +--ro multicast-source             inet:ip-address
               |        +--ro source-as                    inet:as-number
               |        +--ro (multicast-group)?
               |           +--:(c-g-address-case)
               |           |  +--ro c-g-address?           inet:ip-address
               |           +--:(ldp-mp-opaque-value-case)
               |              +--ro ldp-mp-opaque-value
               |                 +--ro opaque-type             uint8
               |                 +--ro opaque-extended-type?   uint16
               |                 +--ro opaque                  yang:hex-string
               +--:(source-tree-join-case)
                  +--ro source-tree-join
                     +--ro c-multicast
                        +--ro multicast-source             inet:ip-address
                        +--ro source-as                    inet:as-number
                        +--ro (multicast-group)?
                           +--:(c-g-address-case)
                           |  +--ro c-g-address?           inet:ip-address
                           +--:(ldp-mp-opaque-value-case)
                              +--ro ldp-mp-opaque-value
                                 +--ro opaque-type             uint8
                                 +--ro opaque-extended-type?   uint16
                                 +--ro opaque                  yang:hex-string
                     ...
Ipv6 MCAST-VPN Route API
^^^^^^^^^^^^^^^^^^^^^^^^
Following tree illustrate the BGP MCAST-VPN route structure.

.. code-block:: console

   :(mvpn-routes-ipv6-case)
      +--ro mvpn-routes-ipv6
         +--ro mvpn-route* [route-key path-id]
            +--ro (mvpn-choice)
               +--:(intra-as-i-pmsi-a-d-case)
               |  +--ro intra-as-i-pmsi-a-d
               +--:(inter-as-i-pmsi-a-d-case)
               |  +--ro inter-as-i-pmsi-a-d
               |     +--ro source-as    inet:as-number
               +--:(s-pmsi-a-d-case)
               |  +--ro s-pmsi-a-d
               |     +--ro multicast-source             inet:ip-address
               |     +--ro (multicast-group)?
               |        +--:(c-g-address-case)
               |        |  +--ro c-g-address?           inet:ip-address
               |        +--:(ldp-mp-opaque-value-case)
               |           +--ro ldp-mp-opaque-value
               |              +--ro opaque-type             uint8
               |              +--ro opaque-extended-type?   uint16
               |              +--ro opaque                  yang:hex-string
               +--:(leaf-a-d-case)
               |  +--ro leaf-a-d
               |     +--ro (leaf-a-d-route-key)
               |        +--:(inter-as-i-pmsi-a-d-case)
               |        |  +--ro inter-as-i-pmsi-a-d
               |        |     +--ro source-as    inet:as-number
               |        +--:(s-pmsi-a-d-case)
               |           +--ro s-pmsi-a-d
               |              +--ro multicast-source             inet:ip-address
               |              +--ro (multicast-group)?
               |                 +--:(c-g-address-case)
               |                 |  +--ro c-g-address?           inet:ip-address
               |                 +--:(ldp-mp-opaque-value-case)
               |                    +--ro ldp-mp-opaque-value
               |                       +--ro opaque-type             uint8
               |                       +--ro opaque-extended-type?   uint16
               |                       +--ro opaque                  yang:hex-string
               +--:(source-active-a-d-case)
               |  +--ro source-active-a-d
               |     +--ro multicast-source    inet:ip-address
               |     +--ro multicast-group     inet:ip-address
               +--:(shared-tree-join-case)
               |  +--ro shared-tree-join
               |     +--ro c-multicast
               |        +--ro multicast-source             inet:ip-address
               |        +--ro source-as                    inet:as-number
               |        +--ro (multicast-group)?
               |           +--:(c-g-address-case)
               |           |  +--ro c-g-address?           inet:ip-address
               |           +--:(ldp-mp-opaque-value-case)
               |              +--ro ldp-mp-opaque-value
               |                 +--ro opaque-type             uint8
               |                 +--ro opaque-extended-type?   uint16
               |                 +--ro opaque                  yang:hex-string
               +--:(source-tree-join-case)
                  +--ro source-tree-join
                     +--ro c-multicast
                        +--ro multicast-source             inet:ip-address
                        +--ro source-as                    inet:as-number
                        +--ro (multicast-group)?
                           +--:(c-g-address-case)
                           |  +--ro c-g-address?           inet:ip-address
                           +--:(ldp-mp-opaque-value-case)
                              +--ro ldp-mp-opaque-value
                                 +--ro opaque-type             uint8
                                 +--ro opaque-extended-type?   uint16
                                 +--ro opaque                  yang:hex-string
                     ...

Usage
^^^^^
The Ipv4 Multicast VPN table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-mvpn:mcast-vpn-subsequent-address-family/bgp-mvpn-ipv4:mvpn-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <mvpn-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp:mvpn:ipv4">
      <mvpn-route>
         <route-key>flow1</route-key>
         <path-id>0</path-id>
         <intra-as-i-pmsi-a-d>
            <route-distinguisher>172.16.0.44:101</route-distinguisher>
            <orig-route-ip>192.168.100.1</orig-route-ip>
         </intra-as-i-pmsi-a-d>
         <attributes>
            <ipv4-next-hop>
               <global>199.20.166.41</global>
            </ipv4-next-hop>
            <as-path/>
            <origin>
               <value>igp</value>
            </origin>
         </attributes>
      </mvpn-route>
   </mvpn-routes>

The Ipv6 Multicast VPN table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-types:ipv4-address-family/bgp-mvpn:mcast-vpn-subsequent-address-family/bgp-mvpn-ipv6:mvpn-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <mvpn-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp:mvpn:ipv6">
      <mvpn-route>
         <route-key>flow1</route-key>
         <path-id>0</path-id>
         <intra-as-i-pmsi-a-d>
            <route-distinguisher>172.16.0.44:101</route-distinguisher>
            <orig-route-ip>192.168.100.1</orig-route-ip>
         </intra-as-i-pmsi-a-d>
         <attributes>
            <ipv6-next-hop>
               <global>2001:db8:1::6</global>
            </ipv6-next-hop>
            <as-path/>
            <origin>
               <value>igp</value>
            </origin>
         </attributes>
      </mvpn-route>
   </mvpn-routes>

Programming
^^^^^^^^^^^
This examples show how to originate and remove MCAST-VPN routes via programmable RIB.
There are seven different types of MCAST-VPN routes, and multiples extended communities.
Routes can be used for variety of use-cases supported by BGP/MPLS MCAST-VPN.
Make sure the *Application Peer* is configured first.

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-mvpn:mcast-vpn-subsequent-address-family/bgp-mvpn-ipv4:mvpn-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 4,17

   <mvpn-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp:mvpn:ipv4">
      <route-key>mvpn</route-key>
      <path-id>0</path-id>
      <intra-as-i-pmsi-a-d>
         <route-distinguisher>172.16.0.44:101</route-distinguisher>
         <orig-route-ip>192.168.100.1</orig-route-ip>
      </intra-as-i-pmsi-a-d>
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
   </mvpn-route>

@line 4: One of the MCAST-VPN route must be set here.

@line 15: In some cases, specific extended community presence is required.

-----

**MVPN Routes:**

* **Intra-AS I-PMSI A-D**
   .. code-block:: xml

    <intra-as-i-pmsi-a-d>
        <route-distinguisher>0:5:3</route-distinguisher>
        <orig-route-ip>10.10.10.10</orig-route-ip>
    </intra-as-i-pmsi-a-d>

* **Inter-AS I-PMSI A-D**
   .. code-block:: xml

    <inter-as-i-pmsi-a-d>
        <route-distinguisher>1.2.3.4:258</route-distinguisher>
        <source-as>64496</source-as>
    </inter-as-i-pmsi-a-d>

* **S-PMSI A-D**
   .. code-block:: xml

    <s-pmsi-a-d>
        <route-distinguisher>1.2.3.4:258</route-distinguisher>
        <multicast-source>10.0.0.10</multicast-source>
        <c-g-address>12.0.0.12</c-g-address>
        <orig-route-ip>1.0.0.1</orig-route-ip>
    </s-pmsi-a-d>

   .. code-block:: xml

    <s-pmsi-a-d>
        <route-distinguisher>1.2.3.4:258</route-distinguisher>
        <multicast-source>10.0.0.10</multicast-source>
        <ldp-mp-opaque-value>
            <opaque-type>1</opaque-type>
            <opaque-extended-type>0</opaque-extended-type>
            <opaque>das75das48bvxc</opaque>
        </ldp-mp-opaque-value>
        <orig-route-ip>1.0.0.1</orig-route-ip>
    </s-pmsi-a-d>

* **Leaf A-D**
   .. code-block:: xml

    <leaf-a-d>
        <inter-as-i-pmsi-a-d>
            <route-distinguisher>1.2.3.4:258</route-distinguisher>
            <source-as>1</source-as>
        </inter-as-i-pmsi-a-d>
        <orig-route-ip>1.0.0.1</orig-route-ip>
    </leaf-a-d>

   .. code-block:: xml

    <leaf-a-d>
        <s-pmsi-a-d>
            <route-distinguisher>1.2.3.4:258</route-distinguisher>
            <multicast-source>10.0.0.10</multicast-source>
            <ldp-mp-opaque-value>
                <opaque-type>1</opaque-type>
                <opaque-extended-type>0</opaque-extended-type>
                <opaque>das75das48bvxc</opaque>
            </ldp-mp-opaque-value>
            <orig-route-ip>1.0.0.1</orig-route-ip>
        </s-pmsi-a-d>
        <orig-route-ip>1.0.0.1</orig-route-ip>
    </leaf-a-d>

* **Source Active A-D**
   .. code-block:: xml

    <source-active-a-d>
        <route-distinguisher>1.2.3.4:258</route-distinguisher>
        <multicast-source>1.0.0.1</multicast-source>
        <multicast-group>2.0.0.2</multicast-group>
    </source-active-a-d>

* **Shared Tree Join**
   .. code-block:: xml

    <shared-tree-join>
        <c-multicast>
            <route-distinguisher>1.2.3.4:258</route-distinguisher>
            <source-as>64415</source-as>
            <multicast-source>1.0.0.1</multicast-source>
            <c-g-address>2.0.0.2</c-g-address>
        </c-multicast>
    </shared-tree-join>

   .. code-block:: xml

    <shared-tree-join>
        <c-multicast>
            <route-distinguisher>1.2.3.4:258</route-distinguisher>
            <source-as>64415</source-as>
            <multicast-source>1.0.0.1</multicast-source>
            <ldp-mp-opaque-value>
                <opaque-type>1</opaque-type>
                <opaque-extended-type>0</opaque-extended-type>
                <opaque>das75das48bvxc</opaque>
            </ldp-mp-opaque-value>
        </c-multicast>
    </shared-tree-join>

* **Source Tree Join**
   .. code-block:: xml

    <source-tree-join>
        <c-multicast>
            <route-distinguisher>1.2.3.4:258</route-distinguisher>
            <source-as>64415</source-as>
            <multicast-source>1.0.0.1</multicast-source>
            <c-g-address>2.0.0.2</c-g-address>
        </c-multicast>
    </source-tree-join>

   .. code-block:: xml

    <source-tree-join>
        <c-multicast>
            <route-distinguisher>1.2.3.4:258</route-distinguisher>
            <source-as>64415</source-as>
            <multicast-source>1.0.0.1</multicast-source>
            <ldp-mp-opaque-value>
                <opaque-type>1</opaque-type>
                <opaque-extended-type>0</opaque-extended-type>
                <opaque>das75das48bvxc</opaque>
            </ldp-mp-opaque-value>
        </c-multicast>
    </source-tree-join>

**Attributes:**

.. include:: bgp-user-guide-pmsi-attribute.rst

* **PE Distinguisher Labels Attribute**
   .. code-block:: xml

      <pe-distinguisher-labels-attribute>
          <pe-distinguisher-label-attribute>
              <pe-address>10.10.10.1</pe-address>
              <mpls-label>20024</mpls-label>
          </pe-distinguisher-label-attribute>
          <pe-distinguisher-label-attribute>
              <pe-address>10.10.20.2</pe-address>
              <mpls-label>20028</mpls-label>
          </pe-distinguisher-label-attribute>
      </pe-distinguisher-labels-attribute>

**Extended Communities:**

* **Source AS Extended Community**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <source-as-extended-community>
              <global-administrator>65</global-administrator>
          </source-as-extended-community>
      </extended-communities>

* **Source AS 4 Octets Extended Community**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <source-as-4-extended-community>
              <global-administrator>65555</global-administrator>
          </source-as-4-extended-community>
      </extended-communities>

* **ES-Import Route Target**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <vrf-route-import-extended-community>
              <inet4-specific-extended-community-common>
                  <global-administrator>10.0.0.1</global-administrator>
                  <local-administrator>123=</local-administrator>
               </inet4-specific-extended-community-common>
           </vrf-route-import-extended-community>
      </extended-communities>

-----

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/bgp-mvpn:mcast-vpn-subsequent-address-family/bgp-mvpn-ipv4:mvpn-routes/mvpn-route/mvpn/0``

**Method:** ``DELETE``

References
^^^^^^^^^^
* `Multicast in MPLS/BGP IP VPNs <https://tools.ietf.org/html/rfc6513>`_
* `BGP Encodings and Procedures for Multicast in MPLS/BGP IP VPNs <https://tools.ietf.org/html/rfc6514>`_
* `IPv4 and IPv6 Infrastructure Addresses in BGP Updates for Multicast VPN <https://tools.ietf.org/html/rfc6515>`_
