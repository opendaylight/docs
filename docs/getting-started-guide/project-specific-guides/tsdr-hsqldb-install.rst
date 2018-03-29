.. _tsdr-hsqldb-install-guide:

TSDR HSQLDB Default Datastore Installation Guide
================================================

This document is for the user to install the artifacts that are needed
for using Time Series Data Repository (TSDR) functionality in the ODL Controller by enabling the default HSQLDB Datastore. TSDR is new functionality added in OpenDaylight in Lithium Release.

Overview
--------

In Lithium Release the time series data records of OpenFlow statistics are collected periodically and stored in a persistent store. For non-production usage, the bundled default datastore (HSQLDB) is utilized based on odl-tsdr-all feature installation. The TSDR records get persisted in HSQLDB store in <install folder>/tsdr/ folder by default.

Installing TSDR with default HSQLDB datastore
---------------------------------------------

Once OpenDaylight distribution is up, from karaf console install the TSDR feature with default datastore (HSQLDB store used) can be installed by 

    ::

        feature:install odl-tsdr-all


This will install all dependency features (and can take sometime) before returning control to the console.

Verifying your Installation
---------------------------

If the feature install was successful you should be able to see the following tsdr commands added

    ::

        tsdr:list


Troubleshooting
---------------

Check the ../data/log/karaf.log for any exception related to TSDR or HSQLDB related features.

Post Installation Configuration
-------------------------------

The feature installation takes care of automated configuration of the datasource by installing a file in <install folder>/etc named org.ops4j.datasource-metric.cfg. This contains the default location of <install folder>/tsdr where the HSQLDB datastore files are stored. If you want to change the default location of the datastore files to some other location update the last portion of the url property in the org.ops4j.datasource-metric.cfg and then restart the karaf container 

Upgrading From a Previous Release
---------------------------------

Lithium being the first release supporting TSDR functionality, only fresh installation is possible. However if you want to move to production usage by enabling the store HBase for TSDR usage, you can do it by uninstalling the TSDR with default HSQLDB datastore, restarting the Karaf container and then enabling the TSDR with HBase store as documented in tsdr-hbase-install.doc  

Uninstalling TSDR with default HSQLDB datastore
-----------------------------------------------

To uninstall the TSDR functionality with the default store, you need to do the following from karaf console

    ::

        feature:uninstall odl-tsdr-all
        feature:uninstall odl-tsdr-core
        feature:uninstall odl-tsdr-HSQLDB-persistence


Its recommended to restart the Karaf container after uninstallation of the TSDR functionality with the default store

