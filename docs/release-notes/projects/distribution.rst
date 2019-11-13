========================
Integration/Distribution
========================

Major Features
==============

odl-integration-all
-------------------

* **Gitweb URL:** `Integration <https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/singles/odl-integration-all/pom.xml;hb=refs/heads/stable/neon>`_
* **Description:** An aggregate feature grouping Managed projects user facing ODL features.
  This feature is used to verify all user features can be installed together without Karaf
  becoming unusable or without port conflicts.
* **Top Level:** Yes.
* **User Facing:** Yes, but not intended for production use (only for testing purposes).
* **Experimental:** No.
* **CSIT Test:** `CSIT <https://jenkins.opendaylight.org/releng/view/distribution/job/distribution-sanity-neon>`_

odl-integration-compatible-with-all
-----------------------------------

* **Gitweb URL:** `Compatibility <https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/singles/odl-integration-compatible-with-all/pom.xml;hb=refs/heads/stable/neon>`_
* **Description:** An aggregate feature grouping Managed projects user facing ODL features
  that are not pro-active and which (as a group) should be compatible with most other ODL features.
  This feature is used in CSIT multi-project feature test (-all- CSIT job).
* **Top Level:** Yes.
* **User Facing:** Yes, but not intended for production use (only for testing purposes).
* **Experimental:** No.
* **CSIT Test:** `CSIT <https://jenkins.opendaylight.org/releng/view/distribution/job/distribution-sanity-neon>`_

Managed distribution archive
----------------------------
* **Gitweb URL:** `Managed archive <https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=karaf/pom.xml;hb=refs/heads/stable/neon>`_
* **Description:** Zip or tar.gz; when extracted, a self-consistent ODL installation with Managed projects is created.
* **Top Level:** Yes.
* **User Facing:** Yes.
* **Experimental:** No.
* **CSIT Test:** `CSIT <https://jenkins.opendaylight.org/releng/view/distribution/job/distribution-sanity-neon>`_

Full distribution archive
----------------------------
* **Gitweb URL:** `Distribution archive <https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=opendaylight/pom.xml;hb=refs/heads/stable/neon>`_
* **Description:** Zip or tar.gz; when extracted, a self-consistent ODL installation with all projects is created.
* **Top Level:** Yes.
* **User Facing:** Yes.
* **Experimental:** No.
* **CSIT Test:** `CSIT <https://jenkins.opendaylight.org/releng/view/distribution/job/distribution-sanity-neon>`_

Documentation
=============

* **User Guide**

  * :ref:`Clustering scripts in Distribution <getting-started-clustering-scripts>`

* **Developer Guide**

  * :doc:`Distribution Guides <integration-distribution:index>`

Security Considerations
=======================

* Karaf 4 exposes ssh console on port 8101. The security is basically the
  same as in upstream Karaf of corresponding versions, except library version
  overrides implemented in odlparent:karaf-parent. See :ref:`securing-karaf`.

Quality Assurance
=================

* `CSIT job <https://jenkins.opendaylight.org/releng/job/distribution-csit-1node-userfeatures-all-neon>`_

Migration
---------

Every distribution major release comes with new and deprecated project features as well
as new Karaf version. Because of this it is recommend performing a new ODL installation.

Compatibility
-------------

Test features change every release, but these are only intended for distribution test.

Bugs Fixed
----------

No significant bugs were fixed in this release.

Known Issues
------------

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

  The ssh-dss method is used by Karaf SSH console, but no longer supported by clients such as OpenSSH.

  **Workaround:**

  * Use the bin/client script, which uses karaf:karaf as the default credentials.

  * Use this ssh option:

    .. code:: bash

       ssh -oHostKeyAlgorithms=+ssh-dss -p 8101 karaf@localhost

  After restart, Karaf is unable to re-use the generated host.key file.

  **Workaround:** Delete the etc/host.key file before starting Karaf again.

End-of-life
===========

* List of features/APIs that were EOLed, deprecated, and/or removed from this release.

  * None

Standards
=========

No standard implemented directly (see upstream projects).

Release Mechanics
=================

See :ref:`managed-release`
