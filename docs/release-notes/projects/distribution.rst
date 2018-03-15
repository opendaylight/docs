========================
Integration/Distribution
========================

Major Features
==============

odl-integration-all
-------------------

* **Gitweb URL:** https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/singles/odl-integration-all/pom.xml;hb=refs/heads/stable/oxygen
* **Description:** An aggregate feature grouping all user-facing ODL features
  which can be installed together without Karaf becoming unusable or without port conflicts.
* **Top Level:** Yes.
* **User Facing:** Yes, but not intended for production use (only for testing purposes).
* **Experimental:** No.
* **CSIT Test:** https://jenkins.opendaylight.org/releng/job/distribution-deploy-oxygen

odl-integration-compatible-with-all
-----------------------------------

* **Gitweb URL:** https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/singles/odl-integration-compatible-with-all/pom.xml;hb=refs/heads/stable/oxygen
* **Description:** An aggregate feature grouping all user-facing ODL features
  which are not pro-active and which (as a group) should be compatible with most other ODL features.
* **Top Level:** Yes.
* **User Facing:** Yes, but not intended for production use (only for testing purposes).
* **Experimental:** No.
* **CSIT Test:** https://jenkins.opendaylight.org/releng/job/distribution-csit-1node-userfeatures-all-oxygen

odl-distribution-version
------------------------

* **Gitweb URL:** https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/singles/odl-distribution-version/pom.xml;hb=refs/heads/stable/oxygen
* **Description:** Allows NETCONF/RESTCONF users to determine the version of ODL they are communicating with.
* **Top Level:** Yes.
* **User Facing:** Yes.
* **Experimental:** No.
* **CSIT Test:** https://jenkins.opendaylight.org/releng/job/distribution-csit-1node-userfeatures-all-oxygen

Karaf 4 distribution archive
----------------------------
* **Gitweb URL:** https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=karaf/pom.xml;hb=refs/heads/stable/oxygen
* **Description:** Zip or tar.gz; when extracted, a self-consistent ODL installation is created.
* **Top Level:** Yes.
* **User Facing:** Yes.
* **Experimental:** No.
* **CSIT Test:** https://jenkins.opendaylight.org/releng/job/distribution-deploy-oxygen

Documentation
=============

* **Getting Started Guide**

  * :ref:`Clustering scripts <getting-started-clustering-scripts>`
  * :ref:`Distribution version <getting-started-opendaylight-version>`

* **User Guide:**

  * :ref:`Distribution version <user-guide-dist-version>`

* **Developer Guide**

  * :ref:`Test features <developer-guide-dist-test-features>`
  * :ref:`Distribution version <developer-guide-dist-version>`

Security Considerations
=======================

* Karaf 4 exposes ssh console on port 8101.
  The security basically basically the same as in upstream Karaf of corresponding versions,
  except library version overrides implemented in odlparent:karaf-parent.

  See :ref:`securing-karaf`

Quality Assurance
=================

* CSIT job: https://jenkins.opendaylight.org/releng/job/distribution-csit-1node-userfeatures-all-oxygen
* No additional manual testing was needed.

Migration
---------

* Version feature works exactly the same as in Nitrogen.
  After migration the versions are set to the new default, configurable in runtime or via configfile.

Compatibility
-------------

* Version feature works exactly the same as in Nitrogen.
* Test features change every release but these are only intended for distribution test.

Bugs Fixed
----------

* `INTDIST-92 <https://jira.opendaylight.org/browse/INTDIST-92>`_

** odl-distribution-version contains list of bundles instead of nice feature dependency.

* `ODLPARENT-142 <https://jira.opendaylight.org/browse/ODLPARENT-142>`_

** Karaf-plugin packages mysql-connector-java.

Known Issues
------------

* `ODLPARENT-110 <https://jira.opendaylight.org/browse/ODLPARENT-110>`_

** Successive feature installation from karaf4 console causes bundles refresh.

*** **Workaround:**

  * Use --no-auto-refresh option in the karaf feature install command.

  .. code:: bash

    feature:install --no-auto-refresh odl-netconf-topology

  * List all the features you need in the karaf config boot file.
  * Install all features at once in console, for example:

  .. code:: bash

    feature:install odl-restconf odl-netconf-mdsal odl-mdsal-apidocs odl-clustering-test-app odl-netconf-topology

* `ODLPARENT-113 <https://jira.opendaylight.org/browse/ODLPARENT-113>`_

** The ssh-dss method is used by Karaf SSH console, but no longer supported by clients such as OpenSSH.

*** **Workaround:**

  * Use the bin/client script, which uses karaf:karaf as the default credentials.
  * Use this ssh option:

  .. code:: bash

    ssh -oHostKeyAlgorithms=+ssh-dss -p 8101 karaf@localhost

** After restart, Karaf is unable to re-use the generated host.key file.

*** **Workaround:** Delete the etc/host.key file before starting Karaf again.

End-of-life
===========

* Version feature is deprecated and will be removed in Flourine release.

Standards
=========

No standard implemented directly (see upstream projects).

Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/Integration/Distribution/Oxygen_Release_Plan>`_
