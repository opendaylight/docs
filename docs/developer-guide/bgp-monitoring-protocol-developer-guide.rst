.. _bgp-monitoring-protocol-developer-guide:

BGP Monitoring Protocol Developer Guide
=======================================

Overview
--------

This section provides an overview of **feature odl-bgpcep-bmp**. This
feature will install everything needed for BMP (BGP Monitoring Protocol)
including establishing the connection, processing messages, storing
information about monitored routers, peers and their Adj-RIB-In
(unprocessed routing information) and Post-Policy Adj-RIB-In and
displaying data in BGP RIBs overview. The OpenDaylight BMP plugin plays
the role of a monitoring station.

Key APIs and Interfaces
-----------------------

Session handling
~~~~~~~~~~~~~~~~

*32-bmp.xml* defines only bmp-dispatcher the parser should be using
(global-bmp-extensions).

.. code:: xml

     <module>
      <type xmlns:prefix="urn:opendaylight:params:xml:ns:yang:controller:bmp:impl">prefix:bmp-dispatcher-impl</type>
      <name>global-bmp-dispatcher</name>
       <bmp-extensions>
        <type xmlns:bmp-spi="urn:opendaylight:params:xml:ns:yang:controller:bmp:spi">bmp-spi:extensions</type>
        <name>global-bmp-extensions</name>
       </bmp-extensions>
       <boss-group>
        <type xmlns:netty="urn:opendaylight:params:xml:ns:yang:controller:netty">netty:netty-threadgroup</type>
        <name>global-boss-group</name>
       </boss-group>
       <worker-group>
        <type xmlns:netty="urn:opendaylight:params:xml:ns:yang:controller:netty">netty:netty-threadgroup</type>
        <name>global-worker-group</name>
      </worker-group>
     </module>

For user configuration of BMP, check User Guide.

Parser
~~~~~~

The base BMP parser includes messages and attributes from
https://tools.ietf.org/html/draft-ietf-grow-bmp-15

Registration
~~~~~~~~~~~~

All parsers and serializers need to be registered into *Extension
provider*. This *Extension provider* is configured in initial
configuration of the parser (*32-bmp.xml*).

.. code:: xml

     <module>
      <type xmlns:prefix="urn:opendaylight:params:xml:ns:yang:controller:bmp:spi">prefix:bmp-extensions-impl</type>
      <name>global-bmp-extensions</name>
      <extension>
       <type xmlns:bmp-spi="urn:opendaylight:params:xml:ns:yang:controller:bmp:spi">bmp-spi:extension</type>
       <name>bmp-parser-base</name>
      </extension>
     </module>

-  *bmp-parser-base* - will register parsers and serializers implemented
   in bmp-impl module

Parsing
~~~~~~~

Parsing of BMP elements is mostly done equally to BGP. Some of the BMP
messages includes wrapped BGP messages.

BMP Monitoring Station
~~~~~~~~~~~~~~~~~~~~~~

The BMP application (Monitoring Station) serves as message processor
incoming from monitored routers. The processed message is transformed
and relevant information is stored. Route information is stored in a BGP
RIB data structure.

BMP data is displayed only through one URL that is accessible from the
base BMP URL:

*`http://<controllerIP>:8181/restconf/operational/bmp-monitor:bmp-monitor <http://<controllerIP>:8181/restconf/operational/bmp-monitor:bmp-monitor>`__*

Each Monitor station will be displayed and it may contains multiple
monitored routers and peers within:

.. code:: xml

    <bmp-monitor xmlns="urn:opendaylight:params:xml:ns:yang:bmp-monitor">
     <monitor>
     <monitor-id>example-bmp-monitor</monitor-id>
      <router>
      <router-id>127.0.0.11</router-id>
       <status>up</status>
       <peer>
        <peer-id>20.20.20.20</peer-id>
        <as>72</as>
        <type>global</type>
        <peer-session>
         <remote-port>5000</remote-port>
         <timestamp-sec>5</timestamp-sec>
         <status>up</status>
         <local-address>10.10.10.10</local-address>
         <local-port>220</local-port>
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
        <address>10.10.10.10</address>
        <post-policy-rib>
         ...
        </post-policy-rib>
        <bgp-id>20.20.20.20</bgp-id>
        <stats>
         <timestamp-sec>5</timestamp-sec>
         <invalidated-cluster-list-loop>53</invalidated-cluster-list-loop>
         <duplicate-prefix-advertisements>16</duplicate-prefix-advertisements>
         <loc-rib-routes>100</loc-rib-routes>
         <duplicate-withdraws>11</duplicate-withdraws>
         <invalidated-as-confed-loop>55</invalidated-as-confed-loop>
         <adj-ribs-in-routes>10</adj-ribs-in-routes>
         <invalidated-as-path-loop>66</invalidated-as-path-loop>
         <invalidated-originator-id>70</invalidated-originator-id>
         <rejected-prefixes>8</rejected-prefixes>
        </stats>
       </peer>
       <name>name</name>
       <description>description</description>
       <info>some info;</info>
      </router>
     </monitor>
    </bmp-monitor>
    </source>

API Reference Documentation
---------------------------

Javadocs are generated while creating mvn:site and they are located in
target/ directory in each module.
