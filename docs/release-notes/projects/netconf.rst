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
The highlight of this release is implementation of SSH transport configuration for NETCONF devices in
`NETCONF-1502 <https://lf-opendaylight.atlassian.net/browse/NETCONF-1502>`__.

There is also continuing effort to bring HTTP/1.1 pipelining and HTTP2 steamings to Netty based RESTCONF.

New Features
============
* `NETCONF-1502 <https://lf-opendaylight.atlassian.net/browse/NETCONF-1502>`__.

Deprecated and Removed Features
===============================
There are no deprecated or removed features.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 10.0.0-10.0.2

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: NETCONF
   :versions: 10.0.0-10.0.2
