.. _tsdr-hsqldb-user-guide:

TSDR HSQLDB Datastore User Guide
================================

This document describes how to use the embedded datastore HSQLDB, which is the default datastore (recommended for non-production use case) introduced as part of OpenDaylight Time Series Data Respository (TSDR) project. This store captures the  time series data. This document contains configuration, administration, management, using, and troubleshooting
sections for the feature.

Overview
--------

In the Lithium Release of Time Series Data Repository (TSDR), time series metrics corresponding to the OpenFlow statistics are captured. For users trying out things on their laptop or non-production environment, TSDR functionality can be enabled with default datastore HSQLDB by installing the feature odl-tsdr-all.

TSDR Architecture
-----------------

The following wiki pages capture the TSDR Model/Architecture

a. https://wiki.opendaylight.org/view/TSDR_Data_Storage_Service_and_Persistence_with_HBase_Plugin
b. https://wiki.opendaylight.org/view/TSDR_Data_Collection_Service

Note in Lithium the DataCollection Service is implemented just for OpenFlow Statistics metrics.

Administering or Managing TSDR with default datastore HSQLDB
------------------------------------------------------------

Once the TSDR default datastore feature (odl-tsdr-all) is enabled, the TSDR captured OpenFlow statistics metrics can be accessed from Karaf Console by executing the command 

 tsdr:list <metric-category> <starttimestamp> <endtimestamp>

wherein

   <metric-category> = any one of the following categories FlowGroupStats, FlowMeterStats, FlowStats, FlowTableStats, PortStats, QueueStats
   <starttimestamp> = to filter the list of metrics starting this timestamp
   <endtimestamp>   = to filter the list of metrics ending this timestamp

If either of <starttimestamp> or <endtimestamp> is not specified, this command displays the latest 1000 metrics captured.

