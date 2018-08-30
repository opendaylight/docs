Name
----

ServiceUtils

Repo Name
---------

serviceutils

Description
-----------

ServiceUtils is an infrastructure project for OpenDaylight aimed at
providing utilities that will assist in Operation and Maintenance of
different services provided by OpenDaylight. A service is a
functionality provided by the ODL controller as seen by the operator.
These services can be categerized as Networking services, e.g. L2,
L3/VPN, NAT etc., and Infra services, e.g. Openflow. These services are
provided by different ODL projects like Netvirt, Genius and
Openflowplugin and are comprised of a set of java karaf bundles and
associated MD-SAL datastores.

Scope
-----

ServiceUtils will be an offset 0 Managed Project (the Managed Project
status was inherited from Genius), with existing code from the Genius
project. The initial utilities will be:

-  Admin support for service recovery/restart
-  Automatic healing of services in ERROR
-  Alarm generation for service states
-  Other utilities that will assist in Operation And Maintenance of ODL
   features.

Resources Committed (developers committed to working)
-----------------------------------------------------

-  David Suarez Fuentes ()
-  Sam Hague (Red Hat)
-  Faseela K (Ericsson)
-  Vivek Srivatsava (Ericsson)
-  Vishal Thapar (Red Hat)
-  Michael Vorburger(Red Hat)

Initial Committers
------------------

-  David Suarez Fuentes ()
-  Sam Hague (Red Hat)
-  Faseela K (Ericsson)
-  Vivek Srivatsava (Ericsson)
-  Vishal Thapar (Red Hat)
-  Michael Vorburger(Red Hat)

Vendor Neutral
--------------

Yes, as the initial code is being pulled from the Genius project which
is vendor neutral.

Meets Board Policy (including IPR)
----------------------------------

Yes, as the initial code is being pulled from the Genius project which
has met board policy.
