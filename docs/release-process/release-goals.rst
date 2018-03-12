**********************
Fluorine Release Goals
**********************

Purpose
=======

This document outlines OpenDaylight's project-level goals for Fluorine. It is
meant for consumption by fellow LFN projects, the LFN TAC and the LFN Board.

Goals
=====

Infrastructure Efficiency
-------------------------

OpenDaylight has major infrastructure requirements that can't be mitigated due
to the large number of tests the community has developed over time. The
Integration/Test and RelEng/Builder projects have always strove to use
resources efficiently, to make OpenDaylight's increasingly large test suite
fit in the same resource allocation. However, OpenDaylight's recent move to LFN
and the Managed Release model may have unlocked new opportunities to achieve
equally good or better test coverage at a lower cost.

A few ideas are outlined below, although it's expected others will emerge.

Regular Cost Feedback
+++++++++++++++++++++

Getting feedback about the impact of efficiency efforts is critical.
OpenDaylight has requested that LFN start sending out infrastructure spending
reports. These will allow the community to make data-driven decisions about
which changes have substantial impacts and which aren't a good work-vs-reward
trade-off.

Reports should be provided as frequently as possible and should include all
available data, like per-flavor usage, to help target efforts.

Other LFN projects may find it helpful to request similar reports.

OpenStack Deployments via OPNFV Images
++++++++++++++++++++++++++++++++++++++

OpenDaylight currently spends significant infrastructure and developer
resources maintaining our own Devstack-based OpenStack deployment logic. OPNFV
installer projects already produce VM images with master branch versions of
OpenStack and OpenDaylight installed via production tooling. OpenDaylight would
like to move to doing our OpenStack testing using these images, updating the
version of OpenDaylight to the build under test. Using a pre-baked OpenStack
deployment vs deploying it ourselves in every job would result in substantial
cost savings, and not having to maintain Devstack deployment logic would make
our jobs much more stable and save developer time.

This change wasn't possible in our previous Rackspace-hosted infrastructure,
but we hope it will be enabled by our recent move to Vexxhost or by running
jobs that require OpenStack on LFN-managed hardware.

Audit for Unwatched CSIT
++++++++++++++++++++++++

As part of OpenDaylight's move to the Managed Release model, the Test team will
have greater freedom to step in and directly manage project's tests. This may
enable the Test team to disable tests that are not actively watched and make
other jobs run less frequently.

Cross-Project CI/CD
-------------------

OpenDaylight pioneered Cross-Project CI/CD (XCI) in LFN with OPNFV shortly
after that project's creation. Since then, both projects and others that have
followed have realized major benefits from continuously integrating recent
pre-release versions. OpenDaylight would like to continue and expand this work
in Fluorine.

OpenDaylight as Infra
---------------------

OpenDaylight's cloud infrastructure runs on OpenStack. We would like to start
using a released version of OpenDaylight NetVirt as the Neutron backend in
this infrastructure. This "eating our own dogfood" exercise would make for a
good production-level test and good marketing.

This change wasn't possible in our previous Rackspace-hosted infrastructure,
but we hope it will be enabled by our recent move to Vexxhost or by running
jobs that require OpenStack on LFN-managed hardware.

Expand Contribution Base
------------------------

OpenDaylight would like to continue bringing new contributors to the community.

For Fluorine, OpenDaylight would like to focus on getting downstream consumers
involved in upstream development. In an ideal Open Source world, the users of
an Open Source projects would contribute back to the projects they consume.
OpenDaylight would like to facilitate this by building special relationships
between key downstream consumers and the upstream developer community. These
downstreams could be companies, universities or Open Source projects. We hope
for contributions in the form of code, documentation and bug reports.

OpenDaylight would like to work with the LFN MAC and TAC to identify a small
set of downstream users to pilot the program with. The users would provide
developers with dedicated cycles and a commitment to stick around for the
long-term. In exchange, the OpenDaylight developer community would prioritize
training these developers, answering their questions and generally facilitate
their bootstrapping into the upstream community.

Support Kernel Projects
-----------------------

Companies allocating contributors to OpenDaylight tend to distribute resources
to projects that are directly related to the usecases they are interested in,
but neglect to give sufficient resources to the kernel projects that support
them. OpenDaylight's kernel developers are doing a heroic job of keeping the
platform healthy, but for the long-term health of the project special attention
needs to be paid to sufficiently staffing these key projects.

OpenDaylight requests that LFN member companies that consume OpenDaylight
consider contributing developer resources to kernel projects. The new
developers should be allocated for the long-term, to avoid costing cycles
for training that aren't repaid by contributions.

Improve First-Impression Documentation
--------------------------------------

OpenDaylight has a tremendous amount of documentation, but much of it is
written by experienced developers for experienced developers. As with most
Open Source projects, the experienced developers typically don't look at
documentation targeted at inexperienced potential contributors. This type of
general documentation is also typically not maintained by individual projects,
who are focused on making sure their project-specific docs are in good shape.

To facilitate expanding OpenDaylight's user and contributor base, we would like
to focus on improving this "first impression" documentation for Fluorine. Since
it's not realistic to hope for a major improvement from the existing
contributor base, OpenDaylight requests the LFN Board create a LF staff
position focused on auditing and working with LFN project communities to
improve this general, "first impression" documentation. This resource would be
shared across all LFN projects.

Improve Release Model
---------------------

The OpenDaylight community has developed a new release model for Fluorine. The
Managed Release Model will facilitate timely releases, provide a more stable
development environment for the most active OpenDaylight projects, reduce
process overhead for all projects, give more autonomy to Unmanged Projects and
allow the Release and Test teams to give more support to Managed Projects.

See the `Managed Release Process`_ for additional details.

Resync Release Cadence
----------------------

OpenDaylight's release dates need to synchronize with a number of related Open
Source projects. The OpenDaylight TSC will work with those projects, perhaps
making use of the LFN TAC, to understand the best time for our releases. The
TSC will adjust OpenDaylight's release schedule accordingly and ensure it's
met. We anticipate that the new Managed Release Process will make it easier for
OpenDaylight to consistently meet release date targets going forward.

In-Person Developer Design Forum Per-Release
--------------------------------------------

OpenDaylight would like to continue having a face-to-face Developer Design
Forum to plan each release. The community has expressed many times that these
events are extremely valuable, that they need to continue happening and that
they can't be replaced by remote DDFs.

OpenDaylight requests that the LFN Board allocate resources for at least one,
ideally two, days of DDF for each OpenDaylight six-month release cycle. It has
worked well to host these events in conjunction with other large, relevant
events like ONS.

.. _Managed Release Process: https://git.opendaylight.org/gerrit/#/c/68382/
