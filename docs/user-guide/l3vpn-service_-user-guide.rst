L3VPN Service: User Guide
=========================

Overview
--------

L3VPN Service in OpenDaylight provides a framework to create L3VPN based
on BGP-MP. It also helps to create Network Virtualization for DC Cloud
environment.

Modules & Interfaces
--------------------

L3VPN service can be realized using the following modules -

VPN Service Modules
~~~~~~~~~~~~~~~~~~~

1. **VPN Manager** : Creates and manages VPNs and VPN Interfaces

2. **BGP Manager** : Configures BGP routing stack and provides interface
   to routing services

3. **FIB Manager** : Provides interface to FIB, creates and manages
   forwarding rules in Dataplane

4. **Nexthop Manager** : Creates and manages nexthop egress pointer,
   creates egress rules in Dataplane

5. **Interface Manager** : Creates and manages different type of network
   interfaces, e.g., VLAN, l3tunnel etc.,

6. **Id Manager** : Provides cluster-wide unique ID for a given key.
   Used by different modules to get unique IDs for different entities.

7. **MD-SAL Util** : Provides interface to MD-SAL. Used by service
   modules to access MD-SAL Datastore and services.

All the above modules can function independently and can be utilized by
other services as well.

Configuration Interfaces
~~~~~~~~~~~~~~~~~~~~~~~~

The following modules expose configuration interfaces through which user
can configure L3VPN Service.

1. BGP Manager

2. VPN Manager

3. Interface Manager

4. FIB Manager

Configuration Interface Details
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. Data Node Path : */config/bgp:bgp-router/*

   a. Fields :

      i.  local-as-identifier

      ii. local-as-number

   b. REST Methods : GET, PUT, DELETE, POST

2. Data Node Path : */config/bgp:bgp-neighbors/*

   a. Fields :

      i. List of bgp-neighbor

   b. REST Methods : GET, PUT, DELETE, POST

3. Data Node Path :
   */config/bgp:bgp-neighbors/bgp-neighbor/``{as-number}``/*

   a. Fields :

      i.  as-number

      ii. ip-address

   b. REST Methods : GET, PUT, DELETE, POST

1. Data Node Path : */config/l3vpn:vpn-instances/*

   a. Fields :

      i. List of vpn-instance

   b. REST Methods : GET, PUT, DELETE, POST

2. Data Node Path : */config/l3vpn:vpn-interfaces/vpn-instance*

   a. Fields :

      i.   name

      ii.  route-distinguisher

      iii. import-route-policy

      iv.  export-route-policy

   b. REST Methods : GET, PUT, DELETE, POST

3. Data Node Path : */config/l3vpn:vpn-interfaces/*

   a. Fields :

      i. List of vpn-interface

   b. REST Methods : GET, PUT, DELETE, POST

4. Data Node Path : */config/l3vpn:vpn-interfaces/vpn-interface*

   a. Fields :

      i.  name

      ii. vpn-instance-name

   b. REST Methods : GET, PUT, DELETE, POST

5. Data Node Path :
   */config/l3vpn:vpn-interfaces/vpn-interface/``{name}``/adjacency*

   a. Fields :

      i.  ip-address

      ii. mac-address

   b. REST Methods : GET, PUT, DELETE, POST

1. Data Node Path : */config/if:interfaces/interface*

   a. Fields :

      i.   name

      ii.  type

      iii. enabled

      iv.  of-port-id

      v.   tenant-id

      vi.  base-interface

   b. type specific fields

      i.   when type = *l2vlan*

           A. vlan-id

      ii.  when type = *stacked\_vlan*

           A. stacked-vlan-id

      iii. when type = *l3tunnel*

           A. tunnel-type

           B. local-ip

           C. remote-ip

           D. gateway-ip

      iv.  when type = *mpls*

           A. list labelStack

           B. num-labels

   c. REST Methods : GET, PUT, DELETE, POST

1. Data Node Path : */config/odl-fib:fibEntries/vrfTables*

   a. Fields :

      i. List of vrfTables

   b. REST Methods : GET, PUT, DELETE, POST

2. Data Node Path :
   */config/odl-fib:fibEntries/vrfTables/``{routeDistinguisher}``/*

   a. Fields :

      i.  route-distinguisher

      ii. list vrfEntries

          A. destPrefix

          B. label

          C. nexthopAddress

   b. REST Methods : GET, PUT, DELETE, POST

3. Data Node Path : */config/odl-fib:fibEntries/ipv4Table*

   a. Fields :

      i. list ipv4Entry

         A. destPrefix

         B. nexthopAddress

   b. REST Methods : GET, PUT, DELETE, POST

Provisioning Sequence & Sample Configurations
---------------------------------------------

Installation
~~~~~~~~~~~~

1. Edit *etc/custom.properties* and set the following property:
   *vpnservice.bgpspeaker.host.name = <bgpserver-ip>* *<bgpserver-ip>*
   here refers to the IP address of the host where BGP is running.

2. Run ODL and install VPN Service *feature:install odl-vpnservice-core*

Use REST interface to configure L3VPN service

Pre-requisites:
~~~~~~~~~~~~~~~

1. BGP stack with VRF support needs to installed and configured

   a. *Configure BGP as specified in Step 1 below.*

2. Create pairs of GRE/VxLAN Tunnels (using ovsdb/ovs-vsctl) between
   each switch and between each switch to the Gateway node

   a. *Create *l3tunnel* interfaces corresponding to each tunnel in
      interfaces DS as specified in Step 2 below.*

Step 1 : Configure BGP
~~~~~~~~~~~~~~~~~~~~~~

1. Configure BGP Router
^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *PUT /config/bgp:bgp-router/*

**Sample JSON Data**

.. code:: json

    {
        "bgp-router": {
            "local-as-identifier": "10.10.10.10",
            "local-as-number": 108
        }
    }

2. Configure BGP Neighbors
^^^^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *PUT /config/bgp:bgp-neighbors/*

**Sample JSON Data**

.. code:: json

      {
         "bgp-neighbor" : [
                {
                    "as-number": 105,
                    "ip-address": "169.144.42.168"
                }
           ]
       }

Step 2 : Create Tunnel Interfaces
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create l3tunnel interfaces corresponding to all GRE/VxLAN tunnels
created with ovsdb (`refer Prerequisites <#prer>`__). Use following REST
Interface -

**REST API** : *PUT /config/if:interfaces/if:interfacce*

**Sample JSON Data**

.. code:: json

    {
        "interface": [
            {
                "name" : "GRE_192.168.57.101_192.168.57.102",
                "type" : "odl-interface:l3tunnel",
                "odl-interface:tunnel-type": "odl-interface:tunnel-type-gre",
                "odl-interface:local-ip" : "192.168.57.101",
                "odl-interface:remote-ip" : "192.168.57.102",
                "odl-interface:portId" : "openflow:1:3",
                "enabled" : "true"
            }
        ]
    }

Following is expected as a result of these configurations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. Unique If-index is generated

2. *Interface-state* operational DS is updated

3. Corresponding Nexthop Group Entry is created

Step 3 : OS Create Neutron Ports and attach VMs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

At this step user creates VMs.

Step 4 : Create VM Interfaces
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create l2vlan interfaces corresponding to VM created in step 3

**REST API** : *PUT /config/if:interfaces/if:interface*

**Sample JSON Data**

.. code:: json

    {
        "interface": [
            {
                "name" : "dpn1-dp1.2",
                "type" : "l2vlan",
                "odl-interface:of-port-id" : "openflow:1:2",
                "odl-interface:vlan-id" : "1",
                "enabled" : "true"
            }
        ]
    }

Step 5: Create VPN Instance
~~~~~~~~~~~~~~~~~~~~~~~~~~~

**REST API** : *PUT /config/l3vpn:vpn-instances/l3vpn:vpn-instance/*

**Sample JSON Data**

.. code:: json

    {
      "vpn-instance": [
        {
            "description": "Test VPN Instance 1",
            "vpn-instance-name": "testVpn1",
            "ipv4-family": {
                "route-distinguisher": "4000:1",
                "export-route-policy": "4000:1,5000:1",
                "import-route-policy": "4000:1,5000:1",
            }
        }
      ]
    }

Following is expected as a result of these configurations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. VPN ID is allocated and updated in data-store

2. Corresponding VRF is created in BGP

3. If there are vpn-interface configurations for this VPN, corresponding
   action is taken as defined in step 5

Step 5 : Create VPN-Interface and Local Adjacency
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*this can be done in two steps as well*

1. Create vpn-interface
^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *PUT /config/l3vpn:vpn-interfaces/l3vpn:vpn-interface/*

**Sample JSON Data**

.. code:: json

    {
      "vpn-interface": [
        {
          "vpn-instance-name": "testVpn1",
          "name": "dpn1-dp1.2",
        }
      ]
    }

.. note::

    name here is the name of VM interface created in step 3, 4

2. Add Adjacencies on vpn-interafce
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *PUT
/config/l3vpn:vpn-interfaces/l3vpn:vpn-interface/dpn1-dp1.3/adjacency*

**Sample JSON Data**

.. code:: json

      {
         "adjacency" : [
                {
                    "ip-address" : "169.144.42.168",
                    "mac-address" : "11:22:33:44:55:66"
                }
           ]
       }

    its a list, user can define more than one adjacency on a
    vpn\_interface

Above steps can be carried out in a single step as following

.. code:: json

    {
        "vpn-interface": [
            {
                "vpn-instance-name": "testVpn1",
                "name": "dpn1-dp1.3",
                "odl-l3vpn:adjacency": [
                    {
                        "odl-l3vpn:mac_address": "11:22:33:44:55:66",
                        "odl-l3vpn:ip_address": "11.11.11.2",
                    }
                ]
            }
        ]
    }

Following is expected as a result of these configurations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. Prefix label is generated and stored in DS

2. Ingress table is programmed with flow corresponding to interface

3. Local Egress Group is created

4. Prefix is added to BGP for advertisement

5. BGP pushes route update to FIB YANG Interface

6. FIB Entry flow is added to FIB Table in OF pipeline

