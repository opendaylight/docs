***************************
OpenDaylight Karaf Features
***************************

This section provides brief descriptions of the most commonly used Karaf
features developed by OpenDaylight project teams. They are presented in
alphabetical order. OpenDaylight installation instructions and a feature table
that lists installation commands and compatibility follow.

.. contents::
   :depth: 1
   :local:

AAA
===
Standards-compliant Authentication, Authorization and Accounting Services.
RESTCONF is the most common consumer of AAA, which installs the AAA features
automatically.  AAA provides:

* Support for persistent data stores
* Federation and SSO with OpenStack Keystone

This release of AAA includes experimental support for having the database of users and credentials stored in the cluster-aware MD-SAL datastore.

ALTO
====
Implements the Application-Layer Traffic Optimization (ALTO) base IETF protocol
to provide network information to applications. It defines abstractions and
services to enable simplified network views and network services to guide
application usage of network resources and includes five services:

#. Network Map Service - Provides batch information to ALTO clients in the forms
   of ALTO network maps.
#. Cost Map Service - Provides costs between defined groupings.
#. Filtered Map Service - Allows ALTO clients to query an ALTO server on ALTO
   network maps and/or cost maps based on additional parameters.
#. Endpoint Property Service - Allows ALTO clients to look up properties for
   individual endpoints.
#. Endpoint Cost Service - Allows an ALTO server to return costs directly
   amongst endpoints.

Border Gateway Protocol (including Link-state Distribution (BGP)
================================================================
Is a southbound plugin that provides support for Border Gateway Protocol
(including Link-state Distribution) as a source of L3 topology information.

Border Gateway Monitoring Protocol (BMP)
========================================
Is a southbound plugin that provides support for BGP Monitoring Protocol as a
monitoring station.

Control and Provisioning of Wireless Access Points (CAPWAP)
===========================================================
Enables OpenDaylight to manage CAPWAP-compliant wireless termination point (WTP)
network devices. Intelligent applications, e.g., radio planning, can be
developed by tapping into the operational states made available via REST APIs of
WTP network devices.

Controller Shield
=================
Creates a repository called the Unified-Security Plugin (USecPlugin) to provide
controller security information to northbound applications, such as the
following:

* Collating the source of different attacks reported in southbound plugins
* Gathering information on suspected controller intrusions and trusted
  controllers in the network

Information collected at the plugin may also be used to configure firewalls and create IP blacklists for the network.

Device Identification and Driver Management (DIDM)
==================================================
Provides device-specific functionality, which means that code enabling a feature
understands the capability and limitations of the device it runs on. For
example, configuring VLANs and adjusting FlowMods are features, and there may be
different implementations for different device types. Device-specific
functionality is implemented as Device Drivers.

DLUX
====
Web based OpenDaylight user interface that includes:

* An MD-SAL flow viewer
* Network topology visualizer
* A tool box and YANG model that execute queries and visualize the YANG tree

Fabric as a Service (FaaS)
==========================
Creates a common abstraction layer on top of a physical network so northbound
APIs or services can be more easily mapped onto the physical network as a
concrete device configuration.

Group Based Policy (GBP)
========================
Defines an application-centric policy model for OpenDaylight that separates
information about application connectivity requirements from information about
the underlying details of the network infrastructure. Provides support for:

* Integration with OpenStack Neutron
* Service Function Chaining
* OFOverlay support for NAT, table offsets

Internet of Things Data Management (IoTDM)
==========================================
Developing a data-centric middleware to act as a oneM2M_-compliant IoT Data
Broker (IoTDB) and enable authorized applications to retrieve IoT data uploaded
by any device.

Link Aggregation Control Protocol (LACP)
========================================
LACP can auto-discover and aggregate multiple links between an
OpenDaylight-controlled network and LACP-enabled endpoints or switches.

Location Identifier Separation Protocol (LISP) Flow Mapping Service (LISP)
==========================================================================
LISP (RFC6830) enables separation of Endpoint Identity (EID) from Routing
Location (RLOC) by defining an overlay in the EID space, which is mapped to the
underlying network in the RLOC space.

*LISP Mapping Service* provides the EID-to-RLOC mapping information, including
forwarding policy (load balancing, traffic engineering, and so on) to LISP
routers for tunneling and forwarding purposes. The LISP Mapping Service can
serve the mapping data to data plane nodes as well as to OpenDaylight
applications.

To leverage this service, a northbound API allows OpenDaylight applications and
services to define the mappings and policies in the LISP Mapping Service. A
southbound LISP plugin enables LISP data plane devices to interact with
OpenDaylight via the LISP protocol.

NEMO
====
Is a Domain Specific Language (DSL) for the abstraction of network models and
identification of operation patterns. NEMO enables network users/applications to
describe their demands for network resources, services, and logical operations
in an intuitive way that can be explained and executed by a language engine.

NETCONF
=======
Offers four features:

* odl-netconf-mdsal: NETCONF Northbound for MD-SAL and applications
* odl-netconf-connector: NETCONF Southbound plugin - configured through the
  configuration subsystem
* odl-netconf-topology: NETCONF Southbound plugin - configured through the
  MD-SAL configuration datastore
* odl-restconf: RESTCONF Northbound for MD-SAL and applications

NetIDE
======
Enables portability and cooperation inside a single network by using a
client/server multi-controller architecture. It provides an interoperability
layer allowing SDN Applications written for other SDN Controllers to run on
OpenDaylight. NetIDE details:

* Architecture follows a client/server model: other SDN controllers represent
  clients with OpenDaylight acting as the server.
* OpenFlow v1.0/v1.3 is the only southbound protocol supported in this initial
  release. We are planning for other southbound protocols in later releases.
* The developer documentation contains the protocol specifications required for
  developing plugins for other client SDN controllers.
* The NetIDE Configuration file contains the configurable elements for the
  engine.

NetVirt - Network Virtualization Services
=========================================
Several services and plugins in OpenDaylight work together to provide simplified
integration with the OpenStack Neutron framework. These services enable
OpenStack to offload network processing to OpenDaylight while enabling
OpenDaylight to provide enhanced network services to OpenStack.

NetVirt Services are at parity with the Neutron Reference Implementation in
OpenStack, including support for:

* L2/L3

  * The OpenDaylight Layer-3 Distributed Virtual Router is fully on par with
    what OpenStack offers and now provides completely decentralized Layer 3
    routing for OpenStack. ICMP rules for responding on behalf of the L3 router
    are fully distributed as well.
  * Full support for distributed Layer-2 switching and distributed IPv4 routing
    is now available.
  * NAT and Floating IPs
  * IPv6
  * MAC and IP learning

* Clustering - Full support for clustering and High Availability (HA) is
  available in the this OpenDaylight release. In particular, the OVSDB
  southbound plugin supports clustering that any application can use, and the
  Openstack network integration with OpenDaylight (through Net-Virt) has
  full clustering support. While there is no specific limit on cluster size, a
  3-node cluster has been tested extensively as part of the release.

* Security Groups - Security Group support is available and implemented using
  OpenFlow rules that provide superior functionality and performance over
  OpenStack Security Groups, which use IPTables. Security Groups also provide
  support for ConnTrack with stateful tracking of existing connections.
  Contract-based Security Groups require OVS v2.5 with contract support.

* Hardware Virtual Tunnel End Point (HW-VTEP) - Full HW-VTEP schema support has
  been implemented in the OVSDB protocol driver.

* Hardware VTEP for hardware switches

* Support for OVS and DPDK-accelerated OVS data paths

* Service Function Chaining

* L3VPN (BGPVPN), EVPN, ELAN

* Open vSwitch southbound support for quality of service and Queue configuration
  Load Balancer as service (LBaaS) with Distributed Virtual Router

* Network Virtualization User interface for DLUX

OpenFlow Configuration Protocol (OF-CONFIG)
===========================================
Provides a process for an Operation Context containing an OpenFlow Switch that uses OF-CONFIG to communicate with an OpenFlow Configuration Point, enabling remote configuration of OpenFlow datapaths.

OpenFlow plugin
===============
Supports connecting to OpenFlow-enabled network devices via the OpenFlow
specification. It currently supports OpenFlow versions 1.0 and 1.3.2.

In addition to support for the core OpenFlow specification, OpenDaylight
also includes preliminary support for the Table Type Patterns and
OF-CONFIG specifications.

Path Computation Element Protocol (PCEP)
========================================
Is a southbound plugin that provides support for performing Create, Read,
Update, and Delete (CRUD) operations on Multiprotocol Label Switching (MPLS)
tunnels in the underlying network.

Secure Network Bootstrapping Interface (SNBi)
=============================================
Leverages manufacturer-installed IEEE 802.1AR certificates to secure initial
communications for a zero-touch approach to bootstrapping using Docker. SNBi
devices and controllers automatically do the following:

#. Discover each other, which includes:

   a. Revealing the physical topology of the network
   #. Exposing each type of a device
   #. Assigning the domain for each device

#. Get assigned an IP-address
#. Establish secure IP connectivity

SNBi creates a basic infrastructure to host, run, and lifecycle-manage multiple
network functions within a network device, including individual network element
services, such as:

* Performance measurement
* Traffic-sniffing functionality
* Traffic transformation functionality

SNBi also provides a Linux side abstraction layer to forward elements as well
as enhancements to feature the abstraction and bootstrapping infrastructure.
You can also use the device type and domain information to initiate controller
federation processes.

Service Function Chaining (SFC)
===============================
Provides the ability to define an ordered list of network services (e.g.
firewalls, load balancers) that are then "stitched" together in the network to
create a service chain. SFC provides the chaining logic and APIs necessary for
OpenDaylight to provision a service chain in the network and an end-user
application for defining such chains. It includes:

* YANG models to express service function chains
* SFC receiver for Intent expressions from REST & RPC
* UI for service chain construction
* LISP support
* Function grouping for load balancing
* OpenFlow renderer for Network Service Headers, MPLS, and VLAN
* Southbound REST interface
* IP Tables-based classifier for grouping packets into selected service chains
* Integration with OpenDaylight GBP project
* Integration with OpenDaylight OVSDB NetVirt project

SNMP Plugin
===========
The SNMP southbound plugin allows applications acting as an SNMP Manager to
interact with devices that support an SNMP agent. The SNMP plugin implements a
general SNMP implementation, which differs from the SNMP4SDN as that project
leverages only select SNMP features to implement the specific use case of
making an SNMP-enabled device emulate some features of an OpenFlow-enabled
device.

SNMP4SDN
========
Provides a southbound SNMP plugin to optimize delivery of SDN controller
benefits to traditional/legacy ethernet switches through the SNMP interface. It
offers support for flow configuration on ACLs and enables flow configuration
via REST API and multi-vendor support.

Source-Group Tag Exchange Protocol (SXP)
========================================
Enables creation of a tag that allows you to filter traffic instead of using
protocol-specific information like addresses and ports. Via SXP an external
entity creates the tags, assigns them to traffic appropriately, and publishes
information about the tags to network devices so they can enforce the tags
appropriately.

More specifically, SXP Is an IETF-published control protocol designed to
propagate the binding between an IP address and a source group, which has a
unique source group tag (SGT). Within the SXP protocol, source groups with
common network policies are endpoints connecting to the network. SXP updates
the firewall with SGTs, enabling the firewalls to create topology-independent
Access Control Lists (ACLs) and provide ACL automation.

SXP source groups have the same meaning as endpoint groups in OpenDaylight’s
Group Based Policy (GBP), which is used to manipulate policy groups, so you can
use OpenDaylight GPB with SXP SGTs. The SXP topology-independent policy
definition and automation can be extended through OpenDaylight for other
services and networking devices.

Topology Processing Framework
=============================
Provides a framework for simplified aggregation and topology data query to
enable a unified topology view, including multi-protocol, Underlay, and
Overlay resources.

Time Series Data Repository (TSDR)
==================================
Creates a framework for collecting, storing, querying, and maintaining time
series data in OpenDaylight. You can leverage various data-driven applications
built on top of TSDR when you install a datastore and at least one collector.

Functionality of TDSR includes:

* Data Query Service - For external data-driven applications to query data from
  TSDR through REST APIs
* ElasticSearch - Use external elastic search engine with TSDR integrated support.
* NBI integration with Grafana - Allows visualization of data collected in TSDR
  using Grafana
* Data Aggregation Service - Periodically aggregates raw data into larger time granularities
* Data Purging Service - Periodically purges data from TSDR
* Data Collection Framework - Data Collection framework to allow plugging in of
  various types of collectors
* HSQL data store - Replacement of H2 data store to remove third party
  component dependency from TSDR
* Cassandra data store - Cassandra implementation of TSDR SPIs
* NetFlow data collector - Collect NetFlow data from network elements
* NetFlowV9 - version 9 Netflow collector
* sFlowCollector - Collects sFlow data from network elements
* SNMP Data Collector - Integrates with SNMP plugin to bring SNMP data into TSDR
* Syslog data collector - Collects syslog data from network elements
* Web Activity data collector - Collects ODL RESTCONF queries made to TSDR

TSDR has multiple features to enable the functionality above. To begin,
select one of these data stores:

* odl-tsdr-hsqldb-all
* odl-tsdr-hbase
* odl-tsdr-cassandra

Then select any “collectors” you want to use:

* odl-tsdr-openflow-statistics-collector
* odl-tsdr-netflow-statistics-collector
* odl-tsdr-sflow-statistics-collector
* odl-tsdr-controller-metrics-collector
* odl-tsdr-snmp-data-collector
* odl-tsdr-syslog-collector
* odl-tsdr-restconf-collector

Enable ElasticSearch support:

* odl-tsdr-elasticsearch

See these TSDR_Directions_ for more information.

Unified Secure Channel (USC)
============================
Provides a central server to coordinate encrypted communications between
endpoints. Its client-side agent informs the controller about its encryption
capabilities and can be instructed to encrypt select flows based on business
policies.

A possible use case is encrypting controller-to-controller communications;
however, the framework is very flexible, and client side software is available
for multiple platforms and device types, enabling USC and OpenDaylight to
centralize the coordination of encryption across a wide array of endpoint and
device types.

Virtual Tenant Network (VTN)
============================
Provides multi-tenant virtual network on an SDN controller, allowing you to
define the network with a look and feel of a conventional L2/L3 network. Once
the network is designed on VTN, it automatically maps into the underlying
physical network and is then configured on the individual switch, leveraging
the SDN control protocol.

By defining a logical plane with VTN, you can conceal the complexity of the
underlying network and better manage network resources to reduce network
configuration time and errors.

.. _BGPVPN_Blueprint: http://docs.openstack.org/developer/networking-bgpvpn/
.. _oneM2M: http://www.onem2m.org/
.. _TSDR_Directions: https://wiki.opendaylight.org/view/Grafana_Integration_with_TSDR_Step-by-Step
