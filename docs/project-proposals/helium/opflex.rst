OpFlex
------

This is code for the OpFlex project.

Repo Name
---------

opflex

Description
-----------

The OpFlex project consists of 3 things: The OpFlex Protocol, the OpFlex
SB plugin, and the OpFlex Policy Agent. All three pieces make up the
entire OpFlex project. OpFlex is described in an IETF draft available at
the end of this document. The OpFlex SB plugin is responsible for
sending OpFlex policy messages SB into the OpFlex Policy Agent. The
OpFlex Policy Agent is responsible for rendering OpFlex messages into a
device specific representation. The diagram below shows how the system
operates:

.. figure:: OpFlex_Policy_Agent_Proposal.png
   :alt: OpFlex_Policy_Agent_Proposal.png

   OpFlex_Policy_Agent_Proposal.png

The diagram above shows the OpFlex Policy Agent working in conjunction
with other elements of an OpFlex Policy Fabric. Note the ODL Controller
running with the OpFlex SB plugin, which is a critical piece of the
OpFlex Policy Fabric. The OpFlex Policy Agent is what is capable of
providing policy resolution for an policies provided by the ODL
Controller with the OpFlex SB plugin.

The OpFlex Policy Agent is an agent which is responsible for exchanging
and enforcing policy. In essence, the agent is meant to be a Policy
Element in an OpFlex Policy Fabric. The agent is meant to run on a
system or device and handle resolving policies asynchronously from the
Policy Authority.

The OpFlex SB plugin will be written in Java.

The intent of the Policy Agent is that is capable of running on not only
host systems such as servers, but also as an embedded device. The broad
amount of runtime locations has dictated the language choice, which will
be C.

Scope
-----

The scope of this project is 3 things:

-  The OpFlex protocol library.
-  The OpFlex SB plugin.
-  The OpFlex Policy Agent

The scope of the OpFlex Policy Agent is the code comprising the agent
itself, which is the agent framework; the OpFlex protocol code; and the
plugin architecture for policy enforcement. The initial plugin for
policy enforcement will be an Open vSwitch plugin. This allows rendering
to happen to OpenFlow constructs on the host or device.

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Alessandro Salvatori <salvatori@noironetworks.com>
-  Chris Wright <chrisw@redhat.com>
-  Rob Adams <adams@noironetworks.com>
-  Satyendra Tiwari <Satyendra.Tiwari@Citrix.com>
-  Scott Mann <smann@noironetworks.com>
-  Stephen Wong <stephen.kf.wong@gmail.com>
-  Youcef Laribi <Youcef.Laribi@citrix.com>

Initial Committers
------------------

| Alessandro Salvatori <salvatori@noironetworks.com>
| Chris Wright <chrisw@redhat.com>
| Rob Adams <adams@noironetworks.com>
| Satyendra Tiwari <Satyendra.Tiwari@Citrix.com>
| Scott Mann <smann@noironetworks.com>
| Stephen Wong <stephen.kf.wong@gmail.com>
| Youcef Laribi <Youcef.Laribi@citrix.com>

Vendor Neutral
--------------

The OpFlex Policy Agent code is following an IETF draft [1]. The IETF
draft has a large swath of industry companies as participants. The goal
is to ensure the code backing the draft is vendor agnostic as well.

[1] http://tools.ietf.org/html/draft-smith-opflex-00

Meets Board Policy (including IPR)
----------------------------------

Yes