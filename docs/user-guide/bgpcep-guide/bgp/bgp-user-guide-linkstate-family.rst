.. _bgp-user-guide-linkstate-family:

Link-State Family
=================
The BGP Link-State (BGP-LS) Multiprotocol extension allows to distribute Link-State and Traffic Engineering (TE) information.
This information is typically distributed by IGP routing protocols with in the network, limiting LSDB or TED visibility to the IGP area.
The BGP-LS-enabled routers are capable to collect such information from networks (multiple IGP areas, inter-AS) and share with external components (i.e. OpenDaylight BGP).
The information is applicable in ALTO servers and PCEs, as both need to gather information about topologies.
In addition, link-state information is extended to carry segment information (Spring).

.. contents:: Contents
   :depth: 2
   :local:

Configuration
^^^^^^^^^^^^^
This section shows a way to enable IPv4 and IPv6 Labeled Unicast family in BGP speaker and peer configuration.

BGP Speaker
'''''''''''
To enable BGP-LS support in BGP plugin, first configure BGP speaker instance:

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
                       <afi-safi-name>LINKSTATE</afi-safi-name>
                   </afi-safi>
               </afi-safis>
           </global>
       </bgp>
   </protocol>

Linkstate path attribute
''''''''''''''''''''''''
IANA allocation for BGP-LS path attribute is TYPE 29.
Some older BGP-LS implementations might still require earliest asigned allocation TYPE 99.
To use TYPE = 99, you need to set value bellow to false.

**URL:** ``/restconf/config/bgp-linkstate-app-config:bgp-linkstate-app-config``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <bgp-linkstate-app-config xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:linkstate-app-config">
       <iana-linkstate-attribute-type>false</iana-linkstate-attribute-type>
   </bgp-linkstate-app-config>

BGP Peer
''''''''
Here is an example for BGP peer configuration with enabled BGP-LS family.

**URL:** ``/restconf/config/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml

   <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor-address>192.0.2.1</neighbor-address>
       <afi-safis>
           <afi-safi>
               <afi-safi-name>LINKSTATE</afi-safi-name>
           </afi-safi>
       </afi-safis>
   </neighbor>

Link-State Route API
^^^^^^^^^^^^^^^^^^^^
Following tree illustrate the BGP Link-State route structure.

.. code-block:: console

   :(linkstate-routes-case)
      +--ro linkstate-routes
         +--ro linkstate-route* [route-key path-id]
            +--ro route-key                       string
            +--ro path-id                         path-id
            +--ro protocol-id                     protocol-id
            +--ro identifier                      identifier
            +--ro (object-type)?
            |  +--:(node-case)
            |  |  +--ro node-descriptors
            |  |     +--ro as-number?         inet:as-number
            |  |     +--ro area-id?           area-identifier
            |  |     +--ro domain-id?         domain-identifier
            |  |     +--ro (c-router-identifier)?
            |  |        +--:(isis-node-case)
            |  |        |  +--ro isis-node
            |  |        |     +--ro iso-system-id    netc:iso-system-identifier
            |  |        +--:(isis-pseudonode-case)
            |  |        |  +--ro isis-pseudonode
            |  |        |     +--ro is-is-router-identifier
            |  |        |     |  +--ro iso-system-id    netc:iso-system-identifier
            |  |        |     +--ro psn                        uint8
            |  |        +--:(ospf-node-case)
            |  |        |  +--ro ospf-node
            |  |        |     +--ro ospf-router-id    uint32
            |  |        +--:(ospf-pseudonode-case)
            |  |           +--ro ospf-pseudonode
            |  |              +--ro ospf-router-id    uint32
            |  |              +--ro lan-interface     ospf-interface-identifier
            |  +--:(link-case)
            |  |  +--ro local-node-descriptors
            |  |  |  +--ro as-number?         inet:as-number
            |  |  |  +--ro area-id?           area-identifier
            |  |  |  +--ro domain-id?         domain-identifier
            |  |  |  +--ro (c-router-identifier)?
            |  |  |  |  +--:(isis-node-case)
            |  |  |  |  |  +--ro isis-node
            |  |  |  |  |     +--ro iso-system-id    netc:iso-system-identifier
            |  |  |  |  +--:(isis-pseudonode-case)
            |  |  |  |  |  +--ro isis-pseudonode
            |  |  |  |  |     +--ro is-is-router-identifier
            |  |  |  |  |     |  +--ro iso-system-id    netc:iso-system-identifier
            |  |  |  |  |     +--ro psn                        uint8
            |  |  |  |  +--:(ospf-node-case)
            |  |  |  |  |  +--ro ospf-node
            |  |  |  |  |     +--ro ospf-router-id    uint32
            |  |  |  |  +--:(ospf-pseudonode-case)
            |  |  |  |     +--ro ospf-pseudonode
            |  |  |  |        +--ro ospf-router-id    uint32
            |  |  |  |        +--ro lan-interface     ospf-interface-identifier
            |  |  |  +--ro bgp-router-id?     inet:ipv4-address
            |  |  |  +--ro member-asn?        inet:as-number
            |  |  +--ro remote-node-descriptors
            |  |  |  +--ro as-number?         inet:as-number
            |  |  |  +--ro area-id?           area-identifier
            |  |  |  +--ro domain-id?         domain-identifier
            |  |  |  +--ro (c-router-identifier)?
            |  |  |  |  +--:(isis-node-case)
            |  |  |  |  |  +--ro isis-node
            |  |  |  |  |     +--ro iso-system-id    netc:iso-system-identifier
            |  |  |  |  +--:(isis-pseudonode-case)
            |  |  |  |  |  +--ro isis-pseudonode
            |  |  |  |  |     +--ro is-is-router-identifier
            |  |  |  |  |     |  +--ro iso-system-id    netc:iso-system-identifier
            |  |  |  |  |     +--ro psn                        uint8
            |  |  |  |  +--:(ospf-node-case)
            |  |  |  |  |  +--ro ospf-node
            |  |  |  |  |     +--ro ospf-router-id    uint32
            |  |  |  |  +--:(ospf-pseudonode-case)
            |  |  |  |     +--ro ospf-pseudonode
            |  |  |  |        +--ro ospf-router-id    uint32
            |  |  |  |        +--ro lan-interface     ospf-interface-identifier
            |  |  |  +--ro bgp-router-id?     inet:ipv4-address
            |  |  |  +--ro member-asn?        inet:as-number
            |  |  +--ro link-descriptors
            |  |     +--ro link-local-identifier?    uint32
            |  |     +--ro link-remote-identifier?   uint32
            |  |     +--ro ipv4-interface-address?   ipv4-interface-identifier
            |  |     +--ro ipv6-interface-address?   ipv6-interface-identifier
            |  |     +--ro ipv4-neighbor-address?    ipv4-interface-identifier
            |  |     +--ro ipv6-neighbor-address?    ipv6-interface-identifier
            |  |     +--ro multi-topology-id?        topology-identifier
            |  +--:(prefix-case)
            |  |  +--ro advertising-node-descriptors
            |  |  |  +--ro as-number?         inet:as-number
            |  |  |  +--ro area-id?           area-identifier
            |  |  |  +--ro domain-id?         domain-identifier
            |  |  |  +--ro (c-router-identifier)?
            |  |  |     +--:(isis-node-case)
            |  |  |     |  +--ro isis-node
            |  |  |     |     +--ro iso-system-id    netc:iso-system-identifier
            |  |  |     +--:(isis-pseudonode-case)
            |  |  |     |  +--ro isis-pseudonode
            |  |  |     |     +--ro is-is-router-identifier
            |  |  |     |     |  +--ro iso-system-id    netc:iso-system-identifier
            |  |  |     |     +--ro psn                        uint8
            |  |  |     +--:(ospf-node-case)
            |  |  |     |  +--ro ospf-node
            |  |  |     |     +--ro ospf-router-id    uint32
            |  |  |     +--:(ospf-pseudonode-case)
            |  |  |        +--ro ospf-pseudonode
            |  |  |           +--ro ospf-router-id    uint32
            |  |  |           +--ro lan-interface     ospf-interface-identifier
            |  |  +--ro prefix-descriptors
            |  |     +--ro multi-topology-id?             topology-identifier
            |  |     +--ro ospf-route-type?               ospf-route-type
            |  |     +--ro ip-reachability-information?   inet:ip-prefix
            |  +--:(te-lsp-case)
            |     +--ro (address-family)?
            |     |  +--:(ipv4-case)
            |     |  |  +--ro ipv4-tunnel-sender-address      inet:ipv4-address
            |     |  |  +--ro ipv4-tunnel-endpoint-address    inet:ipv4-address
            |     |  +--:(ipv6-case)
            |     |     +--ro ipv6-tunnel-sender-address      inet:ipv6-address
            |     |     +--ro ipv6-tunnel-endpoint-address    inet:ipv6-address
            |     +--ro tunnel-id?                      rsvp:tunnel-id
            |     +--ro lsp-id?                         rsvp:lsp-id
            +--ro attributes
               +--ro (link-state-attribute)?
                  +--:(node-attributes-case)
                  |  +--ro node-attributes
                  |     +--ro topology-identifier*   topology-identifier
                  |     +--ro node-flags?            node-flag-bits
                  |     +--ro isis-area-id*          isis-area-identifier
                  |     +--ro dynamic-hostname?      string
                  |     +--ro ipv4-router-id?        ipv4-router-identifier
                  |     +--ro ipv6-router-id?        ipv6-router-identifier
                  |     +--ro sr-capabilities
                  |     |  +--ro mpls-ipv4?      boolean
                  |     |  +--ro mpls-ipv6?      boolean
                  |     |  +--ro sr-ipv6?        boolean
                  |     |  +--ro range-size?     uint32
                  |     |  +--ro (sid-label-index)?
                  |     |     +--:(local-label-case)
                  |     |     |  +--ro local-label?    netc:mpls-label
                  |     |     +--:(ipv6-address-case)
                  |     |     |  +--ro ipv6-address?   inet:ipv6-address
                  |     |     +--:(sid-case)
                  |     |        +--ro sid?            uint32
                  |     +--ro sr-algorithm
                  |        +--ro algorithms*   algorithm
                  +--:(link-attributes-case)
                  |  +--ro link-attributes
                  |     +--ro local-ipv4-router-id?       ipv4-router-identifier
                  |     +--ro local-ipv6-router-id?       ipv6-router-identifier
                  |     +--ro remote-ipv4-router-id?      ipv4-router-identifier
                  |     +--ro remote-ipv6-router-id?      ipv6-router-identifier
                  |     +--ro mpls-protocol?              mpls-protocol-mask
                  |     +--ro te-metric?                  netc:te-metric
                  |     +--ro metric?                     netc:metric
                  |     +--ro shared-risk-link-groups*    rsvp:srlg-id
                  |     +--ro link-name?                  string
                  |     +--ro max-link-bandwidth?         netc:bandwidth
                  |     +--ro max-reservable-bandwidth?   netc:bandwidth
                  |     +--ro unreserved-bandwidth* [priority]
                  |     |  +--ro priority     uint8
                  |     |  +--ro bandwidth?   netc:bandwidth
                  |     +--ro link-protection?            link-protection-type
                  |     +--ro admin-group?                administrative-group
                  |     +--ro sr-adj-ids*
                  |     |  +--ro (flags)?
                  |     |  |  +--:(ospf-adj-flags-case)
                  |     |  |  |  +--ro backup?           boolean
                  |     |  |  |  +--ro set?              boolean
                  |     |  |  +--:(isis-adj-flags-case)
                  |     |  |     +--ro backup?           boolean
                  |     |  |     +--ro set?              boolean
                  |     |  |     +--ro address-family?   boolean
                  |     |  +--ro weight?           weight
                  |     |  +--ro (sid-label-index)?
                  |     |     +--:(local-label-case)
                  |     |     |  +--ro local-label?      netc:mpls-label
                  |     |     +--:(ipv6-address-case)
                  |     |     |  +--ro ipv6-address?     inet:ipv6-address
                  |     |     +--:(sid-case)
                  |     |        +--ro sid?              uint32
                  |     +--ro sr-lan-adj-ids*
                  |     |  +--ro (flags)?
                  |     |  |  +--:(ospf-adj-flags-case)
                  |     |  |  |  +--ro backup?           boolean
                  |     |  |  |  +--ro set?              boolean
                  |     |  |  +--:(isis-adj-flags-case)
                  |     |  |     +--ro backup?           boolean
                  |     |  |     +--ro set?              boolean
                  |     |  |     +--ro address-family?   boolean
                  |     |  +--ro weight?           weight
                  |     |  +--ro iso-system-id?    netc:iso-system-identifier
                  |     |  +--ro neighbor-id?      inet:ipv4-address
                  |     |  +--ro (sid-label-index)?
                  |     |     +--:(local-label-case)
                  |     |     |  +--ro local-label?      netc:mpls-label
                  |     |     +--:(ipv6-address-case)
                  |     |     |  +--ro ipv6-address?     inet:ipv6-address
                  |     |     +--:(sid-case)
                  |     |        +--ro sid?              uint32
                  |     +--ro peer-node-sid
                  |     |  +--ro weight?         weight
                  |     |  +--ro (sid-label-index)?
                  |     |     +--:(local-label-case)
                  |     |     |  +--ro local-label?    netc:mpls-label
                  |     |     +--:(ipv6-address-case)
                  |     |     |  +--ro ipv6-address?   inet:ipv6-address
                  |     |     +--:(sid-case)
                  |     |        +--ro sid?            uint32
                  |     +--ro peer-adj-sid
                  |     |  +--ro weight?         weight
                  |     |  +--ro (sid-label-index)?
                  |     |     +--:(local-label-case)
                  |     |     |  +--ro local-label?    netc:mpls-label
                  |     |     +--:(ipv6-address-case)
                  |     |     |  +--ro ipv6-address?   inet:ipv6-address
                  |     |     +--:(sid-case)
                  |     |        +--ro sid?            uint32
                  |     +--ro peer-set-sids*
                  |        +--ro weight?         weight
                  |        +--ro (sid-label-index)?
                  |           +--:(local-label-case)
                  |           |  +--ro local-label?    netc:mpls-label
                  |           +--:(ipv6-address-case)
                  |           |  +--ro ipv6-address?   inet:ipv6-address
                  |           +--:(sid-case)
                  |              +--ro sid?            uint32
                  +--:(prefix-attributes-case)
                  |  +--ro prefix-attributes
                  |     +--ro igp-bits
                  |     |  x--ro up-down?               bits
                  |     |  +--ro is-is-up-down?         boolean
                  |     |  +--ro ospf-no-unicast?       boolean
                  |     |  +--ro ospf-local-address?    boolean
                  |     |  +--ro ospf-propagate-nssa?   boolean
                  |     +--ro route-tags*                route-tag
                  |     +--ro extended-tags*             extended-route-tag
                  |     +--ro prefix-metric?             netc:igp-metric
                  |     +--ro ospf-forwarding-address?   inet:ip-address
                  |     +--ro sr-prefix
                  |     |  +--ro (flags)?
                  |     |  |  +--:(isis-prefix-flags-case)
                  |     |  |  |  +--ro no-php?            boolean
                  |     |  |  |  +--ro explicit-null?     boolean
                  |     |  |  |  +--ro readvertisement?   boolean
                  |     |  |  |  +--ro node-sid?          boolean
                  |     |  |  +--:(ospf-prefix-flags-case)
                  |     |  |     +--ro no-php?            boolean
                  |     |  |     +--ro explicit-null?     boolean
                  |     |  |     +--ro mapping-server?    boolean
                  |     |  +--ro algorithm?         algorithm
                  |     |  +--ro (sid-label-index)?
                  |     |     +--:(local-label-case)
                  |     |     |  +--ro local-label?       netc:mpls-label
                  |     |     +--:(ipv6-address-case)
                  |     |     |  +--ro ipv6-address?      inet:ipv6-address
                  |     |     +--:(sid-case)
                  |     |        +--ro sid?               uint32
                  |     +--ro ipv6-sr-prefix
                  |     |  +--ro algorithm?   algorithm
                  |     +--ro sr-range
                  |     |  +--ro inter-area?   boolean
                  |     |  +--ro range-size?   uint16
                  |     |  +--ro sub-tlvs*
                  |     |     +--ro (range-sub-tlv)?
                  |     |        +--:(binding-sid-tlv-case)
                  |     |        |  +--ro weight?                weight
                  |     |        |  +--ro (flags)?
                  |     |        |  |  +--:(isis-binding-flags-case)
                  |     |        |  |  |  +--ro address-family?        boolean
                  |     |        |  |  |  +--ro mirror-context?        boolean
                  |     |        |  |  |  +--ro spread-tlv?            boolean
                  |     |        |  |  |  +--ro leaked-from-level-2?   boolean
                  |     |        |  |  |  +--ro attached-flag?         boolean
                  |     |        |  |  +--:(ospf-binding-flags-case)
                  |     |        |  |     +--ro mirroring?             boolean
                  |     |        |  +--ro binding-sub-tlvs*
                  |     |        |     +--ro (binding-sub-tlv)?
                  |     |        |        +--:(prefix-sid-case)
                  |     |        |        |  +--ro (flags)?
                  |     |        |        |  |  +--:(isis-prefix-flags-case)
                  |     |        |        |  |  |  +--ro no-php?            boolean
                  |     |        |        |  |  |  +--ro explicit-null?     boolean
                  |     |        |        |  |  |  +--ro readvertisement?   boolean
                  |     |        |        |  |  |  +--ro node-sid?          boolean
                  |     |        |        |  |  +--:(ospf-prefix-flags-case)
                  |     |        |        |  |     +--ro no-php?            boolean
                  |     |        |        |  |     +--ro explicit-null?     boolean
                  |     |        |        |  |     +--ro mapping-server?    boolean
                  |     |        |        |  +--ro algorithm?         algorithm
                  |     |        |        |  +--ro (sid-label-index)?
                  |     |        |        |     +--:(local-label-case)
                  |     |        |        |     |  +--ro local-label?       netc:mpls-label
                  |     |        |        |     +--:(ipv6-address-case)
                  |     |        |        |     |  +--ro ipv6-address?      inet:ipv6-address
                  |     |        |        |     +--:(sid-case)
                  |     |        |        |        +--ro sid?               uint32
                  |     |        |        +--:(ipv6-prefix-sid-case)
                  |     |        |        |  +--ro algorithm?         algorithm
                  |     |        |        +--:(sid-label-case)
                  |     |        |        |  +--ro (sid-label-index)?
                  |     |        |        |     +--:(local-label-case)
                  |     |        |        |     |  +--ro local-label?       netc:mpls-label
                  |     |        |        |     +--:(ipv6-address-case)
                  |     |        |        |     |  +--ro ipv6-address?      inet:ipv6-address
                  |     |        |        |     +--:(sid-case)
                  |     |        |        |        +--ro sid?               uint32
                  |     |        |        +--:(ero-metric-case)
                  |     |        |        |  +--ro ero-metric?        netc:te-metric
                  |     |        |        +--:(ipv4-ero-case)
                  |     |        |        |  +--ro loose?             boolean
                  |     |        |        |  +--ro address            inet:ipv4-address
                  |     |        |        +--:(ipv6-ero-case)
                  |     |        |        |  +--ro loose?             boolean
                  |     |        |        |  +--ro address            inet:ipv6-address
                  |     |        |        +--:(unnumbered-interface-id-ero-case)
                  |     |        |        |  +--ro loose?             boolean
                  |     |        |        |  +--ro router-id?         uint32
                  |     |        |        |  +--ro interface-id?      uint32
                  |     |        |        +--:(ipv4-ero-backup-case)
                  |     |        |        |  +--ro loose?             boolean
                  |     |        |        |  +--ro address            inet:ipv4-address
                  |     |        |        +--:(ipv6-ero-backup-case)
                  |     |        |        |  +--ro loose?             boolean
                  |     |        |        |  +--ro address            inet:ipv6-address
                  |     |        |        +--:(unnumbered-interface-id-backup-ero-case)
                  |     |        |           +--ro loose?             boolean
                  |     |        |           +--ro router-id?         uint32
                  |     |        |           +--ro interface-id?      uint32
                  |     |        +--:(prefix-sid-tlv-case)
                  |     |        |  +--ro (flags)?
                  |     |        |  |  +--:(isis-prefix-flags-case)
                  |     |        |  |  |  +--ro no-php?                boolean
                  |     |        |  |  |  +--ro explicit-null?         boolean
                  |     |        |  |  |  +--ro readvertisement?       boolean
                  |     |        |  |  |  +--ro node-sid?              boolean
                  |     |        |  |  +--:(ospf-prefix-flags-case)
                  |     |        |  |     +--ro no-php?                boolean
                  |     |        |  |     +--ro explicit-null?         boolean
                  |     |        |  |     +--ro mapping-server?        boolean
                  |     |        |  +--ro algorithm?             algorithm
                  |     |        |  +--ro (sid-label-index)?
                  |     |        |     +--:(local-label-case)
                  |     |        |     |  +--ro local-label?           netc:mpls-label
                  |     |        |     +--:(ipv6-address-case)
                  |     |        |     |  +--ro ipv6-address?          inet:ipv6-address
                  |     |        |     +--:(sid-case)
                  |     |        |        +--ro sid?                   uint32
                  |     |        +--:(ipv6-prefix-sid-tlv-case)
                  |     |        |  +--ro algorithm?             algorithm
                  |     |        +--:(sid-label-tlv-case)
                  |     |           +--ro (sid-label-index)?
                  |     |              +--:(local-label-case)
                  |     |              |  +--ro local-label?           netc:mpls-label
                  |     |              +--:(ipv6-address-case)
                  |     |              |  +--ro ipv6-address?          inet:ipv6-address
                  |     |              +--:(sid-case)
                  |     |                 +--ro sid?                   uint32
                  |     +--ro sr-binding-sid-labels*
                  |        +--ro weight?                weight
                  |        +--ro (flags)?
                  |        |  +--:(isis-binding-flags-case)
                  |        |  |  +--ro address-family?        boolean
                  |        |  |  +--ro mirror-context?        boolean
                  |        |  |  +--ro spread-tlv?            boolean
                  |        |  |  +--ro leaked-from-level-2?   boolean
                  |        |  |  +--ro attached-flag?         boolean
                  |        |  +--:(ospf-binding-flags-case)
                  |        |     +--ro mirroring?             boolean
                  |        +--ro binding-sub-tlvs*
                  |           +--ro (binding-sub-tlv)?
                  |              +--:(prefix-sid-case)
                  |              |  +--ro (flags)?
                  |              |  |  +--:(isis-prefix-flags-case)
                  |              |  |  |  +--ro no-php?            boolean
                  |              |  |  |  +--ro explicit-null?     boolean
                  |              |  |  |  +--ro readvertisement?   boolean
                  |              |  |  |  +--ro node-sid?          boolean
                  |              |  |  +--:(ospf-prefix-flags-case)
                  |              |  |     +--ro no-php?            boolean
                  |              |  |     +--ro explicit-null?     boolean
                  |              |  |     +--ro mapping-server?    boolean
                  |              |  +--ro algorithm?         algorithm
                  |              |  +--ro (sid-label-index)?
                  |              |     +--:(local-label-case)
                  |              |     |  +--ro local-label?       netc:mpls-label
                  |              |     +--:(ipv6-address-case)
                  |              |     |  +--ro ipv6-address?      inet:ipv6-address
                  |              |     +--:(sid-case)
                  |              |        +--ro sid?               uint32
                  |              +--:(ipv6-prefix-sid-case)
                  |              |  +--ro algorithm?         algorithm
                  |              +--:(sid-label-case)
                  |              |  +--ro (sid-label-index)?
                  |              |     +--:(local-label-case)
                  |              |     |  +--ro local-label?       netc:mpls-label
                  |              |     +--:(ipv6-address-case)
                  |              |     |  +--ro ipv6-address?      inet:ipv6-address
                  |              |     +--:(sid-case)
                  |              |        +--ro sid?               uint32
                  |              +--:(ero-metric-case)
                  |              |  +--ro ero-metric?        netc:te-metric
                  |              +--:(ipv4-ero-case)
                  |              |  +--ro loose?             boolean
                  |              |  +--ro address            inet:ipv4-address
                  |              +--:(ipv6-ero-case)
                  |              |  +--ro loose?             boolean
                  |              |  +--ro address            inet:ipv6-address
                  |              +--:(unnumbered-interface-id-ero-case)
                  |              |  +--ro loose?             boolean
                  |              |  +--ro router-id?         uint32
                  |              |  +--ro interface-id?      uint32
                  |              +--:(ipv4-ero-backup-case)
                  |              |  +--ro loose?             boolean
                  |              |  +--ro address            inet:ipv4-address
                  |              +--:(ipv6-ero-backup-case)
                  |              |  +--ro loose?             boolean
                  |              |  +--ro address            inet:ipv6-address
                  |              +--:(unnumbered-interface-id-backup-ero-case)
                  |                 +--ro loose?             boolean
                  |                 +--ro router-id?         uint32
                  |                 +--ro interface-id?      uint32
                  x--:(te-lsp-attributes-case)
                     +--ro te-lsp-attributes


Usage
^^^^^
The Link-State table in a instance of the speaker's Loc-RIB can be verified via REST:

**URL:** ``/restconf/operational/bgp-rib:bgp-rib/rib/bgp-example/loc-rib/tables/bgp-linkstate:linkstate-address-family/bgp-linkstate:linkstate-subsequent-address-family/linkstate-routes``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <linkstate-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-linkstate">
      ...
   </linkstate-routes>

.. note:: Link-State routes mapping to topology links/nodes/prefixes is supported by BGP Topology Provider.

References
^^^^^^^^^^
* `North-Bound Distribution of Link-State and Traffic Engineering (TE) Information Using BGP <https://tools.ietf.org/html/rfc7752>`_
* `BGP Link-State extensions for Segment Routing <https://tools.ietf.org/html/draft-gredler-idr-bgp-ls-segment-routing-ext-03>`_
* `Segment Routing BGP Egress Peer Engineering BGP-LS Extensions <https://tools.ietf.org/html/draft-ietf-idr-bgpls-segment-routing-epe-05>`_
* `BGP Link-State Information Distribution Implementation Report <https://tools.ietf.org/html/draft-ietf-idr-ls-distribution-impl-04>`_
