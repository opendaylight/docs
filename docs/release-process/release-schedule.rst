================
Release Schedule
================

In an attempt to synchronize with other related open source projects
(e.g., OPNFV and OpenStack), OpenDaylight releases twice per year on
a 6 month cadence. These releases are scheduled for September 7th
and March 7th. These release dates are also used as the beginning
for the subsequent release.

.. list-table::
   :widths: 20 20 20 40
   :header-rows: 1
   :stub-columns: 1

   * - **Event**
     - **Time**
     - **Fluorine**
     - **Description**

   * - Release Start
     - Start Date
     - 2018-03-07
     - Declare Intention: Submit **Project_Plan** Jira item in TSC project

   * - Initial Checkpoint
     - Start Date + 2 weeks
     - 2018-03-22
     - Initial Checkpoint. All Managed Projects must have completed
       **Project_Plan** Jira items in TSC project.

   * - Release Integrated Deadline
     - Initial Checkpoint + 2 weeks
     - 2018-04-07
     - Deadline for Release Integrated Projects (currently ODLPARENT and
       YANGTOOLS) to provide the desired version deliverables for downstream
       Snapshot Integrated Projects to consume.

   * - Version Bump
     - Release Integrated Deadline + 1 day
     - 2018-04-08
     - Prepare version bump patches and merge them in (RelEng team). Spend the
       next 2 weeks to get green build for all MSI Projects and a healthy
       distribution.

   * - Version Bump Checkpoint
     - Release Integrated Deadline + 2 weeks
     - 2018-04-21
     - Check status of MSI Projects to see if we have green builds and a
       healthy distribution. Revert the MRI deliverables if deemed necessary.

   * - CSIT Checkpoint
     - Version Bump Checkpoint + 2 weeks
     - 2018-05-07
     - All Managed Release CSIT should be in good shape - get all MSI Projects'
       CSIT results as they were before the version bump. This is the final
       opportunity to revert the MRI deliverables if deemed necessary.

   * - Middle Checkpoint
     - CSIT Checkpoint + 8 weeks
     - 2018-07-05
     - Checkpoint for status of Managed Projects - especially Snapshot
       Integrated Projects.

   * - Code Freeze
     - Middle Checkpoint + 4 weeks
     - 2018-08-07
     - Code freeze for all Managed Projects - cut and lock release branch. Only
       allow blocker bugfixes in release branch.

   * - Final Checkpoint
     - TSC meeting 2 weeks after Code Freeze
     - 2018-08-23
     - Final Checkpoint for all Managed Projects.

   * - Formal Release
     - 6 months after Start Date
     - 2018-09-07
     - Formal release

   * - Service Release 1
     - 1 month after Formal Release
     - 2018-10-07
     - Service Release 1 (SR1)

   * - Service Release 2
     - 2 months after SR1
     - 2018-12-07
     - Service Release 2 (SR2)

   * - Service Release 3
     - 2 months after SR2
     - 2019-02-07
     - Service Release 3 (SR3)

   * - Service Release 4
     - 3 months after SR3
     - 2019-05-07
     - Service Release 4 (SR4) - final service release

   * - Release End of Life
     - 4 months after SR4
     - 2019-09-07
     - End of Life - coincides with the Formal Release of the current release+2
       versions and the start of the current release+3 versions
