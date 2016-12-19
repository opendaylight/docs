.. _genius-user-guide:

Genius User Guide
=================

Overview
--------

The Genius project provides generic network interfaces, utilities and
services. Any OpenDaylight application can use these to achieve
interference-free co-existence with other applications using Genius.

Modules and Interfaces
----------------------

In the first phase delivered in OpenDaylight Boron release, Genius
provides following modules —

-  Modules providing a common view of network interfaces for different
   services

   -  **Interface (logical port) Manager**

      -  *Allows bindings/registration of multiple services to logical
         ports/interfaces*

      -  *Ability to plug in different types of southbound protocol
         renderers*

   -  **Overlay Tunnel Manager**

      -  *Creates and maintains overlay tunnels between configured
         Tunnel Endpoints (TEPs)*

-  Modules providing commonly used functions as shared services to avoid
   duplication of code and waste of resources

   -  **Liveness Monitor**

      -  *Provides tunnel/nexthop liveness monitoring services*

   -  **ID Manager**

      -  *Generates persistent unique integer IDs*

   -  **MD-SAL Utils**

      -  *Provides common generic APIs for interaction with MD-SAL*

Interface Manager Operations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Creating interfaces
^^^^^^^^^^^^^^^^^^^

The YANG file Data Model
`odl-interface.yang <https://github.com/opendaylight/genius/blob/master/interfacemanager/interfacemanager-api/src/main/yang/odl-interface.yang>`__
contains the interface configuration data-model.

You can create interfaces at the MD-SAL Data Node Path
**/config/if:interfaces/interface**, with the following attributes — 

***Common attributes***

-  **name** — unique interface name, can be any unique string (e.g.,
   UUID string)

-  **type** — interface type, currently supported *iana-if-type:l2vlan
   and iana-if-type:tunnel*

-  **enabled** — admin status, possible values *true* or *false*

-  **parent-refs** : used to specify references to parent interface/port
   feeding to this interface

-  datapath-node-identifier — identifier for a fixed/physical dataplane
   node, can be physical switch identifier

-  parent-interface — can be a physical switch port (in conjunction of
   above), virtual switch port (e.g., neutron port) or another interface

-  list node-identifier — identifier of the dependant underlying
   configuration protocol

   -  *topology-id* — can be ovsdb configuration protocol

   -  *node-id* — can be hwvtep node-id

***Type specific attributes***

-  when type = l2vlan

   -  **vlan-id** — VLAN id for trunk-member l2vlan interfaces

   -  **l2vlan-mode** — currently supported ones are *transparent*,
      *trunk* or *trunk-member*

-  when type = stacked\_vlan (Not supported yet)

   -  **stacked-vlan-id** — VLAN-Id for additional/second VLAN tag

-  when type = tunnel

   -  **tunnel-interface-type** — tunnel type, currently supported ones
      are:

      -  tunnel-type-vxlan

      -  tunnel-type-gre

      -  tunnel-type-mpls-over-gre

   -  **tunnel-source** — tunnel source IP address

   -  **tunnel-destination** — tunnel destination IP address

   -  **tunnel-gateway** — gateway IP address

   -  **monitor-enabled** — tunnel monitoring enable control

   -  **monitor-interval** — tunnel monitoring interval in millisiconds

-  when type = mpls (Not supported yet)

   -  **list labelStack** — list of lables

   -  **num-labels** — number of lables configured

Supported REST calls are **GET, PUT, DELETE, POST**

Creating L2 port interfaces
'''''''''''''''''''''''''''

Interfaces on normal L2 ports (e.g. Neutron tap ports) are created with
type *l2vlan* and *l2vlan-mode* as *transparent*. This type of interface
classifies packets passing through a particular L2 (OpenFlow) port. In
dataplane, packets belonging to this interface are classified by
matching in-port against the of-port-id assigned to the base port as
specified in parent-interface.

**URL:** /restconf/config/ietf-interfaces:interfaces

**Sample JSON data**

::

    "interfaces": {
        "interface": [
            {
                "name": "4158408c-942b-487c-9a03-0b603c39d3dd",
                "type": "iana-if-type:l2vlan",                       <--- interface type 'l2vlan' for normal L2 port
                "odl-interface:l2vlan-mode": "transparent",          <--- 'transparent' VLAN port mode allows any (tagged, untagged) ethernet packet
                "odl-interface:parent-interface": "tap4158408c-94",  <--- port-name as it appears on southbound interface
                "enabled": true
            }
        ]
    }

Creating VLAN interfaces
^^^^^^^^^^^^^^^^^^^^^^^^

A VLAN interface is created as a *l2vlan* interface in *trunk-member*
mode, by configuring a VLAN-Id and a particular L2 (vlan trunk)
interface. Parent VLAN trunk interface is created in the same way as the
*transparent* interface as specified above. A *trunk-member* interface
defines a flow on a particular L2 port and having a particular VLAN tag.
On ingress, after classification the VLAN tag is popped out and
corresponding unique dataplane-id is associated with the packet, before
delivering the packet to service processing. When a service module
delivers the packet to this interface for egress, it pushes
corresponding VLAN tag and sends the packet out of the parent L2 port.

**URL:** /restconf/config/ietf-interfaces:interfaces

**Sample JSON data**

::

    "interfaces": {
        "interface": [
            {
                "name": "4158408c-942b-487c-9a03-0b603c39d3dd:100",
                "type": "iana-if-type:l2vlan",
                "odl-interface:l2vlan-mode": "trunk-member",        <--- for 'trunk-member', flow is classified with particular vlan-id on an l2 port
                "odl-interface:parent-interface": "4158408c-942b-487c-9a03-0b603c39d3dd",  <--- Parent 'trunk' iterface name
                "odl-interface:vlan-id": "100",
                "enabled": true
            }
        ]
    }

Creating Overlay Tunnel Interfaces
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An overlay tunnel interface is created with type *tunnel* and particular
*tunnel-interface-type*. Tunnel interfaces are created on a particular
data plane node (virtual switches) with a pair of (local, remote) IP
addresses. Currently supported tunnel interface types are VxLAN, GRE and
MPLSoverGRE.

**URL:** /restconf/config/ietf-interfaces:interfaces

**Sample JSON data**

::

    "interfaces": {
        "interface": [
            {
                "name": "MGRE_TUNNEL:1",
                "type": "iana-if-type:tunnel",
                "odl-interface:tunnel-interface-type": "odl-interface:tunnel-type-mpls-over-gre",
                "odl-interface:datapath-node-identifier": 156613701272907,
                "odl-interface:tunnel-source": "11.0.0.43",
                "odl-interface:tunnel-destination": "11.0.0.66",
                "odl-interface:monitor-enabled": false,
                "odl-interface:monitor-interval": 10000,
                "enabled": true
            }
        ]
    }

.. _genius-user-guide-binding-services:

Binding services on interface
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The YANG file
`odl-interface-service-bindings.yang <https://github.com/opendaylight/genius/blob/stable/boron/interfacemanager/interfacemanager-api/src/main/yang/odl-interface-service-bindings.yang>`__
contains the service binding configuration data model.

An application can bind services to a particular interface by
configuring MD-SAL data node at path /config/interface-service-binding.
Binding services on interface allows particular service to pull traffic
arriving on that interface depending upon the service priority.
Service modules can specify openflow-rules to be applied on the packet
belonging to the interface. Usually these rules include sending the
packet to specific service table/pipeline. Service modules are
responsible for sending the packet back (if not consumed) to service
dispatcher table, for next service to process the packet.

**URL:**/restconf/config/interface-service-bindings:service-bindings/

**Sample JSON data**

::

    "service-bindings": {
      "services-info": [
        {
          "interface-name": "4152de47-29eb-4e95-8727-2939ac03ef84",
          "bound-services": [
            {
              "service-name": "ELAN",
              "service-type": "interface-service-bindings:service-type-flow-based"
              "service-priority": 3,
              "flow-priority": 5,
              "flow-cookie": 134479872,
              "instruction": [
                {
                  "order": 2,
                  "go-to-table": {
                    "table_id": 50
                  }
                },
                {
                  "order": 1,
                  "write-metadata": {
                    "metadata": 83953188864,
                    "metadata-mask": 1099494850560
                  }
                }
              ],
            },
            {
             "service-name": "L3VPN",
             "service-type": "interface-service-bindings:service-type-flow-based"
             "service-priority": 2,
             "flow-priority": 10,
             "flow-cookie": 134217729,
             "instruction": [
                {
                  "order": 2,
                  "go-to-table": {
                    "table_id": 21
                  }
                },
                {
                  "order": 1,
                  "write-metadata": {
                    "metadata": 100,
                    "metadata-mask": 4294967295
                  }
                }
              ],
            }
          ]
        }
      ]
    }

Interface Manager RPCs
~~~~~~~~~~~~~~~~~~~~~~

In addition to the above defined configuration interfaces, Interface
Manager also provides several RPCs to access interface operational data
and other helpful information. Interface Manger RPCs are defined in
`odl-interface-rpc.yang <https://github.com/opendaylight/genius/blob/stable/boron/interfacemanager/interfacemanager-api/src/main/yang/odl-interface-rpc.yang>`__

The following RPCs are available — 

get-dpid-from-interface
^^^^^^^^^^^^^^^^^^^^^^^

This RPC is used to retrieve dpid/switch hosting the root port from
given interface name.

::

    rpc get-dpid-from-interface {
        description "used to retrieve dpid from interface name";
        input {
            leaf intf-name {
                type string;
            }
        }
        output {
            leaf dpid {
                type uint64;
            }
        }
    }

get-port-from-interface
^^^^^^^^^^^^^^^^^^^^^^^

This RPC is used to retrieve south bound port attributes from the
interface name.

::

    rpc get-port-from-interface {
        description "used to retrieve south bound port attributes from the interface name";
        input {
            leaf intf-name {
                type string;
            }
        }
        output {
            leaf dpid {
                type uint64;
            }
            leaf portno {
                type uint32;
            }
            leaf portname {
                type string;
            }
        }
    }

get-egress-actions-for-interface
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This RPC is used to retrieve group actions to use from interface name.

::

    rpc get-egress-actions-for-interface {
        description "used to retrieve group actions to use from interface name";
        input {
            leaf intf-name {
                type string;
                mandatory true;
            }
            leaf tunnel-key {
                description "It can be VNI for VxLAN tunnel ifaces, Gre Key for GRE tunnels, etc.";
                type uint32;
                mandatory false;
            }
        }
        output {
            uses action:action-list;
        }
    }

get-egress-instructions-for-interface
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This RPC is used to retrieve flow instructions to use from interface
name.

::

    rpc get-egress-instructions-for-interface {
        description "used to retrieve flow instructions to use from interface name";
        input {
            leaf intf-name {
                type string;
                mandatory true;
            }
            leaf tunnel-key {
                description "It can be VNI for VxLAN tunnel ifaces, Gre Key for GRE tunnels, etc.";
                type uint32;
                mandatory false;
            }
        }
        output {
            uses offlow:instruction-list;
        }
    }

get-endpoint-ip-for-dpn
^^^^^^^^^^^^^^^^^^^^^^^

This RPC is used to get the local ip of the tunnel/trunk interface on a
particular DPN (Data Plane Node).

::

    rpc get-endpoint-ip-for-dpn {
        description "to get the local ip of the tunnel/trunk interface";
        input {
            leaf dpid {
                type uint64;
            }
        }
        output {
            leaf-list local-ips {
                type inet:ip-address;
            }
        }
    }

get-interface-type
^^^^^^^^^^^^^^^^^^

This RPC is used to get the type of the interface (vlan/vxlan or gre).

::

    rpc get-interface-type {
    description "to get the type of the interface (vlan/vxlan or gre)";
        input {
            leaf intf-name {
                type string;
            }
        }
        output {
            leaf interface-type {
                type identityref {
                    base if:interface-type;
                }
            }
        }
    }

get-tunnel-type
^^^^^^^^^^^^^^^

This RPC is used to get the type of the tunnel interface(vxlan or gre).

::

    rpc get-tunnel-type {
    description "to get the type of the tunnel interface (vxlan or gre)";
        input {
            leaf intf-name {
                type string;
            }
        }
        output {
            leaf tunnel-type {
                type identityref {
                    base odlif:tunnel-type-base;
                }
            }
        }
    }

get-nodeconnector-id-from-interface
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This RPC is used to get node-connector-id associated with an interface.

::

    rpc get-nodeconnector-id-from-interface {
    description "to get nodeconnector id associated with an interface";
        input {
            leaf intf-name {
                type string;
            }
        }
        output {
            leaf nodeconnector-id {
                type inv:node-connector-id;
            }
        }
    }

get-interface-from-if-index
^^^^^^^^^^^^^^^^^^^^^^^^^^^

This RPC is used to get interface associated with an if-index (dataplane
interface id).

::

    rpc get-interface-from-if-index {
        description "to get interface associated with an if-index";
            input {
                leaf if-index {
                    type int32;
                }
            }
            output {
                leaf interface-name {
                    type string;
                }
            }
        }

create-terminating-service-actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This RPC is used to create the tunnel termination service table entries.

::

    rpc create-terminating-service-actions {
    description "create the ingress terminating service table entries";
        input {
             leaf dpid {
                 type uint64;
             }
             leaf tunnel-key {
                 type uint64;
             }
             leaf interface-name {
                 type string;
             }
             uses offlow:instruction-list;
        }
    }

remove-terminating-service-actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This RPC is used to remove the tunnel termination service table entries.

::

    rpc remove-terminating-service-actions {
    description "remove the ingress terminating service table entries";
        input {
             leaf dpid {
                 type uint64;
             }
             leaf interface-name {
                 type string;
             }
             leaf tunnel-key {
                 type uint64;
             }
        }
    }

ID Manager
----------

TBD.
