.. _TSDR-hsqldb-install-guide:

TSDR HSQLDB Data Store Installation Guide
#########################################

This document is for the user to install the artifacts that are needed for using
the HSQLDB Data Store in Time Series Data Repository.

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

HSQLDB Overview
===============

Time series data records of OpenFlow statistics are collected periodically and
stored in a persistent store. For non-production usage, the bundled default
datastore (HSQLDB) is loaded with any collector. The TSDR records get persisted
in HSQLDB store in <install folder>/tsdr/ folder by default.

Installing TSDR with default HSQLDB datastore
=============================================

Once OpenDaylight distribution is up, from the Karaf console install the TSDR
feature with default datastore (HSQLDB store used) can be installed by

   feature:install odl-tsdr-openflow-statistics-collector

This will install all dependent features and the HQSLDB datastore.

Verifying your Installation
===========================

If the feature install was successful you should be able to see the following
TSDR commands added.

   tsdr:list

Troubleshooting
===============

Check the ../data/log/karaf.log for any exception related to TSDR or HSQLDB
related features.

Post Installation Configuration
===============================

The feature installation takes care of automated configuration of the datasource
by installing a file in <install folder>/etc named
org.ops4j.datasource-metric.cfg. This contains the default location of
<install folder>/tsdr where the HSQLDB datastore files are stored. If you want
to change the default location of the datastore files to some other location
update the last portion of the url property in the
org.ops4j.datasource-metric.cfg and then restart the Karaf container.

Uninstalling TSDR with default HSQLDB datastore
===============================================

To uninstall the TSDR functionality with the default store, you need to do the
following from karaf console.

   feature:uninstall odl-tsdr-core
   feature:uninstall odl-tsdr-hsqldb

You can also restart the Karaf container with the "clean" keyword.

