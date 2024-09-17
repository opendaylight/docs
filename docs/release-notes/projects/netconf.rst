=======
NETCONF
=======

Overview
========
The NETCONF projects hosts multiple components relating to IETF's NETCONF Working Group:

* Northbound and southbound plugins for NETCONF protocol, as described in `RFC-6241 <http://tools.ietf.org/html/rfc6241>`__
* Northbound plugin for RESTCONF protocol, as described in `RFC-8040 <http://tools.ietf.org/html/rfc8040>`__
* Northnound plugin for descring RESTCONF endpoint in terms of `OpenAPI 3.0 <https://swagger.io/docs/specification/about/>`__


Behavior/Feature Changes
========================
The transport layer of the NETCONF protocol implementation has been completely refactored. This effort has all but
unified the 'normal' and 'call-home' mode of operation. This results in a more maintaintanable codebase with much
easier feature parity between the two modes.

RESTCONF implementation has been been refactored to a large extent, taking advantage of JAX-RS asynchronous requests,
so that operations on the datastore and NETCONF devices no longer pin the HTTP thread.

The OpenAPI component has been completely modernized. It is now based on Swagger UI vesion 5.13.0 and is memory
usage has been brought under control.


New Features
============
No new features.

Deprecated and Removed Features
===============================
The ``odl-yanglib`` experimental feature has been removed.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 7.0.0-7.0.4

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: NETCONF
   :versions: 7.0.0-7.0.4

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 7.0.5-7.0.7

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: NETCONF
   :versions: 7.0.5-7.0.7