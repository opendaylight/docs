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
New NETCONF release offers lightweight Netty-based RESTCONF Northbound on port 8182.
For more details see: `NETCONF-873 <https://lf-opendaylight.atlassian.net/browse/NETCONF-873>`__.

The OpenAPI component modernization has continued by introducing parameters to load documentation
to width and depth which helps users to scale document as needed.
For mode details see: `NETCONF-1225 <https://lf-opendaylight.atlassian.net/browse/NETCONF-1225>`__
and `NETCONF-1298 <https://lf-opendaylight.atlassian.net/browse/NETCONF-1298>`__.

New Features
============
* `NETCONF-873 <https://lf-opendaylight.atlassian.net/browse/NETCONF-873>`__
* `NETCONF-1225 <https://lf-opendaylight.atlassian.net/browse/NETCONF-1225>`__
* `NETCONF-1298 <https://lf-opendaylight.atlassian.net/browse/NETCONF-1298>`__

Deprecated and Removed Features
===============================
There are no deprecated or removed features.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 8.0.0-8.0.2

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: NETCONF
   :versions: 8.0.0-8.0.2

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 8.0.3-8.0.3

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: NETCONF
   :versions: 8.0.3-8.0.3

Resolved Issues in SR2
======================
The following table lists the issues resolved in Service Release 2.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 8.0.4-8.0.7

Known Issues in SR2
===================
The following table lists the known issues that exist in Service Release 2.

.. jira_known_issues::
   :project: NETCONF
   :versions: 8.0.4-8.0.7

Resolved Issues in SR3
======================
The following table lists the issues resolved in Service Release 3.

.. jira_fixed_issues::
   :project: NETCONF
   :versions: 8.0.8-8.0.9

Known Issues in SR3
===================
The following table lists the known issues that exist in Service Release 3.

.. jira_known_issues::
   :project: NETCONF
   :versions: 8.0.8-8.0.9
