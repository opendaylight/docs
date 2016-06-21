.. _install_odl:

Installing OpenDaylight
=======================

You complete the following steps to install your networking environment, with
specific instructions provided in the subsections below.

Before detailing the instructions for these, we address the following:
Java Runtime Environment (JRE) and operating system information
Target environment
Known issues and limitations


Install OpenDaylight
--------------------

Install the Karaf features
--------------------------
To install a feature, use the following command, where feature1 is the feature
name listed in the table below::

    feature:install <feature1>

You can install multiple features using the following command::


    feature:install <feature1> <feature2> ... <featureN-name>

.. note:: For compatibility reasons, you cannot enable all Karaf features
   simultaneously. The table below documents feature installation names and
   known incompatibilities.Compatibility values indicate the following:

* *all* - the feature can be run with other features.
* *self+all* - the feature can be installed with other features with a value of
  *all*, but may interact badly with other features that have a value of
  *self+all*. Not every combination has been tested.

Uninstalling features
^^^^^^^^^^^^^^^^^^^^^
To uninstall a feature, you must shut down OpenDaylight, delete the data
directory, and start OpenDaylight up again.

.. important:: Uninstalling a feature using the Karaf feature:uninstall command
   is not supported and can cause unexpected and undesirable behavior.

Listing available features
^^^^^^^^^^^^^^^^^^^^^^^^^^
To find the complete list of Karaf features, run the following command::

    feature:list

To list the installed Karaf features, run the following command::

    feature:list -i

Features to implement networking functionality provide release notes, which
you can find in the :ref:`proj_rel_notes` section.

Beryllium features
------------------

.. list-table:: Beryllium features
    :widths: 10 25 10 5
    :header-rows: 1

    * - Feature Name
      - Feature Description
      - Karaf feature name
      - Compatibility

    * - Authentication
      - Enables authentication with support for federation using Apache Shiro
      - odl-aaa-shiro
      - all

    * - BGP
      - Provides support for Border Gateway Protocol (including Link-State
        Distribution) as a source of L3 topology information
      - odl-bgpcep-bgp
      - all

    * - BMP
      - Provides support for BGP Monitoring Protocol as a monitoring station
      - odl-bgpcep-bmp
      - all

    * - DIDM
      - Device Identification and Driver Management
      - odl-didm-all
      - all

    * - Centinel
      - Provides interfaces for streaming analytics
      - odl-centinel-all
      - all

    * - DLUX
      - Provides an intuitive graphical user interface for OpenDaylight
      - odl-dlux-all
      - all
    * - Fabric as a Service (Faas)
      - Creates a common abstraction layer on top of a physical network so
        northbound APIs or services can be more easiliy mapped onto the
        physical network as a concrete device configuration
      - odl-faas-all
      - all

    * - Group Based Policy
      - Enables Endpoint Registry and Policy Repository REST APIs and associated
        functionality for Group Based Policy with the default renderer for
        OpenFlow renderers
      - odl-groupbasedpolicy-ofoverlay
      - all

    * - GBP User Interface
      - Enables a web-based user interface for Group Based Policy
      - odl-groupbasedpolicyi-ui
      - all

    * - GBP FaaS renderer
      - Enables the Fabric as a Service renderer for Group Based Policy
      - odl-groupbasedpolicy-faas
      - self+all

    * - GBP Neutron Support
      - Provides OpenStack Neutron support using Group Based Policy
      - odl-groupbasedpolicy-neutronmapper
      - all

    * - L2 Switch
      - Provides L2 (Ethernet) forwarding across connected OpenFlow switches and
        support for host tracking
      - odl-l2switch-switch-ui
      - self+all

    * - LACP
      - Enables support for the Link Aggregation Control Protocol
      - odl-lacp-ui
      - self+all

    * - LISP Flow Mapping
      - Enables LISP control plane services including the mapping system
        services REST API and LISP protocol SB plugin
      - odl-lispflowmapping-msmr
      - all

    * - NEMO CLI
      - Provides intent mappings and implementation with CLI for legacy devices
      - odl-nemo-cli-renderer
      - all

    * - NEMO OpenFlow
      - Provides intent mapping and implementation for OpenFlow devices
      - odl-nemo-openflow-renderer
      - self+all

    * - NetIDE
      - Enables portabilty and cooperation inside a single network by using a
        client/server multi-controller architecture
      - odl-netide-rest
      - all

    * - NETCONF over SSH
      - Provides support to manage NETCONF-enabled devices over SSH
      - odl-netconf-connector-ssh
      - all

    * - OF-CONFIG
      - Enables remote configuration of OpenFlow datapaths
      - odl-of-config-rest
      - all

    * - OVSDB OpenStack Neutron
      - OpenStack Network Virtualization using OpenDaylight's OVSDB support
      - odl-ovsdb-openstack
      - all

    * - OVSDB Southbound
      - OVSDB MDSAL southbound plugin for Open_vSwitch schema
      - odl-ovsdb-southbound-impl-ui
      - all

    * - OVSDB HWVTEP Southbound
      - OVSDB MDSAL hwvtep southbound plugin for the hw_vtep schema
      - odl-ovsdb-hwvtepsouthbound-ui
      - all

    * - OVSDB NetVirt SFC
      - OVSDB NetVirt support for SFC
      - odl-ovsdb-sfc-ui
      - all

    * - OpenFlow Flow Programming
      - Enables discovery and control of OpenFlow switches and the topoology
        between them
      - odl-openflowplugin-flow-services-ui
      - all

    * - OpenFlow Table Type Patterns
      - Allows OpenFlow Table Type Patterns to be manually associated with
        network elements
      - odl-ttp-all
      - all

    * - Packetcable PCMM
      - Enables flow-based dynamic QoS management of CMTS use in the DOCSIS
        infrastructure and a policy server
      - odl-packetcable-policy-server
      - self+all

    * - PCEP
      - Enables support for PCEP
      - odl-bgpcep-pcep
      - all

    * - RESTCONF API Support
      - Enables REST API access to the MD-SAL including the data store
      - odl-restconf
      - all

    * - SDNinterface
      - Provides support for interaction and sharing of state between
        (non-clustered) OpenDaylight instances
      - odl-sdninterfaceapp-all
      - all

    * - SFC over L2
      - Supports implementing Service Function Chaining using Layer 2
        forwarding
      - odl-sfcofl2
      - self+all

    * - SFC over LISP
      - Supports implementing Service Function Chaining using LISP
      - odl-sfclisp
      - all

    * - SFC over REST
      - Supports implementing Service Function Chaining using REST CRUD
        operations on network elements
      - odl-sfc-sb-rest
      - all

    * - SFC over VXLAN
      - Supports implementing Service Function Chaining using VXLAN tunnels
      - odl-sfc-ovs
      - self+all

    * - SNMP Plugin
      - Enables monitoring and control of network elements via SNMP
      - odl-snmp-plugin
      - all

    * - SNMP4SDN
      - Enables OpenFlow-like control of network elements via SNMP
      - odl-snmp4sdn-all
      - all

    * - SSSD Federated Authentication
      - Enables support for federated authentication using SSSD
      - odl-aaa-sssd-plugin
      - all

    * - Secure tag eXchange Protocol (SXP)
      - Enables distribution of shared tags to network devices
      - odl-sxp-controller
      - all

    * - Time Series Data Repository (TSDR)
      - Enables support for storing and querying time series data with the
        default data collector for OpenFlow statistics the default data store
        for HSQLDB
      - odl-tsdr-hsqldb-all
      - all

    * - TSDR Data Collectors
      - Enables support for various TSDR data sources (collectors) including
        OpenFlow statistics, NetFlow statistics, NetFlow statistics, SNMP data,
        Syslog, and OpenDaylight (controller) metrics
      - odl-tsdr-openflow-statistics-collector,
        odl-tsdr-netflow-statistics-collector,
        odl-tsdr-snmp-data-collector,
        odl-tsdr-syslog-collector,
        odl-tsdr-controller-metrics-collector
      - all

    * - TSDR Data Stores
      - Enables support for TSDR data stores including HSQLDB, HBase, and
        Cassandra
      - odl-tsdr-hsqldb, odl-tsdr-hbase, or odl-tsdr-cassandra
      - all

    * - Topology Processing Framework
      - Enables merged and filtered views of network topologies
      - odl-topoprocessing-framework
      - all

    * - Unified Secure Channel (USC)
      - Enables support for secure, remote connections to network devices
      - odl-usc-channel-ui
      - all

    * - VPN Service
      - Enables support for OpenStack VPNaaS
      - odl-vpnservice-core
      - all

    * - VTN Manager
      - Enables Virtual Tenant Network support
      - odl-vtn-manager-rest
      - self+all

    * - VTN Manager Neutron
      - Enables OpenStack Neutron support of VTN Manager
      - odl-vtn-manager-neutron
      - self+all


Other Beryllium features
------------------------

.. list-table:: Other Beryllium features
    :widths: 10 25 10 5
    :header-rows: 1

    * - Feature Name
      - Feature Description
      - Karaf feature name
      - Compatibility

    * - OpFlex
      - Provides OpFlex agent for Open vSwitch to enforce network policy, such
        as GBP, for locally-attached virtual machines or containers
      - n/a
      - all

    * - NeXt
      - Provides a developer toolkit for designing network-centric topology
        user interfaces
      - n/a
      - all


Experimental Beryllium Features
-------------------------------
The following functionality is labeled as experimental in OpenDaylight
Beryllium and should be used accordingly. In general, it is not supposed to be
used in production unless its limitations are well understood by those
deploying it.

.. list-table:: Other Beryllium features
    :widths: 10 25 10 5
    :header-rows: 1

    * - Feature Name
      - Feature Description
      - Karaf feature name
      - Compatibility

    * - Authorization
      - Enables configurable role-based authorization
      - odl-aaa-authz
      - all

    * - ALTO
      - Enables support for Application-Layer Traffic Optimization
      - odl-alto-core
      - self+all

    * - CAPWAP
      - Enables control of supported wireless APs
      - odl-capwap-ac-rest
      - all

    * - Clustered Authentication
      - Enables the use of the MD-SAL clustered data store for the
        authentication database
      - odl-aaa-authn-mdsal-cluster
      - all

    * - Controller Shield
      - Provides controller security information to northbound applications
      - odl-usecplugin
      - all

    * - GBP IO Visor Renderer
      - Provides support for rendering Group Based Policy to IO Visor
      - odl-groupbasedpolicy-iovisor
      - all

    * - Internet of Things Data Management
      - Enables support for the oneM2M specification
      - odl-iotdm-onem2m
      - all

    * - LISP Flow Mapping OpenStack Network Virtualization
      - Experimental support for OpenStack Neutron virtualization
      - odl-lispflowmapping-neutron
      - self+all

    * - Messaging4Transport
      - Introduces an AMQP Northbound to MD-SAL
      - odl-messaging4transport
      - all

    * - Network Intent Composition (NIC)
      - Provides abstraction layer for communcating network intents (including
        a distributed intent mapping service REST API) using either Hazelcast
        or the MD-SAL as the backing data store for intents
      - odl-nic-core-hazelcast or odl-nic-core-mdsal
      - all

    * - NIC Console
      - Provides a Karaf CLI extension for intent CRUD operations and mapping
        service operations
      - odl-nic-console
      - all

    * - NIC VTN renderer
      - Virtual Tenant Network renderer for Network Intent Composition
      - odl-nic-renderer-vtn
      - self+all

    * - NIC GBP renderer
      - Group Based Policy renderer for Network Intent Composition
      - odl-nic-renderer-gbp
      - self+all

    * - NIC OpenFlow renderer
      - OpenFlow renderer for Network Intent Composition
      - odl-nic-renderer-of
      - self+all

    * - NIC NEMO renderer
      - NEtwork MOdeling renderer for Network Intent Composition
      - odl-nic-renderer-nemo
      - self+all

    * - OVSDB NetVirt UI
      - OVSDB DLUX UI
      - odl-ovsdb-ui
      - all

    * - Secure Networking Bootstrap
      - Defines a SNBi domain and associated white lists of devices to be
        accommodated to the domain
      - odl-snbi-all
      - self+all

    * - UNI Manager
      - Initiates the development of data models and APIs to facilitate
        configuration and provisioning connectivity services for OpenDaylight
        applications and services
      - odl-unimgr
      - all

    * - YANG PUBSUB
      - Allows subscriptions to be placed on targeted subtrees of YANG
        datastores residing on remote devices to obviate the need for
        OpenDaylight to make continuous fetch requests
      - odl-yangpush-rest
      - all

Install support for REST APIs
-----------------------------
Most components that offer REST APIs will automatically load the RESTCONF API
Support component, but if for whatever reason they seem to be missing, install
the “odl-restconf” feature to activate this support.


Install the DLUX interface
--------------------------
OpenDaylight’s DLUX web interface draws information from topology and host
databases to display information about the topology of the network, flow
statistics, and host locations.

To integrate with OpenDaylight you must enable the DLUX Karaf feature. Each
feature can be enabled or disabled separately. Ensure that you have created a
topology and enabled the MD-SAL feature in the Karaf distribution before you
use DLUX for network management. For more information about enabling the Karaf
features for DLUX, refer to Enable_DLUX_Feature_.

MD-SAL clustering
-----------------
In the Beryllium release and newer, the odl-mdsal-broker installs MD-SAL
clustering automatically.

.. _Enable_DLUX_Feature: https://wiki.opendaylight.org/view/DLUX:Beryllium_System_Test_Plan#Enabling_The_Feature
