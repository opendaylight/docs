=================================
2022.09 Chlorine Platform Upgrade
=================================

This document describes the steps to help users upgrade from Sulfur
to Chlorine planned platform. Refer to `Managed Snapshot Integrated (MSI)
project <https://git.opendaylight.org/gerrit/q/topic:chlorine-mri>`_
upgrade patches for more information and hints for solutions to common
problems not explicitly listed here.

.. contents:: Contents

Preparation
-----------

JDK 17 Version
^^^^^^^^^^^^^^
2022.09 Sulfur requires Java 17, both during compile-time and run-time.
Make sure to install JDK 17 corresponding to at least ``openjdk-17.0.4``,
and that the JAVA_HOME environment variable points to the JDK directory.

Version Bump
^^^^^^^^^^^^
Before performing platform upgrade, do the following to bump the odlparent
versions (for example, `bump-odl-version <https://github.com/skitt/odl-tools/blob/master/bump-odl-version>`_):

1. Update the odlparent version from 10.0.3 to 11.0.1. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for 11.0.1. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[11,12)" instead of "[10,11)", "[5.0.3,6)" or any other variation.

 .. code-block:: shell

  bump-odl-version odlparent 10.0.3 11.0.1

2. Update the direct yangtools version references from 8.0.7 to 9.0.1,
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 9.0.1. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[9,10)" instead of "[8,9)".

 .. code-block:: shell

  bump-odl-version yangtools 8.0.7 9.0.1

3. Update the MD-SAL version from 9.0.5 to 10.0.1. There should not be
   any reference to **org.opendaylight.mdsal**, except for 10.0.1.

 .. code-block:: shell

  bump-odl-version mdsal 9.0.5 10.0.1

4. Update the Controller version from 5.0.6 to 6.0.1. There should not be
   any reference to **org.opendaylight.controller**, except for 6.0.1.

 .. code-block:: shell

  bump-odl-version controller 5.0.6 6.0.1

5. Update the InfraUtils version from 3.0.2 to 4.0.1. There should not be
   any reference to **org.opendaylight.infrautils**, except for 4.0.1.

 .. code-block:: shell

  bump-odl-version infrautils 3.0.2 4.0.1

6. Update the AAA version from 0.15.6 to 0.16.1. There should not be
   any reference to **org.opendaylight.aaa**, except for 0.16.1.

 .. code-block:: shell

  bump-odl-version aaa 0.15.6 0.16.1

7. Update the NETCONF version from 3.0.6 to 4.0.1. There should not be
   any reference to **org.opendaylight.netconf**, except for 4.0.1.

 .. code-block:: shell

  bump-odl-version netconf 3.0.6 4.0.1

Install Dependent Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^
Before performing platform upgrade, users must also install
any dependent project. To locally install a dependent project,
pull and install the respective
`sulfur-mri <https://git.opendaylight.org/gerrit/q/topic:chlorine-mri>`_
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
<https://github.com/opendaylight/odlparent/blob/master/docs/NEWS.rst#version-1101>`_
for more information.

Features
^^^^^^^^
Any version range referencing version 10 of ODL Parent must be changed
to “[11,12)” for ODL Parent 10.

 .. code-block:: xml

   <feature name="odl-infrautils-caches">
       <feature version="[11,12)">odl-guava</feature>
   </feature>

ODL Parent Impacts
------------------

Upstream declarations removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A number of declarations of upstream projects, which are no longer used in OpenDaylight, have been removed. This
includes ``Google Truth``, ``commons-codec``, ``commons-fileupload``, ``commons-net``, ``jsonassert``, ``jungg``
and ``spring-osgi-mock``.

Partial migration to Jakarta
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A number of Jakarta EE artifacts have been migrated from their legacy ``javax`` namespace to the new ``jakarta``
namespace. This does not affect Java packages, only dependency declarations.

 .. list-table javax to Jakarta conversion
    :header-rows: 1

    * - Old coordinate
      - New coordinate
    * - javax.activation/javax.activation-api
      - jakarta.activation/jakarta.activation-api
    * - javax.ws.rs/javax.ws.rs-api
      - jakarta.ws.rs/jakarta.ws.rs-api

YANG Tools Impacts
------------------

SemVer-based YANG parser import resolution removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The ability to recognize OpenConfig semantic versions in ``import`` statements and use them to resolve the import
to a matching module has been removed.

Multiple constructs are now ``sealed``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A number of interfaces and classes are now `sealed <https://openjdk.org/jeps/409>`__. This includes ``ItemOrder``,
``AbstractQName``, ``ArgumentDefinition``, ``YangExpr``, ``ModelStatement``, ``YangInstanceIdentifier``, ``LeafSetNode``
and ``MapNode``. This improves clarity of their design, making them easier to use and infer about, but also makes
it impossible to use Mockito to mock them. Users may need to use real implemnentations instead of mocks.

Decimal64 are required to match ``fraction-digits``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
When a ``leaf`` or ``leaf-list`` item has ``type decimal64``, JSON and XML codecs will reject values which cannot
be scaled to the matching ``fraction-digits``.


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

The two instances of ``Bar`` are different and the ``InstanceIdentifier`` needs to positively identify which one it is
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
