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

Each milestone is usually evaluated at a TSC meeting, which dictates deadlines.
Nominal deadline is midnight UTC on the particular date. As an example, a date
of 2022-10-06 means that all deliverables are due no later than
2022-10-06T00:00:00Z. The corresponding TSC meeting happens either on
9am or 10pm Pacific time. The slack time between the deadline and the actual call
can be used for justified last-minute work if the need arises (tough in general
WE SHOULD NEVER need it). If such last-minute work results in a SimRel candidate
build not being available, the reasons for that need to be disussed at,
and documented as part of, the corresponding TSC meeting.

.. list-table::
   :widths: 20 20 20 20 20 20 40
   :header-rows: 1
   :stub-columns: 1

   * - **Event**
     - **Argon Dates**
     - **Chlorine Dates**
     - **Sulfur Dates**
     - **Relative Dates**
     - **Start-Relative Dates**
     - **Description**

   * - Release Start
     - 2022-09-22
     - 2022-03-17
     - 2021-09-23
     - Start Date
     - Start Date +0
     - Declare Intention: Submit **Project_Plan** Jira item in TSC project.
   * - Initial Checkpoint
     - 2022-10-06
     - 2022-03-31
     - 2021-10-07
     - Start Date +2 weeks
     - Start Date +2 weeks
     - Initial Checkpoint. All Managed Projects must have completed
       **Project_Plan** Jira items in TSC project.
   * - Release Integrated Deadline
     - 2022-10-20
     - 2022-04-14
     - 2021-10-21
     - Initial Checkpoint + 2 weeks
     - Start Date +4 weeks
     - Deadline for Release Integrated Projects (currently, ODLPARENT,
       YANGTOOLS, MDSAL, CONTROLLER and INFRAUTILS) to provide the desired
       version deliverables for downstream Snapshot Integrated Projects to
       consume.
   * - Version Bump
     - 2022-10-22
     - 2022-04-15
     - 2021-10-22
     - Release Integrated Deadline + 1 day
     - Start Date +4 weeks 1 day
     - Prepare version bump patches and merge them in (RelEng team). Spend the
       next 2 weeks to get green build for all MSI Projects and a healthy
       distribution.
   * - Version Bump Checkpoint
     - 2021-11-03
     - 2022-04-29
     - 2021-11-04
     - Release Integrated Deadline + 2 weeks
     - Start Date +6 weeks
     - Check status of MSI Projects to see if we have green builds and a
       healthy distribution. Revert the MRI deliverables if deemed necessary.
   * - CSIT Checkpoint
     - 2022-11-17
     - 2022-05-13
     - 2021-11-18
     - Version Bump Checkpoint + 2 weeks
     - Start Date +8 weeks
     - All Managed Release CSIT should be in good shape - get all MSI Projects'
       CSIT results as they were before the version bump. This is the final
       opportunity to revert the MRI deliverables if deemed necessary.
   * - Middle Checkpoint
     - 2023-01-12
     - 2022-07-07
     - 2022-01-13
     - CSIT Checkpoint + 8 weeks (sometimes +2 weeks to avoid December holidays)
     - Start Date +16 weeks (sometimes +2 weeks to avoid December holidays)
     - Checkpoint for status of Managed Projects - especially Snapshot
       Integrated Projects.
   * - Code Freeze
     - 2023-02-09
     - 2022-08-04
     - 2022-02-10
     - Middle Checkpoint + 4 weeks
     - Start Date +20 weeks
     - Code freeze for all Managed Projects - cut and lock release branch. Only
       allow blocker bug fixes in release branch.
   * - Final Checkpoint
     - 2023-02-23
     - 2022-08-19
     - 2022-02-24
     - Code Freeze + 2 weeks
     - Start Date +22 weeks
     - Final Checkpoint for all Managed Projects.
   * - Formal Release
     - 2023-03-16
     - 2022-09-19
     - 2022-03-17
     - 6 months after Start Date
     - Start Date +6 months
     - Formal Release for Managed Projects. Self-managed projects usually are released a week later.
   * - Service Release 1
     - 2023-04-27
     - 2022-10-24
     - 2022-04-28
     - 1.5 month after Formal Release
     - Start Date +7.5 months
     - Service Release 1 (SR1)
   * - Service Release 2
     - 2023-07-27
     - 2023-01-23
     - 2022-07-28
     - 3 months after SR1
     - Start Date +10.5 months
     - Service Release 2 (SR2)
   * - Service Release 3
     - 2023-10-26
     - 2023-05-08
     - 2022-10-28
     - 4 months after SR2
     - Start Date +14 months
     - Service Release 3 (SR3)
   * - Service Release 4 (optional, based on documented need)
     - N/A
     - N/A
     - N/A
     - Not Applicable
     - Not Applicable
     - Service Release 4 (SR4) - Final Service Release
   * - Release End of Life
     - 2024-03-21
     - 2023-09-19
     - 2023-03-16
     - 4 months after SR3
     - Start Date +18 months
     - End of Life - coincides with the Formal Release of the current release+2
       versions and the start of the current release+3 versions.
