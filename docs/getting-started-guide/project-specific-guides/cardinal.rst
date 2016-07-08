Cardinal Installation Guide
=======================

This document is for the user to install the artifacts that are needed
for using Cardinal-Opendaylight monitoring as a service functionality in the ODL
Controller by enabling ODL-CARDINAL-MIB and snmp.


Overview
--------

Cardinal (OpenDaylight Monitoring as a Service) enables SDN Controller - OpenDaylight (ODL) and the underlying software defined network to be remotely monitored by deployed Network Management Systems (NMS) or Analytics suite.

Pre Requisites for Installing TSDR
----------------------------------

The software requirements for TSDR HBase Data Store are as follows:

* You only need to have snmp installed in the system, which will be used to access the mib tree. Download snmp from the following website:

 https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-an-snmp-daemon-and-client-on-ubuntu-14-04



Installing Cardinal
---------------------------


Once OpenDaylight distribution is up, from karaf console install the Cardinal feature using the following command::

#.   feature:install odl-cardinal

This will install Cardinal related dependency features (and can take sometime)  before returning control to the console.


Verifying your Installation
---------------------------

After the Cardinal feature is installed, the user can verify the installation with the following steps.

#. Verify if the following snmp command returns you the default mib variable::

     snmpget -v2c -c public localhost .1.3.6.1.3.1.1.1.2.0
  
If you get a response "SNMPv2-SMI::experimental.1.1.1.6.0 = STRING: "Opendaylight Node Information"", than it means that snmp 
is able to read the ODL-CARDINAL-MIB.  

#. Varify if the Snmp Daemon is up and running on 161 port. You can check the port configuration using following command:
   
      netstat -anp | grep "161"

#.For using snmptraps, check whether snmptrapd is up and running on port 162.

If the port is up and running, than that means snmp daemon is configured correctly.You can check the port configuration using following command:

      netstat -anp | grep "162"


Troubleshooting
--------------------------

Check the ``../data/log/karaf.log`` for any exception related to Cardinal features.
You can also check in karaf console with the following command:
    
	log:display



Uninstalling Cardinal feature
-----------------------------


To uninstall the Cardinal feature, you need to do the following from karaf console::

   feature:uninstall odl-Cardinal

It is recommended to restart the Karaf container after the uninstallation of the Cardinal functionality with the default store.



