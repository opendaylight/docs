======================
OpenFlowPlugin Project
======================

Major Features
==============

odl-openflowjava-protocol
------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=openflowjava/features-openflowjava-aggregator/odl-openflowjava-protocol/pom.xml
* **Feature Description:** OpenFlow protocol implementation
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-clustering-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-bulkomatic-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-periodic-bulkomatic-clustering-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-gate-scale-stats-collection-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-scale-stats-collection-daily-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-sw-scalability-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-link-scalability-daily-only-carbon/

odl-openflowplugin-app-config-pusher
------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-config-pusher/pom.xml
* **Feature Description:** Pushes node configuration changes to OpenFlow device
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-clustering-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-bulkomatic-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-periodic-bulkomatic-clustering-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-gate-scale-stats-collection-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-scale-stats-collection-daily-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-sw-scalability-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-link-scalability-daily-only-carbon/

odl-openflowplugin-app-forwardingrules-manager
----------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-forwardingrules-manager/pom.xml
* **Feature Description:** Sends changes in config datastore to OpenFlow device incrementally. forwardingrules-manager can be replaced with forwardingrules-sync and vice versa.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-gate-scale-stats-collection-daily-only-carbon/

odl-openflowplugin-app-forwardingrules-sync
-------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-forwardingrules-sync/pom.xml
* **Feature Description:** Sends changes in config datastore to OpenFlow devices taking previous state in account and doing diffs between previous and new state. forwardingrules-sync can be replaced with forwardingrules-manager and vice versa.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-scale-stats-collection-daily-frs-only-carbon/

odl-openflowplugin-app-table-miss-enforcer
------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-table-miss-enforcer/pom.xml
* **Feature Description:** Sends table miss flows to OpenFlow device when it connects
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-sw-scalability-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-link-scalability-daily-only-carbon/

odl-openflowplugin-app-topology
-------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-topology/pom.xml
* **Feature Description:** Discovers topology of connected OpenFlow devices
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-clustering-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-bulkomatic-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-periodic-bulkomatic-clustering-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-gate-scale-stats-collection-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-scale-stats-collection-daily-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-sw-scalability-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-link-scalability-daily-only-carbon/

odl-openflowplugin-nxm-extensions
---------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=extension/features-extension-aggregator/odl-openflowplugin-nxm-extensions/pom.xml
* **Feature Description:** Support for OpenFlow Nicira Extensions
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/netvirt/job/netvirt-csit-1node-openstack-newton-upstream-stateful-snat-conntrack-carbon/


odl-openflowplugin-onf-extensions
---------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=extension/features-extension-aggregator/odl-openflowplugin-onf-extensions/pom.xml
* **Feature Description:** Support for Open Networking Foundation Extensions
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** No

odl-openflowplugin-flow-services
--------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-flow-services/pom.xml
* **Feature Description:** Wrapper feature for standard applications
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-clustering-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-bulkomatic-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-periodic-bulkomatic-clustering-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-gate-scale-stats-collection-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-scale-stats-collection-daily-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-sw-scalability-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-link-scalability-daily-only-carbon/

odl-openflowplugin-flow-services-rest
-------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-flow-services-rest/pom.xml
* **Feature Description:** Wrapper + REST interface
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-clustering-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-bulkomatic-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-periodic-bulkomatic-clustering-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-gate-scale-stats-collection-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-scale-stats-collection-daily-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-sw-scalability-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-link-scalability-daily-only-carbon/

odl-openflowplugin-flow-services-ui
-----------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-flow-services-ui/pom.xml
* **Feature Description:** Wrapper + REST interface + UI
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-clustering-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-bulkomatic-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-periodic-bulkomatic-clustering-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-gate-scale-stats-collection-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-scale-stats-collection-daily-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-sw-scalability-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-link-scalability-daily-only-carbon/

odl-openflowplugin-nsf-model
----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-nsf-model/pom.xml
* **Feature Description:** OpenFlowPlugin YANG models
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-clustering-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-bulkomatic-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-periodic-bulkomatic-clustering-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-gate-scale-stats-collection-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-scale-stats-collection-daily-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-sw-scalability-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-link-scalability-daily-only-carbon/

odl-openflowplugin-southbound
-----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-southbound/pom.xml
* **Feature Description:** Southbound API implementation
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-clustering-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-bulkomatic-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-3node-periodic-bulkomatic-clustering-perf-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-gate-scale-stats-collection-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-scale-stats-collection-daily-frs-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-sw-scalability-daily-only-carbon/
  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-periodic-link-scalability-daily-only-carbon/

Documentation
=============

* **User Guide(s):**

  * :doc:`../../user-guide/openflow-plugin-project-user-guide`

* **Developer Guide(s):**

  * :doc:`../../developer-guide/openflow-plugin-project-developer-guide`

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF? Yes, OpenFlow devices
* Other security issues?

  * `Insecure OpenFlowPlugin <--> OpenFlow device connections <https://wiki.opendaylight.org/view/OpenDaylight_OpenFlow_Plugin:_TLS_Support>`_
  * Topology spoofing: non authenticated LLDP packets to detect links between switches which makes it vulnerable to a number of attacks, one of which is topology spoofing  The problem is that all controllers we have tested set chassisSubtype value to the MAC address of the local port of the switch, which makes it easy for an adversary to spoof that switch since controllers use that MAC address as a unique identifier of the switch. By intercepting clear LLDP packets containing MAC addresses, a malicious switch can spoof other switches to falsify the controller’s topology graph.
  * DoS: an adversary switch could generate LLDP flood resulting in bringing down the openflow network
  * `DoS attack when the switch rejects to receive packets from the controller <https://wiki.opendaylight.org/view/Security_Advisories#.5BModerate.5D_CVE-2017-1000357_Denial_of_Service_attack_when_the_switch_rejects_to_receive_packets_from_the_controller>`_


Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=org.opendaylight.openflowplugin%3Aopenflowplugin-aggregator>`_ (73.8)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

Migration
---------

* Is is possible migrate from the previous release? If so, how?

  Yes, OpenFlowJava was merged into OpenFlowPlugin, so if project was relying on **org.opendaylight.openflowjava** dependency, it was moved to **org.opendaylight.openflowplugin.openflowjava**. Feature **odl-openflowjava-protocol** is same as before.

Compatibility
-------------

* Is this release compatible with the previous release? Yes
* Any API changes? Yes, `mastershipChangeServiceManager <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=openflowplugin-api/src/main/java/org/opendaylight/openflowplugin/api/openflow/mastership/MastershipChangeServiceManager.java>` and `reconcilliationManager <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=applications/reconciliation-framework/src/main/java/org/opendaylight/openflowplugin/applications/reconciliation/ReconciliationManager.java>` blueprint services was added
* Any configuration changes? Yes, **bundle-based-reconcilliation** flag was added to `configuration file <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=openflowplugin-blueprint-config/src/main/resources/initial/openflowplugin.cfg#l33>`

Bugs Fixed
----------

* List of bugs fixed since the previous release

  https://bugs.opendaylight.org/buglist.cgi?chfieldfrom=2017-05-25&chfieldto=2017-09-12&list_id=78767&product=openflowplugin&query_format=advanced&resolution=FIXED

Known Issues
------------

* List key known issues with workarounds: None
* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_severity=blocker&bug_severity=critical&bug_severity=major&bug_severity=normal&bug_severity=minor&bug_severity=trivial&bug_status=UNCONFIRMED&bug_status=CONFIRMED&bug_status=IN_PROGRESS&bug_status=WAITING_FOR_REVIEW&component=General&list_id=78939&product=openflowplugin&query_format=advanced&resolution=--->`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release: None

Standards
=========

OpenFlow versions:

* `OpenFlow1.3.2 <https://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-spec-v1.3.2.pdf>`_
* `OpenFlow1.0.0 <https://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-spec-v1.0.0.pdf>`_

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OpenDaylight_OpenFlow_Plugin:Nitrogen_Release_Plan>`_
