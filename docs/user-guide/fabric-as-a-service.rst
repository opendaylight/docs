.. _faas_user_guide:

Fabric As A Service
===================

This document describes, from a user’s or application’s perspective, how
to use the Fabric As A Service (FaaS) feature in OpenDaylight. This
document contains configuration, administration, and management sections
for the FaaS feature.

Overview
--------

Currently network applications and network administrators mostly rely on
lower level interfaces such as CLI, SNMP, OVSDB, NETCONF or OpenFlow to
directly configure individual device for network service provisioning.
In general, those interfaces are:

-  Technology oriented, not application oriented.

-  Vendor specific

-  Individual device oriented, not network oriented.

-  Not declarative, complicated and procedure oriented.

To address the gap between application needs and network interface,
there are a few application centric language proposed in OpenDaylight
including Group Based Policy (GBP), Network Intent Composition (NIC),
and NEtwork MOdeling (NEMO) trying to replace traditional southbound
interface to application. Those languages are top-down abstractions and
model application requirements in a more application-oriented way.

After being involved with GBP development for a while, we feel the top
down model still has a quite gap between the model and the underneath
network since the existing interfaces to network devices lack of
abstraction makes it very hard to map high level abstractions to the
physical network. Often the applications built with these low level
interfaces are coupled tightly with underneath technology and make the
application’s architecture monolithic, error prone and hard to maintain.

We think a bottom-up abstraction of network can simplify, reduce the
gap, and make it easy to implement the application centric model.
Moreover in some uses cases, an interface with network service oriented
are still desired for example from network monitoring/troubleshooting
perspective. That’s where the Fabric as a Service comes in.

FaaS Architecture
-----------------

Fabric and its controller (Fabric Controller)
    The Fabric object provides an abstraction of a homogeneous network
    or portion of the network and also has a built in Fabric controller
    which provides management plane and control plane for the fabric.
    The fabric controller implements the services required in Fabric
    Service and monitor and control the fabric operation.

Fabric Manager
    Fabric Manager manages all the fabric objects. also Fabric manager
    acts as a Unified Fabric Controller which provides inter-connect
    fabric control and configuration Also Fabric Manager is FaaS API
    service via Which FaaS user level logical network API (the top level
    API as mentioned previously) exposed and implemented.

FaaS render for GBP (Group Based Policy)
    FaaS render for GBP is an application of FaaS and provides the
    rendering service between GBP model and logical network model
    provided by Fabric Manager.

FaaS RESTCONF API
-----------------

FaaS Provides two layers API:

-  The top layer is a **user level logical network** API which defines
   CRUD services operating on the following abstracted constructs:

   -  vcontainer - virtual container

   -  logical Port - a input/out/access point of a logical device

   -  logical link - connects ports

   -  logical switch - a layer 2 forwarding device

   -  logical router - a layer 3 forwarding device

   -  Subnet

   -  Rule/ACL

   -  End Points Registration

   -  End Points Attachment

Through these constructs, a logical network can be described without
users knowing too much details about the physical network device and
technology, i.e. users' network services is decoupled from underneath
physical infrastructure. This decoupling brought the benefit that the
users defined service is not locked in with any specific technology or
physical devices. FaaS maps the logical network to the physical network
configuration automatically which in maximum eliminates the manual
provisioning work. As a result, human error is avoided and OPEX for
network operators is massively reduced. Moreover migration from one
technology to another is much easier to do and transparent to users'
services.

-  The second layer defines an abstraction layer called **Fabric** API.
   The idea is to abstract network into a topology formed by a
   collections of fabric objects other than varies of physical
   devices.Each Fabric object provides a collection of unified services.
   The top level API enables application developers or users to write
   applications to map high level model such as GBP, Intent etc… into a
   logical network model, while the lower level gives the application
   more control to individual fabric object level. More importantly the
   Fabric API is more like SPI (Service Provider API) a fabric provider
   or vendor can implement the SPI based on its own Fabric technique
   such as TRILL, SPB etc …

This document is focused on the top layer API. For how to use second
level API operation, please refer to FaaS developer guide for more
details.

.. note::

    that for any JSON data or link not described here, please go to
    `http://${ipaddress}:8181/apidoc/explorer/index.htm <http://${ipaddress}:8181/apidoc/explorer/index.htm>`__
    for details or clarification.

Resource Management API
-----------------------

The FaaS Resource Management API provides services to allocate and
reclaim the network resources provided by Fabric object. Those APIs can
be accessed via RESTCONF rendered from YANG in MD-SAL.

-  Name: Create virtual container

   -  virtual container is an collections of resources allocated to a
      tenant, for example, a list of physical ports, bandwidth or L2
      network or logical routers quantity. etc…

   -  `http://${ipaddress}:8181/restconf/operations/vcontainer-topology:create-vcontainer <http://${ipaddress}:8181/restconf/operations/vcontainer-topology:create-vcontainer>`__

   -  Description: create a given virtual container.

-  Name: assign or remove fabric resource to a virtual container

   -  `http://${ipaddress}:8181/restconf/operations/vc-ld-node:add-vfabric-to-ld-node <http://${ipaddress}:8181/restconf/operations/vc-ld-node:add-vfabric-to-ld-node>`__

   -  `http://${ipaddress}:8181/restconf/operations/vc-ld-node:rm-vfabric-to-ld-node <http://${ipaddress}:8181/restconf/operations/vc-ld-node:rm-vfabric-to-ld-node>`__

-  Name: assign or remove appliance to a virtual container

   -  `http://${ipaddress}:8181/restconf/operations/vc-ld-node:add-appliance-to-ld-node <http://${ipaddress}:8181/restconf/operations/vc-ld-node:add-appliance-to-ld-node>`__

   -  `http://${ipaddress}:8181/restconf/operations/vc-ld-node:rm-appliance-to-ld-node <http://${ipaddress}:8181/restconf/operations/vc-ld-node:rm-appliance-to-ld-node>`__

-  Name: create or remove a child container

   -  `http://${ipaddress}:8181/restconf/operations/vc-ld-node:create-child-ld-node <http://${ipaddress}:8181/restconf/operations/vc-ld-node:create-child-ld-node>`__

   -  `http://${ipaddress}:8181/restconf/operations/vc-ld-node:rm-child-ld-node <http://${ipaddress}:8181/restconf/operations/vc-ld-node:rm-child-ld-node>`__

-  RESTCONF path for Virtual Container Datastore query (note:
   vcontainer-id equals tenantID for now):

   -  `http://${ipaddress}:8181/restconf/config/network-topology/topology/{vcontainer-id}/vc-topology-attributes/ <http://${ipaddress}:8181/restconf/config/network-topology/topology/{vcontainer-id}/vc-topology-attributes/>`__

   -  `http://${ipaddress}:8181/restconf/config/network-topology/topology/{vcontainer-id}/node/{net-node-id}/vc-net-node-attributes <http://${ipaddress}:8181/restconf/config/network-topology/topology/{vcontainer-id}/node/{net-node-id}/vc-net-node-attributes>`__

   -  `http://${ipaddress}:8181/restconf/config/network-topology/topology/{vcontainer-id}/node/{ld-node-id}/vc-ld-node-attributes <http://${ipaddress}:8181/restconf/config/network-topology/topology/{vcontainer-id}/node/{ld-node-id}/vc-ld-node-attributes>`__

Installing Fabric As A Service
------------------------------

To install FaaS, download OpenDaylight and use the Karaf console to
install the following feature: **odl-restconf** **odl-faas-all**
**odl-groupbasedpolicy-faas** (if needs to use FaaS to render GBP)

Configuring FaaS
----------------

This section gives details about the configuration settings for various
components in FaaS.

The FaaS configuration files for the Karaf distribution are located in
distribution/karaf/target/assembly/etc/faas

-  akka.conf

   -  This file contains configuration related to clustering. Potential
      configuration properties can be found on the akka website at
      http://doc.akka.io

-  fabric-factory.xml

-  vxlan-fabric.xml

-  vxlan-fabric-ovs-adapter.xml

   -  Those 3 files are used to initialize fabric module and located
      under distribution/karaf/target/assembly/etc/opendaylight/karaf

Managing FaaS
-------------

Start opendaylight karaf distribution

-  *>bin/karaf* Then From karaf console,Install features in the
   following order:

-  *>feature:Install odl-restconf*

-  *>feature:install odl-faas-all*

-  *>feature install odl-groupbasedpolicy-faas*

After installing features above, users can manage Fabric resource and
FaaS logical network channels from the APIDOCS explorer via RESTCONF

Go to
`http://${ipaddress}:8181/apidoc/explorer/index.html <http://${ipaddress}:8181/apidoc/explorer/index.html>`__,
sign in, and expand the FaaS panel. From there, users can execute
various API calls to test their FaaS deployment such as create virtual
container, create fabric, delete fabric, create/edit logical network
elements.

Tutorials
---------

Below are tutorials for 4 major use cases.

1. to create and provision a fabric

2. to allocate resource from the fabric to a tenant

3. to define a logical network for a tenant. Currently there are two
   ways to create a logical network

   a. Create a GBP (Group Based Policy) profile for a tenant and then
      convert it to a logical network via GBP FaaS render Or

   b. Manually create a logical network via RESTCONF APIs.

4. to attach or detach an Endpoint to a logical switch or logical router

Create a fabric
~~~~~~~~~~~~~~~

Overview
^^^^^^^^

This tutorial walks users through the process of create a Fabric object

Prerequisites
^^^^^^^^^^^^^

A set of virtual switches (OVS) have to be registered or discovered by
ODL. Mininet is recommended to create a OVS network. After an OVS
network is created, set up the controller IP pointing to ODL IP address
in each of the OVS. From ODL, a physical topology can be viewed via
RESTCONF API.

Instructions
^^^^^^^^^^^^

-  Run the OpenDaylight distribution and install odl-faas-all from the
   Karaf console.

-  Go to
   `http://${ipaddress}:8181/apidoc/explorer/index.html <http://${ipaddress}:8181/apidoc/explorer/index.html>`__

-  Get the network topology after OVS switches are registered in the
   controller

-  Determine the nodes and links to be included in the to-be-defined
   Fabric object.

-  Execute create-fabric RESTCONF API with the corresponding JSON data
   as required.

Create virtual container for a tenant
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The purpose of this tutorial is to allocate network resources to a
tenant

Overview
^^^^^^^^

This tutorial walks users through the process of create a Fabric

Prerequisites
^^^^^^^^^^^^^

1 or more fabric objects have been created.

Instructions
^^^^^^^^^^^^

-  Run the OpenDaylight karaf distribution and install odl-faas-all
   feature from the Karaf console. >feature:install odl-rest-conf
   odl-faas-all odl-mdsal-apidoc

-  Go to
   `http://${ipaddress}:8181/apidoc/explorer/index.html <http://${ipaddress}:8181/apidoc/explorer/index.html>`__

-  Execute create-vcontainer with the following restconf API with
   corresponding JSON data >
   `http://${ipaddress}:8181/restconf/operations/vcontainer-topology:create-vcontainer <http://${ipaddress}:8181/restconf/operations/vcontainer-topology:create-vcontainer>`__

After a virtual container is created, fabric resource and appliance
resource can be assigned to the container object via the following
RESTConf API.

-  `http://${ipaddress}:8181/restconf/operations/vc-ld-node:add-vfabric-to-ld-node <http://${ipaddress}:8181/restconf/operations/vc-ld-node:add-vfabric-to-ld-node>`__

-  `http://${ipaddress}:8181/restconf/operations/vc-ld-node:add-appliance-to-ld-node <http://${ipaddress}:8181/restconf/operations/vc-ld-node:add-appliance-to-ld-node>`__

Create a logical network
~~~~~~~~~~~~~~~~~~~~~~~~

Overview
^^^^^^^^

This tutorial walks users through the process of create a logical
network for a tenant

Prerequisites
^^^^^^^^^^^^^

a virtual container has been created and assigned to the tenant

Instructions
^^^^^^^^^^^^

Currently there are two ways to create a logical network.

-  Option 1 is to use logical network RESTConf REST API and directly
   create individual network elements and connect them into a network

-  Option 2 is to define a GBP model and FaaS can map GBP model
   automatically into a logical network. Notes that for option 2, if the
   generated network requires some modification, we recommend modify the
   GBP model rather than change the network directly due to there is no
   synchronization from network back to GBP model in current release.

Manual Provisioning
^^^^^^^^^^^^^^^^^^^

To create a logical switch

-  `http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:logical-switches:logical-switches <http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:logical-switches:logical-switches>`__
   To create a logical router

-  `http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:logical-routers:logical-routers <http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:logical-routers:logical-routers>`__
   To attach a logical switch to a router

   -  Step 1: updating/adding a port A on the logical switch
      `http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:logical-switches:logical-switches <http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:logical-switches:logical-switches>`__

   -  Step 2: updating/adding a port B on the logical router
      `http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:logical-routers:logical-routers <http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:logical-routers:logical-routers>`__

   -  Step 3; create a link between the port A and B
      `http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:logical-edges:logical-edges <http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:logical-edges:logical-edges>`__

-  To add security policies (ACL or SFC) on a port
   `http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:faas-security-rules <http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:faas-security-rules>`__

-  To query the logical network just created
   `http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks <http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks>`__

Provision via GBP FaaS Render
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  Run the OpenDaylight distribution and install odl-faas-all and GBP
   faas render feature from the Karaf console.

-  Go to
   `http://${ipaddress}:8181/apidoc/explorer/index.html <http://${ipaddress}:8181/apidoc/explorer/index.html>`__

-  Execute "create GBP model" via GBP REST API. The GBP model then can
   be automatically mapped into a logical network.

Attach/detach an end point to a logical device
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Overview
^^^^^^^^

This tutorial walks users through the process of registering an End
Point to a logical device either logical switch or router. The purpose
of this API is to inform the FaaS where an endpoint physically attach.
The location information consists of the binding information between
physical port identifier and logical port information. The logical port
is indicated by the endpoint either Layer 2 attribute(MAC address) or
Layer 3 attribute (IP address) and logical network ID (VLAN ID). The
logical network ID is indirectly indicated the tenant ID since it is
mutual exclusive resource allocated to a tenant.

Prerequisites
^^^^^^^^^^^^^

The logical switch to which those end points are attached has to be
created beforehand. and the identifier of the logical switch is required
for the following RESTCONF calls.

Instructions
^^^^^^^^^^^^

-  Run the OpenDaylight distribution and install odl-faas-all from the
   Karaf console.

-  Go to
   `http://${ipaddress}:8181/apidoc/explorer/index.html <http://${ipaddress}:8181/apidoc/explorer/index.html>`__

-  Execute "attach end point " with the following RESTCONF API and
   corresponding JSON data:
   `http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:faas-endpoints-locations <http://${ipaddress}:8181/restconf/configuration/faas-logical-networks:tenant-logical-networks:faas-endpoints-locations>`__

