==================================
2025.09 Vanadium Platform Upgrade
==================================

This document describes the steps to help users upgrade from Scandium
to Vanadium platform. Refer to `Managed Snapshot Integrated (MSI)
project <https://git.opendaylight.org/gerrit/q/topic:vanadium-mri>`_
upgrade patches for more information and hints for solutions to common
problems not explicitly listed here.

.. contents:: Contents

Preparation
-----------

JDK 21 Version
^^^^^^^^^^^^^^
2025.03 Vanadium, requires Java 21, both during compile-time and run-time.
Make sure to install JDK 21 corresponding to at least ``openjdk-21.0.8``,
and that the JAVA_HOME environment variable points to the JDK directory.

Version Bump
^^^^^^^^^^^^
Before performing platform upgrade, do the following to bump the odlparent
versions (for example, `bump-odl-version <https://github.com/skitt/odl-tools/blob/master/bump-odl-version>`_):

1. Update the odlparent version from 14.0.3 to 14.1.0. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for 14.1.0. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[14,15)".

 .. code-block:: shell

  bump-odl-version odlparent 14.1.0 14.1.6

2. Update the direct yangtools version references from 14.0.14 to 14.0.20,
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 14.0.14. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[14,15)" instead of "[13,14)".

 .. code-block:: shell

  bump-odl-version yangtools 14.0.14 14.0.20

3. Update the MD-SAL version from 14.0.13 to 15.0.2. There should not be
   any reference to **org.opendaylight.mdsal**, except for 15.0.2.

 .. code-block:: shell

  bump-odl-version mdsal 14.0.13 15.0.2

4. Update the Controller version from 11.0.0 to 12.0.3. There should not be
   any reference to **org.opendaylight.controller**, except for 12.0.3.

 .. code-block:: shell

  bump-odl-version controller 11.0.0 12.0.3

5. Update the InfraUtils version from 7.1.4 to 7.1.9. There should not be
   any reference to **org.opendaylight.infrautils**, except for 7.1.9.

 .. code-block:: shell

  bump-odl-version infrautils 7.1.4 7.1.9

6. Update the AAA version from 0.21.0 to 0.22.3. There should not be
   any reference to **org.opendaylight.aaa**, except for 0.22.3.

 .. code-block:: shell

  bump-odl-version aaa 0.21.0 0.22.3

7. Update the NETCONF version from 9.0.0 to 10.0.2. There should not be
   any reference to **org.opendaylight.netconf**, except for 10.0.2.

 .. code-block:: shell

  bump-odl-version netconf 9.0.0 10.0.2

Install Dependent Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^
Before performing platform upgrade, users must also install
any dependent project. To locally install a dependent project,
pull and install the respective
`vanadium-mri <https://git.opendaylight.org/gerrit/q/topic:vanadium-mri>`_
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
the ODL Parent version 14. Refer to the `ODL Parent Release Notes
<https://github.com/opendaylight/odlparent/blob/master/docs/NEWS.rst#version-1416>`_
for more information.

Features
^^^^^^^^
Any version range referencing version of ODL Parent must be “[14,15)” for ODL Parent 14.

 .. code-block:: xml

   <feature name="odl-infrautils-caches">
       <feature version="[14,15)">odl-guava</feature>
   </feature>

ODL Parent Impacts
------------------
None.

YANG Tools Impacts
------------------

InstanceIdentifier deprecation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Since YANG Tools version 14 ``org.opendaylight.yangtools.yang.binding.InstanceIdentifier`` has been deprecated and its
being planned for removal in next major release.
See `YANGTOOLS-1577 <https://jira.opendaylight.org/browse/YANGTOOLS-1577>`__ for more details.

There are two replacement classes to be used instead:

* ``DataObjectIdentifier`` used when we target the node exactly, i.e. we specify key value for the list
* ``DataObjectReference`` used when we target node using wildcard, i.e. we target list without specifying the key

The example usage can be shown on well known ``network-topology`` model where we have for topology with the key:

  .. code-block:: java

    var identifier = DataObjectIdentifier.builder(NetworkTopology.class)
        .child(Topology.class, new TopologyKey(new TopologyId("topology-netconf")))
        .build();

And for the list of all topologies:

  .. code-block:: java

    var reference = DataObjectReference.builder(NetworkTopology.class)
        .child(Topology.class)
        .build();

Sometimes we need to add additional step to ``DataObjectIdentifier`` or ``DataObjectReference``, here is how to do it:

  .. code-block:: java

    var identifier = DataObjectIdentifier.builder(NetworkTopology.class).build();
    assert identifier.isExact();
    var reference = identifier.toBuilder().toReferenceBuilder()
        .child(Topology.class)
        .build();
    assert !reference.isExact();

For this purpose we have ``toBuilder`` method. Here we have to pay attention to type of the builder and next step.
In example above we are adding inexact step (list entry without key) to exact ``DataObjectIdentifier.Builder``
instance. In case we omit conversion to ``DataObjectReference.Builder`` using ``toReferenceBuilder`` we would get
an Exception. Of course, the conversion opposite direction is not supported.

Practically, we are using ``DataObjectIdentifier`` when we point to at most one data object and ``DataObjectReference``
when we know we have not exact address - we know there is a key but we have not specified it, resulting in referencing
to multiple data objects.

Generally, things like RPCs and YANG actions require exact addressing using ``DataObjectIdentifier``,
not exact addressing can be used when we would like to monitor multiple resources, with for example data-tree change
listeners using ``DataObjectReference``.

InstanceIdentifier conversion methods:
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* ``toLegacy`` returns legacy ``InstanceIdentifier`` for both ``DataObjectIdentifier`` and ``DataObjectReference``
* ``toReference`` returns ``DataObjectReference`` for ``InstanceIdentifier`` to avoid confusion even though
  we can use it in place of ``DataObjectReference``
* ``toIdentifier`` returns ``DataObjectIdentifier`` for ``DataObjectReference`` or legacy ``InstanceIdentifier``,
  throws Exception in case we cannot convert, i.e. there are inexact steps in the
  ``DataObjectReference`` or ``InstanceIdentifier`` being converted

MD-SAL Impacts
--------------
Since MDSAL version 15 ``DataObjectModification#ModificationType`` enumeration has been deprecated. The new MDSAL
version introduces sealed class hierarchy of ``DataObjectModification`` to be used instead with the structure:

* ``DataObjectWritten``
* ``DataObjectModified``
* ``DataObjectDeleted``

The meaning of new classes is the same as former ``ModificationType`` enumeration.

Its worth to note that ``DataObjectWritten`` and ``DataObjectModified`` have a superclass ``WithDataAfter`` which is
just enough in most cases for both scenarios.

For more details refer to `MDSAL-889 <https://lf-opendaylight.atlassian.net/browse/MDSAL-889>`__.

The example of new approach follows:

  .. code-block:: java

    for (var mod : rootNode.getModifiedChildren(PrivateKey.class)) {
        switch (mod) {
            case WithDataAfter<PrivateKey> present  -> {
                final var privateKey = present.dataAfter();
                builder.privateKeys().put(privateKey.requireName(), privateKey);
            }
            case DataObjectDeleted<PrivateKey> deleted ->
                builder.privateKeys().remove(mod.coerceKeyStep(PrivateKey.class).key().getName());
        }
    }

The previous example also showcases the improvement made
in `MDSAL-892 <https://lf-opendaylight.atlassian.net/browse/MDSAL-892>`__.
The new ``DataObjectModification#coerceKeyStep`` allows users to just get the key for date modified or deleted.

This improvement allows us to use instead of:

  .. code-block:: java

    for (var mod : rootNode.getModifiedChildren(PrivateKey.class)) {
        switch (mod) {
            case WithDataAfter<PrivateKey> present  -> {
                final var privateKey = present.dataAfter();
                builder.privateKeys().put(privateKey.requireName(), privateKey);
            }
            case DataObjectDeleted<PrivateKey> deleted ->
                builder.privateKeys().remove(mod.dataBefore().requireName());
        }
    }

  .. code-block:: java

    for (var mod : rootNode.getModifiedChildren(PrivateKey.class)) {
        switch (mod) {
            case WithDataAfter<PrivateKey> present  -> {
                final var privateKey = present.dataAfter();
                builder.privateKeys().put(privateKey.requireName(), privateKey);
            }
            case DataObjectDeleted<PrivateKey> deleted ->
                builder.privateKeys().remove(mod.coerceKeyStep(PrivateKey.class).key().getName());
        }
    }

Netconf Impacts
---------------

* Update you YANG models import if necessary, for example see:
  `NETCONF-1502 <>https://lf-opendaylight.atlassian.net/browse/NETCONF-1502>`__.

AAA Impacts
-----------
None.
