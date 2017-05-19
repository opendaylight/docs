.. _ttp_model_dev_guide:

TTP Model Developer Guide
=========================

Overview
--------

Table Type Patterns are a specification developed by the `Open
Networking Foundation <https://www.opennetworking.org/>`__ to enable the
description and negotiation of subsets of the OpenFlow protocol. This is
particularly useful for hardware switches that support OpenFlow as it
enables the to describe what features they do (and thus also what
features they do not) support. More details can be found in the full
specification listed on the `OpenFlow specifications
page <https://www.opennetworking.org/sdn-resources/onf-specifications/openflow>`__.

TTP Model Architecture
----------------------

The TTP Model provides a YANG-modeled type for a TTP and allows them to
be associated with a master list of known TTPs, as well as active and
supported TTPs with nodes in the MD-SAL inventory model.

Key APIs and Interfaces
-----------------------

The key API provided by the TTP Model feature is the ability to store a
set of TTPs in the MD-SAL as well as associate zero or one active TTPs
and zero or more supported TTPs along with a given node in the MD-SAL
inventory model.

API Reference Documentation
---------------------------

RESTCONF
~~~~~~~~

See the generated RESTCONF API documentation at:
http://localhost:8181/apidoc/explorer/index.html

Look for the onf-ttp module to expand and see the various RESTCONF APIs.

Java Bindings
~~~~~~~~~~~~~

As stated above there are 3 locations where a Table Type Pattern can be
placed into the MD-SAL Data Store. They correspond to 3 different REST
API URIs:

1. ``restconf/config/onf-ttp:opendaylight-ttps/onf-ttp:table-type-patterns/``

2. ``restconf/config/opendaylight-inventory:nodes/node/{id}/ttp-inventory-node:active_ttp/``

3. ``restconf/config/opendaylight-inventory:nodes/node/{id}/ttp-inventory-node:supported_ttps/``

.. note::

    Typically, these URIs are running on the machine the controller is
    on at port 8181. If you are on the same machine they can thus be
    accessed at ``http://localhost:8181/<uri>``

Using the TTP Model RESTCONF APIs
---------------------------------

Setting REST HTTP Headers
~~~~~~~~~~~~~~~~~~~~~~~~~

Authentication
^^^^^^^^^^^^^^

The REST API calls require authentication by default. The default method
is to use basic auth with a user name and password of ‘admin’.

Content-Type and Accept
^^^^^^^^^^^^^^^^^^^^^^^

RESTCONF supports both xml and json. This example focuses on JSON, but
xml can be used just as easily. When doing a PUT or POST be sure to
specify the appropriate ``Conetnt-Type`` header: either
``application/json`` or ``application/xml``.

When doing a GET be sure to specify the appropriate ``Accept`` header:
again, either ``application/json`` or ``application/xml``.

Content
~~~~~~~

The contents of a PUT or POST should be a OpenDaylight Table Type
Pattern. An example of one is provided below. The example can also be
found at `parser/sample-TTP-from-tests.ttp in the TTP git
repository <https://git.opendaylight.org/gerrit/gitweb?p=ttp.git;a=blob;f=parser/sample-TTP-from-tests.ttp;h=45130949b25c6f86b750959d27d04ec2208935fb;hb=HEAD>`__.

**Sample Table Type Pattern (json).**

::

    {
        "table-type-patterns": {
            "table-type-pattern": [
                {
                    "security": {
                        "doc": [
                            "This TTP is not published for use by ONF. It is an example and for",
                            "illustrative purposes only.",
                            "If this TTP were published for use it would include",
                            "guidance as to any security considerations in this doc member."
                        ]
                    },
                    "NDM_metadata": {
                        "authority": "org.opennetworking.fawg",
                        "OF_protocol_version": "1.3.3",
                        "version": "1.0.0",
                        "type": "TTPv1",
                        "doc": [
                            "Example of a TTP supporting L2 (unicast, multicast, flooding), L3 (unicast only),",
                            "and an ACL table."
                        ],
                        "name": "L2-L3-ACLs"
                    },
                    "identifiers": [
                        {
                            "doc": [
                                "The VLAN ID of a locally attached L2 subnet on a Router."
                            ],
                            "var": "<subnet_VID>"
                        },
                        {
                            "doc": [
                                "An OpenFlow group identifier (integer) identifying a group table entry",
                                "of the type indicated by the variable name"
                            ],
                            "var": "<<group_entry_types/name>>"
                        }
                    ],
                    "features": [
                        {
                            "doc": [
                                "Flow entry notification Extension – notification of changes in flow entries"
                            ],
                            "feature": "ext187"
                        },
                        {
                            "doc": [
                                "Group notifications Extension – notification of changes in group or meter entries"
                            ],
                            "feature": "ext235"
                        }
                    ],
                    "meter_table": {
                        "meter_types": [
                            {
                                "name": "ControllerMeterType",
                                "bands": [
                                    {
                                        "type": "DROP",
                                        "rate": "1000..10000",
                                        "burst": "50..200"
                                    }
                                ]
                            },
                            {
                                "name": "TrafficMeter",
                                "bands": [
                                    {
                                        "type": "DSCP_REMARK",
                                        "rate": "10000..500000",
                                        "burst": "50..500"
                                    },
                                    {
                                        "type": "DROP",
                                        "rate": "10000..500000",
                                        "burst": "50..500"
                                    }
                                ]
                            }
                        ],
                        "built_in_meters": [
                            {
                                "name": "ControllerMeter",
                                "meter_id": 1,
                                "type": "ControllerMeterType",
                                "bands": [
                                    {
                                        "rate": 2000,
                                        "burst": 75
                                    }
                                ]
                            },
                            {
                                "name": "AllArpMeter",
                                "meter_id": 2,
                                "type": "ControllerMeterType",
                                "bands": [
                                    {
                                        "rate": 1000,
                                        "burst": 50
                                    }
                                ]
                            }
                        ]
                    },
                    "table_map": [
                        {
                            "name": "ControlFrame",
                            "number": 0
                        },
                        {
                            "name": "IngressVLAN",
                            "number": 10
                        },
                        {
                            "name": "MacLearning",
                            "number": 20
                        },
                        {
                            "name": "ACL",
                            "number": 30
                        },
                        {
                            "name": "L2",
                            "number": 40
                        },
                        {
                            "name": "ProtoFilter",
                            "number": 50
                        },
                        {
                            "name": "IPv4",
                            "number": 60
                        },
                        {
                            "name": "IPv6",
                            "number": 80
                        }
                    ],
                    "parameters": [
                        {
                            "doc": [
                                "documentation"
                            ],
                            "name": "Showing-curt-how-this-works",
                            "type": "type1"
                        }
                    ],
                    "flow_tables": [
                        {
                            "doc": [
                                "Filters L2 control reserved destination addresses and",
                                "may forward control packets to the controller.",
                                "Directs all other packets to the Ingress VLAN table."
                            ],
                            "name": "ControlFrame",
                            "flow_mod_types": [
                                {
                                    "doc": [
                                        "This match/action pair allows for flow_mods that match on either",
                                        "ETH_TYPE or ETH_DST (or both) and send the packet to the",
                                        "controller, subject to metering."
                                    ],
                                    "name": "Frame-To-Controller",
                                    "match_set": [
                                        {
                                            "field": "ETH_TYPE",
                                            "match_type": "all_or_exact"
                                        },
                                        {
                                            "field": "ETH_DST",
                                            "match_type": "exact"
                                        }
                                    ],
                                    "instruction_set": [
                                        {
                                            "doc": [
                                                "This meter may be used to limit the rate of PACKET_IN frames",
                                                "sent to the controller"
                                            ],
                                            "instruction": "METER",
                                            "meter_name": "ControllerMeter"
                                        },
                                        {
                                            "instruction": "APPLY_ACTIONS",
                                            "actions": [
                                                {
                                                    "action": "OUTPUT",
                                                    "port": "CONTROLLER"
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ],
                            "built_in_flow_mods": [
                                {
                                    "doc": [
                                        "Mandatory filtering of control frames with C-VLAN Bridge reserved DA."
                                    ],
                                    "name": "Control-Frame-Filter",
                                    "priority": "1",
                                    "match_set": [
                                        {
                                            "field": "ETH_DST",
                                            "mask": "0xfffffffffff0",
                                            "value": "0x0180C2000000"
                                        }
                                    ]
                                },
                                {
                                    "doc": [
                                        "Mandatory miss flow_mod, sends packets to IngressVLAN table."
                                    ],
                                    "name": "Non-Control-Frame",
                                    "priority": "0",
                                    "instruction_set": [
                                        {
                                            "instruction": "GOTO_TABLE",
                                            "table": "IngressVLAN"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "group_entry_types": [
                        {
                            "doc": [
                                "Output to a port, removing VLAN tag if needed.",
                                "Entry per port, plus entry per untagged VID per port."
                            ],
                            "name": "EgressPort",
                            "group_type": "INDIRECT",
                            "bucket_types": [
                                {
                                    "name": "OutputTagged",
                                    "action_set": [
                                        {
                                            "action": "OUTPUT",
                                            "port": "<port_no>"
                                        }
                                    ]
                                },
                                {
                                    "name": "OutputUntagged",
                                    "action_set": [
                                        {
                                            "action": "POP_VLAN"
                                        },
                                        {
                                            "action": "OUTPUT",
                                            "port": "<port_no>"
                                        }
                                    ]
                                },
                                {
                                    "opt_tag": "VID-X",
                                    "name": "OutputVIDTranslate",
                                    "action_set": [
                                        {
                                            "action": "SET_FIELD",
                                            "field": "VLAN_VID",
                                            "value": "<local_vid>"
                                        },
                                        {
                                            "action": "OUTPUT",
                                            "port": "<port_no>"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "flow_paths": [
                        {
                            "doc": [
                                "This object contains just a few examples of flow paths, it is not",
                                "a comprehensive list of the flow paths required for this TTP.  It is",
                                "intended that the flow paths array could include either a list of",
                                "required flow paths or a list of specific flow paths that are not",
                                "required (whichever is more concise or more useful."
                            ],
                            "name": "L2-2",
                            "path": [
                                "Non-Control-Frame",
                                "IV-pass",
                                "Known-MAC",
                                "ACLskip",
                                "L2-Unicast",
                                "EgressPort"
                            ]
                        },
                        {
                            "name": "L2-3",
                            "path": [
                                "Non-Control-Frame",
                                "IV-pass",
                                "Known-MAC",
                                "ACLskip",
                                "L2-Multicast",
                                "L2Mcast",
                                "[EgressPort]"
                            ]
                        },
                        {
                            "name": "L2-4",
                            "path": [
                                "Non-Control-Frame",
                                "IV-pass",
                                "Known-MAC",
                                "ACL-skip",
                                "VID-flood",
                                "VIDflood",
                                "[EgressPort]"
                            ]
                        },
                        {
                            "name": "L2-5",
                            "path": [
                                "Non-Control-Frame",
                                "IV-pass",
                                "Known-MAC",
                                "ACLskip",
                                "L2-Drop"
                            ]
                        },
                        {
                            "name": "v4-1",
                            "path": [
                                "Non-Control-Frame",
                                "IV-pass",
                                "Known-MAC",
                                "ACLskip",
                                "L2-Router-MAC",
                                "IPv4",
                                "v4-Unicast",
                                "NextHop",
                                "EgressPort"
                            ]
                        },
                        {
                            "name": "v4-2",
                            "path": [
                                "Non-Control-Frame",
                                "IV-pass",
                                "Known-MAC",
                                "ACLskip",
                                "L2-Router-MAC",
                                "IPv4",
                                "v4-Unicast-ECMP",
                                "L3ECMP",
                                "NextHop",
                                "EgressPort"
                            ]
                        }
                    ]
                }
            ]
        }
    }

Making a REST Call
~~~~~~~~~~~~~~~~~~

In this example we’ll do a PUT to install the sample TTP from above into
OpenDaylight and then retrieve it both as json and as xml. We’ll use the
`Postman - REST
Client <https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm>`__
for Chrome in the examples, but any method of accessing REST should
work.

First, we’ll fill in the basic information:

.. figure:: ./images/ttp-screen1-basic-auth.png
   :alt: Filling in URL, content, Content-Type and basic auth

   Filling in URL, content, Content-Type and basic auth

1. Set the URL to
   ``http://localhost:8181/restconf/config/onf-ttp:opendaylight-ttps/onf-ttp:table-type-patterns/``

2. Set the action to ``PUT``

3. Click Headers and

4. Set a header for ``Content-Type`` to ``application/json``

5. Make sure the content is set to raw and

6. Copy the sample TTP from above into the content

7. Click the Basic Auth tab and

8. Set the username and password to admin

9. Click Refresh headers

.. figure:: ./images/ttp-screen2-applied-basic-auth.png
   :alt: Refreshing basic auth headers

   Refreshing basic auth headers

After clicking Refresh headers, we can see that a new header
(``Authorization``) has been created and this will allow us to
authenticate to make the REST call.

.. figure:: ./images/ttp-screen3-sent-put.png
   :alt: PUTting a TTP

   PUTting a TTP

At this point, clicking send should result in a Status response of ``200
OK`` indicating we’ve successfully PUT the TTP into OpenDaylight.

.. figure:: ./images/ttp-screen4-get-json.png
   :alt: Retrieving the TTP as json via a GET

   Retrieving the TTP as json via a GET

We can now retrieve the TTP by:

1. Changing the action to ``GET``

2. Setting an ``Accept`` header to ``application/json`` and

3. Pressing send

.. figure:: ./images/ttp-screen5-get-xml.png
   :alt: Retrieving the TTP as xml via a GET

   Retrieving the TTP as xml via a GET

The same process can retrieve the content as xml by setting the
``Accept`` header to ``application/xml``.

