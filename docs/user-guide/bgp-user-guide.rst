BGP User Guide
==============

Configuring BGP
---------------

The OpenDaylight Karaf distribution comes pre-configured with a baseline
BGP configuration. You can find it in the ``etc/opendaylight/karaf``
directory and it consists of two files:

``31-bgp.xml``
    defines the basic parser and RIB support

``41-bgp-example.xml``
    contains a sample configuration which needs to be customized to your
    deployment)

The next sections will describe how to configure BGP manually or using
RESTCONF.

RIB
~~~

The configuration of the Routing Information Base (RIB) is specified
using a block in the ``41-bgp-example.xml`` file.

.. code:: xml

    <module>
        <type>prefix:rib-impl</type>
        <name>example-bgp-rib</name>
        <rib-id>example-bgp-rib</rib-id>
        <local-as>64496</local-as>
        <bgp-id>192.0.2.2</bgp-id>
        <cluster-id>192.0.2.3</cluster-id>
        ...
    </module>

-  **type** - should always be set to ``prefix:rib-impl``

-  **name** and **rib-id** - BGP RIB Identifier, you can specify
   multiple BGP RIBs by having multiple the above ``module`` blocks.
   Each such RIB must have a unique rib-id and name.

-  **local-as** - the local AS number (where OpenDaylight is deployed),
   we use this in best path selection

-  **bgp-id** - the local BGP identifier (the IP of the VM where
   OpenDaylight is deployed), we use this in best path selection.

-  **cluster-id** - cluster identifier, optional, if not specified, BGP
   Identifier will be used

Depending on your BGP router, you might need to switch from linkstate
attribute type 99 to 29. Check with your router vendor. Change the field
iana-linkstate-attribute-type to true if your router supports type 29.
This snippet is located in ``31-bgp.xml`` file.

.. code:: xml

    <module>
     <type xmlns:prefix="urn:opendaylight:params:xml:ns:yang:controller:bgp:linkstate">prefix:bgp-linkstate</type>
     <name>bgp-linkstate</name>
     <iana-linkstate-attribute-type>true</iana-linkstate-attribute-type>
    </module>

-  **iana-linkstate-attribute-type** - IANA has issued an early
   allocation for the BGP linkstate path attribute (=29). To preserve he
   old value (=99) set this to to false; to use IANA assigned type set
   the value to true or remove it as it’s true by default.

BGP Peer
~~~~~~~~

The initial configuration is written so that it will be ignored to
prevent the client from starting with default configuration. Therefore
the first step is to uncomment the module containing bgp-peer.

.. code:: xml

    <module>
     <type xmlns:prefix="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">prefix:bgp-peer</type>
     <name>example-bgp-peer</name>
     <host>192.0.2.1</host>
     <holdtimer>180</holdtimer>
     <peer-role>ibgp</peer-role>
     <rib>
      <type xmlns:prefix="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">prefix:rib-instance</type>
      <name>example-bgp-rib</name>
     </rib>
     ...
    </module>

-  **name** - BGP Peer name, in this configuration file you specify
   multiple BGP Peers by replicating the above ``module`` block. Each
   peers must have a unique name.

-  **host** - IP address or hostname of BGP speaker where OpenDaylight
   should connect to the peer

-  **holdtimer** - hold time in seconds

-  **peer-role** - If peer role is not present, default value "ibgp"
   will be used (other allowed values are "ebgp" and "rr-client"). This
   field is case-sensitive.

-  **rib** - BGP RIB identifier

Configure Connection Attributes (Optional)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code:: xml

    <module>
       <type xmlns:prefix="urn:opendaylight:params:xml:ns:yang:controller:reconnectstrategy">prefix:timed-reconnect-strategy</type>
       <name>example-reconnect-strategy</name>
       <min-sleep>1000</min-sleep>
       <max-sleep>180000</max-sleep>
       <sleep-factor>2.00</sleep-factor>
       <connect-time>5000</connect-time>
       <executor>
           <type xmlns:netty="urn:opendaylight:params:xml:ns:yang:controller:netty">netty:netty-event-executor</type>
           <name>global-event-executor</name>
       </executor>
    </module>

-  **min-sleep** - minimum sleep time (miliseconds) in between reconnect
   tries

-  **max-sleep** - maximum sleep time (miliseconds) in between reconnect
   tries

-  **sleep-factor** - power factor of the sleep time between reconnect
   tries, i.e., the previous sleep time will be multiplied by this
   number to determine the next sleep time, but never exceed
   **max-sleep**

-  **connect-time** - how long BGP should wait (miliseconds) for the TCP
   connect attempt, overrides default connection timeout dictated by
   TCP.

BGP Speaker Configuration
~~~~~~~~~~~~~~~~~~~~~~~~~

The previous entries described configuration of a BGP connections
initiated by OpenDaylight. OpenDaylight can also accept incoming BGP
connections.

The configuration of BGP speaker is located in: ``41-bgp-example.xml``:

.. code:: xml

    <module>
        <type xmlns:prefix="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">prefix:bgp-peer-acceptor</type>
        <name>bgp-peer-server</name>

        <!--Default parameters-->
        <!--<binding-address>0.0.0.0</binding-address>-->
        <!--<binding-port>1790</binding-port>-->

        ...
        <!--Drops or accepts incoming BGP connection, every BGP Peer that should be accepted needs to be added to this registry-->
        <peer-registry>
            <type xmlns:prefix="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">prefix:bgp-peer-registry</type>
            <name>global-bgp-peer-registry</name>
        </peer-registry>
    </module>

-  Changing binding address: Uncomment tag binding-address and change
   the address to e.g. *127.0.0.1*. The default binding address is
   *0.0.0.0*.

-  Changing binding port: Uncomment tag binding-port and change the port
   to e.g. *1790*. The default binding port is *179* as specified in
   `RFC 4271 <http://tools.ietf.org/html/rfc4271>`__.

Incomming BGP Connections
~~~~~~~~~~~~~~~~~~~~~~~~~

**The BGP speaker drops all BGP connections from unknown BGP peers.**
The decision is made in component bgp-peer-registry that is injected
into the speaker (The registry is configured in ``31-bgp.xml``).

To add a BGP Peer configuration into the registry, it is necessary to
configure regular BGP peer just like in example in
``41-bgp-example.xml``. Notice that the BGP peer depends on the same
bgp-peer-registry as bgp-speaker:

.. code:: xml

    <module>
        <type xmlns:prefix="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">prefix:bgp-peer</type>
        <name>example-bgp-peer</name>
        <host>192.0.2.1</host>
        ...
        <peer-registry>
            <type xmlns:prefix="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">prefix:bgp-peer-registry</type>
            <name>global-bgp-peer-registry</name>
        </peer-registry>
        ...
    </module>

The BGP peer registers itself into the registry, which allows incoming
BGP connections handled by the bgp-speaker. (Config attribute
peer-registry is optional for now to preserve backwards compatibility).
With this configuration, the connection to 192.0.2.1 is initiated by
OpenDaylight but will also be accepted from 192.0.2.1. In case both
connections are being established, only one of them will be preserved
and the other will be dropped. The connection initiated from device with
lower BGP id will be dropped by the registry. Each BGP peer must be
configured in its own ``module`` block. Note, that the name of the
module needs to be unique, so if you are configuring more peers, when
changing the **host**, also change the **name**.

To configure a peer that only listens for incoming connections and
instruct OpenDaylight not to initiate the connection, add the
initiate-connection attribute to peer’s configuration and set it to
false:

.. code:: xml

    <module>
        <type xmlns:prefix="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">prefix:bgp-peer</type>
        <name>example-bgp-peer</name>
        <host>192.0.2.1</host>                         // IP address or hostname of the speaker
        <holdtimer>180</holdtimer>
        <initiate-connection>false</initiate-connection>  // Connection will not be initiated by ODL
        ...
    </module>

-  **initiate-connection** - if set to false OpenDaylight will not
   initiate connection to this peer. Default value is true.

BGP Application Peer
~~~~~~~~~~~~~~~~~~~~

A BGP speaker needs to register all peers that can be connected to it
(meaning if a BGP peer is not configured, the connection with
OpenDaylight won’t be successful). As a first step, configure RIB. Then,
instead of configuring regular peer, configure this application peer,
with its own application RIB. Change the bgp-peer-id, which is your
local BGP ID that will be used in BGP best path selection algorithm.

.. code:: xml

    <module>
     <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:bgp-application-peer</type>
     <name>example-bgp-peer-app</name>
     <bgp-peer-id>10.25.1.9</bgp-peer-id>
     <target-rib>
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:rib-instance</type>
      <name>example-bgp-rib</name>
     </target-rib>
     <application-rib-id>example-app-rib</application-rib-id>
     ...
    </module>

-  **bgp-peer-id** - the local BGP identifier (the IP of the VM where
   OpenDaylight is deployed), we use this in best path selection

-  **target-rib** - RIB ID of existing RIB where the data should be
   transferred

-  **application-rib-id** - RIB ID of local application RIB (all the
   routes that you put to OpenDaylight will be displayed here)

Configuration through RESTCONF
------------------------------

Another method to configure BGP is dynamically through RESTCONF. Instead
of restarting Karaf, install another feature, that provides you the
access to *restconf/config/* URLs.

::

    feature:install odl-netconf-connector-all

To check what modules you have currently configured, check following
link:
http://localhost:8181/restconf/config/network-topology:network-topology/topology/topology-netconf/node/controller-config/yang-ext:mount/config:modules/

This URL is also used to POST new configuration. If you want to change
any other configuration that is listed here, make sure you include the
correct namespaces. RESTCONF will tell you if some namespace is wrong.

To update an existing configuration use **PUT** and give the full path
to the element you wish to update.

It is vital that you respect the order of steps described in user guide.

RIB
~~~

First, configure the RIB. This module is already present in the
configuration, therefore we change only the parameters we need. In this
case, it’s **bgp-rib-id** and **local-as**.

**URL:**
*http://127.0.0.1:8181/restconf/config/network-topology:network-topology/topology/topology-netconf/node/controller-config/yang-ext:mount/config:modules/module/odl-bgp-rib-impl-cfg:rib-impl/example-bgp-rib*

**PUT:**

.. code:: xml

    <module xmlns="urn:opendaylight:params:xml:ns:yang:controller:config">
     <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:rib-impl</type>
     <name>example-bgp-rib</name>
     <session-reconnect-strategy xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:protocol:framework">x:reconnect-strategy-factory</type>
      <name>example-reconnect-strategy-factory</name>
     </session-reconnect-strategy>
     <rib-id xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">example-bgp-rib</rib-id>
     <extensions xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:spi">x:extensions</type>
      <name>global-rib-extensions</name>
     </extensions>
     <codec-tree-factory xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:md:sal:binding">x:binding-codec-tree-factory</type>
      <name>runtime-mapping-singleton</name>
     </codec-tree-factory>
     <tcp-reconnect-strategy xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:protocol:framework">x:reconnect-strategy-factory</type>
      <name>example-reconnect-strategy-factory</name>
     </tcp-reconnect-strategy>
     <data-provider xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:md:sal:binding">x:binding-async-data-broker</type>
      <name>pingpong-binding-data-broker</name>
     </data-provider>
     <local-as xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">64496</local-as>
     <bgp-dispatcher xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type>bgp-dispatcher</type>
      <name>global-bgp-dispatcher</name>
     </bgp-dispatcher>
     <dom-data-provider xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:md:sal:dom">x:dom-async-data-broker</type>
      <name>pingpong-broker</name>
     </dom-data-provider>
     <local-table xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type>bgp-table-type</type>
      <name>ipv4-unicast</name>
     </local-table>
     <local-table xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type>bgp-table-type</type>
      <name>ipv6-unicast</name>
     </local-table>
     <local-table xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type>bgp-table-type</type>
      <name>linkstate</name>
     </local-table>
     <local-table xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type>bgp-table-type</type>
      <name>ipv4-flowspec</name>
     </local-table>
     <local-table xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type>bgp-table-type</type>
      <name>ipv6-flowspec</name>
     </local-table>
     <local-table xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type>bgp-table-type</type>
      <name>labeled-unicast</name>
     </local-table>
     <bgp-rib-id xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">192.0.2.2</bgp-rib-id>
     <openconfig-provider xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp-openconfig-spi">x:bgp-openconfig-provider</type>
      <name>openconfig-bgp</name>
     </openconfig-provider>
    </module>

Depending on your BGP router, you might need to switch from linkstate
attribute type 99 to 29. Check with your router vendor. Change the field
iana-linkstate-attribute-type to true if your router supports type 29.
You can do that with the following RESTCONF operation:

**URL:**
*http://127.0.0.1:8181/restconf/config/network-topology:network-topology/topology/topology-netconf/node/controller-config/yang-ext:mount/config:modules/module/odl-bgp-linkstate-cfg:bgp-linkstate/bgp-linkstate*

**PUT:**

.. code:: xml

    <module xmlns="urn:opendaylight:params:xml:ns:yang:controller:config">
     <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:linkstate">x:bgp-linkstate</type>
     <name>bgp-linkstate</name>
     <iana-linkstate-attribute-type xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:linkstate">true</iana-linkstate-attribute-type>
    </module>

BGP Peer
~~~~~~~~

We also need to add a new module to configuration (bgp-peer). In this
case, the whole module needs to be configured. Please change values
**host**, **holdtimer** and **peer-role** (if necessary).

**URL:**
*http://127.0.0.1:8181/restconf/config/network-topology:network-topology/topology/topology-netconf/node/controller-config/yang-ext:mount/config:modules*

**POST:**

.. code:: xml

    <module xmlns="urn:opendaylight:params:xml:ns:yang:controller:config">
     <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:bgp-peer</type>
     <name>example-bgp-peer</name>
     <host xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">192.0.2.1</host>
     <holdtimer xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">180</holdtimer>
     <peer-role xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">ibgp</peer-role>
     <rib xmlns"urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:rib-instance</type>
      <name>example-bgp-rib</name>
     </rib>
     <peer-registry xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:bgp-peer-registry</type>
      <name>global-bgp-peer-registry</name>
     </peer-registry>
     <advertized-table xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:bgp-table-type</type>
      <name>ipv4-unicast</name>
     </advertized-table>
     <advertized-table xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:bgp-table-type</type>
      <name>ipv6-unicast</name>
     </advertized-table>
     <advertized-table xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:bgp-table-type</type>
      <name>linkstate</name>
     </advertized-table>
     <advertized-table xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:bgp-table-type</type>
      <name>ipv4-flowspec</name>
     </advertized-table>
     <advertized-table xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:bgp-table-type</type>
      <name>ipv6-flowspec</name>
     </advertized-table>
     <advertized-table xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:bgp-table-type</type>
      <name>labeled-unicast</name>
     </advertized-table>
    </module>

This is all necessary information that you need to get ODL connect to
your speaker.

BGP Application Peer
~~~~~~~~~~~~~~~~~~~~

Change the value **bgp-peer-id** which is your local BGP ID that will be
used in BGP Best Path Selection algorithm.

**URL:**
*http://127.0.0.1:8181/restconf/config/network-topology:network-topology/topology/topology-netconf/node/controller-config/yang-ext:mount/config:modules*

**POST:**

.. code:: xml

    <module xmlns="urn:opendaylight:params:xml:ns:yang:controller:config">
     <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:bgp-application-peer</type>
     <name>example-bgp-peer-app</name>
     <bgp-peer-id xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">10.25.1.9</bgp-peer-id> <!-- Your local BGP-ID that will be used in BGP Best Path Selection algorithm -->
     <target-rib xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">x:rib-instance</type>
      <name>example-bgp-rib</name>
      </target-rib>
     <application-rib-id xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">example-app-rib</application-rib-id>
     <data-broker xmlns="urn:opendaylight:params:xml:ns:yang:controller:bgp:rib:impl">
      <type xmlns:x="urn:opendaylight:params:xml:ns:yang:controller:md:sal:dom">x:dom-async-data-broker</type>
      <name>pingpong-broker</name>
     </data-broker>
    </module>

Tutorials
---------

Viewing BGP Topology
~~~~~~~~~~~~~~~~~~~~

This section summarizes how data from BGP can be viewed through
RESTCONF. Currently it is the only way to view the data.

Network Topology View
^^^^^^^^^^^^^^^^^^^^^

The URL for network topology is:
http://localhost:8181/restconf/operational/network-topology:network-topology/

If BGP is configured properly, it should display output similar to:

.. code:: xml

    <network-topology>
     <topology>
      <topology-id>pcep-topology</topology-id>
      <topology-types>
       <topology-pcep/>
      </topology-types>
     </topology>
     <topology>
      <server-provided>true</server-provided>
      <topology-id>example-ipv4-topology</topology-id>
      <topology-types/>
     </topology>
     <topology>
      <server-provided>true</server-provided>
      <topology-id>example-linkstate-topology</topology-id>
      <topology-types/>
     </topology>
    </network-topology>

BGP topology information as learned from BGP peers are is in three
topologies (if all three are configured):

-  **example-linkstate-topology** - displays links and nodes advertised
   through linkstate update messages

   -  http://localhost:8181/restconf/operational/network-topology:network-topology/topology/example-linkstate-topology

-  **example-ipv4-topology** - display IPv4 addresses of nodes in the
   topology

   -  http://localhost:8181/restconf/operational/network-topology:network-topology/topology/example-ipv4-topology

-  **example-ipv6-topology** - display IPv6 addresses of nodes in the
   topology

   -  http://localhost:8181/restconf/operational/network-topology:network-topology/topology/example-ipv6-topology

Route Information Base (RIB) View
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Another view of BGP data is through **BGP RIBs**, located here:
http://localhost:8181/restconf/operational/bgp-rib:bgp-rib/

There are multiple RIBs configured:

-  AdjRibsIn (per Peer) : Adjacency RIBs In, BGP routes as they come
   from BGP Peer

-  EffectiveRib (per Peer) : BGP routes after applying Import policies

-  LocRib (per RIB) : Local RIB, BGP routes from all peers

-  AdjRibsOut (per Peer) : BGP routes that will be advertizes, after
   applying Export policies

This is how the empty output looks like, when address families for IPv4
Unicast, IPv6 Unicast, IPv4 Flowspec, IPv6 Flowspec, IPv4 Labeled
Unicast and Linkstate were configured:

.. code:: xml

    <loc-rib xmlns="urn:opendaylight:params:xml:ns:yang:bgp-rib">
      <tables>
        <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv6-address-family</afi>
        <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:unicast-subsequent-address-family</safi>
        <attributes>
          <uptodate>false</uptodate>
        </attributes>
        <ipv6-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
        </ipv6-routes>
      </tables>
      <tables>
        <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</afi>
        <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:unicast-subsequent-address-family</safi>
        <attributes>
          <uptodate>false</uptodate>
        </attributes>
        <ipv4-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
        </ipv4-routes>
      </tables>
      <tables>
        <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</afi>
        <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-flowspec">x:flowspec-subsequent-address-family</safi>
        <attributes>
          <uptodate>false</uptodate>
        </attributes>
        <flowspec-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-flowspec">
        </flowspec-routes>
      </tables>
      <tables>
        <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv6-address-family</afi>
        <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-flowspec">x:flowspec-subsequent-address-family</safi>
        <attributes>
          <uptodate>false</uptodate>
        </attributes>
        <flowspec-ipv6-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-flowspec">
        </flowspec-ipv6-routes>
      </tables>
      <tables>
        <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</afi>
        <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-labeled-unicast">x:labeled-unicast-subsequent-address-family</safi>
        <attributes>
          <uptodate>false</uptodate>
        </attributes>
        <labeled-unicast-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-labeled-unicast">
        </labeled-unicast-routes>
      </tables>
      <tables>
        <afi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-linkstate">x:linkstate-address-family</afi>
        <safi xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-linkstate">x:linkstate-subsequent-address-family</safi>
        <attributes>
          <uptodate>false</uptodate>
        </attributes>
        <linkstate-routes xmlns="urn:opendaylight:params:xml:ns:yang:bgp-linkstate">
        </linkstate-routes>
      </tables>
    </loc-rib>

You can see details for each AFI by expanding the RESTCONF link:

-  **IPv4 Unicast** :
   http://localhost:8181/restconf/operational/bgp-rib:bgp-rib/rib/example-bgp-rib/loc-rib/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/ipv4-routes

-  **IPv6 Unicast** :
   http://localhost:8181/restconf/operational/bgp-rib:bgp-rib/rib/example-bgp-rib/loc-rib/tables/bgp-types:ipv6-address-family/bgp-types:unicast-subsequent-address-family/ipv6-routes

-  **IPv4 Labeled Unicast** :
   http://localhost:8181/restconf/operational/bgp-rib:bgp-rib/rib/example-bgp-rib/loc-rib/tables/bgp-types:ipv4-address-family/bgp-labeled-unicast:labeled-unicast-subsequent-address-family/bgp-labeled-unicast:labeled-unicast-routes

-  **IPv4 Flowspec** :
   http://localhost:8181/restconf/operational/bgp-rib:bgp-rib/rib/example-bgp-rib/loc-rib/tables/bgp-types:ipv4-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-routes

-  **IPv6 Flowspec** :
   http://localhost:8181/restconf/operational/bgp-rib:bgp-rib/rib/example-bgp-rib/loc-rib/tables/bgp-types:ipv6-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-ipv6-routes

-  **Linkstate** :
   http://localhost:8181/restconf/operational/bgp-rib:bgp-rib/rib/example-bgp-rib/loc-rib/tables/bgp-linkstate:linkstate-address-family/bgp-linkstate:linkstate-subsequent-address-family/linkstate-routes

Populate RIB
~~~~~~~~~~~~

If an application peer is configured, you can populate its RIB by making
POST calls to RESTCONF like the following.

IPv4 Unicast
^^^^^^^^^^^^

**Add route:**

**URL:**
http://localhost:8181/restconf/config/bgp-rib:application-rib/example-app-rib/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes/

-  where example-app-rib is your application RIB id (that you specified
   in the configuration) and tables specifies AFI and SAFI of the data
   that you want to add.

**Method:** POST

**Content-Type:** application/xml

.. code:: xml

     <?xml version="1.0" encoding="UTF-8" standalone="no"?>
      <ipv4-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
       <prefix>1.1.1.1/32</prefix>
       <attributes>
        <ipv4-next-hop>
         <global>199.20.160.41</global>
        </ipv4-next-hop><as-path/>
        <multi-exit-disc>
         <med>0</med>
        </multi-exit-disc>
        <local-pref>
         <pref>100</pref>
        </local-pref>
        <originator-id>
         <originator>41.41.41.41</originator>
        </originator-id>
        <origin>
         <value>igp</value>
        </origin>
        <cluster-id>
         <cluster>40.40.40.40</cluster>
        </cluster-id>
       </attributes>
      </ipv4-route>

The request results in **204 No content**. This is expected.

**Delete route:**

**URL:**
http://localhost:8181/restconf/config/bgp-rib:application-rib/example-app-rib/tables/bgp-types:ipv4-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv4-routes/bgp-inet:ipv4-route/<route-id>

**Method:** DELETE

IPv6 Unicast
^^^^^^^^^^^^

**Add route:**

**URL:**
http://localhost:8181/restconf/config/bgp-rib:application-rib/example-app-rib/tables/bgp-types:ipv6-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv6-routes/

**Method:** POST

**Content-Type:** application/xml

.. code:: xml

      <ipv6-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-inet">
       <prefix>2001:db8:30::3/128</prefix>
       <attributes>
        <ipv6-next-hop>
         <global>2001:db8:1::6</global>
        </ipv6-next-hop>
        <as-path/>
        <origin>
         <value>egp</value>
        </origin>
       </attributes>
      </ipv6-route>

The request results in **204 No content**. This is expected.

**Delete route:**

**URL:**
http://localhost:8181/restconf/config/bgp-rib:application-rib/example-app-rib/tables/bgp-types:ipv6-address-family/bgp-types:unicast-subsequent-address-family/bgp-inet:ipv6-routes/bgp-inet:ipv6-route/<route-id>

**Method:** DELETE

IPv4 Labeled Unicast
^^^^^^^^^^^^^^^^^^^^

**Add route:**

**URL:**
http://localhost:8181/restconf/config/bgp-rib:application-rib/example-app-rib/tables/bgp-types:ipv4-address-family/bgp-labeled-unicast:labeled-unicast-subsequent-address-family/bgp-labeled-unicast:labeled-unicast-routes

**Method:** POST

**Content-Type:** application/xml

.. code:: xml

      <labeled-unicast-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-labeled-unicast">
       <route-key>label1</route-key>
       <prefix>1.1.1.1/32</prefix>
       <label-stack>
        <label-value>123</label-value>
       </label-stack>
       <label-stack>
        <label-value>456</label-value>
       </label-stack>
       <label-stack>
        <label-value>342</label-value>
       </label-stack>
       <attributes>
        <ipv4-next-hop>
         <global>199.20.160.41</global>
        </ipv4-next-hop>
        <origin>
         <value>igp</value>
        </origin>
        <as-path/>
        <local-pref>
         <pref>100</pref>
        </local-pref>
       </attributes>
      </labeled-unicast-route>

The request results in **204 No content**. This is expected.

**Delete route:**

**URL:**
http://localhost:8181/restconf/config/bgp-rib:application-rib/example-app-rib/tables/bgp-types:ipv4-address-family/bgp-labeled-unicast:labeled-unicast-subsequent-address-family/bgp-labeled-unicast:labeled-unicast-routes/bgp-labeled-unicast:labeled-unicast-route/<route-id>

**Method:** DELETE

IPv4 Flowspec
^^^^^^^^^^^^^

**Add route:**

**URL:**
http://localhost:8181/restconf/config/bgp-rib:application-rib/example-app-rib/tables/bgp-types:ipv4-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-routes

**Method:** POST

**Content-Type:** application/xml

.. code:: xml

    <flowspec-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-flowspec">
      <route-key>flow1</route-key>
      <flowspec>
        <destination-prefix>192.168.0.1/32</destination-prefix>
      </flowspec>
      <flowspec>
        <source-prefix>10.0.0.1/32</source-prefix>
      </flowspec>
      <flowspec>
        <protocol-ips>
          <op>equals end-of-list</op>
          <value>6</value>
        </protocol-ips>
      </flowspec>
      <flowspec>
        <ports>
          <op>equals end-of-list</op>
          <value>80</value>
        </ports>
      </flowspec>
      <flowspec>
        <destination-ports>
          <op>greater-than</op>
          <value>8080</value>
        </destination-ports>
        <destination-ports>
          <op>and-bit less-than end-of-list</op>
          <value>8088</value>
        </destination-ports>
      </flowspec>
      <flowspec>
        <source-ports>
          <op>greater-than end-of-list</op>
          <value>1024</value>
        </source-ports>
      </flowspec>
      <flowspec>
        <types>
          <op>equals end-of-list</op>
          <value>0</value>
        </types>
      </flowspec>
      <flowspec>
        <codes>
          <op>equals end-of-list</op>
          <value>0</value>
        </codes>
      </flowspec>
      <flowspec>
        <tcp-flags>
          <op>match end-of-list</op>
          <value>32</value>
        </tcp-flags>
      </flowspec>
      <flowspec>
        <packet-lengths>
          <op>greater-than</op>
          <value>400</value>
        </packet-lengths>
        <packet-lengths>
          <op>and-bit less-than end-of-list</op>
           <value>500</value>
        </packet-lengths>
      </flowspec>
      <flowspec>
        <dscps>
          <op>equals end-of-list</op>
          <value>20</value>
        </dscps>
      </flowspec>
      <flowspec>
        <fragments>
          <op>match end-of-list</op>
          <value>first</value>
        </fragments>
      </flowspec>
      <attributes>
        <origin>
          <value>igp</value>
        </origin>
        <as-path/>
        <local-pref>
          <pref>100</pref>
        </local-pref>
        <extended-communities>
        ....
        </extended-communities>
      </attributes>
    </flowspec-route>

**Flowspec Extended Communities (Actions):**

.. code:: xml

      <extended-communities>
        <transitive>true</transitive>
        <traffic-rate-extended-community>
          <informative-as>123</informative-as>
          <local-administrator>AAAAAA==</local-administrator>
        </traffic-rate-extended-community>
      </extended-communities>

      <extended-communities>
        <transitive>true</transitive>
        <traffic-action-extended-community>
          <sample>true</sample>
          <terminal-action>false</terminal-action>
        </traffic-action-extended-community>
      </extended-communities>

      <extended-communities>
        <transitive>true</transitive>
        <redirect-extended-community>
          <global-administrator>123</global-administrator>
          <local-administrator>AAAAew==</local-administrator>
        </redirect-extended-community>
      </extended-communities>

      <extended-communities>
        <transitive>true</transitive>
        <redirect-ipv4>
          <global-administrator>192.168.0.1</global-administrator>
          <local-administrator>12345</local-administrator>
        </redirect-ipv4>
      </extended-communities>

      <extended-communities>
        <transitive>true</transitive>
        <redirect-as4>
          <global-administrator>64495</global-administrator>
          <local-administrator>12345</local-administrator>
        </redirect-as4>
      </extended-communities>

      <extended-communities>
        <transitive>true</transitive>
        <redirect-ip-nh-extended-community>
          <copy>false</false>
        </redirect-ip-nh-extended-community>
      </extended-communities>

      <extended-communities>
        <transitive>true</transitive>
        <traffic-marking-extended-community>
          <global-administrator>20</global-administrator>
        </traffic-marking-extended-community>
      </extended-communities>

The request results in **204 No content**. This is expected.

**Delete route:**

**URL:**
http://localhost:8181/restconf/config/bgp-rib:application-rib/example-app-rib/tables/bgp-types:ipv4-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-routes/bgp-flowspec:flowspec-route/<route-id>

**Method:** DELETE

IPv6 Flowspec
^^^^^^^^^^^^^

**Add route:**

**URL:**
http://localhost:8181/restconf/config/bgp-rib:application-rib/example-app-rib/tables/bgp-types:ipv6-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-ipv6-routes

**Method:** POST

**Content-Type:** application/xml

.. code:: xml

    <flowspec-route xmlns="urn:opendaylight:params:xml:ns:yang:bgp-flowspec">
      <route-key>flow-v6</route-key>
      <flowspec>
        <destination-prefix>2001:db8:30::3/128</destination-prefix>
      </flowspec>
      <flowspec>
        <source-prefix>2001:db8:31::3/128</source-prefix>
      </flowspec>
      <flowspec>
        <flow-label>
          <op>equals end-of-list</op>
          <value>1</value>
        </flow-label>
      </flowspec>
      <attributes>
        <extended-communities>
          <redirect-ipv6>
            <global-administrator>2001:db8:1::6</global-administrator>
            <local-administrator>12345</local-administrator>
          </redirect-ipv6>
        </extended-communities>
        <origin>
          <value>igp</value>
        </origin>
        <as-path/>
        <local-pref>
          <pref>100</pref>
        </local-pref>
      </attributes>
    </flowspec-route>

The request results in **204 No content**. This is expected.

**Delete route:**

**URL:**
http://localhost:8181/restconf/config/bgp-rib:application-rib/example-app-rib/tables/bgp-types:ipv6-address-family/bgp-flowspec:flowspec-subsequent-address-family/bgp-flowspec:flowspec-ipv6-routes/bgp-flowspec:flowspec-route/<route-id>

**Method:** DELETE

