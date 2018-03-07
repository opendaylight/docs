.. _install_odl:

***********************
Installing OpenDaylight
***********************

You complete the following steps to install your networking environment, with
specific instructions provided in the subsections below.

Before detailing the instructions for these, we address the following:
Java Runtime Environment (JRE) and operating system information
Target environment
Known issues and limitations


Install OpenDaylight
====================

Downloading and installing OpenDaylight
---------------------------------------

The default distribution can be found on the OpenDaylight software
download page: http://www.opendaylight.org/software/downloads

The Karaf distribution has no features enabled by default. However, all
of the features are available to be installed.

.. note:: For compatibility reasons, you cannot enable all the features
          simultaneously. We try to document known incompatibilities in
          the `Install the Karaf features`_ section below.

Running the karaf distribution
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To run the Karaf distribution:

#. Unzip the zip file.
#. Navigate to the directory.
#. run ``./bin/karaf``.

For Example::

   $ ls distribution-karaf-0.7.x-Nitrogen.zip
   distribution-karaf-0.7.x-Nitrogen.zip
   $ unzip distribution-karaf-0.7.x-Nitrogen.zip
   Archive:  distribution-karaf-0.7.x-Nitrogen.zip
      creating: distribution-karaf-0.7.x-Nitrogen/
      creating: distribution-karaf-0.7.x-Nitrogen/configuration/
      creating: distribution-karaf-0.7.x-Nitrogen/data/
      creating: distribution-karaf-0.7.x-Nitrogen/data/tmp/
      creating: distribution-karaf-0.7.x-Nitrogen/deploy/
      creating: distribution-karaf-0.7.x-Nitrogen/etc/
      creating: distribution-karaf-0.7.x-Nitrogen/externalapps/
      ...
      inflating: distribution-karaf-0.7.x-Nitrogen/bin/start.bat
      inflating: distribution-karaf-0.7.x-Nitrogen/bin/status.bat
      inflating: distribution-karaf-0.7.x-Nitrogen/bin/stop.bat
   $ cd distribution-karaf-0.7.x-Nitrogen
   $ ./bin/karaf

       ________                       ________                .__  .__       .__     __
       \_____  \ ______   ____   ____ \______ \ _____  ___.__.\|  \| \|__\| ____ \|  \|___/  \|_
        /   \|   \\____ \_/ __ \ /    \ \|    \|  \\__  \<   \|  \|\|  \| \|  \|/ ___\\|  \|  \   __\
       /    \|    \  \|_> >  ___/\|   \|  \\|    `   \/ __ \\___  \|\|  \|_\|  / /_/  >   Y  \  \|
       \_______  /   __/ \___  >___\|  /_______  (____  / ____\|\|____/__\___  /\|___\|  /__\|
               \/\|__\|        \/     \/        \/     \/\/            /_____/      \/



* Press ``tab`` for a list of available commands
* Typing ``[cmd] --help`` will show help for a specific command.
* Press ``ctrl-d`` or type ``system:shutdown`` or ``logout`` to shutdown OpenDaylight.

.. note:: Please take a look at the :ref:`security_deployment_recommendations`
          and following sections under :ref:`security_considerations` if you're
          planning on running OpenDaylight outside of an isolated test lab
          environment.

Install the Karaf features
==========================
To install a feature, use the following command, where feature1 is the feature
name listed in the table below::

    feature:install <feature1>

You can install multiple features using the following command::


    feature:install <feature1> <feature2> ... <featureN-name>

.. note:: For compatibility reasons, you cannot enable all Karaf features
   simultaneously. The table below documents feature installation names and
   known incompatibilities.Compatibility values indicate the following:

* **all** - the feature can be run with other features.
* **self+all** - the feature can be installed with other features with a value of
  **all**, but may interact badly with other features that have a value of
  **self+all**. Not every combination has been tested.

Uninstalling features
---------------------
To uninstall a feature, you must shut down OpenDaylight, delete the data
directory, and start OpenDaylight up again.

.. important:: Uninstalling a feature using the Karaf feature:uninstall command
   is not supported and can cause unexpected and undesirable behavior.

Listing available features
--------------------------
To find the complete list of Karaf features, run the following command::

    feature:list

To list the installed Karaf features, run the following command::

    feature:list -i

Features to implement networking functionality provide release notes, which
you can find in the :ref:`proj_rel_notes` section.

Karaf running on Windows 10
---------------------------

Windows 10 cannot be identify by Karaf (equinox).
Issue occurs during installation of karaf features e.g.::

   opendaylight-user@root>feature:install odl-restconf
   Error executing command: Can't install feature odl-restconf/0.0.0:
   Could not start bundle mvn:org.fusesource.leveldbjni/leveldbjni-all/1.8-odl in feature(s) odl-akka-leveldb-0.7: The bundle "org.fusesource.leveldbjni.leveldbjni-all_1.8.0 [300]" could not be resolved. Reason: No match found for native code: META-INF/native/windows32/leveldbjni.dll; processor=x86; osname=Win32, META-INF/native/windows64/leveldbjni.dll; processor=x86-64; osname=Win32, META-INF/native/osx/libleveldbjni.jnilib; processor=x86; osname=macosx, META-INF/native/osx/libleveldbjni.jnilib; processor=x86-64; osname=macosx, META-INF/native/linux32/libleveldbjni.so; processor=x86; osname=Linux, META-INF/native/linux64/libleveldbjni.so; processor=x86-64; osname=Linux, META-INF/native/sunos64/amd64/libleveldbjni.so; processor=x86-64; osname=SunOS, META-INF/native/sunos64/sparcv9/libleveldbjni.so; processor=sparcv9; osname=SunOS

Workaround is to add

   org.osgi.framework.os.name = Win32

to the karaf file

   etc/system.properties

The workaround and further info are in this thread:
http://stackoverflow.com/questions/35679852/karaf-exception-is-thrown-while-installing-org-fusesource-leveldbjni


Karaf OpenDaylight Features
===========================

.. list-table:: Karaf OpenDaylight features
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
      - odl-dluxapps-applications
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
      - Enables support for collecting, storing and querying time series data.
        TSDR collects and supports the following collection data:
        * OpenFlow statistics
        * NETFLOW statistics
        * sFlow statistics
        * OpenFlow Controller metrics
        * SNMP data
        * SysLog data
        * RestConf data
        TSDR supports the following Data Stores:
        * HSQLDB
        * HBase
        * Cassandra
        TSDR Data Query REST API
        TSDR supports OpenDaylight RESTCONF and API interfaces
        for queries to all data stores.
        TSDR supports an integrated ElasticSearch query.
        TSDR supports a Grafana interface.

      - odl-tsdr-openflow-statistics-collector
        odl-tsdr-netflow-statistics-collector
        odl-tsdr-sflow-statistics-collector
        odl-tsdr-controller-metrics-collector
        odl-tsdr-snmp-data-collector
        odl-tsdr-syslog-collector
        odl-tsdr-restconf-collector

        odl-tsdr-core
        odl-tsdr-hsqldb
        odl-tsdr-hbase
        odl-tsdr-cassandra
      - all

    * - Topology Processing Framework
      - Enables merged and filtered views of network topologies
      - odl-topoprocessing-framework
      - all

    * - Unified Secure Channel (USC)
      - Enables support for secure, remote connections to network devices
      - odl-usc-channel-ui
      - all

    * - VTN Manager
      - Enables Virtual Tenant Network support
      - odl-vtn-manager-rest
      - self+all

    * - VTN Manager Neutron
      - Enables OpenStack Neutron support of VTN Manager
      - odl-vtn-manager-neutron
      - self+all


Other OpenDaylight features
===========================

.. list-table:: Other OpenDaylight features
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


Experimental OpenDaylight Features
==================================
The following functionality is labeled as experimental in this OpenDaylight
release and should be used accordingly. In general, it is not supposed to be
used in production unless its limitations are well understood by those
deploying it.

.. list-table:: Other features
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
=============================
Most components that offer REST APIs will automatically load the RESTCONF API
Support component, but if for whatever reason they seem to be missing, install
the “odl-restconf” feature to activate this support.
