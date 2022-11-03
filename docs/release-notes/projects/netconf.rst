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
The RFC8040 endpoint now correctly rejects consecutive slash characters in request URL. The previous
behavior of silently accepting such requests can be restored through setting the
``org.opendaylight.restconf.url.consecutive-slashes`` system property to ``allow``. Valid options are also
``debug`` and ``warn``, which cause offending requests to be accepted, but logged to the system log.

The ``netconf-node-topology`` YANG model has been updated to correctly mark the presence of OpenDaylight's
``yang-ext:mount`` extension. This does not affect the implementation, but improves interoperability with
external system.

The default port for ``call-home`` has been updated to ``4334``, bringing it to compliance with RFC8071.

New Features
============
There are no new features.

Deprecated and Removed Features
===============================
The old RESTCONF endpoint ``localhost:8181/restconf``, as installed via ``odl-restconf-nb-bierman02`` feature,
is now considered obsolete and is not installed by default. Users are advised to migrate to using the
RFC8040-compliant endpoint ``localhost:8181/rests``, as installed via ``odl-restconf-nb-rfc8040``. The support
for the old endpoint will be removed in the next major release.

Resolved Issues
===============

The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 3.0.0-3.0.2

Known Issues
============

The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: NETCONF
   :versions: 3.0.0-3.0.2

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 3.0.3-3.0.5

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: NETCONF
   :versions: 3.0.3-3.0.5

Resolved Issues in SR2
======================
The following table lists the issues resolved in Service Release 2.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 3.0.6-3.0.6

Known Issues in SR2
===================
The following table lists the known issues that exist in Service Release 2.

.. jira_known_issues::
   :project: NETCONF
   :versions: 3.0.6-3.0.6

Resolved Issues in SR3
======================
The following table lists the issues resolved in Service Release 3.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 3.0.7-3.0.7

Known Issues in SR3
===================
The following table lists the known issues that exist in Service Release 3.

.. jira_known_issues::
   :project: NETCONF
   :versions: 3.0.7-3.0.7
