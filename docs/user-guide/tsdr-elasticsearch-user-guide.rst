.. _tsdr-elasticsearch-user-guide:

ElasticSearch User Guide
########################

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

Setting Up the environment
==========================

To setup and run the TSDR data store ElasticSearch feature, you need to have
an ElasticSearch node (or a cluster of such nodes) running. You can use a
customized ElasticSearch docker image for this purpose.

Your ElasticSearch (ES)  setup must have the "Delete By Query Plugin" installed.
Without this, some of the ES functionality won't work properly.

Creating a custom ElasticSearch docker image
============================================

(You can skip this section if you already have an instance of ElasticSearch running)

Run the following set of commands:

.. code-block:: bash

    cat << EOF > Dockerfile
    FROM elasticsearch:2
    RUN /usr/share/elasticsearch/bin/plugin install --batch delete-by-query
    EOF

To build the image, run the following command in the directory where the
Dockerfile was created:

.. code-block:: bash

    docker build . -t elasticsearch-dd

You can check whether the image was properly created by running:

.. code-block:: bash

    docker images

This should print all your container images including the elasticsearch-dd.

Now we can create and run a container from our image by typing:

.. code-block:: bash

    docker run -d -p 9200:9200 -p 9300:9300 --name elasticsearch-dd elasticsearch-dd

To see whether the container is running, run the following command:

.. code-block:: bash

    docker ps

The output should include a row with elasticsearch-dd in the NAMES column.
To check the std out of this container use

.. code-block:: bash

    docker logs elasticsearch-dd

Running the ElasticSearch feature
=================================

Once the features have been installed, you can change some of its properties. For
example, to setup the URL where your ElasticSearch installation runs,
change the *serverUrl* parameter in tsdr/persistence-elasticsearch/src/main/resources/configuration/initial/:

.. code-block:: bash

    tsdr-persistence-elasticsearch.properties

All the data are stored into the TSDR index under a type. The metric data are
stored under the metric type and the log data are store under the log type.
You can modify the files in tsdr/persistence-elasticsearch/src/main/resources/configuration/initial/:

.. code-block:: bash

    tsdr-persistence-elasticsearch_metric_mapping.json
    tsdr-persistence-elasticsearch_log_mapping.json

to change or tune the mapping for those types. The changes in those files will be promoted after
the feature is reloaded or the distribution is restarted.

Testing the setup
=================

We can now test whether the setup is correct by downloading and installing mininet,
which we use to send some data to the running ElasticSearch instance.

Installing the necessary features:

.. code-block:: bash

    start OpenDaylight
    feature:install odl-restconf odl-l2switch-switch odl-tsdr-openflow-statistics-collector
    feature:install odl-tsdr-elasticsearch

We can check whether the distribution is now listening on port 6653:

.. code-block:: bash

    netstat -an | grep 6653

Run mininet

.. code-block:: bash

    sudo mn --topo single,3 --controller 'remote,ip=distro_ip,port=6653' --switch ovsk,protocols=OpenFlow13

where the distro_ip is the IP address of the machine where the OpenDaylight distribution
is running. This command will create three hosts connected to one OpenFlow capable
switch.

We can check if data was stored by ElasticSearch in TSDR by running the
following command:

.. code-block:: bash

    tsdr:list FLOWTABLESTATS

The output should look similar to the following::

    [NID=openflow:1][DC=FLOWTABLESTATS][MN=ActiveFlows][RK=Node:openflow:1,Table:50][TS=1473427383598][3]
    [NID=openflow:1][DC=FLOWTABLESTATS][MN=PacketMatch][RK=Node:openflow:1,Table:50][TS=1473427383598][12]
    [NID=openflow:1][DC=FLOWTABLESTATS][MN=PacketLookup][RK=Node:openflow:1,Table:50][TS=1473427383598][12]
    [NID=openflow:1][DC=FLOWTABLESTATS][MN=ActiveFlows][RK=Node:openflow:1,Table:80][TS=1473427383598][3]
    [NID=openflow:1][DC=FLOWTABLESTATS][MN=PacketMatch][RK=Node:openflow:1,Table:80][TS=1473427383598][17]
    [NID=openflow:1][DC=FLOWTABLESTATS][MN=PacketMatch][RK=Node:openflow:1,Table:246][TS=1473427383598][19]
    ...

Or you can query your ElasticSearch instance:

.. code-block:: bash

    curl -XPOST "http://elasticseach_ip:9200/_search?pretty" -d'{ "from": 0, "size": 10000, "query": { "match_all": {} } }'

The elasticseach_ip is the IP address of the server where the ElasticSearch is
running.

Web Activity Collector
======================

The Web Activity Collector records the meaningful REST requests made through
the OpenDaylight RESTCONF interface.

How to test the RESTCONF Collector
""""""""""""""""""""""""""""""""""

- Issue a RESTCONF command that uses either POST,PUT or DELETE.
  For example, you could call the register-filter RPC of tsdr-syslog-collector.
- Look up data in TSDR database from Karaf.

  .. code-block:: bash

    tsdr:list RESTCONF

- You should see the request that you have sent, along with its information
  (URL, HTTP method, requesting IP address and request body)
- Try to send a GET request, then check again, your request should not be
  registered, because the collector does not register GET requests by default.
- Open the file: "etc/tsdr.restconf.collector.cfg", and add GET to the list of
  METHODS_TO_LOG, so that it becomes:

  ::

      METHODS_TO_LOG=POST,PUT,DELETE,GET

  - Try again to issue your GET request, and check if it was recorded this time,
    it should be recorder.
  - Try manipulating the other properties (PATHS_TO_LOG (which URLs do we want
    to log from), REMOTE_ADDRESSES_TO_LOG (which requesting IP addresses do we
    want to log from) and CONTENT_TO_LOG (what should be in the request's body
    in order to log it)), and see if the requests are getting logged.
  - Try providing invalid properties (unknown methods for the METHODS_TO_LOG
    parameter, or the same method repeated multiple times, and invalid regular
    expressions for the other parameters), then check karaf's log using
    "log:display". It should tell you that the value is invalid, and that it
    will use the default value instead.
