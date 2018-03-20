======================
OpenFlowPlugin Project
======================

Major Features
==============

odl-openflowjava-protocol
-------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=openflowjava/features-openflowjava-aggregator/odl-openflowjava-protocol/pom.xml
* **Feature Description:** OpenFlow protocol implementation
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin-oxygen/

odl-openflowplugin-app-config-pusher
------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-config-pusher/pom.xml
* **Feature Description:** Pushes node configuration changes to OpenFlow device
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin-oxygen/

odl-openflowplugin-app-forwardingrules-manager
----------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-forwardingrules-manager/pom.xml
* **Feature Description:** Sends changes in config datastore to OpenFlow device incrementally. forwardingrules-manager can be replaced with forwardingrules-sync and vice versa.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin-oxygen/

odl-openflowplugin-app-forwardingrules-sync
-------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-forwardingrules-sync/pom.xml
* **Feature Description:** Sends changes in config datastore to OpenFlow devices taking previous state in account and doing diffs between previous and new state. forwardingrules-sync can be replaced with forwardingrules-manager and vice versa.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin-oxygen/job/openflowplugin-csit-1node-flow-services-all-oxygen/

odl-openflowplugin-app-table-miss-enforcer
------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-table-miss-enforcer/pom.xml
* **Feature Description:** Sends table miss flows to OpenFlow device when it connects
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin-oxygen/

odl-openflowplugin-app-topology
-------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-topology/pom.xml
* **Feature Description:** Discovers topology of connected OpenFlow devices
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin-oxygen/

odl-openflowplugin-nxm-extensions
---------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=extension/features-extension-aggregator/odl-openflowplugin-nxm-extensions/pom.xml
* **Feature Description:** Support for OpenFlow Nicira Extensions
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/netvirt/job/netvirt-csit-1node-openstack-pike-gate-stateful-snat-conntrack-oxygen/


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

  * https://jenkins.opendaylight.org/releng/view/openflowplugin-oxygen/

odl-openflowplugin-flow-services-rest
-------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-flow-services-rest/pom.xml
* **Feature Description:** Wrapper + REST interface
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin-oxygen/

odl-openflowplugin-flow-services-ui
-----------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-flow-services-ui/pom.xml
* **Feature Description:** Wrapper + REST interface + UI
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin-oxygen/

odl-openflowplugin-nsf-model
----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-nsf-model/pom.xml
* **Feature Description:** OpenFlowPlugin YANG models
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin-oxygen/

odl-openflowplugin-southbound
-----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-southbound/pom.xml
* **Feature Description:** Southbound API implementation
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin-oxygen/

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

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.openflowplugin%3Aopenflowplugin-aggregator>`_ (73.8)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/openflowplugin-oxygen/>`_

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  Yes, API's from Nitrogen release are supported in Oxygen release.

Compatibility
-------------

* Is this release compatible with the previous release? Yes

Bugs Fixed
----------

* List of bugs fixed since the previous release

  https://jira.opendaylight.org/browse/OPNFLWPLUG-974?jql=project%20%3D%20OPNFLWPLUG%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Resolved%2C%20Verified)%20AND%20fixVersion%20in%20(Oxygen%2C%20Nitrogen%2C%20Nitrogen-SR1)%20ORDER%20BY%20created%20DESC

Known Issues
------------

* List key known issues with workarounds: None
* `Link to Open Bugs <https://jira.opendaylight.org/browse/OPNFLWPLUG-987?jql=project%20%3D%20OPNFLWPLUG%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Open%2C%20%22In%20Progress%22%2C%20Confirmed)%20ORDER%20BY%20created%20DESC>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release: None

Standards
=========

OpenFlow versions:

* `OpenFlow1.3.2 <https://www.openflow.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-spec-v1.3.2.pdf>`_
* `OpenFlow1.0.0 <https://www.openflow.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-spec-v1.0.0.pdf>`_

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/OpenDaylight_OpenFlow_Plugin:Oxygen_Release_Plan>`_
