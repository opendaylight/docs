===============================
2022.03 Sulfur Platform Upgrade
===============================

This document describes the steps to help users upgrade from Phosphorus
to Sulfur planned platform. Refer to `Managed Release Integrated (MRI)
project <https://git.opendaylight.org/gerrit/q/topic:sulfur-mri>`_
upgrade patches for more information.

.. contents:: Contents

Preparation
-----------

JDK 11 Version
^^^^^^^^^^^^^^
Phosphorus requires Java 11, both during compile-time and run-time.
Make sure to install JDK 11 corresponding to at least ``openjdk-11.0.10``,
and that the JAVA_HOME environment variable points to the JDK directory.

Version Bump
^^^^^^^^^^^^
Before performing platform upgrade, do the following to bump the odlparent
versions (for example, `bump-odl-version <https://github.com/skitt/odl-tools/blob/master/bump-odl-version>`_):

1. Update the odlparent version from 9.0.13 to 10.0.0. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for 10.0.0. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[10,11)" instead of "[9,10)", "[5.0.3,6)" or any other variation.

 .. code-block:: shell

  bump-odl-version odlparent 9.0.13 10.0.0

2. Update the direct yangtools version references from 7.0.14 to 8.0.3,
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 8.0.2. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[8,9)" instead of "[7,8)".

 .. code-block:: shell

  bump-odl-version yangtools 7.0.14 8.0.3

3. Update the MD-SAL version from 8.0.11 to 9.0.2. There should not be
   any reference to **org.opendaylight.mdsal**, except for 9.0.2.

 .. code-block:: shell

  bump-odl-version mdsal 8.0.11 9.0.2

4. Update the Controller version from 4.0.10 to 5.0.2. There should not be
   any reference to **org.opendaylight.controller**, except for 5.0.2.

 .. code-block:: shell

  bump-odl-version controller 4.0.10 5.0.2

5. Update the InfraUtils version from 2.0.13 to 3.0.0. There should not be
   any reference to **org.opendaylight.infrautils**, except for 3.0.0.

 .. code-block:: shell

  bump-odl-version infrautils 2.0.13 3.0.0

6. Update the AAA version from 0.14.10 to 0.15.2. There should not be
   any reference to **org.opendaylight.aaa**, except for 0.15.2.

 .. code-block:: shell

  bump-odl-version aaa 0.14.10 0.15.1

7. Update the NETCONF version from 2.0.14 to 3.0.1. There should not be
   any reference to **org.opendaylight.netconf**, except for 3.0.1.

 .. code-block:: shell

  bump-odl-version netconf 2.0.14 3.0.1

Install Dependent Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^
Before performing platform upgrade, users must also install
any dependent project. To locally install a dependent project,
pull and install the respective
`sulfur-mri <https://git.opendaylight.org/gerrit/q/topic:sulfur-mri>`_
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
the ODL Parent version 9. Refer to the `ODL Parent Release Notes
<https://github.com/opendaylight/odlparent/blob/master/docs/NEWS.rst#version-1000>`_
for more information.

Features
^^^^^^^^
Any version range referencing version 9 of ODL Parent must be changed
to “[10,11)” for ODL Parent 10.

 .. code-block:: xml

   <feature name="odl-infrautils-caches">
       <feature version="[10,11)">odl-guava</feature>
   </feature>

ODL Parent Impacts
------------------

Minimum Maven version is 3.8.3
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The minimum version of Apache Maven has been raised to ``3.8.3``. Attempts to build any component with an older
version will result in a build failure.

blueprint-maven-plugin declarations removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The declarations of ``blueprint-maven-plugin`` and its related annotations has been removed. The plugin seems to
be no longer maintained. Downstreams are advised to either switch to a hand-written XML container, or pick maintain
these declarations themselves.

Powermock declarations removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The declarations of powermock dependencies have been removed. Downstreams are advised to migrate to pure Mockito,
as it covers all use cases supported by Powermock. Alternatively, downstreams can maintain these declarations, but
note that Mockito declaration needs to also be downgraded:

  .. code-block:: xml

    <dependency>
      <groupId>org.mockito</groupId>
      <artifactId>mockito-core</artifactId>
      <version>3.12.4</version>
      <scope>test</scope>
    </dependency>
    <dependency>
      <groupId>org.powermock</groupId>
      <artifactId>powermock-api-mockito2</artifactId>
      <version>2.0.9</version>
      <scope>test</scope>
    </dependency>
    <dependency>
      <groupId>org.powermock</groupId>
      <artifactId>powermock-module-junit4</artifactId>
      <version>2.0.9</version>
      <scope>test</scope>
    </dependency>


Removed OSGi roll-up bundles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
In preparation for adoption of OSGi Release 8, the declarations of roll-up bundles -- ``osgi.annotation``, ``osgi.core``,
``osgi.cmpn`` -- have been removed. Unfortunately these are still leaking from Karaf's BOM with scope=compile.

Downstreams need to migrate their dependency declarations to the individual bundles, like ``org.osgi.framework``,
``org.osgi.service.component.annotations`` and similar. Failure to do so will end up being caught by Single Feature Test.

YANG Tools Impacts
------------------

SchemaNode.getPath() was removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The original idea that each SchemaNode has a unique identifier, available through ``SchemaNode.getPath()``,
has proven to be a scalability issue with vendor models. The identifiers themselves account for up to 19%
of all objects retained by EffectiveModelContext, holding up to 17% of retained memory. These were also
preventing a number of useful performance and memory footprint optimizations.

In yangtools-8 we have finished removal of this method. Downstreams need to adjust all call sites which relied
on this method. There are a number of utilities, namely ``yang.model.util.SchemaInferenceStack``,
``yang.data.util.DataSchemaContextTree`` and ``yang.model.api.EffectiveStatementInference`` allow for navigating
the schema tree based on ``schema tree`` and ``data tree`` `QNames`, as well as via ``yang-data-api`` PathArguments.
In case of pure ``schema tree`` look-up, a ``yang.model.api.stmt.SchemaNodeIdentifier`` can be used as the replacement
for ``SchemaPath``. Most notably ``DataSchemaContextTree`` has a new ``enterPath(YangInstanceIdentifier`` method, which
returns both the corresponding ``DataSchemaContextNode`` and suitably initialized ``SchemaInferenceStack``.

Decimal64 in use for decimal64 leaf and leaf-list values
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The data mapping of ``type decimal64`` has changed from ``java.math.BigDecimal`` to ``yang.common.Decimal64``. This
allows us to lower storage requirements as well as to express the exact data type semantics. All codecs have been updated
to account for this change, but users constructing these values manually need to be adjusted to construct the correct
value.

YANG parser validates ``unique`` argument
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The contents of the argument to ``unique`` statement are now validated and are required to be consistent with the model.
This means that each schema node identifier must resolve to a ``leaf`` statement, otherwise the model will be rejected
with a ``SourceException``. Such violations should be rare in practice. An example of a non-compliant model is:

  .. code-block:: yang

    list foo {
      leaf bar {
        type string;
      }

      unique baz; // 'baz' does not exist, should perhaps be 'bar'?
    }

YANG parser validates version-1 and version-1.1 imports
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
RFC7950 explicitly forbids using import-with revision of a ``yang-version 1.1`` into a ``yang-version 1`` module. YANG parser
now properly enforces this restriction. Attempting to process the following modules will result in a failure:

  .. code-block:: yang

    module foo {
      namespace foo;
      prefix foo;
      yang-version 1.1;

      revision 2022-04-04;
    }

    module bar {
      namespace bar;
      prefix bar;
      // 'yang-version 1'; is implied

      import foo {
        prefix foo;
        revision-date 2022-04-04; // forbidden, will still work without this line
      }
    }

ModelStatement `hashCode()`/`equals()` are codified
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The equality contract of the various ``SchemaNode`` and ``ModelStatement`` subclasses was ill-defined,
with the various implementations having a number of competing and conflicting takes on what the contract is.
These idiosyncracies have been resolved and both ``hashCode`` and ``equals`` methods are now defined
to map to object identity.
Users requiring a different comparison need to implement such methods themselves, for example by examining
``EffectiveStatement`` argument and sub-statements.

RpcError design updated
^^^^^^^^^^^^^^^^^^^^^^^
The ``yang.common.RpcError`` interface design has been updated to improve type safety.
It is now using ``yang.common.ErrorType`` instead of brewing its own. It is also using ``yang.common.ErrorTag``
instead of a ``String`` for error-tag specification.
Downstreams are advised to use ``ErrorTag.OPERATION_FAILED`` and related standard-defined tags, or instantiate
their own via provided constructor.

MD-SAL Impacts
--------------
This MD-SAL release contains a largely-rewritten Java Binding runtime component.
This change was necessitated by the removal of ``SchemaNode.getPath()`` as noted above.
The implementation has not been optimized and may have a larger memory footprint.
Optimizations in this area a expected to occur over the next few releases.

Generated Binding Builders do not reference yangtools.concepts.Builder
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Builder classes for generated interfaces have implemented ``yangtools.concepts.Builder`` interface to get a common
definition of their ``build()`` method.
This design decision lead to inability to understand where a particular Builder's build() method was called.
In this release Builders do not implement a common interface, hence each build() method has a precise call site.

As part of this change, the unused ``AssertDataObjects`` class has been removed from ``mdsal-binding-util``.

Mapping of system-ordered leaf-lists changed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The Binding mapping of ``leaf-list`` statements has been updated to reflect the underlying semantics. The mapping
now takes into account ``ordered-by`` sub-statement.

There is no change for user-ordered leaf-lists, i.e. this construct will result in a ``List<String>``, as the semantics
dictates the order of entries is significant:

  .. code-block:: yang

    container foo {
      leaf-list bar {
        type string;
        ordered-by user;
      }
    }

For leaf-lists without an ``ordered-by`` statement and for those with an ``ordered-by system`` statement, the mapping
has changed to ``java.util.Set``, i.e. the following will result in a ``Set<String>``:

  .. code-block:: yang

    container foo {
      leaf-list bar {
        type string;
        // implied: ordered-by system;
      }
    }

This is strictly correct interpretation: the results of ``hashCode()`` and ``equals()`` do not depend on the actual
order of elements.

Users are advised to reconcile the YANG model and the corresponding Java code, either by updating the model to include
``ordered-by user`` if the order has semantic meaning, or by adjusting calling code to accept a ``java.util.Set``.
Please note that Java 11 unmodifiable Set, as available through ``Set.of()``, ``Set.copyOf()`` and similar,
as well as ``HashSet`` have undefined iteration order.
In fact unmodifiable Set changes its iteration order with each JVM invocation.
To ease user experience and output predictability, it is recommended to use Guava's ``ImmutableSet``,
as it explicitly retains iteration order.

InstanceIdentifier semantics is strictly instantiated data
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The contracts around Binding ``InstanceIdentifier`` have been tightened up. The usual construction methods now require
the identifier to start at a child of a ``DataRoot`` element and all items need to implement ``ChildOf`` contract, rather
than plain ``DataObject``. This improves safety and removes the backdoor where an ``InstanceIdentifier`` could be use
to identify, for example, a ``notification``.

It also means that top-level constructs defined in a ``grouping`` and then used directly by the defining ``module``:

  .. code-block:: yang

    module foo {
      grouping grp {
        container bar;
      }

      uses grp;
    }

cannot be created directly through ``InstanceIdentifier.create()`` method. This a modeling pattern seen in OpenConfig models,
but is used by others as well. The problem here is that since ``grp`` is a top-level grouping, it could very well be used
by another module:

  .. code-block:: yang

    module baz {
      import foo { prefix foo; }

      uses foo:grp;
    }

The two instantiations of ``Bar`` are different and the ``InstanceIdentifier`` needs to positively identify which one it is
referencing. To reference ``bar`` here, the correct invocation is:

  .. code-block:: java

    // Bar instantiated in 'module foo'
    InstanceIdentifier<Bar> fooBar = InstanceIdentifier.builderOfInherited(FooData.class, Bar.class).build();
    // Bar instantiated in 'module baz'
    InstanceIdentifier<Bar> bazBar = InstanceIdentifier.builderOfInherited(BazData.class, Bar.class).build();


RFC7223 `ietf-interfaces` model removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The ``2014-05-08`` revision of ``ietf-interfaces.yang`` has been removed. Users are advised to migrate to the RFC8343
version of this model (revision ``2018-02-20``), which provides better alignment with OpenDaylight architecture and removes
a number of duplicated constructs. If such migration is not possible, users need to package the old model themselves.

RFC7277 `ietf-ip` model removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The ``2014-06-16`` revision of ``ietf-ip.yang`` has been removed. Users are advised to migrate to the RFC8344 version of
this model (revision ``2018-02-20``), which provides better alignment with OpenDaylight architecture and removes
a number of duplicated constructs. If such migration is not possible, users need to package the old model themselves.

RFC7895 `ietf-yang-library` removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The ``2016-06-21`` revision of ``ietf-yang-library.yang`` has been removed. Users to migrate to the RFC8252 version of
this model (revision ``2019-01-04``), which provides backwards compatibility and introduces ability to reason about NMDA
devices.

`iana-if-type` updated to 2021-06-21
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The ``iana-if-type`` model has been refreshed to revision ``2021-06-21``. This change makes a number of IANA assignments
available downstream. The ``rfc7224-20180703-iana-if-type`` artifact has been removed as part of this change. Going forward
we will provide a single revision of ``iana-if-type`` and update it as appropriate in major MD-SAL releases.

`iana-routing-types` updated to 2021-10-19
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The ``iana-routing-types`` model has been refreshed to revision ``2021-10-19``. This change makes a number of IANA AFI/SAFI
assignments available downstream.

Controller Impacts
------------------

OpenDaylight Blueprint extension not provided with `odl-mdsal-broker`
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The OSGi Blueprint extension, as available via the ``odl-controller-blueprint`` feature is no longer transitively depended
on by ``odl-mdsal-broker``. This change impacts downstreams who still use Blueprint as well as the OpenDaylight extensions,
like ``odl:type``, ``odl:rpc-service`` and ``odl:clustered-app-config``. Users who do not already explicitly pull in
``odl-controller-blueprint`` will need to add this dependency to their ``feature.xml`` definitions, otherwise their Blueprint
containers will fail to activate -- and thus fail SingleFeatureTest checks.

Distributed Datastore uses tell-based protocol by default
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The default configuration of ``sal-distributed-datastore`` has been changed to default to ``use-tell-based-protocol=true``
in ``datastore.cfg``. This protocol is now considered to be production-ready and its alternative, ask-based protocol, is
considered legacy although there are no immediate plans to remove it.

This change also lowers ``maximum-message-slice-size`` to `480KiB` and lowers Akka's ``maximum-frame-size`` to  `512KiB`.
This results in major reduction in native memory usage. Users switching back to ask-based protocol are advised to also
adjust these (and perhaps `akka-remoting`) parameters accordingly.
