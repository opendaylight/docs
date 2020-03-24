===========
BGP LS PCEP
===========

BGP Plugin
==========

The OpenDaylight controller provides an implementation of BGP
(Border Gateway Protocol), which is based on `RFC 4271 <https://tools.ietf.org/html/rfc4271>`_)
as a south-bound protocol plugin. The implementation renders all
basic *BGP speaker capabilities*, including:

* Inter/Intra-AS peering
* Routes advertising
* Routes originating
* Routes storage

The plugin's **north-bound API** (``REST``/``Java``) provides to user:

* Fully dynamic runtime standardized BGP configuration
* Read-only access to all RIBs
* Read-write programmable RIBs
* Read-only reachability/linkstate topology view

PCEP Plugin
===========
The OpenDaylight Path Computation Element Communication Protocol (PCEP)
plugin provides all basic service units necessary to build-up a
PCE-based controller. Defined by `RFC 8231 <https://tools.ietf.org/html/rfc8231>`_,
PCEP offers LSP management functionality for Active Stateful PCE, which is
the cornerstone for majority of PCE-enabled SDN solutions. It consists of
the following components:

* Protocol library
* PCEP session handling
* Stateful PCE LSP-DB
* Active Stateful PCE LSP Operations

Major Features
==============

odl-bgpcep-bgp
--------------

* Feature URL: `BGPCEP BGP <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bgp/features-bgp/pom.xml;h=f5acb8c44359fb258ef3b22c00269e48a091b7ee;hb=refs/heads/stable/magnesium>`_
* Feature Description: OpenDaylight Border Gateway Protocol (BGP) plugin.
* Top Level: Yes
* User Facing: Yes
* Experimental: No
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-magnesium>`_

odl-bgpcep-bmp
--------------

* Feature URL: `BGPCEP BMP <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bmp/features-bmp/pom.xml;h=6b195866c508ea053ecec4445973467b31aa7bfe;hb=refs/heads/stable/magnesium>`_
* Feature Description: OpenDaylight BGP Monitoring Protocol (BMP) plugin.
* Top Level: Yes
* User Facing: Yes
* Experimental: No
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-magnesium>`_

odl-bgpcep-pcep
---------------

* Feature URL: `BGPCEP PCEP <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=tree;f=features/pcep/features-pcep;h=252a957bf6b8549ad53cedb45bbd76dca9ba7cb5;hb=refs/heads/stable/magnesium>`_
* Feature Description: OpenDaylight Path Computation Element Configuration Protocol (PCEP) plugin.
* Top Level: Yes
* User Facing: Yes
* Experimental: No
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-magnesium>`_

Documentation
=============

User Guide(s):
--------------

* N/A

.. * `BGP User Guide <https://docs.opendaylight.org/projects/bgpcep/en/latest/bgp/index.html>`_
.. * `BGP Monitoring Protocol User Guide <https://docs.opendaylight.org/projects/bgpcep/en/latest/bmp/index.html>`_
.. * `PCEP User Guide <https://docs.opendaylight.org/projects/bgpcep/en/latest/pcep/index.html>`_
.. * `Graph Model User Guide <https://docs.opendaylight.org/projects/bgpcep/en/latest/graph/index.html>`_
.. * `Path Computation Algorithms User Guide <https://docs.opendaylight.org/projects/bgpcep/en/latest/algo/index.html>`_

Developer Guide(s):
-------------------

* N/A

.. * `BGP Developer Guide <https://docs.opendaylight.org/projects/bgpcep/en/latest/bgp-developer-guide.html>`_
.. * `BGP Monitoring Protocol Developer Guide <https://docs.opendaylight.org/projects/bgpcep/en/latest/bgp-monitoring-protocol-developer-guide.html>`_
.. * `PCEP Developer Guide <https://docs.opendaylight.org/projects/bgpcep/en/latest/pcep-developer-guide.html>`_

Security Considerations
=======================

* None Known: All protocol implements the TCP Authentication Option (TCP MD5)

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.bgpcep%3Abgpcep-aggregator>`_ (76.1%)
* `CSIT Jobs <https://jenkins.opendaylight.org/releng/view/bgpcep/>`_
* `User features test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-gate-userfeatures-all-magnesium/>`_

.. * `PCEP performance and scale tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-throughpcep-only-magnesium/>`_
.. * `BGP Application peer performance and scale tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-throughpcep-all-magnesium/>`_
.. * `BGP performance and scale test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-bgp-ingest-mixed-all-magnesium/>`_
.. * `BGP clustering <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-3node-periodic-bgpclustering-ha-only-magnesium/>`_

The BGP extensions were tested manually with a vendor’s BGP router
implementation or other software implementations (exaBGP, bagpipeBGP).
Also, they are covered by the unit tests and automated system tests.

Migration
=========

No additional migration steps needed.

Compatibility
=============

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * No

* Any configuration changes?

  * No

New and Modified Features
=========================

This releases provides the following new and modified features:

* `BGPCEP-858 <https://jira.opendaylight.org/browse/BGPCEP-858>`_: Add support for missing RFC 5440 features" (including Topology Graph and Path Computation Algorithms)
* `BGPCEP-365 <https://jira.opendaylight.org/browse/BGPCEP-365>`_: BGP-LS topology provider support for Segment Routing
* `BGPCEP-790 <https://jira.opendaylight.org/browse/BGPCEP-790>`_: Use ipv4-address-no-zone
* `BGPCEP-715 <https://jira.opendaylight.org/browse/BGPCEP-715>`_: Enforce PCEP Checkstyle

Bug Fixes
=========

* `Closed Bugs <https://jira.opendaylight.org/browse/BGPCEP-877?jql=project%20%3D%20BGPCEP%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20fixVersion%20%3D%20Magnesium>`_

Known Issues
============

* `Open Bugs <https://jira.opendaylight.org/browse/BGPCEP-880?jql=project%20%3D%20BGPCEP%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Open%2C%20"In%20Progress"%2C%20"In%20Review"%2C%20Confirmed)>`_

End-of-life
===========

* None

Standards
=========

* N/A

.. * `BGP Supported Capabilities <https://docs.opendaylight.org/projects/bgpcep/en/latest/bgp/bgp-user-guide-supported-capabilities.html>`_
.. * `BGP Monitoring Protocol Supported Capabilities <https://docs.opendaylight.org/projects/bgpcep/en/latest/bmp/bgp-monitoring-protocol-user-guide-supported-capabilities.html>`_
.. * `PCEP Supported Capabilities <https://docs.opendaylight.org/projects/bgpcep/en/latest/pcep/pcep-user-guide-supported-capabilities.html>`_

Release Mechanics
=================

* `Release plan <https://jira.opendaylight.org/browse/TSC-247>`_

