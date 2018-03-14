.. _pcep-user-guide-active-stateful-pce:

Active Stateful PCE
===================
The PCEP extension for Stateful PCE brings a visibility of active LSPs to PCE, in order to optimize path computation, while considering individual LSPs and their interactions.
This requires state synchronization mechanism between PCE and PCC.
Moreover, Active Stateful PCE is capable to address LSP parameter changes to the PCC.

.. contents:: Contents
   :depth: 2
   :local:

Configuration
^^^^^^^^^^^^^
This capability is enabled by default. No additional configuration is required.

Speaker Entity identifier
'''''''''''''''''''''''''
The Speaker Entity Identifier is an optional
TLV that may be included in the OPEN Object when a PCEP speaker
wishes to determine if state synchronization can be skipped when a
PCEP session is restarted.

**URL:** ``/restconf/config/network-topology:network-topology/topology/pcep-topology/node/43.43.43.43``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,4


    <node xmlns="urn:TBD:params:xml:ns:yang:network-topology">
        <node-id>43.43.43.43</node-id>
        <session-config xmlns="urn:opendaylight:params:xml:ns:yang:topology:pcep:config">
            <speaker-entity-id-value xmlns="urn:opendaylight:params:xml:ns:yang:topology:pcep:sync:optimizations:config">AQIDBA==</speaker-entity-id-value>
        </session-config>
    </node>

@line 2: **address** - A PCC IP address.

@line 4: **Speaker Entity Identifier** - The Speaker Entity identifier assigned to PCEP Node.

MD5 authentication configuration
''''''''''''''''''''''''''''''''
The OpenDaylight PCEP implementation supports TCP MD5 for authentication.
The sample configuration below shows how to set authentication password for a particular PCC.

**URL:** ``/restconf/config/network-topology:network-topology/topology/pcep-topology/node/43.43.43.43``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,4


    <node xmlns="urn:TBD:params:xml:ns:yang:network-topology">
        <node-id>43.43.43.43</node-id>
        <session-config xmlns="urn:opendaylight:params:xml:ns:yang:topology:pcep:config">
            <password>topsecret</password>
        </session-config>
    </node>

@line 2: **address** - A PCC IP address.

@line 4: **password** - MD5 authentication phrase.

LSP State Database
^^^^^^^^^^^^^^^^^^
The *LSP State Database* (LSP-DB) contains an information about all LSPs and their attributes.
The LSP state is synchronized between the PCC and PCE.
First, initial LSP state synchronization is performed once the session between PCC and PCE is established in order to learn PCC's LPSs.
This step is a prerequisite to following LSPs manipulation operations.


.. figure:: ./images/pcep-sync.png
   :align: center
   :alt: LSP State synchronization

   LSP State Synchronization.

LSP-DB API
''''''''''

.. code-block:: console

   path-computation-client
      +--ro reported-lsp* [name]
         +--ro name        string
         +--ro path* [lsp-id]
         |  +--ro lsp-id                      rsvp:lsp-id
         |  +--ro ero
         |  |  +--ro processing-rule?   boolean
         |  |  +--ro ignore?            boolean
         |  |  +--ro subobject*
         |  |     +--ro loose         boolean
         |  |     +--ro (subobject-type)?
         |  |        +--:(as-number-case)
         |  |        |  +--ro as-number
         |  |        |     +--ro as-number    inet:as-number
         |  |        +--:(ip-prefix-case)
         |  |        |  +--ro ip-prefix
         |  |        |     +--ro ip-prefix    inet:ip-prefix
         |  |        +--:(label-case)
         |  |        |  +--ro label
         |  |        |     +--ro uni-directional             boolean
         |  |        |     +--ro (label-type)?
         |  |        |        +--:(type1-label-case)
         |  |        |        |  +--ro type1-label
         |  |        |        |     +--ro type1-label    uint32
         |  |        |        +--:(generalized-label-case)
         |  |        |        |  +--ro generalized-label
         |  |        |        |     +--ro generalized-label    binary
         |  |        |        +--:(waveband-switching-label-case)
         |  |        |           +--ro waveband-switching-label
         |  |        |              +--ro end-label      uint32
         |  |        |              +--ro start-label    uint32
         |  |        |              +--ro waveband-id    uint32
         |  |        +--:(srlg-case)
         |  |        |  +--ro srlg
         |  |        |     +--ro srlg-id    srlg-id
         |  |        +--:(unnumbered-case)
         |  |        |  +--ro unnumbered
         |  |        |     +--ro router-id       uint32
         |  |        |     +--ro interface-id    uint32
         |  |        +--:(exrs-case)
         |  |        |  +--ro exrs
         |  |        |     +--ro exrs*
         |  |        |        +--ro mandatory?    boolean
         |  |        |        +--ro attribute     enumeration
         |  |        |        +--ro (subobject-type)?
         |  |        |           +--:(as-number-case)
         |  |        |           |  +--ro as-number
         |  |        |           |     +--ro as-number    inet:as-number
         |  |        |           +--:(ip-prefix-case)
         |  |        |           |  +--ro ip-prefix
         |  |        |           |     +--ro ip-prefix    inet:ip-prefix
         |  |        |           +--:(label-case)
         |  |        |           |  +--ro label
         |  |        |           |     +--ro uni-directional             boolean
         |  |        |           |     +--ro (label-type)?
         |  |        |           |        +--:(type1-label-case)
         |  |        |           |        |  +--ro type1-label
         |  |        |           |        |     +--ro type1-label    uint32
         |  |        |           |        +--:(generalized-label-case)
         |  |        |           |        |  +--ro generalized-label
         |  |        |           |        |     +--ro generalized-label    binary
         |  |        |           |        +--:(waveband-switching-label-case)
         |  |        |           |           +--ro waveband-switching-label
         |  |        |           |              +--ro end-label      uint32
         |  |        |           |              +--ro start-label    uint32
         |  |        |           |              +--ro waveband-id    uint32
         |  |        |           +--:(srlg-case)
         |  |        |           |  +--ro srlg
         |  |        |           |     +--ro srlg-id    srlg-id
         |  |        |           +--:(unnumbered-case)
         |  |        |              +--ro unnumbered
         |  |        |                 +--ro router-id       uint32
         |  |        |                 +--ro interface-id    uint32
         |  |        +--:(path-key-case)
         |  |           +--ro path-key
         |  |              +--ro pce-id      pce-id
         |  |              +--ro path-key    path-key
         |  +--ro lspa
         |  |  +--ro processing-rule?            boolean
         |  |  +--ro ignore?                     boolean
         |  |  +--ro hold-priority?              uint8
         |  |  +--ro setup-priority?             uint8
         |  |  +--ro local-protection-desired?   boolean
         |  |  +--ro label-recording-desired?    boolean
         |  |  +--ro se-style-desired?           boolean
         |  |  +--ro session-name?               string
         |  |  +--ro include-any?                attribute-filter
         |  |  +--ro exclude-any?                attribute-filter
         |  |  +--ro include-all?                attribute-filter
         |  |  +--ro tlvs
         |  |     +--ro vendor-information-tlv*
         |  |        +--ro enterprise-number?   iana:enterprise-number
         |  |        +--ro (enterprise-specific-information)?
         |  +--ro bandwidth
         |  |  +--ro processing-rule?   boolean
         |  |  +--ro ignore?            boolean
         |  |  +--ro bandwidth?         netc:bandwidth
         |  +--ro reoptimization-bandwidth
         |  |  +--ro processing-rule?   boolean
         |  |  +--ro ignore?            boolean
         |  |  +--ro bandwidth?         netc:bandwidth
         |  +--ro metrics*
         |  |  +--ro metric
         |  |     +--ro processing-rule?   boolean
         |  |     +--ro ignore?            boolean
         |  |     +--ro metric-type        uint8
         |  |     +--ro bound?             boolean
         |  |     +--ro computed?          boolean
         |  |     +--ro value?             ieee754:float32
         |  +--ro iro
         |  |  +--ro processing-rule?   boolean
         |  |  +--ro ignore?            boolean
         |  |  +--ro subobject*
         |  |     +--ro loose         boolean
         |  |     +--ro (subobject-type)?
         |  |        +--:(as-number-case)
         |  |        |  +--ro as-number
         |  |        |     +--ro as-number    inet:as-number
         |  |        +--:(ip-prefix-case)
         |  |        |  +--ro ip-prefix
         |  |        |     +--ro ip-prefix    inet:ip-prefix
         |  |        +--:(label-case)
         |  |        |  +--ro label
         |  |        |     +--ro uni-directional             boolean
         |  |        |     +--ro (label-type)?
         |  |        |        +--:(type1-label-case)
         |  |        |        |  +--ro type1-label
         |  |        |        |     +--ro type1-label    uint32
         |  |        |        +--:(generalized-label-case)
         |  |        |        |  +--ro generalized-label
         |  |        |        |     +--ro generalized-label    binary
         |  |        |        +--:(waveband-switching-label-case)
         |  |        |           +--ro waveband-switching-label
         |  |        |              +--ro end-label      uint32
         |  |        |              +--ro start-label    uint32
         |  |        |              +--ro waveband-id    uint32
         |  |        +--:(srlg-case)
         |  |        |  +--ro srlg
         |  |        |     +--ro srlg-id    srlg-id
         |  |        +--:(unnumbered-case)
         |  |        |  +--ro unnumbered
         |  |        |     +--ro router-id       uint32
         |  |        |     +--ro interface-id    uint32
         |  |        +--:(exrs-case)
         |  |        |  +--ro exrs
         |  |        |     +--ro exrs*
         |  |        |        +--ro mandatory?    boolean
         |  |        |        +--ro attribute     enumeration
         |  |        |        +--ro (subobject-type)?
         |  |        |           +--:(as-number-case)
         |  |        |           |  +--ro as-number
         |  |        |           |     +--ro as-number    inet:as-number
         |  |        |           +--:(ip-prefix-case)
         |  |        |           |  +--ro ip-prefix
         |  |        |           |     +--ro ip-prefix    inet:ip-prefix
         |  |        |           +--:(label-case)
         |  |        |           |  +--ro label
         |  |        |           |     +--ro uni-directional             boolean
         |  |        |           |     +--ro (label-type)?
         |  |        |           |        +--:(type1-label-case)
         |  |        |           |        |  +--ro type1-label
         |  |        |           |        |     +--ro type1-label    uint32
         |  |        |           |        +--:(generalized-label-case)
         |  |        |           |        |  +--ro generalized-label
         |  |        |           |        |     +--ro generalized-label    binary
         |  |        |           |        +--:(waveband-switching-label-case)
         |  |        |           |           +--ro waveband-switching-label
         |  |        |           |              +--ro end-label      uint32
         |  |        |           |              +--ro start-label    uint32
         |  |        |           |              +--ro waveband-id    uint32
         |  |        |           +--:(srlg-case)
         |  |        |           |  +--ro srlg
         |  |        |           |     +--ro srlg-id    srlg-id
         |  |        |           +--:(unnumbered-case)
         |  |        |              +--ro unnumbered
         |  |        |                 +--ro router-id       uint32
         |  |        |                 +--ro interface-id    uint32
         |  |        +--:(path-key-case)
         |  |           +--ro path-key
         |  |              +--ro pce-id      pce-id
         |  |              +--ro path-key    path-key
         |  +--ro rro
         |  |  +--ro processing-rule?   boolean
         |  |  +--ro ignore?            boolean
         |  |  +--ro subobject*
         |  |     +--ro protection-available?   boolean
         |  |     +--ro protection-in-use?      boolean
         |  |     +--ro (subobject-type)?
         |  |        +--:(ip-prefix-case)
         |  |        |  +--ro ip-prefix
         |  |        |     +--ro ip-prefix    inet:ip-prefix
         |  |        +--:(label-case)
         |  |        |  +--ro label
         |  |        |     +--ro uni-directional             boolean
         |  |        |     +--ro (label-type)?
         |  |        |     |  +--:(type1-label-case)
         |  |        |     |  |  +--ro type1-label
         |  |        |     |  |     +--ro type1-label    uint32
         |  |        |     |  +--:(generalized-label-case)
         |  |        |     |  |  +--ro generalized-label
         |  |        |     |  |     +--ro generalized-label    binary
         |  |        |     |  +--:(waveband-switching-label-case)
         |  |        |     |     +--ro waveband-switching-label
         |  |        |     |        +--ro end-label      uint32
         |  |        |     |        +--ro start-label    uint32
         |  |        |     |        +--ro waveband-id    uint32
         |  |        |     +--ro global?                     boolean
         |  |        +--:(unnumbered-case)
         |  |        |  +--ro unnumbered
         |  |        |     +--ro router-id       uint32
         |  |        |     +--ro interface-id    uint32
         |  |        +--:(path-key-case)
         |  |           +--ro path-key
         |  |              +--ro pce-id      pce-id
         |  |              +--ro path-key    path-key
         |  +--ro xro
         |  |  +--ro processing-rule?   boolean
         |  |  +--ro ignore?            boolean
         |  |  +--ro flags              bits
         |  |  +--ro subobject*
         |  |     +--ro mandatory?    boolean
         |  |     +--ro attribute     enumeration
         |  |     +--ro (subobject-type)?
         |  |        +--:(as-number-case)
         |  |        |  +--ro as-number
         |  |        |     +--ro as-number    inet:as-number
         |  |        +--:(ip-prefix-case)
         |  |        |  +--ro ip-prefix
         |  |        |     +--ro ip-prefix    inet:ip-prefix
         |  |        +--:(label-case)
         |  |        |  +--ro label
         |  |        |     +--ro uni-directional             boolean
         |  |        |     +--ro (label-type)?
         |  |        |        +--:(type1-label-case)
         |  |        |        |  +--ro type1-label
         |  |        |        |     +--ro type1-label    uint32
         |  |        |        +--:(generalized-label-case)
         |  |        |        |  +--ro generalized-label
         |  |        |        |     +--ro generalized-label    binary
         |  |        |        +--:(waveband-switching-label-case)
         |  |        |           +--ro waveband-switching-label
         |  |        |              +--ro end-label      uint32
         |  |        |              +--ro start-label    uint32
         |  |        |              +--ro waveband-id    uint32
         |  |        +--:(srlg-case)
         |  |        |  +--ro srlg
         |  |        |     +--ro srlg-id    srlg-id
         |  |        +--:(unnumbered-case)
         |  |           +--ro unnumbered
         |  |              +--ro router-id       uint32
         |  |              +--ro interface-id    uint32
         |  +--ro of
         |  |  +--ro processing-rule?   boolean
         |  |  +--ro ignore?            boolean
         |  |  +--ro code               of-id
         |  |  +--ro tlvs
         |  |     +--ro vendor-information-tlv*
         |  |        +--ro enterprise-number?   iana:enterprise-number
         |  |        +--ro (enterprise-specific-information)?
         |  +--ro class-type
         |     +--ro processing-rule?   boolean
         |     +--ro ignore?            boolean
         |     +--ro class-type         class-type
         +--ro metadata
         +--ro lsp
         |  +--ro processing-rule?   boolean
         |  +--ro ignore?            boolean
         |  +--ro tlvs
         |  |  +--ro lsp-error-code
         |  |  |  +--ro error-code?   uint32
         |  |  +--ro lsp-identifiers
         |  |  |  +--ro lsp-id?      rsvp:lsp-id
         |  |  |  +--ro tunnel-id?   rsvp:tunnel-id
         |  |  |  +--ro (address-family)?
         |  |  |     +--:(ipv4-case)
         |  |  |     |  +--ro ipv4
         |  |  |     |     +--ro ipv4-tunnel-sender-address      inet:ipv4-address
         |  |  |     |     +--ro ipv4-extended-tunnel-id         rsvp:ipv4-extended-tunnel-id
         |  |  |     |     +--ro ipv4-tunnel-endpoint-address    inet:ipv4-address
         |  |  |     +--:(ipv6-case)
         |  |  |        +--ro ipv6
         |  |  |           +--ro ipv6-tunnel-sender-address      inet:ipv6-address
         |  |  |           +--ro ipv6-extended-tunnel-id         rsvp:ipv6-extended-tunnel-id
         |  |  |           +--ro ipv6-tunnel-endpoint-address    inet:ipv6-address
         |  |  +--ro rsvp-error-spec
         |  |  |  +--ro (error-type)?
         |  |  |     +--:(rsvp-case)
         |  |  |     |  +--ro rsvp-error
         |  |  |     +--:(user-case)
         |  |  |        +--ro user-error
         |  |  +--ro symbolic-path-name
         |  |  |  +--ro path-name?   symbolic-path-name
         |  |  o--ro vs-tlv
         |  |  |  +--ro enterprise-number?   iana:enterprise-number
         |  |  |  +--ro (vendor-payload)?
         |  |  +--ro vendor-information-tlv*
         |  |  |  +--ro enterprise-number?   iana:enterprise-number
         |  |  |  +--ro (enterprise-specific-information)?
         |  |  +--ro path-binding
         |  |     x--ro binding-type?      uint8
         |  |     x--ro binding-value?     binary
         |  |     +--ro (binding-type-value)?
         |  |        +--:(mpls-label)
         |  |        |  +--ro mpls-label?        netc:mpls-label
         |  |        +--:(mpls-label-entry)
         |  |           +--ro label?             netc:mpls-label
         |  |           +--ro traffic-class?     uint8
         |  |           +--ro bottom-of-stack?   boolean
         |  |           +--ro time-to-live?      uint8
         |  +--ro plsp-id?           plsp-id
         |  +--ro delegate?          boolean
         |  +--ro sync?              boolean
         |  +--ro remove?            boolean
         |  +--ro administrative?    boolean
         |  +--ro operational?       operational-status
         +--ro path-setup-type
            +--ro pst?   uint8

-----

The LSP-DB is accessible via RESTCONF.
The PCC's LSPs are stored in the ``pcep-topology`` while the session is active.
In a next example, there is one PCEP session with PCC identified by its IP address (*43.43.43.43*) and one reported LSP (*foo*).

**URL:** ``/restconf/operational/network-topology:network-topology/topology/pcep-topology/node/pcc:%2F%2F43.43.43.43``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,4,5,8,12,14,15,16,17,18,20,24,25,26,28,29,32,36

   <node>
      <node-id>pcc://43.43.43.43</node-id>
      <path-computation-client>
         <ip-address>43.43.43.43</ip-address>
         <state-sync>synchronized</state-sync>
         <stateful-tlv>
            <stateful>
               <lsp-update-capability>true</lsp-update-capability>
            </stateful>
         </stateful-tlv>
         <reported-lsp>
            <name>foo</name>
            <lsp>
               <operational>up</operational>
               <sync>true</sync>
               <plsp-id>1</plsp-id>
               <create>false</create>
               <administrative>true</administrative>
               <remove>false</remove>
               <delegate>true</delegate>
               <tlvs>
                  <lsp-identifiers>
                     <ipv4>
                        <ipv4-tunnel-sender-address>43.43.43.43</ipv4-tunnel-sender-address>
                        <ipv4-tunnel-endpoint-address>39.39.39.39</ipv4-tunnel-endpoint-address>
                        <ipv4-extended-tunnel-id>39.39.39.39</ipv4-extended-tunnel-id>
                     </ipv4>
                     <tunnel-id>1</tunnel-id>
                     <lsp-id>1</lsp-id>
                  </lsp-identifiers>
                  <symbolic-path-name>
                     <path-name>Zm9v</path-name>
                  </symbolic-path-name>
               </tlvs>
            </lsp>
            <ero>
               <subobject>
                  <loose>false</loose>
                  <ip-prefix>
                     <ip-prefix>201.20.160.40/32</ip-prefix>
                  </ip-prefix>
               </subobject>
               <subobject>
                  <loose>false</loose>
                  <ip-prefix>
                     <ip-prefix>195.20.160.39/32</ip-prefix>
                  </ip-prefix>
               </subobject>
               <subobject>
                  <loose>false</loose>
                  <ip-prefix>
                     <ip-prefix>39.39.39.39/32</ip-prefix>
                  </ip-prefix>
               </subobject>
            </ero>
         </reported-lsp>
      </path-computation-client>
   </node>

@line 2: **node-id** The PCC identifier.

@line 4: **ip-address** IP address of the PCC.

@line 5: **state-sync** Synchronization status of the PCC's LSPs. The *synchronized* indicates the State Synchronization is done.

@line 8: **lsp-update-capability** - Indicates that PCC allows LSP modifications.

@line 12: **name** - Textual representation of LPS's name.

@line 14: **operational** - Represent operational status of the LSP:

   * *down* - not active.
   * *up* - signaled.
   * *active* - up and carrying traffic.
   * *going-down* - LSP is being torn down, resources are being released.
   * *going-up* - LSP is being signaled.

@line 15: **sync** - The flag set by PCC during LSPs State Synchronization.

@line 16: **plsp-id** - A PCEP-specific identifier for the LSP. It is assigned by PCC and it is constant for a lifetime of a PCEP session.

@line 17: **create** - The *false* indicates that LSP is PCC-initiated.

@line 18: **administrative** - The flag indicates target operational status of the LSP.

@line 20: **delegate** - The delegate flag indicates that the PCC is delegating the LSP to the PCE.

@line 24: **ipv4-tunnel-sender-address** - Contains the sender node's IP address.

@line 25: **ipv4-tunnel-endpoint-address** - Contains the egress node's IP address.

@line 26: **ipv4-extended-tunnel-id** - The *Extended Tunnel ID* identifier.

@line 28: **tunnel-id** - The *Tunnel ID* identifier.

@line 29: **lsp-id** - The *LSP ID* identifier.

@line 32: **path-name** - The symbolic name for the LSP.

@line 36: **ero** - The *Explicit Route Object* is encoding the path of the TE LSP through the network.

LSP Delegation
''''''''''''''
The LSP control delegations is an mechanism, where PCC grants to a PCE the temporary right in order to modify LSP attributes.
The PCC can revoke the delegation or the PCE may waive the delegation at any time.
The LSP control is delegated to at most one PCE at the same time.

.. figure:: ./images/pcep-delegation-return.png
   :align: center
   :alt: Returning a Delegation

   Returning a Delegation.

-----

Following RPC example illustrates a request for the LSP delegation give up:

**URL:** ``/restconf/operations/network-topology-pcep:update-lsp``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,3,6,10

   <input>
      <node>pcc://43.43.43.43</node>
      <name>foo</name>
      <arguments>
         <lsp xmlns:stateful="urn:opendaylight:params:xml:ns:yang:pcep:ietf:stateful">
            <delegate>false</delegate>
            <administrative>true</administrative>
            <tlvs>
               <symbolic-path-name>
                  <path-name>Zm9v</path-name>
               </symbolic-path-name>
            </tlvs>
         </lsp>
      </arguments>
      <network-topology-ref xmlns:topo="urn:TBD:params:xml:ns:yang:network-topology">/topo:network-topology/topo:topology[topo:topology-id="pcep-topology"]</network-topology-ref>
   </input>

@line 2: **node** The PCC identifier.

@line 3: **name** The name of the LSP.

@line 6: **delegate** - Delegation flag set *false* in order to return the LSP delegation.

@line 10: **path-name** - The Symbolic Path Name TLV must be present when sending a request to give up the delegation.

LSP Update
''''''''''
The LSP Update Request is an operation where a PCE requests a PCC to update attributes of an LSP and to rebuild the LSP with updated attributes.
In order to update LSP, the PCE must hold a LSP delegation.
The LSP update is done in *make-before-break* fashion - first, new LSP is initiated and then the old LSP is torn down.

.. figure:: ./images/pcep-update.png
   :align: center
   :alt: Active Stateful PCE LSP Update

   Active Stateful PCE LSP Update.

-----

Following RPC example shows a request for the LSP update:

**URL:** ``/restconf/operations/network-topology-pcep:update-lsp``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,3,6,7,9

   <input xmlns="urn:opendaylight:params:xml:ns:yang:topology:pcep">
      <node>pcc://43.43.43.43</node>
      <name>foo</name>
      <arguments>
         <lsp xmlns="urn:opendaylight:params:xml:ns:yang:pcep:ietf:stateful">
            <delegate>true</delegate>
            <administrative>true</administrative>
         </lsp>
         <ero>
            <subobject>
               <loose>false</loose>
               <ip-prefix>
                  <ip-prefix>200.20.160.41/32</ip-prefix>
               </ip-prefix>
            </subobject>
            <subobject>
               <loose>false</loose>
               <ip-prefix>
                  <ip-prefix>196.20.160.39/32</ip-prefix>
               </ip-prefix>
            </subobject>
            <subobject>
               <loose>false</loose>
               <ip-prefix>
                  <ip-prefix>39.39.39.39/32</ip-prefix>
               </ip-prefix>
            </subobject>
         </ero>
      </arguments>
      <network-topology-ref xmlns:topo="urn:TBD:params:xml:ns:yang:network-topology">/topo:network-topology/topo:topology[topo:topology-id="pcep-topology"]</network-topology-ref>
   </input>

@line 2: **node** The PCC identifier.

@line 3: **name** The name of the LSP to be updated.

@line 6: **delegate** - Delegation flag set *true* in order to keep the LSP control.

@line 7: **administrative** - Desired administrative status of the LSP is active.

@line 9: **ero** - This LSP attribute is changed.

PCE-initiated LSP Setup
^^^^^^^^^^^^^^^^^^^^^^^
The PCEP Extension for PCE-initiated LSP Setup allows PCE to request a creation and deletion of LSPs.

Configuration
'''''''''''''
This capability is enabled by default. No additional configuration is required.

LSP Instantiation
'''''''''''''''''
The PCE can request LSP creation.
The LSP instantiation is done by sending an LSP Initiate Message to PCC.
The PCC assign delegation to PCE which triggered creation.
PCE-initiated LSPs are identified by *Create* flag.

.. figure:: ./images/pcep-initiate.png
   :align: center
   :alt: LSP instantiation

   LSP instantiation.

-----

Following RPC example shows a request for the LSP initiation:

**URL:** ``/restconf/operations/network-topology-pcep:add-lsp``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,3,8,14

   <input xmlns="urn:opendaylight:params:xml:ns:yang:topology:pcep">
      <node>pcc://43.43.43.43</node>
      <name>update-tunel</name>
         <arguments>
            <lsp xmlns="urn:opendaylight:params:xml:ns:yang:pcep:ietf:stateful">
               <delegate>true</delegate>
               <administrative>true</administrative>
            </lsp>
            <endpoints-obj>
               <ipv4>
                  <source-ipv4-address>43.43.43.43</source-ipv4-address>
                  <destination-ipv4-address>39.39.39.39</destination-ipv4-address>
               </ipv4>
            </endpoints-obj>
            <ero>
               <subobject>
                  <loose>false</loose>
                  <ip-prefix>
                     <ip-prefix>201.20.160.40/32</ip-prefix>
                  </ip-prefix>
               </subobject>
               <subobject>
                  <loose>false</loose>
                  <ip-prefix>
                     <ip-prefix>195.20.160.39/32</ip-prefix>
                  </ip-prefix>
               </subobject>
               <subobject>
                  <loose>false</loose>
                  <ip-prefix>
                     <ip-prefix>39.39.39.39/32</ip-prefix>
                  </ip-prefix>
               </subobject>
            </ero>
         </arguments>
      <network-topology-ref xmlns:topo="urn:TBD:params:xml:ns:yang:network-topology">/topo:network-topology/topo:topology[topo:topology-id="pcep-topology"]</network-topology-ref>
   </input>

@line 2: **node** The PCC identifier.

@line 3: **name** The name of the LSP to be created.

@line 8: **endpoints-obj** - The *END-POINT* Object is mandatory for an instantiation request of an RSVP-signaled LSP. It contains source and destination addresses for provisioning the LSP.

@line 14: **ero** - The *ERO* object is mandatory for LSP initiation request.

LSP Deletion
''''''''''''
The PCE may request a deletion of PCE-initiated LSPs.
The PCE must be delegation holder for this particular LSP.

.. figure:: ./images/pcep-deletion.png
   :align: center
   :alt: LSP deletion.

   LSP deletion.

-----

Following RPC example shows a request for the LSP deletion:

**URL:** ``/restconf/operations/network-topology-pcep:remove-lsp``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,3

   <input xmlns="urn:opendaylight:params:xml:ns:yang:topology:pcep">
      <node>pcc://43.43.43.43</node>
      <name>update-tunel</name>
      <network-topology-ref xmlns:topo="urn:TBD:params:xml:ns:yang:network-topology">/topo:network-topology/topo:topology[topo:topology-id="pcep-topology"]</network-topology-ref>
   </input>

@line 2: **node** The PCC identifier.

@line 3: **name** The name of the LSP to be removed.

PCE-initiated LSP Delegation
''''''''''''''''''''''''''''
The PCE-initiated LSP control is delegated to the PCE which requested the initiation.
The PCC cannot revoke delegation of PCE-initiated LSP.
When PCE returns delegation for such LSP or PCE fails, then the LSP become orphan and can be removed by a PCC after some time.
The PCE may ask for a delegation of the orphan LSP.

.. figure:: ./images/pcep-revoke-delegation.png
   :align: center
   :alt: LSP re-delegation

   Orphan PCE-initiated LSP - control taken by PCE.

-----

Following RPC example illustrates a request for the LSP delegation:

**URL:** ``/restconf/operations/network-topology-pcep:update-lsp``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,3,6,10

   <input>
      <node>pcc://43.43.43.43</node>
      <name>update-tunel</name>
      <arguments>
         <lsp xmlns:stateful="urn:opendaylight:params:xml:ns:yang:pcep:ietf:stateful">
            <delegate>true</delegate>
            <administrative>true</administrative>
            <tlvs>
               <symbolic-path-name>
                  <path-name>dXBkYXRlLXR1bmVs</path-name>
               </symbolic-path-name>
            </tlvs>
         </lsp>
      </arguments>
      <network-topology-ref xmlns:topo="urn:TBD:params:xml:ns:yang:network-topology">/topo:network-topology/topo:topology[topo:topology-id="pcep-topology"]</network-topology-ref>
   </input>

@line 2: **node** The PCC identifier.

@line 3: **name** The name of the LSP.

@line 6: **delegate** - *Delegation* flag set *true* in order to take the LSP delegation.

@line 10: **path-name** - The *Symbolic Path Name* TLV must be present when sending a request to take a delegation.

Segment Routing
^^^^^^^^^^^^^^^
The PCEP Extensions for Segment Routing (SR) allow a stateful PCE to compute and initiate TE paths in SR networks.
The SR path is defined as an order list  of *segments*.
Segment Routing architecture can be directly applied to the MPLS forwarding plane without changes.
Segment Identifier (SID) is encoded as a MPLS label.

Configuration
'''''''''''''
This capability is enabled by default. In order to disable it, a configuration should be changed as follows:

**URL:** ``/restconf/config/pcep-segment-routing-app-config:pcep-segment-routing-app-config``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2

   <pcep-segment-routing-config xmlns="urn:opendaylight:params:xml:ns:yang:controller:pcep:segment-routing-app-config">
      <sr-capable>false</sr-capable>
   </pcep-segment-routing-config>

@line 2: **sr-capable** - True if capability is supported.

IANA code points
''''''''''''''''

In PCEP-SR draft version 6, SR Explicit Route Object/Record Route Object subobjects IANA code points change was proposed.
In order to use the latest code points, a configuration should be changed as follows:

**URL:** ``/restconf/config/pcep-segment-routing-app-config:pcep-segment-routing-config``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2

   <pcep-segment-routing-config xmlns="urn:opendaylight:params:xml:ns:yang:controller:pcep:segment-routing-app-config">
      <iana-sr-subobjects-type>true</iana-sr-subobjects-type>
   </pcep-segment-routing-config>

@line 2: **iana-sr-subobjects-type** - True if IANA code points should be used.

LSP Operations for PCEP SR
''''''''''''''''''''''''''
The PCEP SR extension defines new ERO subobject - *SR-ERO subobject* capable of carrying a SID.

.. code-block:: console

   sr-ero-type
      +---- c-flag?                boolean
      +---- m-flag?                boolean
      +---- sid-type?              sid-type
      +---- sid?                   uint32
      +---- (nai)?
         +--:(ip-node-id)
         |  +---- ip-address             inet:ip-address
         +--:(ip-adjacency)
         |  +---- local-ip-address       inet:ip-address
         |  +---- remote-ip-address      inet:ip-address
         +--:(unnumbered-adjacency)
            +---- local-node-id          uint32
            +---- local-interface-id     uint32
            +---- remote-node-id         uint32
            +---- remote-interface-id    uint32

-----

Following RPC example illustrates a request for the SR-TE LSP creation:

**URL:** ``/restconf/operations/network-topology-pcep:add-lsp``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 16,21,22,23

   <input xmlns="urn:opendaylight:params:xml:ns:yang:topology:pcep">
      <node>pcc://43.43.43.43</node>
      <name>sr-path</name>
      <arguments>
         <lsp xmlns="urn:opendaylight:params:xml:ns:yang:pcep:ietf:stateful">
            <delegate>true</delegate>
            <administrative>true</administrative>
         </lsp>
         <endpoints-obj>
            <ipv4>
               <source-ipv4-address>43.43.43.43</source-ipv4-address>
               <destination-ipv4-address>39.39.39.39</destination-ipv4-address>
            </ipv4>
         </endpoints-obj>
         <path-setup-type xmlns="urn:opendaylight:params:xml:ns:yang:pcep:ietf:stateful">
            <pst>1</pst>
         </path-setup-type>
         <ero>
            <subobject>
               <loose>false</loose>
               <sid-type xmlns="urn:opendaylight:params:xml:ns:yang:pcep:segment:routing">ipv4-node-id</sid-type>
               <m-flag xmlns="urn:opendaylight:params:xml:ns:yang:pcep:segment:routing">true</m-flag>
               <sid xmlns="urn:opendaylight:params:xml:ns:yang:pcep:segment:routing">24001</sid>
               <ip-address xmlns="urn:opendaylight:params:xml:ns:yang:pcep:segment:routing">39.39.39.39</ip-address>
           </subobject>
         </ero>
      </arguments>
      <network-topology-ref xmlns:topo="urn:TBD:params:xml:ns:yang:network-topology">/topo:network-topology/topo:topology[topo:topology-id="pcep-topology"]</network-topology-ref>
   </input>

@line 16: **path-setup-type** - Set *1* for SR-TE LSP

@line 21: **ipv4-node-id** - The SR-ERO subobject represents *IPv4 Node ID* NAI.

@line 22: **m-flag** - The SID value represents an MPLS label.

@line 23: **sid** - The Segment Identifier.

-----

Following RPC example illustrates a request for the SR-TE LSP update including modified path:

**URL:** ``/restconf/operations/network-topology-pcep:update-lsp``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:

   <input xmlns="urn:opendaylight:params:xml:ns:yang:topology:pcep">
      <node>pcc://43.43.43.43</node>
      <name>update-tunnel</name>
      <arguments>
         <lsp xmlns="urn:opendaylight:params:xml:ns:yang:pcep:ietf:stateful">
            <delegate>true</delegate>
            <administrative>true</administrative>
         </lsp>
         <path-setup-type xmlns="urn:opendaylight:params:xml:ns:yang:pcep:ietf:stateful">
            <pst>1</pst>
         </path-setup-type>
         <ero>
            <subobject>
               <loose>false</loose>
               <sid-type xmlns="urn:opendaylight:params:xml:ns:yang:pcep:segment:routing">ipv4-node-id</sid-type>
               <m-flag xmlns="urn:opendaylight:params:xml:ns:yang:pcep:segment:routing">true</m-flag>
               <sid xmlns="urn:opendaylight:params:xml:ns:yang:pcep:segment:routing">24002</sid>
               <ip-address xmlns="urn:opendaylight:params:xml:ns:yang:pcep:segment:routing">200.20.160.41</ip-address>
            </subobject>
            <subobject>
               <loose>false</loose>
               <sid-type xmlns="urn:opendaylight:params:xml:ns:yang:pcep:segment:routing">ipv4-node-id</sid-type>
               <m-flag xmlns="urn:opendaylight:params:xml:ns:yang:pcep:segment:routing">true</m-flag>
               <sid xmlns="urn:opendaylight:params:xml:ns:yang:pcep:segment:routing">24001</sid>
               <ip-address xmlns="urn:opendaylight:params:xml:ns:yang:pcep:segment:routing">39.39.39.39</ip-address>
            </subobject>
         </ero>
      </arguments>
      <network-topology-ref xmlns:topo="urn:TBD:params:xml:ns:yang:network-topology">/topo:network-topology/topo:topology[topo:topology-id="pcep-topology"]</network-topology-ref>
   </input>

LSP State Synchronization Optimization Procedures
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This extension bring optimizations for state synchronization:

* State Synchronization Avoidance
* Incremental State Synchronization
* PCE-triggered Initial Synchronization
* PCE-triggered Re-synchronization

Configuration
'''''''''''''
This capability is enabled by default. No additional configuration is required.

State Synchronization Avoidance
'''''''''''''''''''''''''''''''
The State Synchronization Avoidance procedure is intended to skip state synchronization if the state has survived and not changed during session restart.

.. figure:: ./images/pcep-sync-skipped.png
   :align: center
   :alt: Sync skipped

   State Synchronization Skipped.

Incremental State Synchronization
'''''''''''''''''''''''''''''''''
The Incremental State Synchronization procedure is intended to do incremental (delta) state synchronization when possible.

.. figure:: ./images/pcep-sync-incremental.png
   :align: center
   :alt: Sync incremental

   Incremental Synchronization Procedure.

PCE-triggered Initial Synchronization
'''''''''''''''''''''''''''''''''''''
The PCE-triggered Initial Synchronization procedure is intended to do let PCE control the timing of the initial state synchronization.

.. figure:: ./images/pcep-sync-initial.png
   :align: center
   :alt: Initial Sync

   PCE-triggered Initial State Synchronization Procedure.

-----

Following RPC example illustrates a request for the initial synchronization:

**URL:** ``/restconf/operations/network-topology-pcep:trigger-sync``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:

   <input xmlns="urn:opendaylight:params:xml:ns:yang:topology:pcep">
      <node>pcc://43.43.43.43</node>
      <network-topology-ref xmlns:topo="urn:TBD:params:xml:ns:yang:network-topology">/topo:network-topology/topo:topology[topo:topology-id="pcep-topology"]</network-topology-ref>
   </input>

PCE-triggered Re-synchronization
''''''''''''''''''''''''''''''''
The PCE-triggered Re-synchronization: To let PCE re-synchronize the state for sanity check.

.. figure:: ./images/pcep-re-sync.png
   :align: center
   :alt: Re-sync

   PCE-triggered Re-synchronization Procedure.

-----

Following RPC example illustrates a request for the LSP re-synchronization:

**URL:** ``/restconf/operations/network-topology-pcep:trigger-sync``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3

   <input xmlns="urn:opendaylight:params:xml:ns:yang:topology:pcep">
      <node>pcc://43.43.43.43</node>
      <name>update-lsp</name>
      <network-topology-ref xmlns:topo="urn:TBD:params:xml:ns:yang:network-topology">/topo:network-topology/topo:topology[topo:topology-id="pcep-topology"]</network-topology-ref>
   </input>

@line 3: **name** - The LSP name. If this parameter is omitted, re-synchronization is requested for all PCC's LSPs.
