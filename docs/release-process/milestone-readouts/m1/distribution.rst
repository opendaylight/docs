========================
Integration/Distribution
========================

1. Project PTL: Vratko Polak, vrpolak@cisco.com, vrpolak

   - I have reviewed the PTL Requirements [1]_: True.

2. Project Contact: Luis Gomez, ecelgp@gmail.com, LuisGomez

3. Test Contact: Vratko Polak, vrpolak@cisco.com, vrpolak

4. Documentation Contact: Luis Gomez, ecelgp@gmail.com, LuisGomez

5. Does your project have any updates on any previously-incomplete items from
   prior milestone readouts? No

6. Were project-specific deliverables planned for this milestone delivered
   successfully? Yes

7. Does your project have any special needs in CI Infrastructure [2]_? No

8. Is your project release plan finalized? Yes

   - [7]_.

9. Do you have all APIs intended to be externally consumable listed? Yes

   - Does each API have a useful short name? Yes
   - Are the Java interface and/or YANG files listed for each API? Yes
   - Are they labeled as tentative, provisional, or stable as appropriate for
     each API? Yes
   - Do you call out the OSGi bundles and/or Karaf features providing the API
     for each API? Yes

10. Have all project dependencies requests on other projects' release plans
    been acknowledged and documented by upstream projects?  Yes

    - Zero requests

11. Will your project have top-level features not requiring system test? Yes

    - legacy experimental scripts
    - no waiver requested

12. Will your project use the OpenDaylight CI infrastructure for testing
    top-level features requiring system test? Yes

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
.. [7] https://wiki.opendaylight.org/view/Integration/Distribution/Oxygen_Release_Plan
