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
