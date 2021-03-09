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

Behavior/Feature Changes
========================

Here is the link to the features improved in this release:

`OpenDaylight JIRA Tickets - Improvement <https://jira.opendaylight.org/issues/?jql=project+%3D+openflowplugin+AND+type+%3D+Improvement+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_

New Features
============

Here is the link to the new features introduced in this release:

`OpenDaylight JIRA Tickets - New Feature <https://jira.opendaylight.org/issues/?jql=project+%3D+openflowplugin+AND+type+%3D+%22New+Feature%22+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_

Deprecated Features
===================

Here is the link to the features removed in this release:

`OpenDaylight JIRA Tickets - Deprecated Feature <https://jira.opendaylight.org/issues/?jql=project+%3D+openflowplugin+AND+type+%3D+Deprecate+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_

Resolved Issues
===============

Here is the link to the resolved issues fixed in this release:

`OpenDaylight JIRA Tickets - Resolved Issue <https://jira.opendaylight.org/issues/?jql=project+%3D+openflowplugin+AND+type+%3D+Bug+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_


Known Issues
============

Here is the link to the known issues exist in this release:

`OpenDaylight JIRA Tickets - Known Issue <https://jira.opendaylight.org/issues/?jql=project+%3D+openflowplugin+AND+type+%3D+Bug+AND+status+not+in+%28Resolved%2C+Done%2C+Closed%29+ORDER+BY+issuetype+DESC%2C+key+ASC>`_