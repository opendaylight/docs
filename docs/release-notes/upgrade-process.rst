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

In MD-SAL 6.0.x, that YANG snippet will result in

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

* iana-afn-safi.yang from `draft-ietf-netmod-iana-afn-safi-00 <https://jira.opendaylight.org/browse/MDSAL-536>`__
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
      <version>2.0.1</version>
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


