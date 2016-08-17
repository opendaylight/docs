Atrium Developer Guide
======================

Overview
--------

Project Atrium is an open source SDN distribution - a vertically
integrated set of open source components which together form a complete
SDN stack. It’s goals are threefold:

-  Close the large integration-gap of the elements that are needed to
   build an SDN stack - while there are multiple choices at each layer,
   there are missing pieces with poor or no integration.

-  Overcome a massive gap in interoperability - This exists both at the
   switch level, where existing products from different vendors have
   limited compatibility, making it difficult to connect an arbitrary
   switch and controller and at an API level, where its difficult to
   write a portable application across multiple controller platforms.

-  Work closely with network operators on deployable use-cases, so that
   they could download near production quality code from one location,
   and get started with functioning software defined networks on real
   hardware.

Architecture
------------

The key components of Atrium BGP Peering Router Application are as
follows:

-  Data Plane Switch - Data plane switch is the entity that uses flow
   table entries installed by BGP Routing Application through SDN
   controller. In the simplest form data plane switch with the installed
   flows act like a BGP Router.

-  OpenDaylight Controller - OpenDaylight SDN controller has many
   utility applications or plugins which are leveraged by the BGP Router
   application to manage the control plane information.

-  BGP Routing Application - An application running within the
   OpenDaylight runtime environment to handle I-BGP updates.

-  `DIDM <#_didm_developer_guide>`__ - DIDM manages the drivers specific
   to each data plane switch connected to the controller. The drivers
   are created primarily to hide the underlying complexity of the
   devices and to expose a uniform API to applications.

-  Flow Objectives API - The driver implementation provides a pipeline
   abstraction and exposes Flow Objectives API. This means applications
   need to be aware of only the Flow Objectives API without worrying
   about the Table IDs or the pipelines.

-  Control Plane Switch - This component is primarily used to connect
   the OpenDaylight SDN controller with the Quagga Soft-Router and
   establish a path for forwarding E-BGP packets to and from Quagga.

-  Quagga soft router - An open source routing software that handles
   E-BGP updates.

Key APIs and Interfaces
-----------------------

BGP Routing Configuration
~~~~~~~~~~~~~~~~~~~~~~~~~

The BGP Routing Configuration maintains information about its BGP
Speakers & BGP Peers.

-  Configuration data about BGP speakers can be accessed from the below
   URL:

   ::

       GET http://<controller_ip>:8181/restconf/config/bgpconfig:bgpSpeakers/

-  Configuration data about BGP peers can be accessed from the below
   URL:

   ::

       GET http://<controller_ip>:8181/restconf/config/bgpconfig:bgpPeers/

Host Service
~~~~~~~~~~~~

Host Service API contains the host specific details that can be used
during address resolution

-  Host specific data can be accessed by using the below REST request:

   ::

       GET http://<controller_ip>:8181/restconf/config/hostservice-api:addresses/

BGP Routing Information Base
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The BGP RIB module stores all the route information that it has learnt
from its peers.

-  Routing Information Base entries can be accessed from the URL below:

   ::

       GET http://<controller_ip>:8181/restconf/operational/bgp-rib:bgp-rib/

Forwarding Information Base
~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Forwarding Information Base is used to keep track of active FIB
entries.

-  FIB entries can be accessed from the URL below:

   ::

       GET http://<controller_ip>:8181/restconf/config/routingservice-api:fibEntries/

