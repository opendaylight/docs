=======
NETCONF
=======

Overview
========

NETCONF is an XML-based protocol used for configuration and monitoring
devices in the network. The base NETCONF protocol is described in
`RFC-6241 <http://tools.ietf.org/html/rfc6241>`__.

Behavior Changes
================

This release introduces the following behavior changes:

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

Resolved Issues
===============

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