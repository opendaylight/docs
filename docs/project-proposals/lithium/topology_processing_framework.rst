Name
----

Topology Processing Framework

Repo Name
---------

topoprocessing

Motivation
----------

The aim is to create a framework rather than specific application as we
believe, that this project might help many other projects (that work
with topologies) to speed up their development and provide crucial
information. Applications can use this framework to access only desired
/ filtered information. With increasing number of protocols supported in
Opendaylight this framework will be more and more beneficial as unifying
different protocols allows them to be managed together, which is one of
main OpenDaylight objectives.

Description
-----------

Topolology processing framework is designed to provide two main
features:

-  Topology aggregation

   -  RPC forwarding

-  Topology filtering

| Topology aggregation will take existing topologies and will provide
  aggregated topology on output. Underlay topologies will be read from
  datastore and afterwards aggregated into one or more overlay
  topologies. Overlay topology/ies will be created based on defined
  mappings (Router ID, Managment IP, Datapath ID, ...) and will be
  stored in datastore with other topologies. These overlay topologies
  will be supplied with unified protocol view - providing possibility to
  handle one node with different protocols. This way applications won't
  need to take care of multiple topologies and multiple node
  identifiers. Multiprocotol node abstraction will be achieved by RPC
  forwarding / republishing. Overlayed topologies will publish /
  register RPCs from used underlayed topologies and the framework will
  take care of correct RPC forwarding.
| Another feature of Topology Processing Framework will be topology
  filtering. The framework will provide filtered topology views – it
  will extract visibility from huge topology. Filter might be applied to
  switch, group of switches, specific link or other objects.
| Topology processing framework will be independent - it will use
  abstract topology model. This way it will be also possible to handle
  specific augmentations.

Scope
-----

The goal is to create framework for topology aggregation that will
provide unified topology view. RPC unification and model normalizations
are out of scope for this project (these might be custom plugins for our
framework). Basic POC will be presented with use of two protocols which
are already supported in OpenDaylight. Further enhancements are expected
to come out over the Lithium time frame.

Usecase
-------

There will be two main usecases for TPF:

-  providing aggregated topology
-  providing filtered topology view

.. figure:: Topoprocessing_Proposal_Topology.png
   :alt: Topoprocessing_Proposal_Topology.png
   :width: 800px

   Topoprocessing_Proposal_Topology.png

| Providing aggregated topology
| 1. Application writes overlay topology configuration into
  configurational datastore
| 2. Topology Processing Framework is notified of new overlay topology
  demand
| 3. Topology aggregation module pulls needed topologies from datastore
| \* pull is performed only once - on overlay topology demand
  notification

-  after topologies are pulled - topology framework listens on
   underlaying topology changes -> provides live view

| 4. Topology aggregation module writes overlay topology/ies to
  datastore (and updates them)
| 5. Application or RestConf can access overlay topology/ies through
  MD-SAL APIs

| Providing filtered topology view
| Topology filtering will work on the same principle:
| 1. Application writes filtered topology configuration
| 2. Topology Processing Framework is notified of new filtered topology
  demand
| 3. Topology filtering module pulls needed topologies from datastore
| \* pull is performed only once - on new topology demand notification

-  after topologies are pulled - topology framework listens on
   underlaying topology changes -> provides live view

| 4. Topology filtering module writes filtered topology/ies to datastore
  (and updates them)
| 5. Application or RestConf can access filtered topology/ies through
  MD-SAL APIs
| Filtering can occur on both overlaying and underlaying topologies.
| In case of overlaying topology filtered view we can take output from
  topology aggregation module, apply filter to this topology and finally
  write this topology/ies into datastore.

Resources Committed (developers committed to working)
-----------------------------------------------------

| Michal Polkorab (michal.polkorab@pantheon.sk, ODL Username:
  michal.polkorab, IRC: oflibMichal)
| Carlo Perocchio (carlo.perocchio@ericsson.com, ODL Username:
  c.perocchio)
| Giorgio Garziano (giorgio.garziano@ericsson.com, ODL Username:
  Giorgiogarziano)
| Paul Hudgins (phudgins@ciena.com, ODL Username: phudgins, IRC:
  phudgins) Keith Burns (alagalah@noironetworks.com)

Initial Committers
------------------

| Michal Polkorab (michal.polkorab@pantheon.sk, ODL Username:
  michal.polkorab, IRC: oflibMichal)
| Carlo Perocchio (carlo.perocchio@ericsson.com, ODL Username:
  c.perocchio)

Vendor Neutral
--------------

No vendor package names in code. No vendor branding present in code or
output of build. No vendor branding present in documentation.

Meets Board Policy (including IPR)
----------------------------------

Project starts from scratch.
