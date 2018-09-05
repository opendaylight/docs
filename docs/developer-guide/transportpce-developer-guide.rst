.. _transportpce-dev-guide:

TransportPCE Developer Guide
============================

Overview
--------

TransportPCE describes an application running on top of the OpenDaylight
controller. Its primary function is to control an optical transport
infrastructure using a non-proprietary South Bound Interface (SBI). It may be
interconnected with Controllers of different layers (L2, L3 Controller…), a
higher layer Controller and/or an Orchestrator through non-proprietary.
Application Programing Interfaces (APIs). Control includes the capability to
configure the optical equipment, and to provision services according to a
request coming from a higher layer controller and/or an orchestrator.
This capability may rely on the controller only or it may be delegated to
distributed (standardized) protocols.


Architecture
------------

The modules in TrasnportPCE are depicted as the following figure.

.. figure:: ./images/tpce_architecture.jpg
   :alt: TransportPCE architecture

   TransportPCE architecture

-  ServiceHandler : create/delete/modify service (OpenROADM service).

-  Pce : path computation.

-  Renderer: implement/delete service in OpenROADM devices.

-  Topology Management : buid topology.

-  OLM : set up / modify the optical power levels.

Programmatic Interface(s)
-------------------------

TransportPCE Plugin exposes APIs via MD-SAL with YANG model. The methods
(RPC call) and data structures for them are listed below.

ServiceHandler Service
~~~~~~~~~~~~~~~~~~~~~~

-  RPC call

   -  service-create (given service-name, service-aend, service-zend)

   -  service-delete (given service-name)

   -  service-reroute (given service-name, service-aend, service-zend)

-  Data structure

   -  service list : composed of service
   -  service : composed of service-name, topology

-  Notification

   - service-rpc-result : result of service RPC
   - service-notification : service has been added, modified or removed

Pce Service
~~~~~~~~~~~

-  RPC call

   -  path-computation-request (given service-name, service-aend, service-zend)

   -  cancel-resource-reserve (given service-name)

-  Notification

   - service-path-rpc-result : result of service RPC

Renderer Service
~~~~~~~~~~~~~~~~

-  RPC call

   -  service-implementation-request (given service-name, service-aend, service-zend)

   -  service-delete (given service-name)

-  Data structure

   -  service path list : composed of service paths
   -  service path : composed of service-name, path description

-  Notification

   - service-path-rpc-result : result of service RPC

Tpology Management Service
~~~~~~~~~~~~~~~~~~~~~~~~~~

-  Data structure

   -  network list : composed of networks(openroadm-topology, netconf-topology)
   -  node list : composed of node-id
   -  link list : composed of link-id
   -  node : composed of roadm, xponder
      link : compodes of roadm-to-roadm, express, add-drop ...

OLM Service
~~~~~~~~~~~

-  RPC call

   -  get-pm (given node-id)

   -  service-power-setup

   -  service-power-turndown

   -  service-power-reset

   -  calculate-spanloss-base

   -  calculate-spanloss-current


Help
----

-  `TransportPCE Wiki <https://wiki.opendaylight.org/view/TransportPCE:Main>`__

-  SNMP4SDN Mailing List
   (`developer <https://lists.opendaylight.org/mailman/listinfo/transportpce-dev>`__)