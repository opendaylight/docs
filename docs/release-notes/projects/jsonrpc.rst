========
JSON-RPC
========

Overview
========

JSON-RPC 2.0 is a lightweight remote procedure call and notification
specification maintained by `JSON RPC <http://www.jsonrpc.org/>`_. OpenDaylight
uses the YANG-modelled JSON-RPC 2.0 specification as described in the
`IETF DRAFT <https://tools.ietf.org/html/draft-yang-json-rpc-03>`_.

Behavior/Feature Changes
========================

No externally visible changes from previous release.


New Features
============

This release provides the following new features:

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - JSONRPC-43
     - Cluster support

   * - JSONRPC-45
     - Test tool


Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - JSONRPC-41
     - Publish operational state even in case of failure



Known Issues
============

The following table lists the known issues that exist in this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - JSONRPC-50
     - Inband schema provider require YangXPathParserFactory

   * - JSONRPC-52
     - RPC implementation not available in cluster
