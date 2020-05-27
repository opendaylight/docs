============
JSONRPC
============

Overview
========

JSON-RPC 2.0 is a lightweight remote procedure call and notification
specification maintained by the `JSON RPC <http://www.jsonrpc.org/>`_. OpenDaylight uses the
YANG-modelled JSON-RPC 2.0 specification as described in the `IETF DRAFT
<https://tools.ietf.org/html/draft-yang-json-rpc-03>`_.

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

   * - `JSONRPC-37 <https://jira.opendaylight.org/browse/JSONRPC-37>`_
     - Add support for both positional and named arguments in RPCs

Deprecated Features
===================

This release does not deprecate any existing features.

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - `JSONRPC-36 <https://jira.opendaylight.org/browse/JSONRPC-36>`_
     - Incorrect deserialization of NULL value.

Known Issues
============

There are no known issues identified in this release.
