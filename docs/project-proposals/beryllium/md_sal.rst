Project Proposals: MD-SAL
=========================

Name
----

MD-SAL: Model-Driven Service Adaptation Layer

Repo Name
---------

mdsal

Description
-----------

The Model-Driven SAL (MD-SAL) is set of infrastructure services aimed at
providing common and generic support to platform and plugin developers
using YANG as data modeling language.

The MD-SAL will provides service API definitions and messaging patterns
for:

-  RPC routing
-  Notification subscription and publishing services
-  Data tree manipulation, distribution (sharding) and data change
   notifications

This common model-driven infrastructure allows developers of
applications and plugins to develop against set of APIs derived from a
single model and do not care which set of APIs are used by other
applications.

In-Scope
--------

-  Design of YANG based Model-Driven Service Adaptation Layer and
   development of reference implementations of MD-SAL components
   (runtime)
-  Support for multiple intra-process bindings and adaptation
   (serialization / deserialization) for these binding)

   -  Java YANG Binding
   -  Java YANG DOM

-  Development of YANG models describing MD-SAL, infrastructure services
   of MD-SAL, YANG extensions for MD-SAL
-  Development of TCK for MD-SAL components to qualify implementations

Out-of-Scope
------------

-  Design and development of device specific models, network function
   abstraction models
-  Design and development of components which are device specific or
   implement network function abstractions.
-  Config subsystem Bindings of MD-SAL
-  Clustering and remoting implementation of MD-SAL APIs (remote
   clients)

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Tony Tkacik (ttkacik, ttkacik@cisco.com)
-  Robert Varga (rovarga, rovarga@cisco.com)
-  Vaclav Demcak (vdemcak, vdemcak@cisco.com)
-  Jan Hajnar (jhajnar, jhajnar@cisco.com)
-  Martin Ciglan (mciglan, mciglan@cisco.com)
-  Peter Kajsa (pkajsa, pkajsa@cisco.com)

Initial Committers
------------------

-  Tony Tkacik (ttkacik@cisco.com)
-  Robert Varga (rovarga@cisco.com)
-  Tom Pantelis (tpanteli@brocade.com)

Initial Code
~~~~~~~~~~~~

Based on the scope initial code drop could be identified to:

-  source code from YANG Tools which could be identified as YANG Java
   Binding:

   -  yangtools/yang/yang-binding
   -  yangtools/code-generator/

-  source code from the Controller:

   -  controller/opendaylight/md-sal/sal-common-api
   -  controller/opendaylight/md-sal/sal-common
   -  controller/opendaylight/md-sal/sal-common-impl
   -  controller/opendaylight/md-sal/sal-common-util
   -  controller/opendaylight/md-sal/sal-dom-api
   -  controller/opendaylight/md-sal/sal-dom-spi
   -  controller/opendaylight/md-sal/sal-connector-api
   -  controller/opendaylight/md-sal/sal-binding-api
   -  controller/opendaylight/md-sal/sal-binding-broker
   -  controller/opendaylight/md-sal/sal-binding-util

Vendor Neutral
--------------

Vendor agnostic

Meets Board Policy (including IPR)
----------------------------------

Questions
---------

Lets list out any questions and answers here so we can avoid repetition.

-  Q: What timeline are we thinking for this? LI? Li SR? Post LI?

:\* Tony Tkacik: Beryllium

-  Q: If this is intended to contain only the apis etc should we
   consider "api" in the name? When MD-SAL is logically thought about
   today it includes the clustering and in memory implementations etc,
   which I am assuming we want to keep in separate projects? Also often
   the "config" subsystem is lumped in with "MD-SAL" term.

:\* Tony Tkacik: MD-SAL is more of a concepts, messaging patterns - so
this is not API / IMPL decomposition in general sense, and project will
also contain implementation of MD-SAL Binding which is agnostic to
in-memory / clustering / netconf implementation of DOM MD-SAL and some
common base code which is required to support implementations. Please
see list of folders above.

-  Q: What are the impacts on this when trying to upgrade a controller
   from Li to Be? Or asked another way, what would be the upgrade path
   from LI to BE in this case? Trying to consider the impact of model
   names, class name changes, cluster data stores journals, etc

:\* Tony Tkacik:

::\* should not affect implementation specific details such as **cluster
data store journals**

::\* **class name changes** will be handled via adapters

:::\* we are still required to provide support for all Lithium
non-deprecated APIs. Same approach with adapters was used for Hydrogen
APIs during Helium and Lithium.

::\* **model names** - only thing which will change is group-id -
packaging only.
