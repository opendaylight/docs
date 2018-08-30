Name
----

JSON RPC 2.0 Southbound Extension

Repo Name
---------

jsonrpc

Description
-----------

The project aims to provide a fully featured scalable southbound
extension of ODL functionality via JSON RPC 2.0 and
draft-netmod-json-yang using multiple transports. YANG modelling is used
to describe the JSON RPC calls as well as any JSON RPC interactions.

Scope
-----

The project aims to provide a binding for ODL Datastore, RPC and
Notification operations and map them onto JSON RPC 2.0 calls over ZMQ
and HTTP(S) transports. Other transports may be added as needed at a
later date.

API agreement between ODL and the other JSON RPC endpoint is achieved by
ensuring that they both use the same YANG model to describe all
arguments in the RPC call. This includes core operations such as
datastore access as well as any additional calls needed to implement
service functions such as endpoint discovery, etc.

All data used in any of the JSON RPC 2.0 calls uses the same version of
draft-json-netmod-yang as used in ODL (presently version 6). The project
relies on existing Binding Independent APIs developed for netconf, does
not require any changes in core ODL functionality and does not require
any new APIs.

In addition to the ODL extension, the project also aims to provide a
fully featured suite of libraries, bindings and tools for several
languages to consume and produce data via JSON-RPC 2.0 in
draft-netmod-json-yang as produced and consumed by ODL.

Resources Committed (developers committed to working)
-----------------------------------------------------

Three full time developers, several part time contributors and testers.

Initial Committers
------------------

Shaleen Saxena <ssaxena@brocade.com>

David Spence <dspence@brocade.com>

Anton Ivanov <aivanov@brocade.com>, aivanov (PTL)

Vendor Neutral
--------------

The project will be vendor neutral.

Meets Board Policy (including IPR)
----------------------------------

Presentation And Other Materials
--------------------------------

.. figure:: JSON-RPC.pdf
   :alt: Presentation to TSC

   Presentation to TSC