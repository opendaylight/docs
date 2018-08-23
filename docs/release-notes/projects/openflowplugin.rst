======================
OpenFlowPlugin Project
======================

New Features
============
* Arbitrator based device reconciliation mechanism to support replay based controller reboot/upgrade. More details :
  :doc:`../../submodules/openflowplugin/docs/specs/arbitrator-reconciliation`

* Implementation of officially released Nicira NSH extensions. Existing non-GA'ed Nicira NSH extensions were removed.

* Implemented equal role functionality : Once user enable this feature, OpenFlow plugin will not send the master or
  salve role request to the device. It will internally maintain the ownership of individual device at the plugin
  level, but device will always be connected to all the controllers with equal role. This setting is not recommended
  if the user application highly rely on the packet-in feature of OpenFlow plugin, given tha in equal role, switch sends the packet to all the controllers. Although non-owner controller will drop the packet at the very low level, but it can still be a performance hit for the switch to send packet to all the controllers.

* Forwarding rule manager application is enhanced to take care of the flow to group dependency while programming the
  flow/group to avoid programming of the dependent flows.

* Device connection rate limiter functionality : This feature can be leveraged to limit the number of device per
  seconds connects to the OpenFlow plugin.

* New configuration parameters were introduced to disable specific statistics collection from the switch. By default
  all the statistics are enabled.

* Southbound CLI was enhanced to add CLI command to trigger manual reconciliation of any or all connected OpenFlow
  device. More details : :doc:`../../submodules/openflowplugin/docs/specs/southbound-cli`

* Implementation of Nicira extension (ct_tp_src, ct_tp_dst)
* Migrated LLDP library code from controller project to openflowplugin project.
* odl-openflowplugin-app-config-pusher module is made cluster aware.
* odl-openflowplugin-app-topology feature is now broken into 3 separate features
  (odl-openflowplugin-app-lldp-speaker, odl-openflowplugin-app-topology-lldp-discovery,
  odl-openflowplugin-app-topology-manager) including this high level feature, so that user can load the feature that
  they really need for their use-case rather than loading all the features together.

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

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/

odl-openflowplugin-app-config-pusher
------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-config-pusher/pom.xml
* **Feature Description:** Pushes node configuration changes to OpenFlow device
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/

odl-openflowplugin-app-forwardingrules-manager
----------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-forwardingrules-manager/pom.xml
* **Feature Description:** Sends changes in config datastore to OpenFlow device incrementally. forwardingrules-manager can be replaced with forwardingrules-sync and vice versa.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/

odl-openflowplugin-app-forwardingrules-sync
-------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-forwardingrules-sync/pom.xml
* **Feature Description:** Sends changes in config datastore to OpenFlow devices taking previous state in account and doing diffs between previous and new state. forwardingrules-sync can be replaced with forwardingrules-manager and vice versa.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** Yes
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/job/openflowplugin-csit-1node-flow-services-all-fluorine/

odl-openflowplugin-app-table-miss-enforcer
------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-table-miss-enforcer/pom.xml
* **Feature Description:** Sends table miss flows to OpenFlow device when it connects
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/

odl-openflowplugin-app-topology
-------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-topology/pom.xml
* **Feature Description:** Discovers topology of connected OpenFlow devices. It a wrapper feature that loads the following 3 features together : (odl-openflowplugin-app-lldp-speaker, odl-openflowplugin-app-topology-lldp-discovery, odl-openflowplugin-app-topology-manager).
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/

odl-openflowplugin-app-lldp-speaker
-----------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-topology/pom.xml
* **Feature Description:** Send periodic LLDP packets on all the ports of all the connected OpenFlow devices.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/

odl-openflowplugin-app-topology-lldp-discovery
----------------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-topology/pom.xml
* **Feature Description:** Receives the LLDP packet sent by LLDP speaker service and generate the link information and publish to the downstream services looking for link notifications.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/

odl-openflowplugin-app-topology-manage
--------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-app-topology/pom.xml
* **Feature Description:** Listen to the link added/removed notification and node connect/disconnection notification and update the link information in the OpenFlow topology.
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/

odl-openflowplugin-nxm-extensions
---------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=extension/features-extension-aggregator/odl-openflowplugin-nxm-extensions/pom.xml
* **Feature Description:** Support for OpenFlow Nicira Extensions
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/netvirt/job/netvirt-csit-1node-openstack-pike-gate-stateful-snat-conntrack-fluorine/


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

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/

odl-openflowplugin-flow-services-rest
-------------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-flow-services-rest/pom.xml
* **Feature Description:** Wrapper + REST interface
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/

odl-openflowplugin-flow-services-ui
-----------------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-flow-services-ui/pom.xml
* **Feature Description:** Wrapper + REST interface + UI
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin

odl-openflowplugin-nsf-model
----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-nsf-model/pom.xml
* **Feature Description:** OpenFlowPlugin YANG models
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/

odl-openflowplugin-southbound
-----------------------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=blob;f=features-aggregator/odl-openflowplugin-southbound/pom.xml
* **Feature Description:** Southbound API implementation
* **Top Level:** Yes
* **User Facing:** No
* **Experimental:** No
* **CSIT Test:**

  * https://jenkins.opendaylight.org/releng/view/openflowplugin/

Documentation
=============

* **User Guide(s):**

  * :doc:`../../user-guide/openflow-plugin-project-user-guide`

* **Developer Guide(s):**

  * :doc:`../../developer-guide/openflow-plugin-project-developer-guide`

* **Features Documentation:**

  * :doc:`../../submodules/openflowplugin/docs/`

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

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.openflowplugin%3Aopenflowplugin-aggregator>`_ (67.7%)
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  Yes, API's from Oxygen release are supported in Fluorine release except the Nicira NSH related extension yang data
  models. Implementation present in Oxygen release was based on the non-GA version of NSH extension. In Fluorine
  release these deprecated non-GA Yang models are removed and GA'ed NSH extensions were implemented.

Compatibility
-------------

* Is this release compatible with the previous release? Yes

Bugs Fixed
----------

* List of bugs fixed since the previous release

  https://jira.opendaylight.org/browse/OPNFLWPLUG-1028?jql=project%20%3D%20OPNFLWPLUG%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Resolved%2C%20%22In%20Review%22%2C%20Verified)%20AND%20fixVersion%20%3D%20Fluorine%20ORDER%20BY%20created%20DESC

Known Issues
------------

* List key known issues with workarounds: In case of heavy load, multiple devices (40+) are connected and user is
  trying to install 100K+ flows, devices sometime proactive disconnect because controller is not able to response to
  echo request because of the heavy load. To workaround this issue, it's recommended that user set the echo time
  interval in switch to high value (30 seconds).
* `Link to Open Bugs <https://jira.opendaylight.org/browse/OPNFLWPLUG-1029?jql=project%20%3D%20OPNFLWPLUG%20AND%20issuetype%20%3D%20Bug%20AND%20status%20in%20(Open%2C%20%22In%20Progress%22%2C%20%22In%20Review%22%2C%20Confirmed)%20ORDER%20BY%20created%20DESC>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release: Non-GA'ed Nicira NSH extensions
  present in the Oxygen released are removed and GA'ed NSH extension were implemented.

Standards
=========

OpenFlow versions:

* `OpenFlow1.3.2 <https://www.openflow.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-spec-v1.3.2.pdf>`_
* `OpenFlow1.0.0 <https://www.openflow.org/images/stories/downloads/sdn-resources/onf-specifications/openflow/openflow-spec-v1.0.0.pdf>`_

Release Mechanics
=================

* `Link to release plan <https://jira.opendaylight.org/browse/TSC-51>`_
