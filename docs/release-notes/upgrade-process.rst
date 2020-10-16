========================
Silicon Platform Upgrade
========================

This document describes the steps to help users upgrade to the
Magnesium planned platform. Refer to `Managed Release Integrated (MRI)
project <https://git.opendaylight.org/gerrit/q/topic:silicon-mri>`_
upgrade patches for more information.

.. contents:: Contents

Preparation
-----------

JDK 11 Version
^^^^^^^^^^^^^^
Aluminium requires Java 11, both during compile-time and run-time.
Make sure to install JDK 11 corresponding to at least openjdk-11.0.6,
and that the JAVA_HOME environment variable is points to the JDK directory.

Controller is a MRI project
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Unlike in previous releases, the Controller project has joined
the MRI family at the start of Aluminium Simultaneous Release cycle.
Going forward it is an error to depend on any ``org.opendaylight.controller``
with a ``-SNAPSHOT`` version.


Version Bump
^^^^^^^^^^^^
Before performing platform upgrade, do the following to bump the odlparent
versions (for example, `bump-odl-version <https://github.com/skitt/odl-tools/blob/master/bump-odl-version>`_):

1. Update the odlparent version from 7.0.5 to 8.0.0. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for 8.0.0. This includes custom feature.xml templates
   (src/main/feature/feature.xml), the version range there should
   be "[8,9)" instead of "[8,9)", "[5.0.3,6)" or any other variation.

 .. code-block:: none

  bump-odl-version odlparent 7.0.5 8.0.0

2. Update the direct yangtools version references from 5.0.5 to 6.0.0,
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 6.0.0. This includes custom feature.xml templates
   (src/main/feature/feature.xml), the version range there should
   be "[6,7)" instead of "[5,6)".

3. Update the MD-SAL version from 6.0.4 to 7.0.0. There should not be
   any reference to **org.opendaylight.mdsal**, except for 7.0.0.

 .. code-block:: none

  rpl -R 6.0.4 7.0.0

4. Update the Controller version from 2.0.3 to 3.0.0. There should not be
   any reference to **org.opendaylight.controller**, except for 3.0.0.

 .. code-block:: none

  rpl -R 2.0.3 3.0.0

5. Update the InfraUtils version from 1.8.0 to 1.9.0. There should not be
   any reference to **org.opendaylight.infrautils**, except for 1.9.0.

 .. code-block:: none

  rpl -R 1.8.0 1.9.0

Install Dependent Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^
Before performing platform upgrade, users must also install
any dependent project. To locally install a dependent project,
pull and install the respective `silicon-mri <https://git.opendaylight.org/gerrit/q/topic:silicon-mri>`_ changes for any dependent project.

Perform the following steps to save time when locally installing
any dependent project:

* For quick install:

 .. code-block:: none

  mvn -Pq clean install

* If previously installed, go offline and/or use the
  no-snapshot-update option.

 .. code-block:: none

  mvn -Pq -o -nsu clean install

Upgrade the ODL Parent
----------------------
The following sub-section describes how to upgrade to
the ODL Parent version 4. Refer to the `ODL Parent Release Notes
<https://github.com/opendaylight/odlparent/blob/master/docs/NEWS.rst#version-800>`_
for more information.

Features
^^^^^^^^
Any version range referencing version 6 of ODL Parent must be changed
to “[8,9)” for ODL Parent 7.

 .. code-block:: xml

   <feature name="odl-infrautils-caches">
       <feature version="[7,8)">odl-guava</feature>
   </feature>

ODL Parent Impacts
------------------

Enforcing maven-modernizer-plugin
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
ODL Parent has switched ``maven-modernizer-plugin`` to enforcing mode
and upgraded the rules to reflect Java 11 requirement. The enforcement
can be switched off on a per-artifact basis using:

 .. code-block:: xml

   <properties>
       <odlparent.modernizer.enforce>false</odlparent.modernizer.enforce>
   </properties>


YANG Tools Impacts
------------------

SchemaContext is being retired (continued)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
After many years of development and incremental updates, this release marks
the start of the transition away from ``SchemaContext``. The object model
exposed by it is problematic in more ways than one. The replacement construct
is ``EffectiveModelContext``, which operates on ``EffectiveStatement``
and its related interfaces. ``EffectiveModelContext`` retains its
``SchemaContext`` trait for the duration of the transition and can be directly
used in that capacity. Users are encouraged to update their interfaces to
accept and give out EffectiveModelContext instances.

In this release this effort resulted in removal of ``SchemaContextProvider``
interface and vast majority of sites now require an ``EffectiveModelContext``.


Illegal YANG pattern statements are rejected
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
YANG parser will no longer silently ignore syntactically-illegal patterns.
This may flush out new non-compliant models. For further details see the
`corresponding issue <https://jira.opendaylight.org/browse/YANGTOOLS-1136>`__



MD-SAL Impacts
--------------

Binding DTOs enforce non-null keys
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Binding DTOs (data transfer objects), created through builders for a keyed
list now properly enforce non-null key attributes. This means any code that
fails to properly set up either ``withKey()`` or individual component leaf
values will throw a ``NullPointerException`` like this:

 .. code-block:: none

    java.lang.NullPointerException: Supplied value may not be null
            at java.base/java.util.Objects.requireNonNull(Objects.java:246)
            at org.opendaylight.yangtools.yang.binding.CodeHelpers.requireValue(CodeHelpers.java:63)
            at org.opendaylight.yang.gen.v1.urn.tbd.params.xml.ns.yang.network.topology.rev131021.network.topology.topology.NodeKey.<init>(NodeKey.java:18)
            at org.opendaylight.yang.gen.v1.urn.tbd.params.xml.ns.yang.network.topology.rev131021.network.topology.topology.NodeBuilder$NodeImpl.<init>(NodeBuilder.java:236)
            at org.opendaylight.yang.gen.v1.urn.tbd.params.xml.ns.yang.network.topology.rev131021.network.topology.topology.NodeBuilder.build(NodeBuilder.java:219)
            at org.opendaylight.ovsdb.southbound.ovsdb.transact.BridgeOperationalStateTest.<init>(BridgeOperationalStateTest.java:57)


This change will typically affect incorrect test data, as production values
tend to be validated on receiver side and would report this error later
down the road. For further details see this
`MD-SAL issue <https://jira.opendaylight.org/browse/MDSAL-491>`__.


Augmentation tracking has been reworked
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
As part of larger lifecycle activities, a number of implementation details
have changed to the point as to render the distinction between Augmentable
and AugmentationHolder interfaces superfluous. AugmentationHolder has therefore
been completely integrated into Augmentable allowing efficient implementation
classes and easier augmentation tracking. For further details see this
`MD-SAL issue <https://jira.opendaylight.org/browse/MDSAL-577>`__.


DOMNotificationRouter implementation has been reworked
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The default implementation of router, which is used for disseminating YANG
notifications inside the system, was been reimplemented. The new implementation
does not use LMAX Disruptor, but rather is based on QueuedNotificationManager.
For further details see this
`MD-SAL issue <https://jira.opendaylight.org/browse/MDSAL-546>`__.


DOM interfaces no longer use SchemaPath identification
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Interfaces for invocation of ``RPCs`` and ``actions``, as well as
publishing ``notifications``  have switched from using ``SchemaPath`` to
using either ``QName`` or ``SchemaNodeIdentifier.Absolute``. This allows



Removed packaging of draft ietf-topology extensions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
As part of furtherm cleanup, standardization and stabilization of MD-SAL
interfaces, four models from ``draft-clemm-netmod-yang-network-topo-01``
have been removed: ``ietf-topology-isis``, ``ietf-topology-ospf``, ``ietf-ted``
and ``ietf-topology-l3-unicast-igp``. For further details see this
`MD-SAL issue <https://jira.opendaylight.org/browse/MDSAL-590>`__.


Controller Impacts
------------------

Use of odl:type in Blueprint is discouraged
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This property has been used for discerning between various implementations
of MD-SAL services present in the OSGi service registry. As these services have
been consolidated in the past couple of releases, the use of this qualifier
is desupported and discouraged. While some services are advertized with this
property set, it is no longer considered a binding contract and future releases
will most likely stop adding this property in a future minor release.

Users are advised to stop specifying this attribute when making references
to OSGi services.


