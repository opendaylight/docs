===========
BGP LS PCEP
===========

BGP Plugin
==========

The OpenDaylight controller provides an implementation of BGP
(Border Gateway Protocol), which is based on `RFC 4271 <https://tools.ietf.org/html/rfc4271>`_)
as a south-bound protocol plugin. The implementation renders all
basic *BGP speaker capabilities*, including:

* inter/intra-AS peering
* routes advertising
* routes originating
* routes storage

The plugin's **north-bound API** (``REST``/``Java``) provides to user:

* fully dynamic runtime standardized BGP configuration
* read-only access to all RIBs
* read-write programmable RIBs
* read-only reachability/linkstate topology view

PCEP Plugin
===========
The OpenDaylight Path Computation Element Communication Protocol (PCEP)
plugin provides all basic service units necessary to build-up a
PCE-based controller. Defined by `rfc8231 <https://tools.ietf.org/html/rfc8231>`_,
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

* Feature URL: `BGPCEP BGP <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bgp/features-bgp/pom.xml;h=f5acb8c44359fb258ef3b22c00269e48a091b7ee;hb=refs/heads/stable/sodium>`_
* Feature Description: OpenDaylight Border Gateway Protocol (BGP) plugin.
* Top Level: Yes
* User Facing: Yes
* Experimental: No
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-sodium>`_

odl-bgpcep-bmp
--------------

* Feature URL: `BGPCEP BMP <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bmp/features-bmp/pom.xml;h=6b195866c508ea053ecec4445973467b31aa7bfe;hb=refs/heads/stable/sodium>`_
* Feature Description: OpenDaylight BGP Monitoring Protocol (BMP) plugin.
* Top Level: Yes
* User Facing: Yes
* Experimental: No
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-sodium>`_

odl-bgpcep-pcep
---------------

* Feature URL: `BGPCEP PCEP <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=tree;f=features/pcep/features-pcep;h=252a957bf6b8549ad53cedb45bbd76dca9ba7cb5;hb=refs/heads/stable/sodium>`_
* Feature Description: OpenDaylight Path Computation Element Configuration Protocol (PCEP) plugin.
* Top Level: Yes
* User Facing: Yes
* Experimental: No
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-sodium>`_

Documentation
=============

User Guide(s):
--------------

* N/A

.. * `BGP User Guide <https://docs.opendaylight.org/en/stable-sodium/user-guide/bgpcep-guide/bgp/index.html#bgp-user-guide>`_
.. * `BGP Monitoring Protocol User Guide <https://docs.opendaylight.org/en/stable-sodium/user-guide/bgpcep-guide/bmp/index.html#bgp-monitoring-protocol-user-guide>`_
.. * `PCEP User Guide <https://docs.opendaylight.org/en/stable-sodium/user-guide/bgpcep-guide/pcep/index.html#pcep-user-guide>`_

Developer Guide(s):
-------------------

* N/A

.. * `BGP Developer Guide <https://docs.opendaylight.org/en/stable-sodium/user-guide/bgpcep-guide/bgp/index.html#bgp-user-guide>`_
.. * `BGP Monitoring Protocol Developer Guide <https://docs.opendaylight.org/en/stable-sodium/user-guide/bgpcep-guide/bmp/index.html#bgp-monitoring-protocol-user-guide>`_
.. * `PCEP Developer Guide <https://docs.opendaylight.org/en/stable-sodium/user-guide/bgpcep-guide/pcep/index.html#pcep-user-guide>`_

Security Considerations
=======================

* None Known: All protocol implements the TCP Authentication Option (TCP MD5)

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.bgpcep%3Abgpcep-aggregator>`_ (72.4%)
* `CSIT Jobs <https://jenkins.opendaylight.org/releng/view/bgpcep/>`_
* `User features test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-gate-userfeatures-all-sodium/>`_

.. * `PCEP performance and scale tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-throughpcep-only-sodium/>`_
.. * `BGP Application peer performance and scale tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-throughpcep-all-sodium/>`_
.. * `BGP performance and scale test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-periodic-bgp-ingest-mixed-all-sodium/>`_
.. * `BGP clustering <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-3node-periodic-bgpclustering-ha-only-sodium/>`_

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

  * BGP CSS configuration is not longer supported. BMP CSS configuration is
    not longer supported. PCEP CSS configuration is not longer supported.


New and Modified Features
=========================

This releases provides the following new and modified features:

* `BGPCEP-871 <https://jira.opendaylight.org/browse/BGPCEP-871>`_: RPC to provide PCEP session statistics
* `BGPCEP-868 <https://jira.opendaylight.org/browse/BGPCEP-868>`_: Support for draft-ietf-idr-ext-opt-param


Bug Fixes
=========

* `Closed Bugs <https://jira.opendaylight.org/browse/BGPCEP-877?jql=project%20%3D%20BGPCEP%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20fixVersion%20%3D%20Sodium>`_

Known Issues
============

* `Open Bugs <https://jira.opendaylight.org/browse/BGPCEP-880?jql=project%20%3D%20BGPCEP%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Open%2C%20"In%20Progress"%2C%20"In%20Review"%2C%20Confirmed)>`_

End-of-life
===========

* BGP CSS Configuration.
* PCEP CSS Configuration.
* BMP CSS Configuration.

Standards
=========

* N/A

.. * `BGP Supported Capabilities <https://docs.opendaylight.org/en/stable-sodium/user-guide/bgpcep-guide/bgp/bgp-user-guide-supported-capabilities.html#bgp-user-guide-supported-capabilities>`_
.. * `PCEP Supported Capabilities <https://docs.opendaylight.org/en/stable-sodium/user-guide/bgpcep-guide/pcep/pcep-user-guide-supported-capabilities.html#pcep-user-guide-supported-capabilities>`_
.. * `BGP Monitoring Protocol Supported Capabilities <https://docs.opendaylight.org/en/stable-sodium/user-guide/bgpcep-guide/bmp/bgp-monitoring-protocol-user-guide-supported-capabilities.html#bgp-monitoring-protocol-user-guide-supported-capabilities>`_

Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/BGP_LS_PCEP:Sodium_Release_Plan>`_
