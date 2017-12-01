==================
Group Based Policy
==================

1. Project PTL: Michal Cmarada, mcmarada@cisco.com, michal-cmarada

2. Project Contact: Michal Cmarada, mcmarada@cisco.com, michal-cmarada

3. Test Contact: Tomas Cechvala, tcechval@cisco.com, tomas_c

4. Documentation Contact: Michal Cmarada, mcmarada@cisco.com, michal-cmarada

5. Does your project have any updates on any previously-incomplete items from
   prior milestone readouts? No

6. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

7. Does your project have any special needs in CI Infrastructure? Yes

   - We need NSH (Network Service Header) support in OVS (OpenVSwitch) for some test cases. see `Bug-8488 <https://bugs.opendaylight.org/show_bug.cgi?id=8488>`_

8. Is your project release plan finalized? Yes

   - Available here: `Release plan <https://wiki.opendaylight.org/view/Group_Based_Policy_(GBP)/Releases/Oxygen/Release_plan>`_

9. Do you have all APIs intended to be externally consumable listed? Yes

   - Does each API have a useful short name? Yes
   - Are the Java interface and/or YANG files listed for each API? Yes
   - Are they labeled as tentative, provisional, or stable as appropriate for
     each API? Yes
   - Do you call out the OSGi bundles and/or Karaf features providing the API
     for each API? Yes

10. Have all project dependencies requests on other projects' release plans
    been acknowledged and documented by upstream projects? Yes

    - Dependencies: aaa,controller,dlux,faas,honeycomb/vbd,lispflowmapping,mdsal,netconf,neutron,odlparent,openflowplugin,ovsdb,sfc,sxp
    - Yes. The dependent projects have been acknowledged in previous releases.

11. Will your project have top-level features not requiring system test? No

12. Will your project use the OpenDaylight CI infrastructure for testing
    top-level features requiring system test? Yes

    - There are tests for top level features that are provided via
      `OPNFV (Open Platform for Network Functions Virtualization) pipeline. <http://testresults.opnfv.org/>`_
      Documentation for testing via OPNFV is available here: `FDS (FastDataStacks) Testing Euphrates <https://wiki.opnfv.org/display/fds/FDS+Testing+Euphrates>`_
