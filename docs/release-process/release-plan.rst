############
Release Plan
############

Introduction
============

This is a Simultaneous Release Plan for the Oxygen release of OpenDaylight.
This is the eighth release of OpenDaylight and this release plan has some
differences from its predecessors. Please read it carefully to understand the
requirements to participate and the requirements for each milestone.

Projects may choose to participate or not based upon their readiness and
desire to join the Simultaneous Release. This plan is structured as laid
out in the OpenDaylight :doc:`project-lifecycle`.

Definitions
===========

.. _api:

:APIs: Application Programming Interface. For the purposes of OpenDaylight an
    API is any form of interface that is exposed to other ODL apps/services
    and/or exposed to third party services or external applications. This
    includes all Java classes/interfaces declared public and exported from an
    OSGi bundle, all YANG models, all Karaf feature names/locations, all config
    file YANG schemas, and all REST/RESTCONF calls including the full URL with
    options, etc.

:API Classifications: For the purposes of being declared **Stable**,
    **Provisional**, or **Tentative**, an API is a collection of code that
    provides some high-level functionality, e.g., flow programming or MD-SAL
    data store access. When listed on a release plan, APIs should be given a
    short name, classified into one of the three categories, and have the
    supporting bundles (if/when they exist) listed as well.

    :Stable API: An API that can be accessed external to your project, existed
        in a previous version of ODL, and will continue to exist in the current
        version of ODL with no changes. By definition, all Stable APIs are
        frozen throughout this entire release cycle. Note that all APIs are
        assumed to be **Stable APIs** unless called out as **Provisional**
        and/or **Tentative** in a release plan.
    :Provisional API: An API that can be accessed external to your project and
        is introduced in the current release, or an externally accessible API
        that existed in a previous version of ODL but is being modified for the
        current release.
    :Tentative API: A **Provisional API** that will be provided in a best
        effort manner, but which may or may not be delivered in the final
        release. The Go/NoGo status of Tentative APIs must be made by M2.

Milestones
----------

:Functionality Freeze (M2): *(used to be called feature freeze)*
    No new externally visible functionality is to be added to the current
    release of ODL. All provisional APIs are at least functional (at a
    beta-quality level) if not yet fully tested.

:API Freeze (M3): All externally accessible APIs (Stable and Provisional) may
    not be modified. An API exception process (similar to `the one used in
    helium <https://wiki.opendaylight.org/view/Simultaneous_Release:Helium:Suggestions_for_Post_API_Freeze_Exception_Handling>`__)
    will allow for critical changes to APIs after API freeze with the consent of
    the consuming projects. APIs include, but are not limited to, all Java
    classes/interfaces declared public and exported from an OSGi bundle, all
    YANG models, all Karaf feature names/locations, all config file YANG
    schemas, and all REST/RESTCONF calls including the full URL with options.

:Code Freeze (M4): No new features/functionality are to be allowed into the
    current release. Only errors/bugs identified in the bugzilla system are
    allowed. The exceptions to this include new tests, and documentation.
    Distribution (Karaf) packaging must be complete. Errors/bugs found after
    Code Freeze are still bugs and they may be created and worked on. This
    includes packaging bugs found as well.

:String Freeze (M4): All text strings used within ODL may not be changed. Final
    documentation and localization teams may rely on these strings not changing
    for the current release.

:Release Candidate (RC): A fully-built, complete version of the current ODL
    release. This includes all code, documentation, and packaging that make up
    the final user-deliverable set of artifacts. After RC0, new RCs will be
    continually built, e.g., once per day, to enable rapid testing and fixing
    of bugs.

    -  Note that this definition makes the dates for RCs and the final
       release as targets, but they may need to be adjusted based on
       project readiness and any remaining blocking bugs.
    -  While we will build daily release candidates, the notion of RC#s
       (increasing in number at a longer cadence, e.g., weekly) will
       remain to aid in planning when bug fixes are expected.
    -  During the RC process blocking bugs will be tracked both on a
       spreadsheet and in bugzilla.
    -  During the RC process regular, e.g., daily, meetings may be held
       on IRC to identify and address critical issues as they arise.
    -  Projects not in the autorelease and the distribution feature index
       by RC0 cutoff will be dropped from the Oxygen release.

Features
--------

:Feature: A logical grouping of code and functionality in a project. While a
    Feature is usually a Karaf feature, it could also be any other component or
    grouping.

:Top-Level Feature: A Feature that provides one of the major pieces of
    functionality delivered by a project. In general, this should not require
    an understanding of the project's internals to know when/how to install it.
    Most projects will have a small number of, maybe even only one, Top-Level
    Features. In many cases the Top-Level Feature will actually only be a
    meta-feature grouping together lower-level features, which would be less
    obvious for an outsider to consume.

:User-Facing Feature: A Top-Level Feature that somebody looking to install and
    run OpenDaylight should know about. They should be able to install the
    Feature and should be able to tell that it's been installed in the form of
    new user interface elements, support for new southbound devices, or other
    mechanisms. For example, ``odl-mdsal-broker`` is not a user-facing feature
    as it does nothing on its own. However, ``odl-mdsal-apidocs`` likely is as
    it generates a user interface. Features that don't provide explicit user
    interfaces can still be user-facing. For example, ``odl-bgpcep-bgp``
    provides no explicit user interface, but does enable BGP support that
    a user might care about.

Stable and Extended Features
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

:Stable Feature: A Top-Level Feature that meets the following criteria. The TSC
    is expected to review each potentially stable feature during the project's
    release review and ensure that it meets these requirements.

    .. note::

       Any of these requirements can be waived by the TSC for a given feature.
       However, the TSC is encouraged to find a way to make the test fit the
       situation before granting a waiver.

    -  The feature must lie within the declared scope of the project.
    -  The feature is part of a Mature project (as defined in the project
       lifecycle).
    -  The feature was present in the previous release.
    -  The feature is only dependent on other stable features (or
       sub-components of other stable features).
    -  The feature and its dependencies must meet the `criteria for being
       accepted into Maven
       Central <http://central.sonatype.org/pages/requirements.html>`__.
    -  The feature provides adequate documentation.
    -  The feature has 75% or higher test coverage as reported by Sonar.

       .. Note::

          You can find individual module/feature test coverage
          numbers by: (i) going to a sonar report, (ii) click on the
          percentage under “Overall Coverage”, (iii) use the scrollable
          list on the left to find the relevant module/bundle. It helps
          if your feature's code is all under a single subdirectory and
          that there is nothing else in that directory.

    -  All externally-facing, i.e., accessible from outside the JVM, APIs
       in the feature must be protected by community-accepted
       authentication/authorization mechanisms, e.g., using ``aaa-authn``
       to protect RESTCONF APIs
    -  The feature must have at least one automated test for each of:

       -  *functionality* (previously called a system test) to show the
          basic functionality works
       -  *cluster compatibility* to show the feature works in a 3-node
          cluster using the clustered data store
       -  *scalability* to show how large a system, e.g., number of
          hosts, switches, or links, the feature can handle
       -  *performance* to show how many operations, e.g., transactions,
          flows, linkstate events, per second the feature can handle
       -  *longevity/stability* to show the feature can run for a period
          of time under load without ill effect
       -  In each case, the tests must show no unexplained regressions
          from previous releases.

    -  The feature is backward compatible with the previous release of
       the feature, e.g., any APIs that were not deprecated in the
       previous release still exist with the same signatures.

       .. note::

          This does not prohibit adding new functions, REST URLs, or data
          items, but typically would prohibit removing or changing existing
          such things.

    -  The feature has no known vulnerabilities that are older than a
       week and classified as `important by the security response
       team <https://wiki.opendaylight.org/view/Security:Vulnerability_Management#Risk_Assessment>`__
       or `high by their CVSS score in a
       CVE <https://nvd.nist.gov/cvss.cfm>`__. If a fix for such a
       vulnerability lies outside of OpenDaylight, the TSC may choose to
       relax the requirement on a case-by-case basis.
    -  The feature commits to providing a migration strategy from the
       previous release. This will ideally take the form of scripts or
       automatic upgrade support, but could also come in the fom of
       documentation.

:Extended Feature: A top-level feature that is a part of the Oxygen release and
    does not meet the Stable Feature criteria.

Release Distributions
---------------------

:Oxygen Stable Distribution: A Karaf distribution containing the collection of
    Stable Features as they are compiled into the Oxygen Stable Release Feature
    Repository hosted in the Integration project.

:Oxygen Extended Distribution: A Karaf distribution containing the collection
    of both Stable and Extended Features as they are compiled in the Oxygen
    Extended Release Feature Repository hosted in the Integration project.

Project Offsets
---------------

Projects are classified into one of 3 offsets:

:offset zero: deadlines are at the dates listed
:offset one: deadlines are *generally*\ :sup:`1`\ at the listed dates + 1 week
:offset two: deadlines are *generally*\ :sup:`1`\ at the listed dates + 2 weeks

    .. note::

       The intent is that offset two projects have no other projects depending on them in this release.

This is intentionally flattening the actual dependency graph

-  The full project-level graph is at least 10 levels

   -  e.g., odlparent => yangtools => controller => openflowjava =>
      openflowplugin => ovsdb => sfc => groupbasedpolicy => nic =>
      integration/distribution

-  The idea is to hit an 80/20 point where projects can have some lag to
   get new APIs from those they depend on

   -  If projects are in the same offset but need APIs from each other this
      should be noted and planned (possibly by asking for them sooner than
      would be required) as part of the API request negotiation at M1

The intent is for projects that form key infrastructure of all other projects
(e.g., odlparent, yangtools, and controller) to operate at **offset zero**,
projects which provide key network services (e.g., OpenFlow and OVSDB) to
operate at **offset one**, and projects that others don't depend on to operate
at **offset two**.

\ :sup:`1`\ Deadlines for **Release Candidates** (RC0, RC1 and RC2) and the
release are the same regardless of offset. Deadlines for M1 through M4 are
offset by +1 week and +2 weeks. Full details can be found in the dates listed
in the `Schedule`_ table.

.. _reqs-for-participation:

Requirements for Participation
==============================

In order to participate in the simultaneous release, a project must do the
following things.

#. Planning

   -  Projects must declare their intent to participate in the
      Simultaneous Release by M0. This is accomplished by sending the
      first milestone readout mail and adding the project to the table
      in `Participating Projects`_.
   -  Participating projects must publish a candidate Release Plan
      shortly after M0, and declare their final Release Plan by M1.

      -  Participating project Release Plans must contain Milestones
         that minimally line up with the Simultaneous Release Plan
         Milestones
      -  Release plans should contain a complete list of the exposed
         :ref:`APIs <api>` including the properties defined above,
         e.g., the name of the Java interface or YANG-file, a short
         name, and the list of supporting bundles.
      -  Per-project release plans now include sections for
         cross-project negotiation of provided APIs and for noting
         cross-project incompatibilities.

         -  Projects are required to negotiate cross-project
            dependencies for any new or modified APIs.
         -  Projects are encouraged to think about any cross-project
            incompatibilities and how to resolve them, if possible, as
            part of their release plans.

#. Leadership & Communication

   -  Each project must elect a Project Lead as described in the `TSC
      charter <https://www.opendaylight.org/about/governance/tsc-charter>`__,
      section 7.

      -  Phil Robb or Casey Cain will help projects with this process
         and it must be completed by M0.
      -  The results of the election, and other changes to the project
         lead during this release, should be reported by

         #. Updating the project facts template for the project on its
            main wiki page
         #. Updating the `Participating Projects`_ table of this release
         #. Sending an e-mail to the -dev,
            `release <mailto:release@lists.opendaylight.org>`__, and
            `tsc <mailto:tsc@lists.opendaylight.org>`__ lists

   -  The Project Lead is expected to be responsible for the the project
      meeting deadlines, interacting with other projects, and
      interacting with the TSC
   -  The Project Lead will be subscribed to the `release mailing
      list <mailto:release@lists.opendaylight.org>`__ and must respond
      to requests sent to the project in a timely fashion—defined as
      **two business days**.

      -  If Project Leads are not be able to do so, they should (i) have
         somebody else stand in and do this on their behalf, (ii) send a
         mail to the `release mailing
         list <mailto:release@lists.opendaylight.org>`__ indicating this
         and the time period, and (iii) note the same information in the
         participating projects section of the release plan.

   -  The project lead is expected to, at a minimum, read the `release
      mailing
      list <https://lists.opendaylight.org/mailman/listinfo/release>`__,
      read the `TSC meeting minutes <https://wiki.opendaylight.org/view/TSC:Main#Meeting_Minutes>`__, and
      read the minutes from the IRC release
      meetings - see `Simultaneous Release Developer Meetings`_. The
      project lead is strongly encouraged to attend these meetings if at
      all possible and some representative from the project is expected
      to attend each IRC meeting if at all possible.
   -  In addition to the Project Lead, each project must designate a
      Test Contact and Documentation Contact to handle test related
      communication.
   -  All release-critical correspondence that requires a response will
      have a subject line containing “PLEASE RESPOND BY ” or “URGENT
      RESPONSE REQUIRED/NEEDED”

      -  Please limit traffic to correspondence directly relating to the
         release
      -  The TSC collects response time metrics for projects both to
         inform our planning and to measure project maturity going
         forward.

#. Service Release Participation

   -  All projects participating in the release are also required to
      participate in the stability releases described in the
      `schedule`_ after the formal release.

#. Modularity

   -  Modules that are not intended to interface with the controller via
      REST/other non-Java RPC mechanism must be OSGi bundles.
   -  OSGi bundles should be reasonably granular.
   -  OSGi bundles should be grouped into Karaf features by M2 including
      possibly defining some features as user-facing.

      -  Each feature should be tested in every appropriate jenkins job
         (at least -verify, -merge, and -integration) using the
         “SingleFeatureTest” as defined in the `Karaf step-by-step
         guide <https://wiki.opendaylight.org/view/Karaf:Step_by_Step_Guide>`__

#. Quality

   -  No later than M1, each project must have a “-verify” Jenkins Job
      which verifies that the project builds and passes test for each
      new patch pushed to gerrit.
   -  No later than M1 as part of the Gerrit/Jenkins merge process,
      i.e., the Jenkins “-merge” job, participating projects must push
      their binary artifacts to the Nexus repository
   -  No later than M1, each project must have a Jenkins Job which
      rebuilds and retests to an appropriate level when a project it
      depends on publishes new artifacts, i.e., a Jenkins “-integration”
      job.
   -  No later than M1, each project primarily written in Java must be
      reporting unit and/or integration test coverage via sonar. (See
      `instructions on reporting test code
      coverage <https://wiki.opendaylight.org/view/CrossProject:HouseKeeping_Best_Practices_Group:Integration_Test>`__)

      -  Projects, especially ones that form key infrastructure for
         other projects, are strongly encouraged to set goals for code
         coverage and reported bugs. Doing so will be seen favorably
         when evaluating projects for advancement in the `Project
         Lifecycle <http://docs.opendaylight.org/en/latest/release-process/project-lifecycle.html>`__.
      -  Stable Features must have appropriate unit and/or integration
         test coverage of at least 75% prior to M4.

#. Testing

   -  In addition to setting up appropriate Jenkins -verify, -merge, and
      -integration jobs by M1, projects are expected to provide adequate
      unit, integration and system tests.

      -  Stable Features must have established integration and system
         tests as required for Mature project Stable Features.

   -  The coverage provided by unit tests and integration tests should
      be reported to sonar by M1. (See `instructions on reporting test
      code coverage
      <https://wiki.opendaylight.org/view/CrossProject:HouseKeeping_Best_Practices_Group:Integration_Test>`__)
   -  Participating projects must describe a basic system test per
      top-level feature and a comprehensive system test including
      functionality, cluster, scalability, performance,
      longevity/stability per stable feature prior on M2.
   -  Participating projects must run at least one basic automated
      system test for each top-level feature and several automated
      system tests including functionality, cluster, scalability,
      performance, longevity/stability for each stable feature by M4.

      .. note::

         The system test requirements can be waived by the TSC for a given
         feature if for example the top-level feature is tested through another
         top-level feature.

      .. note::
         Projects running system test outside OpenDaylight (external Lab) are
         required to report system test results in a timely fashion after
         release creations, e.g., weekly, RC, and formal releases.

   -  System tests are expected to reliably pass. If a system test turns
      out to be unstable and intermittently fails, it must be fixed or
      disabled. If intermittent system tests are seen as having value to
      the project, they can be written and run on-demand by the project,
      but won't be run as part of the automated CSIT suite.
   -  Further details and requirements can be found in the
      `schedule`_ and `Oxygen project integration and test requirements
      <https://wiki.opendaylight.org/view/Integration/Oxygen_Traditional_Release_Project_Integration_Requirements>`__
      below.

#. Documentation

   -  Each participating project is expected to identify the kinds of
      documentation that would be useful (e.g., installation guide, user
      guide, developer guide) and provide them as part of the release.
   -  More details on the expectations can be found in the
      `schedule`_ and `Oxygen project documentation requirements
      <https://wiki.opendaylight.org/view/Documentation/Oxygen/Project_Documentation_Requirements>`__
      below.

#. Code Hygiene

   -  No uses of System.out.println in non-test code.
   -  No dependencies on 3rd party (non-ODL) snapshot versions
   -  Willing to use agreed-upon versions for dependencies (both
      3rd-party and ODL), i.e., to eliminate version skew
   -  Willing to find source code for 3rd-party dependencies and/or move
      to versions or alternatives for which source code can be found.

#. Distribution

   -  All projects must support a Karaf-based distribution model
      including defining Karaf features and adding them to integration
      repository no later than M2.
   -  No later than M2, each project must have a “distribution-check"
      Jenkins Job to verify changes in the code do not break integration
      distribution.

#. Meeting Deadlines

   -  All projects are expected to meet the deadlines laid out in the
      `schedule`_ below.

      -  To indicate this, the project lead/contact is expected to
         provide and send a milestone readout to the `release mailing
         list <https://lists.opendaylight.org/mailman/listinfo/release>`__
         by 23:59:59 UTC on the date listed for the the appropriate
         offset at each milestone.
      -  Most information will be communicated by filling out
         appropriate information in the `Oxygen Tracking
         Spreadsheet <https://docs.google.com/spreadsheets/d/1dYOY99twqHV_Q0YorAOOxmL0aFc3icNXg8qA_zGwKyA/>`__,
         but a mail should still be sent indicating that the information
         has been filled in. Any other information or questions can be
         included in that mail.

   -  If a project cannot make a deadline, the project lead/contact must
      write a summary of what was missed, why, the course correction
      that will be taken, and its impact on other projects.

      -  For **offset two** project this is mainly intended to be
         reflective and to help inform the release process.
      -  For **offset zero** and **offset one** projects, this should be
         completed within 24 hours of missing the deadline and must be
         presented to the TSC at the first TSC meeting after the
         deadline.

   -  All Milestone deliverables will be verified by the Oxygen release
      management staff and/or the TSC.

      .. note::

         For deliverables defined only in the project's release plan—and not as
         a requirement in this document—the release management staff and/or TSC
         will verify that the status of the deliverables has been reported.
         Oxygen release management staff and/or the TSC may also, but are not
         required to, verify the delivered functionality.

.. raw:: mediawiki

   {{:Integration/Oxygen_Traditional_Release_Project_Integration_Requirements}}

.. raw:: mediawiki

   {{:Documentation/Oxygen/Project Documentation Requirements}}

Milestones, Release Candidates, and Service Releases
====================================================

-  Milestones are spaced roughly 4 weeks apart taking into account
   significant holidays.
-  Release Candidates (RC) are spaced roughly 1 week apart
-  Service Releases are roughly 4, 12, 20, and 30 weeks after the Formal
   Oxygen Release and are intended to continue at least until the after
   the next formal release of the OpenDaylight, presumably Oxygen.

Schedule Framework
------------------

This Simultaneous Release plan has been drafted based on the `Schedule Framework
<https://wiki.opendaylight.org/view/Simultaneous_Release:Release_Schedule_Framework>`__


Schedule
--------

\ :sup:`2`\ The deadline to meet and report the results of each
milestone is at 23:59:59 UTC on the listed day. That corresponds to 4p
or 5p pacific time.

Official release template is: `Release Plan Template <https://wiki.opendaylight.org/view/Simultaneous_Release:Per-Project_Oxygen_Release_Plan_Template>`__

+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Milestone                              | Offset 0 Date\ :sup:`2`\               | Offset 1 Date\ :sup:`2`\               | Offset 2 Date\ :sup:`2`\               | Events                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
+========================================+========================================+========================================+========================================+====================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================+
| M0                                     | 2017/9/7                               | N/A                                    | N/A                                    | **Oxygen Simultaneous Release Open**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. Contact Freeze                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Projects must have declared intent to participate in Simultaneous Release                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Projects must have elected their Project Leads and specify a Test Contact                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Participating Projects must have published a candidate Release Plan for public comment ( `Release Plan Template <https://wiki.opendaylight.org/view/Simultaneous_Release:Per-Project_Oxygen_Release_Plan_Template>`__ )                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | -  *Note: the date for M0 will normally be at least one day after the TSC approves the Oxygen release plan.*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|                                        |                                        |                                        |                                        | -  *Note that the release plan includes details about negotiating inter-project dependencies, expectations, and incompatibilities.*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Last call for project proposals        | 2017/9/14                              | 2017/9/21                              | 2017/9/28                              | #. This is the latest date a project proposal can be sent to the `project-proposals list <mailto:project-proposals@lists.opendaylight.org>`__ and still have the required two week public comment period before its project creation review at the last TSC meeting before the M1/M2/M3 milestone. Project proposals submitted after this date will not be able to become formal projects by M1/M2/M3 and thus will not be able to participate in the Oxygen release.\ :sup:`3`\                                                                                                                                                                                                   |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| M1                                     | 2017/10/7                              | 2017/10/14                             | 2017/10/21                             | #. Participating Projects must have declared their final Release Plan with all sections fully completed.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|                                        |                                        |                                        |                                        | #. Projects that need extra configuration or resources other than those available in the OpenDaylight CI infrastructure must have opened helpdesk tickets to add them.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|                                        |                                        |                                        |                                        | #. `Project Checklist <https://wiki.opendaylight.org/view/GettingStarted:Project_Main#New_Project_Checklist>`__ completed (for *all* projects, not just new ones).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|                                        |                                        |                                        |                                        | #. Projects may apply for a system test waiver if they think they have top-level features not requiring system test or covered by other top-level features test.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|                                        |                                        |                                        |                                        | #. Projects must specify whether they plan to use OpenDaylight CI infrastructure for system test. It is recommended to use the OpenDaylight CI infrastructure unless there is some HW or SW resource that cannot be installed there. Projects running system test in external Labs are required to report system test results in a timely fashion after release creations, e.g., weekly, RC, and formal releases.                                                                                                                                                                                                                                                                  |
|                                        |                                        |                                        |                                        | #. Project must get acknowledged from all projects that it depends on.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| M2                                     | 2017/11/7                              | 2017/11/14                             | 2017/11/21                             | #. Feature/Functionality Freeze                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Final list of externally consumable :ref:`APIs <api>` defined and documented                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |       -  Projects must state for each **TENTATIVE API** they have (if any) whether they are formally planning to deliver it.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |          -  If so, it should be noted that it will be delivered.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|                                        |                                        |                                        |                                        |          -  If not projects requesting the API must be informed so that they can take corrective actions.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |       -  Externally consumable APIs are available at beta-quality                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  All inter-project dependencies are resolved (all project functionality is declared as either “In” or “Out” of this release)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. Karaf Features defined                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Instructions can be found in the `Karaf:Step by Step Guide <http://wiki.opendaylight.org/view/Karaf:Step_by_Step_Guide>`__                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |       -  Each feature should be tested in every appropriate jenkins job (at least -verify, -merge, and -integration) using the “SingleFeatureTest” as defined in the `Karaf step-by-step guide <http://wiki.opendaylight.org/view/Karaf:Step_by_Step_Guide>`__                                                                                                                                                                                                                                                                                                                                                                                                                     |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Any feature repositories containing features intended for release must be added to the main features.xml file in the integration git repository as explained in the `Karaf step-by-step guide <http://wiki.opendaylight.org/view/Karaf:Step_by_Step_Guide>`__                                                                                                                                                                                                                                                                                                                                                                                                                |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |       -  Projects must have a distribution job to verify changes in code do not impact the integration distribution (this will be automatically setup by the releng/builder group).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Features that are intended to be “top-level”, “user-facing” and/or “stable” must be called out in the milestone readout. These features will have additional requirements:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |       -  Each “top-level” feature must have a developer guide section (See the `Oxygen Project Documentation Requirements <https://wiki.opendaylight.org/view/Documentation/Oxygen/Project_Documentation_Requirements>`__) and a system test (See the `Integration and Test Requirements <https://wiki.opendaylight.org/view/Integration/Oxygen_Traditional_Release_Project_Integration_Requirements>`__).                                                                                                                                                                                                                                                                         |
|                                        |                                        |                                        |                                        |       -  Each “user-facing” feature must have a user guide section (See the `Oxygen Project Documentation Requirements <https://wiki.opendaylight.org/view/Documentation/Oxygen/Project_Documentation_Requirements>`__)                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                                        |                                        |                                        |                                        |       -  Each “stable” feature must meet the requirements explained in the `definitions`_ above. above.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Changing the name of a Karaf feature or removing a Karaf feature should be handled via an API freeze waiver after this point                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. Documentation Started                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Identified the kinds of documentation to be provided, created reStructuredText files for them with outlines, and committed those files in an appropriate location. (See the `Oxygen Project Documentation Requirements <http://wiki.opendaylight.org/view/Documentation/Oxygen/Project_Documentation_Requirements>`__ for more details.)                                                                                                                                                                                                                                                                                                                                     |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. Feature Test Started                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Instructions can be found in the `System Test Step by Step Guide <https://wiki.opendaylight.org/view/CrossProject:Integration_Group:System_Test:Step_by_Step_Guide>`__.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|                                        |                                        |                                        |                                        |    -  Projects must have filled out a basic `system test plan template <https://wiki.opendaylight.org/view/CrossProject:Integration_Group:Feature_Integration_System_Test_Template>`__ for each top-level feature (karaf and not karaf). Stable features have `additional requirements <https://wiki.opendaylight.org/view/CrossProject:Integration_Group:Feature_Integration_System_Test_Template#Additional_Requirements_To_Meet_Test_Requirements_Of_A_Stable_Feature>`__ for functionality, cluster, scalability, performance, longevity/stability.                                                                                                                            |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| M3                                     | 2017/12/7                              | 2017/12/14                             | 2017/12/21                             | #. API Freeze: See more information in the `definitions`_ above.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|                                        |                                        |                                        |                                        | #. Documentation:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Project readouts MUST include a word count of each relevant .adoc file with a goal of draft documentation done.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. Projects are encouraged to meet the `requirements to be included in maven central <http://central.sonatype.org/pages/requirements.html>`__                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Project readout MUST include whether or not this was accomplished                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. Feature Test Continues                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Participating projects Projects must have all extra SW configuration and resources required for system test installed in the OpenDaylight CI\ :sup:`4`\. More information in `How To Install SW in CI <https://wiki.opendaylight.org/view/CrossProject:Integration_Group:How_To_Install_test_SW>`__.                                                                                                                                                                                                                                                                                                                                                                         |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| M4                                     | 2018/1/7                               | 2018/1/14                              | 2018/1/21                              | #. Code Freeze (bug fixes only from here as defined above)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                                        |                                        |                                        |                                        | #. Stability branch, i.e., stable/oxygen, must be cut and local project versions bumped on master to avoid overwriting Oxygen SNAPSHOTS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Follow steps 1–4 from the instructions on `cutting stability branches <https://wiki.opendaylight.org/view/Simultaneous_Release:Cutting_Stability_Branches>`__                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|                                        |                                        |                                        |                                        |    -  *Note:* Branch cutting will occur sometime between offset 0 M4 and offset 2 M4 and may be either staggered by offsets or done all at once. `See TSC meeting minutes from 7/9/2015 item 5.ac <https://meetings.opendaylight.org/opendaylight-meeting/2015/tsc/opendaylight-meeting-tsc.2015-07-09-17.00.html>`__.                                                                                                                                                                                                                                                                                                                                                             |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. String Freeze (all externally visible strings frozen to allow for translation & documentation)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|                                        |                                        |                                        |                                        | #. Documentation Complete: Only editing and and enhancing should take place after this point.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|                                        |                                        |                                        |                                        | #. Feature Test Complete                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  Stable features should fulfill quality requirements listed in `definitions`_ section                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                                        |                                        |                                        |                                        |    -  Projects must run at least one basic automated system test job for each top-level feature and several automated system test jobs including functionality, cluster, scalability, performance, longevity/stability for each stable feature\ :sup:`4` \.                                                                                                                                                                                                                                                                                                                                                                                                                        |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| RC0                                    | 2018/2/7                               | N/A                                    | N/A                                    | #. The build for RC0 will start at 23:59:59 UTC                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  At the start of the build for RC0, all projects must be in the distribution and autorelease.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |       -  Between M4 for offset 2 projects and RC0 is a two week period for projects to finish adding to Oxygen Integration Distribution and Oxygen Autorelease and for projects to fix any errors in the Oxygen Autorelease Jenkins Build Job. At the beginning of this two week period, projects are given two week notice of potential drop. Projects that have not been successfully added to the Integration Distribution and Autorelease are dropped from the release. At the end of this two week period, we release RC0 for projects to begin their initial testing. At this time, all projects participating in the release must be in the distribution and autorelease.   |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. During the RC process, regular, e.g., daily, IRC meetings may take place to identify and address issues                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                                        |                                        |                                        |                                        | #. During the RC process, blocking bugs will be tracked in bugzilla and a common spreadsheet                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| RC1                                    | 2018/2/14                              | N/A                                    | N/A                                    | #. The build for RC1 will start at 23:59:59 UTC                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  At the start of the build for RC1, all stable/oxygen branches will be locked and only release engineering staff will be able to merge patches.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. During the RC process, regular, e.g., daily, IRC meetings may take place to identify and address issues                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                                        |                                        |                                        |                                        | #. During the RC process, blocking bugs will be tracked in bugzilla and a common spreadsheet                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| RC2                                    | 2018/2/21                              | N/A                                    | N/A                                    | #. The build for RC2 will start at 23:59:59 UTC                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  At the start of the build for RC2, the release engineering staff will only merge patches that fix blocking bugs. All stable/oxygen branches will remain locked and only release engineering staff will be able to merge patches and will only do so for patches that fix blocking bugs.                                                                                                                                                                                                                                                                                                                                                                                      |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. During the RC process, regular, e.g., daily, IRC meetings may take place to identify and address issues                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                                        |                                        |                                        |                                        | #. During the RC process, blocking bugs will be tracked in bugzilla and a common spreadsheet                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| RC3                                    | 2018/2/28                              | N/A                                    | N/A                                    | #. Participating Projects must hold their Release Reviews, including User Facing Documentation.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  The release review should be based on the `Sample Release Review <https://wiki.opendaylight.org/view/Sample_Release_Review>`__ and should point to release notes based on `Sample Release Notes <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/release-notes/sample-release-notes.rst>`__.                                                                                                                                                                                                                                                                                                                                                             |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. The build for RC3 will start at 23:59:59 UTC                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. All stable/oxygen branches will remain locked and only release engineering staff will be able to merge patches and will only do so for patches that fix blocking bugs.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
|                                        |                                        |                                        |                                        | #. During the RC process, regular, e.g., daily, IRC meetings may take place to identify and address issues                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                                        |                                        |                                        |                                        | #. During the RC process, blocking bugs will be tracked in bugzilla and a common spreadsheet                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Formal Oxygen Release                  | 2018/3/7                               | N/A                                    | N/A                                    | #. Formal Oxygen Release                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  *NOTE: The build to produce the formal release artifacts is likely to occur before the formal release date.*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. After the release, except for projects that have opted-out, the release engineering staff will apply the release patch to the stable/oxygen branch and bump versions.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  *Note:* Any patches merged to stable/oxygen after the auto-release build that produces the formal release artifacts, but before the release patch and version bumps are applied will have to be reverted and re-applied after the release and version bump patches. This shouldn't happen in Oxygen as the stable/oxygen branches will have been locked since RC1.                                                                                                                                                                                                                                                                                                           |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SR1 (Service Release 1 aka Oxygen.1)   | 2018/4/7                               | N/A                                    | N/A                                    | #. First Service Release for Oxygen. NOTE: This date is provisional, but will not move earlier. Please note, event based Updates (security/critical bugs) are distinct and may occur at any point.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  To allow time for testing, a release candidate will be built before the service release and projects are expected to not merge patches except for blocking bugs between that time and the actual service release.                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                                        |                                        |                                        |                                        |    -  Blocking bugs will be tracked via bugzilla and a spreadsheet.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. After the release, projects MUST apply the release patch to the stable/oxygen branch and bump versions. Unless a project opts out, this will be done automatically by the release team after the release.                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  *Note:* Any patches merged to stable/oxygen after the auto-release build that produces the formal release artifacts, but before the release patch and version bumps are applied will have to be reverted and re-applied after the release and version bump patches.                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SR2 (Service Release 2 aka Oxygen.2)   | 2018/6/7                               | N/A                                    | N/A                                    | #. Second Service Release for Oxygen. NOTE: This date is provisional, but will not move earlier. Please note, event based Updates (security/critical bugs) are distinct and may occur at any point.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  To allow time for testing, a release candidate will be built before the service release and projects are expected to not merge patches except for blocking bugs between that time and the actual service release.                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                                        |                                        |                                        |                                        |    -  Blocking bugs will be tracked via bugzilla and a spreadsheet.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. After the release, projects MUST apply the release patch to the stable/oxygen branch and bump versions. Unless a project opts out, this will be done automatically by the release team after the release.                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  *Note:* Any patches merged to stable/oxygen after the auto-release build that produces the formal release artifacts, but before the release patch and version bumps are applied will have to be reverted and re-applied after the release and version bump patches.                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SR3 (Service Release 3 aka Oxygen.3)   | 2018/8/7                               | N/A                                    | N/A                                    | #. Third Service Release for Oxygen. NOTE: This date is provisional, but will not move earlier. Please note, event based Updates (security/critical bugs) are distinct and may occur at any point.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  To allow time for testing, a release candidate will be built before the service release and projects are expected to not merge patches except for blocking bugs between that time and the actual service release.                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                                        |                                        |                                        |                                        |    -  Blocking bugs will be tracked via bugzilla and a spreadsheet.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. After the release, projects MUST apply the release patch to the stable/oxygen branch and bump versions. Unless a project opts out, this will be done automatically by the release team after the release.                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  *Note:* Any patches merged to stable/oxygen after the auto-release build that produces the formal release artifacts, but before the release patch and version bumps are applied will have to be reverted and re-applied after the release and version bump patches.                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SR4 (Service Release 4 aka Oxygen.4)   | 2018/9/21 - 2018/11/7                  | N/A                                    | N/A                                    | #. Fourth Service Release for Oxygen. NOTE: This date is provisional, but will not move earlier. Please note, event based Updates (security/critical bugs) are distinct and may occur at any point.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  To allow time for testing, a release candidate will be built before the service release and projects are expected to not merge patches except for blocking bugs between that time and the actual service release.                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                                        |                                        |                                        |                                        |    -  Blocking bugs will be tracked via bugzilla and a spreadsheet.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        | #. After the release, projects MUST apply the release patch to the stable/oxygen branch and bump versions. Unless a project opts out, this will be done automatically by the release team after the release.                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|                                        |                                        |                                        |                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|                                        |                                        |                                        |                                        |    -  *Note:* Any patches merged to stable/oxygen after the auto-release build that produces the formal release artifacts, but before the release patch and version bumps are applied will have to be reverted and re-applied after the release and version bump patches.                                                                                                                                                                                                                                                                                                                                                                                                          |
+----------------------------------------+----------------------------------------+----------------------------------------+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

\ :sup:`3`\ Please note that the TSC reserves the right to allow
projects to enter the Simultaneous Release for a reasonable period of
time after the M0 date. For example, the TSC may allow additional time
if a project is delayed by the IPR Review process.

\ :sup:`4`\ Projects running system tests outside the OpenDaylight CI
infrastructure are not required to run system tests and report the
results on “-merge” and “-integration” Jenkins jobs, although if they
can this is ideal. They are required to report system test results in a
timely fashion after release creations, e.g., weekly, RC, and formal
releases.

Please also note that projects that would like to spin out parts of
themselves into additional projects may have those new projects join the
Simultaneous Release at any point prior to M3 provided:

#. The TSC has been informed of this intent prior to M2
#. The original project's release Release Plan is apportioned between
   the original and new projects with no parts missing
#. The new projects have been proposed and approved by the TSC into one
   of the non-proposed life-cycle states in the normal manner by M2
#. The new projects have completed the requirements for all milestones
   before they joined the release, e.g., M0 and/or M1

Lastly, note that as the new projects are joining the release prior to
M2, they must meet all the requirements for M2 at the normal time.

Participating Projects
======================

The list of participating projects can be found on the `Oxygen Tracking
Spreadsheet <https://docs.google.com/spreadsheets/d/1dYOY99twqHV_Q0YorAOOxmL0aFc3icNXg8qA_zGwKyA/>`__

Offset 0 Projects
-----------------

Project table with release plan, main page, and PTL/Project/Test/Doc
contact information can be found on the `Oxygen Tracking
Spreadsheet <https://docs.google.com/spreadsheets/d/1dYOY99twqHV_Q0YorAOOxmL0aFc3icNXg8qA_zGwKyA/>`__

Offset 1 Projects
-----------------

Project table with release plan, main page, and PTL/Project/Test/Doc
contact information can be found on the `Oxygen Tracking
Spreadsheet <https://docs.google.com/spreadsheets/d/1dYOY99twqHV_Q0YorAOOxmL0aFc3icNXg8qA_zGwKyA/>`__

Offset 2 Projects
-----------------

Project table with release plan, main page, and PTL/Project/Test/Doc
contact information can be found on the `Oxygen Tracking
Spreadsheet <https://docs.google.com/spreadsheets/d/1dYOY99twqHV_Q0YorAOOxmL0aFc3icNXg8qA_zGwKyA/>`__

Project Status
==============

The status of projects is being tracked on the `Oxygen Tracking
Spreadsheet <https://docs.google.com/spreadsheets/d/1dYOY99twqHV_Q0YorAOOxmL0aFc3icNXg8qA_zGwKyA/>`__

RC Download
===========

See sections below for RC0, RC1, RC2, etc.

RC0 Download
------------

-  TBD

RC1 Download
------------

-  TBD

RC2 Download
------------

-  TBD

RC3 Download
------------

-  TBD

Service Release Download
========================

SR1 Download
------------

-  TBD

SR2 Download
------------

-  TBD

SR3 Download
------------

-  TBD

SR4 Download
------------

-  TBD

Release Reviews
===============

-  TBD

Project Dependency Diagram
==========================

-  TBD

.. _communication-channels:

Communication Channels
======================

Mailing List
------------

The `release mailing
list <https://lists.opendaylight.org/mailman/listinfo/release>`__
(release@lists.opendaylight.org) is the formal channel for communication
about the Simultaneous Release.

Please limit mail to this list to things that directly concern the
release as our goal is to keep its volume at a level that allows the
project lead/contact to read all of it.

Per-project Simultaneous Release Contact
----------------------------------------

Each project participating in the Simultaneous Release should designate
a committer to be the contact for that project for that Simultaneous
Release. It is expected that this be the project lead for most projects.
Even though a primary contact other than the project lead can be
designated, the project lead is still expected to be ultimately
responsible for the project's participation in the release.

Cross Project Milestone and Release Candidate Reporting
-------------------------------------------------------

At each milestone, each project is expected to send a readout to the
`release mailing
list <https://lists.opendaylight.org/mailman/listinfo/release>`__ by
23:59:59 UTC on the date listed for the given milestone and offset. Most
information will be reported via the release tracking spreadsheet, which
can be found in the `supporting documents`_
section. While most information will be reported via the spreadsheet,
projects should still send a mail indicating the information has been
filled in, reporting any extra information, and possibly asking
additional questions. Reported information will include things like
links to gerrit patches, pointers to continuous integration Jenkins
Jobs, and the like.

Negative statuses should be reported promptly. If a project is under
threat of, or does miss an element on its release plan, the project
contact/lead should report this as soon as it is known. They should not
wait until the next milestone's readout.

It is the responsibility of each project's lead to report both positive
and negative statuses. While they can delegate the task, the project
lead is still ultimately responsible for the project's participation in
the release.

Simultaneous Release Developer Meetings
---------------------------------------

One week prior to each Milestone or Release Candidate starting at M1, an
IRC meeting for developer interested in the Simultaneous Release will be
organized for real time coordination and check in. The Project for each
project (or their delegate) should minimally be in attendance. This
meeting should happen for each offset at each milestone.

The meeting will be held in #opendaylight-meeting on
`freenode <https://freenode.net/>`__. You can use an IRC client of your
choice or the `freenode web client
<https://webchat.freenode.net/?url=irc://irc.freenode.net/opendaylight-meeting>`__
if it is easier.

Bugs
----

`Bugzilla <https://bugs.opendaylight.org/>`__ is used to track all bugs
in OpenDaylight. Bugs must be filed for the appropriate project. General
guidelines and sample searches can be found on the `OpenDaylight
Bugs <https://wiki.opendaylight.org/view/OpenDaylight_Bugs>`__ page.

During the release candidate process, all blocking bugs must be both
logged on a bug-tracking spreadsheet (to be provided) and filed
appropriately, e.g., with severity set to BLOCKING, in Bugzilla.

Weather Page
------------

To track current ongoing issues and upcoming possible issues, it's worth
checking and updating the `Weather <https://wiki.opendaylight.org/view/Weather>`__ page since it provides
an easier to find location for ongoing things than the mailing list.

Cross Project Meetings
----------------------

To track cross project items.

Release End of Life
===================

OpenDaylight will have 3 active releases: 2 in production and 1 in
development. Exceptions to this EOL plan will be discussed and approved
by TSC. Oxygen, being the 8th release, will officially EOL when we
publish the 11th release - Sodium.

Supporting Documents
====================

-  `Oxygen Tracking
   Spreadsheet <https://docs.google.com/spreadsheets/d/1dYOY99twqHV_Q0YorAOOxmL0aFc3icNXg8qA_zGwKyA/>`__
-  `Per-project Release Plan
   Template <https://wiki.opendaylight.org/view/Simultaneous_Release:Per-Project_Oxygen_Release_Plan_Template>`__
-  `API Freeze Exception
   Process <https://wiki.opendaylight.org/view/Simultaneous_Release/Oxygen/Waiver/API>`__

   -  `API Freeze Waiver
      Records <https://wiki.opendaylight.org/view/Simultaneous_Release/Oxygen/Waiver/API/Records>`__

-  `(New) Project
   Checklist <https://wiki.opendaylight.org/view/GettingStarted:Project_Main#New_Project_Checklist>`__
-  `Oxygen Project Integration
   Requirements <https://wiki.opendaylight.org/view/Integration/Oxygen_Traditional_Release_Project_Integration_Requirements>`__
-  `Oxygen Project Documentation
   Requirements <https://wiki.opendaylight.org/view/Documentation/Oxygen/Project_Documentation_Requirements>`__
-  `Living Release Schedule
   Framework <https://wiki.opendaylight.org/view/Simultaneous_Release:Release_Schedule_Framework>`__
-  `Bug Tracking Guidelines <https://wiki.opendaylight.org/view/OpenDaylight_Bugs>`__
-  `Karaf Step by Step Guide <https://wiki.opendaylight.org/view/Karaf:Step_by_Step_Guide>`__
-  `Cutting Stability Branches and Bumping
   Versions <https://wiki.opendaylight.org/view/Simultaneous_Release:Cutting_Stability_Branches>`__
-  `Maven Central
   Requirements <http://central.sonatype.org/pages/requirements.html>`__
-  `Sample Release
   Notes <https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/release-notes/sample-release-notes.rst>`__
-  `Sample Release Review <https://wiki.opendaylight.org/view/Sample_Release_Review>`__
-  `Feature Test Plan
   Template <https://wiki.opendaylight.org/view/CrossProject:Integration_Group:Feature_Integration_System_Test_Template>`__

.. _milestone-readout-templates:

Milestone Readout Templates
===========================

Note that any deliverable missed in a previous milestone should be
reported on in all subsequent milestone readouts until the deliverable
is completed. Also note that additional questions may be added if we
need to gather it from all projects, e.g., in Lithium we asked about
issues with the migration to Karaf 3.0.3.


M0: Declare Intent
------------------

.. literalinclude:: milestone-readouts/m0_template.rst

M1: Final Release Plan
----------------------

.. literalinclude:: milestone-readouts/m1_template.rst

M2: Functionality Freeze
------------------------

.. literalinclude:: milestone-readouts/m2_template.rst

M3: API Freeze
--------------

.. literalinclude:: milestone-readouts/m3_template.rst

M4: Code Freeze
---------------

.. literalinclude:: milestone-readouts/m4_template.rst

RCX: Release Candidate Testing
------------------------------

*<Project Name>*

#. Have you tested your code in the release candidate? *Yes/No (provide
   a link to the release candidate you tested)*

   -  If yes, did you find any issues?
   -  If you have found issues, do you believe any of them should block
      this release of OpenDaylight until they are resolved?
   -  Please list all the issues and note if they are blocking.

Lessons Learned
===============

During the Oxygen release
-------------------------

-  TBD

During the Nitrogen release
---------------------------

-  TBD

During the Carbon release
-------------------------

-  Clustering breakage, see 6.b-d in the `3/24/17 TSC meeting
   minutes <https://meetings.opendaylight.org/opendaylight-meeting/2017/tsc/opendaylight-meeting-tsc.2017-03-24-03.30.html>`__

   -  Need more details and to figure out if there are lesson's learned
      beyond “it took 2 days to get a response and it hurt our jenkins
      queue” a lot.

-  An accelerated release plan helps new projects, as they often need
   more time to ramp up on technology, process, and setup. Recommend
   that the simultaneous release plan be approved earlier than M0
   timeframe.

During the Beryllium release
----------------------------

-  \ `Do we need enhanced requirements to be in a release and when to
   meet
   them? <https://lists.opendaylight.org/pipermail/release/2015-November/004419.html>`__\
   **I don't think that we really need new requirements as much as we
   should probably start to more rigorously enforce the ones we
   have—predominantly around projects being responsive.**
-  If you're planning to develop major new functionality or replace the
   implementation of major current functionality, be cognizant of your
   downstream consumers

   -  have a migration plan for how people will start using the new
      functionality (or implementation)
   -  understand how to help them deal with bugs as they come up
   -  if you will have two different simultaneous implementations, make
      they can both be run at the same time

      -  or ideally, don't do this, make sure everyone can make the jump
         to the new implementation

-  upgradability is critical, there's no sane way to do this without

   #. a per-project requirement to be upgradable  **This is already baked
      into the concept of stable features, which are probably the right
      lever for this now.**
   #. tests to confirm that this actually works

-  there have been requests to have upgrades work with hops between
   versions, e.g., Helium => Boron
-  we need stronger testing for upgradeablity between SRs
-  projects should have only stable tests, if we need to ask them about
   test failures consistently, they need to:

   -  fix it
   -  have a well known and clearly visible (in the test automation) bug
      for it
   -  remove it **Added an extra bullet to testing requirements noting that
      system tests are expected to reliably pass.**

-  projects should be required to generate a maven site with javadoc,
   and ideally REST API doc generated from YANG models

   -  ideally this should be done in a way that autorelease can generate
      one big maven site **added as a documentation requirement at M4 with
      instructions.**

-  projects don't do system test even when they say they do

   -  **possibly mandate that projects w/o system test be
      experimental** <https://lists.opendaylight.org/pipermail/tsc/2016-February/004648.html>

-  System Test is not very visible
-  We need to update release reviews and release notes to make us have
   to ask fewer questions

   -  features (with links to the features.xml file and the right line
      for each feature to avoid listing non-existent features)

      -  if there are any experimental features
      -  user-facing features (with a clear definition of user-facing)

   -  migration
   -  compatibility (which is different from migration)
   -  documentation (both wiki and AsciiDoc)
   -  Ideally also add the wiki template to produce lists of release
      notes, release plans, and release reviews

-  It would be good to have `documentation peer-review in a structured
   way <https://lists.opendaylight.org/pipermail/release/2016-February/005708.html>`__

   -  Maybe pairing up projects (or even forming small groups, e.g., 3
      projects that have to do cross-review) **Added to the documentation
      requirements that the documentation team will ask for projects to
      do peer review and preferentially review and merge patches that
      have been peer reviewed.**

-  We need to start testing earlier, the observation seems to be that we
   don't start testing in earnest until RC0 (or sometimes RC1), which
   leaves 2-3 weeks for testing and fixing bugs.

   -  How to do this isn't exactly clear. Some people call for having a
      longer RC time-frame. Others just say that we should be stricter
      and more disciplined with hitting functionality freeze (M3) and
      code freeze (M5)

-  We need more formalism around how to ship things that aren't Karaf
   features, e.g., NeXt, OpFlex and some of VTN

   -  It seems like learning from VTN which is distributed inside the
      Karaf zip file might be a good thing
   -  If not, we need to understand where the extra downloads will be
      listed on the downlaod page, how many there will be, etc.

-  We need minimum expectations for projects to be in and stay in
   autorelease (and thus be part of the release), e.g.,

   -  respond to failed builds in a timely fashion. **This is already in
      the** :ref:`reqs-for-participation`, **we can just start enforcing it
      more.**

-  Should we require projects to meet the minimum requirements for
   inclusion in maven central?

   -  for everyone?
   -  for stable features?

During the Hydrogen, Helium and Lithium releases
------------------------------------------------

A comment will follow as
to how it was addressed in **bold** if it seems like the right approach and
in *italics* if there may still be debate or questions.

-  Do we want to require system tests for all top-level features (and
   thus one per project) instead of just user-facing features? **done,
   it's for top-level features**
-  The release notes and release review templates need to be revised

   -  Likely combined and to use a wiki template to make them more
      uniform and easier to suck out **For now, the release notes have
      been updated to be more clearly per-project. The release review
      template is specified by the lifecycle document and so has been left
      the same and separate.**

-  We need to track items that weren't green from previous milestone
   readouts so that they get reported in subsequent ones until they are
   green

   -  A key example is getting features into integration

-  We need to require project feedback on RCs as part of the release
   plan.
-  Service releases should likely continue until some future release
   (either one or two releases in the future) rather than after a fixed
   number of releases. **we've moved to four SRs with the note that the
   should go for at least one release in the future**

   -  How long after the new release do we wait?
   -  Do we want to have a specified amount of overlap? 2 weeks? 6
      weeks?

-  We desperately need pre-made templates for each milestone that make
   verifying requirements easy. We just missed things in Lithium M1 to
   M3 without that.
-  We need to mandate source jars generated in a canonical way, i.e., to
   be consumed by releng/autorelease.
-  We should also mandate javadoc generated in a canonical way, i.e., to
   be consumed by releng/autorelease. **Thanh says releng is already doing
   this both in JJB for projects and auto-release.**
-  We need to mandate that no projects can pull in 3rd-party
   dependencies without source jars.
-  Migration **migration and backward compatibility requirements have been
   put out as part of mature projects and/or stable features,** *but could
   maybe use to be made more concrete*

   -  Do we want to require data schema translations?
   -  Other issues?

-  The paperwork for M3 was substantial (and not easy see in advance)
   and should be streamlined or spread out **to dos have been added above
   to copy documentation and integration requirements into this document
   to keep them from sneaking up on people**

   -  Consolidating all the requirements into one place would likely
      help.

-  We should make sure that people know where to produce and document
   known issues. In general, it's three places:

   -  The release mailing list.
   -  The `Weather <https://wiki.opendaylight.org/view/Weather>`__ page.
   -  The weekly IRC sync during the last part of the release. **This is
      called out in** :ref:`communication-channels` **and any more forceful call
      out will likely have to happen not in this document**.

-  Make it clear what is expected of projects in terms of tracking
   what's going on in ODL.

   -  Reading the release list.
   -  Reading tsc list or at least the TSC meeting minutes.
   -  Attending release IRC meetings or at least reading the minutes.
      **This is called out in the Communication & Leadership requirement
      above and that is pointed out in the M1 milestone readout template**

-  Adding a way to deal with docs-like projects that don't provide
   code-level negative interactions

   -  This includes at least docs, toolkit (now mostly defunct), and
      coretutorials
   -  Ideally, they might have laxer requirements **for now, I think
      leaving these projects as leaf projects with minimal requirements
      seems reasonable**

-  Deal with cutting branches and version bumps with offsets *TODO: for
   now we've left the exact timing of branch cutting open to sometime
   between offset 0 M5 and offset 2 M5 as well as leaving open whether
   we'll do a synchronized cut or a cut staggered by offset.*

   -  If we cut branches and version bump at the same time, the only
      issue we have is slow projects that can hold things up, which has
      been fixed by automated version bumping that should happen for
      Helium.
   -  However, if we cut branches and version bump at M5, there is an
      offset between different projects where upstream projects can
      merge patches that break downstream projects (regardless of
      whether the breakage is a bug in the upstream or downstream
      project) causing the version bump for downstream projects to fail.
   -  The options seem to be:

      #. cut branches all at the same time at or near M5-offset2 or RC0,
         which has the disadvantage that offset 0 and offset 1 projects
         have somewhere between a 2-week and 6-week period after code
         freeze where they can't add new features.
      #. cut branches all at the same time at M5-offset0, which has the
         disadvantage that offset 1 and offset 2 projects will have to
         “double merge” patches to both branches during times that would
         normally have heavy coding.
      #. figure out how to deal with the issue that offset 1 and offset
         2 projects may get hit with incompatibilities on version bumps

   -  Also, cascading tests during staggered branch cutting breaks
      because the way JJB is set up right now it's not possible to
      trigger jobs across branches even when logically master of an
      offset 1 project is dependent on stable/lithium of an offset 0
      project.

-  Docs improvements

   -  We'd really like to be able to put project-specific docs in their
      repo

      -  This will allow us to easier iterate on docs as patches go in,
         and allow committers to +2/-2 doc changes. (alagalah)
      -  This should include the ability to directly pull code fragments
         from real code

   -  We'd really like HTML versions of the docs that aren't so
      fragmented **This will be folded in to the docs project's
      release plan**

During the Hydrogen/Helium releases
-----------------------------------

A comment will follow as to how it was addressed in **bold** if it seems like
the right approach and in *italics* if there may still be debate or questions.

-  The Release plan doesn't take into account project dependencies. e.g.
   M4 API Freeze. If a project is waiting on API freeze for a project it
   is dependent on, then that reduces the amount of time the “dependee”
   has to execute. - alagalah (Keith) **Done, mainly by moving deadlines
   up by one step, e.g., M2 component free, M3 API freeze, M4 code
   freeze**.

   -  We had offsets in Hydrogen, spaced at 2 days. We need 2-3 weeks
      between offsets for them to make sense,
   -  With 6 offsets 2 weeks each we need additional 10 weeks to reach
      RC0 on all projects,

      -  *Can we can do it in 3 offsets: +0, +2 weeks, +4 weeks*

         #. odlparent, yangtools, and controller
         #. openflowjava, openflowplugin, ovsdb, aaa
         #. everyone else

   -  Which means lower-offset projects can (and need) to start their
      next-release while the SR process is finishing

-  We need a Feature Freeze milestone before the API freeze

   -  It should occur at M3 with beta-quality APIs, so downstream
      projects can start consuming *Currently at M2 instead, it will be
      ~M2.5 and ~M3 for most projects*

-  We're using release@lists.opendaylight.org instead of discuss
-  We should make it easy for projects to convey and understand what
   APIs they are intending to make available vs. which ones are intended
   to be internal *attempted as part of component/API freeze*
-  We should make it clear that participation in Service Releases is not
   optional **done**, see :ref:`reqs-for-participation`.
-  We should make it clear what we expect in terms of timely responses
   from project primary contacts for a release **done**, see
   :ref:`reqs-for-participation`.

   -  This involves identifying what mails that people should pay
      attention to, e.g., ones sent to release@lists.opendaylight.org
      with “PLEASE RESPOND” in the subject
   -  It also involves identifying a time frame in which they should
      respond, e.g., two business days

      -  One concrete stab at making this formal would be: “Technically,
         two business days will be defined as 48 hours not counting 2a
         UTC on Friday until 2a UTC on Sunday. This corresponds to 48
         hours starting at 4p on Friday in the furthest ahead time zone
         (UTC+14). Note that this means if you want a response \*this\*
         week, you must send it before 2a UTC on Wednesday. That’s 6/7p
         pacific time on Tuesday in the Pacific time zone.” *The formal
         definition is currently left out*

-  We need a longer time between code freeze and release candidates
   because developers don't focus on tests (especially system and
   integration tests) until after code freeze
-  Status reports for each milestone should include more than a Boolean
   for tests

   -  In general, the templates for status reports should probably be
      developed more in advance. See :ref:`milestone-readout-templates`.

-  We need to make it clear what tasks need to be done for docs, where
   and when **handled by the deliverable from M2 from docs**

   -  Understanding the kinds of documentation we want to generate and
      who the audience is for each kind is going to be critical

      -  \ *e.g., one person's user is likely another's developer*\

   -  The same is true about tests. **handled by the deliverable from M2
      from integration**

-  We really need somebody who groks the things that need to be
   accomplished at each milestone and can take a glance at the code and
   jenkins jobs for each project to get an idea of whether they're on
   track or not. We need to make sure we do this for deadlines M3 and
   later, e.g., functionality freeze, karaf features defined, API
   freeze, and code freeze **milestone readout templates make this more
   doable**.
-  Requirements to meet at different stages (and especially RCs) should
   be set and enforced with clearly explained consequences for missing
   them **ways to fix missed deadlines are now discussed by the TSC for
   offset zero and offset one projects as described in**
   :ref:`reqs-for-participation`.

   -  Release throttle branch needs to be cut at RC0 at the latest **done
      at M5 now**

-  We need a standard way to track blocking issues: *TODO: we still need
   this, but it's loosely defined in the* `Helium blocking bugs
   section <https://wiki.opendaylight.org/view/OpenDaylight_Bugs#Helium_Blocking_Bugs_.28all_projects.29>`__.

   -  One suggestion is to treat them as bugs in bugzilla for easy
      tracking and querying

      -  Projects would file bugs with severity as “critical”, “blocker”
         with the target milestone being appropriate
      -  Appropriate milestones are sometimes annoying, but generally,
         it should be “anything but the next release”

-  We need to pre-declare when RCs and final release artifacts will be
   cut (both dates and times for clarity) **done at M5 and RCs**
-  Need to add an EOL-plans section to release plan to understand user
   impact of EOLed features/components/APIs at the start of a
   development cycle **done in release plan**

   -  What requirements do we want to place on projects? e.g.,
      deprecated in one release and can remove in another?
   -  plans for dealing with EOLed features should be incorporated into
      the release plan

-  We should reconsider when we set a release date **done, there is a
   month of slack between the release and the ODL summit and the dates
   for RCs after RC0 and the formal release are stated to be tentative
   based on testing in the definition of RCs**

   -  Especially to the press, but also in other environments
   -  For example, do we want to have a booked event giving us
      effectively zero wiggle room on the back end?

      -  Maybe, because hard deadlines help get things done, but they
         also make for sub-optimal

-  We could use more automated release processes

   -  For example, the auto-release is really, really nice as compared
      to spending 14+ hours on IRC cutting everything.
   -  A similar process for post-release branch cutting and version
      bumping would be very helpful, e.g., take a 10+ day process and
      turn it into one that takes a few hours.
   -  One problem is figuring out how to do this w/o requiring
      involvement from every project (at least on the critical path).

      -  Solutions are (i) allowing for some scripts to commit changes
         to projects, which is likely bad, or (ii) automatically pushing
         patches for projects to review
      -  Another solution is to switch to continuous delivery **resolved
         thanks to Thanh and the autorelease project**

-  We should avoid scheduling any major events, e.g., a design forum or
   summit, immediately after the release so that we can have some room
   for slippage without having to pull many developers out of the event
   into a “war” room. **done. there is a month between the release and the
   ODL summit**
-  More automated features testing *TODO: yes, but this is technical
   debt, not directly related to the release plan*

   -  to really test things, we need to blow away the m2 repo before
      testing every features.xml file

-  Cyclic dependencies *TODO: yes, but this is technical debt, not
   directly related to the release plan*

   -  We need to decide if we want to allow them, and if so what kind to
      allow
   -  We need to provide documentation (or ideally scripts) that show
      how to build the code despite the circular dependencies (if we
      allow them)
   -  We need tests to check for circular dependencies (either at all or
      new ones) so that we know about them

      -  The simplest way to do this would be to have an offline
         auto-release which first clone all the repos and then tried to
         build them linearly without access to the nexus repos.
