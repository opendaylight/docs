=============================================
Application-Layer Traffic Optimization (ALTO)
=============================================

odl-alto-release
----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=alto.git;a=blob;f=alto-release-features/features-alto/src/main/features/features.xml
* **Feature Description:**  This is a summary feature containing the default
  functionalities provided by ALTO project.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/alto/job/alto-csit-1node-setup-all-carbon/

Documentation
=============

* **User Guide(s):**

  * `ALTO User Guide
    <http://docs.opendaylight.org/en/latest/user-guide/alto-user-guide.html>`_

* **Developer Guide(s):**

  * `ALTO Developer Guide
    <http://docs.opendaylight.org/en/latest/developer-guide/alto-developer-guide.html>`_

Security Considerations
=======================

Besides RESTCONF, ALTO also uses customized Jetty interfaces because YANG model
is not compatible with formats specified in RFC 7285.

The customized interfaces use port 8080. All resources exposed by customized
interfaces are read-only.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=50636>`_ 22.0%
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/alto/job/alto-csit-1node-setup-all-carbon/>`_
* Testing methodology. How extensive was it? What should be expected to work?
  What has not been tested as much?

Migration
---------

ALTO is migrating services to Blueprint.

Services depending on ALTO may also need to migrate to Blueprint instead of
using CONFIG subsystem.

Compatiblity
------------

This release is not compatible with the previous release from the developer's
point of view because we have changed the namespaces for most YANG models, which
involves both API changes and configuration changes (blueprint configuration
files).

The incompatiblity can be fixed using regex replacement.

Bugs Fixed
----------

N/A

Known Issues
------------

* `Bug 5753 <https://bugs.opendaylight.org/show_bug.cgi?id=5753>`_

This seems like a general bug which resides in several projects.

End-of-life
===========

N/A

Standards
=========

* ALTO protocols are not compatible with YANG model
* Message types for RFC 7285 have been implemented
* ALTO project provides several basic services in RFC 7285
* Work-in-progress Internet drafts for multi-cost, incremental updates and RSA
  service are also scheduled but not fully implemented.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/ALTO:Carbon_Release_Plan>`_
* Major shifts:
** Unable to finish the extensions (multi-cost, incremental update and RSA service)
** Unable to reach the goal of improving code quality
