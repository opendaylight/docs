.. _jsonrpc_user_guide:

JSON-RPC User Guide
===================

Overview
--------

JSON-RPC 2.0 is a lightweight remote procedure call and notification
specification maintained by http://www.jsonrpc.org/. OpenDaylight uses the
YANG-modelled JSON-RPC 2.0 specification as described in the IETF DRAFT:
https://tools.ietf.org/html/draft-yang-json-rpc-00

Supported Transports
--------------------

The JSON-RPC 2.0 plugin in OpenDaylight supports both ODL as server
and as a client with ZMQ. HTTP support will be added in future
versions.

Additional Information
----------------------

JSON-RPC 2.0 is primarily intended for developers of interfaces
and extensions that are used to connect OpenDaylight to external systems.
For additional information, please see the JSON-RPC Developer Guide.
