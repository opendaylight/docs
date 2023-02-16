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
The ``odl-restconf-nb-rfc8040`` feature has been renamed to ``odl-restconf-nb``.

New Features
============
Support for subscribing to mounted NETCONF devices has been added. See
`NETCONF-745 <https://jira.opendaylight.org/browse/NETCONF-745>`__ for details.

A new RESTCONF query extension has been added. This supports reporting only leaf values which have actually
changed. See `NETCONF-862 <https://jira.opendaylight.org/browse/NETCONF-862>`__ for details.

Deprecated and Removed Features
===============================
RPC definitions in ``netconf-node-topology.yang`` have been deprecated. Their functionality is completely covered
by manipulating the configuration datastore.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 5.0.0-5.0.2

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: NETCONF
   :versions: 5.0.0-5.0.2
