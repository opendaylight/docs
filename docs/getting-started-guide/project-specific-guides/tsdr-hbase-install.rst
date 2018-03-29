.. _tsdr-hbase-install-guide:

TSDR HBase Data Store Installation Guide
========================================

This document is for the user to install the artifacts that are needed
for using HBase Data Store in Time Series Data Repository, which is
a new feature available in OpenDaylight Lithium release.

Overview
--------

The Time Series Data Repository (TSDR) project in OpenDaylight (ODL) creates a framework for collecting, storing, querying, and maintaining time series data in the OpenDaylight SDN controller. It contains  the following services and components:

    Data Collection Service
    Data Storage Service
    TSDR Persistence Layer with data stores as plugins
    TSDR Data Stores
    Data Query Service
    Data Aggregation Service
    Data Purging Service

Data Collection Service handles the collection of time series data into TSDR and hands it over to Data Storage Service. Data Storage Service stores the data into TSDR through TSDR Persistence Layer. TSDR Persistence Layer provides generic Service APIs allowing various data stores to be plugged in. Data Aggregation Service aggregates time series fine-grained raw data into course-grained roll-up data to control the size of the data. Data Purging Service periodically purges both fine-grained raw data and course-granined aggregated data according to user-defined schedules.


In Lithium, we implemented Data Collection Service, Data Storage Service, TSDR Persistence Layer, TSDR HBase Data Store, and TSDR H2 Data Store. Among these services and components, time series data is communicated using a common TSDR data model, which is designed and implemented for the abstraction of the time series data commonalities. With these functions, TSDR will be able to collect the data from the data sources and store them into one of the TSDR data stores: either HBase Data Store or H2 Data Store. We also provided a simple query command from Karaf console for the user to retrieve TSDR data from the data stores.

A future release will contain Data Aggregation service, Data Purging Service, and a full-fledged Data Query Service with Norghbound APIs.


Prerequisites for Installing TSDR HBase Data Store
--------------------------------------------------

The hardware requirements are the same as those for standard ODL controller installation.

The software requirements for TSDR HBase Data Store are as follows:

    The supported operating system for TSDR HBase Data Store is Linux. We do not support TSDR HBase Data Store on Windows.
    Besides the software that ODL requires, we also require HBase database running on top of Hadoop single node.

Preparing for Installation
--------------------------

Download HBase (version number to be finalized) from the following website.

http://archive.apache.org/dist/hbase/hbase-0.94.15/


Installing TSDR HBase Data Store
--------------------------------

Installing TSDR HBase Data Store contains two steps:

    Installing HBase server, and
    Installing TSDR HBase Data Store features from ODL Karaf console.

This installation guide will only cover the first step. For installing TSDR HBase Data Store features, please refer to TSDR HBase Data Store User Guide.

In Lithium, we only support HBase single node running together on the same machine as ODL controller. Therefore, follow the steps to download and install HBase server onto the same box as where ODL controller is running:

    Create a folder in Linux operating system for the HBase server.

For example, create an hbase directory under /usr/lib:

    ::

        mkdir /usr/lib/hbase

Unzip the downloaded HBase server tar file.

Run the following command to unzip the installation package:

    ::

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
---------------------------

After the HBase server is properly installed, start hbase server and hbase shell.

    ::

        start hbase server
        cd <hbase-installation-directory>
        ./start-hbase.sh

        start hbase shell
        cd <hbase-insatllation-directory>
        ./hbase shell

Post Installation Configuration
-------------------------------

Please refer to HBase Data Store User Guide.

Upgrading From a Previous Release
---------------------------------

Lithium is the first release of TSDR. Upgrading is not applicable for TSDR Lithium release.

Uninstalling HBase Data Store
-----------------------------

To uninstall TSDR HBase Data Store,

    ::

        stop hbase server
        cd <hbase-installation-directory>
        ./stop-hbase.sh

To remove the file directory that contains the HBase server installation.

    ::

        rm -r <hbase-installation-directory>

