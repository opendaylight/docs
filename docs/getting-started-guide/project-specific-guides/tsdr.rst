TSDR Installation Guide
=======================

This document is for the user to install the artifacts that are needed
for using Time Series Data Repository (TSDR) functionality in the ODL
Controller by enabling either an HSQLDB, HBase, or Cassandra Data Store.


Overview
--------

The Time Series Data Repository (TSDR) project in OpenDaylight (ODL) creates a framework for collecting, storing, querying, and maintaining time series data in the OpenDaylight SDN controller. Please refer to the User Guide for the detailed description of the functionality of the project and how to use the corresponding features provided in TSDR.

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

Installing TSDR Data Stores
---------------------------

Installing HSQLDB Data Store
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Once OpenDaylight distribution is up, from karaf console install the HSQLDB data store using the following command::

   feature:install odl-tsdr-hsqldb-all

This will install hsqldb related dependency features (and can take sometime) as well as OpenFlow statistics collector before returning control to the console.


Installing HBase Data Store
^^^^^^^^^^^^^^^^^^^^^^^^^^^

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
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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

   #. Run "feature:install odl-tsdr-openflow-statistics-collector" from Karaf.

   #. Run mininet to connect to ODL controller. For example, use the following command to start a three node topology::

         mn --topo single,3  --controller 'remote,ip=172.17.252.210,port=6653' --switch ovsk,protocols=OpenFlow13

   #. From Karaf console, the user should be able to retrieve the statistics data of OpenFlow statistics data from the console::

         tsdr:list FLOWSTATS

Troubleshooting
^^^^^^^^^^^^^^^

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

ElasticSearch
-------------

Setting Up the environment
^^^^^^^^^^^^^^^^^^^^^^^^^^

To setup and run the TSDR data store ElasticSearch feature, you need to have
an ElasticSearch node (or a cluster of such nodes) running. You can use a
customized ElasticSearch docker image for this purpose.

Your ElasticSearch setup must have the "Delete By Query Plugin" installed.
Without this, some of the elk functionality won't work properly.

Note: for the remainder of this document, we will use "elk" to refer to the
TSDR data store ElasticSearch feature.

Creating a custom ElasticSearch docker image
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

(You can skip this section if you already have an instance of ElasticSearch running)

- Run the following set of commands:
   - cat << EOF > Dockerfile FROM elasticsearch:2

   - RUN /usr/share/elasticsearch/bin/plugin install --batch delete-by-query EOF

To build the image, run the following command in the directory where the Dockerfile was created:
- docker build . -t elasticsearch-dd

You can check whether the image was properly created by running:
- docker images

This should print all your container images including the elasticsearch-dd.

Now we can create and run a container from our image by typing:

- docker run -d -p 9200:9200 -p 9300:9300 --name elk-dd elasticsearch-dd

To see whether the container is running, run the following command:

- docker ps

The output should include a row with elk-dd in the NAMES column.
To check the std out of this container use

- docker logs elk-dd

Installing the Frinx distribution
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

For testing you can use your own ODL distibution or use the Frinx distribution.

You can use a Frinx distribution for testing.
Follow this link for instructions on downloading and installing the Frinx
distribution.

Refer to URL:
https://frinx.io/frinx-documents/frinx-odl-base-feature-content-rel-1-4-1.html

Running the ElasticSearch feature
---------------------------------

Once the features have been installed, you can change some of its properties. For
example, to setup the url where your ElasticSearch installation runs,
change the serverUrl parameter in the tsdr-persistence-elasticsearch.properties file.

All the data are stored into the tsdr index under a type. The metric data are
stored under the metric type and the log data are store under the log type.
You can modify the tsdr-persistence-elasticsearch_metric_mapping.json or the
tsdr-persistence-elasticsearch_log_mapping.json file to change or tune the
mapping for those types. The changes in those files will be promoted after
the feature is reloaded or the distribution is restarted.
All the configuration files are located int the etc directory of the distribution.

Testing the setup
^^^^^^^^^^^^^^^^^

We can now test whether the setup is correct by downloading and installing mininet,
which we use to send some data to the running ElasticSearch instance.

- Installing the necessary features

   - start Opendaylight

   - feature:install odl-restconf odl-l2switch-switch odl-tsdr-core odl-tsdr-openflow-statistics-collector

   - feature:install odl-tsdr-elasticsearch

We can check whether the distribution is now listening on port 6653:

- netstat -an | grep 66

- Run mininet

   - sudo mn --topo single,3 --controller 'remote,ip=distro_ip,port=6653' --switch ovsk,protocols=OpenFlow13

where the distro_ip is the IP address of the machine where the Frinx distribution is running. This command will create three hosts connected to one OpenFlow capable switch.

We can check if data was stored by ElasticSearch in TSDR by running the
following command:

- tsdr:list FLOWTABLESTATS

The output should look similar to the following:
[NID=openflow:1][DC=FLOWTABLESTATS][MN=ActiveFlows][RK=Node:openflow:1,Table:50][TS=1473427383598][3]
[NID=openflow:1][DC=FLOWTABLESTATS][MN=PacketMatch][RK=Node:openflow:1,Table:50][TS=1473427383598][12]
[NID=openflow:1][DC=FLOWTABLESTATS][MN=PacketLookup][RK=Node:openflow:1,Table:50][TS=1473427383598][12]
[NID=openflow:1][DC=FLOWTABLESTATS][MN=ActiveFlows][RK=Node:openflow:1,Table:80][TS=1473427383598][3]
[NID=openflow:1][DC=FLOWTABLESTATS][MN=PacketMatch][RK=Node:openflow:1,Table:80][TS=1473427383598][17]
[NID=openflow:1][DC=FLOWTABLESTATS][MN=PacketMatch][RK=Node:openflow:1,Table:246][TS=1473427383598][19]
...

Or you can query your ElasticSearch instance:

- curl -XPOST "http://elasticseach_ip:9200/_search?pretty" -d'{ "from": 0, "size": 10000, "query": { "match_all": {} } }'

The elasticseach_ip is the IP address of the server where the ElasticSearch is running.


Web Activity Collector
----------------------

The Web Activity Collector records the meaningful REST requests made through the
OpenDaylight RESTCONF interface.


How to test the RESTCONF Collector
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- Install some other feature that has a RESTCONF interface, for example. "odl-tsdr-syslog-collector"
- Issue a RESTCONF command that uses either POST,PUT or DELETE.
  For example, you could call the register-filter RPC of tsdr-syslog-collector.
- Look up data in TSDR database from Karaf.

  ::

    tsdr:list RESTCONF

- You should see the request that you have sent, along with its information (URL, HTTP method, requesting IP address and request body)
- Try to send a GET request, then check again, your request should not be registered, because the collector does not register GET requests by default.
- Open the file: "etc/tsdr.restconf.collector.cfg", and add GET to the list of METHODS_TO_LOG, so that it becomes:

- METHODS_TO_LOG=POST,PUT,DELETE,GET

   - Try again to issue your GET request, and check if it was recorded this time, it should be recorder.
   - Try manipulating the other properties (PATHS_TO_LOG (which URLs do we want to log from), REMOTE_ADDRESSES_TO_LOG (which requesting IP addresses do we want to log from) and CONTENT_TO_LOG (what should be in the request's body in order to log it)), and see if the requests are getting logged.
   - Try providing invalid properties (unknown methods for the METHODS_TO_LOG parameter, or the same method repeated multiple times, and invalid regular expressions for the other parameters), then check karaf's log using "log:display". It should tell you that the value is invalid, and that it will use the default value instead.




