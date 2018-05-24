.. _bgp-user-guide-evpn-family:

EVPN Family
===========
The BGP MPLS-Based Ethernet VPN (BGP EVPN) Multiprotocol extension can be used to distribute Ethernet L2VPN service related routes in order to support a concept of MAC routing.
A major use-case for BGP EVPN is data-center interconnection (DCI), where advantage of BGP EVPN are MAC/IP address advertising across MPLS network, Multihoming functionality including Fast Convergence, Split Horizon and Aliasing support, VM (MAC) Mobility, support Multicast and Broadcast traffic.
In addition to MPLS, IP tunnelling encapsulation techniques like VXLAN, NVGRE, MPLSoGRE and others can be used for packet transportation.
Also, Provider Backbone Bridging (PBB) can be combined with EVPN in order to reduce a number of MAC Advertisement routes.

.. contents:: Contents
   :depth: 2
   :local:

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
                   <router-id>192.0.2.2</router-id>
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
       <neighbor-address>192.0.2.1</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L2VPN-EVPN</afi-safi-name>
           </afi-safi>
       </afi-safis>
   </neighbor>

EVPN Route API
^^^^^^^^^^^^^^
Following tree illustrate the BGP EVPN route structure.

.. code-block:: console

   :(evpn-routes-case)
      +--ro evpn-routes
         +--ro evpn-route* [route-key path-id]
            +--ro route-key                     string
            +--ro path-id                       path-id
            +--ro (evpn-choice)
            |  +--:(ethernet-a-d-route-case)
            |  |  +--ro ethernet-a-d-route
            |  |     +--ro (esi)
            |  |     |  +--:(arbitrary-case)
            |  |     |  |  +--ro arbitrary
            |  |     |  |     +--ro arbitrary    binary
            |  |     |  +--:(lacp-auto-generated-case)
            |  |     |  |  +--ro lacp-auto-generated
            |  |     |  |     +--ro ce-lacp-mac-address    yang:mac-address
            |  |     |  |     +--ro ce-lacp-port-key       uint16
            |  |     |  +--:(lan-auto-generated-case)
            |  |     |  |  +--ro lan-auto-generated
            |  |     |  |     +--ro root-bridge-mac-address    yang:mac-address
            |  |     |  |     +--ro root-bridge-priority       uint16
            |  |     |  +--:(mac-auto-generated-case)
            |  |     |  |  +--ro mac-auto-generated
            |  |     |  |     +--ro system-mac-address     yang:mac-address
            |  |     |  |     +--ro local-discriminator    uint24
            |  |     |  +--:(router-id-generated-case)
            |  |     |  |  +--ro router-id-generated
            |  |     |  |     +--ro router-id              inet:ipv4-address
            |  |     |  |     +--ro local-discriminator    uint32
            |  |     |  +--:(as-generated-case)
            |  |     |     +--ro as-generated
            |  |     |        +--ro as                     inet:as-number
            |  |     |        +--ro local-discriminator    uint32
            |  |     +--ro ethernet-tag-id
            |  |     |  +--ro vlan-id    uint32
            |  |     +--ro mpls-label             netc:mpls-label
            |  +--:(mac-ip-adv-route-case)
            |  |  +--ro mac-ip-adv-route
            |  |     +--ro (esi)
            |  |     |  +--:(arbitrary-case)
            |  |     |  |  +--ro arbitrary
            |  |     |  |     +--ro arbitrary    binary
            |  |     |  +--:(lacp-auto-generated-case)
            |  |     |  |  +--ro lacp-auto-generated
            |  |     |  |     +--ro ce-lacp-mac-address    yang:mac-address
            |  |     |  |     +--ro ce-lacp-port-key       uint16
            |  |     |  +--:(lan-auto-generated-case)
            |  |     |  |  +--ro lan-auto-generated
            |  |     |  |     +--ro root-bridge-mac-address    yang:mac-address
            |  |     |  |     +--ro root-bridge-priority       uint16
            |  |     |  +--:(mac-auto-generated-case)
            |  |     |  |  +--ro mac-auto-generated
            |  |     |  |     +--ro system-mac-address     yang:mac-address
            |  |     |  |     +--ro local-discriminator    uint24
            |  |     |  +--:(router-id-generated-case)
            |  |     |  |  +--ro router-id-generated
            |  |     |  |     +--ro router-id              inet:ipv4-address
            |  |     |  |     +--ro local-discriminator    uint32
            |  |     |  +--:(as-generated-case)
            |  |     |     +--ro as-generated
            |  |     |        +--ro as                     inet:as-number
            |  |     |        +--ro local-discriminator    uint32
            |  |     +--ro ethernet-tag-id
            |  |     |  +--ro vlan-id    uint32
            |  |     +--ro mac-address            yang:mac-address
            |  |     +--ro ip-address?            inet:ip-address
            |  |     +--ro mpls-label1            netc:mpls-label
            |  |     +--ro mpls-label2?           netc:mpls-label
            |  +--:(inc-multi-ethernet-tag-res-case)
            |  |  +--ro inc-multi-ethernet-tag-res
            |  |     +--ro ethernet-tag-id
            |  |     |  +--ro vlan-id    uint32
            |  |     +--ro orig-route-ip?     inet:ip-address
            |  +--:(es-route-case)
            |     +--ro es-route
            |        +--ro (esi)
            |        |  +--:(arbitrary-case)
            |        |  |  +--ro arbitrary
            |        |  |     +--ro arbitrary    binary
            |        |  +--:(lacp-auto-generated-case)
            |        |  |  +--ro lacp-auto-generated
            |        |  |     +--ro ce-lacp-mac-address    yang:mac-address
            |        |  |     +--ro ce-lacp-port-key       uint16
            |        |  +--:(lan-auto-generated-case)
            |        |  |  +--ro lan-auto-generated
            |        |  |     +--ro root-bridge-mac-address    yang:mac-address
            |        |  |     +--ro root-bridge-priority       uint16
            |        |  +--:(mac-auto-generated-case)
            |        |  |  +--ro mac-auto-generated
            |        |  |     +--ro system-mac-address     yang:mac-address
            |        |  |     +--ro local-discriminator    uint24
            |        |  +--:(router-id-generated-case)
            |        |  |  +--ro router-id-generated
            |        |  |     +--ro router-id              inet:ipv4-address
            |        |  |     +--ro local-discriminator    uint32
            |        |  +--:(as-generated-case)
            |        |     +--ro as-generated
            |        |        +--ro as                     inet:as-number
            |        |        +--ro local-discriminator    uint32
            |        +--ro orig-route-ip          inet:ip-address
            +--ro route-distinguisher           bgp-t:route-distinguisher
            +--ro attributes
               +--ro extended-communities*
               |  +--ro transitive?                              boolean
               |  +--ro (extended-community)?
               |     +--:(encapsulation-case)
               |     |  +--ro encapsulation-extended-community
               |     |     +--ro tunnel-type    encapsulation-tunnel-type
               |     +--:(esi-label-extended-community-case)
               |     |  +--ro esi-label-extended-community
               |     |     +--ro single-active-mode?   boolean
               |     |     +--ro esi-label             netc:mpls-label
               |     +--:(es-import-route-extended-community-case)
               |     |  +--ro es-import-route-extended-community
               |     |     +--ro es-import    yang:mac-address
               |     +--:(mac-mobility-extended-community-case)
               |     |  +--ro mac-mobility-extended-community
               |     |     +--ro static?       boolean
               |     |     +--ro seq-number    uint32
               |     +--:(default-gateway-extended-community-case)
               |     |  +--ro default-gateway-extended-community!
               |     +--:(layer-2-attributes-extended-community-case)
               |        +--ro layer-2-attributes-extended-community
               |           +--ro primary-pe?     boolean
               |           +--ro backup-pe?      boolean
               |           +--ro control-word?   boolean
               |           +--ro l2-mtu          uint16
               +--ro pmsi-tunnel!
                  +--ro leaf-information-required    boolean
                  +--ro mpls-label?                  netc:mpls-label
                  +--ro (tunnel-identifier)?
                     +--:(rsvp-te-p2mp-lsp)
                     |  +--ro rsvp-te-p2mp-lps
                     |     +--ro p2mp-id               uint32
                     |     +--ro tunnel-id             uint16
                     |     +--ro extended-tunnel-id    inet:ip-address
                     +--:(mldp-p2mp-lsp)
                     |  +--ro mldp-p2mp-lsp
                     |     +--ro address-family       identityref
                     |     +--ro root-node-address    inet:ip-address
                     |     +--ro opaque-value*
                     |        +--ro opaque-type             uint8
                     |        +--ro opaque-extended-type?   uint16
                     |        +--ro opaque                  yang:hex-string
                     +--:(pim-ssm-tree)
                     |  +--ro pim-ssm-tree
                     |     +--ro p-address            inet:ip-address
                     |     +--ro p-multicast-group    inet:ip-address
                     +--:(pim-sm-tree)
                     |  +--ro pim-sm-tree
                     |     +--ro p-address            inet:ip-address
                     |     +--ro p-multicast-group    inet:ip-address
                     +--:(bidir-pim-tree)
                     |  +--ro bidir-pim-tree
                     |     +--ro p-address            inet:ip-address
                     |     +--ro p-multicast-group    inet:ip-address
                     +--:(ingress-replication)
                     |  +--ro ingress-replication
                     |     +--ro receiving-endpoint-address?   inet:ip-address
                     +--:(mldp-mp2mp-lsp)
                        +--ro mldp-mp2mp-lsp
                           +--ro opaque-type             uint8
                           +--ro opaque-extended-type?   uint16
                           +--ro opaque
                     ...

Usage
^^^^^
The L2VPN EVPN table in an instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/odl-bgp-evpn:l2vpn-address-family/odl-bgp-evpn:evpn-subsequent-address-family/evpn-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <evpn-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-evpn">
      <evpn-route>
         <route-key>AxEAAcCoZAED6AAAAQAgwKhkAQ==</route-key>
         <path-id>0</path-id>
         <route-distinguisher>192.168.100.1:1000</route-distinguisher>
         <inc-multi-ethernet-tag-res>
            <ethernet-tag-id>
               <vlan-id>256</vlan-id>
            </ethernet-tag-id>
            <orig-route-ip>192.168.100.1</orig-route-ip>
         </inc-multi-ethernet-tag-res>
         <attributes>
            <ipv4-next-hop>
               <global>172.23.29.104</global>
            </ipv4-next-hop>
            <as-path/>
            <origin>
               <value>igp</value>
            </origin>
            <extended-communities>
               <extended-communities>
                   <transitive>true</transitive>
                   <route-target-extended-community>
                       <global-administrator>65504</global-administrator>
                       <local-administrator>AAAD6A==</local-administrator>
                   </route-target-extended-community>
               </extended-communities>
            </extended-communities>
            <pmsi-tunnel>
                <leaf-information-required>true</leaf-information-required>
                <mpls-label>20024</mpls-label>
                <ingress-replication>
                    <receiving-endpoint-address>192.168.100.1</receiving-endpoint-address>
                </ingress-replication>
            </pmsi-tunnel>
         </attributes>
      </evpn-route>
   </evpn-routes>

Programming
^^^^^^^^^^^
This examples show how to originate and remove EVPN routes via programmable RIB.
There are four different types of EVPN routes, and several extended communities.
Routes can be used for variety of use-cases supported by BGP/MPLS EVPN, PBB EVPN and NVO EVPN.
Make sure the *Application Peer* is configured first.

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/odl-bgp-evpn:l2vpn-address-family/odl-bgp-evpn:evpn-subsequent-address-family/odl-bgp-evpn:evpn-routes``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 4,5,15

   <evpn-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-evpn">
       <route-key>evpn</route-key>
       <path-id>0</path-id>
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

@line 4: Route Distinguisher (RD) - set to RD of the MAC-VRF advertising the NLRI, recommended format *<IP>:<VLAN_ID>*

@line 5: One of the EVPN route must be set here.

@line 15: In some cases, specific extended community presence is required. The route may carry one or more Route Target attributes.

-----

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

**P-Multicast Service Interface Tunnel (PMSI) attribute:**

* **RSVP-TE P2MP LSP**
   .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <rsvp-te-p2mp-lsp>
              <p2mp-id>1111111111</p2mp-id>
              <tunnel-id>11111</tunnel-id>
              <extended-tunnel-id>10.10.10.10</extended-tunnel-id>
          </rsvp-te-p2mp-lsp>
      </pmsi-tunnel>

* **mLDP P2MP LSP**
   .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <mldp-p2mp-lsp>
              <address-family xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</address-family>
              <root-node-address>10.10.10.10</root-node-address>
              <opaque-value>
                  <opaque-type>111</opaque-type>
                  <opaque-extended-type>11111</opaque-extended-type>
                  <opaque>aa:aa:aa</opaque>
              </opaque-value>
          </mldp-p2mp-lsp>
      </pmsi-tunnel>

* **PIM-SSM Tree**
   .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <pim-ssm-tree>
              <p-address>11.12.13.14</p-address>
              <p-multicast-group>10.10.10.10</p-multicast-group>
          </pim-ssm-tree>
      </pmsi-tunnel>

* **PIM-SM Tree**
   .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <pim-sm-tree>
              <p-address>11.12.13.14</p-address>
              <p-multicast-group>10.10.10.10</p-multicast-group>
          </pim-sm-tree>
      </pmsi-tunnel>

* **BIDIR-PIM Tree**
   .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <bidir-pim-tree>
              <p-address>11.12.13.14</p-address>
              <p-multicast-group>10.10.10.10</p-multicast-group>
          </bidir-pim-tree>
      </pmsi-tunnel>

* **Ingress Replication**
   .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <ingress-replication>
              <receiving-endpoint-address>172.12.123.3</receiving-endpoint-address>
          </ingress-replication>
      </pmsi-tunnel>

* **mLDP MP2MP LSP**
   .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <mldp-mp2mp-lsp>
              <opaque-type>111</opaque-type>
              <opaque-extended-type>11111</opaque-extended-type>
              <opaque>aa:aa</opaque>
          </mldp-mp2mp-lsp>
      </pmsi-tunnel>

**Extended Communities:**

* **ESI Label Extended Community**
   .. code-block:: xml

      <extended-communities>
          <transitive>true</transitive>
          <esi-label-extended-community>
              <single-active-mode>false</single-active-mode>
              <esi-label>24001</esi-label>
          </esi-label-extended-community>
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

   @line 4: `full list of tunnel types <http://www.iana.org/assignments/bgp-parameters/bgp-parameters.xhtml#tunnel-types>`_

-----

To remove the route added above, following request can be used:

**URL:** ``/restconf/config/bgp-rib:application-rib/10.25.1.9/tables/bgp-types:ipv4-address-family/odl-bgp-evpn:l2vpn-address-family/odl-bgp-evpn:evpn-subsequent-address-family/odl-bgp-evpn:evpn-routes/evpn-route/evpn/0``

**Method:** ``DELETE``

-----

.. table:: EVPN Routes Usage.

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
