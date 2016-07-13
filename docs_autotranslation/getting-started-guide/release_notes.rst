*************
Release Notes
*************

Target Environment
==================

For Execution
-------------

The OpenDaylight Karaf container, OSGi bundles, and Java class files
are portable and should run on any Java 7- or Java 8-compliant JVM to
run. Certain projects and certain features of some projects may have
additional requirements. Those are noted in the project-specific
release notes.

Projects and features which have known additional requirements are:

* TCP-MD5 requires 64-bit Linux
* TSDR has extended requirements for external databases
* Persistence has extended requirements for external databases
* SFC requires addition features for certain configurations
* SXP depends on TCP-MD5 on thus requires 64-bit Linux
* SNBI has requirements for Linux and Docker
* OpFlex requires Linux
* DLUX requires a modern web browser to view the UI
* AAA when using federation has additional requirements for external tools
* VTN has components which require Linux

For Development
---------------

OpenDaylight is written primarily in Java project and primarily uses
Maven as a build tool Consequently the two main requirements to develop
projects within OpenDaylight are:

* A Java 8-compliant JDK
* Maven 3.1.1 or later

Applications and tools built on top of OpenDaylight using it's REST
APIs should have no special requirements beyond whatever is needed to
run the application or tool and make the REST calls.

In some places, OpenDaylight makes use of the Xtend language. While
Maven will download the appropriate tools to build this, additional
plugins may be required for IDE support.

The projects with additional requirements for execution typically have
similar or more extensive additional requirements for development. See
the project-specific release notes for details.

Known Issues and Limitations
============================

Other than as noted in project-specific release notes, we know of the
following limitations:

* Migration from Helium, Lithium and Beryllium to Boron has not been
  extensively tested. The per-project release notes include migration and
  compatibility information when it is known.
* There are scales beyond which the controller has been unreliable when
  collecting flow statistics from OpenFlow switches. In tests, these
  issues became apparent when managing thousands of OpenFlow
  switches, however this may vary depending on deployment and use cases.

.. _proj_rel_notes:

Project-specific Release Notes
==============================

For the release notes of individual projects, please see the following pages on the OpenDaylight Wiki.

TBD: add Boron release notes

* Authentication, Authorization and Accounting (AAA_)
* ALTO_
* BGPCEP_
* Controller_
* Control And Provisioning of Wireless Access Points (CAPWAP_)
* Identification and Driver Management (DIDM_)
* DLUX_
* FaaS_
* Group_Based_Policy_ (GPB)
* Internet of Things Data Management (IoTDM_)
* L2_Switch_
* Link Aggregation Control Protocol (LACP_)
* LISP_Flow_Mapping_
* MDSAL_
* NEMO_
* NETCONF_
* NetIDE_
* NeXt_
* Network Intent Composition (NIC_)
* Neutron_Northbound_
* OF-Config_
* OpFlex_
* OpenFlow_Plugin_
* OpenFlow_Protocol_Library_
* OVSDB_Netvirt_
* Packet_Cable_ / PCMM
* SDN_Interface_Application_
* Secure Network Bootstrapping Infrastructure (SNBI_)
* SNMP4SDN_
* SNMP_Plugin_
* Secure tag eXchange Protocol (SXP_)
* Service Function Chaining (SFC_)
* TCPMD5_
* Time Series Data Repository (TSDR_)
* Table Type Patterns (TTP_)
* Topology_Processing_Framework_
* Unified Secure Channel (USC_)
* VPN_Service_
* Virtual Tenant Network (VTN_)
* YANG_Tools_

Projects without Release Notes
------------------------------

The following projects participated in Boron, but intentionally do not have release notes.

* **Documentation Project** produced this and the other downloadable documentation
* **Integration Group** hosted the OpenDaylight-wide tests and main release distribution
* **Release Engineering - autorelease** was used to build the Boron release artifacts and including the main release download.

.. _AAA: https://wiki.opendaylight.org/view/AAA:Beryllium_Release_Notes
.. _ALTO: https://wiki.opendaylight.org/view/ALTO:Beryllium:Release_Notes
.. _BGPCEP: https://wiki.opendaylight.org/view/BGP_LS_PCEP:Beryllium_Release_Notes
.. _CAPWAP: https://wiki.opendaylight.org/view/CAPWAP:Beryllium:Release_Notes
.. _Controller: https://wiki.opendaylight.org/view/OpenDaylight_Controller:Beryllium:Release_Notes
.. _DIDM: https://wiki.opendaylight.org/view/DIDM:_Beryllium_Release_Notes
.. _DLUX: https://wiki.opendaylight.org/view/OpenDaylight_DLUX:Beryllium:Release_Notes
.. _FaaS: https://wiki.opendaylight.org/view/FaaS:Beryllium_Release_Notes
.. _Group_Based_Policy: https://wiki.opendaylight.org/view/Group_Based_Policy_(GBP)/Releases/Beryllium:Beryllium_Release_Notes
.. _IoTDM: https://wiki.opendaylight.org/view/Iotdm:Beryllium_Release_Notes
.. _L2_Switch: https://wiki.opendaylight.org/view/L2_Switch:Beryllium:Release_Notes
.. _LACP: https://wiki.opendaylight.org/view/LACP:Beryllium:Release_Notes
.. _LISP_Flow_Mapping: https://wiki.opendaylight.org/view/OpenDaylight_Lisp_Flow_Mapping:Beryllium_Release_Notes
.. _MDSAL: https://wiki.opendaylight.org/view/MD-SAL:Beryllium:Release_Notes
.. _NEMO: https://wiki.opendaylight.org/view/NEMO:Beryllium:Release_Notes
.. _NETCONF: https://wiki.opendaylight.org/view/OpenDaylight_NETCONF:Beryllium_Release_Notes
.. _NetIDE: https://wiki.opendaylight.org/view/NetIDE:Release_Notes
.. _NeXt: https://wiki.opendaylight.org/view/NeXt:Beryllium_Release_Notes
.. _NIC: https://wiki.opendaylight.org/view/Network_Intent_Composition:Release_Notes
.. _Neutron_Northbound: https://wiki.opendaylight.org/view/NeutronNorthbound:Beryllium:Release_Notes
.. _OF-Config: https://wiki.opendaylight.org/view/OF-CONFIG:Beryllium:Release_Notes
.. _OpFlex: https://wiki.opendaylight.org/view/OpFlex:Beryllium_Release_Notes
.. _OpenFlow_Plugin: https://wiki.opendaylight.org/view/OpenDaylight_OpenFlow_Plugin:Beryllium_Release_Notes
.. _OpenFlow_Protocol_Library: https://wiki.opendaylight.org/view/Openflow_Protocol_Library:Release_Notes:Beryllium_Release_Notes
.. _OVSDB_Netvirt: https://wiki.opendaylight.org/view/OpenDaylight_OVSDB:Beryllium_Release_Notes
.. _Packet_Cable: https://wiki.opendaylight.org/view/PacketCablePCMM:BerylliumReleaseNotes
.. _SDN_Interface_Application: https://wiki.opendaylight.org/view/ODL-SDNi:Beryllium_Release_Notes
.. _SNBI: https://wiki.opendaylight.org/view/SNBI_Berrylium_Release_Notes
.. _SNMP4SDN: https://wiki.opendaylight.org/view/SNMP4SDN:Beryllium_Release_Note
.. _SNMP_Plugin: https://wiki.opendaylight.org/view/SNMP_Plugin:SNMP_Plugin:Beryllium_Release_Notes
.. _SXP: https://wiki.opendaylight.org/view/SXP:Beryllium:Release_Notes
.. _SFC: https://wiki.opendaylight.org/view/Service_Function_Chaining:Beryllium_Release_Notes
.. _TCPMD5: https://wiki.opendaylight.org/view/TCPMD5:Beryllium_Release_Notes
.. _TSDR: https://wiki.opendaylight.org/view/TSDR:Beryllium:Release_Notes
.. _TTP: https://wiki.opendaylight.org/view/Table_Type_Patterns/Beryllium/Release_Notes
.. _Topology_Processing_Framework: https://wiki.opendaylight.org/view/Topology_Processing_Framework:BERYLLIUM_Release_Notes
.. _USC: https://wiki.opendaylight.org/view/USC:Beryllium:Release_Notes
.. _VPN_Service: https://wiki.opendaylight.org/view/Vpnservice:Beryllium_Release_Notes
.. _VTN: https://wiki.opendaylight.org/view/VTN:Beryllium:Release_Notes
.. _YANG_Tools: https://wiki.opendaylight.org/view/YANG_Tools:Beryllium:Release_Notes
