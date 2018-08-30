Name
----

Logical switch abstraction project creation and integration into ODP.

Repo Name
---------

logicalswitch

Description
-----------

Provides “logical switch” abstraction to facilitate unified control and
management interface for multi-vendor physical/virtual network elements.
Network applications will be able to use this single interface in vendor
agnostic manner provide network services/orchestration. The abstraction
will provide L2/L3 primitives such as VLANs, L2VPNs, L3VPNs etc. based
on commonly available similar primitives provided by vendor network
elements (physical switches, stackable switches and fabrics).

Scope
-----

Logical switch abstraction project includes:

-  Logical switch abstraction service

   -  Northbound APIs for providing commons L2/L3 primitives
   -  Single point of management of multi-vendor network elements

      -  Provisioning
      -  Monitoring
      -  Firmware management

-  SAL extensions for data model and configuration APIs
-  L2/L3 control and management APIs
-  Pluggable southbound transport

Resources Committed (developers committed to working)
-----------------------------------------------------

-  `Sagar Guntaka (Brocade) <mailto:vguntaka@brocade.com>`__
-  `Shiv Haris (Brocade) <mailto:sharis@brocade.com>`__
-  `Suresh Vobbilisetty (Brocade) <mailto:svobbili@brocade.com>`__
-  `Varma Bhupatiraju (Brocade) <mailto:vbhupati@brocade.com>`__

Initial Committers
------------------

-  `Sagar Guntaka (Brocade) <mailto:vguntaka@brocade.com>`__
-  `Shiv Haris (Brocade) <mailto:sharis@brocade.com>`__
-  `Suresh Vobbilisetty (Brocade) <mailto:svobbili@brocade.com>`__
-  `Varma Bhupatiraju (Brocade) <mailto:vbhupati@brocade.com>`__

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding / trademark present in code or output of build
-  No vendor branding / trademark present in documentation

Meets Board Policy (including IPR)
----------------------------------
