============
JSONRPC
============

Overview
========

JSON-RPC 2.0 is a lightweight remote procedure call and notification
specification maintained by http://www.jsonrpc.org/. OpenDaylight uses the
YANG-modelled JSON-RPC 2.0 specification as described in the IETF DRAFT:
https://tools.ietf.org/html/draft-yang-json-rpc-03

Behavior Changes
================

No externally visible changes from previous release.

New and Modified Features
=========================

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - JSONRPC-37
     - Add support for both positional and named arguments in RPCs

Deprecated Features
===================

This releases does not deprecate any existing features.

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - JSONRPC-36
     - Incorrect deserialization of NULL value

Known Issues
============

No known issues were identified in this release.