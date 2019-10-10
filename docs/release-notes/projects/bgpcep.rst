============
BGPCEP
============

Overview
========

The OpenDaylight controller provides an implementation of BGP (RFC 4271) as a south-bound protocol plugin.
The implementation renders all basic *BGP speaker capabilities*:

* inter/intra-AS peering
* routes advertising
* routes originating
* routes storage

The plugin's **north-bound API** (``REST``/``Java``) provides to user:

* fully dynamic runtime standardized BGP configuration
* read-only access to all RIBs
* read-write programmable RIBs
* read-only reachability/linkstate topology view
|
The OpenDaylight PCEP plugin provides all basic service units necessary to build-up a PCE-based controller.
In addition, it offers LSP management functionality for Active Stateful PCE - the cornerstone for majority of PCE-enabled SDN solutions.
It consists of the following components:

* Protocol library
* PCEP session handling
* Stateful PCE LSP-DB
* Active Stateful PCE LSP Operations

Behavior Changes
================

* N/A

New and Modified Features
=========================

This releases provides the following new and modified features:

* `BGPCEP-871 <https://jira.opendaylight.org/browse/BGPCEP-871>`_: RPC to provide PCEP session statistics
* `BGPCEP-868 <https://jira.opendaylight.org/browse/BGPCEP-868>`_: Support for draft-ietf-idr-ext-opt-param

Deprecated Features
===================

* N/A

Resolved Issues
===============

* `Closed Bugs <https://jira.opendaylight.org/browse/BGPCEP-877?jql=project%20%3D%20BGPCEP%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20fixVersion%20%3D%20Sodium>`_

Known Issues
============

* `Open Bugs <https://jira.opendaylight.org/browse/BGPCEP-880?jql=project%20%3D%20BGPCEP%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Open%2C%20"In%20Progress"%2C%20"In%20Review"%2C%20Confirmed)>`_
