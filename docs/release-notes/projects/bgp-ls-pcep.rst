===========
BGP LS PCEP
===========

Major Features
==============

odl-bgpcep-bgp
--------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bgp/odl-bgpcep-bgp/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  OpenDaylight Border Gateway Protocol (BGP) plugin.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-fluorine

odl-bgpcep-bmp
--------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bmp/odl-bgpcep-bmp/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  OpenDaylight BGP Monitoring Protocol (BMP) plugin.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-fluorine

odl-bgpcep-pcep
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/pcep/odl-bgpcep-pcep/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  OpenDaylight Path Computation Element Configuration Protocol (PCEP) plugin.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-fluorine


Documentation
=============

* **User Guide(s):**

  * :ref:`BGP User Guide <bgp-user-guide>`
  * :ref:`BGP Monitoring Protocol User Guide <bgp-monitoring-protocol-user-guide>`
  * :ref:`PCEP User Guide <pcep-user-guide>`

* **Developer Guide(s):**

  * :ref:`BGP Developer Guide <bgp-developer-guide>`
  * :ref:`BGP Monitoring Protocol Developer Guide <bgp-monitoring-protocol-developer-guide>`
  * :ref:`PCEP Developer Guide <pcep-developer-guide>`

Security Considerations
=======================

None Known - all protocol implements the TCP Authentication Option (TCP MD5)

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.bgpcep%3Abgpcep-aggregator>`_ (70.7%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/bgpcep/>`_

* `User features test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-fluorine>`_
* `PCEP performance and scale tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-throughpcep-all-fluorine>`_
* `BGP Application peer performance and scale tests <https://logs.opendaylight.org/releng/vex-yul-odl-jenkins-1/bgpcep-csit-1node-bgp-ingest-all-fluorine>`_
* `BGP performance and scale test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-bgp-ingest-mixed-all-fluorine>`_
* `BGP clustering HA <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-3node-bgpclustering-ha-only-fluorine>`_
* `BGP clustering features tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-3node-bgpclustering-all-fluorine>`_
* `BGP clustering longevity <https://logs.opendaylight.org/releng/vex-yul-odl-jenkins-1/bgpcep-csit-3node-bgpclustering-longevity-only-fluorine>`_

  The BGP extensions were tested manually with vendor's BGP router implementation or other software implementations (exaBGP, bagpipeBGP). Also, they are covered by the unit tests and automated system tests.

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * Yes, no specific steps outside of configuration adjustments are needed.

Compatibility
-------------

* Is this release compatible with the previous release?
  Yes.
* Any API changes?
  BGP - New Policy configuration aswell as suppport for additional path for all families features, introduced changes under multiple modules API.
* Any configuration changes?
  BGP - Yes, Configuration needs to be updated to latest features configuration as documented under user guide.

Bugs Fixed
----------

* `List of bugs fixed since the previous release <https://jira.opendaylight.org/browse/BGPCEP-817?jql=project%20%3D%20BGPCEP%20AND%20type%20%3D%20Bug%20AND%20%20status%20in%20(Resolved%2C%20Verified)%20AND%20fixVersion%20%3D%20Fluorine%20>`_

Known Issues
------------

* List key known issues with workarounds

  * None

End-of-life
===========

  * Various APIs and classes in the bgpcep project that have been long since
    deprecated and no longer used have been removed.


Standards
=========

* :ref:`BGP Supported Capabilities <bgp-user-guide-supported-capabilities>`
* :ref:`PCEP Supported Capabilities <pcep-user-guide-supported-capabilities>`
* :ref:`BGP Monitoring Protocol Supported Capabilities <bgp-monitoring-protocol-user-guide-supported-capabilities>`

Release Mechanics
=================

* `Link to release plan <https://jira.opendaylight.org/browse/TSC-53>`_
