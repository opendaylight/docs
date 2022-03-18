****************
Super Committers
****************

Super committers are a group of TSC-approved individuals within the
OpenDaylight community with the power to merge patches on behalf of projects
during approved Release Activities.


Super Committer Activities
--------------------------

Super committers are given super committer powers **ONLY** during TSC-approved
activities and are not a power that is active on a regular basis. Once one of
the TSC-approved activities are triggered, :doc:`helpdesk <lfdocs:helpdesk>`
will enable the permissions listed for the respective activities for the
duration of that activity.

Code Freeze
'''''''''''

.. note::

   This activity has been pre-approved by the TSC and does not require a TSC
   vote. :doc:`Helpdesk <lfdocs:helpdesk>` should be notified to enable the
   permissions and again to disable the permissions once activities are
   complete or use the self service job to activate the rights for a job.

Super committers are granted powers to merge blocking patches for the duration
code of freeze until a release is approved and code freeze is lifted. This
permission is only granted for the specific branch that is frozen.

The following powers are granted:

* Submit button access

During this time Super Committers can **ONLY** merge patches that have a +2
Code-Review by a project committer approving the merge, and the patch passes
Jenkins Verify check. If neither of these conditions are met then **DO NOT**
merge the patch.

Version bumping (Release Work)
''''''''''''''''''''''''''''''

.. note::

   This activity has been pre-approved by the TSC and does not require a TSC
   vote. :doc:`Helpdesk <lfdocs:helpdesk>` should be notified to enable the
   permissions and again to disable the permissions once activities are
   complete.

Super committers are granted powers to merge version bump related patches for
the duration of version bumping activities.

The following powers are granted:

* Vote Code-Review +2
* Vote Verified +1
* Remove Reviewer
* Submit button access

These permissions are granted to allow super committers to push through version
bump patches with haste. The Remove Reviewer permission is to be used only for
removing Jenkins vote caused by a failed distribution-check job, if that
failure is caused by a temporary version inconsistency present while the bump
activity is being performed.

Version bumping activities come in 2 forms.

1. Post-release Autorelease version bumping
2. MRI project version bumping

Case 1, the TSC has approved an official OpenDaylight release and after the
binaries are released to the world all Autorelease managed projects are version
bumped appropriately to the next development release number.

Case 2, During the Release Integrated Deadline of the release schedule MRI
projects submit desired version updates. Once approved by the TSC Super
Committers can merge these patches across the projects.

Ideally the version bumping activities should not include code modifications,
if they do +2 Code-Review vote should be complete by a committer on the project
to indicate that they approve the code changes.

Once version bump patches are merged these permissions are removed.

Exceptional cases
'''''''''''''''''

Any activities not in the list above will fall under the exceptional case in
which requires TSC approval before Super Committers can merge changes. These
cases should be brought up to the TSC for voting.

Self-service
''''''''''''

All of the above states (super committers, code freeze, release work, version
bump) on the Gerrit branch can be achieved using a self-serviced Jenkins CI job
``autorelease-gerrit-branch-lock-${STREAM}``. The job be triggered by anyone
in the releng committers group.

.. note::

   Before starting the job to lock/unlock the branch, check the branch state
   using the link.

   https://git.opendaylight.org/gerrit/gitweb?p=All-Projects.git;a=blob_plain;f=project.config;hb=HEAD


Super Committers
----------------

========================= =================== =================================
Name                      IRC                 Email
========================= =================== =================================
Anil Belur                abelur              abelur@linux.com
Jamo Luhrsen              jamoluhrsen         jluhrsen@gmail.com
Luis Gomez                LuisGomez           ecelgp@gmail.com
Robert Varga              rovarga             nite@hq.sk
Thanh Ha                  zxiiro              zxiiro@gmail.com
========================= =================== =================================
