.. _didm-developer-guide:

DIDM Developer Guide
====================

Overview
--------

The Device Identification and Driver Management (DIDM) project addresses
the need to provide device-specific functionality. Device-specific
functionality is code that performs a feature, and the code is
knowledgeable of the capability and limitations of the device. For
example, configuring VLANs and adjusting FlowMods are features, and
there may be different implementations for different device types.
Device-specific functionality is implemented as Device Drivers. Device
Drivers need to be associated with the devices they can be used with. To
determine this association requires the ability to identify the device
type.

DIDM Architecture
-----------------

The DIDM project creates the infrastructure to support the following
functions:

-  **Discovery** - Determination that a device exists in the controller
   management domain and connectivity to the device can be established.
   For devices that support the OpenFlow protocol, the existing
   discovery mechanism in OpenDaylight suffices. Devices that do not
   support OpenFlow will be discovered through manual means such as the
   operator entering device information via GUI or REST API.

-  **Identification** – Determination of the device type.

-  **Driver Registration** – Registration of Device Drivers as routed
   RPCs.

-  **Synchronization** – Collection of device information, device
   configuration, and link (connection) information.

-  **Data Models for Common Features** – Data models will be defined to
   perform common features such as VLAN configuration. For example,
   applications can configure a VLAN by writing the VLAN data to the
   data store as specified by the common data model.

-  **RPCs for Common Features** – Configuring VLANs and adjusting
   FlowMods are example of features. RPCs will be defined that specify
   the APIs for these features. Drivers implement features for specific
   devices and support the APIs defined by the RPCs. There may be
   different Driver implementations for different device types.

Key APIs and Interfaces
-----------------------

.. _didm-flow-objective-api:

FlowObjective API
~~~~~~~~~~~~~~~~~

Following are the list of the APIs to create the flow objectives to
install the flow rule in OpenFlow switch in pipeline agnostic way.
Currently these APIs are getting consumed by Atrium project.

Install the Forwarding Objective:

``http://<CONTROLLER-IP>:8181/restconf/operations/atrium-flow-objective:forward``

Install the Filter Objective

``http://<CONTROLLER-IP>:8181/restconf/operations/atrium-flow-objective:filter``

Install the Next Objective:

``http://<CONTROLLER-IP>:8181/restconf/operations/atrium-flow-objective:next``

Flow mod driver API
~~~~~~~~~~~~~~~~~~~

This release includes a flow mod driver for the HP 3800. This
driver adjusts the flows and push the same to the device. This API takes
the flow to be adjusted as input and displays the adjusted flow as
output in the REST output container. Here is the REST API to adjust and
push flows to HP 3800 device:

::

    http://<CONTROLLER-IP:8181>/restconf/operations/openflow-feature:adjust-flow

Here is an example of an ARP flow and how it gets adjusted and pushed to
device HP3800:

**adjust-flow input.**

::

    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
    <input xmlns="urn:opendaylight:params:xml:ns:yang:didm:drivers:openflow" xmlns:opendaylight-inventory="urn:opendaylight:inventory">
      <node>/opendaylight-inventory:nodes/opendaylight-inventory:node[opendaylight-inventory:id='openflow:673249119553088']</node>
        <flow>
          <match>
            <ethernet-match>
                <ethernet-type>
                    <type>2054</type>
                </ethernet-type>
            </ethernet-match>
          </match>
          <flags>SEND_FLOW_REM</flags>
          <priority>0</priority>
          <flow-name>ARP_FLOW</flow-name>
          <instructions>
            <instruction>
                <order>0</order>
                <apply-actions>
                    <action>
                        <order>0</order>
                        <output-action>
                            <output-node-connector>CONTROLLER</output-node-connector>
                            <max-length>65535</max-length>
                        </output-action>
                    </action>
                    <action>
                        <order>1</order>
                        <output-action>
                            <output-node-connector>NORMAL</output-node-connector>
                            <max-length>65535</max-length>
                        </output-action>
                    </action>
                </apply-actions>
            </instruction>
          </instructions>
          <idle-timeout>180</idle-timeout>
          <hard-timeout>1800</hard-timeout>
          <cookie>10</cookie>
        </flow>
    </input>

In the output, you can see that the table ID has been identified for the
given flow and two flow mods are created as a result of adjustment. The
first one is to catch ARP packets in Hardware table 100 with an action
to goto table 200. The second flow mod is in table 200 with actions:
output normal and output controller.

**adjust-flow output.**

::

    {
      "output": {
        "flow": [
          {
            "idle-timeout": 180,
            "instructions": {
              "instruction": [
                {
                  "order": 0,
                  "apply-actions": {
                    "action": [
                      {
                        "order": 1,
                        "output-action": {
                          "output-node-connector": "NORMAL",
                          "max-length": 65535
                        }
                      },
                      {
                        "order": 0,
                        "output-action": {
                          "output-node-connector": "CONTROLLER",
                          "max-length": 65535
                        }
                      }
                    ]
                  }
                }
              ]
            },
            "strict": false,
            "table_id": 200,
            "flags": "SEND_FLOW_REM",
            "cookie": 10,
            "hard-timeout": 1800,
            "match": {
              "ethernet-match": {
                "ethernet-type": {
                  "type": 2054
                }
              }
            },
            "flow-name": "ARP_FLOW",
            "priority": 0
          },
          {
            "idle-timeout": 180,
            "instructions": {
              "instruction": [
                {
                  "order": 0,
                  "go-to-table": {
                    "table_id": 200
                  }
                }
              ]
            },
            "strict": false,
            "table_id": 100,
            "flags": "SEND_FLOW_REM",
            "cookie": 10,
            "hard-timeout": 1800,
            "match": {},
            "flow-name": "ARP_FLOW",
            "priority": 0
          }
        ]
      }
    }

API Reference Documentation
---------------------------

Go to
http://${controller-ip}:8181/apidoc/explorer/index.html,
and look under DIDM section to see all the available REST calls and
tables
