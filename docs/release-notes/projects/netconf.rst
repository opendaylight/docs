=======
NETCONF
=======

Major Features
==============

For each top-level feature, identify the name, URL, description, etc.
User-facing features are used directly by end users.

odl-netconf-topology
--------------------

* **Feature URL:** `NETCONF Topology <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-topology/pom.xml;hb=refs/heads/stable/sodium>`_
* **Feature Description:** NETCONF southbound plugin single-node, configuration through MD-SAL.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `NETCONF CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-sodium/>`_

odl-netconf-clustered-topology
------------------------------

* **Feature URL:** `Clustered Topology <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-clustered-topology/pom.xml;hb=refs/heads/stable/sodium>`_
* **Feature Description:** NETCONF southbound plugin clustered, configuration through MD-SAL.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** `Cluster CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-3node-clustering-all-sodium/>`_

odl-netconf-console
-------------------

* **Feature URL:** `Console <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-console/pom.xml;hb=refs/heads/stable/sodium>`_
* **Feature Description:** NETCONF southbound configuration with Karaf CLI.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes

odl-netconf-mdsal
-----------------

* **Feature URL:** `MD-SAL <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf/odl-netconf-mdsal/pom.xml;hb=refs/heads/stable/sodium>`_
* **Feature Description:** NETCONF server for MD-SAL.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `MD-SAL CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-userfeatures-all-sodium/>`_

odl-restconf
------------

* **Feature URL:** `RESTCONF <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-restconf/pom.xml;hb=refs/heads/stable/sodium>`_
* **Feature Description:** RESTCONF
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** Tested by any suite that uses RESTCONF.

odl-mdsal-apidocs
-----------------

* **Feature URL:** `API Docs <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/restconf/odl-mdsal-apidocs/pom.xml;hb=refs/heads/stable/sodium>`_
* **Feature Description:** MD-SAL - apidocs
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-yanglib
-----------

* **Feature URL:** `YANG Lib <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/yanglib/odl-yanglib/pom.xml;hb=refs/heads/stable/sodium>`_
* **Feature Description:** Yanglib server.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No

odl-netconf-callhome-ssh
------------------------

* **Feature URL:** `Call Home SSH <https://git.opendaylight.org/gerrit/gitweb?p=netconf.git;a=blob;f=features/netconf-connector/odl-netconf-callhome-ssh/pom.xml;hb=refs/heads/stable/sodium>`_
* **Feature Description:** NETCONF Call Home.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `Call Home CSIT <https://jenkins.opendaylight.org/releng/view/netconf/job/netconf-csit-1node-callhome-all-sodium/>`_.

New and Modified Features
=========================

The following list are the new and modified features introduced in this release:

* An option was provided in YANG tools that preserves the ordering of requests as
  defined in the YANG file when formulating the NETCONF payload. This help devices
  that are strict on the ordering of elements. To do this, the JAVA parameter
  "org.opendaylight.yangtools.yang.data.impl.schema.builder.retain-child-order"
  needs to be set to true before starting Karaf.
* `NETCONF-608 <https://jira.opendaylight.org/browse/NETCONF-608>`_: Change
  NETCONF keepalives are not sent during any large payload reply. Stop to
  send the keepalive RPC to device, while ODL is waiting/processing the response
  from the device.
* An item was added to optionally not issue lock/unlock for NETCONF edit-config
  issues. This is only for devices that can handle multiple requests through a
  queue. Please contact the vendor before enabling this option, since all
  transaction semantics are off by default if this option is set for a device.
  This option can be set by issuing a PUT RESTCONF call. For example:

  .. code:: bash

   /restconf/config/netconf-node-optional:netconf-node-fields-optional/topology/topology-netconf/node/{node-id}/datastore-lock

   {
     "netconf-node-optional:datastore-lock"  : {
     "datastore-lock-allowed" : false
     }
   }

* An option was added at the device mount time to lock or unlock the datastore
  before issuing an edit-config command. Default value is true. If set to false,
  then do not issue a lock/unlock before issuing edit-config.
* The *get-config* RPC functionality of the ietf-netconf.yang file is available
  for mounted NETCONF devices. This functionality enables users to get around not
  supported features on Restconf, such as NETCONF filtering. Using this method,
  users can custom construct any NETCONF request.
* A flexible mount point naming strategy was added, so that users can now configure
  mount point names to either contain IP address and port (default), or just the IP address.
  This feature was added for the NETCONF *call-home* feature.

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

  * Refer to `Ports <https://wiki.opendaylight.org/view/Ports>`_. NETCONF Call Home uses TCP port 6666.

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

   * - `NETCONF-24 <https://jira.opendaylight.org/browse/NETCONF-24>`_
     - There is an assumption that a RESTCONF URL behaves just as an HTTP does
       by squashing multiple slashes into one. However, an error is still thrown
       when there is an empty element in this case.
   * - `NETCONF-320 <https://jira.opendaylight.org/browse/NETCONF-320>`_
     - The query parameter field does not work when there is more than one nested field.
   * - `NETCONF-366 <https://jira.opendaylight.org/browse/NETCONF-366>`_
     - An output-less RPC must either return an output element or status code **204**.
       Currently, this does not occur.
   * - `NETCONF-448 <https://jira.opendaylight.org/browse/NETCONF-448>`_
     - Support for a YANG1.1 action should be added to MDSAL.
   * - `NETCONF-527 <https://jira.opendaylight.org/browse/NETCONF-527>`_
     - Currently, netconf-testtool uses /tmp directory to save temporary key file.
       However, writing temporary data to a file system must be avoided, because it
       makes some test tool deployments difficult.
   * - `NETCONF-528 <https://jira.opendaylight.org/browse/NETCONF-528>`_
     - The netconf-testtool configuration should accept Set<YangModuleInfo> as a model
       list. Currently, this does not occur.
   * - `NETCONF-608 <https://jira.opendaylight.org/browse/NETCONF-608>`_
     - Currently, NETCONF keepalives are sent during large payload replies.
       This should not occur.
   * - `NETCONF-609 <https://jira.opendaylight.org/browse/NETCONF-609>`_
     - In corner cases, there is a security issue when logging passwords
       in plain text.
   * - `NETCONF-611 <https://jira.opendaylight.org/browse/NETCONF-611>`_
     - In some cases, an attempt is made by NETCONF to remount regardless
       of the error-type.
   * - `NETCONF-612 <https://jira.opendaylight.org/browse/NETCONF-612>`_
     - In corner cases, a NETCONF  mount failed in the master.
   * - `NETCONF-613 <https://jira.opendaylight.org/browse/NETCONF-613>`_
     - In rare cases, adding a device configuration using POST failed in Sodium.
   * - `NETCONF-614 <https://jira.opendaylight.org/browse/NETCONF-614>`_
     - The NETCONF callhome server does not display the disconnect cause.
   * - `NETCONF-615 <https://jira.opendaylight.org/browse/NETCONF-615>`_
     - Callhome will throw NPEs in DTCL.
   * - `NETCONF-616 <https://jira.opendaylight.org/browse/NETCONF-616>`_
     - Yangtools does not process the output of get-config RPC in the
       ietf-netconf YANG model.
   * - `NETCONF-619 <https://jira.opendaylight.org/browse/NETCONF-619>`_
     - Implementing code changed for YANG1.1 action for Restconf Layer.
   * - `NETCONF-620 <https://jira.opendaylight.org/browse/NETCONF-620>`_
     - An action contained in an augment-prepare of a request failed.
   * - `NETCONF-622 <https://jira.opendaylight.org/browse/NETCONF-622>`_
     - Starting Karaf in latest distribution failed with an exception.
   * - `NETCONF-623 <https://jira.opendaylight.org/browse/NETCONF-623>`_
     - Currently, it is not possible to receive notifications through
       the RESTCONF RFC8040 implementation.
   * - `NETCONF-624 <https://jira.opendaylight.org/browse/NETCONF-624>`_
     - In corner cases, the NETCONF testtool did not connect to OpenDaylight.
   * - `NETCONF-629 <https://jira.opendaylight.org/browse/NETCONF-629>`_
     - Currently, there is no support for disabling of the lock/unlock
       feature for NETCONF requests.
   * - `NETCONF-630 <https://jira.opendaylight.org/browse/NETCONF-630>`_
     - The aacceptance/E2E test needs to be added to the testtool.
   * - `NETCONF-633 <https://jira.opendaylight.org/browse/NETCONF-633>`_
     - Updates are required for the user guide with the information on
       how to use custom RPC with test-tool.
   * - `NETCONF-637 <https://jira.opendaylight.org/browse/NETCONF-637>`_
     - In some cases, RESTCONF does not initialize when the used models
       have deviations.

Known Issues
------------

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Bug ID**
     - **Description**

   * - `NETCONF-644 <https://jira.opendaylight.org/browse/NETCONF-644>`_
     - In some cases, the standard edit-config failed when the module
       augmenting base NETCONF was retrieved from a device.

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

* `Release plan <https://wiki.opendaylight.org/view/Simultaneous_Release:Sodium_Release_Plan>`_
