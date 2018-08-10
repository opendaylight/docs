================
Release Schedule
================

In an attempt to synchronize with other related open source projects
(e.g., OPNFV and OpenStack), OpenDaylight releases twice per year on
a 6 month cadence. These releases are scheduled for September 7th
and March 7th. These release dates are also used as the beginning
for the subsequent release.

.. list-table::
   :widths: 20 20 20 20 40
   :header-rows: 1
   :stub-columns: 1

   * - **Event**
     - **Odd Release Date**
     - **Even Release Date**
     - **Relative Date**
     - **Start-Relative Date**
     - **Description**

   * - Release Start
     - 2018-03-07
     - 2018-09-07
     - Start Date
     - Start Date +0
     - Declare Intention: Submit **Project_Plan** Jira item in TSC project

   * - Initial Checkpoint
     - 2018-03-22
     - 2018-09-21
     - Start Date + 2 weeks
     - Start Date +2 weeks
     - Initial Checkpoint. All Managed Projects must have completed
       **Project_Plan** Jira items in TSC project.

   * - Release Integrated Deadline
     - 2018-04-07
     - 2018-10-05
     - Initial Checkpoint + 2 weeks
     - Start Date +4 weeks
     - Deadline for Release Integrated Projects (currently ODLPARENT and
       YANGTOOLS) to provide the desired version deliverables for downstream
       Snapshot Integrated Projects to consume.

   * - Version Bump
     - 2018-04-08
     - 2018-10-06
     - Release Integrated Deadline + 1 day
     - Start Date +4 weeks 1 day
     - Prepare version bump patches and merge them in (RelEng team). Spend the
       next 2 weeks to get green build for all MSI Projects and a healthy
       distribution.

   * - Version Bump Checkpoint
     - 2018-04-21
     - 2018-10-19
     - Release Integrated Deadline + 2 weeks
     - Start Date +6 weeks
     - Check status of MSI Projects to see if we have green builds and a
       healthy distribution. Revert the MRI deliverables if deemed necessary.

   * - CSIT Checkpoint
     - 2018-05-07
     - 2018-11-02
     - Version Bump Checkpoint + 2 weeks
     - Start Date +8 weeks
     - All Managed Release CSIT should be in good shape - get all MSI Projects'
       CSIT results as they were before the version bump. This is the final
       opportunity to revert the MRI deliverables if deemed necessary.

   * - Middle Checkpoint
     - 2018-07-05
     - 2018-12-28
     - CSIT Checkpoint + 8 weeks
     - Start Date +16 weeks
     - Checkpoint for status of Managed Projects - especially Snapshot
       Integrated Projects.

   * - Code Freeze
     - 2018-08-07
     - 2019-01-25
     - Middle Checkpoint + 4 weeks
     - Start Date +20 weeks
     - Code freeze for all Managed Projects - cut and lock release branch. Only
       allow blocker bugfixes in release branch.

   * - Final Checkpoint
     - 2018-08-23
     - 2019-02-14
     - TSC meeting 2 weeks after Code Freeze
     - Start Date +22 weeks (rounded up to next Thursday for TSC meeting)
     - Final Checkpoint for all Managed Projects.

   * - Formal Release
     - 2018-09-07
     - 2019-03-07
     - 6 months after Start Date
     - Start Date +6 months
     - Formal release

   * - Service Release 1
     - 2018-10-07
     - 2019-04-07
     - 1 month after Formal Release
     - Start Date +7 months
     - Service Release 1 (SR1)

   * - Service Release 2
     - 2018-12-07
     - 2019-06-07
     - 2 months after SR1
     - Start Date +9 months
     - Service Release 2 (SR2)

   * - Service Release 3
     - 2019-02-07
     - 2019-08-07
     - 2 months after SR2
     - Start Date +11 months
     - Service Release 3 (SR3)

   * - Service Release 4
     - 2019-05-07
     - 2019-11-07
     - 3 months after SR3
     - Start Date +14 months
     - Service Release 4 (SR4) - final service release

   * - Release End of Life
     - 2019-09-07
     - 2020-03-07
     - 4 months after SR4
     - Start Date +18 months
     - End of Life - coincides with the Formal Release of the current release+2
       versions and the start of the current release+3 versions
