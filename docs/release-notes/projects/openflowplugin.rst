========
OpenFlow
========

Overview
========

The OpenFlow Plugin project provides an OpenFlow 1.0/1.3 implementation.
This project provides the implementation of the OpenFlow 1.0 and
OpenFlow 1.3 specification. In addition, OpenFlow provides several
ONF-approved extensions. It also provides the implementation of the
ONF OpenFlow 1.4 feature, which is approved as an extension for the
OpenFlow 1.3 specification.

The following table provides a list of ONF-approved extensions.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **OpenFlow 1.4 Bundle Feature**
     - **Description**

   * - **Nicira Extensions**
     - This project provides the implementation of the Nicira
       Extensions. Some of the important extensions implemented include the
       Connection Tracking extension and the Group Add-mod extension.
   * - **OpenFlow Based Applications**
     - This project provides the applications that user can leverage out-of-the-box
       when developing applications or as a direct end consumer.
   * - **Forwarding Rules Manager**
     - This application provides functionality to add, remove and update the
       flow, groups, and meters.
   * - **LLDP Speaker**
     - This application sends periodic LLDP packet out on each OpenFlow switch
       port for link discovery.
   * - **Topology LLDP Discovery**
     - This application intercept the LLDP packets and discover the link information.
   * - **Topology Manager**
     - This application receives the discovered links information from Topology LLDP
       Discovery application and stores in the topology yang model data store.
   * - **Reconciliation Framework**
     - This framework exposes APIs that consumer application (in-controller)
       can leverage to participate in the switch reconciliation process in
       the event of switch connection/reconnection.
   * - **Arbitrator Reconciliation**
     - This application exposes the APIs that consumer application or direct user
       can leverage to trigger the device configuration reconciliation.
   * - **OpenFlow Java Library**
     - This project provides the OpenFlow Java Library that converts the data
       based on OpenFlow plugin data models to the OpenFlow java models
       before sending it down the wire to the device.

Behavior Changes
================

This release introduces no behavior changes from the previous release.

New and Modified Features
=========================

This release provides the following new and modified features:

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Feature**
     - **Description**

   * - **Feature**
     - OVS based NA Responder for IPv6 default gateway.
   * - **Feature Description**
     - Feature implements an OVS based service that respond to neighbor.

Deprecated Features
===================

This releases does not removed any feature.

Resolved Issues
===============

Following URL contains the list of issues resolved with this release.

* `Closed Bugs <https://jira.opendaylight.org/browse/OPNFLWPLUG-1073?jql=project%20%3D%20OPNFLWPLUG%20AND%20issuetype%20in%20(Bug%2C%20Improvement)%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20fixVersion%20%3D%20Sodium%20ORDER%20BY%20created%20DESC>`_

Known Issues
============

The following table lists the known issues that exist in this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - `OPNFLWPLUG-1075 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1075>`_
     - Group tx-chain closed by port event thread

   * - `OPNFLWPLUG-1074 <https://jira.opendaylight.org/browse/OPNFLWPLUG-1074>`_
     - Table stats not available after a switch flap
