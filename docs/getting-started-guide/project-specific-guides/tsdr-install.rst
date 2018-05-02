.. _tsdr-install-guide:

TSDR Installation Guide
=======================

This document is for the user to install the artifacts that are needed
for using Time Series Data Repository (TSDR) functionality in the ODL
Controller by enabling either an HSQLDB, HBase, or Cassandra Data Store.


Overview
--------

The Time Series Data Repository (TSDR) project in OpenDaylight (ODL) creates a
framework for collecting, storing, querying, and maintaining time series data
in the OpenDaylight SDN controller. Please refer to the User Guide for the
detailed description of the functionality of the project and how to use the
corresponding features provided in TSDR.

Pre Requisites for Installing TSDR
----------------------------------

The software requirements for TSDR HBase Data Store are as follows:

* In the case when the user chooses HBase or Cassandra data store, besides the
  software that ODL requires, we also require HBase and Cassandra database
  running in single node deployment scenario.

No additional software is required for the HSQLDB Data Stores.

Preparing for Installation
--------------------------

* When using HBase data store,  download HBase from the following website:

  http://archive.apache.org/dist/hbase/hbase-0.94.15/

* When using Cassandra data store, download Cassandra from the following website:

  http://www.eu.apache.org/dist/cassandra/2.1.10/

* No additional steps are required to install the TSDR HSQL Data Store.

Installing TSDR Data Stores
---------------------------

Installing HSQLDB Data Store
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Once OpenDaylight distribution is up, from karaf console install the HSQLDB
data store using the following command:

    ::

        feature:install odl-tsdr-hsqldb-all


This will install hsqldb related dependency features (and can take sometime) as
well as OpenFlow statistics collector before returning control to the console.


Installing HBase Data Store
^^^^^^^^^^^^^^^^^^^^^^^^^^^

Installing TSDR HBase Data Store contains two steps:

#. Installing HBase server, and
#. Installing TSDR HBase Data Store features from ODL Karaf console.

In this release, we only support HBase single node running together on the same
machine as OpenDaylight. Therefore, follow the steps to download and install
HBase server onto the same machine as where OpenDaylight is running:

#. Create a folder in Linux operating system for the HBase server

   For example, create an hbase directory under ``/usr/lib``::

       mkdir /usr/lib/hbase


#. Unzip the downloaded HBase server tar file

   Run the following command to unzip the installation package::

       tar xvf <hbase-installer-name>  /usr/lib/hbase


#. Make proper changes in hbase-site.xml

   #. Under <hbase-install-directory>/conf/, there is a ``hbase-site.xml``

      Although it is not recommended, an experienced user with HBase can modify
      the data directory for hbase server to store the data.

   #. Modify the value of the property with name "hbase.rootdir" in the file to
      reflect the desired file directory for storing hbase data.

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


#. Start hbase server

   .. code-block:: bash

      cd <hbase-installation-directory>
      ./start-hbase.sh

#. Start hbase shell

   .. code-block:: bash

      cd <hbase-insatllation-directory>
      ./hbase shell

#. Start Karaf console

#. Install hbase data store feature from Karaf console:

   .. code-block:: bash

      feature:install odl-tsdr-hbase


Installing Cassandra Data Store
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Installing TSDR Cassandra Data Store contains two steps:

#. Installing Cassandra server, and
#. Installing TSDR Cassandra Data Store features from ODL Karaf console.

   In this release, we only support Cassadra single node running together on the
   same machine as OpenDaylight. Therefore, follow these steps to download and
   install Cassandra server onto the same machine as where OpenDaylight is
   running.

#. Install Cassandra (latest stable version) by downloading the zip file and
   untar the tar ball to cassandra/ directory on the testing machine.

   .. code-block:: bash

      mkdir cassandra
      wget http://www.eu.apache.org/dist/cassandra/2.1.10/apache-cassandra-2.1.10-bin.tar.gz[2.1.10 is current stable version, it can vary]
      mv apache-cassandra-2.1.10-bin.tar.gz cassandra/
      cd cassandra
      tar -xvzf apache-cassandra-2.1.10-bin.tar.gz


#. Start Cassandra from cassandra directory

   .. code-block:: bash

      ./apache-cassandra-2.1.10/bin/cassandra

#. Start cassandra shell

   .. code-block:: bash

      ./apache-cassandra-2.1.10/bin/cqlsh

#. Install Cassandra data store feature from Karaf console

   .. code-block:: bash

      feature:install odl-tsdr-cassandra

Verifying your Installation
---------------------------

After the TSDR data store is installed, no matter whether it is HBase data
store, Cassandra data store, or HSQLDB data store, the user can verify the
installation with the following steps.

#. Verify if the following two TSDR commands are available from Karaf console:

   .. code-block:: bash

      tsdr:list
      tsdr:purgeAll


#. Verify if OpenFlow statistics data can be received successfully:

   .. code-block:: bash

      feature:install odl-tsdr-openflow-statistics-collector

#. Run mininet to connect to ODL controller. For example, use the following
   command to start a three node topology:

   .. code-block:: bash

      mn --topo single,3  --controller 'remote,ip=172.17.252.210,port=6653' --switch ovsk,protocols=OpenFlow13


From Karaf console, the user should be able to retrieve the statistics data of
OpenFlow statistics data from the console::

    tsdr:list FLOWSTATS

Troubleshooting
^^^^^^^^^^^^^^^

Check the ``../data/log/karaf.log`` for any exception related to TSDR features.

Post Installation Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Post Installation Configuration for HSQLDB Data Store
"""""""""""""""""""""""""""""""""""""""""""""""""""""

The feature installation takes care of automated configuration of the
datasource by installing a file in <install folder>/etc named
org.ops4j.datasource-metric.cfg. This contains the default location of
<install folder>/tsdr where the HSQLDB datastore files are stored. If you want
to change the default location of the datastore files to some other location
update the last portion of the url property in the
org.ops4j.datasource-metric.cfg and then restart the Karaf container.

Post Installation Configuration for HBase Data Store
""""""""""""""""""""""""""""""""""""""""""""""""""""

Please refer to HBase Data Store User Guide.

Post Installation Configuration for Cassandra Data Store
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

There is no post configuration for TSDR Cassandra data store.

Upgrading From a Previous Release
---------------------------------

The HBase data store was supported in the previous release as well as in this
release. However, we do not support data store upgrade for HBase data store.
The user needs to reinstall TSDR and start to collect data in TSDR HBase
datastore after the installation.

HSQLDB and Cassandra are new data stores introduced in this release.
Therefore, upgrading from previous release does not apply in these two data
store scenarios.

Uninstalling TSDR Data Stores
-----------------------------

To uninstall TSDR HSQLDB data store
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To uninstall the TSDR functionality with the default store, you need to do the
following from karaf console:

.. code-block:: bash

   feature:uninstall odl-tsdr-hsqldb-all
   feature:uninstall odl-tsdr-core
   feature:uninstall odl-tsdr-hsqldb
   feature:uninstall odl-tsdr-openflow-statistics-collector

It is recommended to restart the Karaf container after the uninstallation of
the TSDR functionality with the default store.

To uninstall TSDR HBase Data Store
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To uninstall the TSDR functionality with the HBase data store,

* Uninstall HBase data store related features from karaf console

  .. code-block:: bash

     feature:uninstall odl-tsdr-hbase
     feature:uninstall odl-tsdr-core

* Stop hbase server

  .. code-block:: bash

     cd <hbase-installation-directory>
     ./stop-hbase.sh

* Remove the file directory that contains the HBase server installation:

  .. code-block:: bash

     rm -r <hbase-installation-directory>


It is recommended to restart the Karaf container after the uninstallation of
the TSDR data store.

To uninstall TSDR Cassandra Data Store
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To uninstall the TSDR functionality with the Cassandra store,

* uninstall cassandra data store related features following from karaf console:

  .. code-block:: bash

     feature:uninstall odl-tsdr-cassandra
     feature:uninstall odl-tsdr-core

* stop cassandra database

  .. code-block:: bash

     ps auwx | grep cassandra
     sudo kill pid

* remove the cassandra installation files

  .. code-block:: bash

     rm <cassandra-installation-directory>

It is recommended to restart the Karaf container after uninstallation of the
TSDR data store.
