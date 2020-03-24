===============
OpenFlow Plugin
===============

Overview
========

OpenFlow Plugin project provides the following functionality to the end user.
* **OpenFlow 1.0/1.3 Implementation** Project provides the implementation of
the OpenFlow 1.0 and OpenFlow 1.3 specification.
* **ONF Approved extensions** Project also provides the implementation of
following ONF OpenFlow 1.4 feature that is approved as an extensions for the
OpenFlow 1.3 specification. Following is the list of extensions.
** OpenFlow 1.4 Bundle Feature
* **Nicira Extensions** Project provides the implementation of the Nicira
Extensions. Some of the important extensions implemented are
** Connection Tracking Extension
** Group Add-Mod Extension
* **OpenFlow Based Applications** Project provides the following applications
that user can leverage out-of-the-box in developing their application or as a
direct end consumer.
** Forwarding Rules Manager : Application provides functionality to
add/remove/update flow/groups/meters.
** LLDP Speaker : Application sends periodic LLDP packet out on each OpenFlow
switch port for link discovery.
** Topology LLDP Discovery : Application intercept the LLDP packets and
discover the link information.
** Topology Manager : Application receives the discovered links information
from Topology LLDP Discovery application and stores in the topology yang
model data store.
** Reconciliation Framework : Framework that exposes API's that consumer
application (in-controller) can leverage to participate in the switch
reconciliation process in the event of switch connection/reconnection.
** Arbitrator Reconciliation : Application exposes API's that consumer
application or direct user can leverage to trigger the device
configuration reconciliation.
* **OpenFlow Java Library** Project provides the OpenFlow Java Library that
converts the data based on OpenFlow plugin data models to the OpenFlow java
models before sending it down the wire to the device.
** Reconciliation using Openflow 1.4 Bundle features
Behavior Changes
================
This release introduces no behavior changes from the previous release.

New and Modified Features
=========================
This release doesn't change any feature description.

Deprecated Features
===================
This releases does not removed any feature.

Resolved Issues
===============
Following URL contains the list of issues resolved with this release.
https://jira.opendaylight.org/browse/OPNFLWPLUG-1086?jql=project%20%3D%20OPNFLWPLUG%20AND%20issuetype%20in%20(Bug%2C%20Improvement)%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20fixVersion%20%3D%20Magnesium%20ORDER%20BY%20created%20DESC

Known Issues
============

No Known issues in this release.
