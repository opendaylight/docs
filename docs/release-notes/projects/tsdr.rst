====
TSDR
====

Major Features
==============
The Time Series Data Repository (TSDR) project in OpenDaylight (ODL)
creates a framework for collecting, storing, querying, and maintaining
time series data from many similar and disparate data sources.

* **TSDR Features URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/features-tsdr/pom.xml

odl-tsdr-core
-------------
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=tsdr.git;a=blob;f=features/odl-tsdr-core/pom.xml
* **Feature Description:**  Core features of TSDR enables collector SPI and external interfaces.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/


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

Please provide the URL to each document at docs.opendaylight.org. If the document is under review, provide a link to the change in Gerrit.

* **Installation Guide(s):**

  * `TSDR Installation Guide <https://github.com/opendaylight/docs/blob/master/docs/getting-started-guide/project-specific-guides/tsdr-install-guide.rst>`
  * `TSDR HBase Installation Guide <https://github.com/opendaylight/docs/blob/master/docs/getting-started-guide/project-specific-guides/tsdr-hbase-install-guide.rst>`
  * `TSDR HSQLDB Installation Guide <https://github.com/opendaylight/docs/blob/master/docs/getting-started-guide/project-specific-guides/tsdr-hsqldb-install-guide.rst>`

* **User Guide(s):**

  * `TSDR User Guide <https://github.com/opendaylight/docs/blob/master/docs/user-guide/tsdr-user-guide.rst>`
  * `TSDR HSQLDB User Guide <https://github.com/opendaylight/docs/blob/master/docs/user-guide/tsdr-hsqldb-user-guide.rst>`
  * `TSDR HBase User Guide <https://github.com/opendaylight/docs/blob/master/docs/user-guide/tsdr-hbase-user-guide.rst>`
  * `TSDR ElasticSearch User Guide <https://github.com/opendaylight/docs/blob/master/docs/user-guide/tsdr-elastic-search-user-guide.rst>`
  * `<coming soon> TSDR Grafana User Guide <tsdr-grafana-user-guide>`

Security Considerations
=======================

* TSDR northbound query supports authentication and authorization using AAA features.
* Since ODL OpenFlow Plugin supports TLS, the OpenFlow Stats data transported from OpenFlow enabled appliances to ODL will be encrypted when TLS is enabled.
* Syslog, NetFlow, and RestConf collectors do not support encryption at this time.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/dashboard?id=org.opendaylight.tsdr%3Atsdr>`_ 73.1%
* `Link to Test Procedures <https://wiki.opendaylight.org/view/TSDR:TSDR_Oxygen_Testing_with_Results#Test_Cases_.26_Results/>`_
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/tsdr/>`_
* `Other manual testing and QA information <https://wiki.opendaylight.org/view/TSDR_Carbon_:TSDR_Integration_System_Test/>`_
* Testing methodology. How extensive was it? What should be expected to work? What hasn't been tested as much?

  * Relying on automation for regression on features carried over from previous releases. Manual testing on new features with test report.

Migration
---------

* Is it possible to migrate from the previous release? If so, how?

  * Yes, since there's no change of features from the previous releases.

Compatibility
-------------

* Is this release compatible with the previous release?
  Yes.

* Any API changes?
  No.

* Any configuration changes?
  No.

Bugs Fixed
----------

* List of bugs fixed since the previous release

Known Issues
------------

* List key known issues with workarounds

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  * experimental SNMP data collector was temporarily removed until further support is found.
  * experimental sFlow data collector was temporarily removed until further support is found..

Standards
=========

* List of standards implemented and to what extent

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/TSDR:TSDR_Oxygen_Release_Plan>`_
* Describe any major shifts in release schedule from the release plan
  * N/A.
