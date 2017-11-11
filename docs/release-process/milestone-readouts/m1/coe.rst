===
COE
===

1. Project PTL:

   - Prem Sankar G
   - prem.sankar.g@ericsson.com
   - premsankar
   - Yes, I have reviewed the PTL Requirements.

2. Project Contact:

   - Prem Sankar G
   - prem.sankar.g@ericsson.com
   - premsankar

3. Test Contact:

   - Prem Sankar G
   - prem.sankar.g@ericsson.com
   - premsankar

4. Documentation Contact

   - Faseela K
   - faseela.k@ericsson.com
   - faseelak

5. Does your project have any updates on any previously-incomplete items from
   prior milestone readouts? (Yes/No)

   - No

6. Were project-specific deliverables planned for this milestone delivered
   successfully? (No Deliverables/Yes/No)

   - No Deliverables

7. Does your project have any special needs in CI Infrastructure? (Yes/No)

   - No

8. Is your project release plan finalized?  (Yes/No)

   - Yes, https://wiki.opendaylight.org/view/Coe:Oxygen_Release_Plan

9. Do you have all APIs intended to be externally consumable listed? (Yes/No/Not Applicable)

   - Does each API have a useful short name? Yes
   - Are the Java interface and/or YANG files listed for each API? Yes
   - Are they labeled as tentative, provisional, or stable as appropriate for
     each API? Yes. They are all labelled as provisional
   - Do you call out the OSGi bundles and/or Karaf features providing the API
     for each API? Yes

10. Have all project dependencies requests on other projects' release plans
    been acknowledged and documented by upstream projects?  (Yes/No)

    - odlparent
    - YANG tools
    - mdsal
    - controller

11. Will your project have top-level features not requiring system test?
    (Yes/No)

    - Yes.

12. Will your project use the OpenDaylight CI infrastructure for testing
    top-level features requiring system test? (Yes/No)

    - No. Coe only include unit test for top-level features
      because it's covered by unit tests and system tests requires k8s
      and other ODL dependent project like netvirt.
      The system test will be covered by ODL netvirt.
