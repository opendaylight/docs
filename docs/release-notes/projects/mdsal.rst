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
No behaviour changes.

New Features
============
No new features.

Deprecated Features
===================
No deprecated features.

Removed Features
===================
``NotificationService.registerNotificationListener()`` method has been removed, along with its Binding
specification interfaces based on ``NotificationListener``.

``RpcProviderService.registerRpcImplementation()`` methods, ``RpcConsumerRegistry.getRpcService()`` methods and
Binding specification interfaces based on ``RpcService`` have been removed.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: MDSAL
   :versions: 14.0.9-14.0.9

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: MDSAL
   :versions: 14.0.9-14.0.9
