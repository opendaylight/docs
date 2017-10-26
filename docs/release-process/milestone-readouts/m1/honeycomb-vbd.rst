=============
Honeycomb/VBD
=============

1. Project PTL:

   - Michal Cmarada
   - mcmarada@cisco.com
   - michal-cmarada

2. Project Contact:

   - Michal Cmarada
   - mcmarada@cisco.com
   - michal-cmarada

3. Test Contact:

   - Michal Cmarada
   - mcmarada@cisco.com
   - michal-cmarada

4. Documentation Contact

   - Michal Cmarada
   - mcmarada@cisco.com
   - michal-cmarada

5. Does your project have any updates on any previously-incomplete items from
   prior milestone readouts? (Yes/No)

   - No

6. Were project-specific deliverables planned for this milestone delivered
   successfully? (No Deliverables/Yes/No)

   - No Deliverables

7. Does your project have any special needs in CI Infrastructure? (Yes/No)

   - No

8. Is your project release plan finalized?  (Yes/No)

   - Yes, available here: `Release plan <https://wiki.opendaylight.org/view/Honeycomb/VBD/Oxygen/Release_Plan>`_

9. Do you have all APIs intended to be externally consumable listed? (Yes/No/Not Applicable)

   - Does each API have a useful short name? Yes
   - Are the Java interface and/or YANG files listed for each API? Yes
   - Are they labeled as tentative, provisional, or stable as appropriate for
     each API? Yes
   - Do you call out the OSGi bundles and/or Karaf features providing the API
     for each API? Yes

10. Have all project dependencies requests on other projects' release plans
    been acknowledged and documented by upstream projects?  (Yes/No)

    - Dependencies: dlux,dluxapps,mdsal,netconf,odlparent
    - Yes. The dependent projects have been acknowledged in previous releases.

11. Will your project have top-level features not requiring system test?

    - No

12. Will your project use the OpenDaylight CI infrastructure for testing
    top-level features requiring system test? (Yes/No)

    - No
    - There are tests for top level features that are provided via
      `OPNFV (Open Platform for Network Functions Virtualization) pipeline. <http://testresults.opnfv.org/>`_
      Documentation for testing via OPNFV is available here: `FDS (FastDataStacks) Testing Euphrates <https://wiki.opnfv.org/display/fds/FDS+Testing+Euphrates>`_
