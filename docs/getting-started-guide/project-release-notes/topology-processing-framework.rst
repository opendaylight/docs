=============================
Topology Processing Framework
=============================

Major Features
==============

odl-topoprocessing-framework
----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=topoprocessing.git;a=blob;f=features/odl-topoprocessing-framework/pom.xml;h=c1c7b89ddb42af81efbeb5ae444e3179b0a14533;hb=refs/heads/stable/nitrogen
* **Feature Description:**  Topology processing core
* **Top Level:** No
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-nitrogen/

odl-topoprocessing-mlmt
-----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=topoprocessing.git;a=blob;f=features/odl-topoprocessing-mlmt/pom.xml;h=9fe3d505825f0f06dfcb166708b629d06855ec72;hb=refs/heads/stable/nitrogen
* **Feature Description:**  Multi-Layer and Multi-Technology (MLMT) module
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-nitrogen/

odl-topoprocessing-network-topology
-----------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=topoprocessing.git;a=blob;f=features/odl-topoprocessing-network-topology/pom.xml;h=0de34de8dd99de3ac4b0c0bc5908a1de24a8f7ea;hb=refs/heads/stable/nitrogen
* **Feature Description:**  Support for network-topology model
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-nitrogen/

odl-topoprocessing-inventory
----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=topoprocessing.git;a=blob;f=features/odl-topoprocessing-inventory/pom.xml;h=ef8b9c3b1cffc72bf871fd7168799ab797e05e5d;hb=refs/heads/stable/nitrogen
* **Feature Description:**  Support for inventory model
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-nitrogen/

odl-topoprocessing-I2rs
-----------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=topoprocessing.git;a=blob;f=features/odl-topoprocessing-i2rs/pom.xml;h=f6b747cadfebc92d6df58e84ed894ffd390d6768;hb=refs/heads/stable/nitrogen
* **Feature Description:**  Support for i2rs model
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-nitrogen/

odl-topoprocessing-inventory-rendering
--------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=topoprocessing.git;a=blob;f=features/odl-topoprocessing-inventory-rendering/pom.xml;h=cf278e2429f7ae048eac134a7c7b7f7095d4ba24;hb=refs/heads/stable/nitrogen
* **Feature Description:**  Rendering demo
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-nitrogen/

Documentation
=============

* **Developer Guide(s):**

  * :ref:`topoprocessing-dev-guide`
  * `Wiki <https://wiki.opendaylight.org/view/Topology_Processing_Framework:Developer_Guide>`_

Security Considerations
=======================

* No external interfaces other then restconf
* No known security issues

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=org.opendaylight.topoprocessing%3Atopoprocessing-aggregator>`_ (80%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/topoprocessing/job/topoprocessing-csit-1node-topology-operations-all-nitrogen/>`_

Migration
---------

* Not supported

Compatibility
-------------

* Compatible

Bugs Fixed
----------

* `Link to fixed bugs <https://bugs.opendaylight.org/buglist.cgi?chfield=bug_status&chfieldto=Now&component=General&f1=bug_status&f2=bug_status&o1=changedafter&o2=changedbefore&product=topoprocessing&query_format=advanced&resolution=FIXED&v1=2017-4-24&v2=2017-9-11>`_

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

* `Link to release plan <https://wiki.opendaylight.org/view/Topology_Processing_Framework:NITROGEN_Release_Plan>`_
