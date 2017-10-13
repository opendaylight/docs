============
Project Name
============

1. Project PTL:

   - name
   - email
   - IRC handle
   - I have reviewed the PTL Requirements [1]_

2. Project Contact:

   - name
   - email
   - IRC handle

3. Test Contact:

   - name
   - email
   - IRC handle

4. Documentation Contact

   - name
   - email
   - IRC handle

5. Does your project have any updates on any previously-incomplete items from
   prior milestone readouts? (Yes/No)

   - (If yes, list updates)

6. Were project-specific deliverables planned for this milestone delivered
   successfully? (No Deliverables/Yes/No)

   - (If no, list incomplete deliverables)

7. Does your project have any special needs in CI Infrastructure [2]_? (Yes/No)

   - (If yes, link to helpdesk ticket number)

8. Is your project release plan finalized?  (Yes/No)

   - (If yes, link to final release plan wiki page)
   - (If no, ETA to finalize release plan)

9. Do you have all APIs intended to be externally consumable listed? (Yes/No/Not Applicable)

   - Does each API have a useful short name? (Yes/No)
   - Are the Java interface and/or YANG files listed for each API? (Yes/No)
   - Are they labeled as tentative, provisional, or stable as appropriate for
     each API? (Yes/No)
   - Do you call out the OSGi bundles and/or Karaf features providing the API
     for each API? (Yes/No)

10. Have all project dependencies requests on other projects' release plans
    been acknowledged and documented by upstream projects?  (Yes/No)

    - (List of all project dependencies and if they have been acknowledged, unacknowledged)

11. Will your project have top-level features not requiring system test?
    (Yes/No)

    - (If yes, link to system test waiver request email)

12. Will your project use the OpenDaylight CI infrastructure for testing
    top-level features requiring system test? (Yes/No)

    - (If no, link to system test plan explaining why [3]_)
    - (If no, link to system test plan identifying external lab testing [4]_)

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
