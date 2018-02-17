***************
Managed Release
***************

Managed Release Summary
=======================

Managed Relese Goals
====================

Reduce Overhead on Release Team
-------------------------------

The Managed Release model will allow the release team to focus their efforts
on a smaller set of more stable, more responsive projects.

Reduce Overhead on Projects
---------------------------

The Managed Release model will reduce the overhead both on projects taking
part in the Manged Release and unmanaged projects.

Managed Projects will have fewer, smaller checkpoints consisting of only
information that is maximally helpful for driving the release process. Much of
the information collected at checkpoints will be automatically scraped,
requiring no effort from projects. Additionally, Managed Release projects
should have a more stable development environment, as the projects who can
break the jobs they depend on will be a smaller set, more stable and more
responsive.

Projects that are unmanaged will enjoy a drastically less overhead. They will
be free to develop in their own way, simply providing their artifacts to
include in the final release. They will not be required to submit any
checkpoints, will not be expected to work so closely with the rest of the
OpenDaylight community to resolve breakages.

Enable Timely Releases
----------------------

The Managed Release process will reduce the set of projects who must
simultaneously become stable at release time. The release and test teams will
be able to focus on orchestrating a quality release for a smaller set of more
stable, more responsive projects. The release team will also have greater
latitude to step in and help projects that are required for dependency reasons
but may not have a large set of active contributors.

Managed Projects
================

Managed Projects Summary
========================

Managed projects are either required by required by most applications for
dependency reasons or are mature, stable, responsive projects that are
consistently able to take part in releases without jeopardizing them. Managed
projects will receive additional support from the test and release teams to
further their stability and make sure OpenDaylight releases go out on-time. To
enable this extra support, managed projects will be given less autonomy than
OpenDaylight projects have historically been granted.

Managed Projects for Dependency Reasons
---------------------------------------

Requirements for Managed Projects
---------------------------------

Healthy Community
+++++++++++++++++

Managed Projects should strive to have a healthy community.

Responsiveness
##############

Managed projects should be responsive over email, IRC, Gerrit, Jira and in
regular meetings.

All committters should be subscribed to their project's mailing list and the
release list.

For the following particularly time-sensitive events, an appropriate response
is expected in two business days.

* RC or SR candidate feedback.
* Major disruptions to downstream projects where a weather item Jira was not
present and the pending breakage was not reported to the release list.

TODO: Guidelines for response time to other events

If anyone feels that a managed project is not responsive, a grievance process
is in place to clearly handle the situation and keep a record for future
consideration by the TSC.

Active Committers
#################

Managed projects should have sufficient active committers to review
contributions in a timely manner, support potential contributors, keep CSIT
healthy and generally effectively drive the project.

If a managed project is shown to not have sufficient active committers the TSC
may step in and appoint additional committers.

Managed projects should regularly prune their committer list to remove
inactive committers.

TSC Attendance
##############

Managed projects are required to send a representative to attend TSC meetings.

The representative must be a committer to the project or a proxy, designated by
an email to the TSC mailing list.

Representatives will make an entry into the meeting minutes to record their
presence. The minutes will be scraped per-release to gather attendance
statistics. If a project doesn't provide a representative for at least half
of TSC meetings a grievance will be filed for future consideration.

Checkpoints Submitted On-Time
+++++++++++++++++++++++++++++

The checkpoints described in <TODO section link> are expected to be submitted
no more than <TODO days> late.

Required Jobs Running
+++++++++++++++++++++

Managed projects are required to have certain jobs running and healthy.

* Distribution check job (voting)
* Validate autorelease job (voting)
* Merge job (non-voting)
* Sonar job (non-voting)
* CLM job (non-voting)

Depend only on Managed Projects
+++++++++++++++++++++++++++++++

Managed projects should only depend on other managed projects.

If a project wants to be managed but depends on unmanaged projects, they
should work with their dependencies to become managed at the same time or
drop any unmanaged dependencies.

Managed Release Process
-----------------------

Managed Release Checkpoints
+++++++++++++++++++++++++++

Checkpoints are designed to be mostly automated, to be maximally effective at
driving the release process and to impose as little overhead on projects as
possible.

There will be an initial checkpoint two weeks after the start of a release,
monthly checkpoints throughout the release and a final checkpoint at the end
of a release.

Initial Checkpoint
##################

An initial checkpoint will be collected two weeks after the start of each
release. The release team will review the information collected and report
it to the TSC at the next TSC meeting.

Projects will need to create the following artifacts:

* High-level, human-readable description of what the project plans to do this
release. This should be submitted as a Jira issue against the TSC project.
  * TODO: Example Jira
* If a project is transitioning from unmanaged to unmanned or vice verse, a
Jira raised against the TSC project highlighting the request.
  * TODO: Example Jira
* Weather items that may impact other project should be submitted as Jira
issues.
  * TODO: Example Jira

The remaining artifacts will be automatically scraped:

* Blocker bugs that were raised between the previous RC0 and release.
* Grievances raised against the project during the last release.

Monthly Checkpoints
###################

One month after the initial checkpoint, repeating once a month up to 30 days
before RC0, a midterm checkpoint will be collected. The release team will
review the information collected and report it to the TSC at the next TSC
meeting. All information for midterm reports will be automatically collected.

* Open Jira bugs marked as blockers.
* Open Jira issues tracking weather items.
* Statistics about jobs.
  * Autorelease failures per-project.
* Grievances raised against the project since the last checkpoint.

Final Checkpoint
################

At RC0 a final checkpoint will be collected by the release team and presented
to the TSC at the next TSC meeting.

Projects will need to create the following artifacts:

* High-level, human-readable description of what the project did this release.
This should be submitted as a Jira issue against the TSC project. This will be
reused for external communication/marketing for the release.
* Release notes and user guide submitted to the docs project.

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

Moving a Project from Unmanaged to Managed
------------------------------------------

Unmanaged projects can request to become managed by submitting a ticket to the
TSC's Jira. Requests sholuld be submitted before the start of a release. The
requesting project should make it clear that they meet the Managed Release
Requirements.

The TSC will evaluate requests to become managed and inform projects of the
result and the TSC's reasoning no later than the first start of the the
release or one week after the request was submitted, whichever comes last.

Unmanaged Projects
==================

Requirements for Unmanaged Projects
-----------------------------------

Unmanaged Release Process
-------------------------

Checkpoints
+++++++++++

* There are no checkpoints for unmanaged projects.

Moving a Project from Managed to Unmanaged
------------------------------------------

Managed projects that are not required for dependency reasons can submit a
request to be unmanaged to the TSC's Jira. Requests should be submitted before
the start of a release. Requests will be evaluated by the TSC.

TODO: Example Jira

The TSC may withdraw a project from the Managed Release at any time.

Grevences
=========

For requirements that are difficult to automatically ascertain if a Managed
Project is following or no, there should be a clear reporting process in place.

Grievance reports should be filed against the TSC Jira. Very urgent grievances
can additionally be brought to the TSC's attention by emailing the TSC's list.

Process for Reporting Unresponsive Projects
-------------------------------------------

If a Manged Project is doesn't meet the Responsiveness Requirements, a
grievance report should be filed against the TSC Jira.

TODO: Link "Responsiveness Requirements" to section

Unresponsive project reports should include (at least):

* Project being reported
* Description
* Relevant Gerrit change IDs
* Relevant public email list posts
