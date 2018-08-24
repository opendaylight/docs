====
TSDR
====

Major Features
==============

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

Core TSDR Framework
===================
odl-tsdr-core
-------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/odl-tsdr-core/pom.xml
* **Feature Description:**  Core features of TSDR enables collector SPI and external interfaces.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/

TSDR Collectors
===============
odl-tsdr-openflow-statistics-collector
--------------------------------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/odl-tsdr-openflow-statistics-collector/pom.xml
* **Feature Description:**  Collect OpenFlow data from the network.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/

odl-tsdr-netflow-collector
--------------------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/odl-tsdr-netflow-statistics-collector/pom.xml
* **Feature Description:**  Collect netflow data from the network.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/

odl-tsdr-restconf-collector
---------------------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/odl-tsdr-restconf-collector/pom.xml
* **Feature Description:**  Collect restconf web activities from the network.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/

odl-tsdr-controller-metrics-collector
-------------------------------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/odl-tsdr-controller-metrics-collector/pom.xml
* **Feature Description:**  Collect ODL controller metrics.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/

odl-tsdr-syslog-collector
-------------------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/odl-tsdr-syslog-collector/pom.xml
* **Feature Description:**  Collect syslog data from the network.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/

TSDR Data Stores
================
odl-tsdr-hsqldb
---------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/odl-tsdr-hsqldb/pom.xml
* **Feature Description:**  Store the collected data into hsqldb that is embedded in ODL controller.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-verify-1node-hsqldb-datastore/

odl-tsdr-hbase
--------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/odl-tsdr-hbase/pom.xml
* **Feature Description:** Store the collected data into hbase data store.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-verify-1node-hbase-datastore/

odl-tsdr-hbase-client
---------------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/odl-hbaseclient/pom.xml
* **Feature Description:** External facing client to store the collected data into hbase data store.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-verify-1node-hbase-datastore/

odl-tsdr-cassandra
------------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/odl-tsdr-cassandra/pom.xml
* **Feature Description:**  Store the collected data into cassandra data store.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-verify-1node-cassandra-datastore/

odl-tsdr-elasticsearch
----------------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/odl-tsdr-elasticsearch/pom.xml
* **Feature Description:**  Store the collected data into ElasticSearch data store.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-verify-1node-elasticsearch-datastore/

Documentation
=============

  * :ref:`TSDR Installation Guide <tsdr-install-guide>`
  * :ref:`TSDR HBase Installation Guide <tsdr-hbase-install-guide>`
  * :ref:`TSDR HSQLDB Installation Guide <tsdr-hsqldb-install-guide>`

* **User Guide(s):**

  * :ref:`TSDR User Guide <tsdr-user-guide>`
  * :ref:`TSDR HSQLDB User Guide <tsdr-hsqldb-user-guide>`
  * :ref:`TSDR HBase User Guide <tsdr-hbase-user-guide>`
  * :ref:`TSDR ElasticSearch User Guide <tsdr-elasticsearch-user-guide>`
  * :ref:`TSDR Web Activity (RestConf) User Guide <tsdr-restconf-user-guide>`
  * :ref:`<coming soon> TSDR Grafana User Guide <tsdr-user-guide>`

Security Considerations
=======================

* TSDR northbound query supports authentication and authorization using AAA features.
* Since ODL OpenFlow Plugin supports TLS, the OpenFlow Stats data transported from OpenFlow enabled appliances to ODL will be encrypted when TLS is enabled.
* Syslog, NetFlow, and RestConf collectors do not support encryption at this time.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.tsdr%3Atsdr>`_ 71.4%
* `Link to Test Procedures <https://wiki.opendaylight.org/view/TSDR:TSDR_Oxygen_Testing_with_Results#Test_Cases_.26_Results/>`_
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/tsdr>`_
* `Other manual testing and QA information <https://wiki.opendaylight.org/view/TSDR_Carbon_:TSDR_Integration_System_Test>`_
* Testing methodology

  * Relying on automation for regression on features carried over from previous releases. Manual testing on new features with test report.

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * Yes, since there's no contract breaking changes of features from the previous releases.

Compatibility
-------------

* Is this release compatible with the previous release?
  Yes

* Any API changes?
  No

* Any configuration changes?
  No

Bugs Fixed
----------

* List of bugs fixed since the previous release

  * TSDR-26 TSC-113 Convert to Jersey 2
  * TSDR-28 odl-openflow-statistics-collector doesn't collects openflow stats from multiple mininet
  * TSDR-31 Fix broken tsdr feature failing the new extended SingleFeatureTest incl. 
  * TSDR-37 Upgrade Guava because of Jersey 2.x dependency
  * TSDR-42 Remove SNMP dependency for Flourine
  * TSDR-47 Convert NBI to use new web registration API
  * TSDR-49 Provide support for new grafana and re-add dataquery feature
  * TSDR-52 Investigate FlowCapableNodeConnectorStatistics building
  * TSDR-61 TSC-96 IetfInetUtil conversion from byte[] and InetAddress returns Ipv4Address
  * TSDR-78 Catch and log NumberFormatException
  * TSDR-80 TSDRQueryandNBITest failing 500 error
  * TSDR-82 Validate REST NBI query parameters
  * TSDR-85 Add detailed user-facing error messages for query params
  * ...

Known Issues
------------

* Collector data stores run one at a time.  To switch store, uninstall current and install new.
* Grafana interface is still under construction.

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  * experimental SNMP data collector was temporarily removed until further support is found.
  * experimental sFlow data collector was temporarily removed until further support is found.

Standards
=========

* List of standards implemented and to what extent

  * N/A

Release Mechanics
=================

* `Link to Flourine release plan <https://jira.opendaylight.org/projects/TSC/issues/TSC-143?filter=allissues>`_

* Describe any major shifts in release schedule from the release plan

  * No shifts
