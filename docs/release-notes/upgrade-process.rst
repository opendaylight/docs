=====================
Neon Platform Upgrade
=====================

This document describes the steps to help users upgrade to the
Neon planned platform. Refer to `Managed Release Integrated (MRI)
project <https://git.opendaylight.org/gerrit/#/q/topic:neon-mri>`_
for more information on MRI.

.. contents:: Contents

Preparation
-----------

Version Bump
^^^^^^^^^^^^

Before performing platform upgrade, do the following to bump the odlparent
versions (for example, `bump-odl-version <https://github.com/skitt/odl-tools/blob/master/bump-odl-version>`_):

1. Update the odlparent version from 3.1.3 to 4.0.2. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for other 4.0.2.

 .. code-block:: none

  bump-odl-version odlparent 3.1.3 4.0.2

2. Update the direct yangtools version references from 2.0.10 to 2.1.1,
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 2.1.1.

3. Update the MDSAL version from 0.14.0-SNAPSHOT to 3.0.0. There should
   not be any reference to **org.opendaylight.mdsal**, except for 3.0.0.

 .. code-block:: none

  rpl -R 0.14.0-SNAPSHOT 3.0.0

or
 .. code-block:: none

  rpl -R 2.6.0-SNAPSHOT 3.0.0

Install Dependent Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^

Before performing platform upgrade, users must also install
any dependent project. To locally install a dependent project,
pull and install the respective `neon-mri <https://git.opendaylight.org/gerrit/#/q/topic:neon-mri>`_
changes for a dependent project. At a minimum, pull and
install `controller <https://git.opendaylight.org/gerrit/#/c/controller/+/74855/>`_,
`AAA <https://git.opendaylight.org/gerrit/#/c/aaa/+/74964/>`_ and `NETCONF
<https://git.opendaylight.org/gerrit/#/c/netconf/+/74966/>`_.

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
<https://github.com/opendaylight/odlparent/blob/v4.0.0/NEWS.rst>`_
for more information on upgrading the ODL parent.

Maven
^^^^^

ODL Parent 4 requires Maven 3.5.0 or later. Refer to the following link for
more information on Maven, including the latest downloads and release notes:

* `Apache Maven Project <https://maven.apache.org>`_

Features
^^^^^^^^

The following features are required to be replaced:

* Replace references to odl-guava-23 with odl-guava.

* Change any version range that refers to version 3 of the
  ODL Parent to **[4,5)** for ODL Parent 4. For example:

 .. code-block:: none

  <feature name="odl-infrautils-caches">
       <feature version="[4,5)">odl-guava</feature>
   </feature>

The following features are available to wrap the following
dependencies. They should be used if any feature depends on
the corresponding library:

* Apache Commons Code: odl-apache-commons-codec
* Apache Commons Lang 3: odl-apache-commons-lang3
  Please migrate if you are using version 2.
* Apache Commons Net: odl-apache-commons-net
* Apache Commons Text: odl-apache-commons-text
* Apache SSHD: odl-apache-sshd

 .. note:: For more information on Apache Commons,
    refer to `Apache Common <https://commons.apache.org>`_

* Jackson 2.9: odl-jackson-2.9. Replacing odl-jackson-2.8.

Any references to the latter must be updated.

The preceding features should be used in the same way as
existing ODL Parent features. That is, do not use them in
plain JAR bundles or OSGi bundles. Only use the features POMs.
For example, to use odl-apache-commons-lang3, add

 .. code-block:: none

   <dependency>
       <groupId>org.opendaylight.odlparent</groupId>
       <artifactId>odl-apache-commons-lang3</artifactId>
       <type>xml</type>
       <classifier>features</classifier>
   </dependency>

For example, to use the POM feature to ensure that corresponding
feature template exists in the src/main/feature/feature.xml file
(in the same module as the feature POM):

 .. code-block:: none

   <?xml version="1.0" encoding="UTF-8"?>
   <features name="YOUR-PROJECT-FEATURES" xmlns="http://karaf.apache.org/xmlns/features/v1.2.0">
       <feature name="YOUR-FEATURE" version="${project.version}">
           <feature version="[4,5)">odl-apache-commons-lang3</feature>
       </feature>
   </features>

Mockito
^^^^^^^
For the Mockito framework, update to the changes in version 2.
Refer to What’s new in `Mockito 2 <https://github.com/mockito/mockito/wiki/What%27s-new-in-Mockito-2>`_ and
Migrating to `Mockito 2.1 <https://asolntsev.github.io/en/2016/10/11/mockito-2.1/>`_.
The latter is a practical review of the process.

PowerMock
^^^^^^^^^
For the PowerMock framework, revert to an older version of Mockito and
Javassist, because the current versions are not compatible with PowerMock.
Switch to **powermock-api-mockito2**, instead of **powermock-api-mockito**:

 .. code-block:: none

   <dependency>
     <groupId>org.powermock</groupId>
     <artifactId>powermock-api-mockito2</artifactId>
     <version>1.7.4</version>
     <scope>test</scope>
   </dependency>
   <dependency>
     <groupId>org.javassist</groupId>
     <artifactId>javassist</artifactId>
     <version>3.21.0-GA</version>
     <scope>test</scope>
   </dependency>
   <dependency>
     <groupId>org.mockito</groupId>
     <artifactId>mockito-core</artifactId>
     <version>2.8.9</version>
     <scope>test</scope>
   </dependency>

If all else fails, you can revert to Mockito 1 and PowerMock 1.6.4, as used in previous versions of the ODL platform:

 .. code-block:: none

  <dependency>
     <groupId>org.powermock</groupId>
     <artifactId>powermock-api-mockito</artifactId>
     <version>1.6.4</version>
     <scope>test</scope>
   </dependency>
   <dependency>
     <groupId>org.javassist</groupId>
     <artifactId>javassist</artifactId>
     <version>3.21.0-GA</version>
     <scope>test</scope>
   </dependency>
   <dependency>
     <groupId>org.mockito</groupId>
     <artifactId>mockito-core</artifactId>
     <version>1.10.19</version>
     <scope>test</scope>
   </dependency>
   <dependency>
     <groupId>org.powermock</groupId>
     <artifactId>powermock-module-junit4</artifactId>
     <version>1.6.4</version>
     <scope>test</scope>
   </dependency>
   <dependency>
     <groupId>org.powermock</groupId>
     <artifactId>powermock-api-support</artifactId>
     <version>1.6.4</version>
     <scope>test</scope>
   </dependency>
   <dependency>
     <groupId>org.powermock</groupId>
     <artifactId>powermock-reflect</artifactId>
     <version>1.6.4</version>
     <scope>test</scope>
   </dependency>
   <dependency>
     <groupId>org.powermock</groupId>
     <artifactId>powermock-core</artifactId>
     <version>1.6.4</version>
     <scope>test</scope>
   </dependency>

XMLUnit 2
---------
For the XMLUnit testing tool, migrate to XMLUnit 2, which is now the default.
The *xmlunit-legacy* is available, if necessary.
Refer to `Migrating from XMLUnit 1.x to 2.x <https://github.com/xmlunit/user-guide/wiki/Migrating-from-XMLUnit-1.x-to-2.x>`_

Blueprint Declarations
----------------------

Blueprint XML files now must be shipped in the OSGI-INF/blueprint. For manually-defined
XML files, find . -name ".xml" | grep "src/main/", and move them from
src/main/resources/org/opendaylight/blueprint/ to src/main/resources/OSGI-INF/blueprint.
The Maven plugin already does this for any configuration provided by the ODL Parent for
generated BP XML. Use this magic incantation (from `c/75180 <https://git.opendaylight.org/gerrit/c/odlparent/+/75180>`_) to move handwritten sources:

 .. code-block:: none

  find . -path '/src/main/resources/org/opendaylight/blueprint/*.xml' -execdir sh -c "mkdir -p ../../../OSGI-INF/blueprint; git mv {} ../../../OSGI-INF/blueprint" \;

When bundles are included in features that have no dependency to the controller's ODL
blueprint extender bundle, this might cause the SFT to fail with a message of
"Missing dependencies: (&(objectClass=org.apache.aries.blueprint.NamespaceHandler)
(osgi.service.blueprint.namespace=http://opendaylight.org/xmlns/blueprint/v1.0.0))".
This can be solved by either adding an artificial controller feature dependency or
by removing the object that is not required. For more information, refer to the patch
set `77008 <https://git.opendaylight.org/gerrit/c/openflowplugin/+/77008/2..3>`_

If a project uses blueprint-maven-plugin, migrate from pax-cdi-api to
blueprint-maven-plugin-annotation. In addition, users must add a POM,
remove the pax-cdi-api dependency, and replace @OsgiServiceProvider on
a bean class declaration with @Service (using its classes argument),
@OsgiService with @Reference on injection points like constructors.
Also, @OsgiService on a bean declaration, if any, with @Service; those
were wrong. Check that the resulting autowire.xml is identical to the
previous version.

 .. code-block:: none

   <dependency>
     <groupId>org.apache.aries.blueprint</groupId>
     <artifactId>blueprint-maven-plugin-annotation</artifactId>
     <optional>true</optional>
   </dependency>

In Eclipse, the fastest way to do above is to use the following commands:

 .. code-block:: none

  rpl -R @OsgiServiceProvider @Service .

 .. code-block:: none

  rpl -R @OsgiService @Reference .

In this order, you get "@ReferenceProvider." Then, right-click a project to Source > Organize Imports.

Refer to `Issue 75699 <https://git.opendaylight.org/gerrit/75699>`_
For an example patch, refer to `Issue 74891 <https://git.opendaylight.org/gerrit/74891>`_

org.eclipse.persistence
^^^^^^^^^^^^^^^^^^^^^^^

If the project uses EclipseLink (org.eclipse.persistence) for JSON processing, then refer to the note
`ODLPARENT-166 <https://jira.opendaylight.org/browse/ODLPARENT-166>`_.

YANG Tools Impacts
------------------

odl-triemap and triemap.jar
^^^^^^^^^^^^^^^^^^^^^^^^^^^

This feature and its artifact were deprecated, since the code was migrated outside of
OpenDaylight. Refer to `Triemap <https://github.com/PantheonTechnologies/triemap/>`_.
The replacement feature is tech.pantheon.triemap:pt-triemap, the replacement jar
is tech.pantheon.triemap:triemap. yangtools-2.1.1 is using version 1.0.1,
which is version-converged on odlparent-4.0.2.

As before, this feature was pulled in transitively by odl-yangtools-util. Also,
the jar is pulled in by org.opendaylight.yangtools:util.

DataTree Removes Empty Lists, Choices and Augmentations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

As per `YANGTOOLS-585 <https://jira.opendaylight.org/browse/YANGTOOLS-585>`_, InMemoryDataTree,
which underpins all known MD-SAL datastore implementations, will subject lists, choice and
augmentation nodes to the same lifecycle as non-presence containers. In addition, they will
disappear as soon as they become empty and then reappear as soon as they are populated.

MD-SAL Impacts
--------------
ietf-inet-types
^^^^^^^^^^^^^^^

Replace dependencies to org.opendaylight.mdsal.model:ietf-inet-types-2013-07-15
and ietf-yang-types-20130715 artifacts in the POMs by org.opendaylight.mdsal.binding.model.ietf:rfc6991.

For more details, see the "Updating model artifact packaging" thread on the mdsal-dev mailing
list from April 25-26th. In addition, contact the mdsal-dev list for clarifications about
further doubts. Please do update this section with any new information useful to others.
`Issue 001656 <https://lists.opendaylight.org/pipermail/mdsal-dev/2018-April/001656.html>`_

ietf-interfaces
^^^^^^^^^^^^^^^

Replace dependencies to org.opendaylight.mdsal.model:ietf-interfaces with
org.opendaylight.mdsal.binding.model.ietf:rfc7223.

rfc7895.jar
^^^^^^^^^^^

This model was moved. Update any reference to point to
org.opendaylight.mdsal.binding.model.ietf:rfc7895.

iana-if-type
^^^^^^^^^^^^

Replace dependencies to org.opendaylight.mdsal.model:iana-if-type-2014-05-08 with
org.opendaylight.mdsal.binding.model.iana:iana-if-type. In addition, replace imports
in Java code from rev140508 to rev170119.

Datastore Lifecycle
^^^^^^^^^^^^^^^^^^^

As noted previously, datastores now automatically remove empty lists, choices and
augmentations. In addition, it will recreate them when they are implied by their children.

Performing WriteTransaction.put() to write an empty list has the same effect as
deleting a list. Storing a new list entry into a list no longer requires
ensureParentsByMerge.
