Name
----

P4 Plugin

Repo Name
---------

p4plugin

Description
-----------

-  *What's P4?*

P4 is a high-level language for expressing how packets are processed by
the pipeline of a network forwarding element such as a switch, network
processing units, software switches (bmv2) and etc. P4 itself is
protocol independent but allows for the expression of forwarding plane
protocols. It is based upon an abstract forwarding model called *PISA*
(Protocol Independent Switch Architecture) as shown in the figure below.
A machine that can run a P4 program is called *target*.
`framed|center <File:PISA.png>`__

-  *P4 targets and Controller*

How P4 targets work in conjunction with SDN controller? The channel
between controller and P4 targets must be standardized and protocol
independent. But currently, the channel haven't been standardized.
Fortunately, a P4 API work group will be announced, they will
standardize the API across P4 targets and use gRPC as the transport
between controller and switch. But at the moment it is still a work in
progress. The relationship between P4 target and controller is shown in
the figure below.

The gRPC server translates the protobuf messages into
PI(program-independent) library calls. PI is a control plane framework
and tools for the P4 programming language. All of the P4 related code is
available on Github at `github.com/p4lang <https://github.com/p4lang>`__
under Apache 2.0 license. `framed|center <File:P4-ODL.png>`__

-  *P4 Plugin Architecture*

Util now, the ODL controller is unable to manage P4 targets. The purpose
of P4 Plugin project is to provide basic functions for P4 targets, such
as common channel between controller and P4 targets, device management,
table population, packet-in and packet-out process and etc. The
architecture of P4 Plugin is illustrated in detail by the following
figure . `framed|center <File:P4-Plugin.png>`__

All components are described in the following table.

+-----------------------------------+-----------------------------------+
| Component                         | description                       |
+===================================+===================================+
| Device Manager                    | Load and upgrade P4 logic in data |
|                                   | plane dynamically, manage devices |
|                                   | online and offline.               |
+-----------------------------------+-----------------------------------+
| Table Manager                     | Populate table, such as           |
|                                   | add/delete entry                  |
+-----------------------------------+-----------------------------------+
| Packet Handler                    | Processes packet-in and           |
|                                   | packet-out                        |
+-----------------------------------+-----------------------------------+
| P4 Service                        | Provide services for P4           |
|                                   | application, such as connect to   |
|                                   | P4 targets, load or upgrade P4    |
|                                   | logic and etc.                    |
+-----------------------------------+-----------------------------------+
| Channel                           | Implement a gRPC channel between  |
|                                   | controller and P4 targets         |
+-----------------------------------+-----------------------------------+

-  *P4 Plugin Based Workflow*

As the progress of the standardization is underway, the progress of our
work is related to this standardization. We will use bmv2 software
switch as P4 target due to the chips that support P4 are not
commercially available. But in the future, the project can also be
applied to devices. An example workflow is shown in the figure below.
`framed|center <File:P4_Plugin_Workflow.png>`__

Scope
-----

The scope of this project is mostly about implementing an plugin in ODL,
making controller be able to work in conjunction with P4 targets and
populating tables, handling pack-in and packet-out and etc. Remember
that P4 Plugin is focus on the functions in ODL controller, the gRPC
server and PI library are not in the scope of P4 Plugin.

Resources Committed (developers committed to working)
-----------------------------------------------------

huan.linying@zte.com.cn Username:Huanlinying

ding.rui@zte.com.cn Username:dingrui

han.jie@zte.com.cn Username:HanJie

li.guosheng6@zte.com.cn Username:Aimingoo991

chen.mingling@zte.com.cn Username:MerlinChan

wang.senxiao@zte.com.cn Username:Wsx25289

dingrui37@163.com Username:Magina

Initial Committers
------------------

huan.linying@zte.com.cn Username:Huanlinying

ding.rui@zte.com.cn Username:dingrui

Vendor Neutral
--------------

The project is made from scratch, no vendor code, logos nor is anything
included.

Meets Board Policy (including IPR)
----------------------------------

New Project. No Inbound Code Review required
