PCEP User Guide
===============
This guide contains information on how to use OpenDayliht Path Computation Element Configuration Protocol (PCEP) plugin.
The user should learn about PCEP basic concepts, supported capabilities, configuration and operations.

.. contents:: Contents
   :depth: 1
   :local:

Overview
--------
This section provides high-level overview of the PCEP, SDN use-cases and OpenDaylight implementation.

.. contents:: Contents
   :depth: 2
   :local:

Path Computation Element Communication Protocol
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
//TODO reword, avoid copy-paste sentences
The Path Computation Element (PCE) Communication Protocol (PCEP) is used for communication between a Path Computation Client (PCC) and a PCE in context of MPLS and GMPLS Traffic Engineering Label Switched Paths (LSPs).
This interaction include path computation requests and computation replies.
The PCE operates on a network graph, build from the TED, in order to compute paths based on the path computation request issued by the PCC.
The path computation request includes the source and destination of the path and set of constrains to be applied during the computation.
The PCE response contains the computed path or the computation failure reason.
The PCEP operates on top the TCP, which provides reliable communication.

.. figure:: ./images/bgpcep/pcep.png
   :align: center
   :alt: PCEP

   PCE-based architecture.

PCEP in SDN
^^^^^^^^^^^
//TODO general role of PCEP in SDN
//TODO list some SDN use-cases (ABNO)

OpenDaylight PCEP plugin
^^^^^^^^^^^^^^^^^^^^^^^^
The OpenDaylight PCEP plugin provides all basic service units necessary to build-up a PCE-based controller.
In addition, offers LSP management functionality, for Active Stateful PCE - the cornerstone of major PCE-enabled SDN solutions.

* Protocol library
* PCEP session handling
* Stateful PCE LSP DB
* Active Stateful PCE LSP Operations

.. figure:: ./images/bgpcep/pcep-plugin.png
   :align: center
   :alt: PCEP plugin

   OpenDaylight PCEP plugin overview.

.. note:: The PCEP plugin does not provide path computational functionality and does not build TED.

List of supported capabilities
''''''''''''''''''''''''''''''

* `RFC5440 <https://tools.ietf.org/html/rfc5440>`_ - Path Computation Element (PCE) Communication Protocol (PCEP)
* `RFC5541 <https://tools.ietf.org/html/rfc5541>`_ - Encoding of Objective Functions in the Path Computation Element Communication Protocol (PCEP)
* `RFC5455 <https://tools.ietf.org/html/rfc5455>`_ - Diffserv-Aware Class-Type Object for the Path Computation Element Communication Protocol
* `RFC5521 <https://tools.ietf.org/html/rfc5521>`_ - Extensions to the Path Computation Element Communication Protocol (PCEP) for Route Exclusions
* `RFC5557 <https://tools.ietf.org/html/rfc5557>`_ - Path Computation Element Communication Protocol (PCEP) Requirements and Protocol Extensions in Support of Global Concurrent Optimization
* `RFC5886 <https://tools.ietf.org/html/rfc5886>`_ - A Set of Monitoring Tools for Path Computation Element (PCE)-Based Architecture
* `RFC7896 <https://tools.ietf.org/html/rfc7896>`_ - Update to the Include Route Object (IRO) Specification in the Path Computation Element Communication Protocol (PCEP)

* `draft-ietf-pce-stateful-pce <https://tools.ietf.org/html/draft-ietf-pce-stateful-pce-16>`_ - PCEP Extensions for Stateful PCE
   * `draft-ietf-pce-pce-initiated-lsp <https://tools.ietf.org/html/draft-ietf-pce-pce-initiated-lsp-07>`_ - PCEP Extensions for PCE-initiated LSP Setup in a Stateful PCE Model
   * `draft-ietf-pce-segment-routing <https://tools.ietf.org/html/draft-ietf-pce-segment-routing-08>`_ - PCEP Extension for segment routing
   * `draft-ietf-pce-lsp-setup-type <https://tools.ietf.org/html/draft-ietf-pce-lsp-setup-type-03>`_ - PCEP Extension for path setup type
   * `draft-ietf-pce-stateful-sync-optimizations <https://tools.ietf.org/html/draft-ietf-pce-stateful-sync-optimizations-05>`_ - Optimizations of Label Switched Path State Synchronization Procedures for a Stateful PCE
   * `draft-sivabalan-pce-binding-label-sid <https://tools.ietf.org/html/draft-sivabalan-pce-binding-label-sid-01>`_ - Carrying Binding Label/Segment-ID in PCE-based Networks

* `draft-ietf-pce-pceps <https://tools.ietf.org/html/draft-ietf-pce-pceps-10>`_ - Secure Transport for PCEP

Running PCEP
------------
This section explains how to install PCEP plugin.

1. Install PCEP feature - ``odl-bgpcep-pcep``.
   Also, for sake of this sample, it is required to install RESTCONF.
   In the Karaf console, type command:

   .. code-block:: console

      feature:install odl-restconf odl-bgpcep-pcep

2. The PCEP plugin contains a default configuration, which is applied after the feature starts up.
   One instance of PCEP plugin is created (named *pcep-topology*), and its presence can be verified via REST:

   **URL:** ``restconf/operational/network-topology:network-topology/topology/pcep-topology``

   **Method:** ``GET``

   **Response Body:**

   .. code-block:: xml

      <topology xmlns="urn:TBD:params:xml:ns:yang:network-topology">
          <topology-id>pcep-topology</topology-id>
          <topology-types>
              <topology-pcep xmlns="urn:opendaylight:params:xml:ns:yang:topology:pcep"></topology-pcep>
          </topology-types>
      </topology>

Active Stateful PCE
-------------------
The PCEP extension for Stateful PCE brings a visibility of active LSPs to PCE, in order to optimize path computation, while considering individual LSPs and their interactions.
This requires state synchronization mechanism between PCE and PCC.
Moreover, Active Stateful PCE is capable to address LSP parameter changes to the PCC.

.. contents:: Contents
   :depth: 2
   :local:

Configuration
^^^^^^^^^^^^^
//TODO topology-provider configuration, capabilities

LSP State Database
^^^^^^^^^^^^^^^^^^
The *LSP State Database* (LSP DB) contains an information about all LSPs and their attributes.
The LSP state is synchronized between the PCC and PCE.
First, initial LSP state synchronization is performed once the session between PCC and PCE is established in order to learn PCC's LPSs.
This step is a prerequisite to following LSPs manipulation operations.


.. figure:: ./images/bgpcep/pcep-sync.png
   :align: center
   :alt: LSP State synchronization

   LSP State Synchronization.

LSP DB API
''''''''''

.. code-block:: console

   path-computation-client
      +--ro ip-address?     inet:ip-address
      +--ro stateful-tlv
      +--ro state-sync?     pcc-sync-state
      +--ro reported-lsp* [name]
         +--ro name        string
         +--ro path* [lsp-id]
         |  +--ro lsp-id                      rsvp:lsp-id
         |  +--ro ero
         |  |  +--ro processing-rule?   boolean
         |  |  +--ro ignore?            boolean
         |  |  +--ro subobject*
         |  |     +--ro loose    boolean
         |  +--ro lspa
         |  |  +--ro processing-rule?   boolean
         |  |  +--ro ignore?            boolean
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
         |  |     +--ro loose    boolean
         |  +--ro rro
         |  |  +--ro processing-rule?   boolean
         |  |  +--ro ignore?            boolean
         |  |  +--ro subobject*
         |  +--ro xro
         |  |  +--ro processing-rule?   boolean
         |  |  +--ro ignore?            boolean
         |  |  +--ro flags              bits
         |  |  +--ro subobject*
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

The LSP DB is accessible via RESTCONF.
The PCC's LSPs are stored in the ``pcep-topology`` while the session is active.
In a next example, there is one PCEP session with PCC identified by its address (*43.43.43.43*) and one reported LSP.

**URL:** ``/restconf/operational/network-topology:network-topology/topology/pcep-topology/node/pcc:%2F%2F43.43.43.43``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml

   <node>
      <node-id>pcc://43.43.43.43</node-id>
      <path-computation-client>
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
               <ignore>false</ignore>
               <plsp-id>1</plsp-id>
               <create>false</create>
               <administrative>true</administrative>
               <remove>false</remove>
               <delegate>true</delegate>
               <processing-rule>false</processing-rule>
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
         <ip-address>43.43.43.43</ip-address>
      </path-computation-client>
   </node>

LSP Delegation
''''''''''''''
The LSP control delegations is an mechanism, where PCC grants to a PCE the temporary right in order to modify LSP attributes.
The PCC can revoke the delegation or the PCE may waive the delegation at any time.

.. figure:: ./images/bgpcep/pcep-delegation-return.png
   :align: center
   :alt: Returning a Delegation

   Returning a Delegation.

-----

Following RPC example illustrates a procedure for the LSP delegation give up.

**URL:** ``/restconf/operations/network-topology-pcep:update-lsp``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines:

   <input>
      <node>pcc://43.43.43.43</node>
      <name>test-tunnel</name>
      <arguments>
         <lsp xmlns:stateful="urn:opendaylight:params:xml:ns:yang:pcep:ietf:stateful">
            <delegate>false</delegate>
            <administrative>true</administrative>
            <tlvs>
               <symbolic-path-name>
                  <path-name>dGVzdC10dW5uZWw=</path-name>
               </symbolic-path-name>
            </tlvs>
         </lsp>
      </arguments>
      <network-topology-ref xmlns:topo="urn:TBD:params:xml:ns:yang:network-topology">/topo:network-topology/topo:topology[topo:topology-id="pcep-topology"]</network-topology-ref>
   </input>

LSP Update
''''''''''
//TODO delegated LSP update, RPC example

.. figure:: ./images/bgpcep/pcep-update.png
   :align: center
   :alt: Active Stateful PCE LSP Update

   Active Stateful PCE LSP Update.

PCE-initiated LSP Setup
^^^^^^^^^^^^^^^^^^^^^^^
//TODO
Configuration
'''''''''''''
//TODO initiated capability configuration
LSP Instantiation and Deletion
''''''''''''''''''''''''''''''
//TODO explain initiate LSP and delete LSP, RPC examples

.. figure:: ./images/bgpcep/pcep-initiate.png
   :align: center
   :alt: LSP instantiation

   LSP instantiation.

.. figure:: ./images/bgpcep/pcep-deletion.png
   :align: center
   :alt: LSP deletion.

   LSP deletion.

LSP Delegation
''''''''''''''
//TODO returning and revoking delegations, RPC examples

.. figure:: ./images/bgpcep/pcep-revoke-delegation.png
   :align: center
   :alt: LSP re-delegation

   Orphan PCE-initiated LSP - control taken by PCE.

Segment Routing
^^^^^^^^^^^^^^^
//TODO explain SR in PCEP
//TODO illustrate SR LSPs
Configuration
'''''''''''''
//TODO SR capability
LSP Operations for PCEP SR
''''''''''''''''''''''''''
//TODO update/initiate/delete LSP RPC examples

LSP State Synchronization Procedures
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
//TODO explain the extension/motivation
//TODO list operations
Configuration
'''''''''''''
//TODO capabilities configuration
State Synchronization Avoidance
'''''''''''''''''''''''''''''''
//TODO explain
//TODO RPC example

.. figure:: ./images/bgpcep/pcep-sync-skipped.png
   :align: center
   :alt: Sync skipped

   State Synchronization Skipped.

Incremental State Synchronization
'''''''''''''''''''''''''''''''''
//TODO explain
//TODO RPC example

.. figure:: ./images/bgpcep/pcep-sync-incremental.png
   :align: center
   :alt: Sync incremental

   Incremental Synchronization Procedure.

PCE-triggered Initial Synchronization
'''''''''''''''''''''''''''''''''''''
//TODO explain
//TODO RPC example

.. figure:: ./images/bgpcep/pcep-sync-initial.png
   :align: center
   :alt: Initial Sync

   PCE-triggered Initial State Synchronization Procedure.

PCE-triggered Re-synchronization
''''''''''''''''''''''''''''''''
//TODO explain
//TODO RPC example

.. figure:: ./images/bgpcep/pcep-re-sync.png
   :align: center
   :alt: Re-sync

   PCE-triggered Re-synchronization Procedure.

References
^^^^^^^^^^
//TODO list all references related to PCEP

Test tools
----------
//TODO pcc-mock download and run, optional attributes

Troubleshooting
---------------
//TODO PCEP is not working
//TODO bug reporting
