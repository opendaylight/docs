========
BGP-PCEP
========

Overview
========

BGP Plugin
----------
The OpenDaylight controller provides an implementation of BGP
(Border Gateway Protocol), which is based on `RFC 4271 <https://tools.ietf.org/html/rfc4271>`_)
as a south-bound protocol plugin. The implementation renders all
basic *BGP speaker capabilities*, including:

Inter/Intra-AS peering
* Routes advertising
* Routes originating
* Routes storage

The plugin's **north-bound API** (``REST``/``Java``) provides to user:

* Fully dynamic runtime standardized BGP configuration
* Read-only access to all RIBs
* Read-write programmable RIBs
* Read-only reachability/linkstate topology view

PCEP Plugin
-----------
The OpenDaylight Path Computation Element Communication Protocol (PCEP)
plugin provides all basic service units necessary to build-up a
PCE-based controller. Defined by `RFC 8231 <https://tools.ietf.org/html/rfc8231>`_,
PCEP offers LSP management functionality for Active Stateful PCE, which is
the cornerstone for majority of PCE-enabled SDN solutions. It consists of
the following components:

* Protocol library
* PCEP session handling
* Stateful PCE LSP-DB
* Active Stateful PCE LSP Operations

Behavior/Feature Changes
========================

This release introduces no behavioral changes.


New Features
============

There were no new features added.

Deprecated Features
===================

This release did not deprecate any features.

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - <BGPCEP-906>
     - Propagate only negotiated afi/safi routes to adj-rib-out

   * - <BGPCEP-901>
     - Deadlock encountered between PCEP session mgmt and stats collection threads

   * - <BGPCEP-909>
     - Algo Path Computation - Bandwidth constraint computation and class-type

   * - <BGPCEP-911>
     - Path Computation crashes

   * - <BGPCEP-913>
     - Path Computation Segment Routing NAI is not conform

   * - <BGPCEP-916>
     - PCEP does not explain lack of TCP-MD5 availability

   * - <BGPCEP-900>
     - BGP: Exception encountered during shutdown

   * - <BGPCEP-910>
     - Non ipv4 advertising peer causes BGP session flaps

   * - <BGPCEP-882>
     - Update PCEP code to latest RFC

   * - <BGPCEP-912>
     - Graph Documentation Errors

   * - <BGPCEP-907>
     - Path computation overrides units

   * - <BGPCEP-904>
     - Graph-impl is performing cross-datastore transactions

Known Issues
============

* `Open Bugs <https://jira.opendaylight.org/browse/BGPCEP-880?jql=project%20%3D%20BGPCEP%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Open%2C%20"In%20Progress"%2C%20"In%20Review"%2C%20Confirmed)>`_
