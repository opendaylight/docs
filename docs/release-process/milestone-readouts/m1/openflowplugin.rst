===============
OpenFlow Plugin
===============

1. Project PTL:

   - Abhijit Kumbhare
   - abhijitkoss@gmail.com
   - abhijitkumbhare
   - I have reviewed the PTL Requirements [1]_

2. Project Contact:

   - Abhijit Kumbhare
   - abhijitkoss@gmail.com
   - abhijitkumbhare

3. Test Contact:

   - Luis Gomez
   - ecelgp@gmail.com
   - LuisGomez

4. Documentation Contact

   - Shuva Jyoti Kar
   - shuva.jyoti.kar.87@gmail.com
   - shuva

5. Does your project have any updates on any previously-incomplete items from
   prior milestone readouts?

   - No

6. Were project-specific deliverables planned for this milestone delivered
   successfully?

   - Yes

7. Does your project have any special needs in CI Infrastructure [2]_?

   - No

8. Is your project release plan finalized?

   Yes - (subject to reasonable changes)
   Link to final release plan wiki page: https://wiki.opendaylight.org/view/OpenDaylight_OpenFlow_Plugin:Oxygen_Release_Plan

9. Do you have all APIs intended to be externally consumable listed? Yes - no change

   - Does each API have a useful short name? Yes - no change
   - Are the Java interface and/or YANG files listed for each API? Yes - no change
   - Are they labeled as tentative, provisional, or stable as appropriate for
     each API? Yes - no change
   - Do you call out the OSGi bundles and/or Karaf features providing the API
     for each API? Yes - no change

10. Have all project dependencies requests on other projects' release plans
    been acknowledged and documented by upstream projects?

    Yes. Depends on some offset 0 projects like ODL parent, controller, MD-SAL, etc. These have been acknowledged previous releases - no new dependencies & hence do not need to be acknowledged.

11. Will your project have top-level features not requiring system test?

    - No

12. Will your project use the OpenDaylight CI infrastructure for testing
    top-level features requiring system test?

    - Yes

**FOR NEW PROJECTS ONLY**

A. Project Main Page: (wiki link)

   - Use Project Facts Template [5]_

B. Have you completed the project checklist [6]_? (Yes/No)

   - (link to a merged patch in gerrit)
   - (link to a mail from your mailing list)
   - (link to a bug for your project; you can create a dummy one and close it if need be)
   - (link to an artifact published from your project in nexus)
   - (link to a sonar report)
   - (link to your root pom file)

.. [1] Be sure to read the responsibilities of being a project lead under
       Leadership & Communication in the Requirements for Participation section
       of the release plan:
       https://wiki.opendaylight.org/view/Simultaneous_Release:Oxygen_Release_Plan#Requirements_for_Participation
.. [2] Special needs include tools or configuration.  Note that generally, the
       only available tools in CI are basic RHEL/CentOS linux images with Java.
       You should note and ask for anything beyond that here.  Email
       helpdesk@opendaylight.org
.. [3] It is recommended to use the OpenDaylight CI infrastructure unless there
       is some HW or SW resource that cannot be installed there.  Update the
       test plan with explanation on why your top-level features will not be
       using the OpenDaylight CI Infrastructure:
       https://wiki.opendaylight.org/view/CrossProject:Integration_Group:Feature_Integration_System_Test_Template#Test_Infrastructure
.. [4] Projects running system test in external Labs are required to report
       system test results in a timely fashion after release creations, e.g.,
       weekly, RC, and formal releases.  Update the test plan with plans on
       testing in external lab:
       https://wiki.opendaylight.org/view/CrossProject:Integration_Group:Feature_Integration_System_Test_Template#Test_Infrastructure
.. [5] https://wiki.opendaylight.org/view/Template:Project_Facts
.. [6] https://wiki.opendaylight.org/view/GettingStarted:Project_Main#New_Project_Checklist
