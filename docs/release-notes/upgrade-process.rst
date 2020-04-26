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
Unlike previous in previous releases, the Controller project has joined
the MRI family at the start of Aluminium Simultaneous Release cycle.
Going forward it is an error to depend on any ``org.opendaylight.controller``
with a ``-SNAPSHOT`` version.


Version Bump
^^^^^^^^^^^^

Before performing platform upgrade, do the following to bump the odlparent
versions (for example, `bump-odl-version <https://github.com/skitt/odl-tools/blob/master/bump-odl-version>`_):

1. Update the odlparent version from 6.0.4 to 7.0.1. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for other 7.0.1. This includes custom feature.xml templates
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

 .. code-block:: none

   <feature name="odl-infrautils-caches">
       <feature version="[7,8)">odl-guava</feature>
   </feature>

YANG Tools Impacts
------------------

YANG parser validates XPath expressions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In an ongoing effort to improve our feature-completeness, YANG parser now
requires an XPath parsing library and will perform validation of syntactic
well-formedness of every XPath expression encountered in YANG models.

Accepted syntax is `RFC7950 <>`_ with support for extensions specified in
`Errata 5617 <https://www.rfc-editor.org/errata/eid5617>`_. This should
cover even the non-RFC7950-compliant models coming from various standards
bodies, but it is certainly possible that a previously-accepted model will
be rejected by the parser. If that happens, the chances are that the model
itself is invalid. Please consult RFC7950 and the model author before
filing an issue with
`YANG Tools JIRA <https://jira.opendaylight.org/projects/YANGTOOLS>`_.

This change also has implications on developers, as the YANG Parser is now
properly modularized and requires supplying the requisite XPath support.
In dynamic environments, such as OSGi, this means that you will need to have
a ``YangParserFactory`` reference properlu injected and pass it to the
components your code uses.


SchemaContext is being retired
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

After many years of development and incremental updates, this release marks
the start of the transition away from ``SchemaContext``. The object model
exposed by it is problematic in more ways than one. The replacement construct
is ``EffectiveModelContext``, which operates on ``EffectiveStatement``
and its related interfaces. ``EffectiveModelContext`` retains its
``SchemaContext`` trait for the duration of the transition and can be directly
used in that capacity. Users are encouraged to updates their interfaces to
accept and give out EffectiveModelContext instances.


SchemaNode methods use collections with covariance
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A number of methods which use to return invariant Sets, such as this:

 .. code-block:: none

   interface SchemaContext {
     Set<Module> getModules();
   }

now use Collection with covariance, such as:

 .. code-block:: none

   interface SchemaContext {
     Collection<? extends Module> getModules();
   }



// FIXME: finish this section next


Renamed Classes
^^^^^^^^^^^^^^^

To keep naming consistent, the following classes were renamed:

* AnyXmlSchemaNode renamed to AnyxmlSchemaNode
* AnyDataSchemaNode renamed to AnydataSchemaNode
* AnyDataNode renamed to AnydataNode
* AnyXmlNode renamed to DOMSourceAnyxmlNode

MD-SAL Impacts
--------------

Runtime Bindings DTOs
^^^^^^^^^^^^^^^^^^^^^

Runtime binding DTOs (data transfer objects) no longer return
mutable lists. That is Runtime-based DTOs that are provided to
DataTreeChangeListener, RPC invocations and resulting from datastore
reads, no longer return collections that are mutable. For details,
see the `MD-SAL issue <https://jira.opendaylight.org/browse/MDSAL-440>`_,
but refer to the following to get a brief overview:

 .. code-block:: none

  interface SomeObject extends DataObject {
    List<Other> getOther();
  }

In addition, the *getOther()* method implementation no longer returns
an ArrayList. This is a known bug and a divergence from the binding
specification design assumptions. It is known to have been misused
by the application code. Any attempt to modify this collection results
in an UnsupportedOperationException error being thrown. In addition,
any call sites triggering it must be updated to create a mutable copy
of the list.

Type Wrapper
^^^^^^^^^^^^

Type wrapper classes establish an equality domain. As noted in the
corresponding the MD-SAL issue, rules for comparing type-wrapper
classes have been relaxed. This can lead to objects previously
deemed as non-equal to be evaluated as equal.

Previously, a construct that appeared as:

 .. code-block:: none

  typedef foo {
    type int;
  }

  typedef bar {
    type foo;
  }

Used like this:

 .. code-block:: none

  Foo foo = new Foo(1);
  Bar bar = new Bar(1);
  assertEquals(foo, bar);

Would fail the assertion. However, now it succeeds.

Mapping Changes
^^^^^^^^^^^^^^^

As noted in YANG Tools above, the value mapping was changed in the
DOM domain. Since binding/DOM adaption must translate values
accurately, and not reflecting that change in Binding APIs would
lead to a prohibitive runtime cost. Therefore, binding codegen
contract changes in the way these types are mapped, which resolves
a separate issue as a side effect.

This impacts the getter methods the most, as they lose their ability
to automatically unbox. All users are unfortunately forced to adapt
to these, by calling provided a .toJava() method on the returned object.
For example, given the model:

 .. code-block:: none

  container foo {
    leaf bar {
     type uint32;
     }
   }

A *long* corresponding to the value is acquired as:

 .. code-block:: none

   long bar = foo.getBar().toJava();

Most users of builders and encapsulated value types are not as affected,
since the codegen generates compatibility bridge methods, which adapt old
value types to new uses. Therefore, the transition is seamless. These methods
are marked as @Deprecated(forRemoval = true), so their use is clearly flagged
during build as the following:

 .. code-block:: none

  [WARNING] netconf/netconf/netconf-topology/src/test/java/org/opendaylight/netconf/topology/impl/NetconfTopologyImplTest.java:[164,26] PortNumber(java.lang.Integer) in org.opendaylight.yang.gen.v1.urn.ietf.params.xml.ns.yang.ietf.inet.types.rev130715.PortNumber has been deprecated and marked for removal
  [WARNING] netconf/netconf/netconf-topology/src/test/java/org/opendaylight/netconf/topology/impl/NetconfTopologyImplTest.java:[166,17] setDefaultRequestTimeoutMillis(java.lang.Long) in org.opendaylight.yang.gen.v1.urn.opendaylight.netconf.node.topology.rev150114.NetconfNodeBuilder has been deprecated and marked for removal
  [WARNING] netconf/netconf/netconf-topology/src/test/java/org/opendaylight/netconf/topology/impl/NetconfTopologyImplTest.java:[167,17] setBetweenAttemptsTimeoutMillis(java.lang.Integer) in org.opendaylight.yang.gen.v1.urn.opendaylight.netconf.node.topology.rev150114.NetconfNodeBuilder has been deprecated and marked for removal
  [WARNING] netconf/netconf/netconf-topology/src/test/java/org/opendaylight/netconf/topology/impl/NetconfTopologyImplTest.java:[168,17] setKeepaliveDelay(java.lang.Long) in org.opendaylight.yang.gen.v1.urn.opendaylight.netconf.node.topology.rev150114.NetconfNodeBuilder has been deprecated and marked for removal

These compatibility wrappers are not generated in case of union types, as that would run counter to MDSAL-330, where such compatibility wrappers would cause conflicts.

Downstream users are strongly encouraged to migrate, as these methods and constructors
will be removed in Aluminum. In order to facilitate that migration, a set of
fromJava() methods is provided from the
org.opendaylight.yangtools.yang.common.UintConversions. These take widened
Java primitive (short, int, long) or a BigInteger to produce the corresponding
Uint8/Uint16/Uint32/Uint64:

 .. code-block:: none

  imports static org.opendaylight.yangtools.yang.common.UintConversions.fromJava;

   Uint64 zero = fromJava(BigInteger.ZERO);
   Uint8 one = fromJava((short) 1);
   Uint16 two = fromJava(2);
   Uint32 three = fromJava(3L);

  .. Note:: A proper migration should adopt these types as the replacement
     of the short/integer/long/biginteger in a custom structure. However,
     these types of conversion have a cost, especially in the case of
     Uint64/BigInteger conversion. Unless required, projects should
     eliminate the use of BigInteger in favor of Uint64, since Uint64
     is superior in terms of performance and memory footprint.

ODL Feature Removed
^^^^^^^^^^^^^^^^^^^

The odl-mdsal-model-draft-bierman-netconf-restconf-02 feature was removed.
This feature, along with org.opendaylight.mdsal.model/ietf-restconf artifact
was removed from MDSAL, but was migrated to its sole user in these patches.
