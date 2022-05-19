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

* Fully dynamic run-time standardized BGP configuration
* Read-only access to all RIBs
* Read-write programmable RIBs
* Read-only reachability/link-state topology view

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

The internal refactor done in `BGPCEP-949 <https://jira.opendaylight.org/browse/BGPCEP-949>`__, the configuration knob
to enable legacy BGP link state path attribute encoding has changed. It is using OSGi Configuration Admin interface, just
like other global settings.

New Features
============
No new features.

Deprecated Features
===================
No deprecated features.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: BGPCEP
   :versions: 0.16.0-0.16.6

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: BGPCEP
   :versions: 0.16.0-0.16.6

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: BGPCEP
   :versions: 0.16.7-0.16.13

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: BGPCEP
   :versions: 0.16.7-0.16.13

Resolved Issues in SR2
======================
The following table lists the issues resolved in Service Release 2.

.. jira_fixed_issues::
   :project: BGPCEP
   :versions: 0.16.14-0.16.14

Known Issues in SR2
===================
The following table lists the known issues that exist in Service Release 2.

.. jira_known_issues::
   :project: BGPCEP
   :versions: 0.16.14-0.16.14

Resolved Issues in SR3
======================
The following table lists the issues resolved in Service Release 3.

.. jira_fixed_issues::
   :project: BGPCEP
   :versions: 0.16.15-0.16.15

Known Issues in SR3
===================
The following table lists the known issues that exist in Service Release 3.

.. jira_known_issues::
   :project: BGPCEP
   :versions: 0.16.15-0.16.15
