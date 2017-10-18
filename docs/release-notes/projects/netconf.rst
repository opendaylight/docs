=======
NETCONF
=======

Major Features
==============

For each top-level feature, identify the name, url, description, etc.
User-facing features are used directly by end users.

odl-netconf-topology
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-topology/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  NETCONF southbound plugin single-node, configuration through mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-nitrogen/

odl-netconf-clustered-topology
------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-clustered-topology/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  NETCONF southbound plugin clustered, configuration through mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-3node-clustering-all-nitrogen/

odl-netconf-console
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-console/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:**  NETCONF southbound configuration with karaf cli
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

odl-netconf-mdsal
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf/odl-netconf-mdsal/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:** NETCONF server for mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-nitrogen/

odl-restconf
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-restconf/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:** Restconf
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**  Tested by any suite that uses Restconf

odl-mdsal-apidocs
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-mdsal-apidocs/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:** MDSal - apidocs
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-yanglib
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/yanglib/odl-yanglib/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:** Yanglib server
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-netconf-callhome-ssh
------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-callhome-ssh/pom.xml;hb=refs/heads/stable/nitrogen
* **Feature Description:** Netconf call home
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-callhome-all-nitrogen/


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

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=54548>`_ Test coverage percent: 63.3%
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/netconf/>`_

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  Yes.

  Several config subsystem yang modules were removed therefore if prior updates to
  config subsystem modules were made via the controller-config loopback mountpoint
  then the etc/opendaylight/current/controller.currentconfig.xml file must be manually
  edited to remove elements corresponding to the removed config yang modules.
  These include the elements from the following XML files under
  etc/opendaylight/karaf:

    * 10-rest-connector.xml
    * 10-restconf-service.xml

  The mechanism of spawning netconf connectors via the controller-config loopback
  mountpoint was removed so any previously configured connectors must be migrated to the
  config datastore and the elements removed from the controller.currentconfig.xml file.

  The netconf yanglib config subsystem module was removed so any configuration change
  that was made via the controller-config loopback mountpoint must be migrated to the
  config datastore (see the Compatibility section) and must also be removed from the
  controller.currentconfig.xml file.

  Since the config subsystem is deprecated, it is recommended to migrate any custom
  configuration additions and/or changes contained in controller.currentconfig.xml
  and remove the file.

Compatibility
-------------

* Is this release compatible with the previous release?

  Yes

* Any API changes?

  No

* Any configuration changes?

  * The restconf northbound feature is now started via blueprint instead of the config
    subsystem. The corresponding config yang file, opendaylight-rest-connector.yang,
    and the 10-rest-connector.xml file installed under etc/opendaylight/karaf have been
    removed. The restconf configuration attributes (specifically websocket-port) are
    now specified via the etc/org.opendaylight.restconf.cfg file.

  * The JSONRestconfService API is no longer advertised via the config subsystem and
    the corresponding config yang file, sal-restconf-service.yang, and the
    10-restconf-service.xml file installed under etc/opendaylight/karaf have been
    removed. The JSONRestconfService must now be obtained directly from the OSGi
    service registry (preferably via blueprint).

  * The netconf yanglib feature is now now started via blueprint instead of the config
    subsystem and is configured using the yanglib:yanglib-config container defined in
    yanglib.yang via the config datastore.

Bugs Fixed
----------

* List of bugs fixed since the previous release

  https://bugs.opendaylight.org/buglist.cgi?bug_status=RESOLVED&bug_status=VERIFIED&chfield=resolution&chfieldfrom=2017-07-12&chfieldto=Now&chfieldvalue=FIXED&list_id=78801&product=netconf&query_format=advanced&resolution=FIXED

Known Issues
------------

* List key known issues with workarounds

  None

* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_status=UNCONFIRMED&bug_status=CONFIRMED&list_id=78793&product=netconf&query_format=advanced&resolution=--->`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  The mechanism of spawning netconf connectors via the config subsystem's
  controller-config loopback mountpoint was deprecated in the previous release and
  has been removed.

Standards
=========

* `RFC 6241 <https://tools.ietf.org/html/rfc6241>`_ - Network Configuration Protocol (NETCONF)
* `RFC 6470 <https://tools.ietf.org/html/rfc6470>`_ - Base Notifications partly supported, netconf-config-change unsupported
* `draft-ietf-yang-library-06 <https://tools.ietf.org/html/draft-ietf-netconf-yang-library-06>`_
* `draft-bierman-netconf-restconf-04 <https://tools.ietf.org/html/draft-bierman-netconf-restconf-04>`_
* `RFC 8040 <https://tools.ietf.org/html/rfc8040>`_ - RESTCONF protocol


Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/NETCONF:Nitrogen:Release_Plan>`_
* Describe any major shifts in release schedule from the release plan

  No shifts
