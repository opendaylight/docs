=====================
Neon Platform Upgrade
=====================

This document describes the steps to help users upgrade to the
Neon planned platform. For more details on the Managed
Release Integrated (MRI) project, refer to the following:
https://git.opendaylight.org/gerrit/#/q/topic:neon-mri.

Preparation
-----------

System Updates
^^^^^^^^^^^^^^

Before performing platform upgrade, users must first update the
following:

 #. Update the odlparent version from 3.1.3 to 4.0.2. There should
    not be any reference to **org.opendaylight.odlparent**, except
    for other 4.0.2.

 .. code-block:: none

 bump-odl-version odlparent 3.1.3 4.0.2

 #. Update the direct yangtools version references from 2.0.10 to 2.1.1,
    There should not be any reference to **org.opendaylight.yangtools**,
    except for 2.1.1.

 #. Update the MDSAL version from 0.14.0-SNAPSHOT to 3.0.0. There should
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
pull and install the respective *neon-mri* changes for any
dependent project. At the minimum, pull and install controller,
AAA and NETCONF.

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
======================

The following sub-section describes how to upgrade to
the ODL Parent version 4. Refer to the following link for
the ODL parent release notes:

* ODL Parent Release Notes _`<https://github.com/opendaylight/odlparent/blob/v4.0.0/NEWS.rst >`_

Maven
^^^^^

ODL Parent 4 requires Maven 3.5.0 or later. Refer to the following link for
more information on Maven, including the latest downloads and release notes:

* Apache Maven Project _`<https://maven.apache.org>`_

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

The following features are available to wrap the following '
dependencies. They should be used if any feature depends on
the corresponding library:

* Apache Commons Code: odl-apache-commons-codec
* Apache Commons Lang 3: odl-apache-commons-lang3
  Please migrate if you are using version 2.
* Apache Commons Net: odl-apache-commons-net
* Apache Commons Text: odl-apache-commons-text
* Apache SSHD: odl-apache-sshd

 .. note:: For more information on Apache Commons
    refer to _`<https://commons.apache.org>`_

* Jackson 2.9: odl-jackson-2.9. Replacing odl-jackson-2.8.
  Any references to the latter needs to be updated.

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
Refer to “What’s new in Mockito 2” _`<https://github.com/mockito/mockito/wiki/What%27s-new-in-Mockito-2>`_ and “Migrating to Mockito 2.1”  _`<https://asolntsev.github.io/en/2016/10/11/mockito-2.1/>`_. The latter is a practical review of the process.

PowerMock
^^^^^^^^^
For the PowerMock framework, revert to an older version of Mockito and
Javassist, because the current versions are not compatible with PowerMock.
Sswitch to **powermock-api-mockito2**, instead of **powermock-api-mockito**:

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
