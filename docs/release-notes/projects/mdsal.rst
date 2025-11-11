===============================================
Model-Driven Service Abstraction Layer (MD-SAL)
===============================================

Overview
========

MD-SAL provides infrastructure for binding YANG models to Java object model and infrastructure
for providing YANG-defined interaction patterns:
* Reactive datastore update
* RPC and Action invocation
* Notification sourcing and delivery

Behavior/Feature Changes
========================
The (2025.09) Vanadium MDSAL release brings improved ``DataObjectModification`` sealed hierarchy in
`MDSAL-889 <https://lf-opendaylight.atlassian.net/browse/MDSAL-889>`__ and ``coerceStep`` method introduced in
`MDSAL-892 <https://lf-opendaylight.atlassian.net/browse/MDSAL-892>`__.

They together simplifies user experience when dealing with datastore changes enabling usage of Java enhanced ``switch``
and getting rid of nullness warnings for ``dataBefore()``/``dataAfter()`` methods.

New Features
============
* Added DataObjectModification#coerceKeyStep in `MDSAL-892 <https://lf-opendaylight.atlassian.net/browse/MDSAL-892>`__

Deprecated Features
===================
* Deprecated DataObjectModification#ModificationType in `MDSAL-889 <https://lf-opendaylight.atlassian.net/browse/MDSAL-889>`__

Removed Features
===================
* Removed deprecated DataObjectModification methods in `MDSAL-889 <https://lf-opendaylight.atlassian.net/browse/MDSAL-889>`__

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: MDSAL
   :versions: 15.0.0-15.0.2

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: MDSAL
   :versions: 15.0.0-15.0.2
