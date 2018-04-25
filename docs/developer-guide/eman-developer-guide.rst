.. _eman-dev-guide:

eman Developer Guide
====================

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

This documentation is directed to developers who may use the eman features
to build other OpenDaylight features or applications.

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

Key APIs and Interfaces
-----------------------

The eman API currently supports a subset of the IETF eman Information Model,
including the EnergyObjectPowerMeasurement table. Users of the API may
get individual attributes or the entire table. When querying the table, the
results are written into the MD-SAL, for subsequent access. For example,
a developer may periodically poll a device for its powerMeasurements,
and fetch a collection of measurements to discover a history of measurements.


Operational API
---------------

Via MD-SAL, the following endpoint provides access to previously
captured power measurements.

.. note::
  "eo" indicates "energy object" as per the IETF Information Model

operational::

  eman:eoDevices/eoDevice{id}/eoPowerMeasurement{id}

    id indicates an index into a collection

EoDevices may contain a collection of individual eoDevice objects, which
in turn may contain a collection of eoPowerMeasurement objects

Operations API
--------------

A set of RPCs enable interactions with devices.

get-eoAttribute enables query on an individual attribute of a energy object::

  get-eoAttribute

    deviceIP indicates IP address of target device
    attribute indicates name of requested attribute

.. note:: Future releases will provide a enumeration of allowed names.

The supported name are:

* eoPower
* eoPowerNameplate
* eoPowerUnitMultiplier
* eoPowerAccuracy
* eoPowerMeasurementCaliber
* eoPowerCurrentType
* eoPowerMeasurementLocal
* eoPowerAdminState
* eoPowerOperState
* eoPowerStateEnterReason

set-eoAttribute enables sending a command to an energy object::

  set-eoAttribute

    deviceIP. IP address of target device
    attribute. string indicating name of attribute. Currently, no attributes

get-eoDevicePowerMeasures reads an eoPowerMEasurements table from a device
and stores the result in MD-SAL, making it available vie the operational API::

  get-eoDevicePowerMeasures

    deviceIP. IP address of target device

API Reference Documentation
---------------------------

See eman project page for additional information:
https://wiki.opendaylight.org/view/eman:Main
