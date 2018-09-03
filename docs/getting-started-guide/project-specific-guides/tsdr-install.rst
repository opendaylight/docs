.. _tsdr-install-guide:

TSDR Install Guide
##################

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

TSDR Overview
=============

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

TSDR Installation Guide
=======================

The Time Series Data Repository (TSDR) project in OpenDaylight (ODL)
is an extendible collector framework used to gather and store network metrics from SDN protocols,
traditional network protocols as well as SDN and network environment data.
This data is stored in a common format using one of several databases and is accessible by a REST
northbound interface, Grafana interface (beta) and by the ODL API.

This document details instructions for installing TSDR, it's features and datastores.

Overview
--------

The Time Series Data Repository (TSDR) project in OpenDaylight (ODL) creates a framework for collecting, storing, querying, and maintaining time series data in the OpenDaylight SDN controller. Please refer to the User Guide for the detailed description of the functionality of the project and how to use the corresponding features provided in TSDR.
TSDR supports  HSQLDB, HBase, or Cassandra Data Stores

Pre Requisites for Installing TSDR
----------------------------------

The software requirements for TSDR HBase Data Store are as follows:

* In the case when the user chooses HBase or Cassandra data store, besides the software that ODL requires, we also require HBase and Cassandra database running in single node deployment scenario.

No additional software is required for the HSQLDB Data Stores.

Preparing for Installation
--------------------------

* When using HBase data store,  download HBase from the following website:

 http://archive.apache.org/dist/hbase/hbase-0.94.15/

* When using Cassandra data store, download Cassandra from the following website:

 http://www.eu.apache.org/dist/cassandra/2.1.10/

* No additional steps are required to install the TSDR HSQL Data Store.

Installing HSQLDB Data Store
----------------------------

Once OpenDaylight distribution is up, from Karaf console install the any
collector. The HSQLDB data store is installed by default

   feature:install odl-tsdr-openflow-statistics-collector

This will install hsqldb related dependency features (and can take sometime) as well as OpenFlow statistics collector before returning control to the console.


Installing HBase Data Store
---------------------------

Installing TSDR HBase Data Store contains two steps:

#. Installing HBase server, and
#. Installing TSDR HBase Data Store features from ODL Karaf console.

In this release, we only support HBase single node running together on the same machine as OpenDaylight. Therefore, follow the steps to download and install HBase server onto the same machine as where OpenDaylight is running:

#. Create a folder in Linux operating system for the HBase server. For example, create an hbase directory under ``/usr/lib``::

      mkdir /usr/lib/hbase

#. Unzip the downloaded HBase server tar file.

   Run the following command to unzip the installation package::

      tar xvf <hbase-installer-name>  /usr/lib/hbase

#. Make proper changes in hbase-site.xml

   #. Under <hbase-install-directory>/conf/, there is a hbase-site.xml. Although it is not recommended, an experienced user with HBase can modify the data directory for hbase server to store the data.

   #. Modify the value of the property with name "hbase.rootdir" in the file to reflect the desired file directory for storing hbase data.

      The following is an example of the file::

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

#. start hbase server::

      cd <hbase-installation-directory>
      ./start-hbase.sh

#. start hbase shell::

      cd <hbase-insatllation-directory>
      ./hbase shell

#. start Karaf console

#. install hbase data store feature from Karaf console::

       feature:install odl-tsdr-hbase

Installing Cassandra Data Store
-------------------------------

Installing TSDR Cassandra Data Store contains two steps:

#. Installing Cassandra server, and
#. Installing TSDR Cassandra Data Store features from ODL Karaf console.

In this release, we only support Cassadra single node running together on the same machine as OpenDaylight. Therefore, follow these steps to download and install Cassandra server onto the same machine as where OpenDaylight is running:

#. Install Cassandra (latest stable version) by downloading the zip file and untar the tar ball to cassandra/ directory on the testing machine::

      mkdir cassandra
      wget http://www.eu.apache.org/dist/cassandra/2.1.10/apache-cassandra-2.1.10-bin.tar.gz[2.1.10 is current stable version, it can vary]
      mv apache-cassandra-2.1.10-bin.tar.gz cassandra/
      cd cassandra
      tar -xvzf apache-cassandra-2.1.10-bin.tar.gz

#. Start Cassandra from cassandra directory by running::

      ./apache-cassandra-2.1.10/bin/cassandra

#. Start cassandra shell by running::

      ./apache-cassandra-2.1.10/bin/cqlsh

#. Start Karaf according to the instructions above.

#. Install Cassandra data store feature from Karaf console::

      feature:install odl-tsdr-cassandra

Verifying your Installation
---------------------------

After the TSDR data store is installed, no matter whether it is HBase data store, Cassandra data store, or HSQLDB data store, the user can verify the installation with the following steps.

#. Verify if the following two TSDR commands are available from Karaf console::

      tsdr:list
      tsdr:purgeAll

#. Verify if OpenFlow statistics data can be received successfully:

   Run "feature:install odl-tsdr-openflow-statistics-collector" from Karaf.

   Run mininet to connect to ODL controller. For example, use the following command to start a three node topology::

         mn --topo single,3  --controller 'remote,ip=172.17.252.210,port=6653' --switch ovsk,protocols=OpenFlow13

   From Karaf console, the user should be able to retrieve the statistics data of OpenFlow statistics data from the console::

         tsdr:list FLOWSTATS

Troubleshooting
---------------

Check the ``../data/log/karaf.log`` for any exception related to TSDR features.

Post Installation Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Post Installation Configuration for HSQLDB Data Store
"""""""""""""""""""""""""""""""""""""""""""""""""""""

The feature installation takes care of automated configuration of the datasource by installing a file in <install folder>/etc named org.ops4j.datasource-metric.cfg. This contains the default location of <install folder>/tsdr where the HSQLDB datastore files are stored. If you want to change the default location of the datastore files to some other location update the last portion of the url property in the org.ops4j.datasource-metric.cfg and then restart the Karaf container.

Post Installation Configuration for HBase Data Store
""""""""""""""""""""""""""""""""""""""""""""""""""""

Please refer to HBase Data Store User Guide.

Post Installation Configuration for Cassandra Data Store
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

There is no post configuration for TSDR Cassandra data store.

Upgrading From a Previous Release
---------------------------------

The HBase data store was supported in the previous release as well as in this release. However, we do not support data store upgrade for HBase data store.
The user needs to reinstall TSDR and start to collect data in TSDR HBase datastore after the installation.

HSQLDB and Cassandra are new data stores introduced in this release. Therefore, upgrading from previous release does not apply in these two data store scenarios.

Uninstalling TSDR Data Stores
-----------------------------

To uninstall TSDR HSQLDB data store
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To uninstall the TSDR functionality with the default store, you need to do the following from karaf console::

   feature:uninstall odl-tsdr-hsqldb-all
   feature:uninstall odl-tsdr-core
   feature:uninstall odl-tsdr-hsqldb
   feature:uninstall odl-tsdr-openflow-statistics-collector

It is recommended to restart the Karaf container after the uninstallation of the TSDR functionality with the default store.

To uninstall TSDR HBase Data Store
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To uninstall the TSDR functionality with the HBase data store,

* Uninstall HBase data store related features from karaf console::

     feature:uninstall odl-tsdr-hbase
     feature:uninstall odl-tsdr-core

*  stop hbase server::

      cd <hbase-installation-directory>
      ./stop-hbase.sh

* remove the file directory that contains the HBase server installation::

      rm -r <hbase-installation-directory>

It is recommended to restart the Karaf container after the uninstallation of the TSDR data store.

To uninstall TSDR Cassandra Data Store
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To uninstall the TSDR functionality with the Cassandra store,

* uninstall cassandra data store related features following from karaf console::

     feature:uninstall odl-tsdr-cassandra
     feature:uninstall odl-tsdr-core

* stop cassandra database::

     ps auwx | grep cassandra
     sudo kill pid

* remove the cassandra installation files::

     rm <cassandra-installation-directory>

It is recommended to restart the Karaf container after uninstallation of the TSDR data store.

