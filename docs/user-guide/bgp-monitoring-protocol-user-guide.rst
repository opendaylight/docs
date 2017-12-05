.. _bgp-monitoring-protocol-user-guide:
BGP Monitoring Protocol User Guide
==================================
This guide contains information on how to use the OpenDaylight BGP Monitoring Protocol (BMP) plugin.
It covers BMP basic concepts, supported capabilities, configuration and operations.

.. contents:: Contents
   :depth: 1
   :local:

Overview
--------
This section provides high-level overview of the BMP plugin, OpenDaylight implementation and BMP usage for SDN.

.. contents:: Contents
   :depth: 2
   :local:

BGP Monitoring Protocol
^^^^^^^^^^^^^^^^^^^^^^^
The BGP Monitoring Protocol (BMP) serves to monitor BGP sessions.
The BMP can be used to obtain route view instead of screen scraping.
The BMP provides access to unprocessed routing information (Adj-RIB-In) and processed routes (applied inbound policy) of monitored router's peer.
In addition, monitored router can provide periodic dump of statistics.

The BMP runs over TCP.
Both monitored router and monitoring station can be configured as active or passive party of the connection.
The passive party listens at particular port.
The router can be monitored by multiple monitoring stations.
BMP messages are sent by monitored router only, monitoring station supposed to collect and process data received over BMP.

.. figure:: ./images/bgpcep/bmp.png
   :align: center
   :alt: BMP

   The BMP overview - Monitoring Station, Monitored Router and Monitored Peers.


BMP in SDN
^^^^^^^^^^
The main concept of BMP is to monitor BGP sessions - monitoring station is aware of monitored peer's status, collects statistics and analyzes them in order to provide valuable information for network operators.

Moreover, BMP provides provides peer RIBs visibility, without need to establish BGP sessions.
Unprocessed routes may serve as a source of information for software-driven routing optimization.
In this case, SDN controller, a BMP monitoring station, collects routing information from monitored routers.
The routes are used in subsequent optimization procedures.


OpenDaylight BMP plugin
^^^^^^^^^^^^^^^^^^^^^^^
The OpenDaylight BMP plugin provides monitoring station implementation.
The plugin can establish BMP session with one or more monitored routers in order to collect routing and statistical information.

* Runtime configurable monitoring station
* Read-only routes and statistics view
* Supports various routing information types

.. figure:: ./images/bgpcep/bmp-plugin.png
   :align: center
   :alt: BMP plugin

   OpenDaylight BMP plugin overview.

.. important:: The BMP plugin is not storing historical data, it provides current snapshot only.

List of supported capabilities
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The BMP plugin implementation is based on Internet standards:

* `RFC7854 <https://tools.ietf.org/html/rfc7854>`_ - BGP Monitoring Protocol (BMP)

.. note:: The BMP plugin is capable to process various types of routing information (IP Unicast, EVPN, L3VPN, Link-State,...).
   Please, see complete list in BGP user guide.

Running BMP
-----------
This section explains how to install BMP plugin.

1. Install BMP feature - ``odl-bgpcep-bmp``.
   Also, for sake of this sample, it is required to install RESTCONF.
   In the Karaf console, type command:

   .. code-block:: console

      feature:install odl-restconf odl-bgpcep-bmp

2. The BMP plugin contains a default configuration, which is applied after the feature starts up.
   One instance of BMP monitoring station is created (named *example-bmp-monitor*), and its presence can be verified via REST:

   **URL:** ``/restconf/operational/bmp-monitor:bmp-monitor/monitor/example-bmp-monitor``

   **Method:** ``GET``

   **Response Body:**

   .. code-block:: xml

      <monitor xmlns="urn:opendaylight:params:xml:ns:yang:bmp-monitor">
          <monitor-id>example-bmp-monitor</monitor-id>
      </monitor>

BMP Monitoring Station
----------------------
The following section shows how to configure BMP basics, how to verify functionality and presents essential components of the plugin. Next samples demonstrate the plugin’s runtime configuration capability.

The monitoring station is responsible for received BMP PDUs processing and storage.
The default BMP server is listening at port *12345*.

.. contents:: Contents
   :depth: 2
   :local:

Configuration
^^^^^^^^^^^^^
This section shows the way to configure the BMP monitoring station via REST API.

.. warning:: The BMP monitoring station configuration is going to be changed in Carbon.
   This user-guide will be updated accordingly.

Monitoring station configuration
''''''''''''''''''''''''''''''''
In order to change default's BMP monitoring station configuration, use following request.
It is required to install ``odl-netconf-connector-ssh`` feature first.

**URL:** ``/restconf/config/network-topology:network-topology/topology/topology-netconf/node/controller-config/yang-ext:mount/config:modules/config:module/odl-bmp-impl-cfg:bmp-monitor-impl/example-bmp-monitor``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 4,5

    <module xmlns="urn:opendaylight:params:xml:ns:yang:controller:config">
      <name>example-bmp-monitor</name>
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">x:bmp-monitor-impl</type>
      <binding-port xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">12355</binding-port>
      <binding-address xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">0.0.0.0</binding-address>
      <bmp-dispatcher xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <type>bmp-dispatcher</type>
        <name>global-bmp-dispatcher</name>
      </bmp-dispatcher>
      <codec-tree-factory xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:md:sal:binding">x:binding-codec-tree-factory</type>
        <name>runtime-mapping-singleton</name>
      </codec-tree-factory>
      <extensions xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:spi">x:extensions</type>
        <name>global-rib-extensions</name>
      </extensions>
      <dom-data-provider xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:md:sal:dom">x:dom-async-data-broker</type>
        <name>pingpong-broker</name>
      </dom-data-provider>
    </module>

@line 4: **binding-port** - The BMP server listening port.

@line 5: **binding-address** - The BMP server biding address.

.. note:: User may create multiple BMP monitoring station instances at runtime.

Active mode configuration
'''''''''''''''''''''''''
In order to enable active connection, use following request.
It is required to install ``odl-netconf-connector-ssh`` feature first.

**URL:** ``/restconf/config/network-topology:network-topology/topology/topology-netconf/node/controller-config/yang-ext:mount/config:modules/config:module/odl-bmp-impl-cfg:bmp-monitor-impl/example-bmp-monitor``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 23,24,25

    <module xmlns="urn:opendaylight:params:xml:ns:yang:controller:config">
      <name>example-bmp-monitor</name>
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">x:bmp-monitor-impl</type>
      <bmp-dispatcher xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <type>bmp-dispatcher</type>
        <name>global-bmp-dispatcher</name>
      </bmp-dispatcher>
      <codec-tree-factory xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:md:sal:binding">x:binding-codec-tree-factory</type>
        <name>runtime-mapping-singleton</name>
      </codec-tree-factory>
      <extensions xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:spi">x:extensions</type>
        <name>global-rib-extensions</name>
      </extensions>
      <binding-address xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">0.0.0.0</binding-address>
          <dom-data-provider xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:md:sal:dom">x:dom-async-data-broker</type>
        <name>pingpong-broker</name>
      </dom-data-provider>
      <binding-port xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">12345</binding-port>
      <monitored-router xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <address xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">10.10.10.10</address>
        <port xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">1234</port>
        <active xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">true</active>
      </monitored-router>
    </module>

@line 23: **address** - The monitored router's IP address.

@line 24: **port** - The monitored router's port.

@line 25: **active** - Active mode set.

.. note:: User may configure active session establishment for multiple monitored routers.

MD5 authentication configuration
''''''''''''''''''''''''''''''''
In order to enable active connection, use following request.
It is required to install ``odl-netconf-connector-ssh`` feature first.

**URL:** ``/restconf/config/network-topology:network-topology/topology/topology-netconf/node/controller-config/yang-ext:mount/config:modules/config:module/odl-bmp-impl-cfg:bmp-monitor-impl/example-bmp-monitor``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 23,24

    <module xmlns="urn:opendaylight:params:xml:ns:yang:controller:config">
      <name>example-bmp-monitor</name>
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">x:bmp-monitor-impl</type>
      <bmp-dispatcher xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <type>bmp-dispatcher</type>
        <name>global-bmp-dispatcher</name>
      </bmp-dispatcher>
      <codec-tree-factory xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:md:sal:binding">x:binding-codec-tree-factory</type>
        <name>runtime-mapping-singleton</name>
      </codec-tree-factory>
      <extensions xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:spi">x:extensions</type>
        <name>global-rib-extensions</name>
      </extensions>
      <binding-address xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">0.0.0.0</binding-address>
          <dom-data-provider xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:md:sal:dom">x:dom-async-data-broker</type>
        <name>pingpong-broker</name>
      </dom-data-provider>
      <binding-port xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">12345</binding-port>
      <monitored-router xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">
        <address xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">11.11.11.11</address>
        <password xmlns="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">topsecret</password>
      </monitored-router>
    </module>

@line 23: **address** - The monitored router's IP address.

@line 24: **password** - The TCP MD5 signature.

Collector DB Tree
^^^^^^^^^^^^^^^^^

.. code-block:: console

   module: bmp-monitor
      +--rw bmp-monitor
         +--ro monitor* [monitor-id]
            +--ro monitor-id    monitor-id
            +--ro router* [router-id]
               +--ro name?          string
               +--ro description?   string
               +--ro info?          string
               +--ro router-id      router-id
               +--ro status?        status
               +--ro peer* [peer-id]
                  +--ro peer-id                 rib:peer-id
                  +--ro type                    peer-type
                  x--ro distinguisher
                  |  +--ro distinguisher-type?   distinguisher-type
                  |  +--ro distinguisher?        string
                  +--ro peer-distinguisher?     union
                  +--ro address                 inet:ip-address
                  +--ro as                      inet:as-number
                  +--ro bgp-id                  inet:ipv4-address
                  +--ro router-distinguisher?   string
                  +--ro peer-session
                  |  +--ro local-address      inet:ip-address
                  |  +--ro local-port         inet:port-number
                  |  +--ro remote-port        inet:port-number
                  |  +--ro sent-open
                  |  |  +--ro version?          protocol-version
                  |  |  +--ro my-as-number?     uint16
                  |  |  +--ro hold-timer        uint16
                  |  |  +--ro bgp-identifier    inet:ipv4-address
                  |  |  +--ro bgp-parameters*
                  |  |     +--ro optional-capabilities*
                  |  |        +--ro c-parameters
                  |  |           +--ro as4-bytes-capability
                  |  |           |  +--ro as-number?   inet:as-number
                  |  |           +--ro bgp-extended-message-capability!
                  |  |           +--ro multiprotocol-capability
                  |  |           |  +--ro afi?    identityref
                  |  |           |  +--ro safi?   identityref
                  |  |           +--ro graceful-restart-capability
                  |  |           |  +--ro restart-flags    bits
                  |  |           |  +--ro restart-time     uint16
                  |  |           |  +--ro tables* [afi safi]
                  |  |           |     +--ro afi          identityref
                  |  |           |     +--ro safi         identityref
                  |  |           |     +--ro afi-flags    bits
                  |  |           +--ro add-path-capability
                  |  |           |  +--ro address-families*
                  |  |           |     +--ro afi?            identityref
                  |  |           |     +--ro safi?           identityref
                  |  |           |     +--ro send-receive?   send-receive
                  |  |           +--ro route-refresh-capability!
                  |  +--ro received-open
                  |  |  +--ro version?          protocol-version
                  |  |  +--ro my-as-number?     uint16
                  |  |  +--ro hold-timer        uint16
                  |  |  +--ro bgp-identifier    inet:ipv4-address
                  |  |  +--ro bgp-parameters*
                  |  |     +--ro optional-capabilities*
                  |  |        +--ro c-parameters
                  |  |           +--ro as4-bytes-capability
                  |  |           |  +--ro as-number?   inet:as-number
                  |  |           +--ro bgp-extended-message-capability!
                  |  |           +--ro multiprotocol-capability
                  |  |           |  +--ro afi?    identityref
                  |  |           |  +--ro safi?   identityref
                  |  |           +--ro graceful-restart-capability
                  |  |           |  +--ro restart-flags    bits
                  |  |           |  +--ro restart-time     uint16
                  |  |           |  +--ro tables* [afi safi]
                  |  |           |     +--ro afi          identityref
                  |  |           |     +--ro safi         identityref
                  |  |           |     +--ro afi-flags    bits
                  |  |           +--ro add-path-capability
                  |  |           |  +--ro address-families*
                  |  |           |     +--ro afi?            identityref
                  |  |           |     +--ro safi?           identityref
                  |  |           |     +--ro send-receive?   send-receive
                  |  |           +--ro route-refresh-capability!
                  |  +--ro information
                  |  |  +--ro string-information*
                  |  |     +--ro string-tlv
                  |  |        +--ro string-info?   string
                  |  +--ro status?            status
                  |  +--ro timestamp-sec?     yang:timestamp
                  |  +--ro timestamp-micro?   yang:timestamp
                  +--ro stats
                  |  +--ro rejected-prefixes?                 yang:counter32
                  |  +--ro duplicate-prefix-advertisements?   yang:counter32
                  |  +--ro duplicate-withdraws?               yang:counter32
                  |  +--ro invalidated-cluster-list-loop?     yang:counter32
                  |  +--ro invalidated-as-path-loop?          yang:counter32
                  |  +--ro invalidated-originator-id?         yang:counter32
                  |  +--ro invalidated-as-confed-loop?        yang:counter32
                  |  +--ro adj-ribs-in-routes?                yang:gauge64
                  |  +--ro loc-rib-routes?                    yang:gauge64
                  |  +--ro per-afi-safi-adj-rib-in-routes
                  |  |  +--ro afi-safi* [afi safi]
                  |  |     +--ro afi      identityref
                  |  |     +--ro safi     identityref
                  |  |     +--ro count?   yang:gauge64
                  |  +--ro per-afi-safi-loc-rib-routes
                  |  |  +--ro afi-safi* [afi safi]
                  |  |     +--ro afi      identityref
                  |  |     +--ro safi     identityref
                  |  |     +--ro count?   yang:gauge64
                  |  +--ro updates-treated-as-withdraw?       yang:counter32
                  |  +--ro prefixes-treated-as-withdraw?      yang:counter32
                  |  +--ro duplicate-updates?                 yang:counter32
                  |  +--ro timestamp-sec?                     yang:timestamp
                  |  +--ro timestamp-micro?                   yang:timestamp
                  +--ro pre-policy-rib
                  |  +--ro tables* [afi safi]
                  |     +--ro afi           identityref
                  |     +--ro safi          identityref
                  |     +--ro attributes
                  |     |  +--ro uptodate?   boolean
                  |     +--ro (routes)?
                  +--ro post-policy-rib
                  |  +--ro tables* [afi safi]
                  |     +--ro afi           identityref
                  |     +--ro safi          identityref
                  |     +--ro attributes
                  |     |  +--ro uptodate?   boolean
                  |     +--ro (routes)?
                  +--ro mirrors
                     +--ro information?       bmp-msg:mirror-information-code
                     +--ro timestamp-sec?     yang:timestamp
                     +--ro timestamp-micro?   yang:timestamp


Operations
^^^^^^^^^^
The BMP plugin offers view of collected routes and statistical information from monitored peers.
To get top-level view of monitoring station:

**URL:** ``/restconf/operational/bmp-monitor:bmp-monitor/monitor/example-bmp-monitor``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,5,11,12,13,14,15,17,20,21,22,27,33,50,53

   <bmp-monitor xmlns="urn:opendaylight:params:xml:ns:yang:bmp-monitor">
      <monitor>
         <monitor-id>example-bmp-monitor</monitor-id>
            <router>
               <router-id>10.10.10.10</router-id>
               <name>name</name>
               <description>monitored-router</description>
               <info>monitored router;</info>
               <status>up</status>
               <peer>
                   <peer-id>20.20.20.20</peer-id>
                   <address>20.20.20.20</address>
                   <bgp-id>20.20.20.20</bgp-id>
                   <as>65000</as>
                   <type>global</type>
                   <peer-session>
                     <remote-port>1790</remote-port>
                     <timestamp-sec>0</timestamp-sec>
                     <status>up</status>
                     <local-address>10.10.10.10</local-address>
                     <local-port>2200</local-port>
                     <received-open>
                        <hold-timer>180</hold-timer>
                        <my-as-number>65000</my-as-number>
                        <bgp-identifier>20.20.20.20</bgp-identifier>
                     </received-open>
                     <sent-open>
                        <hold-timer>180</hold-timer>
                        <my-as-number>65000</my-as-number>
                        <bgp-identifier>65000</bgp-identifier>
                     </sent-open>
                   </peer-session>
                   <pre-policy-rib>
                     <tables>
                        <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</afi>
                        <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:unicast-subsequent-address-family</safi>
                        <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
                           <ipv4-route>
                              <prefix>10.10.10.0/24</prefix>
                              <attributes>
                              ...
                              </attributes>
                           </ipv4-route>
                        </ipv4-routes>
                        <attributes>
                           <uptodate>true</uptodate>
                        </attributes>
                     </tables>
                   </pre-policy-rib>
                   <post-policy-rib>
                     ...
                   </post-policy-rib>
                   <stats>
                     <timestamp-sec>0</timestamp-sec>
                     <invalidated-cluster-list-loop>0</invalidated-cluster-list-loop>
                     <duplicate-prefix-advertisements>0</duplicate-prefix-advertisements>
                     <loc-rib-routes>100</loc-rib-routes>
                     <duplicate-withdraws>0</duplicate-withdraws>
                     <invalidated-as-confed-loop>0</invalidated-as-confed-loop>
                     <adj-ribs-in-routes>10</adj-ribs-in-routes>
                     <invalidated-as-path-loop>0</invalidated-as-path-loop>
                     <invalidated-originator-id>0</invalidated-originator-id>
                     <rejected-prefixes>8</rejected-prefixes>
                  </stats>
               </peer>
         </router>
      </monitor>
   </bmp-monitor>

@line 3: **monitor-id** - The BMP monitoring station instance identifier.

@line 5: **router-id** - The monitored router IP address, serves as an identifier.

@line 11: **peer-id** - The monitored peer's BGP identifier, serves a an identifier.

@line 12: **address** - The IP address of the peer, associated with the TCP session.

@line 13: **bgp-id** - The BGP Identifier of the peer.

@line 14: **as** - The Autonomous System number of the peer.

@line 15: **type** - Identifies type of the peer - *Global Instance*, *RD Instance* or *Local Instance*

@line 17: **remote-port** - The peer's port number associated with TCP session.

@line 20: **local-address** - The IP address of the monitored router associated with the peering TCP session.

@line 21: **local-port** - The port number of the monitored router associated with the peering TCP session.

@line 22: **received-open** - The full OPEN message received by monitored router from the peer.

@line 27: **sent-open** - The full OPEN message send by monitored router to the peer.

@line 33: **pre-policy-rib** - The Adj-RIB-In that contains unprocessed routing information.

@line 50: **post-policy-rib** - The Post-Policy Ad-RIB-In that contains routes filtered by inbound policy.

@line 53: **stats** - Contains various statistics, periodically updated by the router.

-----

* To view collected information from particular monitored router:
      **URL:** ``/restconf/operational/bmp-monitor:bmp-monitor/monitor/example-bmp-monitor/router/10.10.10.10``

* To view collected information from particular monitored peer:
      **URL:** ``/restconf/operational/bmp-monitor:bmp-monitor/monitor/example-bmp-monitor/router/10.10.10.10/peer/20.20.20.20``

Test tools
----------
BMP test tool serves to test basic BMP functionality, scalability and performance.

BMP mock
^^^^^^^^
The BMP mock is a stand-alone Java application purposed to simulate a BMP-enabled router(s) and peers.
The simulator is capable to report dummy routes and statistics.
This application is not part of the OpenDaylight Karaf distribution, however it can be downloaded from OpenDaylight's Nexus (use latest release version):

``https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/bgpcep/bgp-bmp-mock``

Usage
'''''
The application can be run from command line:

.. code-block:: console

   java -jar bgp-bmp-mock-*-executable.jar


with optional input parameters:

.. code-block:: console

   --local_address <address> (optional, default 127.0.0.1)
      The IPv4 address where BMP mock is bind to.

   --remote_address <IP_ADDRESS:PORT,...>, -ra <IP_ADDRESS:PORT,...> 
      A list of IP addresses of BMP monitoring station, by default 127.0.0.1:12345

   --passive (optional, not present by default)
      This flags enables passive mode for simulated routers.

   --routers_count <0..N> (optional, default 1)
       An amount of BMP routers to be connected to the BMP monitoring station.

   --peers_count <0..N> (optional, default 0)
      An amount of peers reported by each BMP router.

   --pre_policy_routes <0..N> (optional, default 0)
      An amount of "pre-policy" simple IPv4 routes reported by each peer.

   --post_policy_routes <0..N> (optional, default 0)
      An amount of "post-policy" simple IPv4 routes reported by each peer.

   --log_level <FATAL|ERROR|INFO|DEBUG|TRACE> (optional, default INFO)
      Set logging level for BMP mock.

Troubleshooting
---------------
This section offers advices in a case OpenDaylight BMP plugin is not working as expected.

.. contents:: Contents
   :depth: 2
   :local:

BMP is not working...
^^^^^^^^^^^^^^^^^^^^^
* First of all, ensure that all required features are installed, local monitoring station and monitored router/peers configuration is correct.

  To list all installed features in OpenDaylight use the following command at the Karaf console:

  .. code-block:: console

     feature:list -i

* Check OpenDaylight Karaf logs:

  From Karaf console:

  .. code-block:: console

     log:tail

  or open log file: ``data/log/karaf.log``

  Possibly, a reason/hint for a cause of the problem can be found there.

* Try to minimize effect of other OpenDaylight features, when searching for a reason of the problem.

* Try to set DEBUG severity level for BMP logger via Karaf console commands, in order to collect more information:

  .. code-block:: console

     log:set DEBUG org.opendaylight.protocol.bmp

Bug reporting
^^^^^^^^^^^^^
Before you report a bug, check `BGPCEP Bugzilla <https://bugs.opendaylight.org/buglist.cgi?list_id=65849&product=bgpcep&resolution=--->`_ to ensure same/similar bug is not already filed there.

Write an e-mail to bgpcep-users@lists.opendaylight.org and provide following information:

#. State OpenDaylight version

#. Describe your use-case and provide as much details related to BMP as possible

#. Steps to reproduce

#. Attach Karaf log files, optionally packet captures, REST input/output
