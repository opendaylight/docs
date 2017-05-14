============
Project Name
TSDR

============

Major Features
The Time Series Data Repository (TSDR) project in OpenDaylight (ODL)
creates a framework for collecting, storing, querying, and maintaining
time series data. 

Features include:

* Data Collectors
** Syslog Collector
** OpenFlowStatistics Collector
** Netflow Collector
** RestConf Collector

* Data Stores
** HSQLDB Data Store
** HBase Data Store
** Cassandra Data Store
** Elastic Search Data Store

* Data Query
** Provides Northbound REST APIs for querying the data from TSDR data stores.

* Data Purging
** Periodically purges out-of-dated data from TSDR data stores.

==============

Feature Name
odl-tsdr-hsqldb-all, odl-tsdr-syslog-collector, odl-tsdr-netflow-collector, odl-tsdr-restconf-collector, odl-tsdr-controller-metrics-collector
------------

* **Feature URL:** https://github.com/opendaylight/tsdr/blob/stable/carbon/features/features-tsdr/src/main/features/features.xml
* **Feature Description:**  Installing odl-tsdr-hsqldb-all provides the OpenFlowStatistics collector, hsqldb data store, data query, and purging capabilities. When installaing additional collectors including odl-tsdr-syslog-collector, odl-tsdr-netflow-collector, odl-tsdr-restconf-collector, odl-tsdr-controller-metrics-collector, the user will be able to collector more types of data and store into TSDR data stores.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-hsqldb-datastore-all-carbon/
 

Feature Name
odl-tsdr-hbase
* **Feature URL:** https://github.com/opendaylight/tsdr/blob/stable/carbon/features/features-tsdr/src/main/features/features.xml
* **Feature Description:**  Installing odl-tsdr-hbase together with any of the data collectors will provide the capabilities of collecting the particular type of data, store in the hbase data store, and querying the data from the northbound REST APIs.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-hbase-datastore-all-carbon/
 
Feature Name
odl-tsdr-cassandra
* **Feature URL:** https://github.com/opendaylight/tsdr/blob/stable/carbon/features/features-tsdr/src/main/features/features.xml
* **Feature Description:**  Installing odl-tsdr-hbase together with any of the data collectors will provide the capabilities of collecting the particular type of data, store in the cassandra data store, and querying the data from the northbound REST APIs.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-cassandra-datastore-only-carbon/

Feature Name
odl-tsdr-elasticsearch
* **Feature URL:** https://github.com/opendaylight/tsdr/blob/stable/carbon/features/features-tsdr/src/main/features/features.xml
* **Feature Description:**  Installing odl-tsdr-hbase together with any of the data collectors will provide the capabilities of collecting the particular type of data, store in the elasticsearch data store, and querying the data from the northbound REST APIs.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-elasticsearch-datastore-only-carbon/


Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If the document is under review, provide a link to the change in Gerrit.

* **Installation Guide(s):**

  * TSDR Installation Guide
  * http://docs.opendaylight.org/en/stable-boron/getting-started-guide/project-specific-guides/tsdr.html

* **User Guide(s):**

  * TSDR User Guide
  * http://docs.opendaylight.org/en/stable-boron/user-guide/tsdr-user-guide.html
* **Developer Guide(s):**
N/A
  * `Guide Name <URL>`_

.. Commented out because Colin doens't think it provides any value.
.. Architectural Issues
.. --------------------

Security Considerations
=======================

* Do you have any external interfaces other than RESTCONF?
No.
  * If so, how are they secure?
  * What port numbers do they use?

* Other security issues?
N/A.

Quality Assurance
=================

* `Link to Sonar Report <URL>`_ 76.9%
https://sonar.opendaylight.org/overview?id=31699
* `Link to CSIT Jobs <URL>`_
https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-hbase-datastore-all-carbon/
https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-hsqldb-datastore-all-carbon/
https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-elasticsearch-datastore-only-carbon/
https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-cassandra-datastore-only-carbon/
* Other manual testing and QA information
Manual testing of new TSDR Carbon features with results:
https://wiki.opendaylight.org/view/TSDR_Carbon_:TSDR_Integration_System_Test
* Testing methodology. How extensive was it? What should be expected to work? What hasn't been tested as much?
Relying on automation for regression on features carried over from previous releases. Manual testing on new features with test report.
Migration
---------

* Is is possible migrate from the previous release? If so, how?
Yes, since there's no change of features from the previous releases.

Compatiblity
------------

* Is this release compatible with the previous release?
Yes.
* Any API changes?
No.
* Any configuraiton changes?
No.

Bugs Fixed
----------

* List of bugs fixed since the previous release

Known Issues
------------

* List key known issues with workarounds
* `Link to Open Bugs <URL>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release
** SNMP data collector was removed.
Standards
=========

* List of standrads implemented and to what extent

Release Mechanics
=================

* `Link to release plan <URL>`_
   https://wiki.opendaylight.org/view/TSDR:TSDR_Carbon_Release_Plan
* Describe any major shifts in release schedule from the release plan

.. note:: We will also ask about your testing of the latest SR, but that should probalby not formally be part of this document.



