.. _bgp-monitoring-protocol-user-guide-config-concepts:

BMP Monitoring Station
======================
The following section shows how to configure BMP basics, how to verify functionality and presents essential components of the plugin. Next samples demonstrate the plugin’s runtime configuration capability.

The monitoring station is responsible for received BMP PDUs processing and storage.
The default BMP server is listening at port *12345*.

.. contents:: Contents
   :depth: 2
   :local:

Configuration
^^^^^^^^^^^^^
This section shows the way to configure the BMP monitoring station via REST API.

Monitoring station configuration
''''''''''''''''''''''''''''''''
In order to change default's BMP monitoring station configuration, use following request.

**URL:** ``/restconf/config/odl-bmp-monitor-config:odl-bmp-monitors/bmp-monitor-config/example-bmp-monitor``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 4,5

   <bmp-monitor-config xmlns="urn:opendaylight:params:xml:ns:yang:bmp-monitor-config">
      <monitor-id>example-bmp-monitor</monitor-id>
      <server>
         <binding-port>12345</binding-port>
         <binding-address>0.0.0.0</binding-address>
      </server>
   </bmp-monitor-config>

@line 4: **binding-port** - The BMP server listening port.

@line 5: **binding-address** - The BMP server biding address.

.. note:: User may create multiple BMP monitoring station instances at runtime.

Active mode configuration
'''''''''''''''''''''''''
In order to enable active connection, use following request.

**URL:** ``/restconf/config/odl-bmp-monitor-config:odl-bmp-monitors/bmp-monitor-config/example-bmp-monitor``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 8,9,10

   <bmp-monitor-config xmlns="urn:opendaylight:params:xml:ns:yang:bmp-monitor-config">
      <monitor-id>example-bmp-monitor</monitor-id>
      <server>
         <binding-port>12345</binding-port>
         <binding-address>0.0.0.0</binding-address>
      </server>
      <monitored-router>
         <address>192.0.2.2</address>
         <port>1234</port>
         <active>true</active>
      </monitored-router>
   </bmp-monitor-config>

@line 8: **address** - The monitored router's IP address.

@line 9: **port** - The monitored router's port.

@line 10: **active** - Active mode set.

.. note:: User may configure active session establishment for multiple monitored routers.

MD5 authentication configuration
''''''''''''''''''''''''''''''''
In order to enable active connection, use following request.

**URL:** ``/restconf/config/odl-bmp-monitor-config:odl-bmp-monitors/bmp-monitor-config/example-bmp-monitor``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 8,9

   <bmp-monitor-config xmlns="urn:opendaylight:params:xml:ns:yang:bmp-monitor-config">
      <monitor-id>example-bmp-monitor</monitor-id>
      <server>
         <binding-port>12345</binding-port>
         <binding-address>0.0.0.0</binding-address>
      </server>
      <monitored-router>
         <address>192.0.2.2</address>
         <password>changeme</password>
      </monitored-router>
   </bmp-monitor-config>

@line 8: **address** - The monitored router's IP address.

@line 9: **password** - The TCP MD5 signature.

BMP Monitors Configuration Loader
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

BMP Monitors Configuration Loader allows user to define static initial
configuration for a BMP protocol instance.
This service will detect the creation of new configuration files following the
pattern ``odl-bmp-monitors-*.xml`` under the path ``etc/opendaylight/bgpcep``.
Once the file is processed, the defined configuration will be available from
the configuration Data Store.

.. note:: If the BMP Monitor instance is already present, no update or configuration will be applied.

**PATH:** ``etc/opendaylight/bgpcep/odl-bmp-monitors-config.xml``

.. code-block:: xml

    <odl-bmp-monitors xmlns="urn:opendaylight:params:xml:ns:yang:bmp-monitor-config">
        <bmp-monitor-config>
            <monitor-id>example-bmp-monitor</monitor-id>
            <server>
                <binding-port>12345</binding-port>
                <binding-address>0.0.0.0</binding-address>
            </server>
        </bmp-monitor-config>
    </odl-bmp-monitors>

BMP Monitor Configuration Example
'''''''''''''''''''''''''''''''''

BGP provides a feature providing a BMP Monitor configuration file example.
Once feature is installed defined configuration will be loaded and setup.

.. code-block:: console

   feature:install odl-bgpcep-bmp-config-example

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
