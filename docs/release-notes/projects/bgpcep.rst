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

Here is the link to the features improved in this release:

`OpenDaylight JIRA Tickets - Improvement <https://jira.opendaylight.org/issues/?jql=project+%3D+bgpcep+AND+type+%3D+Improvement+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_

New Features
============

Here is the link to the new features introduced in this release:

`OpenDaylight JIRA Tickets - New Feature <https://jira.opendaylight.org/issues/?jql=project+%3D+bgpcep+AND+type+%3D+%22New+Feature%22+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_

Deprecated Features
===================

Here is the link to the features removed in this release:

`OpenDaylight JIRA Tickets - Deprecated Feature <https://jira.opendaylight.org/issues/?jql=project+%3D+bgpcep+AND+type+%3D+Deprecate+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_

Resolved Issues
===============

Here is the link to the resolved issues fixed in this release:

`OpenDaylight JIRA Tickets - Resolved Issue <https://jira.opendaylight.org/issues/?jql=project+%3D+bgpcep+AND+type+%3D+Bug+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_


Known Issues
============

Here is the link to the known issues exist in this release:

`OpenDaylight JIRA Tickets - Known Issue <https://jira.opendaylight.org/issues/?jql=project+%3D+bgpcep+AND+type+%3D+Bug+AND+status+not+in+%28Resolved%2C+Done%2C+Closed%29+ORDER+BY+issuetype+DESC%2C+key+ASC>`_