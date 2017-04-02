Network Intent Composition (NIC) User Guide
===========================================

Overview
--------

Network Intent Composition (NIC) is an interface that allows clients to
express a desired state in an implementation-neutral form that will be
enforced via modification of available resources under the control of
the OpenDaylight system.

This description is purposely abstract as an intent interface might
encompass network services, virtual devices, storage, etc.

The intent interface is meant to be a controller-agnostic interface so
that "intents" are portable across implementations, such as OpenDaylight
and ONOS. Thus an intent specification should not contain implementation
or technology specifics.

The intent specification will be implemented by decomposing the intent
and augmenting it with implementation specifics that are driven by local
implementation rules, policies, and/or settings.

Network Intent Composition (NIC) Architecture
---------------------------------------------

The core of the NIC architecture is the intent model, which specifies
the details of the desired state. It is the responsibility of the NIC
implementation transforms this desired state to the resources under the
control of OpenDaylight. The component that transforms the intent to the
implementation is typically referred to as a renderer.

For the Boron release, multiple, simultaneous renderers will not be
supported. Instead either the VTN or GBP renderer feature can be
installed, but not both.

For the Boron release, the only actions supported are "ALLOW" and
"BLOCK". The "ALLOW" action indicates that traffic can flow between the
source and destination end points, while "BLOCK" prevents that flow;
although it is possible that an given implementation may augment the
available actions with additional actions.

Besides transforming a desired state to an actual state it is the
responsibility of a renderer to update the operational state tree for
the NIC data model in OpenDaylight to reflect the intent which the
renderer implemented.

Configuring Network Intent Composition (NIC)
--------------------------------------------

For the Boron release there is no default implementation of a renderer,
thus without an additional module installed the NIC will not function.

Administering or Managing Network Intent Composition (NIC)
----------------------------------------------------------

There is no additional administration of management capabilities related
to the Network Intent Composition features.

Interactions
------------

A user can interact with the Network Intent Composition (NIC) either
through the RESTful interface using standard RESTCONF operations and
syntax or via the Karaf console CLI.

REST
~~~~

Configuration
^^^^^^^^^^^^^

The Network Intent Composition (NIC) feature supports the following REST
operations against the configuration data store.

-  POST - creates a new instance of an intent in the configuration
   store, which will trigger the realization of that intent. An ID
   *must* be specified as part of this request as an attribute of the
   intent.

-  GET - fetches a list of all configured intents or a specific
   configured intent.

-  DELETE - removes a configured intent from the configuration store,
   which triggers the removal of the intent from the network.

Operational
^^^^^^^^^^^

The Network Intent Composition (NIC) feature supports the following REST
operations against the operational data store.

-  GET - fetches a list of all operational intents or a specific
   operational intent.

Karaf Console CLI
~~~~~~~~~~~~~~~~~

This feature provides karaf console CLI command to manipulate the intent
data model. The CLI essentailly invokes the equivalent data operations.

intent:add
^^^^^^^^^^

Creates a new intent in the configuration data tree

::

    DESCRIPTION
            intent:add

        Adds an intent to the controller.

    Examples: --actions [ALLOW] --from <subject> --to <subject>
              --actions [BLOCK] --from <subject>

    SYNTAX
            intent:add [options]

    OPTIONS
            -a, --actions
                    Action to be performed.
                    -a / --actions BLOCK/ALLOW
                    (defaults to [BLOCK])
            --help
                    Display this help message
            -t, --to
                    Second Subject.
                    -t / --to <subject>
                    (defaults to any)
            -f, --from
                    First subject.
                    -f / --from <subject>
                    (defaults to any)

intent:delete
^^^^^^^^^^^^^

Removes an existing intent from the system

::

    DESCRIPTION
            intent:remove

        Removes an intent from the controller.

    SYNTAX
            intent:remove id

    ARGUMENTS
            id  Intent Id

intent:list
^^^^^^^^^^^

Lists all the intents in the system

::

    DESCRIPTION
            intent:list

        Lists all intents in the controller.

    SYNTAX
            intent:list [options]

    OPTIONS
            -c, --config
                    List Configuration Data (optional).
                    -c / --config <ENTER>
            --help
                    Display this help message

intent:show
^^^^^^^^^^^

Displayes the details of a single intent

::

    DESCRIPTION
            intent:show

        Shows detailed information about an intent.

    SYNTAX
            intent:show id

    ARGUMENTS
            id  Intent Id

intent:map
^^^^^^^^^^

List/Add/Delete current state from/to the mapping service.

::

    DESCRIPTION
            intent:map

            List/Add/Delete current state from/to the mapping service.

    SYNTAX
            intent:map [options]

             Examples: --list, -l [ENTER], to retrieve all keys.
                       --add-key <key> [ENTER], to add a new key with empty contents.
                       --del-key <key> [ENTER], to remove a key with it's values."
                       --add-key <key> --value [<value 1>, <value 2>, ...] [ENTER],
                         to add a new key with some values (json format).
    OPTIONS
           --help
               Display this help message
           -l, --list
               List values associated with a particular key.
           -l / --filter <regular expression> [ENTER]
           --add-key
               Adds a new key to the mapping service.
           --add-key <key name> [ENTER]
           --value
               Specifies which value should be added/delete from the mapping service.
           --value "key=>value"... --value "key=>value" [ENTER]
               (defaults to [])
           --del-key
               Deletes a key from the mapping service.
           --del-key <key name> [ENTER]

NIC Usage Examples
------------------

Default Requirements
~~~~~~~~~~~~~~~~~~~~

Start mininet, and create three switches (s1, s2, and s3) and four hosts
(h1, h2, h3, and h4) in it.

Replace <Controller IP> based on your environment.

::

    $  sudo mn --mac --topo single,2 --controller=remote,ip=<Controller IP>

::

     mininet> net
     h1 h1-eth0:s2-eth1
     h2 h2-eth0:s2-eth2
     h3 h3-eth0:s3-eth1
     h4 h4-eth0:s3-eth2
     s1 lo:  s1-eth1:s2-eth3 s1-eth2:s3-eth3
     s2 lo:  s2-eth1:h1-eth0 s2-eth2:h2-eth0 s2-eth3:s1-eth1
     s3 lo:  s3-eth1:h3-eth0 s3-eth2:h4-eth0 s3-eth3:s1-eth2

Downloading and deploy Karaf distribution
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  Get the Boron distribution.

-  Unzip the downloaded zip distribution.

-  To run the Karaf.

::

    ./bin/karaf

-  Once the console is up, type as below to install feature.

::

    feature:install odl-nic-core-mdsal odl-nic-console odl-nic-listeners

Simple Mininet topology
-----------------------

.. code:: python

    !/usr/bin/python

    from mininet.topo import Topo

    class SimpleTopology( Topo ):
        "Simple topology example."

        def __init__( self ):
            "Create custom topo."


        Topo.__init__( self )


            Switch1 = self.addSwitch( 's1' )
            Switch2 = self.addSwitch( 's2' )
            Switch3 = self.addSwitch( 's3' )
            Switch4 = self.addSwitch( 's4' )
            Host11 = self.addHost( 'h1' )
            Host12 = self.addHost( 'h2' )
            Host21 = self.addHost( 'h3' )
            Host22 = self.addHost( 'h4' )
            Host23 = self.addHost( 'h5' )
            Service1 = self.addHost( 'srvc1' )


            self.addLink( Host11, Switch1 )
            self.addLink( Host12, Switch1 )
            self.addLink( Host21, Switch2 )
            self.addLink( Host22, Switch2 )
            self.addLink( Host23, Switch2 )
            self.addLink( Switch1, Switch2 )
            self.addLink( Switch2, Switch4 )
            self.addLink( Switch4, Switch3 )
            self.addLink( Switch3, Switch1 )
            self.addLink( Switch3, Service1 )
            self.addLink( Switch4, Service1 )


    topos = { 'simpletopology': ( lambda: SimpleTopology() ) }

-  Initialize topology

-  Add hosts and switches

-  Host used to represent the service

-  Add links

    Source: https://gist.github.com/vinothgithub15/315d0a427d5afc39f2d7

How to configure VTN Renderer
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The section demonstrates allow or block packets of the traffic within a
VTN Renderer, according to the specified flow conditions.

The table below lists the actions to be applied when a packet matches
the condition:

+----------------+-----------------------------------------------------------+
| Action         | Function                                                  |
+================+===========================================================+
| Allow          | Permits the packet to be forwarded normally.              |
+----------------+-----------------------------------------------------------+
| Block          | Discards the packet preventing it from being forwarded.   |
+----------------+-----------------------------------------------------------+

Requirement
^^^^^^^^^^^

-  Before execute the follow steps, please, use default requirements.
   See section `Default Requirements <#_default_requirements>`__.

Configuration
^^^^^^^^^^^^^

Please execute the following curl commands to test network intent using
mininet:

Create Intent
'''''''''''''

To provision the network for the two hosts(h1 and h2) and demonstrates
the action allow.

::

    curl -v --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X PUT http://localhost:8181/restconf/config/intent:intents/intent/b9a13232-525e-4d8c-be21-cd65e3436034 -d '{ "intent:intent" : { "intent:id": "b9a13232-525e-4d8c-be21-cd65e3436034", "intent:actions" : [ { "order" : 2, "allow" : {} } ], "intent:subjects" : [ { "order":1 , "end-point-group" : {"name":"10.0.0.1"} }, { "order":2 , "end-point-group" : {"name":"10.0.0.2"}} ] } }'

To provision the network for the two hosts(h2 and h3) and demonstrates
the action allow.

::

    curl -v --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X PUT http://localhost:8181/restconf/config/intent:intents/intent/b9a13232-525e-4d8c-be21-cd65e3436035 -d '{ "intent:intent" : { "intent:id": "b9a13232-525e-4d8c-be21-cd65e3436035", "intent:actions" : [ { "order" : 2, "allow" : {} } ], "intent:subjects" : [ { "order":1 , "end-point-group" : {"name":"10.0.0.2"} }, { "order":2 , "end-point-group" : {"name":"10.0.0.3"}} ] } }'

Verification
''''''''''''

As we have applied action type allow now ping should happen between
hosts (h1 and h2) and (h2 and h3).

::

     mininet> pingall
     Ping: testing ping reachability
     h1 -> h2 X X
     h2 -> h1 h3 X
     h3 -> X h2 X
     h4 -> X X X

Update the intent
'''''''''''''''''

To provision block action that indicates traffic is not allowed between
h1 and h2.

::

    curl -v --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X PUT http://localhost:8181/restconf/config/intent:intents/intent/b9a13232-525e-4d8c-be21-cd65e3436034 -d '{ "intent:intent" : { "intent:id": "b9a13232-525e-4d8c-be21-cd65e3436034", "intent:actions" : [ { "order" : 2, "block" : {} } ], "intent:subjects" : [ { "order":1 , "end-point-group" : {"name":"10.0.0.1"} }, { "order":2 , "end-point-group" : {"name":"10.0.0.2"}} ] } }'

Verification
''''''''''''

As we have applied action type block now ping should not happen between
hosts (h1 and h2).

::

     mininet> pingall
     Ping: testing ping reachability
     h1 -> X X X
     h2 -> X h3 X
     h3 -> X h2 X
     h4 -> X X X

.. note::

    Old actions and hosts are replaced by the new action and hosts.

Delete the intent
'''''''''''''''''

Respective intent and the traffics will be deleted.

::

    curl -v --user "admin":"admin" -H "Accept: application/json" -H     "Content-type: application/json" -X DELETE http://localhost:8181/restconf/config/intent:intents/intent/b9a13232-525e-4d8c-be21-cd65e3436035

Verification
''''''''''''

Deletion of intent and flow.

::

     mininet> pingall
     Ping: testing ping reachability
     h1 -> X X X
     h2 -> X X X
     h3 -> X X X
     h4 -> X X X

.. note::

    Ping between two hosts can also be done using MAC Address

To provision the network for the two hosts(h1 MAC address and h2 MAC
address).

::

    curl -v --user "admin":"admin" -H "Accept: application/json" -H "Content-type: application/json" -X PUT http://localhost:8181/restconf/config/intent:intents/intent/b9a13232-525e-4d8c-be21-cd65e3436035 -d '{ "intent:intent" : { "intent:id": "b9a13232-525e-4d8c-be21-cd65e3436035", "intent:actions" : [ { "order" : 2, "allow" : {} } ], "intent:subjects" : [ { "order":1 , "end-point-group" : {"name":"6e:4f:f7:27:15:c9"} }, { "order":2 , "end-point-group" : {"name":"aa:7d:1f:4a:70:81"}} ] } }'

How to configure Redirect Action
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The section explains the redirect action supported in NIC. The redirect
functionality supports forwarding (to redirect) the traffic to a service
configured in SFC before forwarding it to the destination.

.. figure:: ./images/nic/Service_Chaining.png
   :alt: REDIRECT SERVICE

   REDIRECT SERVICE

Following steps explain Redirect action function:

-  Configure the service in SFC using the SFC APIs.

-  Configure the intent with redirect action and the service information
   where the traffic needs to be redirected.

-  The flows are computed as below

   1. First flow entry between the source host connected node and the
      ingress node of the configured service.

   2. Second flow entry between the egress Node id the configured
      service and the ID and destination host connected host.

   3. Third flow entry between the destination host node and the source
      host node.

Requirement
^^^^^^^^^^^

-  Save the mininet `Simple Mininet
   topology <#_simple_mininet_topology>`__ script as redirect\_test.py

-  Start mininet, and create switches in it.

Replace <Controller IP> based on your environment.

::

    sudo mn --controller=remote,ip=<Controller IP>--custom redirect_test.py --topo mytopo2

::

     mininet> net
     h1 h1-eth0:s1-eth1
     h2 h2-eth0:s1-eth2
     h3 h3-eth0:s2-eth1
     h4 h4-eth0:s2-eth2
     h5 h5-eth0:s2-eth3
     srvc1 srvc1-eth0:s3-eth3 srvc1-eth1:s4-eth3
     s1 lo:  s1-eth1:h1-eth0 s1-eth2:h2-eth0 s1-eth3:s2-eth4 s1-eth4:s3-eth2
     s2 lo:  s2-eth1:h3-eth0 s2-eth2:h4-eth0 s2-eth3:h5-eth0 s2-eth4:s1-eth3 s2-eth5:s4-eth1
     s3 lo:  s3-eth1:s4-eth2 s3-eth2:s1-eth4 s3-eth3:srvc1-eth0
     s4 lo:  s4-eth1:s2-eth5 s4-eth2:s3-eth1 s4-eth3:srvc1-eth1
     c0

Starting the Karaf
^^^^^^^^^^^^^^^^^^

-  Before execute the following steps, please, use the default
   requirements. See section `Downloading and deploy Karaf
   distribution <#_default_requirements>`__.

Configuration
^^^^^^^^^^^^^

Mininet
'''''''

.. figure:: ./images/nic/Redirect_flow.png
   :alt: CONFIGURATION THE NETWORK IN MININET

   CONFIGURATION THE NETWORK IN MININET

-  Configure srvc1 as service node in the mininet environment.

Please execute the following commands in the mininet console (where
mininet script is executed).

::

     srvc1 ip addr del 10.0.0.6/8 dev srvc1-eth0
     srvc1 brctl addbr br0
     srvc1 brctl addif br0 srvc1-eth0
     srvc1 brctl addif br0 srvc1-eth1
     srvc1 ifconfig br0 up
     srvc1 tc qdisc add dev srvc1-eth1 root netem delay 200ms

Configure service in SFC
''''''''''''''''''''''''

The service (srvc1) is configured using SFC REST API. As part of the
configuration the ingress and egress node connected the service is
configured.

::

    curl -i -H "Content-Type: application/json" -H "Cache-Control: no-cache" --data '{
      "service-functions": {
        "service-function": [
          {
            "name": "srvc1",
            "sf-data-plane-locator": [
              {
                "name": "Egress",
                "service-function-forwarder": "openflow:4"
              },
              {
                "name": "Ingress",
                "service-function-forwarder": "openflow:3"
              }
            ],
            "nsh-aware": false,
            "type": "delay"
          }
        ]
      }
    }' -X PUT --user admin:admin http://localhost:8181/restconf/config/service-function:service-functions/

**SFF RESTCONF Request**

Configuring switch and port information for the service functions.

::

    curl -i -H "Content-Type: application/json" -H "Cache-Control: no-cache" --data '{
      "service-function-forwarders": {
        "service-function-forwarder": [
          {
            "name": "openflow:3",
            "service-node": "OVSDB2",
            "sff-data-plane-locator": [
              {
                "name": "Ingress",
                "data-plane-locator":
                {
                    "vlan-id": 100,
                    "mac": "11:11:11:11:11:11",
                    "transport": "service-locator:mac"
                },
                "service-function-forwarder-ofs:ofs-port":
                {
                    "port-id" : "3"
                }
              }
            ],
            "service-function-dictionary": [
              {
                "name": "srvc1",
                "sff-sf-data-plane-locator":
                {
                    "sf-dpl-name" : "openflow:3",
                    "sff-dpl-name" : "Ingress"
                }
              }
            ]
          },
          {
            "name": "openflow:4",
            "service-node": "OVSDB3",
            "sff-data-plane-locator": [
              {
                "name": "Egress",
                "data-plane-locator":
                {
                    "vlan-id": 200,
                    "mac": "44:44:44:44:44:44",
                    "transport": "service-locator:mac"
                },
                "service-function-forwarder-ofs:ofs-port":
                {
                    "port-id" : "3"
                }
              }
            ],
            "service-function-dictionary": [
              {
                "name": "srvc1",
                "sff-sf-data-plane-locator":
                {
                    "sf-dpl-name" : "openflow:4",
                    "sff-dpl-name" : "Egress"
                }
              }
            ]
          }
        ]
      }
    }' -X PUT --user admin:admin http://localhost:8181/restconf/config/service-function-forwarder:service-function-forwarders/

CLI Command
'''''''''''

To provision the network for the two hosts (h1 and h5).

Demonstrates the redirect action with service name srvc1.

::

    intent:add -f <SOURCE_MAC> -t <DESTINATION_MAC> -a REDIRECT -s <SERVICE_NAME>

Example:

::

    intent:add -f 32:bc:ec:65:a7:d1 -t c2:80:1f:77:41:ed -a REDIRECT -s srvc1

Verification
''''''''''''

-  As we have applied action type redirect now ping should happen
   between hosts h1 and h5.

::

     mininet> h1 ping h5
     PING 10.0.0.5 (10.0.0.5) 56(84) bytes of data.
     64 bytes from 10.0.0.5: icmp_seq=2 ttl=64 time=201 ms
     64 bytes from 10.0.0.5: icmp_seq=3 ttl=64 time=200 ms
     64 bytes from 10.0.0.5: icmp_seq=4 ttl=64 time=200 ms

The redirect functionality can be verified by the time taken by the ping
operation (200ms). The service srvc1 configured using SFC introduces
200ms delay. As the traffic from h1 to h5 is redirected via the srvc1,
the time taken by the traffic from h1 to h5 will take about 200ms.

-  Flow entries added to nodes for the redirect action.

::

     mininet> dpctl dump-flows
     *** s1 ------------------------------------------------------------------------
     NXST_FLOW reply (xid=0x4):
     cookie=0x0, duration=9.406s, table=0, n_packets=6, n_bytes=588, idle_age=3, priority=9000,in_port=1,dl_src=32:bc:ec:65:a7:d1, dl_dst=c2:80:1f:77:41:ed actions=output:4
     cookie=0x0, duration=9.475s, table=0, n_packets=6, n_bytes=588, idle_age=3, priority=9000,in_port=3,dl_src=c2:80:1f:77:41:ed, dl_dst=32:bc:ec:65:a7:d1 actions=output:1
     cookie=0x1, duration=362.315s, table=0, n_packets=144, n_bytes=12240, idle_age=4, priority=9500,dl_type=0x88cc actions=CONTROLLER:65535
     cookie=0x1, duration=362.324s, table=0, n_packets=4, n_bytes=168, idle_age=3, priority=10000,arp actions=CONTROLLER:65535,NORMAL
     *** s2 ------------------------------------------------------------------------
     NXST_FLOW reply (xid=0x4):
     cookie=0x0, duration=9.503s, table=0, n_packets=6, n_bytes=588, idle_age=3, priority=9000,in_port=3,dl_src=c2:80:1f:77:41:ed, dl_dst=32:bc:ec:65:a7:d1 actions=output:4
     cookie=0x0, duration=9.437s, table=0, n_packets=6, n_bytes=588, idle_age=3, priority=9000,in_port=5,dl_src=32:bc:ec:65:a7:d1, dl_dst=c2:80:1f:77:41:ed actions=output:3
     cookie=0x3, duration=362.317s, table=0, n_packets=144, n_bytes=12240, idle_age=4, priority=9500,dl_type=0x88cc actions=CONTROLLER:65535
     cookie=0x3, duration=362.32s, table=0, n_packets=4, n_bytes=168, idle_age=3, priority=10000,arp actions=CONTROLLER:65535,NORMAL
     *** s3 ------------------------------------------------------------------------
     NXST_FLOW reply (xid=0x4):
     cookie=0x0, duration=9.41s, table=0, n_packets=6, n_bytes=588, idle_age=3, priority=9000,in_port=2,dl_src=32:bc:ec:65:a7:d1, dl_dst=c2:80:1f:77:41:ed actions=output:3
     *** s4 ------------------------------------------------------------------------
     NXST_FLOW reply (xid=0x4):
     cookie=0x0, duration=9.486s, table=0, n_packets=6, n_bytes=588, idle_age=3, priority=9000,in_port=3,dl_src=32:bc:ec:65:a7:d1, dl_dst=c2:80:1f:77:41:ed actions=output:1

How to configure QoS Attribute Mapping
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This section explains how to provision QoS attribute mapping constraint
using NIC OF-Renderer.

The QoS attribute mapping currently supports DiffServ. It uses a 6-bit
differentiated services code point (DSCP) in the 8-bit differentiated
services field (DS field) in the IP header.

+----------------+-----------------------------------------------------------+
| Action         | Function                                                  |
+================+===========================================================+
| Allow          | Permits the packet to be forwarded normally, but allows   |
|                | for packet header fields, e.g., DSCP, to be modified.     |
+----------------+-----------------------------------------------------------+

The following steps explain QoS Attribute Mapping function:

-  Initially configure the QoS profile which contains profile name and
   DSCP value.

-  When a packet is transferred from a source to destination, the flow
   builder evaluates whether the transferred packet matches the
   condition such as action, endpoints in the flow.

-  If the packet matches the endpoints, the flow builder applies the
   flow matching action and DSCP value.

Requirement
^^^^^^^^^^^

-  Before execute the following steps, please, use the default
   requirements. See section `Default
   Requirements <#_default_requirements>`__.

Configuration
^^^^^^^^^^^^^

Please execute the following CLI commands to test network intent using
mininet:

-  To apply the QoS constraint, configure the QoS profile.

::

    intent:qosConfig -p <qos_profile_name> -d <valid_dscp_value>

Example:

::

    intent:qosConfig -p High_Quality -d 46

.. note::

    Valid DSCP value ranges from 0-63.

-  To provision the network for the two hosts (h1 and h3), add intents
   that allows traffic in both directions by execute the following CLI
   command.

Demonstrates the ALLOW action with constraint QoS and QoS profile name.

::

    intent:add -a ALLOW -t <DESTINATION_MAC> -f <SOURCE_MAC> -q QOS -p <qos_profile_name>

Example:

::

    intent:add -a ALLOW -t 00:00:00:00:00:03 -f 00:00:00:00:00:01 -q QOS -p High_Quality
    intent:add -a ALLOW -t 00:00:00:00:00:01 -f 00:00:00:00:00:03 -q QOS -p High_Quality

Verification
''''''''''''

-  As we have applied action type ALLOW now ping should happen between
   hosts h1 and h3.

::

     mininet> h1 ping h3
     PING 10.0.0.3 (10.0.0.3) 56(84) bytes of data.
     64 bytes from 10.0.0.3: icmp_req=1 ttl=64 time=0.984 ms
     64 bytes from 10.0.0.3: icmp_req=2 ttl=64 time=0.110 ms
     64 bytes from 10.0.0.3: icmp_req=3 ttl=64 time=0.098 ms

-  Verification of the flow entry and ensuring the mod\_nw\_tos is part
   of actions.

::

     mininet> dpctl dump-flows
     *** s1 ------------------------------------------------------------------------
     NXST_FLOW reply (xid=0x4):
     cookie=0x0, duration=21.873s, table=0, n_packets=3, n_bytes=294, idle_age=21, priority=9000,dl_src=00:00:00:00:00:03,dl_dst=00:00:00:00:00:01 actions=NORMAL,mod_nw_tos:184
     cookie=0x0, duration=41.252s, table=0, n_packets=3, n_bytes=294, idle_age=41, priority=9000,dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:03 actions=NORMAL,mod_nw_tos:184

Requirement
~~~~~~~~~~~

-  Before execute the follow steps, please, use default requirements.
   See section `Default Requirements <#_default_requirements>`__.

How to configure Log Action
~~~~~~~~~~~~~~~~~~~~~~~~~~~

This section demonstrates log action in OF Renderer. This demonstration
aims at enabling communication between two hosts and logging the flow
statistics details of the particular traffic.

Configuration
^^^^^^^^^^^^^

Please execute the following CLI commands to test network intent using
mininet:

-  To provision the network for the two hosts (h1 and h3), add intents
   that allows traffic in both directions by execute the following CLI
   command.

::

    intent:add –a ALLOW -t <DESTINATION_MAC> -f <SOURCE_MAC>

Example:

::

    intent:add -a ALLOW -t 00:00:00:00:00:03 -f 00:00:00:00:00:01
    intent:add -a ALLOW -t 00:00:00:00:00:01 -f 00:00:00:00:00:03

-  To log the flow statistics details of the particular traffic.

::

    intent:add –a LOG -t <DESTINATION_MAC> -f <SOURCE_MAC>

Example:

::

    intent:add -a LOG -t 00:00:00:00:00:03 -f 00:00:00:00:00:01

Verification
''''''''''''

-  As we have applied action type ALLOW now ping should happen between
   hosts h1 and h3.

::

     mininet> h1 ping h3
     PING 10.0.0.3 (10.0.0.3) 56(84) bytes of data.
     64 bytes from 10.0.0.3: icmp_req=1 ttl=64 time=0.984 ms
     64 bytes from 10.0.0.3: icmp_req=2 ttl=64 time=0.110 ms
     64 bytes from 10.0.0.3: icmp_req=3 ttl=64 time=0.098 ms

-  To view the flow statistics log details such as, byte count, packet
   count and duration, check the karaf.log.

::

    2015-12-15 22:56:20,256 | INFO | lt-dispatcher-23 | IntentFlowManager | 264 - org.opendaylight.nic.of-renderer - 1.1.0.SNAPSHOT | Creating block intent for endpoints: source00:00:00:00:00:01 destination 00:00:00:00:00:03
    2015-12-15 22:56:20,252 | INFO | lt-dispatcher-29 | FlowStatisticsListener | 264 - org.opendaylight.nic.of-renderer - 1.1.0.SNAPSHOT | Flow Statistics gathering for Byte Count:Counter64 [_value=238]
    2015-12-15 22:56:20,252 | INFO | lt-dispatcher-29 | FlowStatisticsListener | 264 - org.opendaylight.nic.of-renderer - 1.1.0.SNAPSHOT | Flow Statistics gathering for Packet Count:Counter64 [_value=3]
    2015-12-15 22:56:20,252 | INFO | lt-dispatcher-29 | FlowStatisticsListener | 264 - org.opendaylight.nic.of-renderer - 1.1.0.SNAPSHOT | Flow Statistics gathering for Duration in Nano second:Counter32 [_value=678000000]
    2015-12-15 22:56:20,252 | INFO | lt-dispatcher-29 | FlowStatisticsListener | 264 - org.opendaylight.nic.of-renderer - 1.1.0.SNAPSHOT | Flow Statistics gathering for Duration in Second:Counter32 [_value=49]

