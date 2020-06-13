=======
NETCONF
=======

Major Features
==============

odl-netconf-topology
--------------------

* **Feature URL:** `NETCONF Topology <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-topology/pom.xml;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** NETCONF southbound plugin single-node, configuration through MD-SAL.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `NETCONF CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-magnesium/>`_

odl-netconf-clustered-topology
------------------------------

* **Feature URL:** `Clustered Topology <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-clustered-topology/pom.xml;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** NETCONF southbound plugin clustered, configuration through MD-SAL.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** `Cluster CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-3node-clustering-all-magnesium/>`_

odl-netconf-console
-------------------

* **Feature URL:** `Console <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-console/pom.xml;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** NETCONF southbound configuration with Karaf CLI.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

odl-netconf-mdsal
-----------------

* **Feature URL:** `MD-SAL <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf/odl-netconf-mdsal/pom.xml;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** NETCONF server for MD-SAL.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `MD-SAL CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-magnesium/>`_

odl-restconf
------------

* **Feature URL:** `RESTCONF <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-restconf/pom.xml;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** RESTCONF
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** Tested by any suite that uses RESTCONF.

odl-mdsal-apidocs
-----------------

* **Feature URL:** `API Docs <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-mdsal-apidocs/pom.xml;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** MD-SAL - apidocs
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-yanglib
-----------

* **Feature URL:** `YANG Lib <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/yanglib/odl-yanglib/pom.xml;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** Yanglib server.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-netconf-callhome-ssh
------------------------

* **Feature URL:** `Call Home SSH <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-callhome-ssh/pom.xml;hb=refs/heads/stable/magnesium>`_
* **Feature Description:** NETCONF Call Home.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `Call Home CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-callhome-all-magnesium/>`_.

New and Modified Features
=========================

The following list are the new and modified features introduced in this release:

* Support was added for YANG1.1 Actions

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **JIRA ID**
     - **Description**

   * - `NETCONF-618 <https://jira.opendaylight.org/browse/NETCONF-618>`_
     - Add support for YANG1.1 Action in Restconf Layer.
   * - `NETCONF-635 <https://jira.opendaylight.org/browse/NETCONF-635>`_
     - Add YANG 1.1 action support for clustered opendaylight
   * - `NETCONF-647 <https://jira.opendaylight.org/browse/NETCONF-647>`_
     - Updating Action Rest Endpoints on Swagger UI

* `Tunable SshClient by netconf-client users <https://jira.opendaylight.org/browse/NETCONF-641>`_

Documentation
=============

* **User Guide:**

  * :ref:`netconf-user-guide`

* **Developer Guide:**

  * :ref:`netconf-dev-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * Yes, we have MD-SAL and CSS NETCONF servers. Also, a server for NETCONF Call Home.

* If so, how are they secure?

  * NETCONF over SSH

* What port numbers do they use?

  * Refer to `Ports <https://wiki-archive.opendaylight.org/view/Ports>`_. NETCONF Call Home uses TCP port 6666.

* Other security issues?

  * None

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.netconf%3Anetconf-aggregator>`_ Test coverage percent: 64.8%
* `CSIT Jobs <https://jenkins.opendaylight.org/releng/view/netconf/>`_

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

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Bug ID**
     - **Description**

   * - `NETCONF-538 <https://jira.opendaylight.org/browse/NETCONF-538>`_
     - Filtered <get-config> fails with ClassCastException
   * - `NETCONF-610 <https://jira.opendaylight.org/browse/NETCONF-610>`_
     - Custom scheme-cache-directory yang models are not replicated among
       cluster members
   * - `NETCONF-639 <https://jira.opendaylight.org/browse/NETCONF-639>`_
     - Netconf can confuse action definitions when they have equal name
   * - `NETCONF-500 <https://jira.opendaylight.org/browse/NETCONF-500>`_
     - Oxygen: How should odl-restconf-nb-rfc8040 be used?
   * - `NETCONF-568 <https://jira.opendaylight.org/browse/NETCONF-568>`_
     - NetconfMessageTransformer action/rpc empty reply
   * - `NETCONF-581 <https://jira.opendaylight.org/browse/NETCONF-581>`_
     - restconf to netconf translation doesn't honor the order of the keys
       for lists with multiple keys
   * - `NETCONF-637 <https://jira.opendaylight.org/browse/NETCONF-637>`_
     - Unable to initialize RESTCONF when deviation in yang model is used
   * - `NETCONF-644 <https://jira.opendaylight.org/browse/NETCONF-644>`_
     - standard edit-config fails when module augmenting base netconf has
       been retrieved from device
   * - `NETCONF-652 <https://jira.opendaylight.org/browse/NETCONF-652>`_
     - NetconfMessageTransformer doesn't include namespace of action to XML
       action request
   * - `NETCONF-125 <https://jira.opendaylight.org/browse/NETCONF-125>`_
     - connection-timeout-milliseconds parameter is not working properly
       for ssh connections
   * - `NETCONF-653 <https://jira.opendaylight.org/browse/NETCONF-653>`_
     - callhome device with the duplicate ssh host key should be denied
   * - `NETCONF-664 <https://jira.opendaylight.org/browse/NETCONF-664>`_
     - The ConcurrentModificationException was found in the websocket test
       in restconf-nb-rfc8040.
   * - `NETCONF-665 <https://jira.opendaylight.org/browse/NETCONF-665>`_
     - Differentiate authentication failures from other session setup failures

Known Issues
------------

https://jira.opendaylight.org/projects/NETCONF/issues?filter=allopenissues

End-of-life
===========

* List of features/APIs that were EOLed, deprecated, and/or removed from this release:

  * N/A

Standards
=========

* `RFC 6241 <https://tools.ietf.org/html/rfc6241>`_ - Network Configuration Protocol (NETCONF)
* `RFC 6470 <https://tools.ietf.org/html/rfc6470>`_ - Base Notifications partly supported, netconf-config-change unsupported
* `draft-ietf-yang-library-06 <https://tools.ietf.org/html/draft-ietf-netconf-yang-library-06>`_
* `draft-bierman-netconf-restconf-04 <https://tools.ietf.org/html/draft-bierman-netconf-restconf-04>`_
* `RFC 8040 <https://tools.ietf.org/html/rfc8040>`_ - RESTCONF protocol

Release Mechanics
=================

* `Managed Release <https://docs.opendaylight.org/en/stable-magnesium/release-process/managed-release.html>`_
