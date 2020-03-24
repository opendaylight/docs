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

odl-openflowjava-protocol
-------------------------

* **Feature URL:** `JAVA Protocol <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=openflowjava/features-openflowjava-aggregator/odl-openflowjava-protocol/pom.xml>`_
* **Feature Description:** OpenFlow protocol implementation.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** `JAVA CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

odl-openflowplugin-app-config-pusher
------------------------------------

* **Feature URL:** `Config Pusher <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-config-pusher/pom.xml>`_
* **Feature Description:** Pushes node configuration changes to OpenFlow device.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** `Pusher CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

odl-openflowplugin-app-forwardingrules-manager
----------------------------------------------

* **Feature URL:** `Forwarding Rules Manager <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-forwardingrules-manager/pom.xml>`_
* **Feature Description:** Sends changes in config datastore to OpenFlow device incrementally. forwardingrules-manager can be replaced with forwardingrules-sync and vice versa.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** `FR Manager CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

odl-openflowplugin-app-forwardingrules-sync
-------------------------------------------

* **Feature URL:** `Forwarding Rules Sync <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-forwardingrules-sync/pom.xml>`_
* **Feature Description:** Sends changes in config datastore to OpenFlow devices taking previous state in account and doing diffs between previous and new state. forwardingrules-sync can be replaced with forwardingrules-manager and vice versa.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:** `FR Sync CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-all-Sodium/>`_

odl-openflowplugin-app-table-miss-enforcer
------------------------------------------

* **Feature URL:** `Miss Enforcer <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-table-miss-enforcer/pom.xml>`_
* **Feature Description:** Sends table miss flows to OpenFlow device when it connects.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** `Enforcer CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

odl-openflowplugin-app-topology
-------------------------------

* **Feature URL:** `App Topology <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-topology/pom.xml>`_
* **Feature Description:** Discovers topology of connected OpenFlow devices. It a wrapper feature
  that loads the following features:

  * odl-openflowplugin-app-lldp-speaker
  * odl-openflowplugin-app-topology-lldp-discovery
  * odl-openflowplugin-app-topology-manager).

* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** `App Topology CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

odl-openflowplugin-app-lldp-speaker
-----------------------------------

* **Feature URL:** `LLDP Speaker <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-topology/pom.xml>`_
* **Feature Description:** Send periodic LLDP packets on all the ports of all the connected OpenFlow devices.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** `LLDP Speaker CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

odl-openflowplugin-app-topology-lldp-discovery
----------------------------------------------

* **Feature URL:** `LLDP Discovery <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-topology/pom.xml>`_
* **Feature Description:** Receives the LLDP packet sent by LLDP speaker service and generate the link information and publish to the downstream services looking for link notifications.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** `LLDP Discovery CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

odl-openflowplugin-app-topology-manager
---------------------------------------

* **Feature URL:** `Topology Manager <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-topology/pom.xml>`_
* **Feature Description:** Listen to the link added/removed notification and node connect/disconnection notification and update the link information in the OpenFlow topology.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** `Topology Manager CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

odl-openflowplugin-nxm-extensions
---------------------------------

* **Feature URL:** `NXM Extensions <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=extension/features-extension-aggregator/odl-openflowplugin-nxm-extensions/pom.xml>`_
* **Feature Description:** Support for OpenFlow Nicira Extensions.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `NXM Extensions CSIT <https://jenkins.opendaylight.org/releng/view/netvirt/job/netvirt-csit-1node-openstack-pike-gate-stateful-snat-conntrack-Sodium/>`_

odl-openflowplugin-onf-extensions
---------------------------------

* **Feature URL:** `ONF Extensions <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=extension/features-extension-aggregator/odl-openflowplugin-onf-extensions/pom.xml>`_
* **Feature Description:** Support for Open Networking Foundation Extensions.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** No

odl-openflowplugin-flow-services
--------------------------------

* **Feature URL:** `Flow Services <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-flow-services/pom.xml>`_
* **Feature Description:** Wrapper feature for standard applications.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `Flow Services CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

odl-openflowplugin-flow-services-rest
-------------------------------------

* **Feature URL:** `Flow Services Rest <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-flow-services-rest/pom.xml>`_
* **Feature Description:** Wrapper + REST interface.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `Flow Services Rest CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

odl-openflowplugin-flow-services-ui
-----------------------------------

* **Feature URL:** `Serices UI <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-flow-services-ui/pom.xml>`_
* **Feature Description:** Wrapper + REST interface + UI.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** `Flow Services UI CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin>`_

odl-openflowplugin-nsf-model
----------------------------

* **Feature URL:** `NSF Model <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-nsf-model/pom.xml>`_
* **Feature Description:** OpenFlowPlugin YANG models.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** `NSF CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

odl-openflowplugin-southbound
-----------------------------

* **Feature URL:** `Southbound <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-southbound/pom.xml>`_
* **Feature Description:** Southbound API implementation.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:** `Southbound CSIT <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

Documentation
=============

* **Features Documentation:**

  * :doc:`openflowplugin:index`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?

  * Yes, OpenFlow devices

* Other security issues?

  N/A

Quality Assurance
=================

* `Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.openflowplugin%3Aopenflowplugin-aggregator>`_ (67.2%)
* `CSIT Jobs <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * Yes, APIs from the previous release are supported in the Sodium release.

Compatibility
-------------

* Is this release compatible with the previous release? Yes

Bugs Fixed
----------

List of bugs fixed since the previous release.

* `Fixed bugs <https://jira.opendaylight.org/browse/OPNFLWPLUG-1074?jql=project%20%3D%20OPNFLWPLUG%20AND%20issuetype%20in%20(Bug%2C%20Improvement)%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20fixVersion%20%3D%20Magnesium%20ORDER%20BY%20created%20DESC>`_

Known Issues
------------

No Known issues in this release.


End-of-life
===========

* List of features/APIs that were EOLed, deprecated, and/or removed from this release.

  * None

Standards
=========

OpenFlow versions:

* `OpenFlow1.3.2 <https://www.openflow.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-spec-v1.3.2.pdf>`_
* `OpenFlow1.0.0 <https://www.openflow.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-spec-v1.0.0.pdf>`_

Release Mechanics
=================

* `Release plan <https://jira.opendaylight.org/browse/TSC-244>`_
