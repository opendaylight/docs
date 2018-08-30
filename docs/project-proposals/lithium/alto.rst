Name
----

Application-Layer Traffic Optimization (ALTO)

Repo
----

alto

Description
-----------

Although OpenDayLight already provides a topology service, it focuses
more on detailed network topology (i.e., raw topology) that can be too
detailed for applications and/or reveal too much network details to
violate network privacy. The ALTO Protocol (RFC 7285) defines
abstractions and services to provide simplified network views and
network services to guide application usage of network resources. In
particular, the ALTO Protocol defines the Network and Cost Map Service,
Filtered Map Service, Endpoint Property Service, and Endpoint Cost
Service. The details of the services can be found in
`RFC7285 <http://www.rfc-editor.org/rfc/rfc7285.txt>`__. The objective
of this project is to implement these services as Northbound APIs in ODL
for others to use.

Scope
-----

We will design the ALTO project based on the MD-SAL design.

*Southbound and Northbound API Requirements for OpenDaylight*

We will design ALTO so that it computes network maps, cost maps,
endpoint properties, and the ECS all based on MD-SAL datastore data. In
particular, ALTO will access such data exposed by others such as
Topology Manager, Inventory Manager, and BGP-LS. ALTO will need to
listen to changes to such data to update its data.

*Usage by Applications of OpenDaylight*

We plan to expose two versions of ALTO services: ALTO Native (based on
RFC7285) and ALTO YANG (based on an YANG model for ALTO that will not be
fully compatible with RFC7285, due to issues of key-value store
encoding).

Resources Committed (developers committed to working)
-----------------------------------------------------

**Organizations**

-  Yale University
-  Tongji University
-  Bell Labs
-  China Academy of Telecommunication Research

**Potential Code Committers**

-  `Wendy Roome (Wdroome) <mailto:odl@wdroome.com>`__ (Bell Labs)
-  `Xiao Shi (Shixiao) <mailto:xiao.shi@yale.edu>`__ (Yale University)
-  `Xin (Tony) Wang (Tonywang) <mailto:13xinwang@tongji.edu.cn>`__
   (Tongji University)
-  `Y. Richard Yang (Yrichardyang) <mailto:yry@cs.yale.edu>`__
   (Yale/Tongji University)
-  `Qian Yichen (Yichenqian) <mailto:alizee1992@126.com>`__ (Tongji
   University)
-  `Huaming Guo (Guo522) <mailto:guo522@gmail.com>`__\ (Yale
   University/China Academy of Telecommunication Research)

Initial Committers
------------------

-  `Xiao Shi (Shixiao) <mailto:xiao.shi@yale.edu>`__ (Yale University)
-  `Xin (Tony) Wang (Tonywang) <mailto:13xinwang@tongji.edu.cn>`__
   (Tongji University)
-  `Y. Richard Yang (Yrichardyang) <mailto:yry@cs.yale.edu>`__
   (Yale/Tongji University)
-  `Wendy Roome (Wdroome) <mailto:odl@wdroome.com>`__ (Bell Labs)
-  `Huaming Guo (Guo522) <mailto:guo522@gmail.com>`__ (Yale
   University/China Academy of Telecommunication Research)

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding present in code or output of build

Slides
------

-  Creation review slides: |Alto-odl-creation-review-slides.pptx|

.. |Alto-odl-creation-review-slides.pptx| image:: Alto-odl-creation-review-slides.pptx

