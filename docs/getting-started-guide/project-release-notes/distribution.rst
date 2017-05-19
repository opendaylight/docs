========================
Integration/Distribution
========================

Major Features
==============

odl-integration-all
-------------------

* **Gitweb URL:** https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features3-test/src/main/features/features.xml;h=f6ce8c214ef95c5a8dbc3b34ae6616a8a7cdb33c;hb=refs/heads/stable/carbon
* **Description:** An aggregate feature grouping all user-facing ODL features
  which can be installed together without Karaf becoming unusable or without port conflicts.
* **Top Level:** Yes
* **User Facing:** No (CSIT purposes only)
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/distribution/job/distribution-deploy-carbon

odl-integration-compatible-with-all
-----------------------------------

* **Gitweb URL:** https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features3-test/src/main/features/features.xml;h=f6ce8c214ef95c5a8dbc3b34ae6616a8a7cdb33c;hb=refs/heads/stable/carbon
* **Description:** An aggregate feature grouping all user-facing ODL features
  which are not pro-active and which (as a group) should be compatible with most other ODL features.
* **Top Level:** Yes
* **User Facing:** No (CSIT purposes only)
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/distribution/job/distribution-csit-1node-userfeatures-all-carbon

odl-distribution-version
------------------------

* **Gitweb URL:** https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=features3-distribution/src/main/features/features.xml;h=f98959f9eb5f6ff8b05dbe8ebc57b74576b93ff4;hb=refs/heads/stable/carbon
* **Description:** Allows netconf/restconf users to determine the version of ODL they are communicating with.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/distribution/job/distribution-csit-1node-userfeatures-only-carbon

Karaf 3 distribution archive
----------------------------
* **Gitweb URL:** https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=distribution-karaf/pom.xml;h=32c813b8f9aac3121f7fd3cadec4b4c6732c4d61;hb=refs/heads/stable/carbon
* **Description:** Zip or tar.gz; when extracted, a self-consistent ODL installation is created.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/distribution/job/distribution-offline-carbon

Karaf 4 distribution archive
----------------------------
* **Gitweb URL:** https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=blob;f=karaf/pom.xml;h=c32a84345c6d89e106d0e07028a0a592946fccf6;hb=refs/heads/stable/carbon
* **Description:** Zip or tar.gz; when extracted, a self-consistent ODL installation is created.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** Removed to save resources.

Documentation
=============

* **Installation Guide:**

  * `Downloading and installing OpenDaylight <http://docs.opendaylight.org/en/latest/getting-started-guide/installing_opendaylight.html#downloading-and-installing-opendaylight>`_

* **User Guide:**

  * `Clustering scripts <http://docs.opendaylight.org/en/latest/getting-started-guide/common-features/clustering.html#clustering-scripts>`_

* **Developer Guide:**

  * `Distribution Version <http://docs.opendaylight.org/en/latest/developer-guide/distribution-version.html>`_

Security Considerations
=======================

* Karaf 3 exposes ssh console on port 8101.
  The security basically basically the same as in upstream Karaf of corresponding versions,
  except library version overrides implemented in odlparent:karaf-parent.

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/overview?id=61911>`_ (0%)

  * Only 42 lines of java `code <https://git.opendaylight.org/gerrit/gitweb?p=integration/distribution.git;a=tree;f=version/src/main/java/org/opendaylight/yang/gen/v1/urn/opendaylight/params/xml/ns/yang/integration/distribution/version/rev160316;h=517b2d5a2e726b77360389a20ad8cd8b1a0a6a46;hb=refs/heads/stable/carbon>`_.

* `Test report page <https://wiki.opendaylight.org/view/Integration/Distribution/Carbon_Test_Report>`_
* No additional manual testing.
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?

Migration
---------

* Version feature works exactly the same as in Boron.
  After migration the versions are set to the new default, configurable in runtime or via configfile.
  The Boron configfile would work, but users are advised to consider reporting a bumped version.
* No upgrade path for other features.

Compatiblity
------------

* No API changes in Karaf 3.
* Karaf features are not compatible with Boron.

  * even odl-distribution-version depends on different version of Config Subsystem.

Bugs Fixed
----------

* `Bug 4296 <https://bugs.opendaylight.org/show_bug.cgi?id=4296>`_:
  At the time of Boron release, the default versions were not being set properly. Now they are.
* `Bug 7255 <https://bugs.opendaylight.org/show_bug.cgi?id=7255>`_:
  During Carbon deveopment -all- jobs for Netconf started to fail.
  Turns out Netconf provides two netconf topology managers (single node or cluster)
  which are incompatible with each other.
  Fixed by moving both out of odl-integration-compatible-with-all.
* `Bug 7493 <https://bugs.opendaylight.org/show_bug.cgi?id=7493>`_:
  Controller briefly used Artery, but distribution scripts were not compatible with that.
  After all, Artery is not used in Carbon release,
  but the scripts now contain information how to make them compatible if needed.
* `Bug 4219 <https://bugs.opendaylight.org/show_bug.cgi?id=4219>_:
  Karaf 4 features and archives are available, but in experimental state only.
  Netconf server and netconf connectors do not work. Restconf works only up to attempted re-install.


Known Issues
------------

* No known issues for Karaf 3.
* Karaf 4 is highly experimental.

End-of-life
===========

No features/APIs which are EOLed, deprecated, and/or removed in this release.

Standards
=========

No standard implemented directly (see upstream projects).

Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/Integration/Distribution/Carbon_Release_Plan>`_
* Major shifts in release schedule

  * Karaf 4 was running late due to difficulty of making CSIT work.
    Eventually Karaf 4 was moved to experimental status.
  * Team Lead was often busy, neglecting status updates.
