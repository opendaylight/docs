.. _bgp-user-guide-test-tools:
Test Tools
==========
BGP test tools serves to test basic BGP functionality, scalability and performance.

.. contents:: Contents
   :depth: 2
   :local:

BGP Test Tool
^^^^^^^^^^^^^
The BGP Test Tool is a stand-alone Java application purposed to simulate remote BGP peers, that are capable to advertise sample routes.
This application is not part of the OpenDaylight Karaf distribution, however it can be downloaded from OpenDaylight's Nexus (use latest release version):

``https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/bgpcep/bgp-testtool``

Usage
'''''
The application can be run from command line:

.. code-block:: console

   java -jar bgp-testtool-*-executable.jar


with optional input parameters:

.. code-block:: console

   -i <BOOLEAN>, --active <BOOLEAN>
      Active initialisation of the connection, by default false.

   -ho <N>, --holdtimer <N>
      In seconds, value of the desired holdtimer, by default 90.

   -sc <N>, --speakersCount <N>
      Number of simulated BGP speakers, when creating each speaker, uses incremented local-address for binding, by default 0.

   -ra <IP_ADDRESS:PORT,...>, --remote-address <IP_ADDRESS:PORT,...>
      A list of IP addresses of remote BGP peers, that the tool can accept or initiate connect to that address (based on the mode), by default 192.0.2.2:1790.

   -la <IP_ADDRESS:PORT>, --localAddress <IP_ADDRESS:PORT>
      IP address of BGP speakers which the tools simulates, by default 192.0.2.2:0.

   -pr <N>, --prefixes <N>
      Number of prefixes to be advertised by each simulated speaker

   -mp <BOOLEAN>, --multiPathSupport <BOOLEAN>
      Active ADD-PATH support, by default false.

   -as <N>, --as <N>
      Local AS Number, by default 64496.

   -ec <EXTENDED_COMMUNITIES>, --extended_communities <EXTENDED_COMMUNITIES>
      Extended communities to be send. Format: x,x,x  where  x  is  each  extended  community from bgp-types.yang, by default empty.

   -ll <LOG_LEVEL>, --log_level <LOG_LEVEL>
      Log level for console output, by default INFO.

BGP Application Peer Benchmark
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
It is a simple OpenDaylight application which is capable to inject and remove specific amount of IPv4 routes.
This application is part of the OpenDaylight Karaf distribution.

Configuration
'''''''''''''
As a first step install BGP and RESTCONF, then configure *Application Peer*.
Install ``odl-bgpcep-bgp-benchmark`` feature and reconfigure BGP Application Peer Benchmark application as per following:

**URL:** ``/restconf/config/odl-bgp-app-peer-benchmark-config:config``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2

   <odl-bgp-app-peer-benchmark-config xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-app-peer-benchmark-config">
      <app-peer-id xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-app-peer-benchmark-config">10.25.1.9</app-peer-id>
   </odl-bgp-app-peer-benchmark-config>

@line 2: The *Application Peer* identifier.

Inject routes
'''''''''''''
Routes injection can be invoked via RPC:

**URL:** ``/restconf/operations/odl-bgp-app-peer-benchmark:add-prefix``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,3,4,5

   <input xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-app-peer-benchmark">
       <prefix>1.1.1.1/32</prefix>
       <count>100000</count>
       <batchsize>2000</batchsize>
       <nexthop>192.0.2.2</nexthop>
   </input>

@line 2: A initial IPv4 prefix carried in route. Value is incremented for following routes.

@line 3: An amount of routes to be added to *Application Peer's* programmable RIB.

@line 4: A size of the transaction batch.

@line 5: A NEXT_HOP attribute value used in all injected routes.

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,4,5

   <output xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-app-peer-benchmark">
       <result>
           <duration>4301</duration>
           <rate>25000</rate>
           <count>100000</count>
       </result>
   </output>

@line 3: Request duration in milliseconds.

@line 4: Writes per second rate.

@line 5: An amount of routes added to *Application Peer's* programmable RIB.

Remove routes
'''''''''''''
Routes deletion can be invoked via RPC:

**URL:** ``/restconf/operations/odl-bgp-app-peer-benchmark:delete-prefix``

**Method:** ``POST``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,3,4

   <input xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-app-peer-benchmark">
       <prefix>1.1.1.1/32</prefix>
       <count>100000</count>
       <batchsize>2000</batchsize>
   </input>

@line 2: A initial IPv4 prefix carried in route to be removed. Value is incremented for following routes.

@line 3: An amount of routes to be removed from *Application Peer's* programmable RIB.

@line 4: A size of the transaction batch.

**Response Body:**

.. code-block:: xml

   <output xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-app-peer-benchmark">
       <result>
           <duration>1837</duration>
           <rate>54500</rate>
           <count>100000</count>
       </result>
   </output>
