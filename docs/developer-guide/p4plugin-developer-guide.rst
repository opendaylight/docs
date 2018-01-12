.. _p4plugin-dev-guide:

P4 Plugin Developer Guide
=========================

P4 Plugin Architecture
----------------------

-  **Netconf-Adapter**

   -  Responsible for device connection, interface resource collection and provide grpc server info to Runtime.

-  **Runtime**

   -  Implement a gRPC client, more precisely a P4Runtime client, which will provide many RPCs for users in Runtime.
      Support set and get forwarding pipeline config dynamically, multiples devices, controller cluster, table entry
      population, action profile member and action profile group,packet in/out.


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

      -  Add a P4 device, users need to provide node id, device id, gRPC server address, config file
         path and runtime file path as input. In the following scenario, users must catch and handle
         the exception.

             1.If node id or P4 target address(device id and gRPC sever address) is already existed.
             2.Parsing the config file and runtime file causing exception, such as IOException.

   -  **remove-device**

      -  Remove a P4 device from local list.

   -  **query-devices**

      -  Query how many devices are there currently, return a list which contains node ids.

   -  **connect-to-device**

      -  Open the stream channel which is for packet-in and packet-out, send maser arbitration update
         message right away after the stream channel is created. Return value is the connect state.

   -  **set-pipeline-config**

      -  Set forwarding pipeline config to a specific device through the gRPC channel, input the
         device's node id.

   -  **get-pipeline-config**

      -  Get forwarding pipeline config, input the device's node id, return a string which is the
         content of the runtime file.


-  p4plugin/core/api/src/main/yang/p4plugin-runtime.yang

   -  **add-table-entry**

      -  Add entry to a specific device, users must provide parameters such as table name, action
         name and action parameters, match field name and match field value and so on. The node id
         also must be provided.

   -  **modify-table-entry**

      -  Modify an existed entry to a specific device, the same input as the add method.

   -  **delete-table-entry**

      -  Delete an existing entry from a specific device. When deleting, users only need to provide
         table name and match fields info, no need for action info.

   -  **add-action-profile-member**

      -  Add a member to a profile, user must provide member id.

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

      -  Read an entry from a specific device, input node id and table name, output a json string,
         the value will be Base64 encoded.

   -  **read-action-profile-member**

      -  Read the members of an action profile, input node id and action profile name, output a
         json string,the value will be Base64 encoded.

   -  **read-action-profile-group**

      -  Read the action profile groups of an action profile, input node id and action profile name,
         output a json string, the value will be Base64 encoded.


-  p4plugin/core/api/src/main/yang/p4plugin-packet.yang

   -  **p4-transmit-packet**

      -  Transmit a packet to a specific P4 device.

   -  **p4-packet-received**

      -  Receive a packet from P4 device.


-  p4plugin/core/api/src/main/yang/p4plugin-cluster.yang

   -  **set-election-id**

      -  Set the election id, as for the meaning of the election id, it is not in this scope, please
         visit the website:

                  https://github.com/p4lang/PI/blob/master/proto/docs/arbitration.md

         When set the a new election id, it will send master arbitration update message to all devices
         it connected.

   -  **get-election-id**

      -  Get current election id.


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
