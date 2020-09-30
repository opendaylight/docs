==================
Neutron Northbound
==================

Overview
========

The neutron northbound project is focused on the communication from the ODL drivers in OpenStack
to the ODL neutron service and saves the neutron models into ODL data store for other providers
to use. It does not include direct manipulation of low-level network/overlay elements, these are
left to the providers that receive information from this project.

The Neutron northbound implementation includes:

.. list-table:: Neutron NB implementation
   :widths: 20 50
   :header-rows: 1

   * - **Feature**
     - **Description**

   * - **odl-neutron-service**
     - This is a top level feature to load Neutron northbound functionality.
   * - **odl-neutron-northbound-spi**
     - It provides REST API for OpenStack Neutron
   * - **odl-neutron-spi**
     - It provides the SPI Neutron Northbound feature
   * - **odl-neutron-transcriber**
     - Data converter from/to REST API to/from MD-SAL YANG model
   * - **odl-neutron-hostconfig-ovs**
     - Helper library to support hostconfig for OpenStack service provider with Open vSwitch
   * - **odl-neutron-hostconfig-vpp**
     - Helper library to support hostconfig for OpenStack service provider with VPP
   * - **odl-neutron-logger**
     - Logger on activity for Neutron YANG models


Behavior/Feature Changes
========================

This release introduces the following behavior changes:

* No behavior changes have been introduced in this release.

New Features
============

This release provides the following new features:

* No new features have been added in this release.

Resolved Issues
===============

The following table lists the resolved issues fixed this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - N/A
     - Introduce MD-SAL APIs


Known Issues
============

The following table lists the known issues that exist in this release.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Key**
     - **Summary**

   * - Open Issues
     - Bugs <https://jira.opendaylight.org/projects/NEUTRON/issues/NEUTRON-208?filter=allopenissues>

