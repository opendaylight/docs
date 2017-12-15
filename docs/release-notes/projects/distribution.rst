========================
Integration/Distribution
========================

Major Features
==============

odl-integration-all
-------------------

* **Gitweb URL:** https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/singles/odl-integration-all/pom.xml;h=c3df09e8828ff16299d96f82e78b1901de1a60ca;hb=refs/heads/stable/nitrogen
* **Description:** An aggregate feature grouping all user-facing ODL features
  which can be installed together without Karaf becoming unusable or without port conflicts.
* **Top Level:** Yes.
* **User Facing:** Yes, but not intended for production use (only for testing purposes).
* **Experimental:** No.
* **CSIT Test:** https://jenkins.opendaylight.org/releng/job/distribution-deploy-nitrogen

odl-integration-compatible-with-all
-----------------------------------

* **Gitweb URL:** https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/singles/odl-integration-compatible-with-all/pom.xml;h=5ddd52a15cdc658ed18f4647469666b8c849cf4c;hb=refs/heads/stable/nitrogen
* **Description:** An aggregate feature grouping all user-facing ODL features
  which are not pro-active and which (as a group) should be compatible with most other ODL features.
* **Top Level:** Yes.
* **User Facing:** Yes, but not intended for production use (only for testing purposes).
* **Experimental:** No.
* **CSIT Test:** https://jenkins.opendaylight.org/releng/job/distribution-csit-1node-userfeatures-all-nitrogen

odl-distribution-version
------------------------

* **Gitweb URL:** https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features/singles/odl-distribution-version/pom.xml;h=b504cbeb6889379492d33322f1c5cfa488a207a4;hb=refs/heads/stable/nitrogen
* **Description:** Allows NETCONF/RESTCONF users to determine the version of ODL they are communicating with.
* **Top Level:** Yes.
* **User Facing:** Yes.
* **Experimental:** No.
* **CSIT Test:** https://jenkins.opendaylight.org/releng/job/distribution-csit-1node-userfeatures-all-nitrogen

Karaf 4 distribution archive
----------------------------
* **Gitweb URL:** https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=karaf/pom.xml;h=082fd09a2467e02e4303f8a5ce0bd42b48ad0267;hb=refs/heads/stable/nitrogen
* **Description:** Zip or tar.gz; when extracted, a self-consistent ODL installation is created.
* **Top Level:** Yes.
* **User Facing:** Yes.
* **Experimental:** No.
* **CSIT Test:** https://jenkins.opendaylight.org/releng/job/distribution-deploy-nitrogen

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

  There is `Bug 9044 <https://bugs.opendaylight.org/show_bug.cgi?id=9044>` which limits
  accessibility of karaf console over SSH after restart.

* `Sonar Report <https://sonar.opendaylight.org/overview?id=61911>`_ (0%)

  * Only 42 lines of java `code <https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=tree;f=version/src/main/java/org/opendaylight/yang/gen/v1/urn/opendaylight/params/xml/ns/yang/integration/distribution/version/rev160316;h=517b2d5a2e726b77360389a20ad8cd8b1a0a6a46;hb=refs/heads/stable/nitrogen>`_.

* `Test report page <https://wiki.opendaylight.org/view/Integration/Distribution/Nitrogen_Test_Report>`_

* No additional manual testing was needed.

Migration
---------

* Version feature works exactly the same as in Carbon.
  After migration the versions are set to the new default, configurable in runtime or via configfile.
  The Carbon configfile would work, but users are strongly advised to consider reporting the migrated versions.
* No upgrade path for other major features.

Compatibility
-------------

* Multiple API changes, as Nitrogen is Karaf 4 while Carbon was Karaf 3.
* Even odl-distribution-version depends on different version of Config Subsystem.
* Only cluster configuration scripts remained compatible.

Bugs Fixed
----------

None since Carbon SR1 release.

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

* `ODLPARENT-115 <https://jira.opendaylight.org/browse/ODLPARENT-115>`_

** Karaf is slow to start processing features after start.

*** **Workaround:** Use a wait loop to continue only when OpenDaylight starts restonding correctly
    to requests to the desired northbound interface.
    If no OpenDaylight feature is installed, use bin/client in the wait loop
    until Karaf SSH console starts responding.

End-of-life
===========

* All APIs and functionalities related to Karaf 3 were removed.
  Only Karaf 4 (or higher) will be supported from now on.

Standards
=========

No standard implemented directly (see upstream projects).

Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/Integration/Distribution/Nitrogen_Release_Plan>`_

* Major shifts in release schedule

  * Upstream OpenDaylight projects were slow to controbute their Karaf 4 features and debug them when needed.
  * While project deliverables were relatively on time, wiki updates were late,
    and documentation and milestone report were extremely late.
