======================
OpenFlowPlugin Project
======================

Major Features
==============

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

* Is it possible to migrate from the previous release? If so, how?

  Yes. `single-layer-serialization needs to be disabled <https://wiki.opendaylight.org/view/OpenDaylight_OpenFlow_Plugin:OF13%2B_Single_Layer_Serialization#Enabling.2FDisabling_Single_Layer_Serialization>`_
  in order to achieve same functionality as in previous release.

Compatibility
-------------

* Is this release compatible with the previous release? Yes
* Any API changes? No changes in the yang models from previous release
* Any configuration changes? Other than addition of `single-layer-serialization <https://wiki.opendaylight.org/view/OpenDaylight_OpenFlow_Plugin:OF13%2B_Single_Layer_Serialization>`_ configuration parameter there were no changes.

Bugs Fixed
----------

* List of bugs fixed since the previous release

  https://bugs.opendaylight.org/buglist.cgi?chfieldfrom=2016-08-09&chfieldto=2017-05-25&list_id=78767&product=openflowplugin&query_format=advanced&resolution=FIXED

Known Issues
------------

* List key known issues with workarounds: None
* `Link to Open Bugs <https://bugs.opendaylight.org/buglist.cgi?bug_severity=blocker&bug_severity=critical&bug_severity=major&bug_severity=normal&bug_severity=minor&bug_severity=trivial&bug_status=UNCONFIRMED&bug_status=CONFIRMED&bug_status=IN_PROGRESS&bug_status=WAITING_FOR_REVIEW&component=General&list_id=78939&product=openflowplugin&query_format=advanced&resolution=--->`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release:

  Beryllium design (a.k.a. Helium design) was deprecated in Boron and projects were moved to the Boron (a.k.a. Lithium) design. All new Boron development in Carbon was on the Boron design only - and future development will only be on the Boron design going forward. Helium design is planned to be removed in Nitrogen release.

Standards
=========

OpenFlow versions:

* `OpenFlow1.3.2 <https://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-spec-v1.3.2.pdf>`_
* `OpenFlow1.0.0 <https://www.opennetworking.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-spec-v1.0.0.pdf>`_

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OpenDaylight_OpenFlow_Plugin:Carbon_Release_Plan>`_
