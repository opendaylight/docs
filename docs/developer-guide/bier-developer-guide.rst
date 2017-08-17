.. _bier-dev-guide:

BIER Developer Guide
====================

BIER Architecture
-----------------

-  **Channel**

   -  Channel (multicast flow) configuration and deploying information management.

-  **Common**

   -  Common YANG models collection.

-  **Drivers**

   -  South-bound NETCONF interface for BIER, it has implemented standard interface (ietf-bier).
      If your BFR's NETCONF interface is Non-standard, you should add your own interface for driver.

-  **Sbi-Adapter**

   -  Adapter for different BIER south-bound NETCONF interfaces.

-  **Service**

   -  Major processor function for BIER.

-  **Bierman**

   -  BIER topology management, and BIER information (BIER, BIER-TE, lable info) configuration.

-  **Pce**

   -  Path computation element for BIER-TE.

-  **Bierapp**

   -  BIER UI, show topology and configure BIER/BIER-TE and channel.


APIs in BIER
------------

The sections below give details about the configuration settings for
the components that can be configured.

BIER Information Manager
~~~~~~~~~~~~~~~~~~~~~~~~

API Description
^^^^^^^^^^^^^^^

-  bier/bierman/api/src/main/yang/bier-topology-api.yang

   -  **load-topology**

      -  Load BIER topology, and list all topo-name in all BIER topologies.

   -  **configure-domain**

      -  Configure domain in given BIER topology.

   -  **configure-subdomain**

      -  Configure sub-domain in given BIER domain and topology.

   -  **delete-domain**

      -  Delete given domain in given topology.

   -  **delete-subdomain**

      -  Delete given sub-domain in given domain and topology.

   -  **query-topology**

      -  Query given topology in BIER topology, and then display this
         topology's detail, such as information of node and link.

   -  **query-node**

      -  Query given nodes in given topology, and then display these nodes'
         detail, such as information of node-name, router-id,
         termination-point list, BIER domain and sub-domain list, etc.

   -  **query-link**

      -  Query given link in given topology, and then display this link's detail.

   -  **query-domain**

      -  Query domain in given BIER topology, and then display the domain-id list.

   -  **query-subdomain**

      -  Query sub-domain in given domain and given topology, and then display
         the sub-domain-id list.

   -  **query-subdomain-node**

      -  Query nodes which have been assigned to given sub-domain and domain in given
         topology, and then display these nodes' details.

   -  **query-subdomain-link**

      -  Query links which have been assigned to given sub-domain and domain in given
         topology, and then display these links' details.

   -  **query-te-subdomain-node**

      -  Query te-nodes which have been assigned to given sub-domain and domain in given
         topology, and then display these te-nodes' details.

   -  **query-te-subdomain-link**

      -  Query te-links which have been assigned to given sub-domain and domain in given
         topology, and then display these te-links' details.


-  bier/bierman/api/src/main/yang/bier-config-api.yang

   -  **configure-node**

      -  Configure node information in given topology, which defined in ietf-bier,
         such as domains, sub-domains, bitstringlength, bfr-id, encapsulation-type, etc.

   -  **delete-node**

      -  Delete given node which be assigned to given sub-domain and domain in
         given topology.

   -  **delete-ipv4**

      -  Delete bier mapping entry of ipv4.

   -  **delete-ipv6**

      -  Delete bier mapping entry of ipv6.


-  bier/bierman/api/src/main/yang/bier-te-config-api.yang

   -  **configure-te-node**

      -  Configure adjancency information for node, such as domains, sub-domains, si,
         bitstringlength, tpid, bitposition, etc.

   -  **configure-te-label**

      -  Configure BIER-TE label range for node.

   -  **delete-te-babel**

      -  Delete BIER-TE label range of node.

   -  **delete-te-bsl**

      -  Delete BIER-TE bitstringlength, including all SIs which belongs to this bitstringlenght.

   -  **delete-te-si**

      -  Delete BIER-TE SI, including all bitpositions which belongs to this SI.

   -  **delete-te-bp**

      -  Delete BIER-TE bitposition of an adjancency.

Parameters Description
^^^^^^^^^^^^^^^^^^^^^^

-  **topology-id**

   -  BIER topology identifier.

-  **node-id**

   -  Node identifier in network topology.

-  **latitude**

   -  Node’s latitude, default value is 0.

-  **longitude**

   -  Node’s longitude, default value is 0.

-  **tp-id**

   -  Termination point identifier.

-  **domain-id**

   -  BIER domain identifier.

-  **encapsulation-type**

   -  Base identity for BIER encapsulation. Default value is "bier-encapsulation-mpls".

-  **bitstringlength**

   -  The bitstringlength type for imposition mode. It's value can be chosen from 64,
      128, 256, 512, 1024, 2048, and 4096.

   -  The BitStringLength ("Imposition BitStringLength") and sub-domain ("Imposition
      sub-domain") to use when it imposes (as a BFIR) a BIER encapsulation on a
      particular set of packets.

-  **bfr-id**

   -  BIER bfr identifier. BFR-id is a number in the range [1, 65535].

   -  Bfr-id is unique within the sub-domain. A BFR-id is a small unstructured positive
      integer. For instance, if a particular BIER sub-domain contains 1, 374 BFRs, each
      one could be given a BFR-id in the range 1-1374.

   -  If a given BFR belongs to more than one sub-domain, it may (though it need not)
      have a different BFR-id for each sub-domain.

-  **ipv4-bfr-prefix**

   -  BIER BFR IPv4 prefix.

   -  A BFR's BFR-Prefix MUST be an IP address (either IPv4 or IPv6) of the BFR, and MUST be
      unique and routable within the BIER domain. It is RECOMMENDED that the BFR-prefix be a
      loopback address of the BFR. Two BFRs in the same BIER domain MUST NOT be assigned the
      same BFR-Prefix. Note that a BFR in a given BIER domain has the same BFR-prefix in all
      the sub-domains of that BIER domain.

-  **ipv6-bfr-prefix**

   -  BIER BFR IPv6 prefix.

-  **sub-domain-id**

   -  Sub-domain identifier. Each sub-domain is identified by a sub-domain-id in the range [0, 255].

   -  A BIER domain may contain one or more sub-domains. Each BIER domain MUST contain at least one
      sub-domain, the "default sub-domain" (also denoted "sub-domain zero"). If a BIER domain
      contains more than one sub-domain, each BFR in the domain MUST be provisioned to know the set
      of sub-domains to which it belongs.

-  **igp-type**

   -  The IGP type. Enum type contains OSPF and ISIS.

-  **mt-id**

   -  Multi-topology associated with BIER sub-domain.

-  **bitstringlength**

   -  Disposition bitstringlength.

   -  The BitStringLengths ("Disposition BitStringLengths") that it will process when
      (as a BFR or BFER) it receives packets from a particular sub-domain.

-  **bier-mpls-label-base**

   -  BIER mpls-label, range in [0, 1048575].

-  **bier-mpls-label-range-size**

   -  BIER mpls-label range size.

-  **link-id**

   -  The identifier of a link in the topology.

   -  A link is specific to a topology to which it belongs.


-  **source-node**

   -  Source node identifier, must be in same topology.

-  **source-tp**

   -  Termination point within source node that terminates the link.

-  **dest-node**

   -  Destination node identifier and must be in same topology.

-  **dest-tp**

   -  Termination point within destination node that terminates the link.

-  **delay**

   -  The link delay, default value is 0.

-  **loss**

   -  The number of packet loss on the link and default value is 0.

Channel Manager
~~~~~~~~~~~~~~~

API Description
^^^^^^^^^^^^^^^

-  bier/channel/api/src/main/yang/bier-channel-api.yang

   -  **get-channel**

      -  Display all channel's names in given BIER topology.

   -  **query-channel**

      -  Query specific channel in given topology and display this channel's information (multicast
         flow information and related BFIR,BFER information).

   -  **add-channel**

      -  Create channel with multicast information in given BIER topology.

   -  **modify-channel**

      -  Modify the channel's information which created above.

   -  **remove-channel**

      -  Remove given channel in given topology.

   -  **deploy-channel**

      -  Deploy channel, and configure BFIR and BFERs about this multicast flow in given topology.

Parameters Description
^^^^^^^^^^^^^^^^^^^^^^

-  **topology-id**

   -  BIER topology identifier.

-  **channel-name**

   -  BIER channel (multicast flow information) name.

-  **src-ip**

   -  The IPv4 of multicast source. The value set to zero means that the receiver interests in
      all source that relevant to one group.

-  **dst-group**

   -  The IPv4 of multicast group.

-  **domain-id**

   -  BIER domain identifier.

-  **sub-domain-id**

   -  BIER sub-domain identifier.

-  **source-wildcard**

   -  The wildcard information of source, in the range [1, 32].

-  **group-wildcard**

   -  The wildcard information of multi-cast group, in the range [1, 32].

-  **ingress-node**

   -  BFIR (Bit-Forwarding Ingress Router).

-  **ingress-bfr-id**

   -  The bfr-id of BRIR.

-  **egress-node**

   -  BFER (Bit-Forwarding Egress Router).

-  **egress-bfr-id**

   -  The bfr-id of BRER.

-  **bier-forwarding-type**

   -  The forwarding type, enum type contains BIER and BIER-TE.

.. note:: For more information about BIER terminology, see `YANG Data Model for BIER Protocol <https://datatracker.ietf.org/doc/draft-ietf-bier-bier-yang/?include_text=1>`_.


Sample Configurations
---------------------

1. Configure Domain And Sub-domain
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1.1. Configure Domain
^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:configure-domain*

**Sample JSON Data**

.. code:: json

    {
         "input": {
            "topo-id": " bier-topo" ,
            "domain ":[
               {
                  "domain-id": " 1",
               },
               {
                 "domain-id": " 2",
               }
            ]
        }
    }

1.2. Configure Sub-domain
^^^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:configure-subdomain*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topo-id": " bier-topo" ,
            "domain-id":" 1",
            "sub-domain":[
                {
                    "sub-domain-id":" 0",
                },
                {
                    "sub-domain-id":"1",
                }
            ]
        }
    }

2. Configure Node
~~~~~~~~~~~~~~~~~

2.1. Configure BIER Parameters
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-config-api:configure-node*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topology-id": "bier-topo",
            "node-id": "node1",
            "domain": [
                {
                    "domain-id": "2",
                    "bier-global": {
                        "sub-domain": [
                            {
                                "sub-domain-id": "0",
                                "igp-type": "ISIS",
                                "mt-id": "1",
                                "bfr-id": "3",
                                "bitstringlength": "64-bit",
                                "af": {
                                    "ipv4": [
                                        {
                                            "bitstringlength": "64",
                                            "bier-mpls-label-base": "56",
                                            "bier-mpls-label-range-size": "100"
                                        }
                                    ]
                                }
                            }
                        ],
                        "encapsulation-type": "bier-encapsulation-mpls",
                        "bitstringlength": "64-bit",
                        "bfr-id": "33",
                        "ipv4-bfr-prefix": "192.168.1.1/24",
                        "ipv6-bfr-prefix": "1030:0:0:0:C9B4:FF12:48AA:1A2B/60"
                    }
                }
            ]
        }
    }

2.2. Configure BIER-TE label
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-te-config-api:configure-te-label*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topology-id": "bier-topo",
            "node-id": "node1",
            "label-base": "100",
            "label-range-size": "20"
        }
    }

2.3. Configure BIER-TE Parameters
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-te-config-api:configure-te-node*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topology-id": "bier-topo",
            "node-id": "node1",
            "te-domain": [
                {
                    "domain-id": "1",
                    "te-sub-domain": [
                        {
                            "sub-domain-id": "0",
                            "te-bsl": [
                                {
                                    "bitstringlength": "64-bit",
                                    "te-si": [
                                        {
                                            "si": "1",
                                            "te-bp": [
                                                {
                                                    "tp-id":"tp1",
                                                    "bitposition": "1"
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ]
                        }
                    ]
                }
            ]
        }
    }

3. Query BIER Topology Information
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

3.1. Load Topology
^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:load-topology*

no request body.

3.2. Query Topology
^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:query-topology*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topo-id": "bier-topo"
        }
    }

3.3. Query BIER Node
^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:query-node*

**Sample JSON Data**

.. code:: json

    {
        "input": {
             "topo-id": "bier-topo",
             "node-id": "node1"
         }
    }

3.4. Query BIER Link
^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:query-link*

**Sample JSON Data**

.. code:: json

    {
        "input": {
             "topo-id": "bier-topo",
             "node-id": "node1"
         }
    }

3.5. Query Domain
^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:query-domain*

**Sample JSON Data**

.. code:: json

    {
        "input": {
             "topo-id": "bier-topo"
         }
    }

3.6. Query Sub-domain
^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:query-subdomain*

**Sample JSON Data**

.. code:: json

    {
        "input": {
             "topo-id": "bier-topo",
             "domain-id": "1"
         }
    }

3.7. Query Sub-domain Node
^^^^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:query-subdomain-node*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topology-id": "bier-topo",
            "domain-id": "1",
            "sub-domain-id": "0"
        }
    }

3.8. Query Sub-domain Link
^^^^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:query-subdomain-link*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topology-id": "bier-topo",
            "domain-id": "1",
            "sub-domain-id": "0"
        }
    }

3.9. Query BIER-TE Sub-domain Node
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:query-te-subdomain-node*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topology-id": "bier-topo",
            "domain-id": "1",
            "sub-domain-id": "0"
        }
    }

3.10. Query BIER-TE Sub-domain Link
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:query-te-subdomain-link*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topology-id": "bier-topo",
            "domain-id": "1",
            "sub-domain-id": "0"
        }
    }

4. BIER Channel  Configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

4.1. Configure Channel
^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-channel-api:add-channel*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topology-id": "bier-topo",
            "name": "channel-1",
            "src-ip": "1.1.1.1",
            "dst-group": "224.1.1.1",
            "domain-id": "1",
            "sub-domain-id": "11",
            "source-wildcard": "24",
            "group-wildcard": "30"
        }
    }

4.2. Modify Channel
^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-channel-api:modify-channel*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topology-id": "bier-topo",
            "name": "channel-1",
            "src-ip": "2.2.2.2",
            "dst-group": "225.1.1.1",
            "domain-id": "1",
            "sub-domain-id": "11",
            "source-wildcard": "24",
            "group-wildcard": "30"
        }
    }

5. Deploy Channel
~~~~~~~~~~~~~~~~~

**REST API** : *POST /restconf/operations/bier-channel-api:deploy-channel*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topology-id": "bier-topo",
            "channel-name": "channel-1",
            "bier-forwarding-type":"bier-te"
            "ingress-node": "node1",
            "egress-node": [
                {
                    "node-id": "node2"
                },
                {
                    "node-id": "node3"
                }
            ]
        }
    }

6. Query Channel Information
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

6.1. Get Channel
^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-channel-api:get-channel*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topology-id": "bier-topo"
        }
    }

6.2. Query Channel
^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-channel-api:query-channel*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topology-id": "bier-topo",
            "channel-name": [
                "channel-1",
                "channel-2"
            ]
        }
    }

7. Remove Channel
~~~~~~~~~~~~~~~~~

**REST API** : *POST /restconf/operations/bier-channel-api:remove-channel*

**Sample JSON Data**

.. code:: json

    {
        "input": {
            "topology-id": "bier-topo",
            "channel-name": "channel-1"
        }
    }

8. Delete BIER and BIER-TE Configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

8.1. Delete BIER Node
^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-config-api:delete-node*

**Sample JSON Data**

.. code:: json

    {
         "input": {
                 "topo-id": "bier-topo",
                 "node-id": "node3",
                 "domain-id": "1",
                 "subdomain-id": "0"
        }
    }

8.2. Delete IPv4 of BIER Node
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-config-api:delete-ipv4*

**Sample JSON Data**

.. code:: json

    {
        input: {
            "topology-id": "bier-topo",
            "domain-id": "1",
            "sub-domain-id": "0",
            "node-id": "node1",
            "ipv4": {
                "bier-mpls-label-base": "10",
                "bier-mpls-label-range-size": "16",
                "bitstringlength": "64"
            }
        }
    }

8.3. Delete IPv6 of BIER Node
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-config-api:delete-ipv6*

**Sample JSON Data**

.. code:: json

    {
        input: {
            "topology-id": "bier-topo",
            "domain-id": "1",
            "sub-domain-id": "0",
            "node-id": "node1",
            "ipv6": {
                "bier-mpls-label-base": "10",
                "bier-mpls-label-range-size": "16",
                "bitstringlength": "64"
            }
        }
    }

8.4. Delete BIER-TE BSL
^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-te-config-api:delete-te-bsl*

**Sample JSON Data**

.. code:: json

    {
        input:{
            "topology-id": "bier-topo",
            "node-id": "node1",
            "domain-id": "1",
            "sub-domain-id": "0",
            "bitstringlength": "64-bit"
        }
    }

8.5. Delete BIER-TE SI
^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-te-config-api:delete-te-si*

**Sample JSON Data**

.. code:: json

    {
        input:{
            "topology-id": "bier-topo",
            "node-id": "node1",
            "domain-id": "1",
            "sub-domain-id": "0",
            "bitstringlength": "64-bit",
            "si": "1"
        }
    }

8.6. Delete BIER-TE BP
^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-te-config-api:delete-te-bp*

**Sample JSON Data**

.. code:: json

    {
        input: {
            "topology-id": "bier-topo",
            "node-id": "node1",
            "domain-id": "1",
            "sub-domain-id": "0",
            "bitstringlength": "64-bit",
            "si": "1",
            "tp-id": "tp1"
        }
    }

8.7. Delete BIER-TE Label
^^^^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-te-config-api:delete-te-label*

**Sample JSON Data**

.. code:: json

    {
         "input": {
                 "topo-id": "bier-topo",
                 "node-id": "node1"
        }
    }

8.8. Delete Sub-domain
^^^^^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:delete-subdomian*

**Sample JSON Data**

.. code:: json

    {
         "input": {
                 "topo-id": "bier-topo",
                 "domain-id": "1",
                 "subdomain-id": "0"
        }
    }

8.9. Delete Domain
^^^^^^^^^^^^^^^^^^

**REST API** : *POST /restconf/operations/bier-topology-api:delete-domian*

**Sample JSON Data**

.. code:: json

    {
         "input": {
                 "topo-id": "bier-topo",
                 "domain-id": "1"
        }
    }
