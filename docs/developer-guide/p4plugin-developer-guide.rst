.. _p4plugin-dev-guide:

P4 Plugin Developer Guide
=========================

P4 Plugin Architecture
----------------------

-  **Netconf-Adapter**

   -  Responsible for device connection, interface resource collection, and
      providing gRPC server information to P4Runtime client.

-  **Runtime**

   -  Implements a gRPC client, more precisely a P4Runtime client, that provides
      several RPCs for users at runtime.
   -  Supports setting and retrieving forwarding pipeline configuration
      dynamically; adding or removing multiple devices; setting up a controller
      cluster; adding, modifying, or deleting table entries; adding, modifying,
      or deleting action profile members, adding, modifying, or deleting action
      profile groups, and transmiting to or retrieving packets from a P4 device.


APIs in P4 Plugin
-----------------

The sections below give details about the configuration settings for
the components that can be configured.

Netconf Adapter
~~~~~~~~~~~~~~~

API Description
^^^^^^^^^^^^^^^

-  p4plugin/adapter/netconf-adapter/api/src/main/yang/p4plugin-netconf-adapter-api.yang

   -  **write-inventory**

      -  Write the collecting interface resource to inventory data store.

   -  **read-inventory**

      -  Acquire the interface resource from inventory data store.


Runtime
~~~~~~~

API Description
^^^^^^^^^^^^^^^

-  p4plugin/runtime/api/src/main/yang/p4plugin-device.yang

   -  **add-device**

      -  Add a P4 device. Users need to provide node ID, device ID, gRPC server
         address, configuration file path, and runtime file path as input.

         In the following scenario, users must catch and handle the exception:
         If node ID or P4 target address (device ID and gRPC server address)
         already exists, parsing the configuration file and runtime file causes
         an exception, such as IOException.

   -  **remove-device**

      -  Remove a P4 device from local list.

   -  **query-devices**

      -  Query how many devices are there currently, and return a list that
         contains node IDs.

   -  **connect-to-device**

      -  Open the stream channel, which is for packet-in and packet-out, and
         send master arbitration update message right away after the stream
         channel is created. The returned value is the connection state.

   -  **set-pipeline-config**

      -  Set forwarding pipeline configuration to a specific device through the
         gRPC channel, and input the node ID associated with the device.

   -  **get-pipeline-config**

      -  Get forwarding pipeline configuration, input the node ID associated,
         and return a string that is the content of the runtime file.


-  p4plugin/core/api/src/main/yang/p4plugin-runtime.yang

   -  **add-table-entry**

      -  Add entry to a specific device. Users must provide parameters such as
         table name; action name and action parameters; match field name and
         match field value; and so on. The node ID must also be provided.

   -  **modify-table-entry**

      -  Modify an existing entry to a specific device. The parameters are
         the same as the ``add-table-entry`` method.

   -  **delete-table-entry**

      -  Delete an existing entry from a specific device. When deleting entries,
         users only need to provide table name and match field information;
         no action information is required.

   -  **add-action-profile-member**

      -  Add a member to a profile. User must provide member ID.

   -  **modify-action-profile-member**

      -  Modify a member that already exists in a profile.

   -  **delete-action-profile-member**

      -  Delete a member that already exists in a profile.

   -  **add-action-profile-group**

      -  Add a group to a profile.

   -  **modify-action-profile-group**

      -  Modify a group that already exists in a profile.

   -  **delete-action-profile-group**

      -  Delete a group that already exists in a profile.

   -  **read-table-entry**

      -  Read an entry from a specific device, input node ID, and table name;
         and output a JSON string. The returned value is Base64 encoded.

   -  **read-action-profile-member**

      -  Read the members of an action profile, input node ID, and action
         profile name; and output a JSON string. The returned value is Base64
         encoded.

   -  **read-action-profile-group**

      -  Read the action profile groups of an action profile, input node ID
         and action profile name; and output a JSON string. The returned value
         is Base64 encoded.


-  p4plugin/core/api/src/main/yang/p4plugin-packet.yang

   -  **p4-transmit-packet**

      -  Transmit a packet to a specific P4 device.

   -  **p4-packet-received**

      -  Receive a packet from P4 device.


-  p4plugin/core/api/src/main/yang/p4plugin-cluster.yang

   -  **set-election-id**

      -  Set the election ID. For more information about the election IDs and
         and their meaning, refer to the following URL: 
         https://github.com/p4lang/PI/blob/master/proto/docs/arbitration.md

         When a new election ID is set, it sends master arbitration update
         messages to all devices it connected.

   -  **get-election-id**

      -  Get current election ID.


Sample Configurations
---------------------

1. Write Inventory
~~~~~~~~~~~~~~~~~~

**REST API** : *POST /restconf/operations/p4plugin-netconf-adapter-api:write-inventory*

**Sample JSON Data**

.. code:: json

    {
         "input": {

        }
    }


2. Add device
~~~~~~~~~~~~~

**REST API** : *POST /restconf/operations/p4plugin-device:add-device*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "nid": "node0",
             "config-file-path": "/home/opendaylight/p4lang/behavioral-model/mininet/simple_router.json",
             "runtime-file-path": "/home/opendaylight/p4lang/behavioral-model/mininet/simple_router.proto.txt",
             "did": "0",
             "ip": "10.42.94.144",
             "port": "50051"
                    }
                }
            ]
        }
    }


3. Connect to device
~~~~~~~~~~~~~~~~~~~~

**REST API** : *POST /restconf/operations/p4plugin-device:connect-to-device*

**Sample JSON Data**

.. code:: json

    {
        "input": {
             "nid": "node0"
         }
    }


4. Set pipeline config
~~~~~~~~~~~~~~~~~~~~~~

**REST API** : *POST /restconf/operations/p4plugin-device:set-pipeline-config*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "nid": "node0"
        }
    }

5. Add table entry
~~~~~~~~~~~~~~~~~~

**REST API** : *POST /restconf/operations/p4plugin-runtime:add-table-entry*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "action-name": "set_nhop",
             "action-param": [
                 {
                     "param-name": "nhop_ipv4",
                     "param-value": "10.0.0.10"
                 },
                 {
                       "param-name": "port",
                     "param-value": "1"
                 }
             ],
             "priority": "0",
             "controller-metadata": "0",
             "table-name": "ipv4_lpm",
             "field": [
                 {
                     "field-name": "ipv4.dstAddr",
                     "lpm-value": "10.0.0.0",
                     "prefix-len": "24"
                 }
             ],
             "nid": "node0"
        }
    }

6. Read table entry
~~~~~~~~~~~~~~~~~~~

**REST API** : *POST /restconf/operations/p4plugin-runtime:read-table-entry*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "table-name": "ipv4_lpm",
             "nid": "node0"
        }
    }
