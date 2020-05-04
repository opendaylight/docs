==========================
Aluminium Platform Upgrade
==========================

This document describes the steps to help users upgrade to the
Magnesium planned platform. Refer to `Managed Release Integrated (MRI)
project <https://git.opendaylight.org/gerrit/#/q/topic:aluminium-mri>`_
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

1. Update the odlparent version from 6.0.4 to 7.0.1. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for 7.0.1. This includes custom feature.xml templates
   (src/main/feature/feature.xml), the version range there should
   be "[7,8)" instead of "[6,7)", "[5.0.2,6)" or any other variation.

 .. code-block:: none

  bump-odl-version odlparent 6.0.4 7.0.1

2. Update the direct yangtools version references from 4.0.6 to 5.0.1,
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 5.0.1. This includes custom feature.xml templates
   (src/main/feature/feature.xml), the version range there should
   be "[5,6)" instead of "[4,5)".

3. Update the MD-SAL version from 5.0.9 to 6.0.0. There should not be
   any reference to **org.opendaylight.mdsal**, except for 6.0.0.

 .. code-block:: none

  rpl -R 5.0.9 6.0.0

4. Update the Controller version from 1.11.0 to 2.0.0. There should not be
   any reference to **org.opendaylight.controller**, except for 2.0.0.

 .. code-block:: none

  rpl -R 1.11.0 2.0.0

Install Dependent Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^
Before performing platform upgrade, users must also install
any dependent project. To locally install a dependent project,
pull and install the respective `magnesium-mri <https://git.opendaylight.org/gerrit/#/q/topic:aluminium-mri>`_ changes for any dependent project.

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
<https://github.com/opendaylight/odlparent/blob/master/NEWS.rst#version-700>`_
for more information.

Features
^^^^^^^^
Any version range referencing version 6 of ODL Parent must be changed
to “[7,8)” for ODL Parent 7.

 .. code-block:: xml

   <feature name="odl-infrautils-caches">
       <feature version="[7,8)">odl-guava</feature>
   </feature>

ODL Parent Impacts
------------------

OSGi Compendium dependency
^^^^^^^^^^^^^^^^^^^^^^^^^^
ODL Parent no longer declares the old OSGi Release 5 ``org.osgi.compendium`` artifact.
Please migrate to the correct Release 6 artifact.

 .. code-block:: xml

   <dependency>
       <groupId>org.osgi</groupId>
      <artifactId>osgi.cmpn</artifactId>
   </dependency>

JAXB dependencies
^^^^^^^^^^^^^^^^^
ODL Parent no longer declares ``javax.xml.bind`` dependencies and provides
replacement declarations from the Jakarta project.

 .. code-block:: xml

   <dependency>
       <groupId>jakarta.xml.bind</groupId>
      <artifactId>jakarta.xml.bind-api</artifactId>
   </dependency>

Jackson feature name
^^^^^^^^^^^^^^^^^^^^
The name of the Jackson feature changed to reflect the upgrade to version ``2.10``.
The new name is ``odl-jackson-2.10``.


YANG Tools Impacts
------------------

YANG parser validates XPath expressions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
In an ongoing effort to improve our feature-completeness, YANG parser now
requires an XPath parsing library and will perform validation of syntactic
well-formedness of every XPath expression encountered in YANG models --
most notably ``when`` and ``must`` statement arguments are covered. Accepted
syntax is strictly compliant with
`RFC7950 <https://tools.ietf.org/html/rfc7950#section-6.4>`__.

This also extends to ``path`` statement arguments, as encountered in
``type leafref`` constructs. Unlike most parsers out there, YANG Tools
does not allow any XPath expression to be used in this context, but rather
follows strict definition in
`RFC7950 <https://tools.ietf.org/html/rfc7950#section-9.9.2>`__, augmented
to deal with the change proposed in
`Errata 5617 <https://www.rfc-editor.org/errata/eid5617>`_. This should
cover even the non-RFC7950-compliant models coming from various standards
bodies, but it is certainly possible that a previously-accepted model will
be rejected by the parser. If that happens, the chances are that the model
itself is invalid. Please consult RFC7950 and the model author before
filing an issue with
`YANG Tools JIRA <https://jira.opendaylight.org/projects/YANGTOOLS>`_.


SchemaContext is being retired
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
After many years of development and incremental updates, this release marks
the start of the transition away from ``SchemaContext``. The object model
exposed by it is problematic in more ways than one. The replacement construct
is ``EffectiveModelContext``, which operates on ``EffectiveStatement``
and its related interfaces. ``EffectiveModelContext`` retains its
``SchemaContext`` trait for the duration of the transition and can be directly
used in that capacity. Users are encouraged to update their interfaces to
accept and give out EffectiveModelContext instances.


Restricted YANG parser internals
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A number of internal classes now require an proper service injection of their
dependencies. This is step is taken so that we can clearly separate API
contract from implementation details.

The primary interface to YANG parser is ``YangParserFactory``, which is
available as an OSGi service, as well as being exposed to Guice and ServiceLoader
injection mechanisms.

Single-classloader environments (such as JUnit-based unit tests) are not directly
impacted by this change, as instantiation paths which are not provided with an
instance of YangParserFactory end up falling back to ServiceLoader-based lookup.

This fallback mechanism does not extend to OSGi and other multi-classloader
environments and therefore users need to acquire a YangParserFactory service
from the OSGi service registry and pass it to other YANG tools functional blocks
as appropriate.

These access restrictions will be extended to all environments in a future
major version with the use of JPMS.


SchemaNode methods use collections with covariance
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A number of methods which use to return invariant Sets, such as this:

 .. code-block:: java

   interface SchemaContext {
     Set<Module> getModules();
   }

now use Collection with covariance, such as:

 .. code-block:: java

   interface SchemaContext {
     Collection<? extends Module> getModules();
   }

For most cases this is not a problem, as the returned collection is only
ever iterated through, but code that stores the result will need to either
update the declaration, or use ``var`` type declaration available since
Java 10 as part of `JEP-286 <https://openjdk.java.net/jeps/286>`__:

 .. code-block:: java

   final var modules = context.getModules();
   final int size = modules.size();


MD-SAL Impacts
--------------

Binding DTOs and empty lists
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Binding DTOs (data transfer objects), both created by a Builder and
created dynamically by MD-SAL at runtime no longer discern between
null and empty lists of any kind.

For a YANG model like this:

 .. code-block:: none

   container foo {
     list bar {
       leaf baz {
         type string;
       }
     }
   }

setting an empty list like this:

 .. code-block:: java

   Foo foo = new FooBuilder().setBar(Collections.emptyList()).build();
   assertNull(foo.getBar());
   assertEquals(List.of(), foo.nonnullBar());

is completely equivalent to omitting the setter altogether:

 .. code-block:: java

   Foo foo = new FooBuilder().build();
   assertNull(foo.getBar());
   assertEquals(List.of(), foo.nonnullBar());

The check for size is generally performed at the time ``build()`` is
called, so if the collection is mutable and filled between the time
the ``setBar()`` and ``build()`` is called, list items will be reflected
in the built object. There is an exception to this lifecycle, explained
in the next section. For further details see the
`MD-SAL issue <https://jira.opendaylight.org/browse/MDSAL-449>`__.


YANG lists with key and system ordering result in Map
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Type mapping of simple keyed lists has changed to better reflect
their nature. Previously a YANG declaration

 .. code-block:: none

   container foo {
     list bar {
       key baz;
       leaf baz {
         type string;
       }
     }
   }

would result in

 .. code-block:: java

   interface Foo {
     // regular getter
     @Nullable List<Bar> getBar();

     // null-to-empty transformation
     @NonNull List<Bar> nonnullBar();
   }

In MD-SAL 6.0.0, that YANG snippet will result in

 .. code-block:: java

   interface Foo {
     // regular getter
     @Nullable Map<BarKey, Bar> getBar();

     // null-to-empty transformation
     @NonNull Map<BarKey, Bar> nonnullBar();
   }

This results in major usability improvements around iteration on such
fields.

 .. code-block:: java

   if (foo.getBar() != null) {
     for (Bar bar : foo.getBar()) {
       // ...
     }
   }

becomes easier to read and slightly more efficient

 .. code-block:: java

   for (Bar bar : foo.nonnullBar().values()) {
     // ...
   }

If that iteration is searching for an object with specified key, as is
quite common, the construct can be as simple as

 .. code-block:: java

   // already known
   BarKey key;
   // efficient lookup in a Map, result is nullable as usual
   Bar bar = foo.nonnullBar().get(key);


For compatibility purposes, the associated Builder class will look
something like this:

 .. code-block:: java

   class FooBuilder implements Builder<Foo> {
     // Regular setter
     FooBuilder setBar(Map<BarKey, Bar> value);

     // Legacy backwards compatibility setter
     @Deprecated(forRemoval = true)
     FooBuilder setBar(List<Bar> value) {
       return setBar(value == null ? null : Maps.uniqueIndex(value, Bar::key));
     }
   }

This provides a smooth upgrade path for most users, while at the same
time flagging all code relying on legacy setter in a very clear way. Also
note that due to the eager nature of translation, the emptiness of the List
passed to the legacy setter is evaluated during the setter's invocation,
rather than during the invocation of ``build()``.

Lists which do not have a key, or have an ``ordered-by user`` statement
are not subject to this change and continue to behave just as they did.

Further details about this change can be found in the corresponding
`MD-SAL issue <https://jira.opendaylight.org/browse/MDSAL-434>`__.


Removed packaging of draft models
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Three sets of models from long-expired drafts have been removed. Each of
these has at most one downstream user project in current Simultaneous Release
and hence it is more appropriate to maintain these models in those projects.
The models removed are:

* iana-afi-safi.yang from `draft-ietf-netmod-iana-afn-safi-00 <https://jira.opendaylight.org/browse/MDSAL-536>`__
* ietf-lisp-address-types.yang from `draft-ietf-lisp-yang-06 <https://jira.opendaylight.org/browse/MDSAL-535>`__
* the models from `draft-ietf-netmod-acl-model-07 <https://jira.opendaylight.org/browse/MDSAL-537>`__, as this
  draft has been published as RFC8519 and we have been shipping that update for some time now.


Binding/DOM codec implementation is now isolated
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The API contract of ``mdsal-binding-dom-codec`` has been split into a separate
artifact and therefore codec internals are no longer available for direct use
in OSGi. Users are advised to use proper injection of
``org.opendaylight.mdsal.binding.dom.codec.api`` interfaces available in the
OSGi service registry.

This is a first step towards isolating API contract from implementation
details. This isolation will be further extended to all enviornments through
the use of JPMS in a future major release.


WriteOperations.put(..., boolean) and WriteOperations.merge(..., boolean) removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
These two methods have multiplexed two distinct operations. When the boolean is
specified as ``true``, they would end up issuing another merge operation. As such
they have been deprecated in Magnesium and are now being removed.

 .. code-block:: java

   WriteTransaction wtx;
   wtx.merge(store, path, data, true);
   wtx.put(store, path, data, true);

becomes

 .. code-block:: java

   WriteTransaction wtx;
   wtx.mergeParentStructureMerge(store, path, data);
   wtx.mergeParentStructurePut(store, path, data);

The longer name reflects the fact that this operation is much more heavy-weight,
as well as unnecessary in most situations.


Controller Impacts
------------------

Artifacts are advertised through controller-artifacts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
All public artifacts produced by the controller project are declared in
a single artifacts pom:

 .. code-block:: xml

    <dependency>
      <groupId>org.opendaylight.controller</groupId>
      <artifactId>controller-artifacts</artifactId>
      <version>2.0.0</version>
    </dependency>

This pom combines the roles previously filled by ``mdsal-artifacts``,
``config-artifacts`` and a few others.


Blueprint's routed-rpc stanza has been removed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The BluePrint extension for creating a blanket routed RPC registrations has been
removed. This extension did not work correctly for a couple of years now and the
interface exposed by this stanza was deprecated for just as long.

This release removes support for this stanza. Users are advised to migrate to
explicit point-registrations available in MD-SAL APIs.


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


