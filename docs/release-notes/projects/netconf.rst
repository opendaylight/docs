=======
NETCONF
=======

Overview
========
The NETCONF projects hosts multiple components relating to IETF's NETCONF Working Group:

* Northbound and southbound plugins for NETCONF protocol, as described in `RFC-6241 <http://tools.ietf.org/html/rfc6241>`__
* Northbound plugin for RESTCONF protocol, as described in `RFC-8040 <http://tools.ietf.org/html/rfc8040>`__
* Northbound plugin for RESTCONF protocol, as described in `an early draft <https://tools.ietf.org/html/draft-bierman-netconf-restconf-02>`__
* Northnound plugin for descring RESTCONF endpoint in terms of `OpenAPI 3.0 <https://swagger.io/docs/specification/about/>`__


Behavior/Feature Changes
========================
The RFC8040 endpoint now correctly interprets `YANG Patch Media Type <https://datatracker.ietf.org/doc/html/rfc8072>`__
requests.

The ``netconf-node-topology`` YANG model has been updated to correctly mark the presence of OpenDaylight's
``yang-ext:mount`` extension. This does not affect the implementation, but improves interoperability with
external system.

New Features
============
There are no new features.

Deprecated and Removed Features
===============================
The ``odl-messagebus`` feature has been removed.

The old RESTCONF endpoint ``localhost:8181/restconf``, as installed via ``odl-restconf-nb-bierman02`` feature,
is now considered legacy and is expected to become deprecated in the next major release. Users are advised to
migrate to using the RFC8040-compliant endpoint ``localhost:8181/rests``, as installed via
``odl-restconf-nb-rfc8040``.

Resolved Issues
===============

The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 2.0.0-2.0.5

Known Issues
============

The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: NETCONF
   :versions: 2.0.0-2.0.5

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 2.0.6-2.0.11

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: NETCONF
   :versions: 2.0.6-2.0.11

Resolved Issues in SR2
======================
The following table lists the issues resolved in Service Release 2.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 2.0.12-2.0.14

Known Issues in SR2
===================
The following table lists the known issues that exist in Service Release 2.

.. jira_known_issues::
   :project: NETCONF
   :versions: 2.0.12-2.0.14

Resolved Issues in SR3
======================
The following table lists the issues resolved in Service Release 3.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 2.0.15-2.0.16

Known Issues in SR3
===================
The following table lists the known issues that exist in Service Release 3.

.. jira_known_issues::
   :project: NETCONF
   :versions: 2.0.15-2.0.16
