===========
BGP LS PCEP
===========

Major Features
==============

odl-bgpcep-bgp
--------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bgp/features-bgp/pom.xml;h=f5acb8c44359fb258ef3b22c00269e48a091b7ee;hb=refs/heads/stable/oxygen
* **Feature Description:**  OpenDaylight Border Gateway Protocol (BGP) plugin.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-oxygen

odl-bgpcep-bmp
--------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bmp/features-bmp/pom.xml;h=6b195866c508ea053ecec4445973467b31aa7bfe;hb=refs/heads/stable/oxygen
* **Feature Description:**  OpenDaylight BGP Monitoring Protocol (BMP) plugin.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-oxygen

odl-bgpcep-pcep
---------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=tree;f=features/pcep/features-pcep;h=252a957bf6b8549ad53cedb45bbd76dca9ba7cb5;hb=refs/heads/stable/oxygen
* **Feature Description:**  OpenDaylight Path Computation Element Configuration Protocol (PCEP) plugin.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-oxygen


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

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.bgpcep%3Abgpcep-aggregator>`_ (72.4%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/bgpcep/>`_

* `User features test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-gate-userfeatures-all-oxygen/>`_
* `PCEP performance and scale tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-throughpcep-only-oxygen/>`_
* `BGP Application peer performance and scale tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-throughpcep-all-oxygen/>`_
* `BGP performance and scale test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-bgp-ingest-mixed-all-oxygen/>`_
* `BGP clustering <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-3node-periodic-bgpclustering-ha-only-oxygen/>`_

  The BGP extensions were tested manually with vendor's BGP router implementation or other software implementations (exaBGP, bagpipeBGP). Also, they are covered by the unit tests and automated system tests.

Migration
---------

* No additional migration steps needed.

Compatibility
-------------

* Is this release compatible with the previous release?
  Yes
* Any API changes?
* Any configuration changes?
  BGP CSS configuration is not longer supported.
  BMP CSS configuration is not longer supported.
  PCEP CSS configuration is not longer supported.

Bugs Fixed
----------

* `List of bugs fixed since the previous release <https://jira.opendaylight.org/browse/BGPCEP-763?jql=project%20%3D%20BGPCEP%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20created%20%3E%3D%202017-10-07%20AND%20created%20%3C%3D%202018-03-08>`_

Known Issues
------------

* `List key known issues with workarounds <https://jira.opendaylight.org/browse/BGPCEP-762?jql=project%20%3D%20BGPCEP%20AND%20status%20in%20(Open%2C%20%22In%20Progress%22)%20AND%20created%20%3E%3D%202017-10-07%20AND%20created%20%3C%3D%202018-03-08>`_

End-of-life
===========

* BGP CSS Configuration.
* PCEP CSS Configuration.
* BMP CSS Configuration.

Standards
=========

* :ref:`BGP Supported Capabilities <bgp-user-guide-supported-capabilities>`


* `RFC5440 <https://tools.ietf.org/html/rfc5440>`_ - Path Computation Element (PCE) Communication Protocol (PCEP)
* `RFC5541 <https://tools.ietf.org/html/rfc5541>`_ - Encoding of Objective Functions in the Path Computation Element Communication Protocol (PCEP)
* `RFC5455 <https://tools.ietf.org/html/rfc5455>`_ - Diffserv-Aware Class-Type Object for the Path Computation Element Communication Protocol
* `RFC5521 <https://tools.ietf.org/html/rfc5521>`_ - Extensions to the Path Computation Element Communication Protocol (PCEP) for Route Exclusions
* `RFC5557 <https://tools.ietf.org/html/rfc5557>`_ - Path Computation Element Communication Protocol (PCEP) Requirements and Protocol Extensions in Support of Global Concurrent Optimization
* `RFC5575 <https://tools.ietf.org/html/rfc5575>`_ - Flow Specification
* `RFC5886 <https://tools.ietf.org/html/rfc5886>`_ - A Set of Monitoring Tools for Path Computation Element (PCE)-Based Architecture
* `draft-ietf-pce-pceps <https://tools.ietf.org/html/draft-ietf-pce-pceps-03>`_ - Secure Transport for PCEP

* Stateful extensions to the Path Computation Element Protocol, December 2013

  * `draft-ietf-pce-stateful-pce-07 <https://tools.ietf.org/html/draft-ietf-pce-stateful-pce-07>`_ - PCEP Extensions for Stateful PCE
  * `draft-ietf-pce-pce-initiated-lsp-00 <https://tools.ietf.org/html/draft-ietf-pce-pce-initiated-lsp-00>`_ - PCEP Extensions for PCE-initiated LSP Setup in a Stateful PCE Model

* Segment routing extension to the Path Computation Element Protocol, October 2014

  * `draft-ietf-pce-segment-routing-01 <https://tools.ietf.org/html/draft-ietf-pce-segment-routing-01>`_ - PCEP Extension for segment routing
  * `draft-ietf-pce-lsp-setup-type-01 <https://tools.ietf.org/html/draft-ietf-pce-lsp-setup-type-01>`_ - PCEP Extension for path setup type
  * `draft-ietf-pce-stateful-sync-optimizations-03 <https://tools.ietf.org/html/draft-ietf-pce-stateful-sync-optimizations-03>`_ - Optimizations of Label Switched Path State Synchronization Procedures for a Stateful PCE
  * `draft-sivabalan-pce-binding-label-sid-01 <https://tools.ietf.org/html/draft-sivabalan-pce-binding-label-sid-01>`_ - Carrying Binding Label/Segment-ID in PCE-based Networks
  * `RFC7854 <https://tools.ietf.org/html/rfc7854>`_ - BGP Monitoring Protocol

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/BGP_LS_PCEP:Oxygen_Release_Plan>`_
