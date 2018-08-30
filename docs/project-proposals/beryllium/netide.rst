Name
----

NetIDE Network Engine and Developer Toolkit

Repo Name
---------

netide

Description
-----------

The NetIDE Network Engine enables portability and cooperation inside a
single network by using a client/server multi-controller architecture.
Separate “Client SDN Controllers” host the various SDN Applications with
their access to the actual physical network abstracted and coordinated
through a single “Server SDN Controller”, in this instance OpenDaylight.
This allows applications written for Ryu/Floodlight/Pyretic to execute
on OpenDaylight managed infrastructure.

.. figure:: NetIDE-NetworkEngine.png
   :alt: NetIDE Network Engine Architecture
   :width: 500px
   :height: 350px

   NetIDE Network Engine Architecture

The project also includes an IDE to allow application developers develop
and test their applications, including a graphical editor to specify
network topologies, a UI for deployment configurations, editors to
specify network environments for simulation, as well as a supporting
toolsuite (debuggers, profilers, model checkers)

.. figure:: NetIDE_idetopo.png
   :alt: NetIDE Network Topology editor
   :width: 500px
   :height: 306px

   NetIDE Network Topology editor

Scope
-----

The "Network Engine" is modular by design:

-  An OpenDaylight plugin ("shim" in architecture diagram)
   sends/receives messages to/from subscribed SDN Client Controllers.
   This consumes the ODL Openflow Plugin
-  An initial suite of SDN Client Controller "Backends": Floodlight,
   Ryu, Pyretic. Further controllers may be added over time as the
   engine is extensible.

The Developer Toolkit is a suite of Eclipse plugins required for
graphical network editing and generation of platform-specific code:

-  It has dependencies on VirtualBox and Vagrant. NetIDE deploys network
   apps on VM's created and managed by Vagrant.

Resources Committed (developers committed to working)
-----------------------------------------------------

Resources Committed (developers committed to working), Alec Leckey
(Intel), Elisa Rojas (Telcaria), Roberto Doriguzzi (Create-Net),
Christian Stritzke (Fraunhofer)

Initial Committers
------------------

-  Alec Leckey [alexander.j.leckey@intel.com (aleckey)]
-  Elisa Rojas [elisa.rojas@telcaria.com (erojas)]
-  Roberto Doriguzzi [roberto.doriguzzi@create-net.org (doriguzzi)]
-  Christian Stritzke [christian.stritzke@ipt.fraunhofer.de (cstritzke)]
-  Pedro Aranda Gutierrez [pedroa.aranda@telefonica.com (paaguti)]

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding present in code or output of build
-  No vendor branding present in documentation

Meets Board Policy (including IPR)
----------------------------------

Opensource project currently hosted on Github and released under the
Eclipse Public License v1.0:

http:/github.com/fp7-netide

Link For Project Proposal
-------------------------

`NetIDE_ODL_proposal.pdf`_

.. _NetIDE_ODL_proposal.pdf: https://wiki.opendaylight.org/images/9/9c/NetIDE_ODL_proposal.pdf