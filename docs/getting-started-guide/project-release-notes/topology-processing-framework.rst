============
Topology Processing Framework
============

Major Features
==============

odl-topoprocessing-framewrok
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=topoprocessing.git;a=blob;f=features/src/main/resources/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Topology processing core
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-carbon/

odl-topoprocessing-mlmt
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=topoprocessing.git;a=blob;f=features/src/main/resources/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Multi-Layer and Multi-Technology (MLMT) module
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-carbon/

odl-topoprocessing-network-topology
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=topoprocessing.git;a=blob;f=features/src/main/resources/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Support for network-topology model
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-carbon/

odl-topoprocessing-inventory
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=topoprocessing.git;a=blob;f=features/src/main/resources/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Support for inventory model
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-carbon/

odl-topoprocessing-I2rs
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=topoprocessing.git;a=blob;f=features/src/main/resources/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Support for i2rs model
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-carbon/

odl-topoprocessing-inventory-rendering
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=topoprocessing.git;a=blob;f=features/src/main/resources/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  Rendering demo
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-carbon/

Documentation
=============

* **Developer Guide(s):**

  * `Docs on docs.opendaylight.org <http://docs.opendaylight.org/en/latest/developer-guide/topology-processing-framework-developer-guide.html>`_
  * `Rst documentation <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/topology-processing-framework-developer-guide.rst;hb=refs/heads/stable/carbon>`_
  * `Wiki <https://wiki.opendaylight.org/view/Topology_Processing_Framework:Developer_Guide>`_

Security Considerations
=======================

* No external interfaces other then restconf
* No known security issues

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=31056>`_ (80.2%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-carbon/>`_

Migration
---------

* Not supported

Compatiblity
------------

* Compatible

Bugs Fixed
----------

* `Link to fixed bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=UNCONFIRMED&bug_status=CONFIRMED&bug_status=IN_PROGRESS&bug_status=WAITING_FOR_REVIEW&bug_status=RESOLVED&bug_status=VERIFIED&chfield=bug_status&chfieldfrom=2016-09-08&chfieldto=2017-04-24&component=General&product=topoprocessing&query_format=advanced&resolution=FIXED&resolution=INVALID&resolution=WONTFIX&resolution=DUPLICATE&resolution=WORKSFORME>`_

Known Issues
------------

* Leafs which are children (direct or indirect) of list can't be used as target fields
* Aggregation of termination points in case of more mappings works only if all underlay topologies are from the same model and only if that model is Network Topology or I2RS
* Aggregation of termination points in combination with aggregation of nodes doesn't work with inventory model
* Aggregation of termination points in combination with aggregation of nodes in case of more mappings works only if aggregation of termination points is specified on each underlay topology and only if model of all underlay topologies is the same
* Filtration of termination points in case of more filters works only if all underlay topologies are from the same model
* Maximum of one correlation per correlation item (aggregation may not work correctly in case of more correlation with the same correlation item)
* Link aggregation works only if user specify also link computation


**MLMT limitations**

* The mlmt module provides YANG models as based on:
  * network-topology YANG model version 2013-10-21
  * TED YANG model version 2013-10-21
* The mlmt module works with underlay topologies based on:
  * network-topology YANG model version 2013-10-21
  * isis-topology YANG model version 2013-10-21
* The mlmt module does not support underlay topologies based on ospf-topology YANG model 2013-10-21.


End-of-life
===========

* Network Topology model is not supported for overlay topologies

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/Topology_Processing_Framework:CARBON_Release_Plan>`_
