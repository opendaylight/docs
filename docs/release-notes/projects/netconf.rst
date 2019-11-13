=======
NETCONF
=======

Major Features
==============

For each top-level feature, identify the name, URL, description, etc.
User-facing features are used directly by end users.

odl-netconf-topology
--------------------

* **Feature URL:** `NETCONF Topology <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-topology/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** NETCONF southbound plugin single-node, configuration through MD-SAL.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `NETCONF CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-neon/>`_

odl-netconf-clustered-topology
------------------------------

* **Feature URL:** `Clustered Topology <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-clustered-topology/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** NETCONF southbound plugin clustered, configuration through MD-SAL.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** `Cluster CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-3node-clustering-all-neon/>`_

odl-netconf-console
-------------------

* **Feature URL:** `Console <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-console/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** NETCONF southbound configuration with Karaf CLI.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

odl-netconf-mdsal
-----------------

* **Feature URL:** `MD-SAL <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf/odl-netconf-mdsal/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** NETCONF server for MD-SAL.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `MD-SAL CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-neon/>`_

odl-restconf
------------

* **Feature URL:** `RESTCONF <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-restconf/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** RESTCONF
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** Tested by any suite that uses RESTCONF.

odl-mdsal-apidocs
-----------------

* **Feature URL:** `API Docs <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-mdsal-apidocs/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** MD-SAL - apidocs
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-yanglib
-----------

* **Feature URL:** `YANG Lib <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/yanglib/odl-yanglib/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** Yanglib server.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-netconf-callhome-ssh
------------------------

* **Feature URL:** `Call Hhome SSH <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-callhome-ssh/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** NETCONF Call Home.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `Call Home CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-callhome-all-neon/>`_.

Documentation
=============

* **User Guide(s):**

  * :ref:`netconf-user-guide`

* **Developer Guide(s):**

  * :ref:`netconf-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  Yes, we have MD-SAL and CSS NETCONF servers. Also, a server for NETCONF Call Home.

  * If so, how are they secure?

    * NETCONF over SSH

  * What port numbers do they use?

    * Refer to `Ports <https://wiki.opendaylight.org/view/Ports>`_. NETCONF Call Home uses TCP port 6666.

* Other security issues?

  * None

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.netconf%3Anetconf-aggregator>`_ Test coverage percent: 64.8%
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/netconf/>`_

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * Yes. No additional steps required.

Compatibility
-------------

* Is this release compatible with the previous release?

  * Yes

* Any API changes?

  * No

* Any configuration changes?

  * No

Bugs Fixed
----------

* List of bugs fixed since the previous release.

  * `Fixed bugs <https://jira.opendaylight.org/secure/ReleaseNote.jspa?projectId=10142&version=10727>`_

Known Issues
------------

* List key known issues with workarounds.

  * `Open Bugs <https://jira.opendaylight.org/projects/NETCONF/issues/?filter=allopenissues>`_

End-of-life
===========

List of features/APIs that were EOLed, deprecated, and/or removed from this release:

* The RFC8040 RESTCONF endpoint has been promoted to stable, which marks its first release. Its
  un-authenticated feature has been removed.

* Since this endpoint corresponds to a published standard and supports various YANG 1.1 features,
  we will be transitioning to it.

* To that effect, the bierman02 endpoint is now deprecated, and users should start testing and
  migrating to the RFC8040 endpoint.

* The old endpoint will not be removed for at least two releases, after which we will
  re-evaluate the cost of carrying this code.

Standards
=========

* `RFC 6241 <https://tools.ietf.org/html/rfc6241>`_ - Network Configuration Protocol (NETCONF)
* `RFC 6470 <https://tools.ietf.org/html/rfc6470>`_ - Base Notifications partly supported, netconf-config-change unsupported
* `draft-ietf-yang-library-06 <https://tools.ietf.org/html/draft-ietf-netconf-yang-library-06>`_
* `draft-bierman-netconf-restconf-04 <https://tools.ietf.org/html/draft-bierman-netconf-restconf-04>`_
* `RFC 8040 <https://tools.ietf.org/html/rfc8040>`_ - RESTCONF protocol

Release Mechanics
=================

* `Release plan <https://wiki.opendaylight.org/view/Simultaneous_Release:Oxygen_Release_Plan>`_
