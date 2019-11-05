==========================
Magnesium Platform Upgrade
==========================

This document describes the steps to help users upgrade to the
Magnesium planned platform. Refer to `Managed Release Integrated (MRI)
project <https://git.opendaylight.org/gerrit/#/q/topic:magnesium-mri>`_
for more information.

.. contents:: Contents

Preparation
-----------

JDK 11 Version
^^^^^^^^^^^^^^

Magnesium requires Java 11, both during compile-time and run-time.
Make sure to install JDK 11 corresponding to at least openjdk-11.0.4,
and that the JAVA_HOME environment variable is points to the JDK directory.

Version Bump
^^^^^^^^^^^^

Before performing platform upgrade, do the following to bump the odlparent
versions (for example, `bump-odl-version <https://github.com/skitt/odl-tools/blob/master/bump-odl-version>`_):

1. Update the odlparent version from 5.0.2 to 6.0.0. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for other 6.0.0. This includes custom feature.xml templates
   (src/main/feature/feature.xml), the version range there should
   be "[6,7)" instead of "[5,6)", "[5.0.2,6)" or any other variation.

 .. code-block:: none

  bump-odl-version odlparent 5.0.2 6.0.0

2. Update the direct yangtools version references from 3.0.5 to 4.0.0,
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 4.0.0. This includes custom feature.xml templates
   (src/main/feature/feature.xml), the version range there should
   be "[4,5)" instead of "[3,4)".

3. Update the MDSAL version from 4.0.6 to 5.0.3. There should not be
   any reference to **org.opendaylight.mdsal**, except for 5.0.3.

 .. code-block:: none

  rpl -R 0.14.0-SNAPSHOT 3.0.0

or
 .. code-block:: none

  rpl -R 2.6.0-SNAPSHOT 3.0.0

Install Dependent Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^

Before performing platform upgrade, users must also install
any dependent project. To locally install a dependent project,
pull and install the respective `magnesium-mri <https://git.opendaylight.org/gerrit/#/q/topic:magnesium-mri>`_ changes for any dependent project. At the minimum, pull and install `controller
<https://git.opendaylight.org/gerrit/83803>`_, `AAA <https://git.opendaylight.org/gerrit/83858>`_
and `NETCONF <https://git.opendaylight.org/gerrit/#/c/81273/>`_.

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
<https://github.com/opendaylight/odlparent/blob/master/NEWS.rst#version-600>`_
for more information.

Features
^^^^^^^^

Any version range referencing version 5 of ODL Parent must be changed
to “[6,7)” for ODL Parent 6.

 .. code-block:: none

   <feature name="odl-infrautils-caches">
       <feature version="[6,7)">odl-guava</feature>
   </feature>

JDK 11
^^^^^^

Any artifacts referencing odlparent-6 will only build with JDK11 or later.
The build was validated with openjdk-11.0.4, which is currently the lowest
supported version. This allows OpenDaylight components to use APIs introduced
in Java versions 9-11, such as VarHandles, StackWalker, Cleaner, etc. Note
that installing Java 11 removes several components (refer to, `JEP 320
<https://openjdk.java.net/jeps/320>`_. A summary of the API
differences can be found in the java-almanac project (refer to, `Java API
<http://download.eclipselab.org/jdkdiff/V8/V11/index.html>`_.

Furthermore, Java 9 switched the default garbage collector to `G1GC
<https://openjdk.java.net/jeps/248>`_ with `improvements
<https://openjdk.java.net/jeps/307>`_ in Java 10. Java 11 delivered
experimental `ZGC <https://openjdk.java.net/jeps/333>`_ to add to the
options available. Other items can be found in the individual JDK pages;
that is, `Java 9 <https://openjdk.java.net/projects/jdk9/>`_, `Java 10
<https://openjdk.java.net/projects/jdk/10/>`_, `Java 11
<https://openjdk.java.net/projects/jdk/11/>`_.

JSR305 (javax.annotation.Nullable and Friends)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

JSR305 annotations are no longer declared by odlparent. Refer to a `list
of removal patches <https://git.opendaylight.org/gerrit/q/topic:jsr305>`_
to check if there is an outstanding patch for a project. If not, either
follow the template that is designed for a patch or explicitly provide a
version declaration to each pom.xml that uses these annotations.

 .. code-block:: none

   <dependency>
     <groupId>com.google.code.findbugs</groupId>
     <artifactId>jsr305</artifactId>
     <version>3.0.2</version>
     <optional>true</optional>
   </dependency>

Checkstyle
^^^^^^^^^^

Checkstyle is now enforced by default across all artifacts. For artifacts
that do not pass checkstyle, either fix them or disable enforcement by
defining the following in the pom.xml:

 .. code-block:: none

   <properties>
    <odlparent.checkstyle.enforce>false</odlparent.checkstyle.enforce>
   </properties>

Optionally, remove old configuration bits that enable enforcement by
deleting the following block:

 .. code-block:: none

  <plugin>
   <groupId>org.apache.maven.plugins</groupId>
   <artifactId>maven-checkstyle-plugin</artifactId>
   <configuration>
     <propertyExpansion>checkstyle.violationSeverity=error</propertyExpansion>
   </configuration>
  </plugin>

SpotBugs
^^^^^^^^

SpotBugs is now enforced by default across all artifacts. For artifacts that
do not pass spotbugs, either fix them or disable enforcement by defining the
following in the pom.xml:

 .. code-block:: none

  <properties>
   <odlparent.spotbugs.enforce>false</odlparent.spotbugs.enforce>
  </properties>

Optionally, also remove any old configuration bits that enable enforcement
by removing the following block:

 .. code-block:: none

  <plugin>
   <groupId>com.github.spotbugs</groupId>
   <artifactId>spotbugs-maven-plugin</artifactId>
   <configuration>
     <failOnError>true</failOnError>
   </configuration>
  </plugin>

In rare cases, there is a `SpotBugs issue <https://github.com/spotbugs/spotbugs/issues/811>`_
where it reports false positives with Java 11 classes. There are two
workaround options; either increase the method visibility to default
or add the following to the affected method:

 .. code-block:: none

  @SuppressFBWarnings(value = "UPM_UNCALLED_PRIVATE_METHOD",
     justification = "https://github.com/spotbugs/spotbugs/issues/811")

Maven Modernizer
^^^^^^^^^^^^^^^^

The odlparent 6 defaults to the running modernizer-maven-plugin setup for
Java 8 compliance, without enforcing zero violations. These warnings usually
point towards an improvement to code quality; either using Java 8 replacements
for Guava constructs or by identifying inefficient Java constructs.
A typical report looks like this:

 .. code-block:: none

  [INFO] --- modernizer-maven-plugin:1.9.0:modernizer (modernizer) @ library ---
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/main/java/org/opendaylight/ovsdb/lib/schema/typed/TyperUtils$1.java:398: Prefer java.util.Objects.equals(Object, Object)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/main/java/org/opendaylight/ovsdb/lib/schema/typed/TyperUtils.java:439: Prefer java.util.Objects.requireNonNull(Object)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/main/java/org/opendaylight/ovsdb/lib/schema/typed/TyperUtils.java:440: Prefer java.util.Objects.requireNonNull(Object)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/main/java/org/opendaylight/ovsdb/lib/schema/typed/TyperUtils.java:441: Prefer java.util.Objects.requireNonNull(Object)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/main/java/org/opendaylight/ovsdb/lib/schema/typed/TyperUtils.java:468: Prefer java.util.Objects.requireNonNull(Object)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/main/java/org/opendaylight/ovsdb/lib/schema/typed/TyperUtils.java:469: Prefer java.util.Objects.requireNonNull(Object)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/main/java/org/opendaylight/ovsdb/lib/schema/typed/TyperUtils.java:470: Prefer java.util.Objects.requireNonNull(Object)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/main/java/org/opendaylight/ovsdb/lib/schema/typed/TyperUtils.java:497: Prefer java.util.Objects.requireNonNull(Object)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/main/java/org/opendaylight/ovsdb/lib/schema/typed/TyperUtils.java:498: Prefer java.util.Objects.requireNonNull(Object)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/main/java/org/opendaylight/ovsdb/lib/schema/typed/TyperUtils.java:499: Prefer java.util.Objects.requireNonNull(Object)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/main/java/org/opendaylight/ovsdb/lib/schema/typed/TyperUtils.java:529: Prefer java.util.Objects.requireNonNull(Object)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/main/java/org/opendaylight/ovsdb/lib/schema/typed/TyperUtils.java:530: Prefer java.util.Objects.requireNonNull(Object)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/main/java/org/opendaylight/ovsdb/lib/schema/typed/TyperUtils.java:531: Prefer java.util.Objects.requireNonNull(Object)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/test/java/org/opendaylight/ovsdb/lib/jsonrpc/TestClient.java:63: Prefer java.lang.String.getBytes(java.nio.charset.Charset)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/test/java/org/opendaylight/ovsdb/lib/jsonrpc/TestClient.java:68: Prefer java.lang.String.getBytes(java.nio.charset.Charset)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/test/java/org/opendaylight/ovsdb/lib/jsonrpc/TestClient.java:70: Prefer java.lang.String.getBytes(java.nio.charset.Charset)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/test/java/org/opendaylight/ovsdb/lib/jsonrpc/TestClient.java:80: Prefer java.lang.String.getBytes(java.nio.charset.Charset)
  [ERROR] /home/nite/odl/ovsdb/library/impl/src/test/java/org/opendaylight/ovsdb/lib/jsonrpc/TestClient.java:88: Prefer java.lang.String.getBytes(java.nio.charset.Charset)

There is no plan to enable enforcement by default in the future. If a downstream
wants to enable it for a particular artifact, do so by including it in an
artifact's pom.xml:

 .. code-block:: none

  <properties>
   <odlparent.modernizer.enforce>true</odlparent.modernizer.enforce>
  </properties>

Blueprint/Java 11 Issues
^^^^^^^^^^^^^^^^^^^^^^^^

As detailed in the upstream `bug report <https://issues.apache.org/jira/browse/ARIES-1923>`_,
the aries-proxy-impl used for proxying services between the blueprint container and OSGi service
registry is not not able to cope with JEP-181 nestmates. As a workaround for the issue,
artifacts can specify in the pom.xml to force the compiler to target Java 10 (that is,
omit JEP-181).

 .. code-block:: none

  <properties>
    <maven.compiler.release>10</maven.compiler.release>
  </properties>

Guice/Java 11 Issues
^^^^^^^^^^^^^^^^^^^^

Current version of Guice propagated from the odlparent does not *grok*
Java 11 classes This results in the following splat:

 .. code-block:: none

   Caused by: java.lang.IllegalArgumentException
     at com.google.inject.internal.asm.$ClassReader.<init>(Unknown Source)
     at com.google.inject.internal.asm.$ClassReader.<init>(Unknown Source)
     at com.google.inject.internal.asm.$ClassReader.<init>(Unknown Source)
     at com.google.inject.internal.util.LineNumbers.<init>(LineNumbers.java:66)
     at com.google.inject.internal.util.StackTraceElements$1.load(StackTraceElements.java:46)
     at com.google.inject.internal.util.StackTraceElements$1.load(StackTraceElements.java:43)
     at com.google.common.cache.LocalCache$LoadingValueReference.loadFuture(LocalCache.java:3529)
     at com.google.common.cache.LocalCache$Segment.loadSync(LocalCache.java:2278)
     at com.google.common.cache.LocalCache$Segment.lockedGetOrLoad(LocalCache.java:2155)
     at com.google.common.cache.LocalCache$Segment.get(LocalCache.java:2045)

Typically, this occurs in UTs that are based on Guice injection. The workaround is to
override the Guice version in the affected artifact by doing the following. This is not
needed with the `odlparent-6.0.1. <https://git.opendaylight.org/gerrit/c/odlparent/+/84837>`_:

 .. code-block:: none

  <dependencyManagement>
    <dependencies>
     <dependency>
       <groupId>com.google.inject</groupId>
       <artifactId>guice</artifactId>
       <version>4.2.2</version>
     </dependency>
   </dependencies>
  </dependencyManagement>

YANG Tools Impacts
------------------

YangInstanceIdentifier
^^^^^^^^^^^^^^^^^^^^^^

The YangInstanceIdentifier.NodeIdentifierWithPredicates was a final class,
holding a map of QName/value pairs. This class is most often used with a
single QName/value pair; thus, the yangtools-6.0.0 provides two separate
specializations:

* one for a single-pair
* one for all other cases

This specialization saves one level of object indirection, which reduces
the heap usage for single-pair case by 33-37.5%. The impact is that any
code relying on NodeIdentifierWithPredicates.getClass() will break.
Users are advised to switch to *instanceof checks* instead.

LeafNode Instances Treated as Transient
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Immutable implementations of NormalizedNodeContainer will NOT retain any
stored LeafNode instance as per of a Jira issue. Since LeafNodes are pairs
(NodeIdentifier, value), they can be instantiated on demand. This saves
significant amount of heap for all NormalizedNode trees, specially those
that are used in a DataTree (datastore, etc.). The downside of this is
that leaf identity can no longer be relied on, so any code relying on
NormalizedNodeContainer.getChild() or NormalizedNodeContainer.getValue(),
so returning stable LeafNode references will break.

uint8,uint16,uint32,uint64 LeafNode Change
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

As detailed in JIRA, this change modifies the types used as LeafNode
changes in the case of *uint* types.

.. list-table::
   :widths: 10 20 40
   :header-rows: 1

   * - **YANG Type**
     - **Old Java Type**
     - **New Java Type**
   * - uint8
     - java.lang.Short
     - org.opendaylight.yangtools.yang.common.Uint8
   * - uint16
     - java.lang.Integer
     - org.opendaylight.yangtools.yang.common.Uint16
   * - uint32
     - java.lang.Long
     - org.opendaylight.yangtools.yang.common.Uint32
   * - uint64
     - java.math.BigInteger
     - org.opendaylight.yangtools.yang.common.Uint64

Since NormalizedNode APIs are inherently not type-safe, they cannot
be validated at compile-time, since downstreams are expected to update
code accordingly. Leaf values and MD-SAL binding are validated by YANG
Tools codecs, so access to malformed data can be discovered through
those means. However, DataTree and components built on top of it will
not perform value validation; thus, storage is not good enough of a
test for compatibility. The best check is reading the entire datastore
through RESTCONF, so that it forces type checks to occur and will fail
when there is a mismatch.
