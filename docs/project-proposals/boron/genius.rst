Name
----

Genius (earlier known as Generic Network Functions)

Name Credit - Uri, Intel (The project was presented during the design
forum and was christened as Genius )

Repo Name
---------

genius

Description
-----------

Genius is an infrastructure project for ODL aimed at providing the
following features:

-  Any ODL application can use this infra component to achieve at
   minimum interference-free co-existence with other applications using
   the services
-  Provides support for co-operation between applications with the
   minimal amount of design-time coordination and hard-coded
   dependencies
-  Use APIs to move design-time coordination to run-time
-  Generic infrastructure APIs to avoid direct coupling where possible
-  Direct inter-application (client-server) APIs where necessary for
   stronger coupling
-  Factor out commonly used functions into shared services to avoid
   duplication & waste of resources, e.g. Overlay Tunnel Manager, ID
   manager,MD-SAL Util

.. figure:: Genius.jpg
   :alt: Genius.jpg

Scope
-----

Genius would be an offset 1 project and it would provide the generic
network services to applications like VPNService, SFC, Netvirt... and
hence would include infra components needed for those projects like
Interface manager, service association with interfaces, Tunnel Manager
and associated management facilities

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Vivek Srivatsava (Ericsson)
-  Faseela (Ericsson)
-  Sasidharan (Ericsson)
-  Yi Yang (Intel)
-  Sam Hague (Red Hat)
-  Andre Fredette (Red Hat)
-  Brady Allen Johnson (Ericsson)
-  David Suarez Fuentes (Ericsson)

The above list is not complete and work in progress as the committers
would be from other dependent projects and the discussions are ongoing.

Initial Committers
------------------

-  Vivek Srivatsava (vivek.v.srivastava@ericsson.com)
-  Faseela K (faseela.k@ericsson.com)
-  Sasidharan S (sasidharan.s.sambasivam@ericsson.com)
-  Yi Y Yang (yi.y.yang@intel.com)
-  Sam Hague (shague@redhat.com)
-  Andre Fredette (afredette@redhat.com)
-  Brady Allen Johnson (brady.allen.johnson@ericsson.com)
-  David Suarez Fuentes (david.suarez.fuentes@ericsson.com)

The above list is not complete and work in progress as the committers
would be from other dependent projects and the discussions are ongoing.

Vendor Neutral
--------------

Most of the code would be derived from existing code of VPNService and
hence it would be vendor neutral.

New code would adhere to the following:

-  No vendor branding in project name
-  No vendor branding present in code or output of build
-  No vendor branding present in documentation
-  All contributed code will adhere to OpenDaylight's copyright and
   license policies.

Meets Board Policy (including IPR)
----------------------------------

Most of the code would be derived from existing code of VPNService and
the code complies with IPR