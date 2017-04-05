ODL-SDNi User Guide
===================

Introduction
------------

This user guide will help to setup the ODL-SDNi application.


Components
----------

SDNiAggregator, SDNi REST API, SDNiWrapper, and SDNiUI are the four components in ODL-SDNi App:

-  SDNiAggregator: Connects with switch, topology, hosttracker managers of controller to get the topology and other related data.

-  SDNi REST API: It is a part of controller northbound, which gives the required information by quering SDNiAggregator through RESTCONF.

-  SDNiWrapper: This component uses the SDNi REST API and SDNiAggregator to exchange the topology and QoS information to be shared among controllers.

-  SDNiUI: This component displays all the SDN controllers which are connected to each other.


Database
--------

Install SQLite3 by running the following command:

- sudo apt-get install sqlite3


Running ODL-SDNi Application
----------------------------

* Download the Carbon Latest Distribution Artifact from 
 - https://wiki.opendaylight.org/view/CrossProject:Integration_Group:Controller_Artifacts

* Run the karaf using the command ./karaf under bin directory.

* Install the following features: 
   - feature:install odl-l2switch-all
   - feature:install odl-sdninterfaceapp-all

* Create a Topology for 2 Controllers using mininet.

* Configure the peer controllers to exchange the information through Rest API:
   - Add peer controller to the trusted controller list [opendaylight-sdni-wrapper: add-trusted-controllers]
   - Add peer controller to SDNi [opendaylight-sdni-wrapper: add-peer-controllers]
  
* Once the peer controllers are configured to SDNi, messages will be exchanged for every 15 sec.

* Remove peer controller from SDNi [opendaylight-sdni-wrapper: remove-peer-controllers]

* Check for the database created in the distribution-karaf-0.x.0-SNAPSHOT folder by the name sdninterfaceapp:db 
    - 'x': refers to the latest version

* Run the database by giving the following commands 
    - sqlite3 sdninterfaceapp:db

  ********************************************************************
  * sqlite> .tables                                                  *
  * QOS_DATABASE_10_10_10_1       TOPOLOGY_DATABASE_10_10_10_1       *
  * QOS_DATABASE_PEER_10_10_10_2  TOPOLOGY_DATABASE_PEER_10_10_10_2  *
  * TRUSTED_CONTROLLERS                                              *
  * sqlite>                                                          *
  ********************************************************************

  Note: "10_10_10_1" refers to own controller running on ip 10.10.10.1 and "PEER_10_10_10_2" refers to peer controller with ip 10.10.10.2.

* Check the toplogy, QoS Rest APIs URL(http://localhost:8181/apidoc/explorer/index.html) 
    Rest APIs are exposed under:
      - opendaylight-sdni-topology-msg    // Fetches topology data
      - opendaylight-sdni-qos-msg         // Fetches qos data 
      - opendaylight-sdni-wrapper         // Configures the peer controller for SDNi data synchonization.



SDNi UI
-------

This diplays the SDN controllers which are connected to each other. [http://localhost:8181/index.html#/sdniUI/sdnController]


Troubleshooting
---------------

SDNi uses the port 8115 to communicate with the peers. If the messages are not exchanged, check whether the port is used by karaf or not.

