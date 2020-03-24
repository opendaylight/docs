===============
OpenFlow Plugin
===============

Overview
========

The OpenFlow Plugin project provides the following functionality:

* OpenFlow 1.0/1.3 Implementation Project provides the implementation of the
  OpenFlow 1.0 and OpenFlow 1.3 specification.
* ONF Approved extensions Project provides the implementation of following ONF
  OpenFlow 1.4 feature, which is approved as extensions for the OpenFlow 1.3
  specification.
* OpenFlow 1.4 Bundle Feature:

  * Nicira Extensions Project provides the implementation of the Nicira Extensions.
    Some of the important extensions implemented are **Connection Tracking Extension**
    and **Group Add-Mod Extension**

* OpenFlow-Based Applications Project provides the following applications that user can
  leverage out-of-the-box in developing their application or as a direct end consumer:

  * Forwarding Rules Manager: Application provides functionality to add/remove/update
    flow/groups/meters.
  * LLDP Speaker: Application sends periodic LLDP packet out on each OpenFlow switch
    port for link discovery.
  * Topology LLDP Discovery: Application intercept the LLDP packets and discover the
    link information.
  * Topology Manager: Application receives the discovered links information from
    Topology LLDP Discovery application and stores in the topology yang model datastore.
  * Reconciliation Framework: Framework that exposes the APIs that consumer application
    (in-controller) can leverage to participate in the switch reconciliation process in
    the event of switch connection/reconnection.
  * Arbitrator Reconciliation: Application exposes the APIs that consumer application
    or direct user can leverage to trigger the device configuration reconciliation.
  * OpenFlow Java Library Project provides the OpenFlow Java Library that converts
    the data based on OpenFlow plugin data models to the OpenFlow java models before
    sending it down the wire to the device.
  * Reconciliation of states using Openflow 1.4 Bundles

New and Modified Features
=========================

This release does not modify any existing features.

Deprecated Features
===================
None

Bugs Fixed
----------

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - OPNFLWPLUG-1074
     - table stats not available after a switch flap

   * - OPNFLWPLUG-1075
     - Group tx-chain closed by port event thread
   
   * - OPNFLWPLUG-1077
     - Bundle resync is not able to push groups to switch
     
   * - OPNFLWPLUG-1078
     - Notify device TLS authentication failure messages
 
   * - OPNFLWPLUG-1083
     - Stats frozen after applying 2 sec delay in OF channel

   * - OPNFLWPLUG-1085
     - switch-idle-timeout does not work

   * - OPNFLWPLUG-1086
     - Reconciliation framework failure when starting cbench tool for the first time

Known Issues
------------

No Known issues in this release.
