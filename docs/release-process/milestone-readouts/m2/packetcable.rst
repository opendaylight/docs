===========
Packetcable
===========

Please provide updates on any previously-incomplete items from prior milestone
readouts.

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes

   - If you had Tentative APIs, have they been moved to Provisional or dropped?
     There were no Tentative APIs in the Packetcable project.

2. Are all your inter-project dependencies resolved? Yes

3. Were there any project-specific deliverables planned for this milestone?
   No

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository?
   Yes, but there are no new features for the Oxygen release of Packetcable
   so no Gerrit patch is applicable.

2. List all top-level, user-facing, and stable Karaf features for your project.

   - odl-packetcable-policy-server
   - The Packetcable Policy Server enables flow-based dynamic QoS for DOCSIS
     infrastructure-based systems utilizing the COPS protocols.

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - Packetcable user/operator guide (includes install guide)
   - Packetcable developer guide
   - Packetcable Oxygen Release notes

2. Have you checked in a reStructuredText outline to the docs repository? No

   - As there are no planned changes to the project documentation for the
     Oxygen release, the current document versions in the master branch
     will be used.

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features?
   Yes

   - https://jenkins.opendaylight.org/releng/view/packetcable/job/packetcable-csit-1node-pcmm-all-oxygen/61/robot/

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature?
   No - Packetcable has no (official) stable features at this time.

3. Have you integrated odlparent 3 / yangtools 2?  No


Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone?
   No

2. Have you updated your project facts with the project type category?
   Yes

3. Do you acknowledge the changes to the RC Blocking Bug Policy?
   Yes
