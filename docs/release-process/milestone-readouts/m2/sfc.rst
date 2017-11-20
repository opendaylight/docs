=========================
Service Function Chaining
=========================

Please provide updates on any previously-incomplete items from prior milestone
readouts.

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes

   - If you had Tentative APIs, have they been moved to Provisional or dropped?
     N/A

   - If any of your Tentative APIs were dropped, have you notified all projects
     that were expecting them? N/A

   - Also please list all dropped APIs.
     No APIs were dropped, but we did deprecate the RSP creation via RPC,
     and it will be removed in Fluorine.

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? Yes

3. Were there any project-specific deliverables planned for this milestone? No

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? No

   There will be 2 new SFC features in Oxygen: odl-sfc-shell and odl-sfc-statistics.
   The odl-sfc-shell feature has been added to the integration git repo
   in the gerrit patch below, but the odl-sfc-statistics feature is not
   ready yet and will be added soon.

   - https://git.opendaylight.org/gerrit/65684

2. List all top-level, user-facing, and stable Karaf features for your project.

   - For top-level and user-facing features, please provide a one-sentence
     description a developer and/or user would find helpful.

     - Top level, user-facing SFC features

       - odl-sfc-netconf: Provides functionality to communicate with Netconf capable Service Functions.
       - odl-sfc-scf-openflow: SFC stand-alone openflow classifier.
       - odl-sfc-scf-vpp: SFC stand-alone vpp classifier.
       - odl-sfc-openflow-renderer: Renderer functionality for OpenFlow capable switches.
       - odl-sfclisp: Programs LISP capable switches.
       - odl-sfc-sb-rest: Implements a South Bound Rest interface to send configuration to REST-capable switches.
       - odl-sfc-ui: This feature is the SFC User Interface.
       - odl-sfc-vnfm-tacker: Tacker VNF Manager interface.
       - odl-sfc-ios-xe-renderer: Renderer functionality for IO XE switches that use netconf.
       - odl-sfc-vpp-renderer: Renderer functionality for fd.io VPP (Vector Packet Processor) switches that use netconf.
       - odl-sfc-pot: This feature implements a Proof of Transit for the Service Functions.

     - Top level, non-user-facing SFC features consumed by the user-facing features above

       - odl-sfc-genius: This feature implements the Genius utilities created by SFC project.
       - odl-sfc-model: This feature defines and implements the SFC data model as specified here https://datatracker.ietf.org/doc/rfc7665/
       - odl-sfc-pot-netconf-renderer: This feature implements the Netconf rendering for the Proof of Transit for the Service Functions.
       - odl-sfc-provider: This feature provides an easy-to-use interface to the sfc-model.
       - odl-sfc-provider-rest: This feature provides no functionality, and just installs the necessary features for SFC restconf.
       - odl-sfc-ovs: This feature provides functionality for SFC to communicate with OVSDB for SFF configuration.
       - odl-sfc-test-consumer: This feature is used for testing only.

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - A user guide for the SFC project.
   - A developer guide for the SFC project.
   - Release notes (mandatory) [2]_.

2. Have you checked in a reStructuredText outline to the docs repository? No

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features? Yes

   - https://jenkins.opendaylight.org/releng/view/sfc/

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? No

   - We're not ready with this yet.

Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone? No

2. Have you updated your project facts with the project type category? Yes

3. Do you acknowledge the changes to the RC Blocking Bug Policy [3]_? Yes

.. [1] Note that you can only reasonably hold a project to something if you
       formally asked for it during the release planning process and the project
       team members acknowledged that ask saying they would do it.
.. [2] Release notes must be updated prior to a major release. It is a good idea
       to keep release notes as a living document when significant changes are
       made.
.. [3] https://lists.opendaylight.org/pipermail/tsc/2016-December/006468.html
