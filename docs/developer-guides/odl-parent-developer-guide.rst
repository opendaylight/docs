.. _odl-parent-developer-guide:

ODL Parent Developer Guide
==========================

Parent POMs
-----------

Overview
~~~~~~~~

The ODL Parent component for OpenDaylight provides a number of Maven
parent POMs which allow Maven projects to be easily integrated in the
OpenDaylight ecosystem. Technically, the aim of projects in OpenDaylight
is to produce Karaf features, and these parent projects provide common
support for the different types of projects involved.

These parent projects are:

-  ``odlparent-lite`` — the basic parent POM for Maven modules which
   don’t produce artifacts (*e.g.* aggregator POMs)

-  ``odlparent`` — the common parent POM for Maven modules containing
   Java code

-  ``bundle-parent`` — the parent POM for Maven modules producing OSGi
   bundles

The following parent projects are deprecated, but still used in Carbon:

-  ``feature-parent`` — the parent POM for Maven modules producing
   Karaf 3 feature repositories

-  ``karaf-parent`` — the parent POM for Maven modules producing Karaf 3
   distributions

The following parent projects are new in Carbon, for Karaf 4 support (which
won’t be complete until Nitrogen):

-  ``single-feature-parent`` — the parent POM for Maven modules producing
   a single Karaf 4 feature

-  ``feature-repo-parent`` — the parent POM for Maven modules producing
   Karaf 4 feature repositories

-  ``karaf4-parent`` — the parent POM for Maven modules producing Karaf 4
   distributions

odlparent-lite
~~~~~~~~~~~~~~

This is the base parent for all OpenDaylight Maven projects and
modules. It provides the following, notably to allow publishing
artifacts to Maven Central:

-  license information;

-  organization information;

-  issue management information (a link to our Bugzilla);

-  continuous integration information (a link to our Jenkins setup);

-  default Maven plugins (``maven-clean-plugin``,
   ``maven-deploy-plugin``, ``maven-install-plugin``,
   ``maven-javadoc-plugin`` with HelpMojo support,
   ``maven-project-info-reports-plugin``, ``maven-site-plugin`` with
   Asciidoc support, ``jdepend-maven-plugin``);

-  distribution management information.

It also defines two profiles which help during development:

-  ``q`` (``-Pq``), the quick profile, which disables tests, code
   coverage, Javadoc generation, code analysis, etc. — anything which
   is not necessary to build the bundles and features;

-  ``addInstallRepositoryPath``
   (``-DaddInstallRepositoryPath=…/karaf/system``) which can be used to
   drop a bundle in the appropriate Karaf location, to enable
   hot-reloading of bundles during development.

For modules which don’t produce any useful artifacts (*e.g.* aggregator
POMs), you should add the following to avoid processing artifacts:

::

    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-deploy-plugin</artifactId>
                <configuration>
                    <skip>true</skip>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-install-plugin</artifactId>
                <configuration>
                    <skip>true</skip>
                </configuration>
            </plugin>
        </plugins>
    </build>

odlparent
~~~~~~~~~

This inherits from ``odlparent-lite`` and mainly provides dependency and
plugin management for OpenDaylight projects.

If you use any of the following libraries, you should rely on
``odlparent`` to provide the appropriate versions:

-  Akka (and Scala)

-  Apache Commons:

   -  ``commons-codec``

   -  ``commons-fileupload``

   -  ``commons-io``

   -  ``commons-lang``

   -  ``commons-lang3``

   -  ``commons-net``

-  Apache Shiro

-  Guava

-  JAX-RS with Jersey

-  JSON processing:

   -  GSON

   -  Jackson

-  Logging:

   -  Logback

   -  SLF4J

-  Netty

-  OSGi:

   -  Apache Felix

   -  core OSGi dependencies (``core``, ``compendium``\ …)

-  Testing:

   -  Hamcrest

   -  JSON assert

   -  JUnit

   -  Mockito

   -  Pax Exam

   -  PowerMock

-  XML/XSL:

   -  Xerces

   -  XML APIs

.. note::

    This list is not exhaustive. It is also not cast in stone;if you
    would like to add a new dependency (or migrate a dependency), please
    contact `the mailing list <https://lists.opendaylight.org/g/kernel-dev>`__.

``odlparent`` also enforces some Checkstyle verification rules. In
particular, it enforces the common license header used in all
OpenDaylight code:

::

    /*
     * Copyright © ${year} ${holder} and others.  All rights reserved.
     *
     * This program and the accompanying materials are made available under the
     * terms of the Eclipse Public License v1.0 which accompanies this distribution,
     * and is available at http://www.eclipse.org/legal/epl-v10.html
     */

where “\ ``${year}``\ ” is initially the first year of publication, then
(after a year has passed) the first and latest years of publication,
separated by commas (*e.g.* “2014, 2016”), and “\ ``${holder}``\ ” is
the initial copyright holder (typically, the first author’s employer).
“All rights reserved” is optional.

If you need to disable this license check, *e.g.* for files imported
under another license (EPL-compatible of course), you can override the
``maven-checkstyle-plugin`` configuration. ``features-test`` does this
for its ``CustomBundleUrlStreamHandlerFactory`` class, which is
ASL-licensed:

::

    <plugin>
        <artifactId>maven-checkstyle-plugin</artifactId>
        <executions>
            <execution>
                <id>check-license</id>
                <goals>
                    <goal>check</goal>
                </goals>
                <phase>process-sources</phase>
                <configuration>
                    <configLocation>check-license.xml</configLocation>
                    <headerLocation>EPL-LICENSE.regexp.txt</headerLocation>
                    <includeResources>false</includeResources>
                    <includeTestResources>false</includeTestResources>
                    <sourceDirectory>${project.build.sourceDirectory}</sourceDirectory>
                    <excludes>
                        <!-- Skip Apache Licensed files -->
                        org/opendaylight/odlparent/featuretest/CustomBundleUrlStreamHandlerFactory.java
                    </excludes>
                    <failsOnError>false</failsOnError>
                    <consoleOutput>true</consoleOutput>
                </configuration>
            </execution>
        </executions>
    </plugin>

bundle-parent
~~~~~~~~~~~~~

This inherits from ``odlparent`` and enables functionality useful for
OSGi bundles:

-  ``maven-javadoc-plugin`` is activated, to build the Javadoc JAR;

-  ``maven-source-plugin`` is activated, to build the source JAR;

-  ``maven-bundle-plugin`` is activated (including extensions), to build
   OSGi bundles (using the “bundle” packaging).

In addition to this, JUnit is included as a default dependency in “test”
scope.

features-parent
~~~~~~~~~~~~~~~

This inherits from ``odlparent`` and enables functionality useful for
Karaf features:

-  ``karaf-maven-plugin`` is activated, to build Karaf features — but
   for OpenDaylight, projects need to use ``“jar”`` packaging (**not**
   ``“feature”`` or ``“kar”``);

-  ``features.xml`` files are processed from templates stored in
   ``src/main/features/features.xml``;

-  Karaf features are tested after build to ensure they can be activated
   in a Karaf container.

The ``features.xml`` processing allows versions to be omitted from
certain feature dependencies, and replaced with “\ ``{{version}}``\ ”.
For example:

::

    <features name="odl-mdsal-${project.version}" xmlns="http://karaf.apache.org/xmlns/features/v1.2.0"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xsi:schemaLocation="http://karaf.apache.org/xmlns/features/v1.2.0 http://karaf.apache.org/xmlns/features/v1.2.0">

        <repository>mvn:org.opendaylight.odlparent/features-odlparent/{{VERSION}}/xml/features</repository>

        [...]
        <feature name='odl-mdsal-broker-local' version='${project.version}' description="OpenDaylight :: MDSAL :: Broker">
            <feature version='${yangtools.version}'>odl-yangtools-common</feature>
            <feature version='${mdsal.version}'>odl-mdsal-binding-dom-adapter</feature>
            <feature version='${mdsal.model.version}'>odl-mdsal-models</feature>
            <feature version='${project.version}'>odl-mdsal-common</feature>
            <feature version='${config.version}'>odl-config-startup</feature>
            <feature version='${config.version}'>odl-config-netty</feature>
            <feature version='[3.3.0,4.0.0)'>odl-lmax</feature>
            [...]
            <bundle>mvn:org.opendaylight.controller/sal-dom-broker-config/{{VERSION}}</bundle>
            <bundle start-level="40">mvn:org.opendaylight.controller/blueprint/{{VERSION}}</bundle>
            <configfile finalname="${config.configfile.directory}/${config.mdsal.configfile}">mvn:org.opendaylight.controller/md-sal-config/{{VERSION}}/xml/config</configfile>
        </feature>

As illustrated, versions can be omitted in this way for repository
dependencies, bundle dependencies and configuration files. They must be
specified traditionally (either hard-coded, or using Maven properties)
for feature dependencies.

karaf-parent
~~~~~~~~~~~~

This allows building a Karaf 3 distribution, typically for local testing
purposes. Any runtime-scoped feature dependencies will be included in the
distribution, and the ``karaf.localFeature`` property can be used to
specify the boot feature (in addition to ``standard``).

single-feature-parent
~~~~~~~~~~~~~~~~~~~~~

This inherits from ``odlparent`` and enables functionality useful for
Karaf 4 features:

-  ``karaf-maven-plugin`` is activated, to build Karaf features, typically
   with ``"feature"`` packaging (``"kar"`` is also supported);

-  ``feature.xml`` files are generated based on the compile-scope dependencies
   defined in the POM, optionally initialized from a stub in
   ``src/main/feature/feature.xml``.

-  Karaf features are tested after build to ensure they can be activated
   in a Karaf container.

The ``feature.xml`` processing adds transitive dependencies by default, which
allows features to be defined using only the most significant dependencies
(those that define the feature); other requirements are determined
automatically as long as they exist as Maven dependencies.

``configfiles`` need to be defined both as Maven dependencies (with the
appropriate type and classifier) and as ``<configfile>`` elements in the
``feature.xml`` stub.

Other features which a feature depends on need to be defined as Maven
dependencies with type “xml” and classifier “features” (note the plural here).

``feature-repo-parent``
~~~~~~~~~~~~~~~~~~~~~~~

This inherits from ``odlparent`` and enables functionality useful for
Karaf 4 feature repositories. It follows the same principles as
``single-feature-parent``, but is designed specifically for repositories
and should be used only for this type of artifacts.

It builds a feature repository referencing all the (feature) dependencies
listed in the POM.

karaf4-parent
~~~~~~~~~~~~~

This allows building a Karaf 4 distribution, typically for local testing
purposes. Any runtime-scoped feature dependencies will be included in the
distribution, and the ``karaf.localFeature`` property can be used to
specify the boot feature (in addition to ``standard``).

Features (for Karaf 3)
----------------------

The ODL Parent component for OpenDaylight provides a number of Karaf 3
features which can be used by other Karaf 3 features to use certain
third-party upstream dependencies.

These features are:

-  Akka features (in the ``features-akka`` repository):

   -  ``odl-akka-all`` — all Akka bundles;

   -  ``odl-akka-scala-2.11`` — Scala runtime for OpenDaylight;

   -  ``odl-akka-system-2.4`` — Akka actor framework bundles;

   -  ``odl-akka-clustering-2.4`` — Akka clustering bundles and
      dependencies;

   -  ``odl-akka-leveldb-0.7`` — LevelDB;

   -  ``odl-akka-persistence-2.4`` — Akka persistence;

-  general third-party features (in the ``features-odlparent``
   repository):

   -  ``odl-netty-4`` — all Netty bundles;

   -  ``odl-guava-18`` — Guava 18;

   -  ``odl-guava-21`` — Guava 21 (not intended for use in Carbon);

   -  ``odl-lmax-3`` — LMAX Disruptor;

   -  ``odl-triemap-0.2`` — Concurrent Hash-Trie Map.

To use these, you need to declare a dependency on the appropriate
repository in your ``features.xml`` file:

::

    <repository>mvn:org.opendaylight.odlparent/features-odlparent/{{VERSION}}/xml/features</repository>

and then include the feature, *e.g.*:

::

    <feature name='odl-mdsal-broker-local' version='${project.version}' description="OpenDaylight :: MDSAL :: Broker">
        [...]
        <feature version='[3.3.0,4.0.0)'>odl-lmax</feature>
        [...]
    </feature>

You also need to depend on the features repository in your POM:

::

    <dependency>
        <groupId>org.opendaylight.odlparent</groupId>
        <artifactId>features-odlparent</artifactId>
        <classifier>features</classifier>
        <type>xml</type>
    </dependency>

assuming the appropriate dependency management:

::

    <dependencyManagement>
        <dependencies>
            <dependency>
                <groupId>org.opendaylight.odlparent</groupId>
                <artifactId>odlparent-artifacts</artifactId>
                <version>1.8.0-SNAPSHOT</version>
                <scope>import</scope>
                <type>pom</type>
            </dependency>
        </dependencies>
    </dependencyManagement>

(the version number there is appropriate for Carbon). For the time being
you also need to depend separately on the individual JARs as
compile-time dependencies to build your dependent code; the relevant
dependencies are managed in ``odlparent``'s dependency management.

| The suggested version ranges are as follows:

-  ``odl-netty``: ``[4.0.37,4.1.0)`` or ``[4.0.37,5.0.0)``;

-  ``odl-guava``: ``[18,19)`` (if your code is ready for it, ``[19,20)``
   is also available, but the current default version of Guava in
   OpenDaylight is 18);

-  ``odl-lmax``: ``[3.3.4,4.0.0)``

Features (for Karaf 4)
----------------------

There are equivalent features to all the Karaf 3 features, for Karaf 4.
The repositories use “features4” instead of “features”, and the features
use ``odl4`` instead of ``odl``.

The following new features are specific to Karaf 4:

-  Karaf wrapper features (also in the ``features4-odlparent``
   repository) — these can be used to pull in a Karaf feature
   using a Maven dependency in a POM:

   -  ``odl-karaf-feat-feature`` — the Karaf ``feature`` feature;

   -  ``odl-karaf-feat-jdbc`` — the Karaf ``jdbc`` feature;

   -  ``odl-karaf-feat-jetty`` — the Karaf ``jetty`` feature;

   -  ``odl-karaf-feat-war`` — the Karaf ``war`` feature.

To use these, all you need to do now is add the appropriate dependency
in your feature POM; for example:

::

    <dependency>
        <groupId>org.opendaylight.odlparent</groupId>
        <artifactId>odl4-guava-18</artifactId>
        <classifier>features</classifier>
        <type>xml</type>
    </dependency>

assuming the appropriate dependency management:

::

    <dependencyManagement>
        <dependencies>
            <dependency>
                <groupId>org.opendaylight.odlparent</groupId>
                <artifactId>odlparent-artifacts</artifactId>
                <version>1.8.0-SNAPSHOT</version>
                <scope>import</scope>
                <type>pom</type>
            </dependency>
        </dependencies>
    </dependencyManagement>

(the version number there is appropriate for Carbon). We no longer use version
ranges, the feature dependencies all use the ``odlparent`` version (but you
should rely on the artifacts POM).
