.. _tsdr-hbase-install-guide:

TSDR HBase Data Store Installation Guide
########################################

This document is for the user to install the artifacts that are needed for using
the HBase Data Store in Time Series Data Repository.

TSDR Overview
=============

The Time Series Data Repository (TSDR) project in OpenDaylight (ODL) is an
extendible collector framework used to collect and store network metrics from
SDN protocols, traditional network protocols as well as SDN controller and
environment data. This data is stored in a common format using one of several
datastores and is accessible by a REST interface, Grafana interface (beta) and
by the ODL provided API.

SDN, Environment and Traditional Network Data Collected
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

Prerequisites for Installing TSDR HBase Data Store
==================================================

The hardware requirements are the same as those for standard ODL controller
installation.

The supported operating system for TSDR HBase Data Store is Unix.

Preparing for Installation
""""""""""""""""""""""""""

Download HBase from the following web site.

   http://archive.apache.org/dist/hbase/hbase-0.94.15/

Other versions of HBase work, but the later versions may not.

Upgrading to the latest HBase is on the fast track to be implemented.

Installing TSDR HBase Data Store
================================

Installing TSDR HBase Data Store contains two steps: Installing HBase server
and installing TSDR HBase Data Store features from ODL Karaf console.

This installation guide will only cover the first step. For installing TSDR
HBase Data Store features, please refer to TSDR HBase Data Store User Guide.

TSDR supports HBase single node running together on the same machine as ODL
controller. Therefore, follow the steps to download and install HBase server
onto the same box as where ODL controller is running:

   Create a folder in Linux operating system for the HBase server.

For example, create an hbase directory under /usr/lib:

      mkdir /usr/lib/hbase

   Unzip the downloaded HBase server tar file.

Run the following command to unzip the installation package:

      tar xvf <hbase-installer-name>  /usr/lib/hbase

   Make proper changes in hbase-site.xml

   .. Under <hbase-install-directory>/conf/, there is a hbase-site.xml. Although it is not recommended, an experience user with HBase canmodify the data directory for hbase server to store the data.

   .. Modify the value of the property with name "hbase.rootdir" in the file to reflect the desired file directory for storing hbase data.

The following is an example of the file:

   ::

      <configuration>
         <property>
            <name>hbase.rootdir</name>
            <value>file:///usr/lib/hbase/data</value>
         </property>
         <property>
            <name>hbase.zookeeper.property.dataDir</name>
            <value>/usr/lib/hbase/zookeeper</value>
         </property>
      </configuration>

Verifying your Installation
===========================

After the HBase server is properly installed, start hbase server and hbase shell.

   start hbase server
      cd <hbase-installation-directory>
      ./start-hbase.sh

   start hbase shell
      cd <hbase-insatllation-directory>
      ./hbase shell

Post Installation Configuration
===============================

Please refer to HBase Data Store User Guide.

Uninstalling HBase Data Store
=============================

To uninstall TSDR HBase Data Store,
   stop hbase server
   cd <hbase-installation-directory>
   ./stop-hbase.sh

To remove the file directory that contains the HBase server installation.
    rm -r <hbase-installation-directory>
