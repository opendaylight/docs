Name
----

ODL-SDNi App (OpenDaylight- SDN Interface Application)

Repo Name
---------

sdninterfaceapp

Description
-----------

This project aims at enabling inter-SDN controller communication by
developing SDNi (Software Defined Networking interface) as an
application (ODL-SDNi App). The SDN application deployable on
OpenDaylight-Helium will comprise of:

#. SDNi Aggregator: Northbound SDNi plugin acts as an aggregator for
   collecting network information such as topology, stats, host etc.
   This plugin can be evolving as per needs of network data requested to
   be shared across federated SDN controllers.
#. SDNi RestAPI: SDNi REST APIs will be implemented to fetch the
   aggregated information from the northbound plugin – SDNi aggregator.
   New SDNi RestAPI will be developed, specific to ODL for supporting
   SDNi application.
#. SDNi Wrapper: SDNi BGP Wrapper will be responsible for the sharing
   and collecting information to/from federated controllers.

| The following figure depicts the described components: `500px \|none`_
| The figure below depicts the SDNi wrapper:

.. figure:: SDNiWrapper.png
   :alt: SDNiWrapper.png

   SDNiWrapper.png

In this release ODL-SDNi App version 1, the SDNi wrapper will comprise
of:

#. Border Gateway Protocol implementation (BGP-4)
#. Generation of current and peer controller information.
#. Network parameters that would be exchanged as part of SDNi
   communication:

      Topology Data:Controller Ip Address,Links,Nodes,Link
      Bandwidths,MAC Address of switches,Latency,Host IP address

      QoS Data:Packet Loss rate,Packets Transmitted,Packets Received

In follow-up ODL-SDNi App versions, the SDNi App will be enhanced to
extend support for additional network parameters, User QoS parameters
etc.The current BGP plugin will be analysed to be used as SDNi BGP
Wrapper.

Current limitations of the BGP protocol plugin are:

-  The dynamic capability of open message needs to be enabled with
   reference to Dynamic Capability : draft-ietf-idr-dynamic-cap-14.txt
-  The Capability message needs to be incorporated with reference to
   Capabilities Advertisement: RFC 4760.
-  The Link-State NLRI Message need to be enabled to exchange topology
   data over East-West Interface with reference to
   http://tools.ietf.org/html/draft-ietf-idr-ls-distribution-04
-  API will be implemented between the BGP plug-in and SAL.
-  Peer to peer communication needs to be tested.

Scope
-----

The scope of this project (ODL-SDNi App version 1) will be divided into
two phases:

Phase 1:

#. Implementation of SDNi wrapper with respect to BGP4 protocol(RFC
   4271).The current ODL-BGP code will be utilised here as an
   application running over the controller platform.
#. The Link state NLRI to be incorporated in the SDNi Wrapper for data
   exchange.
#. Implement SDNi Aggregator to retrieve network parameter data from
   controller.
#. SDNi aggregator to access opendaylight - Base network Service
   Functions for data to be available with RestAPI.
#. Rest API to be implemented between the controller and SDNi wrapper
   for data exchange which will be Topology data for Phase 1.

#. Data to be available through RestAPI: Controller Ip Address, Links,
   Nodes, Link Bandwidth, Mac Address of switches and latency
#. SDNi Wrapper to access this data and send across in NLRI message.

At end of Phase 1, East-West communication should be established among
multiple ODL federated SDN-controllers.

Phase 2:

#. The network parameters will be updated with parameters based on
   inter-domain security/permissions and QoS data.
#. Implement QoS information exchange through BGP Extended Community
   Attribute by referring to draft-knoll-idr-qos-attribute-02.This will
   be a direct modification over the SDNi Wrapper.
#. Enhancement of SDNi to support inter-working between Data Center
   networks.
#. Incorporate Traffic Steering by conveying controller tear down over
   SDNi Application.
#. Utilise the ODL-BGP Plugin to establish East-West interface.

Resources Committed (developers committed to working)
-----------------------------------------------------

| Rafat Jahan <rafat.jahan@tcs.com>
| Radhika J < radhika2.j@tcs.com>
| Shahid Shaik < shahid.b@tcs.com>

Initial Committers
------------------

Rafat Jahan <rafat.jahan@tcs.com>

Vendor Neutral
--------------

The project is made from scratch, no vendor code, logos nor is anything
included.

Meets Board Policy (including IPR)
----------------------------------

New Project. No Inbound Code Review required

Link For Project Proposal
-------------------------

.. figure:: SDNiAppProposal1.ppt
   :alt: SDNiAppProposal1.ppt

   SDNiAppProposal1.ppt

.. _500px \|none: File:Architecture.PNG