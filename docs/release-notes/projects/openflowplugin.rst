===============
OpenFlow Plugin
===============

Overview
========

The OpenFlow Plugin project provides the following functionality:

* **OpenFlow 1.0/1.3 implementation project**: This provides the implementation of the
  OpenFlow 1.0 and OpenFlow 1.3 specification.
* **ONF Approved Extensions Project**: This provides the implementation of following ONF
  OpenFlow 1.4 feature, which is approved as extensions for the OpenFlow 1.3
  specification:

  * **Nicira Extensions Project**: This provides the implementation of the Nicira extensions.
    Some of the important extensions implemented are **Connection Tracking Extension**
    and **Group Add-Mod Extension**

* **OpenFlow-Based Applications Project**: This provides the following applications that user can
  leverage out-of-the-box in developing their application or as a direct end consumer:

  .. list-table:: OpenFlow-Based Applications
     :widths: 15 55
     :header-rows: 1

     * - **Application**
       - **Description**

     * - **Forwarding Rules Manager**
       -  Application provides functionality to add/remove/update flow/groups/meters.
     * - **LLDP Speaker**
       - Application sends periodic LLDP packet out on each OpenFlow switch port for link discovery.
     * - **Topology LLDP Discovery**
       - Application intercept the LLDP packets and discover the link information.
     * - **Topology Manager**
       - Application receives the discovered links information from Topology LLDP
         Discovery application and stores in the topology yang model datastore.
     * - **Reconciliation Framework**
       - Framework that exposes the APIs that consumer application (in-controller) can
         leverage to participate in the switch reconciliation process in the event of
         switch connection/reconnection.
     * - **Arbitrator Reconciliation**
       - Application exposes the APIs that consumer application or direct user can
         leverage to trigger the device configuration reconciliation.
     * - **OpenFlow Java Library Project**
       - Provides the OpenFlow Java Library that converts the data based on OpenFlow
         plugin data models to the OpenFlow java models before sending it down the
         wire to the device.
     * - **Reconciliation**
       - Reconciles the state using Openflow 1.4 bundles.

New and Modified Features
=========================

There were no new or modified features in this release.

Deprecated Features
===================
None

Bugs Fixed
----------

The following table lists the resolved issues fixed this release.

.. list-table:: Bugs Fixed
   :widths: 15 55
   :header-rows: 1

   * - **Issue ID**
     - **Summary**

   * - `OPNFLWPLUG-1074 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1074>`_
     - table stats not available after a switch flap

   * - `OPNFLWPLUG-1075 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1075>`_
     - Group tx-chain closed by port event thread

   * - `OPNFLWPLUG-1077 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1077>`_
     - Bundle resync is not able to push groups to switch

   * - `OPNFLWPLUG-1078 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1078>`_
     - Notify device TLS authentication failure messages

   * - `OPNFLWPLUG-1083 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1083>`_
     - Stats frozen after applying 2 sec delay in OF channel

   * - `OPNFLWPLUG-1085 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1085>`_
     - switch-idle-timeout does not work

   * - `OPNFLWPLUG-1086 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1086>`_
     - Reconciliation framework failure when starting cbench tool for the first time

Known Issues
------------

There were no known issues in this release.
