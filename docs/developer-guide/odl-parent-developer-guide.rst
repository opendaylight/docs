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

-  ``single-feature-parent`` — the parent POM for Maven modules producing
   a single Karaf feature

-  ``feature-repo-parent`` — the parent POM for Maven modules producing
   feature repositories

-  ``karaf4-parent`` — the parent POM for Maven modules producing Karaf 4
   distributions

The following parent projects are deprecated:

-  ``feature-parent`` — the parent POM for Maven modules producing
   Karaf 3 feature repositories

-  ``karaf-parent`` — the parent POM for Maven modules producing Karaf 3
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
   isn’t necessary to build the bundles and features (see `this blog
   post <http://blog2.vorburger.ch/2016/06/improve-maven-build-speed-with-q.html>`__
   for details);

-  ``addInstallRepositoryPath``
   (``-DaddInstallRepositoryPath=…/karaf/system``) which can be used to
   drop a bundle in the appropriate Karaf location, to enable
   hot-reloading of bundles during development (see `this blog
   post <http://blog2.vorburger.ch/2016/06/maven-install-into-additional.html>`__
   for details).

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

    This list isn’t exhaustive. It’s also not cast in stone; if you’d
    like to add a new dependency (or migrate a dependency), please
    contact `the mailing
    list <https://lists.opendaylight.org/mailman/listinfo/odlparent-dev>`__.

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

single-feature-parent
~~~~~~~~~~~~~~~~~~~~~

This inherits from ``odlparent`` and enables functionality useful for
Karaf features:

-  ``karaf-maven-plugin`` is activated, to build Karaf features, typically
   with “feature” packaging (“kar” is also supported);

-  ``feature.xml`` files are generated based on the compile-scope dependencies
   defined in the POM, optionally initialised from a stub in
   ``src/main/feature/feature.xml``.

-  Karaf features are tested after build to ensure they can be activated
   in a Karaf container.

The ``feature.xml`` processing adds transitive dependencies by default, which
allows features to be defined using only the most significant dependencies
(those that define the feature); other requirements are determined
automatically as long as they exist as Maven dependencies.

“configfiles” need to be defined both as Maven dependencies (with the
appropriate type and classifier) and as ``<configfile>`` elements in the
``feature.xml`` stub.

Other features which a feature depends on need to be defined as Maven
dependencies with type “xml” and classifier “features” (note the plural here).

feature-repo-parent
~~~~~~~~~~~~~~~~~~~

This inherits from ``odlparent`` and enables functionality useful for
Karaf feature repositories. It follows the same principles as
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

Features
--------

The ODL Parent component for OpenDaylight provides a number of Karaf
features which can be used by other Karaf features to use certain
third-party upstream dependencies.

These features are:

-  Akka features (in the ``features4-akka`` repository):

   -  ``odl4-akka-all`` — all Akka bundles;

   -  ``odl4-akka-scala-2.11`` — Scala runtime for OpenDaylight;

   -  ``odl4-akka-system-2.4`` — Akka actor framework bundles;

   -  ``odl4-akka-clustering-2.4`` — Akka clustering bundles and
      dependencies;

   -  ``odl4-akka-leveldb-0.7`` — LevelDB;

   -  ``odl4-akka-persistence-2.4`` — Akka persistence;

-  general third-party features (in the ``features4-odlparent``
   repository):

   -  ``odl4-netty-4`` — all Netty bundles;

   -  ``odl4-guava-18`` — Guava 18;

   -  ``odl4-guava-21`` — Guava 21 (not indended for use in Carbon);

   -  ``odl4-lmax-3`` — LMAX Disruptor;

   -  ``odl4-triemap-0.2`` — Concurrent Trie HashMap;

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

(the version number there is appropriate for Carbon).
