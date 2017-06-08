.. _controller-user-guide:

OpenDaylight Controller Overview
================================

The OpenDaylight controller is JVM software and can be run from any
operating system and hardware as long as it supports Java. The
controller is an implementation of the Software Defined Network (SDN)
concept and makes use of the following tools:

-  **Maven**: OpenDaylight uses Maven for easier build automation. Maven
   uses pom.xml (Project Object Model) to script the dependencies
   between bundle and also to describe what bundles to load and start.

-  **OSGi**: This framework is the back-end of OpenDaylight as it allows
   dynamically loading bundles and packages JAR files, and binding
   bundles together for exchanging information.

-  **JAVA interfaces**: Java interfaces are used for event listening,
   specifications, and forming patterns. This is the main way in which
   specific bundles implement call-back functions for events and also to
   indicate awareness of specific state.

-  **REST APIs**: These are northbound APIs such as topology manager,
   host tracker, flow programmer, static routing, and so on.

The controller exposes open northbound APIs which are used by
applications. The OSGi framework and bidirectional REST are supported
for the northbound APIs. The OSGi framework is used for applications
that run in the same address space as the controller while the REST
(web-based) API is used for applications that do not run in the same
address space (or even the same system) as the controller. The business
logic and algorithms reside in the applications. These applications use
the controller to gather network intelligence, run its algorithm to do
analytics, and then orchestrate the new rules throughout the network. On
the southbound, multiple protocols are supported as plugins, e.g.
OpenFlow 1.0, OpenFlow 1.3, BGP-LS, and so on. The OpenDaylight
controller starts with an OpenFlow 1.0 southbound plugin. Other
OpenDaylight contributors begin adding to the controller code. These
modules are linked dynamically into a **Service Abstraction Layer**
(SAL).

The SAL exposes services to which the modules north of it are written.
The SAL figures out how to fulfill the requested service irrespective of
the underlying protocol used between the controller and the network
devices. This provides investment protection to the applications as
OpenFlow and other protocols evolve over time. For the controller to
control devices in its domain, it needs to know about the devices, their
capabilities, reachability, and so on. This information is stored and
managed by the **Topology Manager**. The other components like ARP
handler, Host Tracker, Device Manager, and Switch Manager help in
generating the topology database for the Topology Manager.

For a more detailed overview of the OpenDaylight controller, see the
*OpenDaylight Developer Guide*.

