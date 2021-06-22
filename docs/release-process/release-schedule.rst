================
Release Schedule
================

OpenDaylight releases twice per year. The six-month cadence is designed to
synchronize OpenDaylight releases with OpenStack and OPNFV releases. Dates
are adjusted to match current resources and requirements from the current
OpenDaylight users. Dates are also adjusted when they conflict with holidays,
overlap with other releases or are otherwise problematic.
Dates are the release deadlines intended for managed projects.
Self-managed projects that wants to integrate the distribution have one week
to release once managed projects are ready.

.. list-table::
   :widths: 20 20 20 20 20 40
   :header-rows: 1
   :stub-columns: 1

   * - **Event**
     - **Silicon Dates**
     - **Aluminium Dates**
     - **Relative Dates**
     - **Start-Relative Dates**
     - **Description**

   * - Release Start
     - 2020-09-17
     - 2020-03-16
     - Start Date
     - Start Date +0
     - Declare Intention: Submit **Project_Plan** Jira item in TSC project.
   * - Initial Checkpoint
     - 2020-10-01
     - 2020-03-30
     - Start Date +2 weeks
     - Start Date +2 weeks
     - Initial Checkpoint. All Managed Projects must have completed
       **Project_Plan** Jira items in TSC project.
   * - Release Integrated Deadline
     - 2020-10-15
     - 2020-04-13
     - Initial Checkpoint + 2 weeks
     - Start Date +4 weeks
     - Deadline for Release Integrated Projects (currently, ODLPARENT,
       YANGTOOLS, MDSAL, CONTROLLER and INFRAUTILS) to provide the desired
       version deliverables for downstream Snapshot Integrated Projects to
       consume.
   * - Version Bump
     - 2020-10-16
     - 2020-04-14
     - Release Integrated Deadline + 1 day
     - Start Date +4 weeks 1 day
     - Prepare version bump patches and merge them in (RelEng team). Spend the
       next 2 weeks to get green build for all MSI Projects and a healthy
       distribution.
   * - Version Bump Checkpoint
     - 2020-10-29
     - 2020-04-27
     - Release Integrated Deadline + 2 weeks
     - Start Date +6 weeks
     - Check status of MSI Projects to see if we have green builds and a
       healthy distribution. Revert the MRI deliverables if deemed necessary.
   * - CSIT Checkpoint
     - 2020-11-12
     - 2020-05-11
     - Version Bump Checkpoint + 2 weeks
     - Start Date +8 weeks
     - All Managed Release CSIT should be in good shape - get all MSI Projects'
       CSIT results as they were before the version bump. This is the final
       opportunity to revert the MRI deliverables if deemed necessary.
   * - Middle Checkpoint
     - 2021-01-07
     - 2020-07-06
     - CSIT Checkpoint + 8 weeks (sometimes +2 weeks to avoid December holidays)
     - Start Date +16 weeks (sometimes +2 weeks to avoid December holidays)
     - Checkpoint for status of Managed Projects - especially Snapshot
       Integrated Projects.
   * - Code Freeze
     - 2021-02-22
     - 2020-08-03
     - Middle Checkpoint + 4 weeks
     - Start Date +20 weeks
     - Code freeze for all Managed Projects - cut and lock release branch. Only
       allow blocker bug fixes in release branch.
   * - Final Checkpoint
     - 2021-03-08
     - 2020-08-17
     - Code Freeze + 2 weeks
     - Start Date +22 weeks
     - Final Checkpoint for all Managed Projects.
   * - Formal Release
     - 2021-03-17
     - 2020-09-17
     - 6 months after Start Date
     - Start Date +6 months
     - Formal Release for Managed Projects. Self-managed projects usually are released a week later.
   * - Service Release 1
     - 2021-06-03
     - 2020-10-29
     - 1.5 month after Formal Release
     - Start Date +7.5 months
     - Service Release 1 (SR1)
   * - Service Release 2
     - 2021-07-28
     - N/A
     - 3 months after SR1
     - Start Date +10.5 months
     - Service Release 2 (SR2)
   * - Service Release 3
     - 2021-10-28
     - 2021-03-19
     - 4 months after SR2
     - Start Date +14 months
     - Service Release 3 (SR3)
   * - Service Release 4
     - N/A
     - 2021-06-02
     - Not Applicable
     - Not Applicable
     - Service Release 4 (SR4) - Final Service Release
   * - Release End of Life
     - 2022-03-17
     - 2021-09-13
     - 4 months after SR3
     - Start Date +18 months
     - End of Life - coincides with the Formal Release of the current release+2
       versions and the start of the current release+3 versions.
