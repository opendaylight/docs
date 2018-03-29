.. _tsdr-hbase-user-guide:

TSDR HBase Data Store User Guide
================================

This document describes how to use HBase to capture time series data
using Time Series Data Repository (TSDR) feature in the OpenDaylight
Lithium release. This document contains configuration, administration,
management, usage, and troubleshooting sections for the feature.

Overview
--------

The Time Series Data Repository (TSDR) project in OpenDaylight (ODL) creates a framework for collecting, storing, querying, and maintaining time series data in then OpenDaylight SDN controller. TSDR provides the framework for plugging in proper data collectors to collect various time series data and store into TSDR data stores. With a common data model and generic TSDR data persistence APIs, the user could choose various data stores to be plugged into TSDR Persistence framework. In Lithium, two types of data stores are supported: HBase NoSQL database and H2 relational database.

With the capabilities of data collection, storage, query, aggregation, and purging provided by TSDR, network administrators could leverage various data driven appliations built on top of TSDR for security risk detection, performance analysis, operational configuration optimization, traffic engineering, and network analytics with automated intelligence.

TSDR with HBase Data Store Architecture
---------------------------------------

TSDR contains the following services and components

- Data Collection Service
- Data Storage Service
- TSDR Persistence Layer with data stores as plugins
- TSDR Data Stores
- Data Query Service
- Data Aggregation Service
- Data Purging Service

Data Collection Service handles the collection of time series data into TSDR and hands it over to Data Storage Service. Data Storage Service stores the data into TSDR through TSDR Persistence Layer. TSDR Persistence Layer provides generic Service APIs allowing various data stores to be plugged in. Data Aggregation Service aggregates time series fine-grained raw data into course-grained roll-up data to control the size of the data. Data Purging Service periodically purges both fine-grained raw data and course-granined aggregated data according to user-defined schedules.


In Lithium, we implemented Data Collection Service, Data Storage Service, TSDR Persistence Layer, TSDR HBase Data Store, and TSDR H2 Data Store. Among these services and components, time series data is communicated using a common TSDR data model, which is designed and implemented for the abstraction of time series data commonalities. With these functions, TSDR will be able to collect the data from the data sources and store them into one of the TSDR data stores: either HBase Data Store or H2 Data Store. We also provided a simple query command from Karaf console for the user to retrieve TSDR data from the data stores.


A future release will contain Data Aggregation service, Data Purging Service, and a full-fledged Data Query Service with Norghbound APIs.

Configuring TSDR with HBase Data Store
--------------------------------------

After installing HBase Server on the same VM as the OpenDaylight Controller, if the user accepts the default configuration of the HBase Data Store, the user can directly proceed with the installation of HBase Data Store from Karaf console.

Optionally, the user can configure TSDR HBase Data Store following HBase Data Store Configuration Procedure.

HBase Data Store Configuration Steps
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- Open the file etc/tsdr-persistence-hbase.peroperties under karaf distribution directory.
- Edit the following parameters
   - HBase server name
   - HBase server port
   - HBase client connection pool size
   - HBase client write buffer size

After the configuration of HBase Data Store is complete, proceed with the installation of HBase Data Store from Karaf console.

- HBase Data Store Installation Steps
      - Start Karaf Console
      - Run the following commands from Karaf Console:

          ::

              feature:install odl-tsdr-hbase


Administering or Managing TSDR HBase Data Store
-----------------------------------------------

Using Karaf Command to retrieve data from HBase Data Store
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The user can retrieve the data from HBase data store using the following commands from Karaf console:

    ::

        tsdr:list

    ::

        tsdr:list <CategoryName> <StartTime> <EndTime>

Typing tab will get the context prompt of the arguments when typeing the command in Karaf console.

Troubleshooting issues with log files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
- Karaf logs

Similar to other OpenDaylight components and features, TSDR HBase Data Store writes logging information to Karaf logs.  All the information messages, warnings, error messages, and debug messages are written to Karaf logs.

- HBase logs

For HBase system level logs, the user can check standard HBase server logs, which is under <HBase-installation-directory>/logs.

Tutorials
=========

How to use TSDR to collect, store, and view OpenFlow Interface Statistics

Overview
--------

This tutorial describes an example of using TSDR to collect, store, and view one type of time series data in OpenDaylight environment.


Prerequisites
-------------

You would need to have the following as prerequisits:
 - One or multiple OpenFlow enabled switches. Alternatively, you can use mininet to simulate such a switch.
 - Successfully installed OpenDaylight Controller.
 - Successfully installed HBase Data Store following TSDR HBase Data Store Installation Guide.
 - Connect the OpenFlow enabled switch(es) to OpenDaylight Controller.

Target Environment
------------------

HBase data store is only supported in Linux operation system.

Instructions
------------

- Start OpenDaylight controller.

- Connect OpenFlow enabled switch(es) to the controller. If using mininet, run the following commands from mininet command line:

    ::

        mn --topo single,3  --controller 'remote,ip=172.17.252.210,port=6653' --switch ovsk,protocols=OpenFlow13

- If using real switch(es), the OpenDaylight controller should be able to discover the network toplogy containing the switches.

- Install tsdr hbase feature from Karaf:

    ::

        feature:install odl-tsdr-hbase

- run the following command from Karaf console:

    ::

        tsdr:list InterfaceStats

You should be able to see the interface statistics of the switch(es) from the HBase Data Store. If there are too many rows, you can use "tsdr:list InterfaceStats|more" to view it page by page.

By tabbing after "tsdr:list", you will see all the supported data categories. For example, "tsdr:list FlowStats" will output the Flow statistics data collected from the switch(es).

