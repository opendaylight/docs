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
The Binding mapping of ``type identityref`` YANG statement has been updated to use singleton objects
instead of corresponding ``.class`` references. These singleton objects are exposed as ``VALUE`` constants,
hence the migration is a straightforward move from ``Foo.class`` to ``Foo.VALUE``.

Binding classes generated for ``type enumeration`` YANG statement now have ``ofName()`` and ``ofValue()``
methods, which return a non-null object or throw an ``IllegalArgumentException``.

The ``feature`` YANG statement now has a representation in Binding: it is a final class which subclasses
``YangFeature`` with a singleton value.

New Features
============
Both ``DOMNotificationService`` and ``NotificationService`` have gained the ability to register single-type
and flexible multi-type notification listerners. This change allows Binding users to implement only specific
listeners, unlike the previous method of using generated interfaces extending ``NotificationListener`` -- which
required implementation of methods for every notification defined in a specific module.

Deprecated Features
===================
``NotificationService.registerNotificationListener()`` method has been deprecated, along with its Binding
specification interfaces based on ``NotificationListener``. These will be removed in the next major release.

Removed Features
===================
No removed features.

Resolved Issues
===============
The following table lists the issues resolved in this release.

.. jira_fixed_issues::
   :project: MDSAL
   :versions: 10.0.0-10.0.2

Known Issues
============
The following table lists the known issues that exist in this release.

.. jira_known_issues::
   :project: MDSAL
   :versions: 10.0.0-10.0.2

Resolved Issues in SR1
======================
The following table lists the issues resolved in Service Release 1.

.. jira_fixed_issues::
   :project: MDSAL
   :versions: 10.0.3-10.0.5

Known Issues in SR1
===================
The following table lists the known issues that exist in Service Release 1.

.. jira_known_issues::
   :project: MDSAL
   :versions: 10.0.3-10.0.5
