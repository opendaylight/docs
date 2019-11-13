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
* **Feature Description:** NETCONF southbound plugin single-node, configuration through mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `NETCONF CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-neon/>`_

odl-netconf-clustered-topology
------------------------------

* **Feature URL:** `Clustered Topology <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-clustered-topology/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** NETCONF southbound plugin clustered, configuration through MDSAL
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** `Cluster CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-3node-clustering-all-neon/>`_

odl-netconf-console
-------------------

* **Feature URL:** `Console <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-console/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** NETCONF southbound configuration with Karaf CLI
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

odl-netconf-mdsal
-----------------

* **Feature URL:** `MDSAL <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf/odl-netconf-mdsal/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** NETCONF server for mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `MDSAL CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-neon/>`_

odl-restconf
------------

* **Feature URL:** `RESTCONF <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-restconf/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** RESTCONF
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** Tested by any suite that uses RESTCONF

odl-mdsal-apidocs
-----------------

* **Feature URL:** `API Docs <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-mdsal-apidocs/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** MDSAL - apidocs
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-yanglib
-----------

* **Feature URL:** `YANG Lib <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/yanglib/odl-yanglib/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** Yanglib server
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-netconf-callhome-ssh
------------------------

* **Feature URL:** `Callhome SSH <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-callhome-ssh/pom.xml;hb=refs/heads/stable/neon>`_
* **Feature Description:** NETCONF call home
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `Callhome CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-callhome-all-neon/>`_

Documentation
=============

Please provide the URL to each document at `OpenDaylight <http://docs.opendaylight.org>`_. If the
document is under review, provide a link to the change in Gerrit.

* **User Guide(s):**

  * :ref:`netconf-user-guide`

* **Developer Guide(s):**

  * :ref:`netconf-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  Yes, we have md-sal and css netconf servers. Also server for netconf call-home.

  * If so, how are they secure?

    NETCONF over SSH

  * What port numbers do they use?

    Please see https://wiki.opendaylight.org/view/Ports. Netconf call-home uses TCP port 6666

* Other security issues?

  None that we are aware of

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.netconf%3Anetconf-aggregator>`_ Test coverage percent: 64.8%
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/netconf/>`_

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  Yes. No additional steps required.

Compatibility
-------------

* Is this release compatible with the previous release?

  Yes

* Any API changes?

  No

* Any configuration changes?

  No

Bugs Fixed
----------

* List of bugs fixed since the previous release `Fixed bugs <https://jira.opendaylight.org/secure/ReleaseNote.jspa?projectId=10142&version=10727>`_

Known Issues
------------

* List key known issues with workarounds

  None

* Link to `Open Bugs <https://jira.opendaylight.org/projects/NETCONF/issues/?filter=allopenissues>`_

End-of-life
===========

List of features/APIs that are EOLed, deprecated, and/or removed in this release:

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

* `Link to release plan <https://wiki.opendaylight.org/view/Simultaneous_Release:Oxygen_Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  No shifts
