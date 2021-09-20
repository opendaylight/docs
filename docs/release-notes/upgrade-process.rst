===================================
2021.09 Phosphorus Platform Upgrade
===================================

This document describes the steps to help users upgrade from Silicon
to Phosphorus planned platform. Refer to `Managed Release Integrated (MRI)
project <https://git.opendaylight.org/gerrit/q/topic:phosphorus-mri>`_
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

1. Update the odlparent version from 8.1.1 to 9.0.6. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for 9.0.6. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[9,10)" instead of "[8.1,9)", "[5.0.3,6)" or any other variation.

 .. code-block:: shell

  bump-odl-version odlparent 8.1.1 9.0.6

2. Update the direct yangtools version references from 6.0.5 to 7.0.8,
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 7.0.8. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[7,8)" instead of "[6,7)".

 .. code-block:: shell

  bump-odl-version yangtools 6.0.5 7.0.8

3. Update the MD-SAL version from 7.0.6 to 8.0.5. There should not be
   any reference to **org.opendaylight.mdsal**, except for 8.0.5.

 .. code-block:: shell

  bump-odl-version mdsal 7.0.6 8.0.5

4. Update the Controller version from 3.0.7 to 4.0.3. There should not be
   any reference to **org.opendaylight.controller**, except for 4.0.3.

 .. code-block:: shell

  bump-odl-version controller 3.0.7 4.0.3

5. Update the InfraUtils version from 1.9.6 to 2.0.6. There should not be
   any reference to **org.opendaylight.infrautils**, except for 2.0.6.

 .. code-block:: shell

  bump-odl-version infrautils 1.9.6 2.0.6

6. Update the AAA version from 1.13.0 to 0.14.3. There should not be
   any reference to **org.opendaylight.aaa**, except for 0.14.3.

 .. code-block:: shell

  bump-odl-version aaa 0.13.2 0.14.3

7. Update the NETCONF version from 1.13.1 to 2.0.5. There should not be
   any reference to **org.opendaylight.netconf**, except for 2.0.5.

 .. code-block:: shell

  bump-odl-version netconf 1.13.1 2.0.5

Install Dependent Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^
Before performing platform upgrade, users must also install
any dependent project. To locally install a dependent project,
pull and install the respective
`phosphorus-mri <https://git.opendaylight.org/gerrit/q/topic:phosphorus-mri>`_
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
<https://github.com/opendaylight/odlparent/blob/master/docs/NEWS.rst#version-902>`_
for more information.

Features
^^^^^^^^
Any version range referencing version 8 or 8.1 of ODL Parent must be changed
to “[9,10)” for ODL Parent 9.

 .. code-block:: xml

   <feature name="odl-infrautils-caches">
       <feature version="[9,10)">odl-guava</feature>
   </feature>

ODL Parent Impacts
------------------

Updated JSR-330 coordinates
^^^^^^^^^^^^^^^^^^^^^^^^^^^
ODL Parent has switched to sourcing ``javax.inject`` artifact from the GuicedEE project in version 8.1.
With odlparent-9, the old coordinates were removed. Downstreams need to update their dependency blocks to:

 .. code-block:: xml

   <dependency>
       <groupId>com.guicedee.services</groupId>
       <artifactId>javax.inject</artifactId>
       <optional>true</optional>
   </dependency>


Removed OSGi Release 6 `osgi-core`
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The artifact name for OSGi Core specification has changed in Release 7. Where odlparent-8.1 provided both R6 and R7
declarations, odlparent-9 removes the legacy declaration. Downstreams need to update their dependency blocks to:

 .. code-block:: xml

   <dependency>
       <groupId>org.osgi</groupId>
       <artifactId>osgi.core</artifactId>
   </dependency>


Jackson minor version update
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The release stream for Jackson has been changed, we are now tracking the ``2.12.x`` release train. This means that
references to the corresponding feature need to be updated to point to ``odl-jackson-2.12``.


YANG Tools Impacts
------------------

SchemaNode.getPath() can throw UnsupportedOperationException
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The original idea that each SchemaNode has a unique identifier, available through ``SchemaNode.getPath()``,
has proven to be a scalability issue with vendor models. The identifiers themselves account for up to 19%
of all objects retained by EffectiveModelContext, holding up to 17% of retained memory. These are also
preventing a number of useful performance and memory footprint optimizations.

In yangtools-6 we set out on eliminating this problem, with TypeDefinition's `getPath()` method being
specified as being optional -- but the implementation supported this method.

In yangtools-7 we are taking next three steps:
  * we make `SchemaNode.getPath()` an default method, with the default implementation throwing
    UnsupportedOperationException
  * we are changing TypeDefinition implementation to actually throw UnsupportedOperationException
    in all cases
  * we are making `SchemaNode.getPath()` deprecated for removal

All other types of SchemaNode except TypeDefinition retain a fully functional `getPath()` as an implementation
detail, providing seamless interoperation with current code in most cases.


NormalizedNode hierarchy was updated
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The interfaces representing normalized view of YANG-modeled data, rooted at
``org.opendaylight.yangtools.yang.data.api.NormalizedNode``, have been revamped for easier use and better
consistency of operations.

The most prolific change is the reduction of number of generic arguments for ``NormalizedNode``, ``DataContainerChild``
and ``NormalizedNodeContainer``. The first two now do not have any generic arguments, while NormalizedNodeContainer
has only a single argument.

This prompts a very simple replacement pattern, where uses like this:

 .. code-block:: java

   NormalizedNode<?, ?> node = ...
   NormalizedNodeContainer<?, ?, ?> parent = ...
   DataContainerChild<?, ?> child = ...

are simplified down to

 .. code-block:: java

   NormalizedNode node = ...
   NormalizedNodeContainer<?> parent = ...
   DataContainerChild child = ...


Base NormalizedNode interface has also been changed. The ``NormalizedNode.getNodeType()`` method has been removed,
as it does not work well with ``AugmentationIdentifier`` -- leaving only three methods:

  * ``getIdentifier()`` inherited from the ``Identifiable`` contract
  * ``body()``, which is actually the new name for ``value()``
  * ``contract()``, which identifies which NormalizedNode specialization, such as ContainerNode or AnydataNode,
    a particular object represents

For most users, this change simply means replacing code blocks like

 .. code-block:: java

   NormalizedNode<?, ?> node;
   QName type = node.getNodeType();
   Object value = node.getValue();

with a slightly more verbose

 .. code-block:: java

   NormalizedNode node;
   QName type = node.getIdentifier().getNodeType();
   Object value = node.body();

which makes safety of `getNodeType()` obvious as soon as NormalizedNode subtypes (such as ContainerNode, MapNode) are
actually involved.

Also NormalizedNodeContainer's function has changed. It now correctly acts as a common interface
between containers which allow key-based child look-up (``DistinctNodeContainer``) and containers which allow
offset-based child look-up (``OrderedNodeContainer``), hosting utility methods like ``size()`` and ``isEmpty()``.
Call sites which iterate through all available children should continue using NormalizedNodeContainer. Call sites
which require accessing a child by its identifier need to switch to using DistinctNodeContainer:

 .. code-block:: java

   NormalizedNodeContainer<?, ?, ?> container;
   PathArgument arg;
   DataContainerChild<?, ?> child = container.getDataChildByName(arg);

ends up being migrated to

 .. code-block:: java

   DistinctNodeContainer<?> container;
   PathArgument arg;
   DataContainerChild child = container.childByArg(arg);

There actually are now three different methods to access a child, allowing flexible and expressive integration:
  * ``childByArg()``, which returns a child or ``null``,
  * ``findChildByArg()``, which returns a ``Optional`` child,
  * ``getChildByArg()``, which returns a child or throws VerifyException


Another aspect that got attention is child ordering contract. Both ``MapNode`` and ``LeafSetNode`` are now
specialized in disjunct interfaces based on how child iteration order affects semantics. ``SystemMapNode`` and
``SystemLeafSetNode`` represent ``list`` and ``leaf-list`` constructs which have ``ordered-by system`` semantics --
which is to say order of nodes is not part of semantics similar to what ``java.util.Set`` does. On the other hand
we have ``UserMapNode`` and ``UserLeafSetNode`` for constructs which are ``ordered-by user`` -- hence the child
iteration order is part of semantics, i.e. what ``java.util.List`` does.


ModelStatement non-existent arguments
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The type mapping of YANG statements argument in the no-argument case has changed. These have been previously mapped
to ``java.lang.Void`` to express non-presence. This mapping has caused nullability issues of ``ModelStatement.argument()``.
These have been resolved through mapping non-existent arguments to ``org.opendaylight.yangtools.yang.common.Empty``,
which maintains the same 'nothingness' contract through a singleton non-null object.


XML namespace has a dedicated construct
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
In previous versions, we have used ``java.net.URI`` to model the argument of YANG ``namespace`` statement. This has
proven to be a bit inefficient from both memory and CPU perspective, for example during looks. In this version, YANG
namespace is represented by a dedicated ``org.opendaylight.yangtools.yang.common.XMLNamespace`` class. It performs
same validation as ``URI.create()`` does, but it does not break the string into its constituents for storage like URI
does.


DataSchemaNode's `isConfigration()` is three-state
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The idea that a DataSchemaNode has a boolean attribute representing the effective value of ``config`` statement argument
has been problematic due to its ignoring definition scope. As an example, ``leaf`` defined in a ``grouping`` has neither
``config true`` nor ``config false`` effective statement.

In order to fix this modeling problem, as well to stop users from attempting to perform various recovery strategies,
a new method, ``DataSchemaNode.effectiveConfig()``, has been introduced. This method returns ``Optional<Boolean>``,
accurately modeling the three possibilities. ``DataSchemaNode.isConfiguration()`` has also been deprecated for removal.


SchemaContextUtil has been removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A number of utilities dealing with SchemaNode traversal have been hosted in SchemaContextUtil. All of these were created
with assumptions of ``SchemaPath`` and with the object model not understanding YANG XPath expressions. This has lead to
some very obscure code with problematic edge cases.

All of these utilities have been centralized in a stateful SchemaInferenceStack. This stack encapsulates state related to
how a piece of logic has come to know about an EffectiveStatement. There are number of simple operations, such as
``enterDataTree(QName)``, ``enterGrouping(QName)``, ``exit()`` and similar.

The stack also provides faculties to resolve ``type leafref`` path expressions, adjusting its internal state to provide
a path from the conceptual schema root to the leaf a particular leafref (indirectly) points to.

State of a SchemaInferenceStack can be converted to an immutable ``EffectiveStatementInference`` instance. This construct
serves as the modern replacement of ``SchemaPath``. Rather than containing an opaque path, though, it contains a sequence
of statements and attached semantics. This allows us to accurately address statements and communicate the state of the
SchemaInferenceStack across API boundaries, as a SchemaInferenceStack can readily be reconstituted from a number of different
EffectiveStatementInferences.

A number of entry-points, most notably to XML and JSON codecs, now take an ``EffectiveStatementInference`` instead of
a ``SchemaPath`` or a context ``SchemaNode``. For migration purposes, users having these available can use the following
snippet to migrate:

 .. code-block:: java

   EffectiveModelContext context = ...;
   SchemaNode node = ...;
   EffectiveStatementInference inference = SchemaInferenceStack.ofSchemaPath(context, node.getPath()).toInference();


Strictly-compliant `leafref` path interpretation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Previous versions of YANG Tools have had a number of ways how to resolve where a ``leafref``'s ``path`` statement is
pointing to. Each of these operated on a different set of assumptions and had its share of caveats and outright bugs --
most of them stemming from their attempt to operate on raw strings as declared in YANG files.

All of these utilities have been removed in this release and superseded by a single implementation in aforementioned
``SchemaInferenceStack``. This implementation maintains an
`XPath Context <https://datatracker.ietf.org/doc/html/rfc7950#section-6.4.1>`__ and performs unqualified name resolution
based upon its rules.

Low-level API is ``SchemaInferenceStack.resolvePathExpression()``, which takes a ``PathExpression`` and interprets it
in the context of its current state. On successful return the statement which the expression points will be return and
the stack will be updated to be at that statement.

High-level API is captured in ``LeafrefResolver`` API, allowing users to (recursively) resolve the actual type that a
particular ``LeafrefTypeDefinition`` points to. SchemaInferenceStack is its canonical implementation.

End-user visible behavior has changed in that incorrect leafref paths are now readily identified. This typically affects
cross-module use of ``type leafref`` with absolute paths in either ``typedef`` or in ``grouping`` contexts. Typical source
of trouble looks like this:

 .. code-block:: yang

  module foo {
    prefix foo;

    typedef foo-ref {
      type leafref {
        path /foo;
      }
    }

    leaf foo {
      type string;
    }
  }

  module bar {
    prefix bar;

    import foo {
      prefix foo;
    }

    leaf bar {
      type foo:foo-ref;
    }
  }

Note how ``foo-ref`` is using an absolute path with unqualified name. The intent seems to be to point at the ``foo:foo``
leaf and in fact all uses within ``foo`` module operate as expected. In the context of ``bar`` module, though, things
break down. When we are looking at ``bar:bar`` leaf, the path becomes ``/bar:foo`` -- and thus attempts to resolve it
will fail. Correct fix in this situation is to correct the definition of the path to use qualified names:

 .. code-block:: yang

  typedef foo-ref {
    type leafref {
      path /foo:foo;
    }
  }


Unrecognized YANG statement handling
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
YANG parser does not reflect unrecognized YANG language extensions, defined by
an ``extension`` statement, in the effective model as exposed by EffectiveModelContext.

This has a direct impact on the contents of ``DocumentedNode.getUnknownSchemaNodes()``, as unrecognized extensions
will not be presented in the list.

Unrecognized extensions are those that are defined by an ``extension`` statement, but do not have a corresponding
YANG parser handler. These extensions cannot be semantically be bound and the YANG parser handles in accordance with
`RFC6020 <https://datatracker.ietf.org/doc/html/rfc6020#section-6.3.1>`__ by treating them as unsupported extensions
and ignoring them.


MD-SAL Impacts
--------------
This MD-SAL release contains a completely rewritten Java Binding generator.

The implementation now performs a multi-pass generation as opposed to a memorized single-pass generation approach
taken by the previous implementation. Multiple passes allow for proper name allocation policies, with conflicts
being resolved in a consistent matter-of-course way.

Forward compatibility with Java 16
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Java has reserved a few new keywords, ``var``, ``yield`` and most notably ``record``. These are now taken into
account when generating Java bindings, resulting in slightly different package names being generated, as they are
now prefixed with a single underscore.

For example ``org.opendaylight.yang.gen.v1.foo.record.bar`` is now generated as
``org.opendaylight.yang.gen.v1.foo._record.bar``.


Augmentation child package names
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
As part of class/package name mapping rules, augmentation class name overrides also apply to package names. For
this example YANG

 .. code-block:: yang

   import yang-ext {
     prefix ext;
   }

   container foo {
     container bar;
   }

   augment /foo/bar {
     ext:augment-identifier baz;

     container xyzzy;
   }


we would generate ``foo.bar.Xyzzy`` interface. Since the augmentation now makes a proper claim on the ``baz``
name, we generate ``baz.Xyzzy`` instead.

This change also mean that attempts to define multiple augments with the same augment-identifier will result
in a build failure.


RPCs now reserve the corresponding class name
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Binding mapping of ``action`` and ``rpc`` statements are slightly different, reflecting the evolution of Java
as well as our assembly of features. In the long term we want to evolve ``rpc`` mapping to resemble more the
way ``action`` is mapped. As a preparatory step, ``rpc`` statements now reserve the class (and package) names
corresponding to the RPC argument. This does not affect most use cases, but slightly changes interactions with
groupings on naming overlap. For the following fragment

 .. code-block:: yang

   module foo {
     grouping foo;
     rpc foo;
   }

we used to generate ``FooService``, ``FooInput`` and ``FooOutput`` for the RPC and ``Foo`` for the grouping. In
this release we generate ``Foo$G`` for the grouping, leaving ``Foo`` non-existent. A future version will take
advantage of this gap and generate an interface for the RPC.


DOMDataTreeChangeListener.onInitialData() is mandatory
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
DOMDataTreeChangeListener's callback for initially-empty data, ``onInitialData()``, is no longer a default
method and therefore is mandatory to implement. It is okay for this method to do nothing, but some users may
choose to perform some processing, similar to what they'd do if the listen root were to be deleted.


Widened Integer/Long/BigInteger compatibility setters and constructors removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
In releases prior to Magnesium ``uint8``, ``uint16``, ``uint32`` and ``uint64`` types were mapped to Short, Integer,
Long and BigInteger respectively. With Magnesium, this mapping changed to ``yang.common.Uint{8,16,32,64}`` and
compatibility ``setFoo(Short)`` methods were retained as adapters to minimize the API churn.

In this release these compatibility methods are no longer generated, as detailed in
`this MD-SAL issue <https://jira.opendaylight.org/browse/MDSAL-490>`__.


List/Map compatibility setters and constructors removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
In releases prior to Aluminium, ``list`` statements were always mapped to ``java.util.List``. With Aluminium, this
mapping was updated to take into account the semantic meaning implied by ``ordered-by`` statements. For ``list``
statements, which are ``ordered-by system`` and also have a ``key`` statement, the mapping was changed to
``java.util.Map``. Compatibility constructors and setters were retained as adapters to minimize the API churn.

In this release these compatibility methods are no longer generated, as detailed in
`this MD-SAL issue <https://jira.opendaylight.org/browse/MDSAL-540>`__.


Boolean compatibility getters removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
In releases prior to Silicon, ``type boolean`` getters were mapped to ``is`` prefix instead of the regular ``get``
prefix. With Silicon, this mapping was made regular, i.e. all getters share the same ``get`` prefix. Compatibility
getters were retained as simple adapters, so that both ``boolean isFoo()`` and ``boolean getFoo()`` were available.

In this release these compatibility methods are no longer generated, as detailed in
`this MD-SAL issue <https://jira.opendaylight.org/browse/MDSAL-659>`__.


Producer/Consumer APIs removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
``DOMDataTreeShard`` as well as ``DataTreeProducer``, ``DataTreeConsumer`` and related class were removed. These
APIs failed to get productized and were very problematic in a clustered setting and they were impossible to migrate
to gradually. A future version of MD-SAL will define a set of replacement interfaces along with a migration guide,
allowing for gradual migration.


Controller Impacts
------------------

Distributed Datastore backwards compatibility reduced to Sodium SR1
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Backwards compatibility glue in prior versions spanned as far back as Boron release. In this release a number of glue
items were removed, removing compatibility with datastore versions prior to Sodium SR1.


Prefix-based shards removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^
Prefix-based sharding implementation in the Distributed Datastore has been removed as a consequence of MD-SAL APIs
it implemented being removed.


Message Bus component removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The experimental ``messagebus`` component was removed. This component has had only one implementation in NETCONF
project. The combination has been a proof of concept and was never productized nor has it been tested in real world
for the past 4 years.


`opendaylight-topology` and `opendaylight-inventory` removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
These two sets of models are only used in OpenFlow plugin and its users. Most of the concepts they introduce have
been superseded by IETF-standardized ``ietf-network`` and related models. These models are removed from the controller
project and reintroduced in OpenFlow Plugin. Users are advised to either consume them from OpenFlow, or migrate to
using `RFC8345 <https://datatracker.ietf.org/doc/html/rfc8345>`__ instead.


Removed support for deprecated `datastore.cfg` properties
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The following properties in `datastore.cfg` have been deprecated and were no-ops in previous releases:
  * ``max-shard-data-change-executor-pool-size``
  * ``max-shard-data-change-executor-queue-size``
  * ``max-shard-data-change-listener-queue-size``
  * ``max-shard-data-store-executor-queue-size``

This release no longer recognizes these properties and treats them as errors.

