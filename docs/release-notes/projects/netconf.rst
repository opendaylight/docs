=======
NETCONF
=======

Major Features
==============

For each top-level feature, identify the name, url, description, etc.
User-facing features are used directly by end users.

odl-netconf-topology
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-topology/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:**  NETCONF southbound plugin single-node, configuration through mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-oxygen/

odl-netconf-clustered-topology
------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-clustered-topology/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:**  NETCONF southbound plugin clustered, configuration through mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-3node-clustering-all-oxygen/

odl-netconf-console
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-console/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:**  NETCONF southbound configuration with karaf cli
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

odl-netconf-mdsal
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf/odl-netconf-mdsal/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:** NETCONF server for mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-oxygen/

odl-restconf
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-restconf/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:** Restconf
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**  Tested by any suite that uses Restconf

odl-mdsal-apidocs
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-mdsal-apidocs/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:** MDSal - apidocs
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-yanglib
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/yanglib/odl-yanglib/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:** Yanglib server
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-netconf-callhome-ssh
------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-callhome-ssh/pom.xml;hb=refs/heads/stable/oxygen
* **Feature Description:** Netconf call home
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-callhome-all-oxygen/


Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If the
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

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.netconf%3Anetconf-parent>`_ Test coverage percent: 60.7%
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

* List of bugs fixed since the previous release

  https://jira.opendaylight.org/browse/NETCONF-479?jql=project%20%3D%20NETCONF%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20fixVersion%20in%20(Oxygen%2C%20Nitrogen-SR1)%20ORDER%20BY%20created%20DESC

Known Issues
------------

* List key known issues with workarounds

  None

* `Link to Open Bugs <https://jira.opendaylight.org/browse/NETCONF-528?jql=project%20%3D%20NETCONF%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Open%2C%20%22In%20Progress%22%2C%20Confirmed)%20ORDER%20BY%20created%20DESC>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  None of the features/APIs are EOLed, deprecated or removed.

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
