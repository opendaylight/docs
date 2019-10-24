=======================
Sodium Platform Upgrade
=======================

This document describes the steps to help users upgrade to the
Sodium planned platform. Refer to `Managed Release Integrated (MRI)
project <https://git.opendaylight.org/gerrit/q/topic:sodium-mri>`_
for more information.

.. contents:: Contents

Preparation
-----------

Version Bump
^^^^^^^^^^^^

Before performing platform upgrade, do the following to *bump* the
odlparen versions (for example, `bump-odl-version <https://github.com/skitt/odl-tools/blob/master/bump-odl-version>`_):

1. Update the odlparent version from 4.0.9 to 5.0.0. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for other 5.0.0, including the custom feature.xml template
   (src/main/feature/feature.xml). The version range there should
   be "[5,6)" instead of "[4,5]", "[4.0.5,5]" or any other variation.

 .. code-block:: none

  bump-odl-version: bump-odl-version odlparent 4.0.9 5.0.0

2. Update the direct yangtools version references from 2.1.8 to 3.0.0.
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 3.0.0, including the custom feature.xml templates
   (src/main/feature/feature.xml). The version range there should
   be "[3,4)" instead of "[2.1,3)."

3. Update the MDSAL version from 3.0.6 to 4.0.0. There should not
   be any reference to **org.opendaylight.mdsal**, except for 4.0.0.

 .. code-block:: none

  rpl -R 3.0.6 4.0.0

Dependent Projects
^^^^^^^^^^^^^^^^^^

Before performing platform upgrade, users must also install
any dependent project. To locally install a dependent project,
pull and install the respective *sodium-mri* changes for any
dependent project. At the minimum, pull and install `controller <https://git.opendaylight.org/gerrit/c/controller/+/81130>`_,
`AAA <https://git.opendaylight.org/gerrit/c/aaa/+/81268>`_ and `NETCONF <https://git.opendaylight.org/gerrit/c/netconf/+/81273>`_.

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

The following sub-section describes how to upgrade to the ODL
Parent version 5. Refer to the `ODL Parent Release Notes <https://github.com/opendaylight/odlparent/blob/v5.0.0/NEWS.rst>`_
for more information.

Features
^^^^^^^^

The following features are required to be replaced:

* Change any version range referencing version 4 of ODL Parent to “[5,6]”
  for ODL Parent 5, for example:

 .. code-block:: none

  <feature name="odl-infrautils-caches">
       <feature version="[5,6)">odl-guava</feature>
   </feature>

JSR305 (javax.annotation.Nullable and friends)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

JSR305 annotations are no longer pulled into a project by default.
Users have the option of migrating annotations to JDT (@Nullable et al),
Checker Framework (@GuardedBy), SpotBugs (@CheckReturnValue) or by simply
pulling in the JSR305 dependency into a project by adding the following
to each pom.xml the use these annotations.:

 .. code-block:: none

  <dependency>
     <groupId>com.google.code.findbugs</groupId>
     <artifactId>jsr305</artifactId>
     <optional>true</optional>
   </dependency>

FindBugs
^^^^^^^^

The findbugs-maven-plugin is no longer supported by odlparent, so upgrade to
the spotbugs by changing the following:

 .. code-block:: none

   <groupId>org.codehaus.mojo</groupId>
   <artifactId>findbugs-maven-plugin</artifactId>

To:

 .. code-block:: none

  <groupId>com.github.spotbugs</groupId>
  <artifactId>spotbugs-maven-plugin</artifactId>

JUnit 4.11 and Hamcrest 2.1
^^^^^^^^^^^^^^^^^^^^^^^^^^^

Before declaring dependencies on Hamcrest, make sure to update the order of
Junit and Hamcrest references to match the required order http://hamcrest.org/JavaHamcrest/distributables#maven-upgrade-example.
Alternatively,
remove the declarations completely, since odlparent provides them by default
(at scope=test).

Powermockito
^^^^^^^^^^^^

An unfortunate interaction exists between powermock-2.0.0 and mockito-2.25.0
where the latter requires a newer byte-buddy library. This leads to an odd
exception when powermock tests are run. For example:

 .. code-block:: none

   13:15:50 Underlying exception : java.lang.IllegalArgumentException: Could not create type
   13:15:50     at org.opendaylight.genius.itm.tests.ItmTestModule.configureBindings(ItmTestModule.java:97)
   13:15:50     at org.opendaylight.infrautils.inject.guice.testutils.AbstractGuiceJsr250Module.checkedConfigure(AbstractGuiceJsr250Module.java:23)
   13:15:50     at org.opendaylight.infrautils.inject.guice.testutils.AbstractCheckedModule.configure(AbstractCheckedModule.java:35)
   13:15:50     ... 27 more
   13:15:50 Caused by: java.lang.IllegalArgumentException: Could not create type
   13:15:50     at net.bytebuddy.TypeCache.findOrInsert(TypeCache.java:154)
   13:15:50     at net.bytebuddy.TypeCache$WithInlineExpunction.findOrInsert(TypeCache.java:365)
   13:15:50     at net.bytebuddy.TypeCache.findOrInsert(TypeCache.java:174)
   13:15:50     at net.bytebuddy.TypeCache$WithInlineExpunction.findOrInsert(TypeCache.java:376)
   13:15:50     at org.mockito.internal.creation.bytebuddy.TypeCachingBytecodeGenerator.mockClass(TypeCachingBytecodeGenerator.java:32)
   13:15:50     at org.mockito.internal.creation.bytebuddy.SubclassByteBuddyMockMaker.createMockType(SubclassByteBuddyMockMaker.java:71)
   13:15:50     at org.mockito.internal.creation.bytebuddy.SubclassByteBuddyMockMaker.createMock(SubclassByteBuddyMockMaker.java:42)
   13:15:50     at org.mockito.internal.creation.bytebuddy.ByteBuddyMockMaker.createMock(ByteBuddyMockMaker.java:25)
   13:15:50     at org.powermock.api.mockito.mockmaker.PowerMockMaker.createMock(PowerMockMaker.java:41)
   13:15:50     at org.mockito.internal.util.MockUtil.createMock(MockUtil.java:35)
   13:15:50     at org.mockito.internal.MockitoCore.mock(MockitoCore.java:62)
   13:15:50     at org.mockito.Mockito.mock(Mockito.java:1907)
   13:15:50     at org.mockito.Mockito.mock(Mockito.java:1816)
   13:15:50     ... 30 more
   13:15:50 Caused by: java.lang.NoSuchMethodError: net.bytebuddy.dynamic.loading.MultipleParentClassLoader$Builder.appendMostSpecific(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
   13:15:50     at org.mockito.internal.creation.bytebuddy.SubclassBytecodeGenerator.mockClass(SubclassBytecodeGenerator.java:83)
   13:15:50     at org.mockito.internal.creation.bytebuddy.TypeCachingBytecodeGenerator$1.call(TypeCachingBytecodeGenerator.java:37)
   13:15:50     at org.mockito.internal.creation.bytebuddy.TypeCachingBytecodeGenerator$1.call(TypeCachingBytecodeGenerator.java:34)
   13:15:50     at net.bytebuddy.TypeCache.findOrInsert(TypeCache.java:152)
   13:15:50     ... 42 more

The solution is to declare a dependency on mockito-core *before* the powermock dependency. For example:

 .. code-block:: none

  <dependency>
     <groupId>org.mockito</groupId>
     <artifactId>mockito-core</artifactId>
     <scope>test</scope>
   </dependency>
   <dependency>
     <groupId>org.powermock</groupId>
     <artifactId>powermock-api-mockito2</artifactId>
     <scope>test</scope>
   </dependency>
   <dependency>
     <groupId>org.powermock</groupId>
     <artifactId>powermock-module-junit4</artifactId>
     <scope>test</scope>
   </dependency>
   <dependency>
     <groupId>org.powermock</groupId>
     <artifactId>powermock-reflect</artifactId>
     <scope>test</scope>
   </dependency>
   <dependency>
     <groupId>org.powermock</groupId>
     <artifactId>powermock-core</artifactId>
     <scope>test</scope>
   </dependency>

Blueprint-maven-plugin
^^^^^^^^^^^^^^^^^^^^^^

The default configuration of blueprint-maven-plugin was tightened to only
consider classes within ${project.groupId}. For classes outside of an assigned
namespace, such as netconf has in org.opendaylight.restconf (instead of
org.opendaylight.netconf), users must override this configuration:

 .. code-block:: none

  <plugin>
       <groupId>org.apache.aries.blueprint</groupId>
       <artifactId>blueprint-maven-plugin</artifactId>
       <configuration>
         <scanPaths>
           <scanPath>org.opendaylight.restconf</scanPath>
         </scanPaths>
       </configuration>
     </plugin>

javadoc-maven-plugin
^^^^^^^^^^^^^^^^^^^^

The Default configuration of *javadoc-maven-plugin* was updated. Now, the javadoc
generation defaults to HTML5 when built with JDK9+. This can result in a javadoc
failures. for example:

 .. code-block:: none

   /w/workspace/autorelease-release-sodium-mvn35-openjdk11/openflowplugin/extension/openflowplugin-extension-api/src/main/java/org/opendaylight/openflowplugin/extension/api/GroupingLooseResolver.java:71: error: tag not supported in the generated HTML version: tt
    * @param data expected to match <T extends Augmentable<T>>

To fix this, there are the following two options:

* Fix the Javadoc. This is preferred, since it is simple to do.
* Add an override for an artifact by creating (and committing to git)
  an empty file named "odl-javadoc-html5-optout" in an artifact's
  root directory (that is, where its pom.xml is located).

YANG Tools Impacts
------------------

YANG Parser
^^^^^^^^^^^

To comply with `RFC7950 <https://tools.ietf.org/html/rfc7950#section-9.9.2>`_,
the default YANG parser configuration validates the following construct.
This is not a random XPath, and the prefixes must be validly imported.

 .. code-block:: none

    leaf foo {
        type leafref {
            path "/foo:bar";
        }
    }

Other Changes
^^^^^^^^^^^^^

Beside from the above issue, the following bugs, enhancements and features
were delivered to `Sodium Simultaneous Release <https://jira.opendaylight.org/issues/?filter=10801>`_.

MD-SAL Impacts
--------------

Empty-type Mapping
^^^^^^^^^^^^^^^^^^

Java mapping for "type empty" construct was changed to the following:

 .. code-block:: none

   leaf foo {
       type empty;
   }

Changed from:

 .. code-block:: none

   java.lang.Boolean isFoo();

to:

 .. code-block:: none

   org.opendaylight.yangtools.yang.common.Empty getFoo();

In addition, code interacting with these models must be be updated
to the following: `ProtocolUtile <https://git.opendaylight.org/gerrit/c/bgpcep/+/81384/10/bgp/topology-provider/src/main/java/org/opendaylight/bgpcep/bgp/topology/provider/ProtocolUtil.java>`_.

DataContainer.getImplementedInterface() Renamed
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The *DataContainer.getImplementedInterface()* method was renamed to just
*implementedInterface()*. In addition, it is now correctly type-narrowed in
generated interfaces, which also provides a default implementation. When
implementing a type registry, update the references to point to this new
*implementedInterface()* method.

For hand-crafting interfaces or providing mock implementations,
provide a proper *implementedInterface()* implementation such as
this one.

DataContainer.implementedInterface() is type-narrowed in DataObjects
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The replacement for *getImplementedInterface()*, *implementedInterface()*
was narrowed when generated intermediate interfaces. This allows
groupings to provide a default implementation in container-like interfaces.
For example:

 .. code-block:: none

  public interface Grp
       extends
       DataObject
    {
       @Override
       Class<? extends Grp> implementedInterface();
    }

The users are like this:

 .. code-block:: none

  public interface Cont
       extends
       ChildOf<Mdsal437Data>,
       Augmentable<Cont>,
       Grp
   {
       @Override
       default Class<Cont> implementedInterface() {
           return Cont.class;
       }
   }

The preceding command  works, but unfortunately was seen to
trigger a Javac bug (or something forbidden by JLS, the
information is not available nor digestible), where the
following construct involving two unrelated groupings
fails to compile:

  .. code-block:: none

   <T extends Grp1 & Grp2> void doSomething(Builder<T>);

The intent is to say, "require a Builder of a type T, which
extends both Grp1 and Grp2". It seems javac (tested with JDK8, JDK11)
internally performs the equivalent of the following, which fails
to compile (with the same error as javac reports in the <T ..> case),
since *T* must do the equivalent of what *Cont* does; narrow
implementedInterface() to solve the ambiguity. That is not a
reason to not allow it. For example, Eclipse (that is, JDT
compiler) will accept this construct without any issues.

  .. code-block:: none

   interface T extends Grp1, Grp2 {
     }

MD-SAL PingPongDataBroker Does Not Separate
-------------------------------------------

Both binding and DOM definitions of DataBroker was updated to
include a *createMergingTransactionChain()* method, which
integrates the functionality formerly provided by the
odl:type="pingpong" data broker instance. In addition, the
downstream will need to update to use the default instance
to create the appropriate transaction chain manually. Note this
impacts only the *org.opendaylight.mdsal* interfaces, not
just the org.opendaylight.controller.

An example of changes can be found `AppPeerBenchmark <https://git.opendaylight.org/gerrit/c/bgpcep/+/81384/15/bgp/benchmark-app/src/main/resources/OSGI-INF/blueprint/bgp-app-peer-benchmark.xml>`_ and `bgp-app-peer <https://git.opendaylight.org/gerrit/c/bgpcep/+/81384/15/bgp/benchmark-app/src/main/java/org/opendaylight/protocol/bgp/benchmark/app/AppPeerBenchmark.java>`_.
Note the same broker can be used both ways; thus, the proper place to change
the *createTransactionChain()* call must be updated.
