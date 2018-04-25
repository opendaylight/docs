.. _eman-user-guide:

eman User Guide
===============

Overview
--------

The OpenDaylight Energy Management (eman) plugin implements an abstract
Information Model that describes energy measurement and control features
that may be supported by a variety of device types. The eman plugin may
support a number of southbound interfaces to accommodate a set of
protocols, including but not limited to SNMP, NETCONF, IPDR. The plugin
presents a northbound REST API. This framework enables any number of
applications to interoperate with any number of devices in order to
measure and optimize energy usage. The Information Model will be
inherited from the `SCTE 216 standard – Adaptive Power Systems Interface
Specification (APSIS)
<http://www.scte.org/SCTEDocs/Standards/ANSI_SCTE%20216%202015.pdf>`_,
which in turn inherits definitions within the `IETF eman document set
<https://datatracker.ietf.org/wg/eman/documents/>`_.

This documentation is directed to those operating the features such as
network administrator, cloud administrator, network engineer, or system
administrators.

eman is composed of 3 Karaf features:
    * ``eman`` incudes the YANG model and its implementation
    * ``eman-api`` adds support for REST

Developers will typically interface with ``eman-api``.

eman Architecture
-----------------

``eman`` defines a YANG model that represents the IETF energy management
Information Model, and includes RPCs. The implementation of the model
currently supports an SNMP 'binding' via interfacing with the
OpenDaylight SNMP module. In the future, other Southbound protocols may
be supported.

Developers my use the ``eman-api`` feature to read and write energy
related data and commands to devices that support the IETF eman MIBS.

Besides a set of common controller features eman depends upon the
OpenDaylight SNMP features to be installed.

Configuring eman
----------------

eman relies upon the presence of SNMP agents.

The following describes a way to install and configure an SNMP simulator
on localhost.

on macOS, open terminal

1. Install snmpsim.::

    $ sudo easy_install -n snmpsim

2. configure filesystem::

    mkdir ~/.snmpsim, then mkdir ~/.snmpsim/data/

3. Install moak data. This file is used by pysnmp to provide mock data
   for an APSIS agent::

    copy eman/sample_code/data/energy-object.snmprec to ~/.snmpsim/data/.

4. launch snmp simulator::

    $ sudo snmpsimd.py --agent-udpv4-endpoint=127.0.0.1:161
        —process-group=<your group> —process-user=<your user>

5. VerifyOpen another terminal window and execute::

    $ snmpget -v2c -c energy-object localhost:161 1.3.6.1.2.1.229.0.1.0.

   The result should be ‘1’, as defined in your snmprec file

.. note::
     group and user are settings within our local OS.
     For Mac users, look at settings/users and groups.
     If port 161 is not available, use another unprivileged port such as 1161.

.. note::
     snmpget queries snmpsimd to return a value for the OID 1.3.6.1.2.1.229.0.1.0.
     According to the energy-object.snmprec file, the value for that OID is ‘1’.
     Try other OIDs, or edit the snmprec file to see your results

Future release may include more flexible and robust means to simulate
a network of energy aware SNMP agents.

Typically, a process may periodically poll a device to acquire power
measurements and repose them into MD-SAL. Subsequently, process may read a
history of power measurements from MD-SAL via the eman operational API.
