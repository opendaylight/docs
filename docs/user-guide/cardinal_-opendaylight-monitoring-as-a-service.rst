.. _cardinal-user-guide:

Cardinal: OpenDaylight Monitoring as a Service
==============================================

This section describes how to use the Cardinal feature in OpenDaylight
and contains configuration, administration, and management sections for
the feature.

Overview
--------

Cardinal (OpenDaylight Monitoring as a Service) enables OpenDaylight and
the underlying software defined network to be remotely monitored by
deployed Network Management Systems (NMS) or Analytics suite. In the
Boron release, Cardinal will add:

1. OpenDaylight MIB.

2. Enable ODL diagnostics/monitoring to be exposed across SNMP (v2c, v3)
   and REST north-bound.

3. Extend ODL System health, Karaf parameter and feature info, ODL
   plugin scalability and network parameters.

4. Support autonomous notifications (SNMP Traps).

Cardinal Architecture
---------------------

The Cardinal architecture can be found at the below link:

https://wiki.opendaylight.org/images/8/89/Cardinal-ODL_Monitoring_as_a_Service_V2.pdf

Configuring Cardinal feature
----------------------------

To start Cardinal feature, start karaf and type the following command:

::

    feature:install odl-cardinal

After this Cardinal should be up and working with SNMP daemon running on
port 161.

Tutorials
---------

Below are tutorials for Cardinal.

Using Cardinal
~~~~~~~~~~~~~~

These tutorials are intended for any user who wants to monitor three
basic component in OpenDaylight

1. System Info in which controller is running.

2. Karaf Info

3. Project Specific Information (Openflow and Netconf devices).

Prerequisites
^^^^^^^^^^^^^

There is no as such specific prerequisite. Cardinal can work without
installing any third party software. However If one wants to see the
output of a snmpget/snmpwalk on the CLI prompt, than one can install the
SNMP using the below link:

https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-an-snmp-daemon-and-client-on-ubuntu-14-04

Using the above command line utility one can get the same result as the
cardinal APIs will give for the snmpget/snmpwalk request.

Target Environment
^^^^^^^^^^^^^^^^^^

This tutorial is developed considering the following environment:

controller-Linux(Ubuntu 14.02).

Instructions
^^^^^^^^^^^^

Install Cardinal feature
''''''''''''''''''''''''

Open karaf and install the cardinal feature using the following command:

::

    feature:install odl-cardinal

Please verify that SNMP daemon is up on port 161 using the following
command on the terminal window of Linux machine:

::

    netstat -anp | grep "161"
    netstat -anp | grep "2001"
    netstat -anp | grep "2003"

If the grep on the \`\`snmpd\`\` port is successful than SNMP daemon is
up and working.

APIs Reference
''''''''''''''

Please see Developer guide for usage of Cardinal APIs.

CLI commands to do snmpget/walk
'''''''''''''''''''''''''''''''

One can do snmpget/walk on the ODL-CARDINAL-MIB. Open the linux terminal
and type the below command:

::

    snmpget -v2c -c public localhost Oid_Of_the_mib_variable

Or

::

    snmpget -v2c -c public localhost ODL-CARDINAL-MIB::mib_variable_name

For snmpwalk use the below command:

::

    snmpwalk -v2c -c public localhost SNMPv2-SMI::experimental

For tabular data (netconf devices), snmpwalk use the
below command:

::

   snmpwalk -v2c -c public localhost:2001 SNMPv2-SMI::experimental

For tabular data (openflow devices), snmpwalk use the
below command:

::

   snmpwalk -v2c -c public localhost:2003 SNMPv2-SMI::experimental
