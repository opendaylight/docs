==============================
2023.03 Argon Platform Upgrade
==============================

This document describes the steps to help users upgrade from Chlorine
to Argon planned platform. Refer to `Managed Snapshot Integrated (MSI)
project <https://git.opendaylight.org/gerrit/q/topic:argon-mri>`_
upgrade patches for more information and hints for solutions to common
problems not explicitly listed here.

.. contents:: Contents

Preparation
-----------

JDK 17 Version
^^^^^^^^^^^^^^
2023.03 Argon requires Java 17, both during compile-time and run-time.
Make sure to install JDK 17 corresponding to at least ``openjdk-17.0.5``,
and that the JAVA_HOME environment variable points to the JDK directory.

Version Bump
^^^^^^^^^^^^
Before performing platform upgrade, do the following to bump the odlparent
versions (for example, `bump-odl-version <https://github.com/skitt/odl-tools/blob/master/bump-odl-version>`_):

1. Update the odlparent version from 11.0.4 to 12.0.1. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for 12.0.1. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[12,13)" instead of "[11,12)", "[5.0.3,6)" or any other variation.

 .. code-block:: shell

  bump-odl-version odlparent 11.0.4 12.0.1

2. Update the direct yangtools version references from 9.0.6 to 10.0.2,
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 10.0.2. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[10,11)" instead of "[9,10)".

 .. code-block:: shell

  bump-odl-version yangtools 9.0.6 10.0.2

3. Update the MD-SAL version from 10.0.6 to 11.0.4. There should not be
   any reference to **org.opendaylight.mdsal**, except for 11.0.4.

 .. code-block:: shell

  bump-odl-version mdsal 10.0.6 11.0.4

4. Update the Controller version from 6.0.7 to 7.0.2. There should not be
   any reference to **org.opendaylight.controller**, except for 7.0.2.

 .. code-block:: shell

  bump-odl-version controller 6.0.7 7.0.2

5. Update the InfraUtils version from 4.0.4 to 5.0.1. There should not be
   any reference to **org.opendaylight.infrautils**, except for 5.0.1.

 .. code-block:: shell

  bump-odl-version infrautils 4.0.4 5.0.1

6. Update the AAA version from 0.16.7 to 0.17.3. There should not be
   any reference to **org.opendaylight.aaa**, except for 0.17.3.

 .. code-block:: shell

  bump-odl-version aaa 0.16.7 0.17.3

7. Update the NETCONF version from 4.0.5 to 5.0.1. There should not be
   any reference to **org.opendaylight.netconf**, except for 5.0.1.

 .. code-block:: shell

  bump-odl-version netconf 4.0.5 5.0.1

Install Dependent Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^
Before performing platform upgrade, users must also install
any dependent project. To locally install a dependent project,
pull and install the respective
`argon-mri <https://git.opendaylight.org/gerrit/q/topic:argon-mri>`_
changes for any dependent project.

Perform the following steps to save time when locally installing
any dependent project:

* For quick install:

 .. code-block:: shell

  mvn -Pq clean install

* If previously installed, go offline and/or use the
  no-snapshot-update option.

 .. code-block:: shell

  mvn -Pq -o -nsu clean install

Upgrade the ODL Parent
----------------------
The following sub-section describes how to upgrade to
the ODL Parent version 12. Refer to the `ODL Parent Release Notes
<https://github.com/opendaylight/odlparent/blob/master/docs/NEWS.rst#version-1201>`_
for more information.

Features
^^^^^^^^
Any version range referencing version 11 of ODL Parent must be changed
to “[12,13)” for ODL Parent 12.

 .. code-block:: xml

   <feature name="odl-infrautils-caches">
       <feature version="[12,13)">odl-guava</feature>
   </feature>

ODL Parent Impacts
------------------

Upstream declarations removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The declaration of ``Enunciate``, both dependencies and maven plugin has been removed.

JavaDoc HTML5 opt-out removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Support for opting out from HTML5 JavaDocs has been removed. JavaDocs are always generated in HTML5.

ANTLR updated to 4.11.x
^^^^^^^^^^^^^^^^^^^^^^^
The ANTLR declaration has been bumped to ``4.11.1``. While the version change would seem to indicate
a backwards-update, this is not the case: all ANTLR grammars need to be recompiled with the new version.
Any grammar from older ANTLR versions will not work.

YANG Tools Impacts
------------------

``EffectiveStatementNamespace`` removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``EffectiveStatementNamespace`` and its specializations have been removed, as was the ability for
``EffectiveStatement`` to address any namespace. Each namespace has been converted to a specific access method,
for example ``DataTreeAwareEffectiveStatement.DataTreeNamespace`` is now exposed via
``DataTreeAwareEffectiveStatement.dataTreeNodes()`` and ``DataTreeAwareEffectiveStatement.findDataTreeNode()``.
See `YANGTOOLS-1459 <https://jira.opendaylight.org/browse/YANGTOOLS-1459>`__ for details.

``yang.model.api.SchemaPath`` removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
SchemaPath is one of the oldest constructs with thoroughly inadequate and confusing semantics. Previous releases
have gradually removed use of this construct. This release finally removes it. See
`YANGTOOLS-1236 <https://jira.opendaylight.org/browse/YANGTOOLS-1236>`__ for details.


MD-SAL Impacts
--------------

``yang.binding.Enumeration`` renamed to ``yang.binding.EnumTypeObject``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
In order to prevent potential confusion with ``java.util.Enumeration``, the base interfaces for classes generated
for ``type enumeration`` YANG construct has been changed to ``EnumTypeObject``.

Introduced ``yang.binding.BitsTypeObject``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Classes generated for ``type bits`` YANG construct have now implement a common interface ``BitsTypeObject``. This
interface allows for unified access to the value as a ``boolean[]`` vector as well as valid bit names. See
`MDSAL-743 <https://jira.opendaylight.org/browse/MDSAL-743>`__ for details.

Component bits are now mapped to primitive boolean
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Individual bits within a ``type bits`` value are now exposed as a primitive ``boolean`` rather than a ``Boolean``
object. This provides for a better mapping, eliminating boxing as well as the problem of having a tri-state
(``true``, ``false`` and ``null``) components. See `MD-744 <https://jira.opendaylight.org/browse/MDSAL-744>`__
for details.

Naming of ``action``-defined ``input`` and ``output`` statements
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The naming of interfaces generated for ``input`` and ``output`` statements defined within an ``action`` statement
has been changed to follow the same naming as those defined within an ``rpc`` statement. See
`MDSAL-744 <https://jira.opendaylight.org/browse/MDSAL-744>`__ for details.

``DOMRpcService`` operates on ``ContainerNode``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
DOM interfaces related to RPC invocation, ``DOMRpcResult``, ``DOMRpcService`` and ``DOMRpcImplementation``  have
all been updated to operate on ``ContainerNode`` rather than plain ``NormalizedNode``. This consitutes a change
in API, but for most users this just ends up codifying their expectations. See
`MDSAL-541 <https://jira.opendaylight.org/browse/MDSAL-541>`__ for details.


Controller Impacts
------------------

Deprecated ``ask-based`` protocol
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Historic ``ask-based`` protocol has been superseded by ``tell-based`` protocol, which in turn is enabled by default.
This release will produce a deprecation warning when ``ask-based`` protocol is enabled. See
`CONTROLLER-2053 <https://jira.opendaylight.org/browse/CONTROLLER-2053>`__ for details.

Cross-datastore transactions are no longer supported
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The ability to modify ``OPERATIONAL`` and ``CONFIGURATION`` datastores in the same transaction has been removed. Any attempt
to have a transaction access both datastores will result in an exception See
`CONTROLLER-2055 <https://jira.opendaylight.org/browse/CONTROLLER-2055>`__ for details.

Improved datastore access and persistence protocols
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Serialization formats for intra-node messages and ``sal-akka-raft`` journal entries have been improved, in some cases by more
than 60%. See `CONTROLLER-2051 <https://jira.opendaylight.org/browse/CONTROLLER-2051>`__,
`CONTROLLER-2056 <https://jira.opendaylight.org/browse/CONTROLLER-2056>`__ and
`CONTROLLER-2058 <https://jira.opendaylight.org/browse/CONTROLLER-2058>`__ for details.

