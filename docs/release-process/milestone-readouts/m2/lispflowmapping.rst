=================
LISP Flow Mapping
=================

Please provide updates on any previously-incomplete items from prior milestone
readouts.
None

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes

   - If you had Tentative APIs, have they been moved to Provisional or dropped?

     - NA https://wiki.opendaylight.org/view/OpenDaylight_Lisp_Flow_Mapping:Oxygen_Release_Plan

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? No new dependencies

3. Were there any project-specific deliverables planned for this milestone?
   No

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? No

   - In progress

2. List all top-level, user-facing, and stable Karaf features for your project.

   - **odl-lispflowmapping-msmr**: This is the core feature that provides the Mapping
     Services and include the LISP southbound plugin feature as well.

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - User Guide
   - Release Notes

2. Have you checked in a reStructuredText outline to the docs repository? Yes

   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/lisp-flow-mapping-user-guide.rst;h=db9419246f3e707f23c48d6ed965f11de7911c48;hb=HEAD

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features? Yes

   - https://jenkins.opendaylight.org/releng/view/lispflowmapping/job/lispflowmapping-csit-1node-msmr-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/lispflowmapping/job/lispflowmapping-csit-1node-performance-only-oxygen/
   - https://jenkins.opendaylight.org/releng/view/lispflowmapping/job/lispflowmapping-csit-3node-msmr-all-oxygen/

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? Yes

   - https://wiki.opendaylight.org/view/OpenDaylight_Lisp_Flow_Mapping:Oxygen:All_Integration_System_Test

Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone?
   No

2. Have you updated your project facts with the project type category? Yes

3. Do you acknowledge the changes to the RC Blocking Bug Policy [3]_? Yes

.. [1] Note that you can only reasonably hold a project to something if you
       formally asked for it during the release planning process and the project
       team members acknowledged that ask saying they would do it.
.. [2] Release notes must be updated prior to a major release. It is a good idea
       to keep release notes as a living document when significant changes are
       made.
.. [3] https://lists.opendaylight.org/pipermail/tsc/2016-December/006468.html
