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

TransportPCE modular architecture is described on the next diagram. Each main function such as Topology management, Path Calculation Engine (PCE), Service handler, Renderer _responsible for the path configuration through optical equipment\_ and Optical Line Management (OLM) is associated with a generic block relying on open models, each of them communicating through published APIs.

TransportPCE modular architecture is described on the next diagram. Each main function such as Topology management, Path Calculation Engine (PCE), Service handler, Renderer \_responsible for the path configuration through optical equipment\_ and Optical Line Management (OLM) is associated with a generic block relying on open models, each of them communicating through published APIs.

.. figure:: ./images/tpce_architecture.jpg
   :alt: TransportPCE architecture

   TransportPCE architecture

The current version of transportPCE is dedicated to the control of WDM transport infrastructure. OTN layer will be integrated in a later step. The WDM layer is built from colorless ROADMs and transponders. 

The interest of using a controller to provision automatically services strongly relies on its ability to handle end to end optical services that spans through the different network domains, potentially equipped with equipment coming from different suppliers. Thus, interoperability in the optical layer is a key element to get the benefit of automated control.

Initial design of TransportPCE leverages OpenROADM Multi-Source-Agreement (MSA) which defines interoperability specifications, consisting of both Optical interoperability and Yang data models.

Module description
~~~~~~~~~~~~~~~~~~

ServiceHandler
^^^^^^^^^^^^^^

Service Handler handles request coming from a higher level controller or an orchestrator through the northbound API, as defined in the OpenROADM service model. Current implementation addresses the following rpcs: service-create, service–delete, service-reroute.
It checks the request consistency and trigs path calculation sending rpcs to the PCE. If a valid path is returned by the PCE, path configuration is initiated relying on Renderer and OLM.
At the confirmation of a successful service creation, the Service Handler updates the service-list in the MD-SAL.
For service deletion, the Service Handler relies on the Renderer and the OLM to delete connections and reset power levels associated with the service. The service-list is updated following a successful service deletion.


PCE
^^^

The Path Computation Element (PCE) is the component responsible for path calculation. An interface allows the Renderer or external components such as an orchestrator to request a path computation and get a response from the PCE including the computed path(s) in case of success, or errors and indication of the reason for the failure in case the request cannot be satisfied. Additional parameters can be provided by the PCE in addition to the computed paths if requested by the client module. An interface to the Topology Management module allows keeping PCE aligned with the latest changes in the topology. Information about current and planned services is available in the MD-SAL data store.

Current implementation of PCE allows finding the shortest path, minimizing either the Hop count (default) or the propagation delay. Wavelength is assigned considering a fixed grid of 96 wavelengths. Current PCE handles the following constraints as hard constraints: 

-   **Node exclusion**
-   **SRLG exclusion**
-   **Maximum latency**


Topology Management
~~~~~~~~~~~~~~~~~~~

Topology management module builds the Topology according to the Network model defined in OpenROADM. The topology is aligned with I2RS model. It includes several network layers:

-  **CLLI layer corresponds to the locations that host equipment**
-  **Network layer corresponds to a first level of disaggregation where we separate Xponders (transponder, muxponders or switchponders) from ROADMs**
-  **Topology layer introduces a second level of disaggregation where ROADMs Add/Drop modules ("SRGs") are separated from the degrees which includes line amplifiers and WSS that switch wavelengths from one to another degree**

OTN layer which includes OTN elements having or not the ability to switch OTN containers from client to line cards is not currently implemented.

Renderer
^^^^^^^^

The Renderer module, on request coming from the Service Handler through a service-implementation-request /service delete rpc, sets/deletes the path corresponding to a specific service between A and Z ends. 
It first checks what are the existing interfaces on the ports of the different nodes that the path crosses. It then creates missing interfaces. After all needed interfaces have been created it sets the connections required in the nodes and notifies the Service Handler on the status of the path creation. 
Path is created in 2 steps (from A to Z and Z to A). In case the path between A and Z could not be fully created, a rollback function is called to set the equipment on the path back to their initial configuration (as they were before invoking the Renderer).

OLM
^^^

Optical Line Management module implements two main features: it is responsible for setting up the optical power levels on the different interfaces, and is in charge of adjusting these settings across the life of the optical infrastructure.

After the different connections have been established in the ROADMS, between 2 Degrees for an express path, or between a SRG and a Degree for an Add or Drop path; meaning the devices have set WSS and all other required elements to provide path continuity, power setting are provided as attributes of these connections. This allows the device to set all complementary elements such as VOAs, to guaranty that the signal is launched at a correct power level (in accordance to the specifications) in the fiber span. This also applies to X-Ponders, as their output power must comply with the specifications defined for the Add/Drop ports (SRG) of the ROADM. OLM has the responsibility of calculating the right power settings, sending it to the device, and check the PM retrieved from the device to verify that the setting was correctly applied and the configuration was successfully completed.

Key APIs and Interfaces
-----------------------

External API
~~~~~~~~~~~~

North API, interconnecting the Service Handler to higher level applications relies on the Service Model defined in the MSA. The Renderer and the OLM are developed to allow configuring OpenROADM devices through a southbound Netconf/Yang interface and rely on the MSA’s device model. Topology Management is also based on the Network model defined in the MSA.

ServiceHandler Service
^^^^^^^^^^^^^^^^^^^^^^

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

Netconf Service
^^^^^^^^^^^^^^^

-  RPC call

   -  connect-device : PUT
   -  disconnect-device : DELETE
   -  check-connected-device : GET

-  Data Structure

   -  node list : composed of netconf nodes in topology-netconf


Internal APIs
~~~~~~~~~~~~~

Internal APIs define REST APIs to interconnect TransportPCE modules :

-   Service Handler to PCE
-   PCE to Topology Management
-   Service Handler to Renderer
-   Renderer to OLM

Pce Service
^^^^^^^^^^^

-  RPC call

   -  path-computation-request (given service-name, service-aend, service-zend)

   -  cancel-resource-reserve (given service-name)

-  Notification

   - service-path-rpc-result : result of service RPC

Renderer Service
^^^^^^^^^^^^^^^^

-  RPC call

   -  service-implementation-request (given service-name, service-aend, service-zend)

   -  service-delete (given service-name)

-  Data structure

   -  service path list : composed of service paths
   -  service path : composed of service-name, path description

-  Notification

   - service-path-rpc-result : result of service RPC

Tpology Management Service
^^^^^^^^^^^^^^^^^^^^^^^^^^

-  Data structure

   -  network list : composed of networks(openroadm-topology, netconf-topology)
   -  node list : composed of node-id
   -  link list : composed of link-id
   -  node : composed of roadm, xponder
      link : compodes of roadm-to-roadm, express, add-drop ...

OLM Service
^^^^^^^^^^^

-  RPC call

   -  get-pm (given node-id)

   -  service-power-setup

   -  service-power-turndown

   -  service-power-reset

   -  calculate-spanloss-base

   -  calculate-spanloss-current


Running transportPCE project
----------------------------

Connecting nodes
~~~~~~~~~~~~~~~~

Checking connectivity
~~~~~~~~~~~~~~~~~~~~~
connecting , connected…

Checking node insertion in TransportPCE Engine (a reformuler)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Portmapping ?

Adding a transponder to ROADM link
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Checking node connectivity
~~~~~~~~~~~~~~~~~~~~~~~~~~
Topology…..et tout ce que bon vous semble!!!


Creating a service
~~~~~~~~~~~~~~~~~~

Deleting a service
~~~~~~~~~~~~~~~~~~

Help
----

-  `TransportPCE Wiki <https://wiki.opendaylight.org/view/TransportPCE:Main>`__

-  TransportPCE Mailing List
   (`developer <https://lists.opendaylight.org/mailman/listinfo/transportpce-dev>`__)