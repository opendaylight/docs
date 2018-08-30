Name
----

Maple

Repo Name
---------

maple

Description
-----------

The objective of this project is to integrate into ODL the Maple
programming model, which is a programming model that simplifies SDN
programming for end users, by hiding the low level details of flow
tables, which are a major source of SDN programming complexity. In
particular, under the Maple programming model, an end user programs a
function *f* that determines, using a high level algorithmic policy, how
packets should be handled in a network. Maple then automatically
translates the the high level policy into the low level flow tables of
individual switches. In this particular project, we will implement the
translation using a tracing runtime system, which collects user function
*f* decision dependency to generate the flow tables of individual
OpenFlow switches. See `Maple
SIGCOMM'13 <http://dl.acm.org/citation.cfm?id=2486030>`__ for more
technical details on the Maple programming model and its tracing run
time technique.

One key use case of Maple in ODL is for implementing network services
(e.g. service chaining, access control, route computations) in a way
that allows them to be separately implemented and easily composed into
overall services. Maple enables this by allowing services to be composed
at a logical level, rather than at a device-specific, rule level and by
providing a rule compiler and runtime that automatically generates
device-specific configurations to reflect the overall composed service.

|PPT of slides for project creation review of Maple-ODL project
proposal.| |PDF of project creation review slides|

Scope
-----

We aim to implement Maple using MD-SAL.

**Southbound and Northbound API Requirements for OpenDaylight**

The tracing runtime design uses packets to generate rules to be
installed on individual switches. Although one may use techniques such
as warm up, offline packets to trigger the generation, in this project,
we focus on the reactive model. Hence, the Maple runtime will need to
receive missed packets (i.e., packets not matching any flow rules) at an
ingress switch. Such packets will be sent from the switch to ODL
Southbound OF 1.3 plugin. The Maple run time will need to receive such
packets. Extension to handle non-OF switches will be future work.

After generating flow rules, the Maple runtime will then need to update
the flow rules at individual switches. This project will use the
ForwardingRulesManager (FRM) that manages the rules stored in the MD-SAL
datastore to achieve this task. FRM will push the updates through the OF
1.3 Southbound plugin to individual switches.

**Usage by Applications of OpenDaylight**

In this initial version, we design the user application programming
structure as follows. The Maple service is configured to execute the
network according to a single, top-level, user-defined Java class
implementing the MapleApp interface. In particular, the MapleApp
interface includes the user function *f*, which will be invoked by the
Maple runtime, when the decision of the function *f* on a packet is
needed. The top-level MapleApp may invoke functions in other classes,
including other MapleApp classes. The function *f*, as well as any other
functions (transitively) invoked by *f* may access system and user
states through ODL MD-SAL datastore. Each Maple application may expose
APIs for others to read and update states defined by the application.
The states of the Maple applications should be stored using MD-SAL
datastore.

The Maple service will provide an RPC and model-driven configuration for
specifying the top-level MapleApp. When the top-level user MapleApp is
changed, Maple will refresh forwarding plane state to implement the new
MapleApp's desired behavior.

Resources Committed (developers committed to working)
-----------------------------------------------------

-  `Xiao Shi (Shixiao) <mailto:xiao.shi@yale.edu>`__
-  `Andreas Voellmy (avoellmy) <mailto:andreas.voellmy@gmail.com>`__
-  `Y. Richard Yang (yrichardyang) <mailto:yry@cs.yale.edu>`__
-  `Reinaldo Penno (repenno) <mailto:rapenno@gmail.com>`__
-  `Xin Li (Lx75249) <mailto:yakumolx@gmail.com>`__

Initial Committers
------------------

-  `Xiao Shi (Shixiao) <mailto:xiao.shi@yale.edu>`__
-  `Andreas Voellmy (avoellmy) <mailto:andreas.voellmy@gmail.com>`__
-  `Y. Richard Yang (Yrichardyang) <mailto:yry@cs.yale.edu>`__
-  `Reinaldo Penno (repenno) <mailto:rapenno@gmail.com>`__
-  `Xin Li (Lx75249) <mailto:yakumolx@gmail.com>`__

Vendor Neutral
--------------

This project will develop new code. Code will be made available for
review by ODP and Linux Foundation after it has been approved by
contributing organizations.

Meets Board Policy (including IPR)
----------------------------------

.. |PPT of slides for project creation review of Maple-ODL project proposal.| image:: MapleInODL.pptx
.. |PDF of project creation review slides| image:: MapleInODL.pdf

