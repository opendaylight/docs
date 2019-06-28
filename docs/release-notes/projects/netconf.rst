=======
NETCONF
=======

Major Features
==============

odl-netconf-topology
--------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-topology/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  NETCONF southbound plugin single-node, configuration through mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-fluorine/

odl-netconf-clustered-topology
------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-clustered-topology/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  NETCONF southbound plugin clustered, configuration through mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-3node-clustering-all-fluorine/

odl-netconf-console
-------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-console/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:**  NETCONF southbound configuration with karaf cli
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

odl-netconf-mdsal
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf/odl-netconf-mdsal/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:** NETCONF server for mdsal
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-fluorine/

odl-restconf
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-restconf/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:** Restconf
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**  Tested by any suite that uses Restconf

odl-mdsal-apidocs
-----------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-mdsal-apidocs/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:** MDSal - apidocs
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-yanglib
-----------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/yanglib/odl-yanglib/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:** Yanglib server
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-netconf-callhome-ssh
------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-callhome-ssh/pom.xml;hb=refs/heads/stable/fluorine
* **Feature Description:** Netconf call home
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-callhome-all-fluorine/


Documentation
=============

* **User Guide(s):**

  * :ref:`netconf-user-guide`

* **Developer Guide(s):**

  * :ref:`netconf-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  Yes, we have md-sal and netconf call-home servers.

  * If so, how are they secure?

    * NETCONF over SSH

  * What port numbers do they use?

    * Please see https://wiki.opendaylight.org/view/Ports. Netconf call-home uses TCP port 6666

* Other security issues?

  * None that are known.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.netconf%3Anetconf-parent>`_ Test coverage percent: 60.9%
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

* `NETCONF-557 <https://jira.opendaylight.org/browse/NETCONF-557>`_ Add support for URL capability
* `NETCONF-508 <https://jira.opendaylight.org/browse/NETCONF-508>`_ inter-project dependencies are not expressed correctly in feature definitions
* `NETCONF-489 <https://jira.opendaylight.org/browse/NETCONF-489>`_ Add TLS support for connecting to a netconf device
* `NETCONF-524 <https://jira.opendaylight.org/browse/NETCONF-524>`_ Set the netconf keepalive logic to be more proactive
* `NETCONF-525 <https://jira.opendaylight.org/browse/NETCONF-525>`_ aaa-authn-odl-plugin contains non-netconf package
* `NETCONF-531 <https://jira.opendaylight.org/browse/NETCONF-531>`_ NETCONF depends on Jackson dependencies pulled in by AAA
* `NETCONF-533 <https://jira.opendaylight.org/browse/NETCONF-533>`_ channelActive may happen later than handleMessage when connect devices
* `NETCONF-542 <https://jira.opendaylight.org/browse/NETCONF-542>`_ PUT request return 500 if operational data are used
* `NETCONF-544 <https://jira.opendaylight.org/browse/NETCONF-544>`_ FilesystemSchemaSourceCache sometimes fails tests with: Unable to create cache directory at...
* `NETCONF-543 <https://jira.opendaylight.org/browse/NETCONF-543>`_ Mechanism to Specify ODL HELLO message
* `NETCONF-551 <https://jira.opendaylight.org/browse/NETCONF-551>`_ apidocs explorer reffers to non-existing CSS resource
* `NETCONF-530 <https://jira.opendaylight.org/browse/NETCONF-530>`_ netconf-testtool failed on start with NullPointerException
* `NETCONF-535 <https://jira.opendaylight.org/browse/NETCONF-535>`_ Remove CSS NETCONF endpoint
* `NETCONF-546 <https://jira.opendaylight.org/browse/NETCONF-546>`_ 404 returning empty response
* `NETCONF-486 <https://jira.opendaylight.org/browse/NETCONF-486>`_ Patch request on a Netconf Mounted device throwing ClassCastException from YANG tools
* `NETCONF-178 <https://jira.opendaylight.org/browse/NETCONF-178>`_ Remove web.xml
* `NETCONF-536 <https://jira.opendaylight.org/browse/NETCONF-536>`_ Add support for <candidate> validation
* `NETCONF-540 <https://jira.opendaylight.org/browse/NETCONF-540>`_ Missing message-id in error reply when namespace prefix is used
* `NETCONF-539 <https://jira.opendaylight.org/browse/NETCONF-539>`_ Incorect handling of base:1.1 capability when namespaces are used
* `NETCONF-526 <https://jira.opendaylight.org/browse/NETCONF-526>`_ In edit-config payload default-operation needs to be set to default-value for PUT/POST calls
* `NETCONF-529 <https://jira.opendaylight.org/browse/NETCONF-529>`_ Add support for <copy-config> to mdsal-netconf-connector
* `NETCONF-520 <https://jira.opendaylight.org/browse/NETCONF-520>`_ RPC add netconf device does not work
* `NETCONF-521 <https://jira.opendaylight.org/browse/NETCONF-521>`_ Netconf with Key auth does not work
* `NETCONF-516 <https://jira.opendaylight.org/browse/NETCONF-516>`_ netconf.restconf-nb-bierman02 bundle does not start
* `NETCONF-514 <https://jira.opendaylight.org/browse/NETCONF-514>`_ Spurious reads before put in 8040 implementation across a mounted resource
* `NETCONF-510 <https://jira.opendaylight.org/browse/NETCONF-510>`_ Fix netconf-tcp and netconf-ssh activators
* `NETCONF-509 <https://jira.opendaylight.org/browse/NETCONF-509>`_ RPCs that take no input should throw RestconfDocumentedException instead of bare IllegalStateException when invoked

Known Issues
------------

* List key known issues with workarounds

  * None

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this
  release

  * None

Standards
=========

* `RFC 6241 <https://tools.ietf.org/html/rfc6241>`_ - Network Configuration Protocol (NETCONF)
* `RFC 6470 <https://tools.ietf.org/html/rfc6470>`_ - Base Notifications partly supported, netconf-config-change unsupported
* `draft-ietf-yang-library-06 <https://tools.ietf.org/html/draft-ietf-netconf-yang-library-06>`_
* `draft-bierman-netconf-restconf-04 <https://tools.ietf.org/html/draft-bierman-netconf-restconf-04>`_
* `RFC 8040 <https://tools.ietf.org/html/rfc8040>`_ - RESTCONF protocol


Release Mechanics
=================

* `TSC-70 <https://jira.opendaylight.org/browse/TSC-70>`_
