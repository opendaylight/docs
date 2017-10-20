==================
Neutron Northbound
==================

1. Project PTL:

   - Isaku Yamahata
   - isaku.yamahata@gmail.com
   - yamahata
   - Yes, I have reviewed the PTL Requirements.

2. Project Contact:

   - Isaku Yamahata
   - isaku.yamahata@gmail.com
   - yamahata

3. Test Contact:

   - Pramod Raghavendra Jayathirth
   - pramod.raghavendra.jayathirth@intel.com
   - pramodrj07

4. Documentation Contact

   - Pramod Raghavendra Jayathirth
   - pramod.raghavendra.jayathirth@intel.com
   - pramodrj07

5. Does your project have any updates on any previously-incomplete items from
   prior milestone readouts? (Yes/No)

   - No

6. Were project-specific deliverables planned for this milestone delivered
   successfully? (No Deliverables/Yes/No)

   - No Deliverables

7. Does your project have any special needs in CI Infrastructure? (Yes/No)

   - No

8. Is your project release plan finalized?  (Yes/No)

   - Yes, https://wiki.opendaylight.org/view/NeutronNorthbound:Oxygen_Release_Plan

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
    - netconf
    - ovsdb
    - So far they all haven't acked it yet.
      requesting mail can be found at
      https://lists.opendaylight.org/pipermail/release/2017-October/012706.html

11. Will your project have top-level features not requiring system test?
    (Yes/No)

    - Yes. https://lists.opendaylight.org/pipermail/release/2017-October/012703.html

12. Will your project use the OpenDaylight CI infrastructure for testing
    top-level features requiring system test? (Yes/No)

    - No. Neutron Northbound only include unit test for top-level features
      because it's covered by unit tests and system tests requires openstack
      and other ODL dependent project like netvirt.
      The system test is covered by ODL netvirt, openstack CI system and
      OPNFV fast-data-stack.
