Name
----

Internet of Things Data Management (IOTDM)

Repo Name
---------

iotdm

Description
-----------

The oneM2M Global Partnership is developing standards for
Machine‐to‐Machine (M2M) communications enabling large‐scale
implementation of the Internet‐of‐Things (IoT). It is progressing
specifications supporting communications between the oneM2M service
entities, and work is underway on oneM2M‐specific bindings for CoAP,
HTTP, and MQTT protocol implementations.

The proposal is to develop a data-centric middleware that will act as a
oneM2M compliant IoT Data Broker (IOTDM) and enable authorized
applications to retrieve IoT data uploaded by any device. The choice of
a data-centric paradigm, as opposed to a message-centric one, ensures
that the network - as a distributed IoT platform - provides a single
version of the global data space to interested applications. It also
optimizes network traffic and application processing as applications
and/or devices join and leave the IoT domain.

The IOTDM application (plugin) will interact with data producers (IoT
devices such as sensors, and IoT management systems) and data consumers
(analytics engines). The interaction is through a variety of IoT
Protocol plugins, such as CoAP, MQTT, HTTP, etc.

Overall Architecture
~~~~~~~~~~~~~~~~~~~~

.. figure:: Idm.jpg
   :alt: Idm.jpg

   Idm.jpg

References:

-  http://www.onem2m.org
-  Published specifications:
   http://www.onem2m.org/technical/published-documents
-  more oneM2M technical specifications:
   http://www.onem2m.org/technical/candidate-release-august-2014

   -  oneM2M Functional Architecture: TS0001
   -  oneM2M Service Layer Protocol: TS0004
   -  CoAP Protocol Binding: TS0008
   -  HTTP Protocol Binding: TS0009
   -  MQTT Protocol Binding: TS0010

-  oneM2M Webinar: Taking a look inside oneM2M
-  The Constrained Application Protocol (CoAP), RFC7252;
   https://datatracker.ietf.org/doc/rfc7252
-  Californium CoAP framework:
   http://eclipse.org/proposals/technology.californium/

Scope
-----

IOTDM Core:

-  Definition of a YANG model representing the oneM2M resource tree
   (TS0001, TS0004)
-  Definition and implementation of RPCs for CRUD and notifications
   (TS0004)
-  Integration of existing common IoT southbound protocols: CoAP
   (TS0008), MQTT (TS0010), HTTP (TS0009)
-  Security Manager – User Authentication and Policy Enforcement

   -  The entities ( devices, applications, other IOTDMs) need to be
      authenticated and and authorized to access the data store. We can
      leverage the AAA module under development
   -  Once authenticated, the clients accessing the data store must be
      limited to certain operations. oneM2M defines some mechanisms to
      address this need. We may explore other ways as we see fit (AAA
      authorization)

-  Federation – distributed set of IOTDM instances

   -  We expect that other oneM2M data stores will be deployed in the
      network. Some on ODL, some on different platforms. oneM2M defines
      some procedures to interconnect various data stores. We could
      implement them and others as we see fit.

South Bound Protocols:

-  We will implement as many IoT southbound wire-protocols as possible
   (as contributions permit): HTTP, CoAP, MQTT, XMPP, Thread…

Resources Committed (developers committed to working)
-----------------------------------------------------

Resources Committed (developers committed to working) Lionel Florit
(lflorit@cisco.com) John Burns (johnburn@cisco.com) Reinaldo Penno
(repenno@cisco.com) Jan Medved (jmedved@cisco.com) Cangji Wu
(canwu@cisco.com) Wenxin Shi (wenxshi@cisco.com) Kevin Blomseth
(kblomseth@echelon.com)

Initial Committers
------------------

Initial Committers:

-  [(lflorit@cisco.com Lionel Florit)]
-  [johnburn@cisco.com John Burns]
-  [rapenno@gmail.com Reinaldo Penno]
-  [jmedved@cisco.com Jan Medved]
-  [cyc79@etri.re.kr, Yunchul Choi , ETRI)]
-  [kblomseth@echelon.com, Kevin Blomseth, Echelon]

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding present in code or output of build
-  No vendor branding present in documentation

Meets Board Policy (including IPR)
----------------------------------
