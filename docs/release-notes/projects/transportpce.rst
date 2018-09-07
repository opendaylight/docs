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

Transport PCE
--------------

* **Feature Name:** odl-transportpce
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=transportpce.git;a=blob;f=features/odl-transportpce/pom.xml;h=26a6853f7f966773c05d28bad7da520ca40c8552;hb=ede744b394b97793432036a0b33c8f131ee37ae1
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/transportpce/

Documentation
=============

* **User Guide(s):**

  * :ref:`transportpce-user-guide`

* **Developer Guide(s):**

  * :ref:`transportpce-dev-guide`

Security Considerations
=======================

* There are no security issues found.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.transportpce%3Atransportpce-aggregator>`_
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/transportpce/>`_
* functests: download sources and launch tox from the tests folder. `Link to functests sources <https://git.opendaylight.org/gerrit/gitweb?p=transportpce.git;a=tree;f=tests;h=67709be57897dbb9b0af5a67d6dc0a4e98c002ac;hb=ede744b394b97793432036a0b33c8f131ee37ae1`


Known Issues
------------

* Openroadm naming convention changed. There might be some discrepancies between the topology db and the portmapping process that can result in warnings.
* Openroadm and transportPCE are still based on IETF I2RS network models first draft . Fluorine MD-SAL core has now switched to the newer RFC8345 official standard.