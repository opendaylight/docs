************
Introduction
************

The OpenDaylight project is an open source platform for Software Defined
Networking (SDN) that uses open protocols to provide centralized, programmatic
control and network device monitoring.

Much as your operating system provides an interface for the devices that
comprise your computer, OpenDaylight provides an interface that allows you to
control and manage network devices.

What’s different about OpenDaylight
===================================

Major distinctions of OpenDaylight’s SDN compared to other SDN options are
the following:

* A microservices architecture, in which a “microservice” is a particular
  protocol or service that a user wants to enable within their installation of
  the OpenDaylight controller, for example:

  * A plugin that provides connectivity to devices via the OpenFlow protocols
    (openflowplugin).
  * A platform service such as Authentication, Authorization, and Accounting
    (AAA).
  * A network service providing VM connectivity for OpenStack (netvirt).

* Support for a wide and growing range of network protocols: OpenFlow, P4
  BGP, PCEP, LISP, NETCONF, OVSDB, SNMP and more.

* Model driven Service Abstraction. Yang models play a key role in OpenDaylight,
  they are used for:

  * Creating datastore schemas (tree based structure).
  * Generating application REST API (RESTCONF).
  * Automatic code generation (Java interfaces and Data Transfer Objects).
