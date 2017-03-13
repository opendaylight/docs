Milestone Readouts
==================

M0: Declare Intent
------------------

(Project Name)

#. A statement to the effect: "The <Project Name> project formally joins the OpenDaylight Carbon
   Simultaneous Release and agrees to the activities and timeline documented on the Carbon Release
   Plan Page: https://wiki.opendaylight.org/view/Simultaneous_Release:Carbon_Release_Plan"
#. Project Offset: (Offset 0/Offset 1/Offset 2)
#. Project Category: (Kernel/Protocol/Services/Application/Support)
#. Project Labels: (List keywords and tags and fit the description of your project comma separated)
#. Project PTL: (name/email/IRC)
#. Do you confirm that the list of Project Committers is updated and accurate? (Yes/No)

[1] https://wiki.opendaylight.org/view/Simultaneous_Release:Carbon_Release_Plan#M0:_Declare_Intent


M1: Draft Plan
--------------

(Project Name)

#. Project Lead Contact: (name/email/IRC)
#. Review PTL Requirements [1].
#. Project Contact: (name/email/IRC)
#. Test Contact: (name/email/IRC)
#. Documentation Contact (name/email/IRC)
#. Draft Release Plan: (wiki link)

** FOR NEW PROJECTS ONLY **

7. Project Main Page: (wiki link) Use Project Facts Template [2].

[1] Be sure to read the responsibilities of being a project lead under Leadership & Communication
in the Requirements for Participation section of the release plan:
https://wiki.opendaylight.org/view/Simultaneous_Release:Carbon_Release_Plan#Requirements_for_Participation

[2] https://wiki.opendaylight.org/view/Template:Project_Facts


M2: Final Release Plan
----------------------

(Project Name)

1. Does your project have any updates on any previously-incomplete items from prior milestone
   readouts?  (Yes/No)

   * (If yes, list updates)

2. Were project-specific deliverables planned for this milestone delivered successfully? (No
   Deliverables/Yes/No)

   * (If no, list incomplete deliverables)

3. Does your project have any special needs in CI Infrastructure [2]?  (Yes/No)

   * (If yes, link to helpdesk ticket number)

4. Is your project release plan finalized?  (Yes/No)

   * (If yes, link to final release plan wiki page)
   * (If no, ETA to finalize release plan)

5. Do you have all APIs intended to be externally consumable listed? (Yes/No)

   * Does each API have a useful short name? (Yes/No)
   * Are the Java interface and/or YANG files listed for each API? (Yes/No)
   * Are they labeled as tentative, provisional, or stable as appropriate for each API? (Yes/No)
   * Do you call out the OSGi bundles and/or Karaf features providing the API for each API?
     (Yes/No)

6. Have all project dependencies requests on other project's release plans been acknowledged and
   documented by upstream projects?  (Yes/No)

   * (List of all project dependencies and if they have been acknowledged, unacknowledged)

7. Will your project have top-level features not requiring system test? (Yes/No)

   * (If yes, link to system test waiver request email)

8. Will your project use the OpenDaylight CI infrastructure for testing top-level features
   requiring system test? (Yes/No)

   * (If no, link to system test plan explaining why [3])
   * (If no, link to system test plan identifying external lab testing [4])

** FOR NEW PROJECTS ONLY **

9. Have you completed the project checklist [1]? (Yes/No)

   * (link to a merged patch in gerrit)
   * (link to a mail from your mailing list)
   * (link to a bug for your project; you can create a dummy one and close it if need be)
   * (link to an artifact published from your project in nexus)
   * (link to a sonar report)
   * (link to your root pom file)

[0] https://wiki.opendaylight.org/view/Simultaneous_Release:Carbon_Release_Plan

[1] https://wiki.opendaylight.org/view/GettingStarted:Project_Main#New_Project_Checklist

[2] Special needs include tools or configuration.  Note that generally, the only available tools in
CI are basic RHEL/CentOS linux images with Java. You should note and ask for anything beyond that
here.  Email helpdesk@opendaylight.org

[3] It is recommended to use the OpenDaylight CI infrastructure unless there is some HW or SW
resource that cannot be installed there.  Update the test plan with explanation on why your
top-level features will not be using the OpenDaylight CI Infrastructure:
https://wiki.opendaylight.org/view/CrossProject:Integration_Group:Feature_Integration_System_Test_Template#Test_Infrastructure

[4] Projects running system test in external Labs are required to report system test results in a
timely fashion after release creations, e.g., weekly, RC, and formal releases.  Update the test
plan with plans on testing in external lab:
https://wiki.opendaylight.org/view/CrossProject:Integration_Group:Feature_Integration_System_Test_Template#Test_Infrastructure

M3: Functionality Freeze
------------------------

<Project Name>

Please provide updates on any previously-incomplete items from prior milestone readouts.

Functionality Freeze:

#. Final list of externally consumable APIs defined: Yes/No

   * If you had an Tentative APIs, have they been moved to Provisional or dropped? Yes/No (link to
      release plan)
   * If any of your Tentative APIs were dropped, have you notified all projects that were expecting
     them? Yes/No (link to e-mail)

     * Also please list all dropped APIs.

#. Are all your inter-project dependencies are resolved (i.e., have the other projects you were
   counting on given you what you needed)? Yes/No

   * If no, please list the features you were expecting that haven't been delivered and the project
     you were expecting to receive them from.
   * Note that you can only reasonably hold a a project to something if you formally asked for it
     during the release planning process and they acknowledged that ask saying they would do it.

#. Were there any project-specific deliverables planned for this milestone? Yes/No

   * If so, were they delivered? Yes/No

Karaf Features Defined:

4. Are all your project's features that are intended for release added to the features.xml and
   checked into integration git repository. Yes/No (please provide link to the gerrit patch)
#. List all top-level, user-facing, and stable Karaf features for your project.

   * For top-level and user-facing features, please provide a one-sentence description which a
     developer and/or user would find helpful.

Documentation:

6. List the kinds of documentation you will provide including at least:

   * One user/operator guide section per user-facing feature.
   * One developer guide per top-level feature.
   * An installation guide for any top-level features that require more than ``feature:install
     <feature-name>`` to install.
   * Optional tutorials and how tos.

#. Have you checked in an AsciiDoc outline to the docs repository? Yes/No (link to gerrit patch)

Integration and Test:

8. Have you started automated system testing for your top-level features. Yes/No

   * If yes, link to test report
   * If no, why?

#. Have you filled out basic system test plan template for each top-level feature (karaf and not
   karaf) and a comprehensive system test plan template including functionality, cluster,
   scalability, performance, longevity/stability for each stable feature? Yes/No

   * If yes, link to test plans
   * If no, why?

Project Specific:

10. Were there any project-specific deliverables planned for this milestone? Yes/No

    * If so, were they delivered? Yes/No

#.  Have you updated your project facts with the project type category? Yes/No
#.  Do you acknowledge the changes to the RC Blocking Bug Policy for Carbon Release [1]? Yes/No

[1] https://lists.opendaylight.org/pipermail/tsc/2016-December/006468.html


M4: API Freeze
--------------

<Project Name>

#. Please provide updates on any previously-incomplete items from prior milestone readouts.
#. Has your project achieved API freeze such that all externally accessible Stable or Provisional
   APIs will not be modified after now? (Yes/No)

   * (Link to gerrit search for patches modifying the API [1])

#. Do you have content in your project documentation? (Yes/No)

   * (For each document, provide current word count)
   * (For each document, link to the file in gerrit)
   * (Link to pending gerrit patches waiting approval)

#. Has your project met the requirements to be included in Maven Central [2]? (Yes/No)
#. Were project-specific deliverables planned for this milestone delivered successfully? (No
   Deliverables/Yes/No)
#. Have you started automated system testing for your top-level features. (Yes/No)

   * (If yes, link to test report)
   * (If no, explain why)

#. Does your project use any ports, including for testing? (Yes/No)

   * (If yes, list of ports used)
   * (If yes, have you updated the wiki [3] with all ports used? Yes/No)

#. Does your project build successful in Autorelease?

   * (If yes, link to successful autorelease job [4])
   * (If not, explain why)


[1] Provide a link to a gerrit search for patches modifying the files defined as specifying the
API. For example:
https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller

[2] http://central.sonatype.org/pages/requirements.html

[3] https://wiki.opendaylight.org/view/Ports

[4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements


M5: Code Freeze
---------------

<Project Name>

#. Please provide updates on any previously-incomplete items from prior milestone readouts.
#. Has your project met code freeze, i.e., only bug fixes are allowed from now on? (Yes/No)
#. Are all externally visible strings frozen to allow for translation & documentation? (Yes/No)
#. Is your documentation complete such that only editing and enhancing should take place after this
   point? (Yes/No)

   * (For each document, link to the file in gerrit)
   * (Link to pending gerrit patches waiting approval)

#. Were project-specific deliverables planned for this milestone delivered successfully? (No
   Deliverables/Yes/No)
#. Are you running at least one basic automated system test job for each top-level feature?
   (Yes/No)

   * (If yes, link to test report)
   * (If not, explain why)

Stables Features (Only for Projects with Stable Features)

7. Do your stable features fulfill quality requirements (i.e. unit and/or integration test coverage
   of at least 75%)? (Yes/No)

   * (If yes, link to sonar report)
   * (If not, explain why)

#. Are you running several automated system test jobs including functionality, cluster,
   scalability, performance, longevity/stability for each stable feature? (Yes/No)

   * (If yes, link to test reports)
   * (If not, explain why)


RCX: Release Candidate Testing
------------------------------

<Project Name>

#. Have you tested your code in the release candidate? Yes/No (provide a link to the release
   candidate you tested)

   * If yes, did you find any issues?
   * If you found issues, do you believe any of them should block this release of OpenDaylight
     until they are resolved?
   * Please list all the issues and note if they are blocking.
