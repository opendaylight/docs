************
Introduction
************

The OpenDaylight project is an open source platform for Software Defined
Networking (SDN) that uses open protocols to provide centralized, programmatic
control and network device monitoring. Like many other SDN controllers,
OpenDaylight supports OpenFlow, as well as offering ready-to-install network
solutions as part of its platform.

Much as your operating system provides an interface for the devices that
comprise your computer, OpenDaylight provides an interface that allows you to
connect network devices quickly and intelligently for optimal network
performance.

It’s extremely helpful to understand that setting up your networking environment
with OpenDaylight is not a single software installation. While your first
chronological step is to install OpenDaylight, you install additional
functionality packaged as Karaf features to suit your specific needs.

Before walking you through the initial OpenDaylight installation, this guide
presents a fuller picture of OpenDaylight’s framework and functionality so you
understand how to set up your networking environment. The guide then takes you
through the installation process.

What’s different about OpenDaylight
===================================

Major distinctions of OpenDaylight’s SDN compared to traditional SDN options are
the following:

* A microservices architecture, in which a “microservice” is a particular
  protocol or service that a user wants to enable within their installation of
  the OpenDaylight controller, for example:

  * A plugin that provides connectivity to devices via the OpenFlow or BGP
    protocols
  * An L2-Switch or a service such as Authentication, Authorization, and
    Accounting (AAA).

* Support for a wide and growing range of network protocols beyond OpenFlow,
  including SNMP, NETCONF, OVSDB, BGP, PCEP, LISP, and more.
* Support for developing new functionality comprised of additional networking
  protocols and services.

.. note:: A thorough understanding of the microservices architecture is
   important for experienced network developers who want to create new solutions
   in OpenDaylight. If you are new to networking and OpenDaylight, you most
   likely won’t design solutions, but you should comprehend the microservices
   concept to understand how OpenDaylight works and how it differs from other
   SDN programs.

What you’ll find in this guide
==============================

To set up your environment, you first install OpenDaylight followed by the
Apache Karaf features that offer the functionality you require. The OpenDaylight
Getting Started Guide covers feature descriptions, OpenDaylight installation
procedures, and feature installation.


The Getting Started Guide also includes other helpful information, with the
following organization:

#. An overview of OpenDaylight and common use models
#. OpenDaylight concepts and tools
#. Explanations of OpenDaylight Apache Karaf features and other features that
   extend network functionality
#. OpenDaylight system requirements and Release Notes
#. OpenDaylight installation instructions
#. Feature tables with installation names and compatibility notes
