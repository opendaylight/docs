Using Groupbasedpolicy's Neutron VPP Mapper
===========================================

Overview
--------
Neutron VPP Mapper implements features for support policy-based routing for OpenStack Neutron interface involving VPP devices.
It allows using of policy-based schemes defined in GBP controller in a network consisting of OpenStack-provided nodes routed by a VPP node.

Architecture
------------
Neutron VPP Mapper listens to Neutron data store change events, as well as being able to access directly the store.
If the data changed match certain criteria (see `Processing Neutron Configuration`_),
Neutron VPP Mapper converts Neutron data specifically required to render a VPP node configuration with a given End Point,
e.g., the virtual host interface name assigned to a ``vhostuser`` socket.
Then the mapped data is stored in the VPP info data store.

Administering Neutron VPP Mapper
--------------------------------
To use the Neutron VPP Mapper in Karaf, at least the following Karaf features must be installed:

* odl-groupbasedpolicy-neutron-vpp-mapper
* odl-vbd-ui

Initial pre-requisites
----------------------
A topology should exist in config datastore, it is necessary to define a node with a particular ``node-id``.
Later, ``node-id`` will be used as a physical location reference in VPP renderer's bridge domain::

   GET http://localhost:8181/restconf/config/network-topology:network-topology/

   {
       "network-topology":{
          "topology":[
               {
                   "topology-id":"datacentre",
                   "node":[
                       {
                          "node-id":"dut2",
                          "vlan-tunnel:super-interface":"GigabitEthernet0/9/0",
                          "termination-point":[
                               {
                                   "tp-id":"GigabitEthernet0/9/0",
                                   "neutron-provider-topology:physical-interface":{
                                       "interface-name":"GigabitEthernet0/9/0"
                                   }
                               }
                           ]
                       }
                   ]
               }
           ]
       }
   }


Processing Neutron Configuration
--------------------------------
``NeutronListener`` listens to the changes in Neutron datatree in config datastore. It filters the changes, processing only ``network`` and ``port`` entities.

For a ``network`` entity it is checked that it has ``physical-network`` parameter set (i.e., it is backed-up by a physical network),
and that ``network-type`` is ``vlan-network`` or ``"flat"``, and if this check has passed, a related bridge domain is created
in VPP Renderer config datastore
(``http://{{controller}}:{{port}}/restconf/config/vpp-renderer:config``), referenced to network by ``vlan`` field.

In case of ``"vlan-network"``, the ``vlan`` field contains the same value as ``neutron-provider-ext:segmentation-id`` of network created by Neutron.

In case of ``"flat"``, the VLAN specific parameters are not filled out.

.. note:: In case of VXLAN network (i.e. ``network-type`` is ``"vxlan-network"``), no information is actually written
into VPP Renderer datastore, as VXLAN is used for tenant-network (so no packets are going outside). Instead, VPP Renderer looks up GBP flood domains corresponding to existing VPP bridge domains trying to establish a VXLAN tunnel between them.

For a ``port`` entity it is checked that ``vif-type`` contains ``"vhostuser"`` substring, and that ``device-owner`` contains a specific substring, namely ``"compute"``, ``"router"`` or ``"dhcp"``.

In case of ``"compute"`` substring, a ``vhost-user`` is written to VPP Renderer config datastore.

In case of ``"dhcp"`` or ``"router"``, a ``tap`` is written to VPP Renderer config datastore.

Input/output examples
---------------------

OpenStack is creating network, and these data are being put into the data store::

   PUT http://{{controller}}:{{port}}/restconf/config/neutron:neutron/networks

   {
       "networks": {
           "network": [
               {
                   "uuid": "43282482-a677-4102-87d6-90708f30a115",
                   "tenant-id": "94836b88-0e56-4150-aaa7-60f1c2b67faa",
                   "neutron-provider-ext:segmentation-id": "2016",
                   "neutron-provider-ext:network-type": "neutron-networks:network-type-vlan",
                   "neutron-provider-ext:physical-network": "datacentre",
                   "neutron-L3-ext:external": true,
                   "name": "drexternal",
                   "shared": false,
                   "admin-state-up": true,
                   "status": "ACTIVE"
               }
           ]
       }
   }

Checking bridge domain in VPP Renderer config data store.
Note that ``physical-location-ref`` is referring to ``"dut2"``, paired by ``neutron-provider-ext:physical-network`` -> ``topology-id``::

   GET http://{{controller}}:{{port}}/restconf/config/vpp-renderer:config

   {
     "config": {
       "bridge-domain": [
         {
           "id": "43282482-a677-4102-87d6-90708f30a115",
           "type": "vpp-renderer:vlan-network",
           "description": "drexternal",
           "vlan": 2016,
           "physical-location-ref": [
             {
               "node-id": "dut2",
               "interface": [
                 "GigabitEthernet0/9/0"
               ]
             }
           ]
         }
       ]
     }
   }

Port (compute)::

   PUT http://{{controller}}:{{port}}/restconf/config/neutron:neutron/ports

   {
       "ports": {
           "port": [
               {
                   "uuid": "3d5dff96-25f5-4d4b-aa11-dc03f7f8d8e0",
                   "tenant-id": "94836b88-0e56-4150-aaa7-60f1c2b67faa",
                   "device-id": "dhcp58155ae3-f2e7-51ca-9978-71c513ab02ee-a91437c0-8492-47e2-b9d0-25c44aef6cda",
                   "neutron-binding:vif-details": [
                       {
                           "details-key": "somekey"
                       }
                   ],
                   "neutron-binding:host-id": "devstack-control",
                   "neutron-binding:vif-type": "vhostuser",
                   "neutron-binding:vnic-type": "normal",
                   "mac-address": "fa:16:3e:4a:9f:c0",
                   "name": "",
                   "network-id": "a91437c0-8492-47e2-b9d0-25c44aef6cda",
                   "neutron-portsecurity:port-security-enabled": false,
                   "device-owner": "network:compute",
                   "fixed-ips": [
                       {
                           "subnet-id": "0a5834ed-ed31-4425-832d-e273cac26325",
                           "ip-address": "10.1.1.3"
                       }
                   ],
                   "admin-state-up": true
               }
           ]
       }
   }

   GET http://{{controller}}:{{port}}/restconf/config/vpp-renderer:config

   {
     "config": {
       "vpp-endpoint": [
         {
           "context-type": "l2-l3-forwarding:l2-bridge-domain",
           "context-id": "a91437c0-8492-47e2-b9d0-25c44aef6cda",
           "address-type": "l2-l3-forwarding:mac-address-type",
           "address": "fa:16:3e:4a:9f:c0",
           "vpp-node-path": "/network-topology:network-topology/network-topology:topology[network-topology:topology-id='topology-netconf']/network-topology:node[network-topology:node-id='devstack-control']",
           "vpp-interface-name": "neutron_port_3d5dff96-25f5-4d4b-aa11-dc03f7f8d8e0",
           "socket": "/tmp/socket_3d5dff96-25f5-4d4b-aa11-dc03f7f8d8e0",
           "description": "neutron port"
         }
       ]
     }
   }

Port (dhcp)::

   PUT http://{{controller}}:{{port}}/restconf/config/neutron:neutron/ports

   {
       "ports": {
           "port": [
               {
                   "uuid": "3d5dff96-25f5-4d4b-aa11-dc03f7f8d8e0",
                   "tenant-id": "94836b88-0e56-4150-aaa7-60f1c2b67faa",
                   "device-id": "dhcp58155ae3-f2e7-51ca-9978-71c513ab02ee-a91437c0-8492-47e2-b9d0-25c44aef6cda",
                   "neutron-binding:vif-details": [
                       {
                           "details-key": "somekey"
                       }
                   ],
                   "neutron-binding:host-id": "devstack-control",
                   "neutron-binding:vif-type": "vhostuser",
                   "neutron-binding:vnic-type": "normal",
                   "mac-address": "fa:16:3e:4a:9f:c0",
                   "name": "",
                   "network-id": "a91437c0-8492-47e2-b9d0-25c44aef6cda",
                   "neutron-portsecurity:port-security-enabled": false,
                   "device-owner": "network:dhcp",
                   "fixed-ips": [
                       {
                           "subnet-id": "0a5834ed-ed31-4425-832d-e273cac26325",
                           "ip-address": "10.1.1.3"
                       }
                   ],
                   "admin-state-up": true
               }
           ]
       }
   }

   GET http://{{controller}}:{{port}}/restconf/config/vpp-renderer:config

   {
     "config": {
       "vpp-endpoint": [
         {
           "context-type": "l2-l3-forwarding:l2-bridge-domain",
           "context-id": "a91437c0-8492-47e2-b9d0-25c44aef6cda",
           "address-type": "l2-l3-forwarding:mac-address-type",
           "address": "fa:16:3e:4a:9f:c0",
           "vpp-node-path": "/network-topology:network-topology/network-topology:topology[network-topology:topology-id='topology-netconf']/network-topology:node[network-topology:node-id='devstack-control']",
           "vpp-interface-name": "neutron_port_3d5dff96-25f5-4d4b-aa11-dc03f7f8d8e0",
           "physical-address": "fa:16:3e:4a:9f:c0",
           "name": "tap3d5dff96-25",
           "description": "neutron port"
         }
       ]
     }
   }
