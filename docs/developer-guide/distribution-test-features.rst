.. _dist-test-features:

Distribution features
=====================

Overview
--------

This section provides an overview of **odl-integration-compatible-with-all**
and **odl-integration-all** features.

Integration/Distribution project produces a Karaf 4 distribution
which gives users access to many Karaf features provided by upstream OpenDaylight projects.
Users are free to install arbitrary subset of those features,
but not every feature combination is expected to work properly.

Some features are pro-active, which means OpenDaylight in contact with othe network elements
starts diving changes in the network even without prompting by users,
in order to satisfy initial conditions their use case expects.
Such activity from one feature may in turn affect behavior of another feature.

In some cases, there exists features which offer diferent implementation of the same service,
they may fail to initialize properly (e.g. failing to bind a port already bound by the other feature).

Integration/Test project is maintaining system tests (CSIT) jobs.
Aside of testing scenarios with only a minimal set of features installed (-only- jobs),
the scenarios are also tested with a large set of features installed (-all- jobs).

In order to define a proper set of features to test with, Integration/Distribution project
defines two "aggregate" features. Note that these features are not intended for production use,
so the feature repository which defines them is not enabled by default.

The content of these features is determined by upstream OpenDaylight contributions,
with Integration/Test providing insight on observed compatibuility relations.
Integration/Distribution team is focused only on making sure the build process is reliable.

Feature repositories
--------------------

features-index
~~~~~~~~~~~~~~

This feature repository is enabled by default.
It does not refer to any new features directly, instead it refers to upstream feature repositories,
enabling any feature contained therein to be available for installation.

features-test
~~~~~~~~~~~~~

This feature repository defines the two aggregate features.
To enable this repository, change the featuresRepositories line of org.apache.karaf.features.cfg file,
by copy-pasting the feature-index value and editing the name.

Karaf features
--------------

The two aggregate features, defining sets of user-facing features defined by compatibility requirements.
Note that is the compatibility relation differs between single node an cluster deployments,
single node point of view takes precedence.

odl-integration-all
~~~~~~~~~~~~~~~~~~~

This feature contains the largest set of user-facing features which may affect each others operation,
but the set does not affect usability of Karaf infrastructure.

Note that port binding conflicts and "server is unhealthy" status of config subsystem
are considered to affect usability, as is a failure of Restconf
to respond to GET on /restconf/modules with HTTP status 200.

This feature is used in verification process for Integration/Distribution contributions.

odl-integration-compatible-with-all
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This feature contains the largest set of user-facing features which are not pro-active
and do not affect each others operation.

Installing this set together with just one of odl-integration-all features should still result
in fully operational installation, as one pro-active feature should not lead to any conflicts.
This should also hold if the single added feature is outside odl-integration-all,
if it is one of conflicting implementations (and no such implementations is in odl-integration-all).

This feature is used in the aforementioned -all- CSIT jobs.


Static distribution
-------------------

Background
~~~~~~~~~~

While the OpenDaylight distribution usually is delivered in the form of
pre-configured Apache Karaf with a full set of features, this approach
might not be the best option in some cases. These days with the
containerization trend, existing distribution has the following drawbacks:

* Features dependencies evaluation and wiring happens in runtime(this leads
  to a more complicated verification process).
* Distribution might contain features and tools that are not really needed
  in the production environment.

To address these limitations, Apache Karaf provides a capability to produce
static distribution, and this approach is applicable for OpenDaylight
distribution as well. This kind of distribution brings several advantages:

* Feature dependencies resolution happens during build time and makes
  a behavior more predictable.
* Some of the built-in Karaf features might be omitted, and configuration
  admin will support only read operations.
* The user can decide what features will be included in the distribution.
* Overall distribution package becomes a kind of immutable, and the
  user doesn't need to install/modify anything manually.


Guideline for making static distribution
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

:ref:`ODL Parent component<odl-parent-developer-guide>` provides a new parent
project - **"karaf4-static-parent"** which defines static framework components
alongside essential OpenDaylight's components(branding, bouncycastle stuff,
etc). This project can be used to build a static distribution by adding this as
a parent to your project's pom.xml.

.. code:: xml

    <parent>
        <groupId>org.opendaylight.odlparent</groupId>
        <artifactId>karaf4-static-parent</artifactId>
        <version>8.0.4</version>
    <relativePath/>

Let's make an assumption that user only needs to manage standard NETCONF
devices via the southbound interface and RESTCONF as the northbound. In such
a use case, we only need to declare two dependencies in your pom file:

.. code:: xml

    <dependencies>
        <dependency>
            <groupId>org.opendaylight.netconf</groupId>
            <artifactId>odl-netconf-connector-all</artifactId>
            <version>1.10.0</version>
            <classifier>features</classifier>
            <type>xml</type>
        </dependency>
        <dependency>
            <groupId>org.opendaylight.netconf</groupId>
            <artifactId>odl-restconf-nb-rfc8040</artifactId>
            <version>${project.version}</version>
            <classifier>features</classifier>
            <type>xml</type>
        </dependency>
    </dependencies>

and also put additional configuration for the karaf-maven-plugin about
these features under the <plugins> block:

.. code:: xml

    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.karaf.tooling</groupId>
                <artifactId>karaf-maven-plugin</artifactId>
                <extensions>true</extensions>
                <configuration>
                    <bootFeatures combine.children="append">
                        <feature>odl-netconf-connector-all</feature>
                        <feature>odl-restconf-nb-rfc8040</feature>
                    </bootFeatures>
                </configuration>
            </plugin>
        </plugins>
    </build>


.. note:: If you need extra karaf framework features for the distribution,
          this can be done by extending the <startupFeatures> block.
          The following example demonstrates how to do this with
          a 'shell' feature.

.. code:: xml

            <plugin>
                <groupId>org.apache.karaf.tooling</groupId>
                <artifactId>karaf-maven-plugin</artifactId>
                <extensions>true</extensions>
                <configuration>
                    <startupFeatures combine.children="append">
                        <feature>shell</feature>
                    </startupFeatures>
                    <bootFeatures combine.children="append">
                        <feature>odl-netconf-connector-all</feature>
                        <feature>odl-restconf-nb-rfc8040</feature>
                    </bootFeatures>
                </configuration>
            </plugin>

.. note:: Additionally, you can configure **karaf.archiveTarGz**,
          and **karaf.archiveZip** boolean-type properties to put your static
          distribution inside the archive.

.. code:: xml

    <properties>
        <karaf.archiveTarGz>false</karaf.archiveTarGz>
        <karaf.archiveZip>true</karaf.archiveZip>
    </properties>


Known issues
~~~~~~~~~~~~

* An issue with FeatureDeploymentListener.bundleChanged and NPE records in
  log files. More details available here:
  https://issues.apache.org/jira/browse/KARAF-6612

* Some of the features might try to update configuration files, but that's
  not supported by static distribution, so StaticConfigurationImpl.update
  will throw UnsupportedOperationException.