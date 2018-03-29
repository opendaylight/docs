.. _tsdr-user-guide:

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

   -  Run the following commands from Karaf Console:

       ::

           feature:install odl-tsdr-hbase

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

Using Karaf Command to retrieve data from HBase Data Store

The user first need to install hbase data store from karaf console:

    ::

        feature:install odl-tsdr-hbase

The user can retrieve the data from HBase data store using the following
commands from Karaf console:

    ::

        tsdr:list

    ::

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

    ::

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

-  Syslog Data Collector

   ::

       feature:install odl-tsdr-syslog-collector

-  Controller Metrics Collector

   ::

       feature:install odl-tsdr-controller-metrics-collector

-  Web Activity Collector

   ::

       feature:install odl-tsdr-restconf-collector

-  sFlow Data Collector (experimental)

   ::

       feature:install odl-tsdr-sflow-statistics-colletor

-  SNMP Data Collector (experimental)

   ::

       feature:install odl-tsdr-snmp-data-collector


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

    ::

        curl -G -v -H "Accept: application/json" -H "Content-Type:
        application/json" "http://localhost:8181/tsdr/metrics/query"
        --data-urlencode "tsdrkey=[NID=][DC=FLOWSTATS][MN=][RK=]"
        --data-urlencode "from=0" --data-urlencode "until=240000000000"\|more

-  Query of TSDR Log type of data

   -  URL:http://localhost:8181/tsdr/logs/query

   -  Verb: GET

   -  Parameters:

      -  tsdrkey=tsdrkey=[NID=][DC=][RK=]

      -      The TSDRKey format indicates the NodeID(NID), DataCategory(DC), and RecordKey(RK) of the monitored objects.
             For example, the following is a valid tsdrkey:
             [NID=openflow:1][DC=NETFLOW][RK]
             The query will return only the first 1000 records that match the query criteria.

      -  from=<time\_in\_seconds>

      -  until=<time\_in\_seconds>

The following is an example curl command for querying log type of data
from TSDR data store:

    ::

        curl -G -v -H "Accept: application/json" -H "Content-Type: application/json" "http://localhost:8181/tsdr/logs/query"
        --data-urlencode "tsdrkey=[NID=][DC=NETFLOW][RK=]" --data-urlencode
        "from=0" --data-urlencode "until=240000000000"\|more

Grafana integration with TSDR
-----------------------------

TSDR provides northbound integration with Grafana time series data
visualization tool. All the metric type of data stored in TSDR data
store can be visualized using Grafana.

For the detailed instruction about how to install and configure Grafana
to work with TSDR, please refer to the following link:

https://wiki.opendaylight.org/view/Grafana_Integration_with_TSDR_Step-by-Step

Configuring TSDR Data Collectors
--------------------------------

SNMP Data Collector Device Credential Configuration (experimental)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

    ::

        mn --topo single,3 --controller *remote,ip=172.17.252.210,port=6653* --switch
        ovsk,protocols=OpenFlow13

-  Install TSDR hbase feature from Karaf:

    ::

        feature:install odl-tsdr-hbase

-  Install OpenFlow Statistics Collector from Karaf:

    ::

        feature:install odl-tsdr-openflow-statistics-collector

-  run the following command from Karaf console:

    ::

        tsdr:list PORTSTATS

You should be able to see the interface statistics of the switch(es)
from the HBase Data Store. If there are too many rows, you can use
"tsdr:list InterfaceStats\|more" to view it page by page.

By tabbing after "tsdr:list", you will see all the supported data
categories. For example, "tsdr:list FlowStats" will output the Flow
statistics data collected from the switch(es).


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

-  NetFlow Security

   -  NetFlow, which cannot be configured with security so we recommend
      making sure it flows only over a secured management network.

-  Syslog Security

   -  Syslog, which cannot be configured with security so we recommend
      making sure it flows only over a secured management network.

-  SNMP Security

   -  The SNMP version3 has security support. However, since ODL SNMP
      Plugin that TSDR depends on does not support version 3, we (TSDR)
      will not have security support at this moment.

-  sFlow Security

   -  The sflow has security support.


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

