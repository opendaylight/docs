.. _tsdr-hbase-user-guide:

TSDR HBase User Guide
#####################

TSDR Overview
=============

The Time Series Data Repository (TSDR) project in OpenDaylight (ODL) is an
extendible collector framework used to collect and store network metrics from
SDN protocols, traditional network protocols as well as SDN controller and
environment data. This data is stored in a common format using one of several
datastores and is accessible by a REST interface, Grafana interface (beta) and
by the ODL provided API.

SDN, Environment and Traditional Network Data Collected

  * OpenFlow
  * NetFlow
  * sFlow
  * REST
  * SNMP
  * SysLog
  * Controller Metrics

* **TSDR Features URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/features-tsdr/pom.xml

The Time Series Data Repository (TSDR) project in OpenDaylight (ODL) creates a
framework for collecting, storing, querying, and maintaining time series data in
the OpenDaylight infrastructure. TSDR provides the framework for plugging in
various data collectors to collect OpenFlow, sFlow, NetFlow, SysLog and
Controller metrics time series data in a common data model and generic TSDR
data persistence API. The user can choose which data stores to be plugged into
the TSDR Persistence framework. Three data stores are currently supported:
HSQLDB (loaded by default), HBase and Cassandra.

With the capabilities of data collection, storage, query, aggregation and
purging provided by TSDR, network administrators could leverage various data
driven applications built on top of TSDR for security risk detection,
performance analysis, operational configuration optimization, traffic
engineering and network analytics with automated intelligence.

TSDR Model/Architecture
-----------------------

 https://wiki.opendaylight.org/view/TSDR_Data_Storage_Service_and_Persistence_with_HBase_Plugin
 https://wiki.opendaylight.org/view/TSDR_Data_Collection_Service

TSDR has the following major components:

-  Data Collection Service

   - OpenFlow Data Collector
   - RestConf Data Collector
   - NetFlow Data Collector
   - SNMP Data Collector
   - sFlow Data Collector
   - SysLog Data Collector
   - Controller Metrics Data Collector

-  Data Storage Service

   - HSQLDB Datastore (loaded by default)
   - HBase Datastore
   - Cassandra Datastore

-  Data Query Service

-  ElasticSearch Service

-  Grafana integration for time series data visualization

-  Data Aggregation Service

-  Data Purging Service

The Data Collection Service handles the collection of time series data into TSDR
and hands it over to the Data Storage Service. The Data Storage Service stores
the data into TSDR through the TSDR Persistence Layer. The TSDR Persistence
Layer provides generic Service APIs allowing various data stores to be plugged
in. The Data Aggregation Service aggregates time series fine-grained raw data
into course-grained roll-up data to control the size of the data. The Data
Purging Service periodically purges both fine-grained raw data and
course-grained aggregated data according to user-defined schedules.

TSDR provides component-based services on a common data model. These services
include the data collection service, data storage service and data query
service.  The TSDR data storage service supports HSQLDB (the default datastore),
HBase and Cassandra datastores.  Between these services and components, time
series data is communicated using a common TSDR data model. This data model is
designed around the abstraction of time series data commonalities. With these
services, TSDR is able to collect the data from the data sources and store them
into one of the TSDR data stores; HSQLDB, HBase and Cassandra datastores.
Data can be retrieved with the Data Query service using the default OpenDaylight
RestConf interface or its ODL API interface.  TSDR also has integrated support
for ElasticSearch capabilities.  TSDR data can also be viewed directly with
Grafana (beta) for time series visualization or various chart formats.

TSDR HBase Data Store User Guide
================================

This document describes how to use HBase to store time series data generated
from the TSDR persistence framework data collectors. This document contains
configuration, administration, management, usage and troubleshooting sections
for the HBase data store feature.


Configuring TSDR with HBase Data Store
--------------------------------------

After installing HBase Server on the same VM as the OpenDaylight Controller,
if the user accepts the default configuration of the HBase Data Store, the user
can directly proceed with the installation of HBase Data Store from Karaf
console. Optionally, the user can configure TSDR HBase Data Store following
HBase Data Store Configuration Procedure.

HBase Data Store Configuration Steps
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- Open the file etc/tsdr-persistence-hbase.properties under Karaf distribution
  directory.
- Edit the following parameters
   - HBase server name
   - HBase server port
   - HBase client connection pool size
   - HBase client write buffer size

After the configuration of HBase Data Store is complete, proceed with the
installation of HBase Data Store from Karaf console.

- HBase Data Store Installation Steps
      - Start Karaf Console
      - Run the following commands from Karaf Console:
         - feature:install odl-tsdr-hbase

Administering or Managing TSDR HBase Data Store
-----------------------------------------------

Using Karaf Command to retrieve data from HBase Data Store
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The user can retrieve the data from HBase data store using the following
commands from Karaf console:

- tsdr:list

- tsdr:list <CategoryName> <StartTime> <EndTime>

Typing tab will get the context prompt of the arguments when typing the command
in Karaf console.

Troubleshooting issues with log files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- Karaf logs

Similar to other OpenDaylight components and features, TSDR HBase Data Store
writes logging information to Karaf logs.  All the information messages,
warnings, error messages, and debug messages are written to Karaf logs.

- HBase logs

For HBase system level logs, the user can check standard HBase server logs,
which is under:

- <HBase-installation-directory>/logs.

Tutorials
=========

How to use TSDR to collect, store, and view OpenFlow Interface Statistics

Overview
--------

This tutorial describes an example of using TSDR to collect, store, and view one
type of time series data in OpenDaylight environment.

Prerequisites
-------------

You would need to have the following as prerequisites:
- One or multiple OpenFlow enabled switches. Alternatively, you can use mininet
to simulate such a switch.
- Successfully installed OpenDaylight Controller.
- Successfully installed HBase Data Store following TSDR HBase Data Store
Installation Guide.
- Connect the OpenFlow enabled switch(es) to OpenDaylight Controller.

Target Environment
------------------

HBase data store is only supported on the Linux operating system.

Instructions
------------

- Start OpenDaylight controller.

- Connect OpenFlow enabled switch(es) to the controller. If using mininet, run
  the following commands from mininet command line:

 mn --topo single,3  --controller 'remote,ip=172.17.252.210,port=6653' --switch
 ovsk,protocols=OpenFlow13

- If using real switch(es), the OpenDaylight controller should be able to
  discover the network topology containing the switches.

- Install a collector

- Install TSDR hbase feature from Karaf:

 feature:install odl-tsdr-hbase

- run the following command from Karaf console:

 tsdr:list InterfaceStats

You should be able to see the interface statistics of the switch(es) from the
HBase Data Store. If there are too many rows, you can use "tsdr:list
InterfaceStats|more" to view it page by page.

Tab (auto-complete) after "tsdr:list", you will see all the supported data
categories.

For example, "tsdr:list FlowStats" will output the Flow statistics data
collected from the switch(es).
