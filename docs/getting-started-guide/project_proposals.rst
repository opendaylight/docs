.. contents::
   :depth: 3
..

= Creation Review =

instructions
============

-  Review the `Project
   Lifecycle <http://www.opendaylight.org/project-lifecycle-releases>`__
   to get a clear picture of how projects work at OpenDaylight.
-  Edit this page and create a reference for a new page to your proposal

   -  For example, create a reference under the `Proposals Submitted For
      Review <#Proposals_Submitted_For_Review>`__ of the form
      [[Project_Proposals:Foo|The Foo Proposal]]

-  Fill in the page you created describing your proposal.

   -  You can use the fake proposal for the `ABC
      Plugin <Project_Proposals:ABC_Plugin>`__ as a template.
   -  Please indicate if you are planning to contribute existing code,
      or start a new project from scratch.
   -  *Note: It is*\ **very**\ *important that you include both the
      opendaylight account name (i.e. Gerrit User ID) and associated
      email address for all initial committers. This will speed the
      on-boarding process immensely.*

-  send mail to
   `project-proposals <mailto:project-proposals@lists.opendaylight.org>`__
   with a reference to your newly created project proposal page
-  Prepare your existing code for contribution. Suggestions can be found
   `here <Project_Proposals:Code_Prep_Suggestions>`__.
-  Submit your code to the OpenDaylight Foundation for IPR Review by
   contacting `Phil Robb <mailto:probb@linuxfoundation.org>`__.

Guidelines for Creation Review
------------------------------

The last step before your project is formally created is to have a
creation review (See section 2.3.1 of the `Project
Lifecycle <http://www.opendaylight.org/project-lifecycle-releases>`__)
during a `TSC meeting <TSC:Main>`__.

-  You can ask for your creation review to be scheduled for any TSC
   meeting that is more than two weeks after the proposal was e-mailed
   to the
   `project-proposals <mailto:project-proposals@lists.opendaylight.org>`__
   list.

   -  Please e-mail the `tsc <mailto:tsc@lists.opendaylight.org>`__ list
      to schedule the Creation Review.
   -  It may not be possible to schedule the creation review on the
      requested day, the TSC does it's best to accommodate requests.

-  Creation reviews typically last 20–30 minutes.

   -  People usually either bring slides or just use their proposal if
      it goes into sufficient detail.
   -  A few diagrams of the major components and how they interact are
      often useful.
   -  If you plan to use slides, please upload them to the wiki ahead of
      time so that people can see them without needing WebEx
      screensharing to work as it's often annoying to get to work on
      Linux.
   -  We conduct the meeting on IRC as well as WebEx, so it's useful to
      have the slides posted to the wiki before the meeting, that way we
      can link them in.
   -  You can find details about both the WebEx and IRC on the `TSC
      page <TSC:Main>`__

-  Common questions that come up are:

   -  Is the committer list complete?
   -  What problem is being solved here? What is the scope of the
      project?
   -  How should we expect it to interact with other related components
      and projects that are already in ODL?
   -  How would an user interact with it? any user story to illustrate?

Guidelines for After Creation Review
------------------------------------

Once your project has been formally approved by the TSC, you'll want to
start getting it set up.

-  Make sure any code you are bringing in goes through IPR Review by
   contacting `Phil Robb <mailto:probb@linuxfoundation.org>`__.
-  Look at the `New Project
   Checklist <GettingStarted:Project_Main#New_Project_Checklist>`__

   -  Of particular note, create a main wiki page for your project using
      the `project facts template <Template:Project_Facts>`__ so that
      people can find key information about your project and so that it
      appears in the `Project list <Project_list>`__.

-  The first thing you'll want to do is to email the OpenDaylight
   `helpdesk <mailto:helpdesk@opendaylight.org>`__ with a link to the
   TSC minutes (or TSC list e-mail) showing your creation review
   approval asking for your resources to be set up.
-  After that, you should start working through the tasks on the
   checklist.

   -  At the very least, you can set up your main project wiki page with
      the key facts while your infrastructure is being set up.

Guidelines for New Projects
---------------------------

`Guidance for New
Projects <GettingStarted:Project_Main#New_Project_Checklist>`__

New Pending Creation Review
===========================

-  `Centennial <Project_Proposals:Centennial>`__
-  `OpenFlow L3 extensions <Project_Proposals:OpenFlow_L3_extensions>`__
-  `Camel Integration <Project_Proposals:Camel_Integration>`__
-  `ModBus Plugin <Project_Proposals:ModBus_Plugin>`__
-  `P4 Plugin <Project_Proposals:P4_Plugin>`__
-  `liblldp <Project_Proposals:liblldp>`__
-  `Telemetry <Project_Proposals:Telemetry>`__
-  `ServiceUtils <Project_Proposals:ServiceUtils>`__

Nitrogen Accepted Creation Review
=================================

(sorted by date accepted into incubation)

-  `P4 Plugin <Project_Proposals:P4_Plugin>`__ entered as incubation
   project on
   `2017-06-22 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-11-10-18.00.html>`__.
-  `BIER_APP <Project_Proposals:BIER_APP>`__ entered as incubation
   project on
   `2017-06-22 <https://meetings.opendaylight.org/opendaylight-meeting/2017/tsc/opendaylight-meeting-tsc.2017-06-22-03.30.html>`__.

Carbon Accepted Creation Review
===============================

(sorted by date accepted into incubation)

-  `Data Export Import <Project_Proposals:Data_Export_Import>`__ entered
   as incubation project on
   `2016-10-13 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-10-13-17.01.html>`__.
-  `Federation Service <Project_Proposals:Federation_Service>`__ entered
   as incubation project on
   `2016-10-27 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-10-27-17.00.html>`__.
-  `DluxApps <Project_Proposals:DluxApps>`__ entered as incubation
   project on
   `2016-10-27 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-10-27-17.00.html>`__.
-  `BIER <Project_Proposals:BIER_Plugin>`__ entered as incubation
   project on
   `2016-11-10 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-11-10-15.29.html>`__.
-  `Cluster Metrics <Project_Proposals:Cluster_Metrics>`__ entered as
   incubation project on
   `2016-11-10 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-11-10-18.00.html>`__.

Boron Accepted Creation Review
==============================

(sorted by date accepted into incubation)

-  `Spectrometer <Project_Proposals:Spectrometer>`__ entered as
   incubation project on
   `2015-11-12 <https://meetings.opendaylight.org/opendaylight-meeting/2015/tsc/opendaylight-meeting-tsc.2015-11-12-18.00.html>`__.
-  `YangIDE <Project_Proposals:YangIDE>`__ entered as incubation project
   on
   `2015-11-19 <https://meetings.opendaylight.org/opendaylight-meeting/2015/tsc/opendaylight-meeting-tsc.2015-11-19-18.00.html>`__.
-  `Kafka Producer <Project_Proposals:Kafkaproducer>`__ entered as
   Incubation project on
   `2015-12-03 <https://meetings.opendaylight.org/opendaylight-meeting/2015/tsc/opendaylight-meeting-tsc.2015-12-03-18.00.html>`__
   **pending incoming code review**.
-  `Energy Management Plug-in <Project_Proposals:Eman>`__ entered as
   Incubation project on
   `2016-03-10 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-03-10-18.00.html>`__.
-  `OCP Plugin <Project_Proposals:OCP_Plugin>`__ entered as Incubation
   project on
   `2016-03-10 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-03-10-18.00.html>`__.
-  `Honeycomb/BridgeDomain <Project_Proposals:HoneyCombBridgeDomain>`__
   entered as Incubation project on
   `2016-03-17 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-03-17-17.00.html>`__.
-  `Infrastructure
   Utilities <Project_Proposals:Infrastructure_Utilities>`__ entered as
   Incubation project on
   `2016-03-17 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-03-17-17.00.html>`__.
-  `Genius <Project_Proposals:Genius>`__ entered as Incubation project
   on
   `2016-03-24 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-03-24-17.00.html>`__.
-  `NAT Application <Project_Proposals:NATApp_Plugin>`__ entered as
   Incubation project on
   `2016-03-24 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-03-24-17.00.html>`__.
-  `Cardinal OpenDaylight Monitoring As a
   Service <Project_Proposals:Cardinal>`__ entered as Incubation project
   on
   `2016-03-31 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-03-31-17.00.html>`__
-  `Atrium Router <Project_Proposals:Atrium_Router>`__ entered as
   Incubation project on
   `2016-03-31 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-03-31-17.00.html>`__
-  `EPC OpenFlow Extension <Project_Proposals:EPC_OpenFlow_Extension>`__
   entered as Incubation project on
   `2016-04-07 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-04-07-17.00.html>`__
-  `NetVirt <Project_Proposals:NetVirt>`__ entered as Mature project on
   `2016-04-07 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-04-07-17.00.html>`__
-  `JSON-RPC 2.0 Extension <Project_Proposals:JSON-RPC2.0-plugin>`__
   entered as Incubation project on
   `2016-04-21 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-04-21-17.00.html>`__
-  `POTN <Project_Proposals:MPLS-TP_Service>`__ entered as Incubation
   project on
   `2016-05-26 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-05-26-17.00.html>`__
-  `SPTN <Project_Proposals:MPLS-TP-Solution>`__ entered as Incubation
   project on
   `2016-05-26 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-05-26-17.00.html>`__
-  `TransportPCE <Project_Proposals:TransportPCE>`__ entered as
   Incubation project on
   `2016-05-26 <https://meetings.opendaylight.org/opendaylight-meeting/2016/tsc/opendaylight-meeting-tsc.2016-05-26-17.00.html>`__

Beryllium Accepted Creation Review
==================================

(sorted by date accepted into incubation)

-  `NEMO: A Language Style NBI <Project_Proposals:NEMO>`__ entered as
   Incubation project on May 7, 2015
-  `Netconf <Project_Proposals:Netconf>`__ entered as Incubation project
   on June 4, 2015
-  `MD-SAL <Project_Proposals:MD-SAL>`__ entered as Incubation project
   on June 4, 2015
-  `NetIDE Network Engine and Developer
   Toolkit <Project_Proposals:NetIDE>`__ entered as Incubation project
   on June 25, 2015
-  `OpenFlow Extensions in Support of Circuit
   Switching <Project_Proposals:openflowplugin-extension-circuitsw>`__
   entered as Incubation project on Jul 23, 2015
-  `Fabric As A Service <Project_Proposals:FaaS>`__ entered as
   Incubation project on Aug 6, 2015
-  `Messaging4Transport <Project_Proposals:Messaging4Transport>`__
   entered as Incubation project on Aug 6, 2015
-  `Unified Controller Security
   plugin <Project_Proposals:Controller_Shield>`__ entered as Incubation
   project on Aug 6, 2015
-  `YANG_PUBSUB <Project_Proposals:YANG_PUBSUB>`__ entered as Incubation
   project on Aug 13, 2015
-  `User Network Interface Manager plugin <Project_Proposals:UNIMgr>`__
   entered as Incubation project on Aug 13, 2015
-  `Centinel: Streaming Data Handler <Project_Proposals:Centinel>`__
   entered as Incubation project on Aug 13, 2015
-  `NeXt UI Toolkit <Project_Proposals:NeXt_UI_Toolkit>`__ entered as
   Incubation project on Aug 13, 2015
-  `Controller Shield <Project_Proposals:Controller_Shield>`__ entered
   as Incubation project on Aug 13, 2015
-  `OF-CONFIG <Project_Proposals:OF-CONFIG>`__ entered as Incubation
   project on Aug 20, 2015
-  `Armoury <Project_Proposals:Armoury>`__ entered as Incubation project
   on Aug 20, 2015
-  `Integration/Test <Project_Proposals:Integration_Test>`__ entered as
   Incubation project on Aug 20, 2015
-  `Integration/Distribution <Project_Proposals:Integration_Distribution>`__
   entered as Incubation project on Aug 20, 2015
-  `Integration/Packaging <Project_Proposals:Integration_Packaging>`__
   entered as Incubation project on Aug 20, 2015

Lithium Accepted Creation Review
================================

(sorted by date accepted into incubation)

-  `Discovery <Project_Proposals:Discovery>`__ entered as Incubation
   project on September 25th, 2014
-  `Release Engineering -
   Builder <Project_Proposals:Release_Engineering_-_Builder>`__ entered
   as Incubation project on October 22nd, 2014
-  `Source Group Tag eXchange Protocol (SXP) <Project_Proposals:SXP>`__
   entered as Incubation project on December 3rd, 2014
-  `Project_Proposals:Internet of Things Data Management
   (IOTDM) <Project_Proposals:Internet_of_Things_Data_Management_(IOTDM)>`__
   entered as Incubation project on December 4th, 2014
-  `VPN Service <Project_Proposals:VPN_Service>`__ entered as Incubation
   project on December 4th, 2014
-  `Unified Secure Channel <Project_Proposals:USC>`__ entered as
   Incubation project on December 11th, 2014
-  `Link Aggregation Control
   Protocol <Project_Proposals:Link_Aggregation_Control_Protocol>`__
   entered as Incubation project on December 11th, 2014
-  `Time Series Data
   Repository <Project_Proposals:Time_Series_Data_Repository>`__ entered
   as Incubation project on December 11th, 2014
-  `CAPWAP-Support <Project_Proposals:CAPWAP>`__ entered as Incubation
   project on December 18th, 2014
-  `Persistence <Project_Proposals:Persistence>`__ entered as Incubation
   project on December 18th, 2014
-  `SNMP Plugin <Project_Proposals:SNMP_Plugin>`__ entered as Incubation
   project on December 18th, 2014
-  `Topology Processing
   Framework <Project_Proposals:Topology_Processing_Framework>`__
   entered as Incubation project on December 18th, 2014
-  `Integration of Maple Programming Model <Project_Proposals:Maple>`__
   accepted for Incubation on December 18th, 2014 pending resolution of
   a patent issue with Yale University.
-  `Device Identification and Driver
   Management <Project_Proposals:Device_Identification_And_Driver_Management>`__
   entered as Incubation project on January 8th, 2015
-  `Application Layer Traffic Optimization <Project_Proposals:Alto>`__
   entered as Incubation project on January 8th, 2015
-  `Controller Core Functionality
   Tutorials <Controller_Core_Functionality_Tutorials:Project_proposal>`__
   entered as Incubation project on January 8th, 2015
-  `Release Engineering -
   autorelease <Project_Proposals:Release_Engineering_-_Autorelease>`__
   entered as Incubation project on January 8th, 2015
-  `Network Intent
   Composition <Project_Proposals:Network_Intent_Composition>`__ entered
   as Incubation project on January 22nd, 2015
-  `Neutron Northbound <Project_Proposals:Neutron_Northbound>`__ entered
   as Incubation project on February 12th, 2015
-  `Distributed LLDP with Auto Attach
   Capability <Project_Proposals:Distributed_LLDP_with_Auto_Attach_Capability>`__
   entered as Incubation project on February 26, 2015

Helium Accepted Creation Review
===============================

(sorted by date accepted into incubation)

-  `dlux <Project_Proposals:Dlux>`__ entered as an Incubation project on
   September 19th, 2013
-  `Application Policy
   Plugin <Project_Proposals:Application_Policy_Plugin>`__ entered as
   Incubation project on January 23, 2014
-  `OpenDaylight Toolkit <Project_Proposals:OpenDaylight_Toolkit>`__
   entered as Incubation project on April 3, 2014
-  `PacketCable PCMM <Project_Proposals:PacketCablePCMM>`__ entered as
   Incubation project on April 3, 2014
-  `Documentation <Project_Proposals:Documentation>`__ entered as
   Incubation on April 10, 2014
-  `Dynamic Resource
   Reservation <Project_Proposals:Dynamic_Resource_Reservation>`__
   entered as Incubation project on April 10, 2014
-  `Negotiable Datapath
   Models <Project_Proposals:Negotiable_Datapath_Models>`__ entered as
   Incubation project on April 17, 2014
-  `ODL Root Parent <Project_Proposals:ODL_Root_Parent>`__ entered as
   Incubation project on April 24, 2014
-  `OpFlex <Project_Proposals:OpFlex>`__ entered as Incubation project
   on April 24th, 2014
-  `ODL-SDNi App <Project_Proposals:ODL-SDNi_App>`__ entered as
   Incubation project on May 8th, 2014
-  `Southbound Plugin to the OpenContrail
   Platform <Project_Proposals:Southbound_plugin_to_the_OpenContrail_platform>`__
   entered as Incubation project on May 8th, 2014 on condition of
   successful completion of IP & Legal review of project name (due to
   Vendor Neutrality concerns) and successful completion of Inbound Code
   Review
-  `AAA Service <Project_Proposals:AAA_Service>`__ entered as Incubation
   project on May 15th, 2014
-  `L2 Switch <Project_Proposals:L2_Switch>`__ entered as Incubation
   project on May 15th, 2014
-  `Service Function
   Chaining <Project_Proposals:service_function_chaining>`__ entered as
   Incubation project on May 15th, 2014
