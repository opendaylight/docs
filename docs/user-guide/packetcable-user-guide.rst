PacketCable User Guide
======================

Overview
--------

These components introduce a DOCSIS QoS Gates management using the PCMM
protocol. The driver component is responsible for the PCMM/COPS/PDP
functionality required to service requests from PacketCable Provider and
FlowManager. Requests are transposed into PCMM Gate Control messages and
transmitted via COPS to the CMTS. This plugin adheres to the
PCMM/COPS/PDP functionality defined in the CableLabs specification.
PacketCable solution is an MDSAL compliant component.

PacketCable Components
----------------------

PacketCable is comprised of two OpenDaylight bundles:

+--------------------------------------+--------------------------------------+
| Bundle                               | Description                          |
+======================================+======================================+
| odl-packetcable-policy-server        | Plugin that provides PCMM model      |
|                                      | implementation based on CMTS         |
|                                      | structure and COPS protocol.         |
+--------------------------------------+--------------------------------------+
| odl-packetcable-policy-model         | The Model provided provides a direct |
|                                      | mapping to the underlying QoS Gates  |
|                                      | of CMTS.                             |
+--------------------------------------+--------------------------------------+

See the PacketCable `YANG
Models <https://git.opendaylight.org/gerrit/gitweb?p=packetcable.git;a=tree;f=packetcable-policy-model/src/main/yang>`__.

Installing PacketCable
----------------------

To install PacketCable, run the following ``feature:install`` command
from the Karaf CLI

::

    feature:install odl-packetcable-policy-server-all odl-restconf odl-mdsal-apidocs

Explore and exercise the PacketCable REST API
---------------------------------------------

To see the PacketCable APIs, browse to this URL:
http://localhost:8181/apidoc/explorer/index.html

Replace localhost with the IP address or hostname where OpenDaylight is
running if you are not running OpenDaylight locally on your machine.

.. note::

    Prior to setting any PCMM gates, a CCAP must first be added.

Postman
-------

`Install the Chrome
extension <https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en>`__

`Download and import sample packetcable
collection <https://git.opendaylight.org/gerrit/gitweb?p=packetcable.git;a=tree;f=packetcable-policy-server/doc/restconf-samples>`__

Postman Operations
^^^^^^^^^^^^^^^^^^

.. figure:: ./images/packetcable-postman.png
   :alt: Postman Operations

   Postman Operations



PacketCable REST API Usage Examples
-----------------------------------

* CCAP "CONFIG" DATASTORE API STRUCTURE

  * Add and view CCAPConfigDatastore(add triggers also the CCAP COPS connection)::

     PUT http://localhost:8181/restconf/config/packetcable:ccaps/ccap/CMTS-1

     {"ccap":[
        {"ccapId":"CMTS-1",
         "amId": {
               "am-tag": 51930,
               "am-type": 1
         },
         "connection": {
               "ipAddress": "10.20.30.40",
               "port":3918
         },"subscriber-subnets": [
               "2001:4978:030d:1000:0:0:0:0/52",
               "44.137.0.0/16"
         ],"upstream-scns": [
               "SCNA",
               "extrm_up"
         ],"downstream-scns": [
               "extrm_dn",
               "ipvideo_dn",
               "SCNC"
         ]}
     ]}

     GET http://localhost:8181/restconf/config/packetcable:ccaps/ccap/CMTS-1


* CCAP OPERATIONAL STATUS - GET CCAP (COPS) CONNECTION STATUS

  * Shows the Operational Datastorecontents for the CCAP COPS connection.
  * The status is updated when the COPS connection is initiated or after an RPC poll::

     GET http://localhost:8181/restconf/operational/packetcable:ccaps/ccap/CMTS-1/
     Response: 200 OK

     {
       "ccap": [
             {
                  "ccapId": "CMTS-1",
                  "connection": {
                       "error": [
                             "E6-CTO: CCAP client is connected"
                       ],
                       "timestamp": "2016-03-23T14:15:54.129-05:00",
                       "connected": true
                  }
             }
         ]
     }


* CCAP OPERATIONAL STATUS - RPC CCAP POLL CONNECTION

  * A CCAP RPC poll returns the COPS connectivity status info and also triggers an Operational Datastore status update with the same data::

     POST http://localhost:8181/restconf/operations/packetcable:ccap-poll-connection
     {
          "input": {
                "ccapId": "/packetcable:ccaps/packetcable:ccap[packetcable:ccapId='CMTS-1']"
          }
     }
     Response: 200 OK
     {
     "output": {
           "response": "CMTS-1: CCAP poll complete",
           "timestamp": "2016-03-23T14:15:54.131-05:00",
           "ccap": {
                 "ccapId": "CMTS-1",
                 "connection": {
                       "connection": {
                              "error": [
                                     "CMTS-1: CCAP client is connected"
                              ],
                              "timestamp": "2016-03-23T14:15:54.129-05:00",
                              "connected": true
                       }
                  }
             }
         }
     }

* CCAP OPERATIONAL STATUS - RPC CCAP POLL CONNECTION (2) - CONNECTION DOWN::

     POST http://localhost:8181/restconf/operations/packetcable:ccap-poll-connection
     {
          "input": {
                "ccapId": "/packetcable:ccaps/packetcable:ccap[packetcable:ccapId='CMTS-1']"
          }
     }
     Response: 200 OK
     {
     "output": {
           "response": "CMTS-1: CCAP poll complete",
           "timestamp": "2016-03-23T14:15:54.131-05:00",
           "ccap": {
                 "ccapId": "CMTS-1",
                 "connection": {
                       "error": [
                             "CMTS-1: CCAP client is disconnected with error: null",
                             "CMTS-1: CCAP Cops socket is closed"],
                       "timestamp": "2016-03-23T14:15:54.129-05:00",
                       "connected": false
                  }
             }
         }
     }


* CCAP OPERATIONAL STATUS - RPC CCAP SET CONNECTION

  * A CCAP RPC sets the CCAP COPS connection; possible values true or false meaning that the connection should be up or down.
  * RPC responds with the same info as RPC POLL CONNECTION, and also updates the Operational Datastore::

     POST http://localhost:8181/restconf/operations/packetcable:ccap-set-connection
     {
          "input": {
                "ccapId": "/packetcable:ccaps/packetcable:ccap[packetcable:ccapId='CMTS-1']",
                 "connection": {
                       "connected": true
                }
          }
     }
     Response: 200 OK
     {
            "output": {

                   "response": "CMTS-1: CCAP set complete",
                   "timestamp": "2016-03-23T17:47:29.446-05:00",
                   "ccap": {
                          "ccapId": "CMTS-1",
                          "connection": {
                                  "error": [
                                          "CMTS-1: CCAP client is connected",
                                          "CMTS-1: CCAP COPS socket is already open"],
                                  "timestamp": "2016-03-23T17:47:29.436-05:00",
                                  "connected": true
                          }
                   }
            }
     }

* CCAP OPERATIONAL STATUS - RPC CCAP SET CONNECTION (2) - SHUTDOWN COPS CONNECTION::

     POST http://localhost:8181/restconf/operations/packetcable:ccap-set-connection
     {
          "input": {
                "ccapId": "/packetcable:ccaps/packetcable:ccap[packetcable:ccapId='E6-CTO']",
                 "connection": {
                       "connected": false
                }
          }
     }
     Response: 200 OK
     {
            "output": {
                   "response": "E6-CTO: CCAP set complete",
                   "timestamp": "2016-03-23T17:47:29.446-05:00",
                   "ccap": {
                          "ccapId": "E6-CTO",
                          "connection": {
                                  "error": [
                                          "E60CTO: CCAP client is disconnected with error: null"],
                                  "timestamp": "2016-03-23T17:47:29.436-05:00",
                                  "connected": false
                          }
                   }
            }
     }

.. note::
    A "null" in the error information means that the CCAP connection has been disconnected as a result of a RPC SET.

* GATES "CONFIG" DATASTORE API STRUCTURE CHANGED

  * A CCAP RPC poll returns the gate status info, and also triggers a Operational Datastorestatus update.
  * At a minimum the appIdneeds to be included in the input, subscriberIdand gateIdare optional.
  * A gate status response is only included if the RPC request is done for a specific gate (subscriberIdand gateIdincluded in input).
  * Add and retrieve gates to/from the Config Datastore::

     PUT http://localhost:8181/restconf/config/packetcable:qos/apps/app/cto-app/subscribers/subscriber/44.137.0.12/gates/gate/gate88/

     {
       "gate": [
         {
           "gateId": "gate88",
           "gate0spec": {
             "dscp-tos-overwrite": "0xa0",
             "dscp-tos-mask": "0xff"
           },
           "traffic-profile": {
             "service-class-name": "extrm_dn"
           },
           "classifiers": {
             "classifier-container": [
               {
                 "classifier-id": "1",
                 "classifier": {
                   "srcIp": "44.137.0.0",
                   "dstIp": "44.137.0.11",
                   "protocol": "0",
                   "srcPort": "1234",
                   "dstPort": "4321",
                   "tos-byte": "0xa0",
                   "tos-mask": "0xe0"
                 }
               }
             ]
           }
         }
       ]
     }

     GET http://localhost:8181/restconf/config/packetcable:qos/apps/app/cto-app/subscribers/subscriber/44.137.0.12/gates/gate/gate88/


* GATES SUPPORT MULTIPLE (UP TO FOUR) CLASSIFIERS

  * Please note that there is a classifier container now that can have up to four classifiers::

     PUT http://localhost:8181/restconf/config/packetcable:qos/apps/app/cto-app/subscribers/subscriber/44.137.0.12/gates/gate/gate88/
     { "gate":{
         "gateId": "gate44",
         "gate-spec": {
         "dscp-tos-overwrite": "0xa0",
                   "dscp-tos-mask": "0xff" },
         "traffic-profile": {
                   "service-class-name": "extrm_dn"},
         "classifiers":
                   { "classifier-container":[
                              { "classifier-id": "1",
                                       "ipv6-classifier": {
                                                 "srcIp6": "2001:4978:030d:1100:0:0:0:0/64",
                                                                     "dstIp6": "2001:4978:030d:1000:0:0:0:0/64",
                                                 "flow-label": "102",
                                                 "tc-low": "0xa0",
                                                 "tc-high": "0xc0",
                                                 "tc-mask": "0xe0",
                                                 "next-hdr": "256",
                                                 "srcPort-start": "4321",
                                                 "srcPort-end": "4322",
                                                 "dstPort-start": "1234",
                                                 "dstPort-end": "1235"
                              }},
                              { "classifier-id": "2",
                                        "ext-classifier" : {
                                                  "srcIp": "44.137.0.12",
                                                  "srcIpMask": "255.255.255.255",
                                                  "dstIp": "10.10.10.0",
                                                  "dstIpMask": "255.255.255.0",
                                                  "tos-byte": "0xa0",
                                                  "tos-mask": "0xe0",
                                                  "protocol": "0",
                                                  "srcPort-start": "4321",
                                                  "srcPort-end": "4322",
                                                  "dstPort-start": "1234",
                                                  "dstPort-end": "1235"
                                        }
                              }]
                   }
         }
     }


* CCAP OPERATIONAL STATUS - GET GATE STATUS FROM OPERATIONAL DATASTORE

  * Shows the Operational Datastore contents for the gate.
  * The gate status is updated at the time when the gate is configured or during an RPC poll::

     GET http://localhost:8181/restconf/operational/packetcable:qos/apps/app/cto-app/subscribers/subscriber/44.137.0.12/gates/gate/gate88

     Response: 200
     {
         "gate":[{
                "gateId":"gate88",
                "cops-gate-usage-info": "0",
                "cops-gate-state": "Committed(4)/Other(-1)",
                "gatePath": "cto-app/44.137.0.12/gate88",
                "cops-gate-time-info": "0",
                "cops-gateId": "3e0800e9",
                "timestamp": "2016-03-24T10:30:18.763-05:00",
                "ccapId": "E6-CTO"
         }]
     }


* CCAP OPERATIONAL STATUS - RPC GATE STATUS POLL

  * A CCAP RPC poll returns the gate status info and also triggers an Operational Datastore status update.
  * At a minimum, the appId needs to be included in the input; subscriberId and gateId are optional.
  * A gate status response is only included if the RPC request is done for a specific gate (subscriberId and gateId included in input)::

     POST http://localhost:8181/restconf/operations/packetcable:qos-poll-gates
     {
          "input": {
                "appId": "/packetcable:apps/packetcable:apps[packetcable:appId='cto-app]",
                "subscriberId": "44.137.0.11",
                "gateId": "gate44"
          }
     }
     Response: 200 OK
     {
          "output": {
                     "gate": {
                              "cops-gate-usage-info": "0",
                              "cops-gate-state": "Committed(4)/Other(-1)",
                              "gatePath": "ctoapp/44.137.0.12/gate88",
                              "cops-gate-time-info": "0",
                              "cops-gateId": "1ceb0001",
                              "error": [""],
                              "timestamp": "2016-03-24T13:22:59.900-05:00",
                              "ccapId": "E6-CTO"
                     },
                     "response": "cto-app/44.137.0.12/gate88: gate poll complete",
                     "timestamp": "2016-03-24T13:22:59.906-05:00"
          }
     }

  * When multiple gates are polled (only appId or appId and subscriberId are provided), a generic response is returned and the Operational Datastore is updated in the background::

     {  "output": {
            "gate": {},
            "response": "cto-app/: gate subtree poll in progress",
            "timestamp": "2016-03-24T13:25:30.471-05:00"
        }
     }


