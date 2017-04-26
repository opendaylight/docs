####################
eman User Guide
####################

Refer to this template to identify the required sections and information
that you should  provide for a User Guide. The user guide should contain
configuration, administration, management, using, and troubleshooting
sections for the feature.

Overview
========

The OpenDaylight Energy Management plugin implements an abstract 
Information Model that describes energy measurement and control features 
that may be supported by a variety of device types. The eman plugin may 
support a number of southbound interfaces to accommodate a set of 
protocols, including but not limited to SNMP, NET-CONF, IPDR. The plugin 
presents a northbound REST API. This framework enables any number of 
applications to interoperate with any number of devices in order to 
measure and optimize energy usage. The Information Model will be 
inherited from the SCTE 216 standard – Adaptive Power Systems Interface 
Specification (APSIS), which in turn inherits definitions within the IETF 
EMAN document set.

This documentation is directed to those operating the features such as
network administrator, cloud administrator, network engineer, or system 
administrators

Eman is composed of 3 features: 
eman - incudes the YANG model and its implementation
eman-api - adds support for REST
eman-ui - adds support for DLUX. 

Developers will typically interface with eman-api.


eman Architecture
======================

Eman defines a YANG model that represents the IETF energy management
Information Model, and includes RPCs. The implementation of the model
currently supports an SNMP 'binding' via interfacing with the ODL SNMP 
module. In the future, other Southbound protocols may be supported. 

Developers my use the eman-api feature to read and write energy related 
data and commands to devices that support the IETF eman MIBS.

Besides a set of common controller features eman depands upon the ODL snmp
features to be installed.

Configuring eman
=====================

Eman relies upon the presence of SNMP agents. 

The following describes a way to install and configure an SNMP simulator
on localhost.

on MAC OS, open terminal

1. Install snmpsim. 
    $ sudo apt install snmpsim
2. configure filesystem
    mkdir ~/.snmpsim, then mkdir ~/.snmpsim/data/
3. Install moak data
    copy eman/sample_code/data/energy-object.snmprec to ~/.snmpsim/data/. 
    This file is used by pysnmp to provide mock data for an APSIS agent
4. launch snmp simulator: 
    $ sudo snmpsimd.py --agent-udpv4-endpoint=127.0.0.1:161 
    —process-group=<your group> —process-user=<your user>
5. Verify 
    Open another terminal window and execute: 
    $ snmpget -v2c -c energy-object localhost:161 1.3.6.1.2.1.229.0.1.0. 
    The result should be ‘1’, as defined in your snmprec file
    
Note: group and user are settings within our local OS. 
For Mac users, look at settings/users and groups. 
If port 161 is not available, use another unprivileged port such as 1161.

Note: snmpget queries snmpsimd to return a value for the OID 1.3.6.1.2.1.229.0.1.0. 
According to the energy-object.snmprec file, the value for that OID is ‘1’. 
Try other OIDs, or edit the snmprec file to see your results

Future release may include more flexible and robust means to simulating
a network of energy aware SNMP agents.

Typically, a process may periodically poll a device to acquire power
measurements and repose them into MD-SAL. Subsequently, process may read a 
history of power measurements from MD-SAL via the eman Operational API.


Administering or Managing eman
===================================

No specific steps required

Tutorials
=========

None

Reading power measures
---------------

Not yet described


