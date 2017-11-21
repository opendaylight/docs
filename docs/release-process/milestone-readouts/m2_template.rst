============
Project Name
============

Please provide updates on any previously-incomplete items from prior milestone
readouts.

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes/No

   - If you had Tentative APIs, have they been moved to Provisional or dropped?
     (Yes/No) <link to release plan>
   - If any of your Tentative APIs were dropped, have you notified all projects
     that were expecting them? (Yes/No) <link to e-mail>
   - Also please list all dropped APIs.

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? (Yes/No)

   - (If no, please list the features you were expecting that have not been delivered)
   - (The respective project [1]_ you were expecting to receive them from)

3. Were there any project-specific deliverables planned for this milestone?
   Yes/No

   - (If so, were they delivered? Yes/No)

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? (Yes/No)

   - Please provide link to gerrit patch

2. List all top-level, user-facing, and stable Karaf features for your project.

   - For top-level and user-facing features, please provide a one-sentence
     description a developer and/or user would find helpful.

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   - One user/operator guide section per user-facing feature.
   - One developer guide per top-level feature.
   - An installation guide for any top-level features that require more than
     feature:install <feature-name> to install.
   - Release notes (mandatory) [2]_.
   - Optional tutorials and how-tos.

2. Have you checked in a reStructuredText outline to the docs repository? (Yes/No)

   - Please provide link to gerrit patch

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features?
   (Yes/No)

   - (If yes, link to test report)
   - (If no, why?)

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? (Yes/No)

   - (If yes, link to test plans)
   - (If no, why?)

3. Have you integrated odlparent 3 / yangtools 2? (Yes/No/NA)

   - (If yes, link to gerrit patch)

Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone?
   (Yes/No)

   - (If so, were they delivered? Yes/No )

2. Have you updated your project facts with the project type category? (Yes/No)

3. Do you acknowledge the changes to the RC Blocking Bug Policy [3]_? (Yes/No)

.. [1] Note that you can only reasonably hold a project to something if you
       formally asked for it during the release planning process and the project
       team members acknowledged that ask saying they would do it.
.. [2] Release notes must be updated prior to a major release. It is a good idea
       to keep release notes as a living document when significant changes are
       made.
.. [3] https://lists.opendaylight.org/pipermail/tsc/2016-December/006468.html
