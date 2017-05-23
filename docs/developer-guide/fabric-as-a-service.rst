.. _faas_dev_guide:

Fabric As A Service
===================

FaaS (Fabric As A service) has two layers of APIs. We describe the top
level API in the user guide. This document focuses on the Fabric level
API and describes each API’s semantics and example implementation. The
second layer defines an abstraction layer called *''Fabric*'' API. The
idea is to abstract network into a topology formed by a collections of
fabric objects other than varies of physical devices.Each Fabric object
provides a collection of unified services.The top level API enables
application developers or users to write applications to map high level
model such as GBP, Intent etc… into a logical network model, while the
lower level gives the application more control to individual fabric
object level. More importantly the Fabric API is more like SP (Service
Provider API) a fabric provider or vendor can implement the SPI based on
its own Fabric technique such as TRILL, SPB etc …

For how to use first level API operation, please refer to user guide for
more details.

FaaS Architecture
-----------------

FaaS Architecture is an 3 layered architecture, on the top is the FaaS
Application layer, in the middle is the Fabric manager and at the bottom
are different types of fabric objects. From bottom up, it is

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

FaaS renderer for GBP (Group Based Policy)
    FaaS renderer for GBP is an application of FaaS and provides the
    rendering service between GBP model and logical network model
    provided by Fabric Manager.

Fabric APIs and Interfaces
--------------------------

FaaS APIs have 4 groups as defined below

Fabric Provisioning API
    This set of APIs is used to create and remove Fabric Abstractions,
    in other words, those APIs is to provision the underlay networks and
    prepare to create overlay network(the logical network) on top of it.

Fabric Service API
    This set of APIs is used to create logical network over the Fabrics.

EndPoint API
    EndPoint API is used to bind a physical port which is the location
    of the attachment of an EndPoint happens or will happen.

OAM API
    Those APIs are for Operations, Administration and Maintenance
    purpose and In current release, OAM API is not implemented yet.

Fabric Provisioning API
~~~~~~~~~~~~~~~~~~~~~~~

-  `http://${ipaddress}:8181/restconf/operations/fabric:compose-fabric <http://${ipaddress}:8181/restconf/operations/fabric:compose-fabric>`__

-  `http://${ipaddress}:8181/restconf/operations/fabric:decompose-fabric <http://${ipaddress}:8181/restconf/operations/fabric:decompose-fabric>`__

-  `http://${ipaddress}:8181/restconf/operations/fabric:get-all-fabrics <http://${ipaddress}:8181/restconf/operations/fabric:get-all-fabrics>`__

Fabric Service API
~~~~~~~~~~~~~~~~~~

-  RESTCONF for creating Logical port, switch, router, routing entries
   and link. Among them, both switches and routers have ports. links
   connect ports.these 5 logical elements are basic building blocks of a
   logical network.

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:create-logical-switch <http://${ipaddress}:8181/restconf/operations/fabric-service:create-logical-switch>`__

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:rm-logical-switch <http://${ipaddress}:8181/restconf/operations/fabric-service:rm-logical-switch>`__

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:create-logical-router <http://${ipaddress}:8181/restconf/operations/fabric-service:create-logical-router>`__

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:rm-logical-router <http://${ipaddress}:8181/restconf/operations/fabric-service:rm-logical-router>`__

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:add-static-route <http://${ipaddress}:8181/restconf/operations/fabric-service:add-static-route>`__

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:create-logic-port <http://${ipaddress}:8181/restconf/operations/fabric-service:create-logic-port>`__

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:rm-logic-port <http://${ipaddress}:8181/restconf/operations/fabric-service:rm-logic-port>`__

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:create-gateway <http://${ipaddress}:8181/restconf/operations/fabric-service:create-gateway>`__

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:rm-gateway <http://${ipaddress}:8181/restconf/operations/fabric-service:rm-gateway>`__

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:port-binding-logical-to-fabric <http://${ipaddress}:8181/restconf/operations/fabric-service:port-binding-logical-to-fabric>`__

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:port-binding-logical-to-device <http://${ipaddress}:8181/restconf/operations/fabric-service:port-binding-logical-to-device>`__

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:add-port-function <http://${ipaddress}:8181/restconf/operations/fabric-service:add-port-function>`__

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:add-acl <http://${ipaddress}:8181/restconf/operations/fabric-service:add-acl>`__

   -  `http://${ipaddress}:8181/restconf/operations/fabric-service:del-acl <http://${ipaddress}:8181/restconf/operations/fabric-service:del-acl>`__

EndPoint API
~~~~~~~~~~~~

The following APIs is to bind the physical ports to the logical ports on
the logical switches:

-  `http://${ipaddress}:8181/restconf/operations/fabric-endpoint:register-endpoint <http://${ipaddress}:8181/restconf/operations/fabric-endpoint:register-endpoint>`__

-  `http://${ipaddress}:8181/restconf/operations/fabric-endpoint:unregister-endpoint <http://${ipaddress}:8181/restconf/operations/fabric-endpoint:unregister-endpoint>`__

-  `http://${ipaddress}:8181/restconf/operations/fabric-endpoint:locate-endpoint <http://${ipaddress}:8181/restconf/operations/fabric-endpoint:locate-endpoint>`__

Others API
~~~~~~~~~~

-  `http://${ipaddress}:8181/restconf/operations/fabric-resource:create-fabric-port <http://${ipaddress}:8181/restconf/operations/fabric-resource:create-fabric-port>`__

API Reference Documentation
---------------------------

Go to
`http://${ipaddress}:8181/restconf/apidoc/index.html <http://${ipaddress}:8181/restconf/apidoc/index.html>`__
and expand on *''FaaS*'' related panel for more APIs.

