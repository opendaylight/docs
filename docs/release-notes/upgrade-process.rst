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
2022.09 Chlorine requires Java 17, both during compile-time and run-time.
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

3. Update the MD-SAL version from 9.0.5 to 10.0.2. There should not be
   any reference to **org.opendaylight.mdsal**, except for 10.0.2.

 .. code-block:: shell

  bump-odl-version mdsal 9.0.5 10.0.2

4. Update the Controller version from 5.0.6 to 6.0.2. There should not be
   any reference to **org.opendaylight.controller**, except for 6.0.2.

 .. code-block:: shell

  bump-odl-version controller 5.0.6 6.0.2

5. Update the InfraUtils version from 3.0.2 to 4.0.1. There should not be
   any reference to **org.opendaylight.infrautils**, except for 4.0.1.

 .. code-block:: shell

  bump-odl-version infrautils 3.0.2 4.0.1

6. Update the AAA version from 0.15.6 to 0.16.3. There should not be
   any reference to **org.opendaylight.aaa**, except for 0.16.3.

 .. code-block:: shell

  bump-odl-version aaa 0.15.6 0.16.3

7. Update the NETCONF version from 3.0.6 to 4.0.2. There should not be
   any reference to **org.opendaylight.netconf**, except for 4.0.2.

 .. code-block:: shell

  bump-odl-version netconf 3.0.6 4.0.2

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
it impossible to use Mockito to mock them. Users may need to use real implementations instead of mocks.

Decimal64 are required to match ``fraction-digits``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
When a ``leaf`` or ``leaf-list`` item has ``type decimal64``, JSON and XML codecs will reject values which cannot
be scaled to the matching ``fraction-digits``.


MD-SAL Impacts
--------------

Improvements to generated ``toString()`` methods
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This release changes how generated ``toString()`` methods work in TypeObjects and with respect to ``byte[]`` properties.
Property names now do not include a leading underscore. Byte array properties are now hex-encoded.

Mapping of ``identityref`` types changed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The Binding mapping of ``type identityref`` properties has changed. Given the following YANG snippet:

  .. code-block:: yang

    identity foo;

    leaf bar {
      type identityref {
        base foo;
      }
    }

We see an interface ``Foo`` generated for the identity. This remains unchanged, but when setting the ``bar`` leaf,
rather than using ``Foo.class``, users now need to specify ``Foo.VALUE``. This also affects use of ``type identityref``
inside a ``type union``: each such use now gets its own property.

Builders no longer generated for union types
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Due to historic reasons, code generated for ``type union`` statements included a Builder, which was generated in
the ``src/main/java`` directory hierarchy. This Builder was hosting only a single ``getDefaultInstance()`` method,
which needed to be hand-coded.

All of this mechanics has been removed and users are advised to remove these hand-crafted classes.


Controller Impacts
------------------
No impacts in this release.
