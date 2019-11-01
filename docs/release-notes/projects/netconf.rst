=======
NETCONF
=======

Overview
========

Behavior Changes
================

* N/A

New and Modified Features
=========================

* An option was added at the device mount time to lock or unlock the datastore
  before issuing an edit-config command. Default value is true. If set to false,
  then do not issue a lock/unlock before issuing edit-config.
* The *get-config* RPC functionality of the ietf-netconf.yang file is available
  mounted NETCONF devices. This functionality enables users to get around not
  supported features on Restconf, such as NETCONF filtering. Using this method,
  users can custom construct any NETCONF request.
* A flexible mount point naming strategy was added, so that users can now configure
  mount point names to either contain IP address and port (default), or just the IP address.

Deprecated Features
===================

* N/A

Resolved Issues
===============

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
     - In rare cases, adding a device configuration using POST using
       NETCONF failed in Sodium.
   * - `NETCONF-614 <https://jira.opendaylight.org/browse/NETCONF-614>`_
     - The NETCONF callhome server does not display the disconnect cause.
   * - `NETCONF-615 <https://jira.opendaylight.org/browse/NETCONF-615>`_
     - Callhome will throw NPEs in DTCL.
   * - `NETCONF-616 <https://jira.opendaylight.org/browse/NETCONF-616>`_
     - Yangtools does not process the output of get-config RPC in the
       ietf-netconf YANG model.
   * - `NETCONF-619 <https://jira.opendaylight.org/browse/NETCONF-619>`_
     - Implementing code changed for YANG1.1 action for Restconf Layer occurred.
   * - `NETCONF-620 <https://jira.opendaylight.org/browse/NETCONF-620>`_
     - An action contained in an augment-prepare of a request failed.
   * - `NETCONF-622 <https://jira.opendaylight.org/browse/NETCONF-622>`_
     - When starting a Karaf on a lasted code base under distribution
       repository failed with an exception.
   * - `NETCONF-623 <https://jira.opendaylight.org/browse/NETCONF-623>`_
     - Currently, it is not possible to receive notifications through
       the RESTCONF RFC8040 implementation.
   * - `NETCONF-624 <https://jira.opendaylight.org/browse/NETCONF-624>`_
     - In corner cases, the NETCONF testtool did not connect to OpenDaylight.
   * - `NETCONF-629 <https://jira.opendaylight.org/browse/NETCONF-629>`_
     - Currently, there is now support for disabling of the lock/unlock
       feature for NETCONF requests.
   * - `NETCONF-630 <https://jira.opendaylight.org/browse/NETCONF-630>`_
     - The aacceptance/E2E test needs to be added to the testtool.
   * - `NETCONF-633 <https://jira.opendaylight.org/browse/NETCONF-633>`_
     - Updates are required for the user guide with the information on
       how to use custom RPC with test-tool.
   * - `NETCONF-637 <https://jira.opendaylight.org/browse/NETCONF-637>`_
     - In some cases, the user was unable to initialize RESTCONF when
       deviation when the yang model was used.

Known Issues
============

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Bug ID**
     - **Description**

   * - `NETCONF 644 <https://jira.opendaylight.org/browse/NETCONF-644?jql=project%20%3D%20netconf%20AND%20type%20%3D%20Bug%20AND%20status%20!%3D%20%20Resolved)>`_
     - In some cases, the standard edit-config failed when themodule augmenting base NETCONF
       was retrieved from a device.
