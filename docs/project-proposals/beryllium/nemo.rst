== Name  ==
NEMO: A Language Style NBI

== Repo Name ==

nemo

== Description  ==


The North-Bound Interface (NBI), located between the controller and the applications/services, is essential to enable application innovations and to nourish the SDN ecosystem by abstracting the network capabilities/information and opening the abstract/logic network to applications.
To implement a novel NBI design, we can learn from the successful case of SQL (Structured Query Language), which simplified complicated data operation into a unified and intuitive way in the form of language. Applications do not define the underlying mechanism for data storage and data operation;  Applications only  describe the expectation on the data storage and operation and then get the results. As a data domain DSL (Domain Specific Language), SQL is simple and intuitive, and can be embedded in applications. So what we need for the network NBI is a set of “network domain SQL”.
NEMO language is a DSL based for the abstraction of network models and conclusion of operation patterns. It provides NBI fashion in the form of language. Instead of tons of abstruse APIs, with limited number of key words and expressions, NEMO language enables network users/applications to describe their demands for network resources, services and logical operations in an intuitive way. And finally the NEMO language description can be explained and executed by a language engine.

As a NBI language, NEMO has the following features:

* '''User/Application centric abstraction'''

To simply the operation, applications or users can use NEMO directly to describe their requirements for the network without taking care of the implementation. All the parameters without user concern will be concealed by the NBI.

* '''Consistent NBI model and pattern'''

While existing NBIs are proposed by use cases (e.g. virtual network, QoS, traffic engineering, service chaining), NEMO with consistent model and pattern is promising as easier to use and to extend for future proof applications.

* '''Intuitive to use'''

The expression of NEMO is human-friendly and can be easily understood by network developers. Using a language style NBI is more like the application talks to the network. Another advantage to use language is that its flexibility for northbound application developer.

* '''Platform independent'''

With NEMO, the application or user can describe network demands in a generic way, so that any platform or system can get the identical knowledge and consequently execute to the same result. Any low-level and device/vendor specific configurations and dependencies can be avoided. Any technology related network solution can be concealed.


NEMO is an open project for both standardization and open-source. In addition to this proposal in OpenDaylight,
* The NEMO concept and initial specification is submitted to the IETF
https://tools.ietf.org/html/draft-xia-sdnrg-nemo-language-01

https://tools.ietf.org/html/draft-zhou-netmod-intent-nemo-00

Network Intent Models
---------------------

The NEMO language provides an intuitive mechanism to express network
intent. The intent can be expressed by following the patterns or
operations on objects. For example, one intent can be “I want to block
the HTTP flow”, or “I want to adjust the bandwidth to 10G”. Accordingly,
NEMO models include objects and operations as shown in the following
figure.

.. figure:: Model.png
   :alt: NEMO Model
   :width: 780px
   :height: 500px

   NEMO Model

The basic elements are Operation and Object. There are three kinds of
objects: EPG, Connection, and Flow. Each entity contains property and
statistic information. With a globally unique identifier, the network
entity is the basic object for operation.

-  EPG: the data processing point in communication system, source,
   destination or intermediate point. An EPG node can include other
   nodes, which is a group. Network, Subnet, Port, FW, LB in Neutron are
   concrete types of EPG.
-  Connection: relationship between two nodes. It always represents
   resource between two nodes.
-  Flow: specific traffic in a network. It can be identified by tuples
   in packet header or high level properties like DPI information or
   path information.

Operation includes two classes: simple and advanced operations. Simple
operation is CRUD operations directly to objects. And the advanced
operation includes:

-  Policy: with condition do action.
-  Query: read operation with filters.
-  Notification: an asynchronous way to get information from the
   network.

NEMO Language Syntax in Brief
-----------------------------

Base on the basic network model, the NEMO language syntax can be derived
with 3 primitive groups, 16 statements, 38 key words as an initial
version.

.. figure:: Syntax.png
   :alt: NEMO Language Syntax
   :width: 780px
   :height: 500px

   NEMO Language Syntax

-  Model Definition and Description

In addition to default build-in network models, NEMO language
facilitates users to define new model types. The following example shows
how a node model is defined using NEMO:

| `` ``\ \ `` := ``\ **``NodeModel``**\ `` ``\ \ ``  ``
| ``                      ``\ **``Property``**\ `` { ``\ \ `` : ``\ \ `` }; ``

Other statements include: , , , and

-  Resource Access

In NEMO language, each resource entity instance is identified by a .
This primitive group enables users to access recourse. The following
example shows how a link is created and updated using NEMO:

| `` ``\ \ `` := ``\ **``Link``**\ `` ``\ \ `` ``\ **``Type``**\ `` ``\
| ``              ``\ **``EndNodes``**\ `` ``\ \ ``, ``\
| ``             [``\ **``Property``**\ `` {``\ \ ``: ``\ \ ``}];``

Other statements include: , , , < flow_cu >, , , <flow_del>


-  Behavior Description

This primitive group facilitate users to get network information in both
synchronize and synchronize way, as well as control the network. The
following example shows how to create and update a policy to control the
network using NEMO:

| `` ``\ \ `` := ``\ **``Policy``**\ `` ``\ \ `` ``\ **``ApplyTo``**\ `` ``\
| ``                                   ``\ **``Priority``**\ `` ``\
| ``                                  [``\ **``Condition``**\ `` {``\ \ ``}]``
| ``                                   ``\ **``Action``**\ `` {``\ \ `` : {``\ \ ``}};``

The policy follows the pattern "with , to execute ", and can be applied
to any entity. Other statements include: , , ,

NEMO engine
-----------

The following figure shows the initial framework of the NEMO engine to
be implemented in OpenDaylight. Two components are essential for this
engine:

-  Language Processing: understands the NEMO syntax, and parses the NEMO
   scripts from applications
-  Model Mapping: translates the intent model into corresponding
   southbound models. Some kind of intelligence might be required for
   information gaps between the two models to be translated.

.. figure:: Engine.png
   :alt: NEMO Engine
   :width: 780px
   :height: 500px

   NEMO Engine

Scope
-----

While OpenDaylight has many existing modules and corresponding NBIs,
this proposal provides a language style option coexisting with others.
The proposed NBI language is capable of describing most scenarios in
wide area networks (WAN), enterprise networks, and data center networks.

The following work falls under the scope of this proposal:

-  Design and develop consistent NBI models and patterns for intent
   networks.
-  Design the syntax for a language style NBI.
-  Design and develop a NEMO language engine for language parsing and
   model mapping to SB models. It is possible to reuse the ongoing NIC
   project in OpenDaylight for the intent manager and model mapping
   component.

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Tianran Zhou zhoutianran@huawei.com
-  Yinben Xia xiayinben@huawei.com
-  Wei Cao wayne.caowei@huawei.com
-  Helen Chen helen.chen@huawei.com
-  An Ho an.ho@huawei.com
-  Pedro Andres Aranda pedroa.aranda@telefonica.com
-  Diego Lopez diego.r.lopez@telefonica.com
-  Li Chen lichenyj@chinamobile.com
-  Yan Zhang zhangy1036@chinaunicom.cn
-  Susan Hares shares@ndzh.com

Initial Committers
------------------

-  Tianran Zhou zhoutianran@huawei.com Username: zhoutianran
-  Yinben Xia xiayinben@huawei.com Username: xiayinben
-  Wei Cao wayne.caowei@huawei.com
-  Helen Chen helen.chen@huawei.com Username: helenc878
-  An Ho an.ho@huawei.com Username: Anipbu
-  Pedro Andres Aranda pedroa.aranda@telefonica.com Username: paaguti
-  Diego Lopez diego.r.lopez@telefonica.com
-  Li Chen lichenyj@chinamobile.com
-  Yan Zhang zhangy1036@chinaunicom.cn
-  Susan Hares shares@ndzh.com\ Username:suehares

Vendor Neutral
--------------

-  No vendor package names in code
-  No vendor branding present in code or output of build
-  No vendor branding present in documentation

Meets Board Policy (including IPR)
----------------------------------

Presentation Slide
------------------

-  `TSC Review Slide (PDF)`_

.. _TSC Review Slide (PDF): https://wiki.opendaylight.org/view/File:NEMO_TSCReview_May06_2015.pdf