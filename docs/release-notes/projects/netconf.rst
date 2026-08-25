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
The highlights of this release are:

- `Add support for HTTP/2 prior-knowledge to Netty server <https://lf-opendaylight.atlassian.net/browse/NETCONF-1557>`__
- `Make topology SSH transport configuration effective immediately <https://lf-opendaylight.atlassian.net/browse/NETCONF-1532>`__
- `Adopt RFC-to-be ietf-restconf-server from draft-ietf-netconf-restconf-client-server-45 <https://lf-opendaylight.atlassian.net/browse/NETCONF-1619>`__
- `Implement Netty HTTP2 streaming <https://lf-opendaylight.atlassian.net/browse/NETCONF-1497>`__
- `Implement HTTP/3 streaming <https://lf-opendaylight.atlassian.net/browse/NETCONF-1539>`__
- `Stream notifications over HTTP3 <https://lf-opendaylight.atlassian.net/browse/NETCONF-1561>`__
- `Establish HTTP3 connection <https://lf-opendaylight.atlassian.net/browse/NETCONF-1538>`__

New Features
============
* Support for HTTP/3 sessions and HTTP/3 SSE notification streaming.

Deprecated and Removed Features
===============================
There are no deprecated or removed features.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 11.0.0-11.0.0

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: NETCONF
   :versions: 11.0.0-11.0.0
