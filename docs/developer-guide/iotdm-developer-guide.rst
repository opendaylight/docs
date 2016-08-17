IoTDM Developer Guide
=====================

Overview
--------

The Internet of Things Data Management (IoTDM) on OpenDaylight project
is about developing a data-centric middleware that will act as a oneM2M
compliant IoT Data Broker and enable authorized applications to retrieve
IoT data uploaded by any device. The OpenDaylight platform is used to
implement the oneM2M data store which models a hierarchical containment
tree, where each node in the tree represents an oneM2M resource.
Typically, IoT devices and applications interact with the resource tree
over standard protocols such as CoAP, MQTT, and HTTP. Initially, the
oneM2M resource tree is used by applications to retrieve data. Possible
applications are inventory or device management systems or big data
analytic systems designed to make sense of the collected data. But, at
some point, applications will need to configure the devices. Features
and tools will have to be provided to enable configuration of the
devices based on applications responding to user input, network
conditions, or some set of programmable rules or policies possibly
triggered by the receipt of data collected from the devices. The
OpenDaylight platform, with its rich unique cross-section of SDN
capabilities, NFV, and now IoT device and application management, can be
bundled with a targeted set of features and deployed anywhere in the
network to give the network service provider ultimate control. Depending
on the use case, the OpenDaylight IoT platform can be configured with
only IoT data collection capabilities where it is deployed near the IoT
devices and its footprint needs to be small, or it can be configured to
run as a highly scaled up and out distributed cluster with IoT, SDN and
NFV functions enabled and deployed in a high traffic data center.

oneM2M Architecture
-------------------

The architecture provides a framework that enables the support of the
oneM2M resource containment tree. The onem2m-core implements the MDSAL
RPCs defined in the onem2m-api YANG files. These RPCs enable oneM2M
resources to be created, read, updated, and deleted (CRUD), and also
enables the management of subscriptions. When resources are CRUDed, the
onem2m-notifier issues oneM2M notification events to interested
subscribers. TS0001: oneM2M Functional Architecture and TS0004: oneM2M
Service Layer Protocol are great reference documents to learn details of
oneM2M resource types, message flow, formats, and CRUD/N semantics. Both
of these specifications can be found at
http://onem2m.org/technical/published-documents

The oneM2M resource tree is modeled in YANG and essentially is a
meta-model for the tree. The oneM2M wire protocols allow the resource
tree to be constructed via HTTP or CoAP messages that populate nodes in
the tree with resource specific attributes. Each oneM2M resource type
has semantic behaviour associated with it. For example: a container
resource has attributes which control quotas on how many and how big the
collection of data or content instance objects that can exist below it
in the tree. Depending on the resource type, the oneM2M core software
implements and enforces the resource type specific rules to ensure a
well-behaved resource tree.

The resource tree can be simultaneously accessed by many concurrent
applications wishing to manage or access the tree, and also many devices
can be reporting in new data or sensor readings into their appropriate
place in the tree.

Key APIs and Interfaces
-----------------------

The API’s to access the oneM2M datastore are well documented in TS0004
(referred above) found on onem2m.org

RESTCONF is available too but generally HTTP and CoAP are used to access
the oneM2M data tree.

