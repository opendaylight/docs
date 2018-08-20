***************
Managed Release
***************

Managed Release Summary
=======================

The Managed Release Process will facilitate timely, stable OpenDaylight
releases by allowing the release team to focus on closely managing a small set
of core OpenDaylight projects while not imposing undue requirements on projects
that prefer more autonomy.

Managed Release Goals
=====================

Reduce Overhead on Release Team
-------------------------------

The Managed Release Model will allow the release team to focus their efforts
on a smaller set of more stable, more responsive projects.

Reduce Overhead on Projects
---------------------------

The Managed Release Model will reduce the overhead both on projects taking
part in the Managed Release and Self-Managed Projects.

Managed Projects will have fewer, smaller checkpoints consisting of only
information that is maximally helpful for driving the release process. Much of
the information collected at checkpoints will be automatically scraped,
requiring minimal to no effort from projects. Additionally, Managed Release
projects should have a more stable development environment, as the projects
that can break the jobs they depend on will be a smaller set, more stable and
more responsive.

Projects that are Self-Managed will have less overhead and reporting. They will
be free to develop in their own way, providing their artifacts to include in
the final release or choosing to release on their own schedule. They will not
be required to submit any checkpoints and will not be expected to work closely
with the rest of the OpenDaylight community to resolve breakages.

Enable Timely Releases
----------------------

The Managed Release Process will reduce the set of projects that must
simultaneously become stable at release time. The release and test teams will
be able to focus on orchestrating a quality release for a smaller set of more
stable, more responsive projects. The release team will also have greater
latitude to step in and help projects that are required for dependency reasons
but may not have a large set of active contributors.

Managed Projects
================

Managed Projects Summary
========================

Managed Projects are either required by most applications for dependency
reasons or are mature, stable, responsive projects that are consistently able
to take part in releases without jeopardizing them. Managed Projects will
receive additional support from the test and release teams to further their
stability and make sure OpenDaylight releases go out on-time. To enable this
extra support, Managed Projects will be given less autonomy than OpenDaylight
projects have historically been granted.

Managed Projects for Dependency Reasons
---------------------------------------

Some projects are required by almost all other OpenDaylight projects. These
projects must be in the Managed Release for it to support almost every
OpenDaylight use case. Such projects will not have a choice about being in the
Managed Release, the TSC will decide they are critical to the OpenDaylight
platform and include them. They may not always meet the requirements that
would normally be imposed on projects that wish to join the Managed Release.
Since they cannot be kicked out of the release, the TSC, test and release teams
will do their best to help them meet the Managed Release Requirements. This
may involve giving Linux Foundation staff temporary committer rights to merge
patches on behalf of unresponsive projects, or appointing committers if
projects continue to remain unresponsive. The TSC will strive to work with
projects and member companies to proactively keep projects healthy and find
active contributors who can become committers in the normal way without the
need to appoint them in times of crisis.

Managed Release Integrated Projects
-----------------------------------

Some Managed Projects may decide to release on their own, not as a part of the
Simultaneous Release with Snapshot Integrated Projects. Such Release Integrated
projects will still be subject to Managed Release Requirements, but will need
to follow a different release process.

For implementation reasons, the projects that are able to release independently
must depend only on other projects that release independently. Therefore the
Release Integrated Projects will form a tree starting from odlparent. Currently
odlparent and yangtools are the only Release Integrated Projects, but others
may join them in the future.

Requirements for Managed Projects
---------------------------------

Healthy Community
+++++++++++++++++

Managed Projects should strive to have a healthy community.

Responsiveness
##############

Managed Projects should be responsive over email, IRC, Gerrit, Jira and in
regular meetings.

All committers should be subscribed to their project's mailing list and the
release mailing list.

For the following particularly time-sensitive events, an appropriate response
is expected within two business days.

* RC or SR candidate feedback.
* Major disruptions to other projects where a Jira weather item was not present
  and the pending breakage was not reported to the release mailing list.

If anyone feels that a Managed Project is not responsive, a grievance process
is in place to clearly handle the situation and keep a record for future
consideration by the TSC.

Active Committers
#################

Managed Projects should have sufficient active committers to review
contributions in a timely manner, support potential contributors, keep CSIT
healthy and generally effectively drive the project.

If a project that the TSC deems is critical to the Managed Release is shown to
not have sufficient active committers the TSC may step in and appoint
additional committers. Projects that can be dropped from the Managed Release
will be dropped instead of having additional committers appointed.

Managed Projects should regularly prune their committer list to remove
inactive committers, following the `Committer Removal Process`_.

TSC Attendance
##############

Managed Projects are required to send a representative to attend TSC meetings.

To facilitate quickly acting on problems identified during TSC meetings,
representatives must be a committer to the project they are representing. A
single person can represent any number of projects.

Representatives will make the following entry into the meeting minutes to
record their presence:

#project <project ID>

TSC minutes will be scraped per-release to gather attendance statistics. If a
project does not provide a representative for at least half of TSC meetings a
grievance will be filed for future consideration.

Checkpoints Submitted On-Time
+++++++++++++++++++++++++++++

Managed Projects must submit information required for checkpoints on-time.
Submissions must be correct and adequate, as judged by the release team and
the TSC. Inadequate or missing submissions will result in a grievance.

Jobs Required for Managed Projects Running
++++++++++++++++++++++++++++++++++++++++++

Managed Projects are required to have the following jobs running and healthy.

* Distribution check job (voting)
* Validate autorelease job (voting)
* Merge job (non-voting)
* Sonar job (non-voting)
* CLM job (non-voting)

Depend only on Managed Projects
+++++++++++++++++++++++++++++++

Managed Projects should only depend on other Managed Projects.

If a project wants to be Managed but depends on Self-Managed Projects, they
should work with their dependencies to become Managed at the same time or
drop any Self-Managed dependencies.

Documentation
+++++++++++++

Managed Projects are required to produce a user guide, developer guide and
release notes for each release.

CLM
+++

Managed Projects are required to handle CLM (Component Lifecycle Management)
violations in a timely manner.

Managed Release Process
-----------------------

Managed Release Checkpoints
+++++++++++++++++++++++++++

Checkpoints are designed to be mostly automated, to be maximally effective at
driving the release process and to impose as little overhead on projects as
possible.

There will be an initial checkpoint two weeks after the start of the release,
a midway checkpoints one month before code freeze and a final checkpoint at code freeze.

Initial Checkpoint
##################

An initial checkpoint will be collected two weeks after the start of each
release. The release team will review the information collected and report
it to the TSC at the next TSC meeting.

Projects will need to create the following artifacts:

* High-level, human-readable description of what the project plans to do in this
  release. This should be submitted as a Jira **Project Plan** issue against the
  TSC project.

  * Select your project in the **ODL Project** field

  * Select the release version in the **ODL Release** field

  * Select the appropriate value in the **ODL Participation** field:
    ``SNAPSHOT_Integrated (Managed)`` or ``RELEASE_Integrated (Managed)``

  * Select the value ``Initial`` in the **ODL Checkpoint** field

  * In the **Summary** field, put something like:
    ``Project-X Fluorine Release Plan``

  * In the **Description** field, fill in the details of your plan:

    .. code-block:: none

       This should list a high-level, human-readable summary of what a project
       plans to do in a release. It should cover the project's planned major
       accomplishments during the release, such as features, bugfixes, scale,
       stability or longevity improvements, additional test coverage, better
       documentation or other improvements. It may cover challenges the project
       is facing and needs help with from other projects, the TSC or the LFN
       umbrella. It should be written in a way that makes it amenable to use
       for external communication, such as marketing to users or a report to
       other LFN projects or the LFN Board.

* If a project is transitioning from Self-Managed to Managed or applying for
  the first time into a Managed release, raise a Jira **Project Plan** issue
  against the TSC project highlighting the request.

  * Select your project in the **ODL Project** field

  * Select the release version in the **ODL Release** field

  * Select the ``NOT_Integrated (Self-Managed)`` value in the **ODL Participation**
    field

  * Select the appropriate value in the **ODL New Participation** field:
    ``SNAPSHOT_Integrated (Managed)`` or ``RELEASE_Integrated (Managed)``

  * In the **Summary** field, put something like:
    ``Project-X joining/moving to Managed Release for Fluorine``

  * In the **Description** field, fill in the details using the template
    below:

    .. code-block:: none

       Summary
       This is an example of a request for a project to move from Self-Managed
       to Managed. It should be submitted no later than the start of the
       release. The request should make it clear that the requesting project
       meets all of the Managed Release Requirements.

       Healthy Community
       The request should make it clear that the requesting project has a
       healthy community. The request may also highlight a history of having a
       healthy community.

       Responsiveness
       The request should make it clear that the requesting project is
       responsive over email, IRC, Jira and in regular meetings. All committers
       should be subscribed to the project's mailing list and the release
       mailing list. The request may also highlight a history of
       responsiveness.

       Active Committers
       The request should make it clear that the requesting project has a
       sufficient number of active committers to review contributions in a
       timely manner, support potential contributors, keep CSIT healthy and
       generally effectively drive the project. The requesting project should
       also make it clear that they have pruned any inactive committers. The
       request may also highlight a history of having sufficient active
       committers and few inactive committers.

       TSC Attendance
       The request should acknowledge that the requesting project is required
       to send a committer to represent the project to at least 50% of TSC
       meetings. The request may also highlight a history of sending
       representatives to attend TSC meetings.

       Checkpoints Submitted On-Time
       The request should acknowledge that the requesting project is required
       to submit checkpoints on time. The request may also highlight a history
       of providing deliverables on time.

       Jobs Required for Managed Projects Running
       The request should show that the requesting project has the required
       jobs for Managed Projects running and healthy. Links should be provided.

       Depend only on Managed Projects
       The request should show that the requesting project only depends on
       Managed Projects.

       Documentation
       The request should acknowledge that the requesting project is required
       to produce a user guide, developer guide and release notes for each
       release. The request may also highlight a history of providing quality
       documentation.

       CLM
       The request should acknowledge that the requesting project is required
       to handle Component Lifecycle Violations in a timely manner. The request
       should show that the project's CLM job is currently healthy. The request
       may also show that the project has a history of dealing with CLM
       violations in a timely manner.

* If a project is transitioning from Managed to Self-Managed, raise a Jira
  **Project Plan** issue against the TSC project highlighting the request.

  * Select your project in the **ODL Project** field

  * Select the release version in the **ODL Release** field

  * Select the appropriate value in the **ODL Participation** field:
    ``SNAPSHOT_Integrated (Managed)`` or ``RELEASE_Integrated (Managed)``

  * Select the ``NOT_Integrated (Self-Managed)`` value in the
    **ODL New Participation** field

  * In the **Summary** field, put something like:
    ``Project-X Fluorine Joining/Moving to Self-Manged for Fluorine``

  * In the **Description** field, fill in the details:

    .. code-block:: none

       This is a request for a project to move from Self-Managed to Managed. It
       should be submitted no later than the start of the release. The request
       does not require any additional information, but it may be helpful for
       the requesting project to provide some background and their reasoning.

* Weather items that may impact other projects should be submitted as Jira
  issues. For a weather item, raise a Jira **Weather Item** issue against the
  TSC project highlighting the details.

  * Select your project in the **ODL Project** field

  * Select the release version in the **ODL Release** field

  * For the **ODL Impacted Projects** field, fill in the impacted projects
    using label values - each label value should correspond to the respective
    project prefix in Jira, e.g. netvirt is NETVIRT. If all projects are
    impacted, use the label value ``ALL``.

  * Fill in the expected date of weather event in the **ODL Expected Date**
    field

  * Select the appropriate value for **ODL Checkpoint** (may skip)

  * In the **Summary** field, summarize the weather event

  * In the **Description** field, provide the details of the weather event.
    Provide as much relevant information as possible.

The remaining artifacts will be automatically scraped:

* Blocker bugs that were raised between the previous code freeze and release.
* Grievances raised against the project during the last release.

Midway Checkpoint
#################

One month before code freeze, a midway checkpoint will be collected. The release team
will review the information collected and report it to the TSC at the next TSC
meeting. All information for midway checkpoint will be automatically collected.

* Open Jira bugs marked as blockers.
* Open Jira issues tracking weather items.
* Statistics about jobs.
  * Autorelease failures per-project.
  * CLM violations.
* Grievances raised against the project since the last checkpoint.

Since the midway checkpoint is fully automated, the release team may collect
this information more frequently, to provide trends over time.

Final Checkpoint
################

At 2 weeks after code freeze a final checkpoint will be collected by the release team
and presented to the TSC at the next TSC meeting.

Projects will need to create the following artifacts:

* High-level, human-readable description of what the project did in this
  release. This should be submitted as a Jira **Project Plan** issue against
  the TSC project. This will be reused for external communication/marketing for
  the release.

  * Select your project in the **ODL Project** field

  * Select the release version in the **ODL Release** field

  * Select the appropriate value in the **ODL Participation** field:
    ``SNAPSHOT_Integrated (Managed)`` or ``RELEASE_Integrated (Managed)``

  * Select the value ``Final`` in the **ODL Checkpoint** field

  * In the **Summary** field, put something like:
    ``Project-X Fluorine Release details``

  * In the **Description** field, fill in the details of your accomplishments:

    .. code-block:: none

       This should be a high-level, human-readable summary of what a project
       did during a release. It should cover the project's major
       accomplishments, such as features, bugfixes, scale, stability or
       longevity improvements, additional test coverage, better documentation
       or other improvements. It may cover challenges the project has faced
       and needs help in the future from other projects, the TSC or the LFN
       umbrella. It should be written in a way that makes it amenable to use
       for external communication, such as marketing to users or a report to
       other LFN projects or the LFN Board.

  * In the **ODL Gerrit Patch** field, fill in the Gerrit patch URL to your
    project release notes

* Release notes, user guide, developer guide submitted to the docs project.

The remaining artifacts will be automatically scraped:

* Open Jira bugs marked as blockers.
* Open Jira issues tracking weather items.
* Statistics about jobs.
  * Autorelease failures per-project.
* Statistics about patches.
  * Number of patches submitted during the release.
  * Number of patches merged during the release.
  * Number of reviews per-reviewer.
* Grievances raised against the project since the start of the release.

Managed Release Integrated Release Process
------------------------------------------

Managed Projects that release independently (Release Integrated Projects),
not as a part of the Simultaneous Release with Snapshot Integrated Projects,
will need to follow a different release process.

Managed Release Integrated (MRI) Projects will provide the releases they want
the Managed Snapshot Integrated (MSI) Projects to consume no later than two
weeks after the start of the Managed Release. The TSC will decide by a majority
vote whether to bump MSI versions to consume the new MRI releases. This should
happen as early in the release as possible to get integration woes out of the
way and allow projects to focus on developing against a stable base. If the TSC
decide to consume the proposed MRI releases, all MSI Projects are required to
bump to the new versions within a two day window. If some projects fail to
merge version bump patches in time, the TSC will instruct Linux Foundation
staff to temporarily wield committer rights and merge version bump patches.
The TSC vote at any time to back out of a version bump if the new releases are
found to be unsuitable.

MRI Projects are expected to provide bugfixes via minor or patch version
updates during the release, but should strive to not expect MSI Projects to
consume another major version update during the release.

MRI Projects are free to follow their own release cadence as they develop new
features during the Managed Release. They need only have a stable version ready
for the MSI Projects to consume by the next integration point.

Managed Release Integrated Checkpoints
++++++++++++++++++++++++++++++++++++++

The MRI Projects will follow similar checkpoints as the MSI Projects, but the
timing will be different. At the time MRI Projects provide the releases they
wish MSI Projects to consume for the next release, they will also provide their
final checkpoints. Their midway checkpoints will be scraped one month before
the deadline for them to deliver their artifacts to the MSI Projects. Their
initial checkpoints will be due no later two weeks following the deadline for
their delivery of artifacts to the MSI Projects. Their initial checkpoints will
cover everything they expect to do in the next Managed Release, which may
encompass any number of major version bumps for the MRI Projects.

Moving a Project from Self-Managed to Managed
---------------------------------------------

Self-Managed Projects can request to become Managed by submitting a
**Project_Plan** issue to the TSC project in Jira. See details as described
under the `Initial Checkpoint`_ section above. Requests should be submitted
before the start of a release. The requesting project should make it clear that
they meet the Managed Release Project Requirements.

The TSC will evaluate requests to become Managed and inform projects of the
result and the TSC's reasoning no later than the start of the release or one
week after the request was submitted, whichever comes last.

For the first release, the TSC will bootstrap the Managed Release with projects
that are critical to the OpenDaylight platform. Other projects will need to
follow the normal application process defined above.

The following projects are deemed critical to the OpenDaylight platform:

* aaa
* controller
* infrautils
* mdsal
* netconf
* odlparent
* yangtools

Self-Managed Projects
=====================

In general there are two types of Self-Managed (SM) projects:

#. Self-Managed projects that want to participate in the formal (major or
   service) OpenDaylight release. This section includes the requirements
   and release process for these projects.

#. Self-Managed projects that want to manage their own release schedule
   and installation instructions. There are no specific requirements for
   these projects.

Requirements for SM projects participating in the formal release
----------------------------------------------------------------

Use of SNAPSHOT versions
++++++++++++++++++++++++

Self-Managed Projects can consume whichever version of their upstream
dependencies they want during most of the release cycle, but if they want to be
included in the formal (major or service) release they must have their upstream
versions bumped to SNAPSHOT and build successfully no later than one week before
the first Managed release candidate (RC) is created. Since bumping and integrating
with upstream takes time, it is strongly recommended Self-Managed projects start
this work early enough. This is no later than the middle checkpoint if they want to
be in the formal release, or by the previous release if they want to be in a
service release (e.g. by the major release date if they want to be in SR1).

.. note:: To help with the integration effort, the `Weather Page`_ includes API and
          other important changes during the release cycle. After the formal release,
          the release notes also include this information.

Add to Final Distribution
+++++++++++++++++++++++++

In order to be included in the formal (major or service) release final distribution,
Self-Managed Projects must be in the final distribution pom.xml file and the
distribution sanity test (see :ref:`add-proj-dist`) no later than one week before
the first Managed release candidate (RC) is created. Projects should only be added
to the final distribution pom.xml after they have succesfully published artifacts
using upstream SNAPSHOTs. See `Use of SNAPSHOT versions`_.

.. note:: It is very important Self-Managed projects do not miss the deadlines for
          upstream integration and final distribution check, otherwise there are
          high chances for missing the formal release. See
          `Release the project artifacts`_.

Release the project artifacts
+++++++++++++++++++++++++++++

Self-Managed Projects wanting to participate in a formal (major or service) release,
must perform the following tasks in the week after the Managed release is published
to nexus:

#. Bump their upstream version to latest Managed release.
#. Release the project and publish the artifacts to nexus. All projects have
   a job for this.
#. Add their release artifact to the full distribution.

.. note:: Self-Managed Projects will not have any leeway for missing deadlines. If
          projects are not in the final distribution in the allocated time (normally
          one week) after the Managed projects release, they will not be included
          in the formal release.

Checkpoints
+++++++++++

There are no checkpoints for Self-Managed Projects.

Moving a Project from Managed to Self-Managed
---------------------------------------------

Managed Projects that are not required for dependency reasons can submit a
**Project_Plan** issue to be Self-Managed to the TSC project in Jira. See details
in the `Initial Checkpoint`_ section above. Requests should be submitted before
the start of a release. Requests will be evaluated by the TSC.

The TSC may withdraw a project from the Managed Release at any time.

Installing Features from Self-Managed Projects
----------------------------------------------

Self-Managed Projects will have their artifacts included in the final release
if they are available on-time, but they will not be available to be installed
until the user does a repo:add.

To install an Self-Managed Project feature, find the feature description in the
system directory. For example, NetVirt's main feature:

system/org/opendaylight/netvirt/odl-netvirt-openstack/0.6.0-SNAPSHOT/

Then use the Karaf shell to repo:add the feature:

feature:repo-add mvn:org.opendaylight.netvirt/odl-netvirt-openstack/0.6.0
-SNAPSHOT/xml/features

Grievances
==========

For requirements that are difficult to automatically ascertain if a Managed
Project is following or not, there should be a clear reporting process.

Grievance reports should be filed against the TSC project in Jira. Very urgent
grievances can additionally be brought to the TSC's attention via the TSC's
mailing list.

Process for Reporting Unresponsive Projects
-------------------------------------------

If a Managed Project does not meet the `Responsiveness`_ Requirements, a
**Grievance** issue should be filed against the TSC project in Jira.

Unresponsive project reports should include (at least):

* Select the project being reported in the **ODL_Project** field

* Select the release version in the **ODL_Release** field

* In the **Summary** field, put something like:
  ``Grievance against Project-X``

* In the **Description** field, fill in the details:

  .. code-block:: none

     Document the details that show ExampleProject was slow to review a change.
     The report should include as much relevant information as possible,
     including a description of the situation, relevant Gerrit change IDs and
     relevant public email list threads.

* In the **ODL_Gerrit_Patch**, put in a URL to a Gerrit patch, if applicable

Vocabulary Reference
====================

* Managed Release Process: The release process described in this document.
* Managed Project: A project taking part in the Managed Release Process.
* Self-Managed Project: A project not taking part in the Managed Release
  Process.
* Simultaneous Release: Event wherein all Snapshot Integrated Project versions
  are rewriten to release versions and release artifacts are produced.
* Snapshot Integrated Project: Project that integrates with OpenDaylight
  projects using snapshot version numbers. These projects release together in
  the Simultaneous Release.
* Release Integrated Project: Project that releases independently of the
  Simultaneous Release. These projects are consumed by Snapshot Integrated
  Projects based on release version numbers, not snapshot versions.

.. _Committer Removal Process: https://wiki.opendaylight.org/view/TSC:Main#Committer_Removal_Process
.. _Weather Page: https://jira.opendaylight.org/browse/TSC-132?jql=Project%20%3D%20TSC%20AND%20Type%20%3D%20%22Weather%20Item%22%20
