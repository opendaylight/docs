==========
 TSDR
==========


Major Features
==============
The Time Series Data Repository (TSDR) project in OpenDaylight (ODL)
creates a framework for collecting, storing, querying, and maintaining
time series data.


odl-tsdr-syslog-collector
-------------------------
* **Feature URL:** https://github.com/opendaylight/tsdr/blob/stable/carbon/features/features-tsdr/src/main/features/features.xml
* **Feature Description:**  Collect syslog data from the network.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-hsqldb-datastore-all-carbon/

odl-tsdr-netflow-collector
--------------------------
* **Feature URL:** https://github.com/opendaylight/tsdr/blob/stable/carbon/features/features-tsdr/src/main/features/features.xml
* **Feature Description:**  Collect netflow data from the network.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-hsqldb-datastore-all-carbon/

odl-tsdr-restconf-collector
---------------------------
* **Feature URL:** https://github.com/opendaylight/tsdr/blob/stable/carbon/features/features-tsdr/src/main/features/features.xml
* **Feature Description:**  Collect restconf web activities from the network.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-hsqldb-datastore-all-carbon/

odl-tsdr-controller-metrics-collector
-------------------------------------
* **Feature URL:** https://github.com/opendaylight/tsdr/blob/stable/carbon/features/features-tsdr/src/main/features/features.xml
* **Feature Description:**  Collect ODL controller metrics.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-hsqldb-datastore-all-carbon/

odl-tsdr-hsqldb
----------------
* **Feature URL:** https://github.com/opendaylight/tsdr/blob/stable/carbon/features/features-tsdr/src/main/features/features.xml
* **Feature Description:**  Store the collected data into hsqldb that is embedded in ODL controller.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-hsqldb-datastore-all-carbon/

odl-tsdr-hbase
--------------
* **Feature URL:** https://github.com/opendaylight/tsdr/blob/stable/carbon/features/features-tsdr/src/main/features/features.xml
* **Feature Description:** Store the collected data into hbase data store.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-hbase-datastore-all-carbon/

odl-tsdr-cassandra
------------------
* **Feature URL:** https://github.com/opendaylight/tsdr/blob/stable/carbon/features/features-tsdr/src/main/features/features.xml
* **Feature Description:**  Store the collected data into cassandra data store.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-cassandra-datastore-only-carbon/

odl-tsdr-elasticsearch
----------------------
* **Feature URL:** https://github.com/opendaylight/tsdr/blob/stable/carbon/features/features-tsdr/src/main/features/features.xml
* **Feature Description:**  Store the collected data into ElasticSearch data store.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-elasticsearch-datastore-only-carbon/


Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If the document is under review, provide a link to the change in Gerrit.

* **Installation Guide(s):**

  * :ref:`TSDR Installation Guide <tsdr-install-guide>`

* **User Guide(s):**

  * :ref:`TSDR User Guide <tsdr-user-guide>`

* **Developer Guide(s):**
  * N/A


Security Considerations
=======================

* TSDR northbound query supports authentication and authorization using AAA features.
* Since ODL OpenFlow Plugin supports TLS, the OpenFlow Stats data transported from OpenFlow enabled appliances to ODL will be encrypted when TLS is enabled.
* Syslog, NetFlow, and RestConf collectors do not support encryption at this moment.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=31699>`_ 76.9%
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/tsdr/job/tsdr-csit-1node-hbase-datastore-all-carbon/>`_
* `Other manual testing and QA information <https://wiki.opendaylight.org/view/TSDR_Carbon_:TSDR_Integration_System_Test/>`_
* Testing methodology. How extensive was it? What should be expected to work? What hasn't been tested as much?

  * Relying on automation for regression on features carried over from previous releases. Manual testing on new features with test report.

Migration
---------

* Is it possible migrate from the previous release? If so, how?

  * Yes, since there's no change of features from the previous releases.

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

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

  * SNMP data collector was removed.

Standards
=========

* List of standrads implemented and to what extent

Release Mechanics
=================

* `Link to release plan <https://wiki.opendaylight.org/view/TSDR:TSDR_Carbon_Release_Plan>`_
* Describe any major shifts in release schedule from the release plan
  * N/A.
