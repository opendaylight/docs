Name
----

OCP Plugin

Repo Name
---------

ocpplugin

Description
-----------

ORI C&M Protocol (OCP) is an ETSI standard protocol for control and
management of Remote Radio Head (RRH) equipment. The OCP Project
addresses the need for a southbound plugin that allows applications and
controller services to interact with RRHs using OCP. The OCP southbound
plugin will allow applications acting as a Radio Equipment Control (REC)
role to interact with RRHs that support an OCP agent.

`image:ODL_OCP_Plugin.jpg`_

It is foreseen that, in 5G C-RAN will use the packet-based Transport-SDN
(T-SDN) as the fronthaul network to transport both control plane and
user plane data between RRHs and BBUs. As a result, the addition of the
OCP plugin to the ODL controller will make it possible to build an RRH
controller on top of ODL to centrally manage deployed RRHs, as well as
integrating the RRH controller with T-SDN on one single platform,
achieving the joint RRH and fronthaul network provisioning in C-RAN.

Background
----------

Emergence of C-RAN [1]
~~~~~~~~~~~~~~~~~~~~~~

Cell sizes are getting smaller as the mobile networks evolve from 3G, 4G
to 5G. This means more cell sites to build and operate, and hence more
troubles and hassles, to the operators.

`image:D-RAN_to_C-RAN.gif`_

      Source: [1]

To address the issues, a new RAN architecture, C-RAN (Centralized/Cloud
RAN), was introduced. With C-RAN, operators can remove the BBU from each
cell site, and keep all of them cool in a single location (Centralized)
for easier maintenance. Then, they can leave the RRHs unmoved for better
radio signal reception. BBUs and RRHs, located in different places
separated from each other, are connected using fiber cables.

RRHs, designed for outdoor use, are simple but very hardened devices
that run well without A/C facilities, which means no indoor space to
rent for them. So, operators can minimize their rental costs as they
only need rooftop spaces for RRHs. They can also lower their electricity
bills for they only need to supply power for RRHs.

With the separation of BBU and RRH, interface specification for their
communication was needed, and thus established accordingly: 1) CPRI
(Common Public Radio Interface), 2) OBSAI (Open Baseband Remote
Radiohead Interface), and 3) ORI (Open Radio Interface). Both CPRI and
OBSAI are designed mainly for base station vendors, but most of those
vendors and telecom operators have adopted CPRI.

.. table:: Acronyms

+-----------+------------------------------------------+
| **BBU**   | Baseband Unit                            |
+-----------+------------------------------------------+
| **CPRI**  | Common Public Radio Interface            |
+-----------+------------------------------------------+
| **C-RAN** | Centralized/Cloud RAN                    |
+-----------+------------------------------------------+
| **OBSAI** | Open Baseband Remote Radiohead Interface |
+-----------+------------------------------------------+
| **ORI**   | Open Radio Interface                     |
+-----------+------------------------------------------+
| **RAN**   | Radio Access Network                     |
+-----------+------------------------------------------+
| **RRH**   | Remote Radio Head                        |
+-----------+------------------------------------------+

CPRI (Common Public Radio Interface) [1]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

With the establishment of CPRI Specification in 2003, leading base
station vendors, like Ericsson, NSN, ALU, NEC, Huawei, etc., have
standardized interface specifications for interoperation between base
station devices (BBU and RRH). Although the five vendors are not
currently claiming their copyright on the specification, they have the
exclusive right to revise it

REC (on BBU side) and RE (on RRH side) exchange 1) User Data, 2) CPRI
Control & Management data, and 3) CPRI frame synchronization information
through the CPRI interface as seen below.

`image:CPRI_Transport_Concept.gif`_

      Source: [1]

ORI (Open Radio Interface) [1]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

CPRI obviously has restricted compatibility. To address this issue and
provide better compatibility among vendors, ORI was introduced by a
standardization organization, ETSI. ORI standardization group, a member
of ETSI ISG (Industry Specification Group), is currently participated by
operators like SK Telecom, KDDI, etc. as well as vendors like Samsung,
Huawei, ZTE, etc. As mentioned earlier, the ORI specification is based
on the CPRI specification. But, it is designed to specifically clarify
the previously-defined but still unclear options, and define undefined
matters, while still keeping main focus on Control & Management data
specification of its underlying CPRI specification. Through these
efforts, it is aimed to provide more functionality (compression) and
compatibility among vendors than the CPRI specification.

OCP (ORI C&M Protocol) [2]
~~~~~~~~~~~~~~~~~~~~~~~~~~

The ORI C&M plane protocol stack supported by REC and RE consists of the
following:

-  OCP
-  Protocols that provide the underlying transport for the OCP layer
-  Protocols used by OCP to perform its functions

`image:ORI C&M Plane.jpg`_

      Source: [2]

The OCP layer is transported over a TCP/IP connection established
between the RE and the REC. OCP provides the following functions:

-  Control & Management of the RE by the REC
-  Transport of AISG/3GPP Iuant Layer 7 messages and alarms between REC
   and RE

`image:ORI_Resource_Model.jpg`_

      Source: [2]

The Control & Management function consists of Software Management,
Configuration Management, State Management, Fault Management, Log and
File handling, ORI link management, and AISG ALD Layer 2 connection
management. To perform the OCP functions, the REC and RE interact using
the "RE resource model" via the exchange OCP elementary messages.

Evolution towards 5G
~~~~~~~~~~~~~~~~~~~~

In order to meet the stringent demands of the 5G standards, greater
amount of RRHs are to be provided. However, operating a large RRH
network by a single mobile network operator (MNO) poses significant
burdens, yet the current RRH network under the 4G architecture lacks
configurability in terms of effectively dividing/managing the RRH
network resources to achieve flexible multi-MNO subdivision. The
non-flexible nature of the current RRH network architecture makes it
difficult to transfer/share costs between different MNOs, thus greatly
increasing the capital and operational expenses of the network
operators.

`image:SD-RRH_Framework.jpg`_

RRH slicing, a new type of RAN sharing, segments a physical RRH into
multiple slices. It can dynamically create a virtual RRH (vRRH) using a
single or multiple RRH slices, and then associate the vRRH to the BBU
requesting it. To this end, an innovative RRH infrastructure is needed
to provide virtualization and programmability of RRH networks for the
next-gen C-RAN. For details on this, check out the `Software Defined RRH
(SD-RRH)`_ research project at `Foxconn Advanced Communication Academy
(FACA)`_.

The initial version of the OCP plugin has been developed by FACA in
order to build their SD-RRH controller prototype.

Scope
-----

The OCP Southbound Plugin project includes:

-  OCP v4.1.1 support

-  Integration of OCP protocol library

-  Simple API invoked as a RPC

-  Simple API that allows applications to perform elementary functions
   of the following categories:

#. Device management
#. Config management
#. Object lifecycle
#. Object state management
#. Fault management
#. Software management

-  Indication processing

-  Logging

-  AISG/Iuant interface message tunnelling

-  ALD connection management

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Chin-Hung Chien <richard.chien@foxconn.com>
-  Chin-Ning Lai <marko.ch.lai@foxconn.com>
-  Chia-Wei Yuan <jason.cw.yuan@foxconn.com>

Initial Committers
------------------

-  Chin-Hung Chien <richard.chien@foxconn.com> ODL Username:
   richardchien
-  Chin-Ning Lai <marko.ch.lai@foxconn.com> ODL Username: markolai
-  Chia-Wei Yuan <jason.cw.yuan@foxconn.com> ODL Username: jasonyuan

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding / trademark present in code or output of build
-  No vendor branding / trademark present in documentation

Meets Board Policy (including IPR)
----------------------------------

References
----------

#. `CPRI (1): Emergence of C-RAN/Fronthaul and CPRI overview, NETMANIAS
   TECH-BLOG`_
#. ETSI GS ORI 002-2 V4.1.1 (2014-10)

Resources
---------

-  |Project Proposal TSC Presentation|

.. _`image:SD-RRH_Framework.jpg`: image:SD-RRH_Framework.jpg
.. _Software Defined RRH (SD-RRH): https://sites.google.com/site/facafoxconn/research/SD-RRH-Controller
.. _Foxconn Advanced Communication Academy (FACA): https://sites.google.com/site/facafoxconn/
.. _`CPRI (1): Emergence of C-RAN/Fronthaul and CPRI overview, NETMANIAS TECH-BLOG`: http://www.netmanias.com/en/post/blog/6220/c-ran-cpri-fronthaul-lte-lte-a/cpri-1-emergence-of-c-ran-fronthaul-and-cpri-overview
.. |Project Proposal TSC Presentation| image:: OCP_Project_Proposal_for_TSC_Review.pptx


.. _`image:CPRI_Transport_Concept.gif`: image:CPRI_Transport_Concept.gif
.. _`image:ORI C&M Plane.jpg`: image:ORI_C&M_Plane.jpg
.. _`image:ORI_Resource_Model.jpg`: image:ORI_Resource_Model.jpg

.. _`image:ODL_OCP_Plugin.jpg`: image:ODL_OCP_Plugin.jpg
.. _`image:D-RAN_to_C-RAN.gif`: image:D-RAN_to_C-RAN.gif