======================
Transport PCE
======================

Major Features
==============

* Service Handler - translate WDM optical services creation requests so they can be treated by the different modules below - northbound API based on openroadm service models.
* Topology management
* Path Calculation Engine (PCE, here in a different meaning than the BGPCEP project since it is not based on (G)MPLS )
* Renderer - responsible for the path configuration through optical equipment - based on the netconf protocol and openroadm specifications. Southbound plugin.
* Optical Line Management (OLM)

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

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.transportpce%3Atransportpce-aggregator>`_
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/transportpce/>`_
* functional tests: look at the jenkins releng tox job or download sources and launch tox from the root folder.

Improvements
------------

* This release supports the OpenROADM device version 2.2.1 (this support was experimental in Neon)
* Openroadm and transportPCE are now based on IETF RFC8345 standard official network models (contrary to Fluorine which was relying on IETF I2RS draft).
* The discrepancies between the topology db and the portmapping has been fixed in this release.
* TransportPCE uses flexmap since Neon. The sodium release fixes a bug in the map formula used by Neon. https://git.opendaylight.org/gerrit/c/transportpce/+/84197
* TransportPCE now relies on the new ODL databroker implementation instead of the deprectad controller one. https://git.opendaylight.org/gerrit/c/transportpce/+/83996
* Others deprecated functions related to Transaction services have also been migrated https://git.opendaylight.org/gerrit/c/transportpce/+/83839/1

