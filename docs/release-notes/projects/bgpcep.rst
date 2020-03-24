================
BGP-PCEP Project
================

Overview
========

BGP Plugin
==========
The OpenDaylight controller provides an implementation of BGP
(Border Gateway Protocol), which is based on `RFC 4271 <https://tools.ietf.org/html/rfc4271>`_)
as a south-bound protocol plugin. The implementation renders all
basic *BGP speaker capabilities*, including:

* Inter/Intra-AS peering
* Routes advertising
* Routes originating
* Routes storage

The plugin's **north-bound API** (``REST``/``Java``) provides to user:

* Fully dynamic runtime standardized BGP configuration
* Read-only access to all RIBs
* Read-write programmable RIBs
* Read-only reachability/linkstate topology view

PCEP Plugin
===========
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

New and Modified Features
=========================

This release provides the following new and modified features:

* `BGPCEP-858 <https://jira.opendaylight.org/browse/BGPCEP-858>`_: Support for PCE stateless mode (RFC 5440) and PCE server functionality (path computation)
* `BGPCEP-365 <https://jira.opendaylight.org/browse/BGPCEP-365>`_: BGP-LS topology provider support for Segment Routing
* `BGPCEP-790 <https://jira.opendaylight.org/browse/BGPCEP-790>`_: Use ipv4-address-no-zone
* `BGPCEP-715 <https://jira.opendaylight.org/browse/BGPCEP-715>`_: Enforce PCEP Checkstyle

Deprecated Features
===================

This release did not deprecate or remove any feature.

Resolved Issues
===============

* `Closed Bugs <https://jira.opendaylight.org/browse/BGPCEP-877?jql=project%20%3D%20BGPCEP%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20fixVersion%20%3D%20Magnesium>`_

Known Issues
============

* `Open Bugs <https://jira.opendaylight.org/browse/BGPCEP-880?jql=project%20%3D%20BGPCEP%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Open%2C%20"In%20Progress"%2C%20"In%20Review"%2C%20Confirmed)>`_

