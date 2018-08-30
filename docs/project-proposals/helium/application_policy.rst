Name
----

Group Policy Plugin

Repo Name
---------

applicationpolicy

Description
-----------

This document describes the Group Policy incubation project for
OpenDaylight that introduces the notion of groups of endpoints and
policy abstractions that govern communication between these groups. The
goal is to support a northbound API that accepts abstract policy based
on application requirements while offering numerous concrete southbound
implementations for programming network element with
configuration/programming stanzas rendered from application policies.

It is important to draw a distinction between the *model* and it's
*implementation*. Some implementations may offer/consume a subset of
either the model or another implementation.

.. figure:: Group_Based_Policy_taxonomy.jpg
   :alt: Group_Based_Policy_taxonomy.jpg

   Group_Based_Policy_taxonomy.jpg

This approach offers a number of distinct advantages, including:

-  Easier, application-focused way of expressing policy: By creating
   policies that mirror application semantics, this framework provides a
   simpler, self-documenting mechanism for capturing policy requirements
   without requiring detailed knowledge of networking.
-  Improved automation: Grouping constructs allow higher level
   automation tools to easily manipulate groups of network endpoints
   simultaneously.
-  Consistency: By grouping endpoints and applying policy to groups, the
   framework offers a consistent and concise way to handle policy
   changes
-  Extensible policy model: Since the policy model is abstract and not
   tied to specific network implementations, it can easily capture
   connectivity, security, L4-7, QoS, etc.

An example use case of a multi-tier application, where different
application policies are defined for different application tiers, is
shown in the following figure.

.. figure:: App-Policy-Overview.png
   :alt: App-Policy-Overview.png

   App-Policy-Overview.png

Group Policy Information Model
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This project will also introduce several important new primitives in the
group policy model, including:

-  **Groups**: Groups include sets of network endpoints (potentially but
   not limited to virtual machines) with the same policies and
   requirements.
-  **Policies**: Policies consist of sets of rules that govern how
   groups interact.
-  **Policy rules**: Rules capture specific requirements about how
   groups interact. For example, a policy rule may allow HTTP traffic to
   a group of web servers for example. While rules capture a specific
   requirement, they must remain abstract and not tied to a specific
   hardware or software implementation.

The Group Policy information model is shown in the following figure:

.. figure:: Policy_Model.jpg
   :alt: Policy_Model.jpg

   Policy_Model.jpg

The components in the model are as follows:

-  **Group**: Set of network Endpoints with the same policies.
-  **Contract**: a policy element that exists between Groups. A Contract
   can have one or more Subjects
-  **Subject**: Each subject can have multiple classifiers, but only a
   single Directive in each direction
-  **Directive**: a set of actions (e.g. forward, drop, …) that can be
   applied in each traffic direction (In, Out, In/Out); any given Subject has a single Directive, while a
Directive can be applied to multiple Subjects

-  **Classifier**: describes a filter (match) associated with a Subject.
-  **Endpoint**: a single L2 or L3 identifier
-  **Subnet**: a section of a logical L3 IP namespace
-  **Broadcast Domain (BD)**: Logical Layer 2 domain
-  **L3 Context**: Logical L3 namespace
-  **Sensitivities**: meta-data used by external systems in the
   consumption of policy constructs specified using this policy model.

The expressed policy module is a combination of the application's
desires, the network's capabilities, and infrastructure policy, as shown
in the following diagram:

.. figure:: Expressed_Policy.jpg
   :alt: Expressed_Policy.jpg

   Expressed_Policy.jpg

Group Policy Components and Plugins
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Group Policy project will implement several new components and
plugins:

-  **Endpoint Registry**: a new component that keeps track of all
   configured and discovered endpoints, as well as assignments of
   Endpoints into EPGs (Endpoint Groups). The Endpoint Registry stores
   its data in the SAL in the “EP DB”
-  **Contract Composer**: a new component that holds the Group Policy
   data model and provides the entry point through which applications
   specify contract policies. The Contract Composer stores its data in
   the SAL in the “C DB”
-  **Affinity Decomposer**: a new SB plugin that transforms Contract
   policies into pairwise affinity specifications defined and
   implemented in `Affinity Metadata Service`_. The idea is that
   group-based policies may be decomposed into pairwise relationships so
   affinity relationships can be applied prior to rendering by a
   specific southbound plugin.
-  **“Native Driver”**: a new SB plugin that talks to a system (or
   systems) that can understand Group Policies directly
-  **“Classic Decomposer”**: a new SB plugin that decomposes Group
   Policies into network element configurations / programming stanzas
   and uses existing configuration/programming protocols (OF, Netconf,
   CLI, ...) to apply the configuration to Network Elements

The Group Policy plugin will use several existing OpenDaylight
components:

-  The **Forwarding Rules Manager**: existing component that provides
   flow programming and other flow operations over one or more domains
-  Various **protocol plugins**, such as the OF1.0/1.3 plugin or the
   Netconf SB client plugin.
-  **Affinity Service**: an existing component that provides affinity
   services
-  **Inventory**: existing component that keeps track of nodes, hosts
   (Endpoints), ...

The design of the Group Policy plugin is shown in the following figure:

.. figure:: Architecture.png
   :alt: Architecture.png

   Architecture.png

Use Cases
~~~~~~~~~

Policy Configuration
^^^^^^^^^^^^^^^^^^^^

The following figure shows the policy configuration sequence with Plexxi
Affinity components.

.. figure:: App-Policy-Use-Case-Config1.png
   :alt: App-Policy-Use-Case-Config1.png

   App-Policy-Use-Case-Config1.png

The sequence is as follows:

#. An application creates a new contract using the Contract Composer
   REST API (create contract). The REST API is rendered from the
   Contract Composer model by RESTCONF at runtime, when the Contract
   Composer model is loaded into the controller.
#. RESTCONF translates the request into a transaction that adds the
   contract data to the Contract configuration database in the SAL. The
   Contract Composer validates the transaction (2a) and the new contract
   data is then stored in the SAL.
#. The Contract Composer invokes an operation to push the contract into
   Drivers that proxy different hardware subsystems: the Native Driver
   and the Affinity Decomposer. The Driver can be a “Native” Driver that
   passes the contract transparently to systems that can natively
   understand contract policies or an Affinity Decomposer that can
   transform Contract policies into pairwise affinity specifications
#. The Affinity Decomposer invokes the Affinity Service NB API
   [reference] (either Java or REST) to program the pairwise affinities.
   The Affinity Service translates the affinities programming into
   programming of physical network nodes; The Affinity Service can
   program OF flows in OF-capable nodes or ACLs through a device’s CLI
   or the Netconf configuration protocol.
#. The Affinity Service uses the ODL Inventory Service to discover the
   physical nodes, and to discover the nodes’ capabilities. Through the
   node model’s hierarchy the Affinity Service also can access, for
   example, OF-capable node’s tables and flows or a netconf-capable
   node’s ACL models. In this step, the Affinity Service will invoke the
   physical node programming transaction (Across one or more physical
   nodes). The Inventory plugin will validate the transaction.
#. Once the transaction is validated, the Inventory Service will invoke
   appropriate plugins (Forwarding Rules Manager for OF (6a), the
   Netconf protocol plugin for ACLs (6b), or a CLI plugin (6c), for
   example) to program physical network devices
#. The Forwarding Rules Manager will talk to the OpenFlow Protocol
   Plugin to push the desired flow to the corresponding devices
#. The protocol plugins will use their respective protocols to push the
   configuration to the physical nodes.

Scope
-----

The full scope of the proposal is as follows:

-  Offer an additional northbound plugin based on application policy.
-  Support the Affinity MetaData Service through southbound plugin
-  Support “native” southbound plugins that can accept application
   policy constructs
-  Support “classic” southbound devicesmodels (openflow, etc.)

Other components might be affected by this proposal:

-  The OpenDaylight Inventory model will be extended to include the
   concept of a Logical Node

Relationship with OpenStack/Neutron Policy Model
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The model developed within this project relates to that being developed in
OpenStack in the following ways:

#. The Neutron model being developed MUST be **always renderable** into
   the OpenDaylight policy model.
#. The OpenDaylight model MUST NOT be constrained in any way by the
   Neutron model being developed.

UML Model
~~~~~~~~~

`UML Model`_

Resources Committed (developers committed to working)
-----------------------------------------------------

**Cisco:**

-  Mike Dvorkin <dvorkin@insiemenetworks.com>
-  Keith Burns (alagalah) <alagalah@noironetworks.com>

**Plexxi:**

-  Derick Winkworth <derick.winkworth@plexxi.com>
-  Suchi Raman <suchi.raman@plexxi.com>

**Midokura:**

-  Stephen Wong <s3wong@midokura.com>

**IBM:**

-  Ryan Moats <rmoats@us.ibm.com>
-  Muthu Kothandaraman <mkothand@us.ibm.com>

Initial Committers
------------------

**Cisco:**

-  Mike Dvorkin <dvorkin@insiemenetworks.com>
-  Kyle Mestery <kmestery@cisco.com>

**Plexxi:**

-  Derick Winkworth <derick.winkworth@plexxi.com>
-  Suchi Raman <suchi.raman@plexxi.com>

**Midokura:**

-  Stephen Wong <s3wong@midokura.com>

**IBM:**

-  Ryan Moats <rmoats@us.ibm.com>
-  Muthu Kothandaraman <mkothand@us.ibm.com>

Vendor Neutral
--------------

The code bse will be created as a port of the project, no existing
vendor-specific code base will be used. The new code base will have no
vendor package names in code and no vendor branding present in code or
output of build. In addition, no vendor branding will be present in
documentation.

Team Meeting Notes and Works in Progress (Google Doc)
-----------------------------------------------------

`Google Doc`_

Meets Board Policy (including IPR)
----------------------------------

The Project team has indicated that all code will be written from
scratch once the project is approved. No existing code will be
contributed, hence no ICR is necessary. [PJR-12/5/13]

.. _UML Model: https://drive.google.com/a/noironetworks.com/#folders/0B0Pf6vxIzl4lRC1ucHl6c3Y2QzA
.. _Google Doc: https://docs.google.com/document/d/12Z1JHhCFS6ta-ux3UdUbFaEPzAig_3Xgnbj29Nejfug/edit?usp=sharing

.. _Affinity Metadata Service: Project_Proposals:Affinity_Metadata_Service