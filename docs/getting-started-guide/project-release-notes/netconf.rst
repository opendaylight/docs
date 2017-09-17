============
NETCONF
============

Major Features
==============

For each top-level feature, identify the name, url, description, etc.
User-facing features are used directly by end users.

odl-netconf-topology
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/features-netconf-connector/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  NETCONF southbound plugin, configuration through mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-only-carbon/

odl-netconf-clustered-topology
------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/features-netconf-connector/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  NETCONF southbound plugin, configuration through mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-3node-clustering-only-carbon/

odl-netconf-console
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/features-netconf-connector/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:**  NETCONF southbound configuration with karaf cli
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

odl-netconf-connector-all
-------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/features-netconf-connector/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** NETCONF southbound plugin, configuration with configub subsystem
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-only-carbon/

odl-netconf-mdsal
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf/features-netconf/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** NETCONF server for mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-only-carbon/

odl-restconf
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/features-restconf/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** Restconf
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**  Tested by any suit that uses Restconf

odl-mdsal-apidocs
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/features-restconf/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** MDSal - apidocs
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-yanglib
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/yanglib/features-yanglib/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** Yanglib server
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-netconf-callhome-ssh
------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/features-netconf-connector/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** Netconf call home
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-callhome-only-carbon/


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

    Please see https://wiki.opendaylight.org/view/Ports. Netconf call-home uses TCP 6666

* Other security issues?

  None that we are aware of

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=54548>`_ Test coverage percent: 63.3%
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/netconf/>`_

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  Yes, no specific steps needed apart from migrating netconf's topology configuration from DS.

Compatibility
-------------

* Is this release compatible with the previous release?

  Yes

* Any API changes?

  No

* Any configuration changes?

  md-sal netconf northbound is started via blueprint instead of config subsystem.

Bugs Fixed
----------

* List of bugs fixed since the previous release

  https://bugs.opendaylight.org/buglist.cgi?bug_status=RESOLVED&bug_status=VERIFIED&chfield=resolution&chfieldfrom=2016-09-08&chfieldto=Now&chfieldvalue=FIXED&list_id=78801&product=netconf&query_format=advanced&resolution=FIXED

Known Issues
------------

* List key known issues with workarounds

  None

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=UNCONFIRMED&bug_status=CONFIRMED&list_id=78793&product=netconf&query_format=advanced&resolution=--->`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  NETCONF southbound plugin, configuration with configub subsystem is deprecated

Standards
=========

* `RFC 6241 <https://tools.ietf.org/html/rfc6241>`_ - Network Configuration Protocol (NETCONF)
* `RFC 6470 <https://tools.ietf.org/html/rfc6470>`_ - Base Notifications partly supported, netconf-config-change unsupported
* `draft-ietf-yang-library-06 <https://tools.ietf.org/html/draft-ietf-netconf-yang-library-06>`_
* `draft-bierman-netconf-restconf-04 <https://tools.ietf.org/html/draft-bierman-netconf-restconf-04>`_
* `RFC 8040 <https://tools.ietf.org/html/rfc8040>`_ - RESTCONF protocol


Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/NETCONF:Carbon:Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  No shifts
