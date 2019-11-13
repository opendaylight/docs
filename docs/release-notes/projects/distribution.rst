============
Distribution
============

Overview
========

The Distribution project is the placeholder for the ODL karaf
distribution. The project currently generates 2 artifacts:

* The Managed distribution (e.g. karaf-<version>.tar.gz): This includes
  the Managed projects in OpenDaylight (See :ref:`managed-release`).

* The Common distribution (e.g. opendaylight-<version>.tar.gz): This
  includes Managed and Self-Managed projects (See :ref:`managed-release`).

The distribution project is also the placeholder for the distribution
scripts. Example of these scripts:

* :ref:`Clustering scripts in Distribution <getting-started-clustering-scripts>`


Major Features
==============

Managed Distribution Archive
----------------------------

* Gitweb URL: `Managed Archive <https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=karaf/pom.xml;hb=refs/heads/stable/sodium>`_
* Description: Zip or tar.gz; when extracted, a self-consistent ODL installation with Managed projects is created.
* Top Level: Yes.
* User Facing: Yes.
* Experimental: No.
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/distribution/job/distribution-sanity-sodium>`_

Full Distribution Archive
-------------------------

* Gitweb URL: `Distribution Archive <https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=opendaylight/pom.xml;hb=refs/heads/stable/sodium>`_
* Description: Zip or tar.gz; when extracted, a self-consistent ODL installation with all projects is created.
* Top Level: Yes.
* User Facing: Yes.
* Experimental: No.
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/distribution/job/distribution-sanity-sodium>`_

Documentation
=============

* User Guide

  * `Clustering scripts in Distribution <https://docs.opendaylight.org/en/stable-sodium/getting-started-guide/clustering.html#getting-started-clustering-scripts>`_

* Developer Guide

  * `Distribution Guides <https://docs.opendaylight.org/projects/integration-distribution/en/stable-sodium/index.html>`_

Security Considerations
=======================

* `CSIT job <https://jenkins.opendaylight.org/releng/job/distribution-csit-1node-userfeatures-all-sodium>`_

* No additional manual testing was needed.

Migration
=========
Every distribution major release comes with new and deprecated project features, as well
as new Karaf version. Because of this it is recommend to perform a new ODL installation.

Compatibility
=============
Test features change every release, but these are only intended for distribution test.

Bugs Fixed
==========

No issues were resolved in this release.

Known Issues
============

* `ODLPARENT-110 <https://jira.opendaylight.org/browse/ODLPARENT-110>`_

  Successive feature installation from karaf4 console causes bundles refresh.

  **Workaround:**

  * Use --no-auto-refresh option in the karaf feature install command.

    .. code:: bash

       feature:install --no-auto-refresh odl-netconf-topology

  * List all the features you need in the karaf config boot file.

  * Install all features at once in console, for example:

    .. code:: bash

       feature:install odl-restconf odl-netconf-mdsal odl-mdsal-apidocs odl-clustering-test-app odl-netconf-topology

* `ODLPARENT-113 <https://jira.opendaylight.org/browse/ODLPARENT-113>`_

  The ssh-dss method is used by Karaf SSH console, but no longer supported by
  clients such as OpenSSH.

  **Workaround:**

  * Use the bin/client script, which uses karaf:karaf as the default
    credentials.

  * Use this ssh option:

    .. code:: bash

       ssh -oHostKeyAlgorithms=+ssh-dss -p 8101 karaf@localhost

  After restart, Karaf is unable to re-use the generated host.key file.

  **Workaround:** Delete the etc/host.key file before starting Karaf again.

Standards
=========

No standard implemented directly (see upstream projects).

Release Mechanics
=================

* `Managed Release <https://docs.opendaylight.org/en/stable-sodium/release-process/managed-release.html#managed-release>`_
