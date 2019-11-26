===========
BGP LS PCEP
===========

BGP Plugin
----------

The OpenDaylight controller provides an implementation of BGP
(Border Gateway Protocol), which is based on `RFC 4271 <https://tools.ietf.org/html/rfc4271>`_
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
-----------

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
--------------

odl-bgpcep-bgp
~~~~~~~~~~~~~~

* Feature URL: `BGPCEP BGP <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/pcep/features-pcep/pom.xml;h=1e30b1244b142493bfe4559def0439a1c5eebd38;hb=refs/heads/stable/neon>`_
* Feature Description: OpenDaylight Border Gateway Protocol (BGP) plugin.
* Top Level: Yes
* User Facing: Yes
* Experimental: No
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-neon>`_

odl-bgpcep-bmp
~~~~~~~~~~~~~~

* Feature URL: `BGPCEP BMP <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=blob;f=features/bmp/features-bmp/pom.xml;h=6b195866c508ea053ecec4445973467b31aa7bfe;hb=refs/heads/stable/neon>`_
* Feature Description: OpenDaylight BGP Monitoring Protocol (BMP) plugin.
* Top Level: Yes
* User Facing: Yes
* Experimental: No
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-neon>`_

odl-bgpcep-pcep
~~~~~~~~~~~~~~~

* Feature URL: `BGPCEP PCEP <https://git.opendaylight.org/gerrit/gitweb?p=bgpcep.git;a=tree;f=features/pcep/features-pcep;h=252a957bf6b8549ad53cedb45bbd76dca9ba7cb5;hb=refs/heads/stable/neon>`_
* Feature Description: OpenDaylight Path Computation Element Configuration Protocol (PCEP) plugin.
* Top Level: Yes
* User Facing: Yes
* Experimental: No
* CSIT Test: `CSIT <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-neon>`_

Documentation
-------------

User Guide(s):
~~~~~~~~~~~~~~

* `BGP User Guide <https://docs.opendaylight.org/projects/bgpcep/en/stable-neon/bgp/index.html>`_
* `BGP Monitoring Protocol User Guide <https://docs.opendaylight.org/projects/bgpcep/en/stable-neon/bmp/index.html>`_
* `PCEP User Guide <https://docs.opendaylight.org/projects/bgpcep/en/stable-neon/pcep/index.html>`_

Developer Guide(s):
~~~~~~~~~~~~~~~~~~~

* `BGP Developer Guide <https://docs.opendaylight.org/projects/bgpcep/en/stable-neon/bgp-developer-guide.html>`_
* `BGP Monitoring Protocol Developer Guide <https://docs.opendaylight.org/projects/bgpcep/en/stable-neon/bgp-monitoring-protocol-developer-guide.html>`_
* `PCEP Developer Guide <https://docs.opendaylight.org/projects/bgpcep/en/stable-neon/pcep-developer-guide.html>`_

Security Considerations
-----------------------

* None Known: All protocol implements the TCP Authentication Option (TCP MD5)

Quality Assurance
-----------------

* `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.bgpcep%3Abgpcep-aggregator>`_
* `CSIT Jobs <https://jenkins.opendaylight.org/releng/view/bgpcep/>`_
* `User features test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-userfeatures-all-neon/>`_
* `PCEP performance and scale tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-throughpcep-all-neon/>`_
* `BGP Application peer performance and scale tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-bgp-ingest-all-neon/>`_
* `BGP performance and scale test <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-1node-bgp-ingest-mixed-all-neon/>`_
* `BGP clustering HA <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-3node-bgpclustering-ha-only-neon/>`_
* `BGP clustering features tests <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-3node-bgpclustering-all-neon/>`_
* `BGP clustering longevity <https://jenkins.opendaylight.org/releng/view/bgpcep/job/bgpcep-csit-3node-bgpclustering-longevity-only-neon/>`_

The BGP extensions were tested manually with a vendor’s BGP router
implementation or other software implementations (exaBGP, bagpipeBGP).
Also, they are covered by the unit tests and automated system tests.

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * Yes, no specific steps outside of configuration adjustments are needed.

Compatibility
-------------

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * No

* Any configuration changes?

  * BGP - Yes, configuration needs to be updated to latest features configuration as documented in the user guides.


New Features
------------

* `New Features <https://jira.opendaylight.org/browse/BGPCEP-855?jql=project%20%3D%20BGPCEP%20AND%20issuetype%20in%20(Improvement%2C%20%22New%20Feature%22)%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20fixVersion%20%3D%20Neon>`_

Bug Fixes
---------

* `Closed Bugs <https://jira.opendaylight.org/browse/BGPCEP-869?jql=project%20%3D%20BGPCEP%20AND%20type%20%3D%20Bug%20AND%20%20status%20in%20(Resolved%2C%20Verified)%20AND%20fixVersion%20%3D%20Neon%20>`_

Known Issues
------------

* `Open Bugs <https://jira.opendaylight.org/projects/BGPCEP/issues/BGPCEP-695?filter=allopenissues>`_


Standards
---------

* `BGP and PCEP Standards <https://docs.opendaylight.org/projects/bgpcep/en/stable-neon/pcep/pcep-user-guide-supported-capabilities.html>`_

Release Mechanics
-----------------

* `Release plan <https://jira.opendaylight.org/browse/TSC-161>`_
