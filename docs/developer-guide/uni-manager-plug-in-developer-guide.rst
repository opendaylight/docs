UNI Manager Plug-In Developer Guide
===================================

The UNI Manager plug in exposes capabilities of OpenDaylight to
configure networked equipment to operate according to Metro Ethernet
Forum (MEF) requirements for User Network Interface (UNI) and to support
the creation of an Ethernet Virtual Connection (EVC) according to MEF
requirements.

UNI Manager adheres to a minimum set of functionality defined by MEF 7.2
and 10.2 specifications.

Functionality
-------------

The UNI manager plugin enables the creation of Ethernet Virtual
Connections (EVC) as defined by the Metro Ethernet Forum (MEF). An EVC
provides a simulated Ethernet connection among LANs existing at
different geographical locations. This version of the plugin is limited
to connecting two LANS.

As defined by MEF, each location to be connected must have a User
Network Interface, (UNI) which is a device that connects the user LAN to
the EVC providers network.

UNI and EVC are implemented via Open vSwitch, leveraging the OVSDB
project: creating a UNI will end up creating an OVSDB node with an
*ovsbr0* bridge, interface and port. While creating a UNI, based on the
MEF requirement, one can specify a desired QoS; this leverages the QoS
and Queue tables from the OVS database. (see documentation bellow for
full details). Same goes with the EVC, to which one can apply a given
QoS to control the speed of the connection. Creating an EVC will add two
additional ports to the *ovsbr0* bridge:

-  *eht0*: the interface connected to a client laptop

-  *gre1*, interface used to for gre tunnelling between two clients
   (VXLAN).

Finally, within this release, UniMgr is more a Proof Of Concept than a
framework to be used in production. Previous demonstrations were made
using Raspberry Pis, having a low NIC bandwith, thus the speed as
defined in the API is actually mapped as follow:

-  ``speed-10M`` ⇒ 1 Mb

-  ``speed-100M`` ⇒ 2 Mb

-  ``speed-1G`` ⇒ 3 Mb

-  ``speed-10G`` ⇒ 4 Mb

UNI Manager REST APIs
---------------------

This API enables the creation and management of both UNI’s and EVCs. In
order to create an EVC using this interface you would first create two
UNI’s via the following REST API (see documentation below for full
details)

::

    PUT http://<host-ip>:8181/restconf/config/network-topology:network-topology/topology/unimgr:uni/node/<uni-id>

You would then create an EVC, indicating that it is a connection between
the two UNI’s that were just created, via the following REST API (see
documentation below for full details)

::

    PUT http://<host-ip>:8181/restconf/config/network-topology:network-topology/topology/unimgr:evc/link/<evc-id>

You can then change attributes of the UNI’s or EVCs, and delete these
entities using this API (see documentation below for full details).

This plugin uses the OpenDaylight OVSDB plugin to provision and the
manage devices which implement the OVSDB REST interface, as needed to
realize the UNI and EVC life-cycles

.. note::

    Both the configuration and operational databases can be operated
    upon by the unimgr REST API. The only difference between the two is
    in the REST Path. The configuration datastore represents the desired
    state, the operational datastore represents the actual state.

For operating on the config database

::

    http://<host-ip>:8181/restconf/config/<PATH>

For operating on the operational database

::

    http://<host-ip>:8181/restconf/operational/<PATH>

The documentation below shows examples of both

CREATE UNI
~~~~~~~~~~

::

    PUT http://<host-ip>:8181/restconf/config/network-topology:network-topology/topology/unimgr:uni/node/<uni-id>

.. note::

    uni-id is determined by and supplied by the caller both in the path
    and the body of the rest message

Request Body

::

    {
      "network-topology:node": [
        {
          "node-id": "uni-id",
          "speed": {
            "speed-1G": 1
          },
          "uni:mac-layer": "IEEE 802.3-2005",
          "uni:physical-medium": "100BASE-T",
          "uni:mode": "syncEnabled"
          "uni:type": "UNITYPE",
          "uni:mtu-size": 1600,
          "uni:mac-address": "68:5b:35:bb:f8:3e",
          "uni:ip-address": "192.168.2.11",
        }
      ]
    }

Response on success: 200

Input Options

::

    "speed"
        "speed-10M"
        "speed-100M"
        "speed-1G"
        "speed-10G"
    "uni:mac-layer"
        "IEEE 802.3-2005"
    uni:physical-medium
        "10BASE-T"
        "100BASE-T"
        "1000BASE-T"
        "10GBASE-T"
    "uni:mode"
        "syncEnabled"
        "syncDisabled"
    "uni:type"
        "UNITYPE"
        "uni:mtu-size"
        1600 reccomended

On OVS, the QoS, the Queue were updated, and a bridge was added:

::

    mininet@mininet-vm:~$ sudo ovs-vsctl list QoS
    _uuid               : 341c6e9d-ecb4-44ff-a21c-db644b466f4c
    external_ids        : {opendaylight-qos-id="qos://18db2a79-5655-4a94-afac-94015245e3f6"}
    other_config        : {dscp="0", max-rate="3000000"}
    queues              : {}
    type                : linux-htb

    mininet@mininet-vm:~$ sudo ovs-vsctl list Queue
    _uuid               : 8a0e1fc1-5d5f-4e7a-9c4d-ec412a5ec7de
    dscp                : 0
    external_ids        : {opendaylight-queue-id="queue://740a3809-5bef-4ad4-98d6-2ba81132bd06"}
    other_config        : {dscp="0", max-rate="3000000"}

    mininet@mininet-vm:~$ sudo ovs-vsctl show
    0b8ed0aa-67ac-4405-af13-70249a7e8a96
        Manager "tcp:192.168.1.200:6640"
            is_connected: true
        Bridge "ovsbr0"
            Port "ovsbr0"
                Interface "ovsbr0"
                    type: internal
        ovs_version: "2.4.0"

RETRIEVE UNI
~~~~~~~~~~~~

GET
`http://<host-ip>:8181/restconf/operational/network-topology:network-topology/topology/unimgr:uni/node/<uni-id> <http://<host-ip>:8181/restconf/operational/network-topology:network-topology/topology/unimgr:uni/node/<uni-id>>`__

Response : 200

::

    {
        "node": [
        {
            "node-id": "uni-id",
            "cl-unimgr-mef:speed": {
                "speed-1G": [null]
            },
            "cl-unimgr-mef:mac-layer": "IEEE 802.3-2005",
            "cl-unimgr-mef:physical-medium": "1000BASE-T",
            "cl-unimgr-mef:mode": "syncEnabled",
            "cl-unimgr-mef:type": "UNITYPE",
            "cl-unimgr-mef:mtu-size": "1600",
            "cl-unimgr-mef:mac-address": "00:22:22:22:22:22",
            "cl-unimgr-mef:ip-address": "10.36.0.22"
        }
        ]
    }

Output Options

::

    "cl-unimgr-mef:speed"
        "speed-10M"
        "speed-100M"
        "speed-1G"
        "speed-10G"
    "cl-unimgr-mef::mac-layer"
        "IEEE 802.3-2005"
    "cl-unimgr-mef:physical-medium"
        "10BASE-T"
        "100BASE-T"
        "1000BASE-T"
        "10GBASE-T"
    "cl-unimgr-mef::mode"
        "syncEnabled"
        "syncDisabled"
    "cl-unimgr-mef::type"
        "UNITYPE"

UPDATE UNI
~~~~~~~~~~

::

    PUT http://<host-ip>:8181/restconf/config/network-topology:network-topology/topology/unimgr:uni/node/<uni-id>

.. note::

    uni-id is determined by and supplied by the caller both in the path
    and the body of the rest message

Request Body

::

    {
        "network-topology:node": [
        {
            "node-id": "uni-id",
            "speed": {
                "speed-1G": 1
            },
            "uni:mac-layer": "IEEE 802.3-2005",
            "uni:physical-medium": "100BASE-T",
            "uni:mode": "syncEnabled"
            "uni:type": "UNITYPE",
            "uni:mtu-size": 1600,
            "uni:mac-address": "68:5b:35:bb:f8:3e",
            "uni:ip-address": "192.168.2.11",
        }
        ]
    }

Response on success: 200

Input Options

::

    "speed"
        "speed-10M"
        "speed-100M"
        "speed-1G"
        "speed-10G"
    "uni:mac-layer"
        "IEEE 802.3-2005"
    uni:physical-medium
        "10BASE-T"
        "100BASE-T"
        "1000BASE-T"
        "10GBASE-T"
    "uni:mode"
        "syncEnabled"
        "syncDisabled"
    "uni:type"
        "UNITYPE"
    "uni:mtu-size"
        1600 reccomended

DELETE UNI
~~~~~~~~~~

::

    DELETE http://<host-ip>:8181/restconf/config/network-topology:network-topology/topology/unimgr:uni/node/<uni-id>

Response on success: 200

CREATE EVC
~~~~~~~~~~

::

    PUT http://<host-ip>:8181/restconf/config/network-topology:network-topology/topology/unimgr:evc/link/<evc-id>

.. note::

    evc-id is determined by and supplied by the caller both in the path
    and the body of the rest message

Request Body

::

    {
        "link": [
        {
            "link-id": "evc-1",
            "source": {
                "source-node": "/network-topology/topology/node/uni-1"
            },
            "destination": {
                "dest-node": "/network-topology/topology/node/uni-2"
          },
          "cl-unimgr-mef:uni-source": [
            {
                "order": "0",
                "ip-address": "192.168.2.11"
            }
            ],
            "cl-unimgr-mef:uni-dest": [
            {
                "order": "0",
                "ip-address": "192.168.2.10"
            }
            ],
            "cl-unimgr-mef:cos-id": "gold",
            "cl-unimgr-mef:ingress-bw": {
                "speed-10G": {}
            },
            "cl-unimgr-mef:egress-bw": {
                "speed-10G": {}
          }
        }
        ]
    }

Response on success: 200

Input Optionss

::

    ["source"]["source-node"]
        Id of 1st UNI to assocate EVC with
    ["cl-unimgr-mef:uni-source"][0]["ip-address"]
        IP address of 1st UNI to associate EVC with
    ["destination"]["dest-node"]
        Id of 2nd UNI to assocate EVC with
    ["cl-unimgr-mef:uni-dest"][0]["ip-address"]
        IP address of 2nd UNI to associate EVC with
    "cl-unimgr-mef:cos-id"
        class of service id to associate with the EVC
    "cl-unimgr-mef:ingress-bw"
    "cl-unimgr-mef:egress-bw"
        "speed-10M"
        "speed-100M"
        "speed-1G"
        "speed-10G"

On OVS, the QoS, the Queue were updated, and two ports were added:

::

    mininet@mininet-vm:~$ sudo ovs-vsctl list QoS
    _uuid               : 341c6e9d-ecb4-44ff-a21c-db644b466f4c
    external_ids        : {opendaylight-qos-id="qos://18db2a79-5655-4a94-afac-94015245e3f6"}
    other_config        : {dscp="0", max-rate="3000000"}
    queues              : {}
    type                : linux-htb

    mininet@mininet-vm:~$ sudo ovs-vsctl list Queue
    _uuid               : 8a0e1fc1-5d5f-4e7a-9c4d-ec412a5ec7de
    dscp                : 0
    external_ids        : {opendaylight-queue-id="queue://740a3809-5bef-4ad4-98d6-2ba81132bd06"}
    other_config        : {dscp="0", max-rate="3000000"}

    mininet@mininet-vm:~$ sudo ovs-vsctl show
    0b8ed0aa-67ac-4405-af13-70249a7e8a96
        Manager "tcp:192.168.1.200:6640"
            is_connected: true
        Bridge "ovsbr0"
            Port "ovsbr0"
                Interface "ovsbr0"
                    type: internal
            Port "eth1"
                Interface "eth1"
            Port "gre1"
                Interface "gre1"
                    type: gre
                    options: {remote_ip="192.168.1.233"}
    ovs_version: "2.4.0"

RETRIEVE EVC
~~~~~~~~~~~~

::

    GET http://<host-ip>:8181/restconf/operational/network-topology:network-topology/topology/unimgr:evc/link/<evc-id>

Response on success: 200

::

    {
        "link": [
        {
            "link-id": "evc-5",
            "source": {
                "source-node": "/network-topology/topology/node/uni-9"
            },
            "destination": {
                "dest-node": "/network-topology/topology/node/uni-10"
            },
            "cl-unimgr-mef:uni-dest": [
            {
                "order": 0,
                "uni": "/network-topology:network-topology/network-topology:topology[network-topology:topology-id='unimgr:uni']/network-topology:node[network-topology:node-id='uni-10']",
                "ip-address": "10.0.0.22"
            }
            ],
            "cl-unimgr-mef:ingress-bw": {
                "speed-1G": [null]
            },
            "cl-unimgr-mef:cos-id": "new1",
            "cl-unimgr-mef:uni-source": [
            {
                "order": 0,
                "uni": "/network-topology:network-topology/network-topology:topology[network-topology:topology-id='unimgr:uni']/network-topology:node[network-topology:node-id='uni-9']",
                "ip-address": "10.0.0.21"
            }
            ],
            "cl-unimgr-mef:egress-bw": {
            "speed-1G": [null]
          }
        }
        ]
    }

Output Options

::

    ["source"]["source-node"]
    ["cl-unimgr-mef:uni-source"][0]["uni"]
        Id of 1st UNI assocated with EVC
        ["cl-unimgr-mef:uni-source"][0]["ip-address"]
        IP address of 1st UNI assocated with EVC
    ["destination"]["dest-node"]
    ["cl-unimgr-mef:uni-dest"][0]["uni"]
        Id of 2nd UNI assocated with EVC
    ["cl-unimgr-mef:uni-dest"][0]["ip-address"]
        IP address of 2nd UNI assocated with EVC
    "cl-unimgr-mef:cos-id"
        class of service id associated with the EVC
    "cl-unimgr-mef:ingress-bw"
    "cl-unimgr-mef:egress-bw"
        "speed-10M"
        "speed-100M"
        "speed-1G"
        "speed-10G"

UPDATE EVC
~~~~~~~~~~

::

    PUT http://<host-ip>:8181/restconf/config/network-topology:network-topology/topology/unimgr:evc/link/<evc-id>

.. note::

    evc-id is determined by and supplied by the caller both in the path
    and the body of the rest message

Request Body

::

    {
        "link": [
        {
            "link-id": "evc-1",
            "source": {
                "source-node": "/network-topology/topology/node/uni-1"
            },
            "destination": {
                "dest-node": "/network-topology/topology/node/uni-2"
            },
            "cl-unimgr-mef:uni-source": [
            {
                "order": "0",
                "ip-address": "192.168.2.11"
            }
            ],
            "cl-unimgr-mef:uni-dest": [
            {
                "order": "0",
                "ip-address": "192.168.2.10"
            }
            ],
            "cl-unimgr-mef:cos-id": "gold",
            "cl-unimgr-mef:ingress-bw": {
                "speed-10G": {}
            },
            "cl-unimgr-mef:egress-bw": {
            "speed-10G": {}
          }
        }
        ]
    }

Response on success: 200

Input Optionss

::

    ["source"]["source-node"]
        Id of 1st UNI to assocate EVC with
    ["cl-unimgr-mef:uni-source"][0]["ip-address"]
        IP address of 1st UNI to associate EVC with
    ["destination"]["dest-node"]
        Id of 2nd UNI to assocate EVC with
    ["cl-unimgr-mef:uni-dest"][0]["ip-address"]
        IP address of 2nd UNI to associate EVC with
    "cl-unimgr-mef:cos-id"
        class of service id to associate with the EVC
    "cl-unimgr-mef:ingress-bw"
    "cl-unimgr-mef:egress-bw"
        "speed-10M"
        "speed-100M"
        "speed-1G"
        "speed-10G"

DELETE EVC
~~~~~~~~~~

::

    DELETE http://host-ip:8181/restconf/config/network-topology:network-topology/topology/unimgr:evc/link/evc-id

Response on success: 200

