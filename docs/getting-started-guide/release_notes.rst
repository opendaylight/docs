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

Project Specific Release Notes
==============================

For the release notes of individual projects, please see the following pages on the OpenDaylight Wiki.

* `ALTO <https://wiki.opendaylight.org/view/ALTO:Boron:Release_Notes>`_
* `Atrium Router <https://wiki.opendaylight.org/view/Atrium:Boron_Release_Notes>`_
* `Authentication, Authorization and Accounting (AAA) <https://wiki.opendaylight.org/view/AAA:Boron:Release_Notes>`_
* `BGP PCEP <https://wiki.opendaylight.org/view/BGP_LS_PCEP:Boron_Release_Notes>`_
* `Cardinal <https://wiki.opendaylight.org/view/Cardinal:Boron:Release_Notes>`_
* `Centinel <https://wiki.opendaylight.org/view/Centinel:Boron:Release_Notes>`_
* `Control And Provisioning of Wireless Access Points (CAPWAP) <https://wiki.opendaylight.org/view/CAPWAP:Boron:Release_Notes>`_
* `Controller <https://wiki.opendaylight.org/view/OpenDaylight_Controller:Boron:Release_Notes>`_
* `Controller Shield <https://wiki.opendaylight.org/view/Controller_Shield:Boron_Release_Notes>`_
* `DLUX <https://wiki.opendaylight.org/view/OpenDaylight_DLUX:Boron:Release_Notes>`_
* `Device Identification and Driver Management (DIDM) <https://wiki.opendaylight.org/view/DIDM:_Boron_Release_Notes>`_
* `Documentation <https://wiki.opendaylight.org/view/Documentation/Boron/Release_Notes>`_
* `Energy Management Plugin <https://wiki.opendaylight.org/view/Eman:Boron_Release_Notes>`_
* `Fabric As A Service (FaaS) <https://wiki.opendaylight.org/view/FaaS:Boron_Release_Notes>`_
* `Genius <https://wiki.opendaylight.org/view/Genius:Boron:Release_Note>`_
* `Group Based Policy (GBP) <https://wiki.opendaylight.org/view/Group_Based_Policy_(GBP)/Releases/Boron/Release_review>`_
* `Honeycomb Virtual Bridge Domain <https://wiki.opendaylight.org/view/Honeycomb/vbd:Boron:Release_Notes>`_
* `Infrastructure Utilities <https://wiki.opendaylight.org/view/Infrastructure_Utilities:BoronReleaseNotes>`_
* `Integration/Distribution <https://wiki.opendaylight.org/view/Integration/Distribution/Boron_Release_Notes>`_
* `Internet of Things Data Management (IoTDM) <https://wiki.opendaylight.org/view/Iotdm:_Boron_Release_Review>`_
* `L2 Switch <https://wiki.opendaylight.org/view/L2_Switch:Boron:Release_Notes>`_
* `LISP Flow Mapping <https://wiki.opendaylight.org/view/OpenDaylight_Lisp_Flow_Mapping:Boron_Release_Notes>`_
* `Link Aggregation Control Protocol (LACP) <https://wiki.opendaylight.org/view/LACP:Release_Notes>`_
* `MD-SAL <https://wiki.opendaylight.org/view/MD-SAL:Boron:Release_Notes>`_
* `NAT Application Plugin <https://wiki.opendaylight.org/view/NATApp_Plugin:Boron_Release_Notes>`_
* `NETCONF <https://wiki.opendaylight.org/view/NETCONF:Boron:Release_Notes>`_
* `NEtwork MOdeling (NEMO) <https://wiki.opendaylight.org/view/NEMO:Boron:Release_Notes>`_
* `NeXt UI Toolkit <https://wiki.opendaylight.org/view/NeXt:Boron_Release_Notes>`_
* `NetIDE <https://wiki.opendaylight.org/view/NetIDE:Boron_Release_Notes>`_
* `Network Intent Composition (NIC) <https://wiki.opendaylight.org/view/Network_Intent_Composition:Boron:Release_Notes>`_
* `Network Virtualization <https://wiki.opendaylight.org/view/NetVirt:Boron_Release_Notes>`_
* `Neutron Northbound <https://wiki.opendaylight.org/view/NeutronNorthbound:Boron:Release_Notes>`_
* `ODL Root Parent <https://wiki.opendaylight.org/view/ODL_Parent:Boron:Release_Notes>`_
* `ORI C&M Protocol (OCP) <https://wiki.opendaylight.org/view/OCP_Plugin:Boron_Release_Review>`_
* `OVSDB Integration <https://wiki.opendaylight.org/view/OpenDaylight_OVSDB:Boron_Release_Notes>`_
* `OpenFlow Configuration Protocol (OF-CONFIG) <https://wiki.opendaylight.org/view/OF-CONFIG:Boron:Release_Notes>`_
* `OpenFlow Plugin <https://wiki.opendaylight.org/view/OpenDaylight_OpenFlow_Plugin:Boron_Release_Notes>`_
* `OpenFlow Protocol Library <https://wiki.opendaylight.org/view/Openflow_Protocol_Library:Release_Notes:Boron_Release_Notes>`_
* `Packet Cable/PCMM <https://wiki.opendaylight.org/index.php?title=PacketCablePCMM:BoronReleaseNotes&action=edit&redlink=1>`_
* `SDN Interface Application (SDNi) <https://wiki.opendaylight.org/view/ODL-SDNi:Boron_Release_Notes>`_
* `SNMP Plugin <https://wiki.opendaylight.org/view/SNMP_Plugin:Boron:Release_Notes>`_
* `SNMP4SDN <https://wiki.opendaylight.org/view/SNMP4SDN:Boron_Release_Note>`_
* `Secure Network Bootstrapping Infrastructure (SNBI) <https://wiki.opendaylight.org/view/SNBI_Boron_Release_Notes>`_
* `Secure tag eXchange Protocol (SXP) <https://wiki.opendaylight.org/view/SXP:Boron:Release_Notes>`_
* `Service Function Chaining <https://wiki.opendaylight.org/view/Service_Function_Chaining:Boron_Release_Notes>`_
* `Table Type Patterns (TTP) <https://wiki.opendaylight.org/view/Table_Type_Patterns/Boron/Release_Notes>`_
* `Time Series Data Repository (TSDR) <https://wiki.opendaylight.org/view/Boron_Release_Notes>`_
* `Topology Processing Framework <https://wiki.opendaylight.org/view/Topology_Processing_Framework:BORON_Release_Notesh>`_
* `Unified Secure Channel (USC) <https://wiki.opendaylight.org/view/USC:Boron:Release_Notes>`_
* `User Network Interface Manager (UNIMGR) <https://wiki.opendaylight.org/view/Unimgr:BoronReleaseNotes>`_
* `Virtual Tenant Network (VTN) <https://wiki.opendaylight.org/view/VTN:Boron:Release_Notes>`_
* `YANG PUBSUB <https://wiki.opendaylight.org/view/YANG_PUBSUB:Boron:Release_Notes>`_
* `YANG Tools <https://wiki.opendaylight.org/view/YANG_Tools:Boron:Release_Notes>`_

