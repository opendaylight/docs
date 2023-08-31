==================================
2023.09 Potassium Platform Upgrade
==================================

This document describes the steps to help users upgrade from Argon
to Potassium platform. Refer to `Managed Snapshot Integrated (MSI)
project <https://git.opendaylight.org/gerrit/q/topic:potassium-mri>`_
upgrade patches for more information and hints for solutions to common
problems not explicitly listed here.

.. contents:: Contents

Preparation
-----------

JDK 17 Version
^^^^^^^^^^^^^^
2023.09 Potassium, requires Java 17, both during compile-time and run-time.
Make sure to install JDK 17 corresponding to at least ``openjdk-17.0.7``,
and that the JAVA_HOME environment variable points to the JDK directory.

Version Bump
^^^^^^^^^^^^
Before performing platform upgrade, do the following to bump the odlparent
versions (for example, `bump-odl-version <https://github.com/skitt/odl-tools/blob/master/bump-odl-version>`_):

1. Update the odlparent version from 12.0.3 to 13.0.4. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for 13.0.4. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[13,14)" instead of "[11,12)", "[5.0.3,6)" or any other variation.

 .. code-block:: shell

  bump-odl-version odlparent 12.0.3 13.0.4

2. Update the direct yangtools version references from 10.0.4 to 11.0.1,
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 11.0.1. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[11,12)" instead of "[10,11)".

 .. code-block:: shell

  bump-odl-version yangtools 10.0.4 11.0.1

3. Update the MD-SAL version from 11.0.7 to 12.0.1. There should not be
   any reference to **org.opendaylight.mdsal**, except for 12.0.1.

 .. code-block:: shell

  bump-odl-version mdsal 11.0.7 12.0.1

4. Update the Controller version from 7.0.4 to 8.0.1. There should not be
   any reference to **org.opendaylight.controller**, except for 8.0.1.

 .. code-block:: shell

  bump-odl-version controller 7.0.4 8.0.1

5. Update the InfraUtils version from 5.0.3 to 6.0.2. There should not be
   any reference to **org.opendaylight.infrautils**, except for 6.0.2.

 .. code-block:: shell

  bump-odl-version infrautils 5.0.3 6.0.2

6. Update the AAA version from 0.17.7 to 0.18.1. There should not be
   any reference to **org.opendaylight.aaa**, except for 0.18.1.

 .. code-block:: shell

  bump-odl-version aaa 0.17.7 0.18.1

7. Update the NETCONF version from 5.0.4 to 6.0.2. There should not be
   any reference to **org.opendaylight.netconf**, except for 6.0.2.

 .. code-block:: shell

  bump-odl-version netconf 5.0.4 6.0.2

Install Dependent Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^
Before performing platform upgrade, users must also install
any dependent project. To locally install a dependent project,
pull and install the respective
`potassium-mri <https://git.opendaylight.org/gerrit/q/topic:potassium-mri>`_
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
the ODL Parent version 13. Refer to the `ODL Parent Release Notes
<https://github.com/opendaylight/odlparent/blob/master/docs/NEWS.rst#version-1303>`_
for more information.

Features
^^^^^^^^
Any version range referencing version 11 of ODL Parent must be changed
to “[13,14)” for ODL Parent 13.

 .. code-block:: xml

   <feature name="odl-infrautils-caches">
       <feature version="[13,14)">odl-guava</feature>
   </feature>

ODL Parent Impacts
------------------

Upstream declarations removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The declaration of ``commons-lang`` dependency has been removed.

Default annotation declarations removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``odlparent`` no longer declares ``spotbugs-annotations``, ``org.eclipse.jdt.annotation`` and ``modernizer-maven-annotations``
as ``<scope>provided</scope>`` dependencies. Downstreams will need to introduce these annotations as appropriate.

YANG Tools Impacts
------------------

``AugmentationIdentifer`` and ``AugmentationNode`` removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The class hierarchy of ``NormalizedNode`` has been updated to not contain augmented nodes in a separate ``AugmentationNode``,
but rather keep them directly in the node being augmented. This results in a flatter NormalizedNode structure and makes constructing
structures involving augmentations and reconciling them with ``EffectiveModelContext`` much more straightforward.

See `YANGTOOLS-568 <https://jira.opendaylight.org/browse/YANGTOOLS-568>`__ for details.

RFC7952 and RFC8528 support integrated into ``yang-data``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The interfaces supporting RFC7952 YANG annotations have been integrated into ``yang-data-api`` and ``yang-data-util``
artifacts. This rendered ``rfc7952-data-api`` and ``rfc7952-data-util`` artifacts empty and thus these have been removed.
See `YANGTOOLS-1489 <https://jira.opendaylight.org/browse/YANGTOOLS-1489>`__ for details.

The interfaces supporting RFC8528 YANG schema mounts have been integrated into ``yang-data-api`` and ``yang-data-util``
artifacts. This rendered ``rfc8528-data-api`` and ``rfc8528-data-util`` artifacts empty and thus these have been removed.
See `YANGTOOLS-1172 <https://jira.opendaylight.org/browse/YANGTOOLS-1172>`__ for details.

As part of these changes, following API changes have also been done in order to ease using these interfaces:
* ``NormalizedNodeStreamWriterExtension`` has been renamed to ``NormalizedNodeStreamWriter.Extension``
* ``StreamWriterMetadataExtension`` has been renamed to ``NormalizedNodeStreamWriter.MetadataExtension``
* ``StreamWriterMountPointExtension`` has been renamed to ``NormalizedNodeStreamWriter.MountPointExtension``
* ``MountPointIdentifier`` has been removed with ``NormalizedMountPoint`` exposing its ``MountPointLabel`` directly

Finally, the result of ``NormalizedNodeStreamWriter`` is now a combined structure, ``NormalizationResult``, which combines
a mandatory ``NormalizedNode`` data tree, an optional ``NormalizedMetadata`` and an optional ``NormalizedMountPoints`` tree.
For the purposes of receiving this the result, ``NormalizedNodeResult`` has been replaced with ``NormalizationResultHolder``.

``DataSchemaContextNode`` replaced with ``DataSchemaContext``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``yang.data.util.DataSchemaContextNode`` has been completely revamped and renamed to ``DataSchemaContext``. It is now an interface
implemented completely internally, with a proper interface hierarchy. Implementations of these interfaces are given out by
``DataSchemaContextTree``.  The resulting API is much easier to figure out and use, especially with proper documentation and naming
not overlapping with other parts of YANG Tools.
See `YANGTOOLS-1413 <https://jira.opendaylight.org/browse/YANGTOOLS-1413>`__ for details.

``ExtensibleObject`` has been reworked
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This interface no longer exposes a ``ClassToInstanceMap``, but rather provides direct lookup and enumeration methods. Users need
to be updated from performing

  .. code-block:: java

    ExtensibleObject obj;
    var extension = obj.getExtensions().getInstance(ExtensionType.class);

to instead doing

  .. code-block:: java

    ExtensibleObject obj;
    var extension = obj.extension(ExtensionType.class);

See `YANGTOOLS-1509 <https://jira.opendaylight.org/browse/YANGTOOLS-1509>`__ for details.

``UsesNode.getRefines()`` exposes only descendant paths
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The return type was changed to return ``Set<Descendant>`` instead of ``Map<Descendant, SchemaNode>``. Users relying on accessing
target nodes need to perform the resolution themselves.
See `YANGTOOLS-1518 <https://jira.opendaylight.org/browse/YANGTOOLS-1518>`__ for details.

``YangTextSchemaSources`` is a ``CharSource``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``yang.model.api.repo.YangTextSchemaSource`` now operates on a stream of characters, not bytes. All users which instantiate sources
from byte streams must specify the character set used.
See `YANGTOOLS-1508 <https://jira.opendaylight.org/browse/YANGTOOLS-1508>`__ for details.


MD-SAL Impacts
--------------

``InstanceIdentifierBuilder`` renamed to ``InstanceIdentifier.Builder``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A long-standing bug, where a ``KeyedInstanceIdentifier`` could not be safely returned from ``InstanceIdentifierBuilder`` was fixed.
As part of this fix, ``InstanceIdentifierBuilder`` was renamed to be an inner class, ``InstanceIdentifier.Builder``. There is also
a corresponding ``InstanceIdentifier.KeyedBuilder``. See `MDSAL-798 <https://jira.opendaylight.org/browse/MDSAL-798>`__ for details.

``BindingReflections.getModuleInfo()`` has moved
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This reflection-based method was moved to ``BindingRuntimeHelpers`` class, as all its users already interact with
``mdsal-binding-runtime-spi``. See `MDSAL-803 <https://jira.opendaylight.org/browse/MDSAL-803>`__ for details.

Convenience model artifacts removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The aggregating multi-module RFCs have been removed. Users declaring a dependency on any of ``rfc6991``, ``rfc8294``, ``rfc8342``,
``rfc8345``, ``rfc8346``, ``rfc8348``, ``rfc8349``, ``rfc8519``, ``rfc8520``, ``rfc8542``, ``rfc8776`` or ``rfc8795`` need to now
update these references to individual modules' artifacts.
See `MDSAL-823 <https://jira.opendaylight.org/browse/MDSAL-823>`__ for details.

``BindingMapping`` moved
^^^^^^^^^^^^^^^^^^^^^^^^
``binding.spec.naming.BindingMapping`` has been renamed and moved to ``yang.binding.contract.Naming``.
See `MDSAL-804 <https://jira.opendaylight.org/browse/MDSAL-804>`__ for details.

``IetfInetUtil.INSTANCE`` and ``IetfYangUtil.INSTANCE`` removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``IetfInetUtil`` and ``IetfYangUtil`` have been refactored so they now expose static utility methods not encapsulated
in an object instance. All references to ``INSTANCE`` need to be removed:

  .. code-block:: java

    byte[] bytes;
    IetfYangUtil.INSTANCE.macAddressFor(bytes);

becomes

  .. code-block:: java

    byte[] bytes;
    IetfYangUtil.macAddressFor(bytes);

See `MDSAL-804 <https://jira.opendaylight.org/browse/MDSAL-804>`__ for details.

Binding ``Identifiable`` and ``Identifier`` renamed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``yang.binding.Identifer`` has been renamed to ``yang.binding.Key`` and ``yang.binding.Identifiable`` has been renamed to
``yang.binding.KeyAware``. This change prevents confusion with ``yangtools.concepts`` interfaces with the same name.
See `MDSAL-830 <https://jira.opendaylight.org/browse/MDSAL-830>`__ for details.


Controller Impacts
------------------
None.

