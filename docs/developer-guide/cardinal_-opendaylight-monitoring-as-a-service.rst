.. _cardinal-dev-guide:

Cardinal: OpenDaylight Monitoring as a Service
==============================================

Overview
--------

Cardinal (OpenDaylight Monitoring as a Service) enables OpenDaylight and
the underlying software defined network to be remotely monitored by
deployed Network Management Systems (NMS) or Analytics suite. In the
Boron release, Cardinal adds:

1. OpenDaylight MIB.

2. Enable ODL diagnostics/monitoring to be exposed across SNMP (v2c, v3)
   and REST north-bound.

3. Extend ODL System health, Karaf parameter and feature info, ODL
   plugin scalability and network parameters.

4. Support autonomous notifications (SNMP Traps).

Cardinal Architecture
---------------------

The Cardinal architecture can be found at the below link:

https://wiki.opendaylight.org/images/8/89/Cardinal-ODL_Monitoring_as_a_Service_V2.pdf

Key APIs and Interfaces
-----------------------

There are 6 main APIs for requesting snmpget request of the Karaf info,
System info, Openflow devices and Netconf Devices. To expose these APIs,
it assumes that you already have the ``odl-cardinal`` and ``odl-restconf``
features installed. You can do that by entering the following at the Karaf console:

::

    feature:install odl-cardinal
    feature:install odl-restconf-all
    feature:install odl-l2switch-switch
    feature:install odl-netconf-all
    feature:install odl-netconf-connector-all
    feature:install odl-netconf-mdsal
    feature:install cardinal-features4
    feature:install odl-cardinal-api
    feature:install odl-cardinal-ui
    feature:install odl-cardinal-rest

System Info APIs
~~~~~~~~~~~~~~~~

Open the REST interface and using the basic authentication, execute REST
APIs for system info as:

::

    http://localhost:8181/restconf/operational/cardinal:CardinalSystemInfo/

You should get the response code of the same as 200 OK with the
following output as:

::

    {
      "CardinalSystemInfo": {
        "odlSystemMemUsage": " 9",
        "odlSystemSysInfo": " OpenDaylight Node Information",
        "odlSystemOdlUptime": " 00:29",
        "odlSystemCpuUsage": " 271",
        "odlSystemHostAddress": " Address of the Host should come up"
      }
    }

Karaf Info APIs
~~~~~~~~~~~~~~~

Open the REST interface and using the basic authentication, execute REST
APIs for system info as:

::

    http://localhost:8181/restconf/operational/cardinal-karaf:CardinalKarafInfo/

You should get the response code of the same as 200 OK with the
following output as:

::

      {
      "CardinalKarafInfo": {
        "odlKarafBundleListActive1": " org.ops4j.pax.url.mvn_2.4.5 [1]",
        "odlKarafBundleListActive2": " org.ops4j.pax.url.wrap_2.4.5 [2]",
        "odlKarafBundleListActive3": " org.ops4j.pax.logging.pax-logging-api_1.8.4 [3]",
        "odlKarafBundleListActive4": " org.ops4j.pax.logging.pax-logging-service_1.8.4 [4]",
        "odlKarafBundleListActive5": " org.apache.karaf.service.guard_3.0.6 [5]",
        "odlKarafBundleListActive6": " org.apache.felix.configadmin_1.8.4 [6]",
        "odlKarafBundleListActive7": " org.apache.felix.fileinstall_3.5.2 [7]",
        "odlKarafBundleListActive8": " org.objectweb.asm.all_5.0.3 [8]",
        "odlKarafBundleListActive9": " org.apache.aries.util_1.1.1 [9]",
        "odlKarafBundleListActive10": " org.apache.aries.proxy.api_1.0.1 [10]",
        "odlKarafBundleListInstalled1": " org.ops4j.pax.url.mvn_2.4.5 [1]",
        "odlKarafBundleListInstalled2": " org.ops4j.pax.url.wrap_2.4.5 [2]",
        "odlKarafBundleListInstalled3": " org.ops4j.pax.logging.pax-logging-api_1.8.4 [3]",
        "odlKarafBundleListInstalled4": " org.ops4j.pax.logging.pax-logging-service_1.8.4 [4]",
        "odlKarafBundleListInstalled5": " org.apache.karaf.service.guard_3.0.6 [5]",
        "odlKarafFeatureListInstalled1": " config",
        "odlKarafFeatureListInstalled2": " region",
        "odlKarafFeatureListInstalled3": " package",
        "odlKarafFeatureListInstalled4": " http",
        "odlKarafFeatureListInstalled5": " war",
        "odlKarafFeatureListInstalled6": " kar",
        "odlKarafFeatureListInstalled7": " ssh",
        "odlKarafFeatureListInstalled8": " management",
        "odlKarafFeatureListInstalled9": " odl-netty",
        "odlKarafFeatureListInstalled10": " odl-lmax",
        "odlKarafBundleListResolved1": " org.ops4j.pax.url.mvn_2.4.5 [1]",
        "odlKarafBundleListResolved2": " org.ops4j.pax.url.wrap_2.4.5 [2]",
        "odlKarafBundleListResolved3": " org.ops4j.pax.logging.pax-logging-api_1.8.4 [3]",
        "odlKarafBundleListResolved4": " org.ops4j.pax.logging.pax-logging-service_1.8.4 [4]",
        "odlKarafBundleListResolved5": " org.apache.karaf.service.guard_3.0.6 [5]",
        "odlKarafFeatureListUnInstalled1": " aries-annotation",
        "odlKarafFeatureListUnInstalled2": " wrapper",
        "odlKarafFeatureListUnInstalled3": " service-wrapper",
        "odlKarafFeatureListUnInstalled4": " obr",
        "odlKarafFeatureListUnInstalled5": " http-whiteboard",
        "odlKarafFeatureListUnInstalled6": " jetty",
        "odlKarafFeatureListUnInstalled7": " webconsole",
        "odlKarafFeatureListUnInstalled8": " scheduler",
        "odlKarafFeatureListUnInstalled9": " eventadmin",
        "odlKarafFeatureListUnInstalled10": " jasypt-encryption"
      }
    }

OpenFlowInfo Apis
~~~~~~~~~~~~~~~~~

Open the REST interface and using the basic authentication, execute REST APIs for system info as:

http://localhost:8181/restconf/operational/cardinal-openflow:Devices

You should get the response code of the same as 200 OK with the following output as:

::

    {
        "Devices": {
            "openflow": [
                {
                    "macAddress": "6a:80:ef:06:d3:46",
                    "status": "Connected",
                    "flowStats": " ",
                    "interface": "s1",
                    "manufacturer": "Nicira, Inc.",
                    "nodeName": "openflow:1:LOCAL",
                    "meterStats": " "
                },
                {
                    "macAddress": "32:56:c7:41:5d:9a",
                    "status": "Connected",
                    "flowStats": " ",
                    "interface": "s2-eth2",
                    "manufacturer": "Nicira, Inc.",
                    "nodeName": "openflow:2:2",
                    "meterStats": " "
                },
                {
                    "macAddress": "36:a8:3b:fe:e2:21",
                    "status": "Connected",
                    "flowStats": " ",
                    "interface": "s3-eth1",
                    "manufacturer": "Nicira, Inc.",
                    "nodeName": "openflow:3:1",
                    "meterStats": " "
                }
            ]
        }
    }


Configuration for Netconf Devices:-

1. To configure or update a netconf-connector via topology you need to send following request to Restconf:

::

    Method: PUT
    URI: http://localhost:8181/restconf/config/network-topology:network-topology/topology/topology-netconf/node/new-netconf-device
    Headers:
    Accept: application/xml
    Content-Type: application/xml

Payload:

.. code-block:: xml

    <node xmlns="urn:TBD:params:xml:ns:yang:network-topology">
      <node-id>new-netconf-device</node-id>
      <host xmlns="urn:opendaylight:netconf-node-topology">127.0.0.1</host>
      <port xmlns="urn:opendaylight:netconf-node-topology">17830</port>
      <username xmlns="urn:opendaylight:netconf-node-topology">admin</username>
      <password xmlns="urn:opendaylight:netconf-node-topology">admin</password>
      <tcp-only xmlns="urn:opendaylight:netconf-node-topology">false</tcp-only>
      <keepalive-delay xmlns="urn:opendaylight:netconf-node-topology">0</keepalive-delay>
    </node>

2. To delete a netconf connector issue a DELETE request to the following url:
URI:http://localhost:8181/restconf/config/network-topology:network-topology/topology/topology-netconf/node/new-netconf-device

NetConf Info Apis
Open the REST interface and using the basic authentication, execute REST APIs for system info as:

http://localhost:8181/restconf/operational/cardinal-netconf:Devices

You should get the response code of the same as 200 OK with the following output as:

::

    {
        "Devices": {
            "netconf": [
                {
                    "status": "connecting",
                    "host": "127.0.0.1",
                    "nodeId": "new-netconf-device1",
                    "port": "17830"
                },
                {
                    "status": "connecting",
                    "host": "127.0.0.1",
                    "nodeId": "new-netconf-device",
                    "port": "17830"
                },
                {
                    "status": "connecting",
                    "host": "127.0.0.1",
                    "nodeId": "controller-config",
                    "port": "1830"
                }
            ]
        }
    }
