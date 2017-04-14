TSDR User Guide
===============

This document describes how to use HSQLDB, HBase, and Cassandra data
stores to capture time series data using Time Series Data Repository
(TSDR) features in OpenDaylight.  This document contains configuration,
administration, management, usage, and troubleshooting sections for these
features.

Overview
--------

The Time Series Data Repository (TSDR) project in OpenDaylight (ODL)
creates a framework for collecting, storing, querying, and maintaining
time series data.  TSDR provides the framework for plugging in
data collectors to collect various time series data and store the data
into TSDR Data Stores. With a common data model and generic TSDR data
persistence APIs, the user can choose various data stores to be plugged
into the TSDR persistence framework. Currently, three types of data
stores are supported: HSQLDB relational database (default installed),
HBase NoSQL database and Cassandra NoSQL database.

With the capabilities of data collection, storage, query, aggregation,
and purging provided by TSDR, network administrators can leverage
various data driven applications built on top of TSDR for security risk
detection, performance analysis, operational configuration optimization,
traffic engineering and network analytics with automated intelligence.

TSDR Architecture
-----------------

TSDR has the following major components:

-  Data Collection Service

-  Data Storage Service

-  TSDR Persistence Layer with data stores as plugins

-  TSDR Data Stores

-  Data Query Service

-  Grafana integration for time series data visualization

-  Data Aggregation Service

-  Data Purging Service

The Data Collection Service handles the collection of time series data
into TSDR and hands it over to the Data Storage Service. The Data
Storage Service stores the data into TSDR through the TSDR Persistence
Layer. The TSDR Persistence Layer provides generic Service APIs allowing
various data stores to be plugged in. The Data Aggregation Service
aggregates time series fine-grained raw data into course-grained roll-up
data to control the size of the data. The Data Purging Service
periodically purges both fine-grained raw data and course-grained
aggregated data according to user-defined schedules.

TSDR provides component-based services on a common data model. These
services include the data collection service, data storage service and
data query service.  The TSDR data storage service supports HSQLDB
(the default datastore), HBASE and Cassandra datastores.  Between these
services and components, time series data is communicated using a common
TSDR data model.  This data model is designed around the abstraction of
time series data commonalities. With these services, TSDR is able
to collect the data from the data sources and store them into one of
the TSDR data stores; HSQLDB, HBase and Cassandra datastores.  Data can
be retrieved with the Data Query service using the default OpenDaylight
RestConf interface or its ODL API interface.  TSDR also has integrated
support for ElasticSearch capabilities.  TSDR data can also be viewed
directly with Grafana for time series visualization or various chart formats.

Configuring TSDR Data Stores
----------------------------

To Configure HSQLDB Data Store
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The HSQLDB based storage files get stored automatically in <karaf
install folder>/tsdr/ directory. If you want to change the default
storage location, the configuration file to change can be found in
<karaf install folder>/etc directory. The filename is
org.ops4j.datasource-metric.cfg. Change the last portion of the
url=jdbc:hsqldb:./tsdr/metric to point to different directory.

To Configure HBase Data Store
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

After installing HBase Server on the same machine as OpenDaylight, if
the user accepts the default configuration of the HBase Data Store, the
user can directly proceed with the installation of HBase Data Store from
Karaf console.

Optionally, the user can configure TSDR HBase Data Store following HBase
Data Store Configuration Procedure.

-  HBase Data Store Configuration Steps

   -  Open the file etc/tsdr-persistence-hbase.peroperties under karaf
      distribution directory.

   -  Edit the following parameters:

      -  HBase server name

      -  HBase server port

      -  HBase client connection pool size

      -  HBase client write buffer size

After the configuration of HBase Data Store is complete, proceed with
the installation of HBase Data Store from Karaf console.

-  HBase Data Store Installation Steps

   -  Start Karaf Console

   -  Run the following commands from Karaf Console: feature:install
      odl-tsdr-hbase

To Configure Cassandra Data Store
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Currently, there’s no configuration needed for Cassandra Data Store. The
user can use Cassandra data store directly after installing the feature
from Karaf console.

Additionally separate commands have been implemented to install various
data collectors.

Administering or Managing TSDR Data Stores
------------------------------------------

To Administer HSQLDB Data Store
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once the TSDR default datastore feature (odl-tsdr-hsqldb-all) is
enabled, the TSDR captured OpenFlow statistics metrics can be accessed
from Karaf Console by executing the command

::

    tsdr:list <metric-category> <starttimestamp> <endtimestamp>

wherein

-  <metric-category> = any one of the following categories
   FlowGroupStats, FlowMeterStats, FlowStats, FlowTableStats, PortStats,
   QueueStats

-  <starttimestamp> = to filter the list of metrics starting this
   timestamp

-  <endtimestamp> = to filter the list of metrics ending this timestamp

-  <starttimestamp> and <endtimestamp> are optional.

-  Maximum 1000 records will be displayed.

To Administer HBase Data Store
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  Using Karaf Command to retrieve data from HBase Data Store

The user first need to install hbase data store from karaf console:

feature:install odl-tsdr-hbase

The user can retrieve the data from HBase data store using the following
commands from Karaf console:

::

    tsdr:list
    tsdr:list <CategoryName> <StartTime> <EndTime>

Typing tab will get the context prompt of the arguments when typeing the
command in Karaf console.

To Administer Cassandra Data Store
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The user first needs to install Cassandra data store from Karaf console:

::

    feature:install odl-tsdr-cassandra

Then the user can retrieve the data from Cassandra data store using the
following commands from Karaf console:

::

    tsdr:list
    tsdr:list <CategoryName> <StartTime> <EndTime>

Typing tab will get the context prompt of the arguments when typeing the
command in Karaf console.

Installing TSDR Data Collectors
-------------------------------

When the user uses HSQLDB data store and installed "odl-tsdr-hsqldb-all"
feature from Karaf console, besides the HSQLDB data store, OpenFlow data
collector is also installed with this command. However, if the user
needs to use other collectors, such as NetFlow Collector, Syslog
Collector, SNMP Collector, and Controller Metrics Collector, the user
needs to install them with separate commands. If the user uses HBase or
Cassandra data store, no collectors will be installed when the data
store is installed. Instead, the user needs to install each collector
separately using feature install command from Karaf console.

The following is the list of supported TSDR data collectors with the
associated feature install commands:

-  OpenFlow Data Collector

   ::

       feature:install odl-tsdr-openflow-statistics-collector

-  NetFlow Data Collector

   ::

       feature:install odl-tsdr-netflow-statistics-collector

-  sFlow Data Collector

   ::

       feature:install odl-tsdr-sflow-statistics-colletor

-  SNMP Data Collector

   ::

       feature:install odl-tsdr-snmp-data-collector

-  Syslog Data Collector

   ::

       feature:install odl-tsdr-syslog-collector

-  Controller Metrics Collector

   ::

       feature:install odl-tsdr-controller-metrics-collector

-  Web Activity Collector

   ::

       feature:install odl-tsdr-restconf-collector


In order to use controller metrics collector, the user needs to install
Sigar library.

The following is the instructions for installing Sigar library on
Ubuntu:

-  Install back end library by "sudo apt-get install
   libhyperic-sigar-java"

-  Execute "export
   LD\_LIBRARY\_PATH=/usr/lib/jni/:/usr/lib:/usr/local/lib" to set the
   path of the JNI (you can add this to the ".bashrc" in your home
   directory)

-  Download the file "sigar-1.6.4.jar". It might be also in your ".m2"
   directory under "~/.m2/resources/org/fusesource/sigar/1.6.4"

-  Create the directory "org/fusesource/sigar/1.6.4" under the "system"
   directory in your controller home directory and place the
   "sigar-1.6.4.jar" there

Configuring TSDR Data Collectors
--------------------------------

-  SNMP Data Collector Device Credential Configuration

After installing SNMP Data Collector, a configuration file under etc/
directory of ODL distribution is generated: etc/tsdr.snmp.cfg is
created.

The following is a sample tsdr.snmp.cfg file:

credentials=[192.168.0.2,public],[192.168.0.3,public]

The above credentials indicate that TSDR SNMP Collector is going to
connect to two devices. The IPAddress and Read community string of these
two devices are (192.168.0.2, public), and (192.168.0.3) respectively.

The user can make changes to this configuration file any time during
runtime. The configuration will be picked up by TSDR in the next cycle
of data collection.

Polling interval configuration for SNMP Collector and OpenFlow Stats Collector
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The default polling interval of SNMP Collector and OpenFlow Stats
Collector is 30 seconds and 15 seconds respectively. The user can change
the polling interval through restconf APIs at any time. The new polling
interval will be picked up by TSDR in the next collection cycle.

-  Retrieve Polling Interval API for SNMP Collector

   -  URL:
      http://localhost:8181/restconf/config/tsdr-snmp-data-collector:TSDRSnmpDataCollectorConfig

   -  Verb: GET

-  Update Polling Interval API for SNMP Collector

   -  URL:
      http://localhost:8181/restconf/operations/tsdr-snmp-data-collector:setPollingInterval

   -  Verb: POST

   -  Content Type: application/json

   -  Input Payload:

      ::

          {
             "input": {
                 "interval": "15000"
             }
          }

-  Retrieve Polling Interval API for OpenFlowStats Collector

   -  URL:
      http://localhost:8181/restconf/config/tsdr-openflow-statistics-collector:TSDROSCConfig

   -  Verb: GET

-  Update Polling Interval API for OpenFlowStats Collector

   -  URL:
      http://localhost:8181/restconf/operations/tsdr-openflow-statistics-collector:setPollingInterval

   -  Verb: POST

   -  Content Type: application/json

   -  Input Payload:

      ::

          {
             "input": {
                 "interval": "15000"
             }
          }

Querying TSDR from REST APIs
----------------------------

TSDR provides two REST APIs for querying data stored in TSDR data
stores.

-  Query of TSDR Metrics

   -  URL: http://localhost:8181/tsdr/metrics/query

   -  Verb: GET

   -  Parameters:

      -  tsdrkey=[NID=][DC=][MN=][RK=]

         ::

             The TSDRKey format indicates the NodeID(NID), DataCategory(DC), MetricName(MN), and RecordKey(RK) of the monitored objects.
             For example, the following is a valid tsdrkey:
             [NID=openflow:1][DC=FLOWSTATS][MN=PacketCount][RK=Node:openflow:1,Table:0,Flow:3]
             The following is also a valid tsdrkey:
             tsdrkey=[NID=][DC=FLOWSTATS][MN=][RK=]
             In the case when the sections in the tsdrkey is empty, the query will return all the records in the TSDR data store that matches the filled tsdrkey. In the above example, the query will return all the data in FLOWSTATS data category.
             The query will return only the first 1000 records that match the query criteria.

      -  from=<time\_in\_seconds>

      -  until=<time\_in\_seconds>

The following is an example curl command for querying metric data from
TSDR data store:

curl -G -v -H "Accept: application/json" -H "Content-Type:
application/json" "http://localhost:8181/tsdr/metrics/query"
--data-urlencode "tsdrkey=[NID=][DC=FLOWSTATS][MN=][RK=]"
--data-urlencode "from=0" --data-urlencode "until=240000000000"\|more

-  Query of TSDR Log type of data

   -  URL:http://localhost:8181/tsdr/logs/query

   -  Verb: GET

   -  Parameters:

      -  tsdrkey=tsdrkey=[NID=][DC=][RK=]

         ::

             The TSDRKey format indicates the NodeID(NID), DataCategory(DC), and RecordKey(RK) of the monitored objects.
             For example, the following is a valid tsdrkey:
             [NID=openflow:1][DC=NETFLOW][RK]
             The query will return only the first 1000 records that match the query criteria.

      -  from=<time\_in\_seconds>

      -  until=<time\_in\_seconds>

The following is an example curl command for querying log type of data
from TSDR data store:

curl -G -v -H "Accept: application/json" -H "Content-Type:
application/json" "http://localhost:8181/tsdr/logs/query"
--data-urlencode "tsdrkey=[NID=][DC=NETFLOW][RK=]" --data-urlencode
"from=0" --data-urlencode "until=240000000000"\|more

ElasticSearch Integration and use

Grafana integration with TSDR
-----------------------------

TSDR provides northbound integration with Grafana time series data
visualization tool. All the metric type of data stored in TSDR data
store can be visualized using Grafana.

For the detailed instruction about how to install and configure Grafana
to work with TSDR, please refer to the following link:

https://wiki.opendaylight.org/view/Grafana_Integration_with_TSDR_Step-by-Step

Purging Service configuration
-----------------------------

After the data stores are installed from Karaf console, the purging
service will be installed as well. A configuration file called
tsdr.data.purge.cfg will be generated under etc/ directory of ODL
distribution.

The following is the sample default content of the tsdr.data.purge.cfg
file:

host=127.0.0.1 data\_purge\_enabled=true data\_purge\_time=23:59:59
data\_purge\_interval\_in\_minutes=1440 retention\_time\_in\_hours=168

The host indicates the IPAddress of the data store. In the case when the
data store is together with ODL controller, 127.0.0.1 should be the
right value for the host IP. The other attributes are self-explained.
The user can change those attributes at any time. The configuration
change will be picked up right away by TSDR Purging service at runtime.

How to use TSDR to collect, store, and view OpenFlow Interface Statistics
-------------------------------------------------------------------------

Overview
~~~~~~~~

This tutorial describes an example of using TSDR to collect, store, and
view one type of time series data in OpenDaylight environment.

Prerequisites
~~~~~~~~~~~~~

You would need to have the following as prerequisits:

-  One or multiple OpenFlow enabled switches. Alternatively, you can use
   mininet to simulate such a switch.

-  Successfully installed OpenDaylight Controller.

-  Successfully installed HBase Data Store following TSDR HBase Data
   Store Installation Guide.

-  Connect the OpenFlow enabled switch(es) to OpenDaylight Controller.

Target Environment
~~~~~~~~~~~~~~~~~~

HBase data store is only supported in Linux operation system.

Instructions
~~~~~~~~~~~~

-  Start OpenDaylight.

-  Connect OpenFlow enabled switch(es) to the controller.

   -  If using mininet, run the following commands from mininet command
      line:

      -  mn --topo single,3 --controller
         *remote,ip=172.17.252.210,port=6653* --switch
         ovsk,protocols=OpenFlow13

-  Install TSDR hbase feature from Karaf:

   -  feature:install odl-tsdr-hbase

-  Install OpenFlow Statistics Collector from Karaf:

   -  feature:install odl-tsdr-openflow-statistics-collector

-  run the following command from Karaf console:

   -  tsdr:list PORTSTATS

You should be able to see the interface statistics of the switch(es)
from the HBase Data Store. If there are too many rows, you can use
"tsdr:list InterfaceStats\|more" to view it page by page.

By tabbing after "tsdr:list", you will see all the supported data
categories. For example, "tsdr:list FlowStats" will output the Flow
statistics data collected from the switch(es).


ElasticSearch
-------------

Setting Up the environment
~~~~~~~~~~~~~~~~~~~~~~~~~~

To setup and run the TSDR data store ElasticSearch feature, you need to have
an ElasticSearch node (or a cluster of such nodes) running. You can use a
customized ElasticSearch docker image for this purpose.

Your ElasticSearch setup must have the "Delete By Query Plugin" installed.
Without this, some of the elk functionality won't work properly.

Note: for the remainder of this document, we will use "elk" to refer to the
TSDR data store ElasticSearch feature.

Creating a custom ElasticSearch docker image
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For testing you can use your own ODL distibution or use the Frinx distribution.

You can use a Frinx distribution for testing.
Follow this link for instructions on downloading and installing the Frinx
distribution.

Refer to URL:
https://frinx.io/frinx-documents/frinx-odl-base-feature-content-rel-1-4-1.html

Running the ElasticSearch feature
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
~~~~~~~~~~~~~~~~~

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

- Or you can query your ElasticSearch instance:

   ::

curl -XPOST "http://elasticseach_ip:9200/_search?pretty" -d'{ "from": 0, "size": 10000, "query": { "match_all": {} } }'

The elasticseach_ip is the IP address of the server where the ElasticSearch is running.


Web Activity Collector
----------------------

The Web Activity Collector runs like any other TSDR collector and is also
configurable to reduce the amount of collected GET requests.

- Start your OpenDaylight karaf instance and load your test features.
- To start the Web Activity Collector. (RESTCONF collector)

  ::

    feature:install odl-restconf odl-tsdr-restconf-collector

How to test the RESTCONF Collector
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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


Troubleshooting
---------------

Karaf logs
~~~~~~~~~~

All TSDR features and components write logging information including
information messages, warnings, errors and debug messages into
karaf.log.

HBase and Cassandra logs
~~~~~~~~~~~~~~~~~~~~~~~~

For HBase and Cassandra data stores, the database level logs are written
into HBase log and Cassandra logs.

-  HBase log

   -  HBase log is under <HBase-installation-directory>/logs/.

-  Cassandra log

   -  Cassandra log is under {cassandra.logdir}/system.log. The default
      {cassandra.logdir} is /var/log/cassandra/.

Security
--------

TSDR gets the data from a variety of sources, which can be secured in
different ways.

-  OpenFlow Security

   -  The OpenFlow data can be configured with Transport Layer Security
      (TLS) since the OpenFlow Plugin that TSDR depends on provides this
      security support.

-  SNMP Security

   -  The SNMP version3 has security support. However, since ODL SNMP
      Plugin that TSDR depends on does not support version 3, we (TSDR)
      will not have security support at this moment.

-  NetFlow Security

   -  NetFlow, which cannot be configured with security so we recommend
      making sure it flows only over a secured management network.

-  Syslog Security

   -  Syslog, which cannot be configured with security so we recommend
      making sure it flows only over a secured management network.

Support multiple data stores simultaneously at runtime
------------------------------------------------------

TSDR supports running multiple data stores simultaneously at runtim. For
example, it is possible to configure TSDR to push log type of data into
Cassandra data store, while pushing metrics type of data into HBase.

When you install one TSDR data store from karaf console, such as using
feature:install odl-tsdr-hsqldb, a properties file will be generated
under <Karaf-distribution-directory>/etc/. For example, when you install
hsqldb, a file called tsdr-persistence-hsqldb.properties is generated
under that directory.

By default, all the types of data are supported in the data store. For
example, the default content of tsdr-persistence-hsqldb.properties is as
follows:

::

    metric-persistency=true
    log-persistency=true
    binary-persistency=true

When the user would like to use different data stores to support
different types of data, he/she could enable or disable a particular
type of data persistence in the data stores by configuring the
properties file accordingly.

For example, if the user would like to store the log type of data in
HBase, and store the metric and binary type of data in Cassandra, he/she
needs to install both hbase and cassandra data stores from Karaf
console. Then the user needs to modify the properties file under
<Karaf-distribution-directory>/etc as follows:

-  tsdr-persistence-hbase.properties

   ::

       metric-persistency=false
       log-persistency=true
       binary-persistency=true

-  tsdr-persistence-cassandra.properties

   ::

       metric-psersistency=true
       log-persistency=false
       binary-persistency=false

