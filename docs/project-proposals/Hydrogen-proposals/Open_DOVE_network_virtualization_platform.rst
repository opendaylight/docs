Name
----

Open DOVE

Repo name
---------

opendove

Description
-----------

DOVE (distributed overlay virtual Ethernet) is a network virtualization
platform that provides isolated multi-tenant networks on any IP network
in a virtualized data center. DOVE provides each tenant with a virtual
network abstraction providing layer-2 or layer-3 connectivity and the
ability to control communication using access control policies. Address
dissemination and policy enforcement in DOVE is provided by a clustered
directory service. It also includes a gateway function to enable virtual
machines on a virtual network to communicate with hosts outside the
virtual network domain. The overall DOVE architecture is shown below:

.. figure:: Opendove-arch.png
   :alt: Opendove-arch.png

   Opendove-arch.png

Users interact with Open DOVE to create and manage virtual networks
through the Open DOVE Management Console (DMC) which provides a REST API
for programmatic virtual network management and a basic graphical UI.
The DMC is also used to configure the Open DOVE Gateway to configure
connectivity to external, non-virtualized networks.

The Open DOVE Connectivity Server (DCS) supplies address and policy
information to individual Open DOVE vswitches which implement virtual
networks by encapsulating tenant traffic in overlays that span
virtualized hosts in the data center. The DCS also includes support for
high-availability and scale-out deployments through a lightweight
clustering protocol between replicated DCS instances. The Open DOVE
vswitches serve as policy enforcement points for traffic entering
virtual networks. Open DOVE uses the VxLAN encapsulation format but
implements a scalable control plane that does not require the use of IP
multicast in the data center.

The DOVE technology was originally developed by IBM Research and has
also been included in commercial products.

Additional information
^^^^^^^^^^^^^^^^^^^^^^

Open DOVE was recently presented in the OpenDaylight technical
workstream calls on June 17, 2013 (see `here`_ for material and
recording).

Scope
-----

Open DOVE includes:

-  `DOVE Management Console (controller bundles)`_

   -  `REST APIs`_
   -  Basic GUI

-  DOVE Connectivity Server with clustering
-  DOVE vswitch (Open vSwitch + user-space extension)
-  DOVE Gateway
-  OpenStack Networking plugin to enable DOVE for cloud networking

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Jay Kidambi (IBM)
-  Amitabha Biswas (IBM)
-  Ryan Moats (IBM)
-  Stephan Benny (IBM)
-  John Buswell (IBM)
-  Prashanth Nageshappa (IBM)

Additional contributors
^^^^^^^^^^^^^^^^^^^^^^^

-  Katherine Barabash (IBM)
-  Anees Shaikh (IBM)
-  Liran Schour (IBM)
-  Sergey Guenender (IBM)

Initial Committers
------------------

-  Jay Kidambi (IBM)
-  Amitabha Biswas (IBM)
-  Ryan Moats (IBM)
-  Stephan Benny (IBM)
-  John Buswell (IBM)
-  Sushma Anantharam (IBM)
-  Anees Shaikh (IBM)
-  Prashanth Nageshappa (IBM)
-  Katherine Barabash (IBM)
-  Liran Schour (IBM)

Vendor Neutral
--------------

Open DOVE is based on an existing codebase, but will adhere to the
following:

-  No vendor package names in code
-  No vendor branding present in code or output of build
-  No vendor branding present in documentation

Meets Board Policy (including IPR)
----------------------------------

Inbound Code Review has been completed with no issues found. {Phil Robb
: 7/30/2013}

.. _here: https://wiki.opendaylight.org/view/Tech_Work_Stream:Main
.. _DOVE Management Console (controller bundles): https://nexus.opendaylight.org/index.html#nexus-search;quick~opendove
.. _REST APIs: https://jenkins.opendaylight.org/opendove/job/opendove-merge/lastSuccessfulBuild/artifact/odmc/rest/northbound/target/enunciate/build/docs/rest/index.html