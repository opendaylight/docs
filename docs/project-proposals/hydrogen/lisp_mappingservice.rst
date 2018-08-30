OpenDaylight LISP Mapping Service
=================================

Repo Name
---------

lispflowmapping (Lisp Flow Mapping)

Description
-----------

Today, most dominant use cases of SDN are defined in the context of
Network Virtualization, enabled by network overlays. LISP (RFC6830) is a
protocol that enables separation of Endpoint Identity (EID) from Routing
Location (RLOC) by defining an overlay in the EID space which is mapped
to the underlying network in the RLOC space. LISP also provides a
Mapping Service that provides the EID-to-RLOC mapping information
including forwarding policy (load balancing, traffic engineering, etc.)
to LISP routers for tunneling and forwarding purposes. In the context of
Network virtualization, a Mapping Service can be queried by LISP-enabled
network devices (virtual/physical) to provide the mapping of the virtual
network endpoints to the underlying physical network, including the
associated forwarding policies.

.. figure:: LISP-Virtualization.jpg
   :alt: LISP-Virtualization.jpg
   :width: 700px

   LISP-Virtualization.jpg

The LISP Mapping Service can serve the mapping data to dataplane nodes
as well as to ODL applications. To leverage this service, a northbound
API allows OpenDaylight applications and services to define the mappings
and policies in the LISP Mapping Service. This project also includes a
southbound LISP plugin that enables LISP dataplane devices to interact
with the OpenDaylight via the LISP protocol.

The following figure depicts the described components.

.. figure:: LISP-ODL-02.jpg
   :alt: LISP-ODL-02.jpg
   :width: 600px

   LISP-ODL-02.jpg

Scope
-----

The OpenDaylight LISP Mapping Service includes:

-  LISP Map Server
-  LISP Map Resolver
-  Southbound ODL plugin supporting LISP protocol
-  LISP Mapping Services northbound API

Resources Committed (developers committed to working)
-----------------------------------------------------

Committers listed below are committed as resources for development:

Committers:

-  `Gal Mainzer (ConteXtream)`_
-  `Guy Sela (ConteXtream)`_
-  `David Goldberg (ConteXtream)`_
-  `Vina Ermagan (Cisco)`_
-  `Lori Jakab (Cisco)`_

Contributors
------------

List of main contributors to the project include:

-  `Gal Mainzer (ConteXtream)`_
-  `Guy Sela (ConteXtream)`_
-  `David Goldberg (ConteXtream)`_
-  `Alberto Rodriguez-Natal (UPC)`_
-  `Vina Ermagan (Cisco)`_
-  `Lori Jakab (Cisco)`_

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding / trademark present in code or output of build
-  No vendor branding / trademark present in documentation

MeetsBoardPolicy(including IPR)
-------------------------------

-  Inbound Code Review Complete with no issues {Phil Robb: 7/10/13}

Back to LISP FLow Mapping Main Page
-----------------------------------

Back to LISP FLow Mapping Main

-  `Back to LISP FLow Mapping Main`_

`Category:LISP Flow Mapping`_

.. _Gal Mainzer (ConteXtream): mailto:gmainzer@contextream.com
.. _Guy Sela (ConteXtream): mailto:guy.sela@contextream.com
.. _David Goldberg (ConteXtream): mailto:david.goldberg@contextream.com
.. _Vina Ermagan (Cisco): mailto:vermagan@cisco.com
.. _Lori Jakab (Cisco): mailto:lojakab@cisco.com
.. _Alberto Rodriguez-Natal (UPC): mailto:arnatal@ac.upc.edu
.. _Back to LISP FLow Mapping Main: OpenDaylight_Lisp_Flow_Mapping:Main
.. _`Category:LISP Flow Mapping`: Category:LISP_Flow_Mapping