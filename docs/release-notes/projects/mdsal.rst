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
The Binding mapping of ``type bits`` YANG statement has been updated to use a dedicated common
superinterface, ``BitsTypeObject``. Furthermore individual bits within these classes are now represented
as primitive ``boolean`` values rather than nullable ``Boolean`` objects.

New Features
============
Both ``DOMRpcProviderService`` and ``RpcProviderService`` have gained the ability to register single-type
and flexible multi-type RPC implementations. ``RpcConsumerRegistry`` have gained the ability to access single-RPC
handles. These capabilities are based on new codegen feature, which generates ``@FunctionalInterface`` interfaces
for each individual ``rpc``, similar to how ``action`` statements are processed.

Deprecated Features
===================
``NotificationService.registerNotificationListener()`` method has been deprecated, along with its Binding
specification interfaces based on ``NotificationListener``. These will be removed in a future major release.

``RpcProviderService.registerRpcImplementation()`` methods, ``RpcConsumerRegistry.getRpcService()`` methods and
Binding specification interfaces based on ``RpcService`` have been deprecated. These will be removed in a future
major release.

Removed Features
===================
No removed features.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: MDSAL
   :versions: 11.0.0-11.0.4

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: MDSAL
   :versions: 11.0.0-10.0.4
