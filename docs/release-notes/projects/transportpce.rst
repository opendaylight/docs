=============
Transport PCE
=============

Major Features
==============

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Bug ID**
     - **Description**

   * - Service Handler
     - Translates WDM optical services creation requests, so they can be
       treated by the different modules - northbound API based on Open
       ROADM service models.
   * - Topology management
     - Provides topology management.
   * - Path Calculation Engine (PCE)
     - Provides a different meaning than the BGPCEP project,
       since it is not based on (G)MPLS)
   * - Renderer
     - Responsible for the path configuration through optical equipment,
       based on the NETCONF protocol and Open ROADM specifications.
       Southbound plugin.
   * - Optical Line Management (OLM)
     - Provides an optical fiber line monitoring and management.

Documentation
=============

* **User Guide(s):**

  * :doc:`transportpce:user-guide`

* **Developer Guide(s):**

  * :doc:`transportpce:developer-guide`

Security Considerations
=======================

* There are no security issues found.

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.transportpce%3Atransportpce-aggregator>`_
* `CSIT Jobs <https://jenkins.opendaylight.org/releng/view/transportpce/>`_
* functional tests: look at the jenkins releng tox job or download sources and launch tox from the root folder.

Improvements
------------

* Supports the OpenROADM device version 2.2.1 (this support was experimental in Neon)
* Openroadm and transport PCE are now based on IETF RFC8345 standard official network models
  (contrary to Fluorine which was relying on IETF I2RS draft).
* Discrepancies between the topology db and the portmapping has been fixed in this release.
* Transport PCE uses flexmap since Neon. The sodium release fixes a bug in the map formula
  used by Neon. https://git.opendaylight.org/gerrit/c/transportpce/+/84197
* Transport PCE now relies on the new ODL databroker implementation instead of the deprecated
  controller one: `83996 <https://git.opendaylight.org/gerrit/c/transportpce/+/83996>`_
* Others deprecated functions related to Transaction services have also been migrated,
  refer to `83839 <https://git.opendaylight.org/gerrit/c/transportpce/+/83839/1>`_

Documentation
=============

* N/A

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * No

* Other security issues?

  * N/A

Quality Assurance
=================

* N/A

Migration
=========

* Is it possible to migrate from the previous release? If so, how?

  * Yes, a normal upgrade of the software should work.

Compatibility
=============

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * No

* Any configuration changes?

  * No

Bugs Fixed
==========

* N/A

Known Issues
============

* N/A

End-of-life
===========

* List of features/APIs that were EOLed, deprecated, and/or removed from this release

  * N/A

Standards
=========

* List of standards implemented.

  * N/A

Release Mechanics
=================

* N/A

