Name
----

SDNApp-SDK (Software Development Kit - SDK for SDN Applications)

Repo Name
---------

sdnappsdk

Description
-----------

With evolving SDN Controllers, the need for SDN Applications (SDNApp)
are growing that would introduce specific business logic that can enable
Telco/Enterprises to leverage the eco-system of Software Defined
Networks. A few of the pain-points when an SDNApp is being developed
are:

-  SDN Application (SDN-App) being implemented leveraging OpenDaylight
   NB API’s
-  Business logic being implemented across SDN-Apps (repetition of
   logic)
-  Interfaces/adaptors being implemented by SDN-Apps to inter-work with
   3rd party products/tools
-  App developers write independent database CRUD services
-  ‘Silo’ operations of SDN-Apps

This project proposes a Software Development Kit (SDK) for OpenDaylight
SDNApp development that following the main principles of:

-  A reference platform that provides guidelines for a SDN-App
   development - framework, modelling techniques
-  Enables OpenDaylight SDN-App developers to collaborate (reuse,
   enhance, add-on) existing interfaces/adaptors/database services
   across SDN Apps
-  A common platform to validate SDN-Apps being implemented/deployed on
   OpenDaylight
-  A framework to enable application management – start / stop / audit
   SDN-Apps being deployed on OpenDaylight

The following figure depicts the core components of the SDNApp-SDK:
|SDKArchitecture-ForWiki.png|

Synopsis of the SDK components proposed for OpenDaylight Beryllium
release

**Data modelling**

-  Yang generic and abstracted model for SDN App implementation
-  Defines 3rd party tool type (DPI, monitoring, application suite)
-  Defines Data format (Name-Value List) for 3rd party tool/suite
   integration
-  Defines Database connectivity (Cassandra, Mongo DB), database schemas
-  Enables defining Application specific data to be used by the SDN App
-  Defining abstraction of REST interfaces for North Bound client of SDN
   applications

**Inter-working with 3rd party tools**

-  Listener APIs for modeled information from east-west interfaced 3rd
   party tools (DPI, monitoring tools, Lync)
-  Leverage SDK YANG model – to defined the tool type and related
   information from interfaced tools
-  Leverage SDK Listener APIs – to retrieve modelled information from
   east-west interfaced tools

**Database services**

-  Leverage SDK YANG model – enables creation of database schema for the
   data modelled object
-  Defined SDK YANG model – enables inter-working with different
   database types (Cassandra, MongoDB)
-  Leverage SDK Database CRUD operations – enables SDN App to use these
   database services

**Application Management**

-  SDK Application Management – Enables Keeper and OAM services for the
   SDN App
-  SDK OAM Services APIs – enables SDN App to include Start, Stop,
   Backup/Restore capability
-  SDK CLI APIs – enables extending OAM services via CLI

**Keeper Services**

-  SDK Keeper APIs – enables SDN App to include Audit, Alerts and
   Logging capability
-  Extend APIs to provide audit/monitoring of the SDN-App by other
   applications

**Build and deploy**

-  Follows OpenDaylight development (SONAR, Junit etc.) and build
   (Jenkings etc.) processes
-  SDN-App will also follow the OpenDaylight deployment approach (Karaf)

**Sample Code**

-  As part of the SDN-App use case implemented, sample code for
   leveraging the SDK services to be available
-  Interface specifications/SDK User Guide to be available to enable
   leveraging the SDN-App SDK

Scope
-----

The scope of this project (SDNApp-SDK Version 1.0 for OpenDaylight
Beryllium) will be divided into two phases:

**Phase 1:**

-  Implement SDK framework (M2)
-  Provide SDK support for Data Model, Database & 3rd Party Services
   (M2)
-  Provide SDK support for Audit-Keeper, Application and Listener
   Services (M3)

**Phase 2:**

-  Implement sample Use-Case using the SDK Services (also as sample
   code) (M4)
-  User Guide for SDN-App SDK (M4)

Resources Committed (developers committed to working)
-----------------------------------------------------

| Rajani Srivastava <Srivastava.rajani@tcs.com>
| Sumit Kapoor < sumit.kapoor@tcs.com>
| Divya Chaudhary <Chaudhary.divya@tcs.com>
| Razi Ahmed <ahmed.razi@tcs.com>

Initial Committers
------------------

| Rajani Srivastava <Srivastava.rajani@tcs.com> <GerritID: rajanis>
| Divya Chaudhary <Chaudhary.divya@tcs.com> <GerritID: divya_chaudhary>

Vendor Neutral
--------------

The project is made from scratch, no vendor code, logos nor is anything
included.

Meets Board Policy (including IPR)
----------------------------------

New Project. No Inbound Code Review required

Link For Project Proposal
-------------------------

.. figure:: ODL-Be-Incubation-SDNAppSDK-May182015.pdf
   :alt: SDNApp-SDK Proposal

   SDNApp-SDK Proposal

.. |SDKArchitecture-ForWiki.png| image:: SDKArchitecture-ForWiki.png

