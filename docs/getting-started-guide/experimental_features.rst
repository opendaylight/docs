OpenDaylight Experimental Features
==================================

.. contents::
   :depth: 1
   :local:

Messaging4Transport
-------------------
Adds AMQP bindings to the MD-SAL, which makes all MD-SAL APIs available via
that mechanism. AMQP bindings integration exposes the MD-SAL datatree, rpcs,
and notifications via AMQP, when installed.

Network Intent Composition (NIC)
--------------------------------
Offers an interface with an abstraction layer for you to communicate
“intentions,” i.e., what you expect from the network.  The Intent model, which
is part of NIC's core architecture, describes your networking services
requirements and transforms the details of the desired state to OpenDaylight.
NIC has four features:

* odl-nic-core-hazelcast: Provides the following:

  * A distributed intent mapping service implemented using hazelcast, which
    stores metadata needed to process Intent correctly
  * An intent REST API to external applications for Create, Read, Update, and
    Delete (CRUD) operations on intents, conflict resolution, and event handling

* odl-nic-core-mdsal: Provides the following:

  * A distributed Intent mapping service implemented using MD-SAL, which stores
    metadata needed to process Intent correctly
  * An Intent rest API to external applications for CRUD operations on Intents,
    conflict resolution, and event handling

* odl-nic-console: Provides a Karaf CLI extension for Intent CRUD operations
  and mapping service operations
* Four renderers to provide specific implementations to render the Intent:

  * Virtual Tenant Network Renderer
  * Group Based Policy Renderer
  * OpenFlow Renderer
  * Network MOdeling Renderer

UNI Manager Plug-in (Unimgr)
----------------------------
Formed to initiate the development of data models and APIs that facilitate
OpenDaylight software applications’ and/or service orchestrators’ ability to
configure and provision connectivity services.

YANG-PUBSUB
-----------
An experimental feature Plugin that allows subscriptions to be placed on
targeted subtrees of YANG datastores residing on remote devices. Changes in
YANG objects within the remote subtree can be pushed to OpenDaylight as
specified and don’t require OpenDaylight to make continuous fetch requests.
YANG-PUBSUB is developed as a Java project. Development requires Maven version
3.1.1 or later.
