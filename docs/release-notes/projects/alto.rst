=============================================
Application-Layer Traffic Optimization (ALTO)
=============================================

odl-alto-release
----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=alto.git;a=blob;f=alto-release-features/features-alto/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:**
  This feature loads all ALTO functionalities, including the simple Information
  Resource Directory service and the basic endpoint cost service (ECS), which is
  based on a simplified path computation engine (SPCE).
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/alto/job/alto-csit-1node-setup-all-oxygen/

Documentation
=============

* **User Guide(s):**

  * :ref:`ALTO User Guide <alto-user-guide>`

* **Developer Guide(s):**

  * :ref:`ALTO Developer Guide <alto-developer-guide>`

Security Considerations
=======================

Besides RESTCONF, ALTO also uses customized Jetty interfaces because YANG model
is not fully compatible with formats specified in RFC 7285.

The customized interfaces use port 8080 and are NOT protected by the AAA
project. All resources exposed by customized interfaces are read-only.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.alto%3Aalto-parent>`_ 25.4%
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/alto/job/alto-csit-1node-setup-all-oxygen/>`_
* The tests are using the OpenDaylight CSIT infrastructure.

  * How extensive was it? Not very extensive since the tests are customized to
    test certain functionalities.
  * What should be expected to work? The core modules (northbound and
    resourcepool) and also some basic components (simple-ird)
  * What has not be tested as much? Some basic components (simple-ecs and spce)
    and extended components (multicost, incremental update and RSA service).

Migration
---------

No migration is required from the Nitrogen release. Migration from earlier
versions is not supported.

Compatibility
-------------

This release is compatible with the Nitrogen release, but not those before it.

Bugs Fixed
----------

No bugs are fixed in this release.

Known Issues
------------

Parallel query for simple-ecs service can lead to failures.

* `Issue 16  <https://jira.opendaylight.org/browse/ALTO-16>`_

End-of-life
===========

* Nothing deprecated, EOL.

Standards
=========

* ALTO protocols are not compatible with YANG model
* Message types for RFC 7285 have been implemented
* ALTO project provides several basic services in RFC 7285
* Work-in-progress Internet drafts for path-vector, multi-cost, incremental
  updates and RSA service are also scheduled but not fully implemented.

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/ALTO:Oxygen_Release_Plan>`_
