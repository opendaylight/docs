Centinel Installation Guide
===========================

This document is for the user to install the artifacts that are needed
for using Centinel functionality in the OpenDaylight by enabling the
default Centinel feature. Centinel is a distributed reliable framework
for collection, aggregation and analysis of streaming data which is
added in OpenDaylight Beryllium Release.

Overview
--------

The Centinel project aims at providing a distributed, reliable framework
for efficiently collecting, aggregating and sinking streaming data across
Persistence DB and stream analyzers (e.g., Graylog, Elasticsearch,
Spark, Hive). This framework enables SDN applications/services to
receive events from multiple streaming sources
(e.g., Syslog, Thrift, Avro, AMQP, Log4j, HTTP/REST).

In Beryllium, we develop a "Log Service" and plug-in for log analyzer (e.g., Graylog).
The Log service process real time events coming from log analyzer.
Additionally, we provide stream collector (Flume- and Sqoop-based) that collects logs
from OpenDaylight and sinks them to persistence service (integrated with TSDR).
Centinel also includes a RESTCONF interface to inject events to north bound applications
for real-time analytic/network configuration. Further, a Centinel User Interface (web interface)
will be available to operators to enable rules/alerts/dashboard etc.

Pre Requisites for Installing Centinel
--------------------------------------

* Recent Linux distribution - 64bit/16GB RAM
* Java Virtual Machine 1.7 or above
* Apache Maven 3.1.1 or above

Preparing for Installation
--------------------------

There are some additional pre-requisites for Centinel, which can be done by integrate
Graylog server, Apache Drill, Apache Flume and HBase.


Graylog server2 Installation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* Install MongoDB

  * import the MongoDB public GPG key into apt::

       sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10

  * Create the MongoDB source list::

       echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

  * Update your apt package database::

       sudo apt-get update

  * Install the latest stable version of MongoDB with this command::

       sudo apt-get install mongodb-org


* Install Elasticsearch

  * Graylog2 v0.20.2 requires Elasticsearch v.0.90.10. Download and install it with these commands::

       cd ~; wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.10.deb
       sudo dpkg -i elasticsearch-0.90.10.deb

  * We need to change the Elasticsearch cluster.name setting. Open the Elasticsearch configuration file::

       sudo vi /etc/elasticsearch/elasticsearch.yml

  * Find the section that specifies cluster.name. Uncomment it, and replace the default value with graylog2::

       cluster.name: graylog2

  * Find the line that specifies network.bind_host and uncomment it so it looks like this::

       network.bind_host: localhost
       script.disable_dynamic: true

  * Save and quit. Next, restart Elasticsearch to put our changes into effect::

       sudo service elasticsearch restart

  * After a few seconds, run the following to test that Elasticsearch is running properly::

       curl -XGET 'http://localhost:9200/_cluster/health?pretty=true'


* Install Graylog2 server

  * Download the Graylog2 archive to /opt with this command::

       cd /opt; sudo wget https://github.com/Graylog2/graylog2-server/releases/download/0.20.2/graylog2-server-0.20.2.tgz

  * Then extract the archive::

       sudo tar xvf graylog2-server-0.20.2.tgz

  * Let's create a symbolic link to the newly created directory, to simplify the directory name::

       sudo ln -s graylog2-server-0.20.2 graylog2-server

  * Copy the example configuration file to the proper location, in /etc::

       sudo cp /opt/graylog2-server/graylog2.conf.example /etc/graylog2.conf

  * Install pwgen, which we will use to generate password secret keys::

       sudo apt-get install pwgen

  * Now must configure the admin password and secret key. The password secret key is configured in graylog2.conf, by the password_secret parameter. Generate a random key and insert it into the Graylog2 configuration with the following two commands::

       SECRET=$(pwgen -s 96 1)
       sudo -E sed -i -e 's/password_secret =.*/password_secret = '$SECRET'/' /etc/graylog2.conf

       PASSWORD=$(echo -n password | shasum -a 256 | awk '{print $1}')
       sudo -E sed -i -e 's/root_password_sha2 =.*/root_password_sha2 = '$PASSWORD'/' /etc/graylog2.conf

  * Open the Graylog2 configuration to make a few changes: (sudo vi /etc/graylog2.conf)::

       rest_transport_uri = http://127.0.0.1:12900/
       elasticsearch_shards = 1

  * Now let's install the Graylog2 init script. Copy graylog2ctl to /etc/init.d::

       sudo cp /opt/graylog2-server/bin/graylog2ctl /etc/init.d/graylog2

  * Update the startup script to put the Graylog2 logs in /var/log and to look for the Graylog2 server JAR file in /opt/graylog2-server by running the two following sed commands::

       sudo sed -i -e 's/GRAYLOG2_SERVER_JAR=\${GRAYLOG2_SERVER_JAR:=graylog2-server.jar}/GRAYLOG2_SERVER_JAR=\${GRAYLOG2_SERVER_JAR:=\/opt\/graylog2-server\/graylog2-server.jar}/' /etc/init.d/graylog2
       sudo sed -i -e 's/LOG_FILE=\${LOG_FILE:=log\/graylog2-server.log}/LOG_FILE=\${LOG_FILE:=\/var\/log\/graylog2-server.log}/' /etc/init.d/graylog2

  * Install the startup script::

       sudo update-rc.d graylog2 defaults

  * Start the Graylog2 server with the service command::

       sudo service graylog2 start


Install Graylog Server using Virtual Machine
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* Download the OVA image from link given below and save it to your disk locally:
  https://github.com/Graylog2/graylog2-images/tree/master/ova

* Run the OVA in many systems like VMware or VirtualBox.


HBase Installation
------------------

* Download hbase-0.98.15-hadoop2.tar.gz

* Unzip the tar file using below command::

     tar -xvf hbase-0.98.15-hadoop2.tar.gz

* Create directory using below command::

     sudo mkdir /usr/lib/hbase

* Move hbase-0.98.15-hadoop2 to hbase using below command::

     mv hbase-0.98.15-hadoop2/usr/lib/hbase/hbase-0.98.15-hadoop2 hbase

* Configuring HBase with java

  * Open your hbase/conf/hbase-env.sh and set the path to the java installed in your system::

       export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_25

  * Set the HBASE_HOME path in bashrc file

    * Open bashrc file using this command::

         gedit ~/.bashrc

    * In bashrc file append the below 2 statements::

         export HBASE_HOME=/usr/lib/hbase/hbase-0.98.15-hadoop2

         export PATH=$PATH:$HBASE_HOME/bin

* To start HBase issue following commands::

     HBASE_PATH$ bin/start-hbase.sh

     HBASE_PATH$ bin/hbase shell

* Create centinel table in HBase with stream,alert,dashboard and stringdata as column families using below command::

     create 'centinel','stream','alert','dashboard','stringdata'

* To stop HBase issue following command::

     HBASE_PATH$ bin/stop-hbase.sh


Apache Flume Installation
-------------------------

* Download apache-flume-1.6.0.tar.gz

* Copy the downloaded file to the directory where you want to install Flume.

* Extract the contents of the apache-flume-1.6.0.tar.gz file using below command. Use sudo if necessary::

     tar -xvzf apache-flume-1.6.0.tar.gz

* Starting flume

  * Navigate to the Flume installation directory.
  * Issue the following command to start flume-ng agent::

       ./flume-ng agent --conf conf --conf-file multiplecolumn.conf --name a1 -Dflume.root.logger=INFO,console


Apache Drill Installation
-------------------------

* Download apache-drill-1.1.0.tar.gz

* Copy the downloaded file to the directory where you want to install Drill.

* Extract the contents of the apache-drill-1.1.0.tar.gz file using below command::

     tar -xvzf apache-drill-1.1.0.tar.gz

* Starting Drill:

  * Navigate to the Drill installation directory.

  * Issue the following command to launch Drill in embedded mode::

      bin/drill-embedded

* Access the Apache Drill UI on link: http://localhost:8047/

* Go to "Storage" tab and enable "HBase" storage plugin.




Deploying plugins
-----------------

* Use the following command to download git repository of  Centinel::

     git clone https://git.opendaylight.org/gerrit/p/centinel

* Navigate to the installation directory and build the code using maven  by running below command::

     mvn clean install

* After building the maven project, a jar file named ``centinel-SplittingSerializer-0.0.1-SNAPSHOT.jar``
  will be created in ``centinel/plugins/centinel-SplittingSerializer/target`` inside the workspace directory.
  Copy and rename this jar file to ``centinel-SplittingSerializer.jar`` (as mentioned in configuration file of flume)
  and save  at location ``apache-flume-1.6.0-bin/lib`` inside flume directory.

* After successful build, copy the jar files present at below locations  to ``/opt/graylog/plugin`` in graylog server(VM)::

     centinel/plugins/centinel-alertcallback/target/centinel-alertcallback-0.1.0-SNAPSHOT.jar

     centinel/plugins/centinel-output/target/centinel-output-0.1.0-SNAPSHOT.jar

* Restart the server after adding plugin using below command::

     sudo graylog-ctl restart graylog-server


Configure rsyslog
-----------------

Make changes to following file::

   /etc/rsyslog.conf

* Uncomment ``$InputTCPServerRun 1514``

* Add the following lines::

     module(load="imfile" PollingInterval="10") #needs to be done just once
     input(type="imfile"
     File="<karaf.log>" #location of log file
     StateFile="statefile1"
     Tag="tag1")
     *.* @@127.0.0.1:1514 # @@used for TCP

  * Use the following format and comment the previous one::

       $ActionFileDefaultTemplate RSYSLOG_SyslogProtocol23Format

* Use the below command to send Centinel logs to a port::

     tail -f <location of log file>/karaf.log|logger

* Restart rsyslog service after making above changes in configuration file::

     sudo service rsyslog restart


Install the following feature
-----------------------------

Finally, from the Karaf console install the Centinel feature with this command::

   feature:install odl-centinel-all


Verifying your Installation
---------------------------

If the feature install was successful you should be able to see the following Centinel commands added::

      centinel:list

      centinel:purgeAll

Troubleshooting
---------------

Check the ``../data/log/karaf.log`` for any exception related to Centinel related features

Upgrading From a Previous Release
---------------------------------

Beryllium being the first release supporting Centinel functionality, only fresh installation is possible.

Uninstalling Centinel
---------------------

To uninstall the Centinel functionality, you need to do the following from Karaf console::

   feature:uninstall centinel-all

Its recommended to restart the Karaf container after uninstallation of the Centinel functionality.
