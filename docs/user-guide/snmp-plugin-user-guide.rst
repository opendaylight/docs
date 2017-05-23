.. _snmp-user-guide:

SNMP Plugin User Guide
======================

Installing Feature
------------------

The SNMP Plugin can be installed using a single karaf feature:
**odl-snmp-plugin**

After starting Karaf:

-  Install the feature: **feature:install odl-snmp-plugin**

-  Expose the northbound API: **feature:install odl-restconf**

Northbound APIs
---------------

There are two exposed northbound APIs: snmp-get & snmp-set

SNMP GET
~~~~~~~~

Default URL: http://localhost:8181/restconf/operations/snmp:snmp-get

POST Input
^^^^^^^^^^

+----------------+----------------+----------------+----------------+----------------+
| Field Name     | Type           | Description    | Example        | Required?      |
+================+================+================+================+================+
| ip-address     | Ipv4 Address   | The IPv4       | 10.86.3.13     | Yes            |
|                |                | Address of the |                |                |
|                |                | desired        |                |                |
|                |                | network node   |                |                |
+----------------+----------------+----------------+----------------+----------------+
| oid            | String         | The Object     | 1.3.6.1.2.1.1. | Yes            |
|                |                | Identifier of  | 1              |                |
|                |                | the desired    |                |                |
|                |                | MIB            |                |                |
|                |                | table/object   |                |                |
+----------------+----------------+----------------+----------------+----------------+
| get-type       | ENUM (GET,     | The type of    | GET-BULK       | Yes            |
|                | GET-NEXT,      | get request to |                |                |
|                | GET-BULK,      | send           |                |                |
|                | GET-WALK)      |                |                |                |
+----------------+----------------+----------------+----------------+----------------+
| community      | String         | The community  | private        | No. (Default:  |
|                |                | string to use  |                | public)        |
|                |                | for the SNMP   |                |                |
|                |                | request        |                |                |
+----------------+----------------+----------------+----------------+----------------+

**Example.**

::

     {
         "input": {
             "ip-address": "10.86.3.13",
             "oid" : "1.3.6.1.2.1.1.1",
             "get-type" : "GET-BULK",
             "community" : "private"
         }
     }

POST Output
^^^^^^^^^^^

+--------------------------+--------------------------+--------------------------+
| Field Name               | Type                     | Description              |
+==========================+==========================+==========================+
| results                  | List of { "value" :      | The results of the SNMP  |
|                          | String } pairs           | query                    |
+--------------------------+--------------------------+--------------------------+

**Example.**

::

     {
         "snmp:results": [
             {
                 "value": "Ethernet0/0/0",
                 "oid": "1.3.6.1.2.1.2.2.1.2.1"
             },
             {
                 "value": "FastEthernet0/0/0",
                 "oid": "1.3.6.1.2.1.2.2.1.2.2"
             },
             {
                 "value": "GigabitEthernet0/0/0",
                 "oid": "1.3.6.1.2.1.2.2.1.2.3"
             }
         ]
     }

SNMP SET
~~~~~~~~

Default URL: http://localhost:8181/restconf/operations/snmp:snmp-set

POST Input
^^^^^^^^^^

+----------------+----------------+----------------+----------------+----------------+
| Field Name     | Type           | Description    | Example        | Required?      |
+================+================+================+================+================+
| ip-address     | Ipv4 Address   | The Ipv4       | 10.86.3.13     | Yes            |
|                |                | address of the |                |                |
|                |                | desired        |                |                |
|                |                | network node   |                |                |
+----------------+----------------+----------------+----------------+----------------+
| oid            | String         | The Object     | 1.3.6.2.1.1.1  | Yes            |
|                |                | Identifier of  |                |                |
|                |                | the desired    |                |                |
|                |                | MIB object     |                |                |
+----------------+----------------+----------------+----------------+----------------+
| value          | String         | The value to   | "Hello World"  | Yes            |
|                |                | set on the     |                |                |
|                |                | network device |                |                |
+----------------+----------------+----------------+----------------+----------------+
| community      | String         | The community  | private        | No. (Default:  |
|                |                | string to use  |                | public)        |
|                |                | for the SNMP   |                |                |
|                |                | request        |                |                |
+----------------+----------------+----------------+----------------+----------------+

**Example.**

::

     {
         "input": {
             "ip-address": "10.86.3.13",
             "oid" : "1.3.6.1.2.1.1.1.0",
             "value" : "Sample description",
             "community" : "private"
         }
     }

POST Output
^^^^^^^^^^^

On a successful SNMP-SET, no output is presented, just a HTTP status of
200.

Errors
^^^^^^

If any errors happen in the set request, you will be presented with an
error message in the output.

For example, on a failed set request you may see an error like:

::

     {
         "errors": {
             "error": [
                 {
                     "error-type": "application",
                     "error-tag": "operation-failed",
                     "error-message": "SnmpSET failed with error status: 17, error index: 1. StatusText: Not writable"
                 }
             ]
         }
     }

which corresponds to Error status 17 in the SNMPv2 RFC:
https://tools.ietf.org/html/rfc1905.

