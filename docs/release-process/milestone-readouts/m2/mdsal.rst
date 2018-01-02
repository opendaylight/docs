======
MD-SAL
======

Please provide updates on any previously-incomplete items from prior milestone
readouts.

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes

   - If you had Tentative APIs, have they been moved to Provisional or dropped? No

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? Yes

3. Were there any project-specific deliverables planned for this milestone?
   Yes

   - If so, were they delivered? Yes

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? Yes

   - Existing feature

2. List all top-level, user-facing, and stable Karaf features for your project.

   * **odl-triemap**: Ctrie-based java.util.Map implementation
   * **odl-yangtools-codec**: YANG data XML and JSON codecs
   * **odl-yangtools-common**: Common YANG constants and concepts
   * **odl-yangtools-data-api**: YANG data instance and transformation APIs
   * **odl-yangtools-data**: YANG data instance reference implementation
   * **odl-yangtools-export**: YANG metamodel encoding utilities
   * **odl-yangtools-parser-api**: YANG metamodel and parser APIs
   * **odl-yangtools-parser**: YANG/YIN RFC6020/RFC7950 parser and compiler
   * **odl-yangtools-util**: Core concepts and utilities
   * **odl-yangtools-xpath**: YANG data instance XPath support

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   * **Release notes**

     * :doc:`../../../release-notes/projects/mdsal`

2. Have you checked in a reStructuredText outline to the docs repository? Yes

   - https://git.opendaylight.org/gerrit/66837

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features?
   Yes

   - ` CSIT Tests <https://jenkins.opendaylight.org/releng/view/mdsal/job/mdsal-csit-1node-periodic-bindingv1-only-oxygen/>`_

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? (Yes/No)

   - No, test plan is expected at M4.

3. Have you integrated odlparent 3 / yangtools 2? (Yes/No/NA)

   - Yes, https://git.opendaylight.org/gerrit/65892.

Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone?
   Yes.

   - If so, were they delivered? Yes.

2. Have you updated your project facts with the project type category? Yes

3. Do you acknowledge the changes to the RC Blocking Bug Policy [3]_? Yes

.. [1] Note that you can only reasonably hold a project to something if you
       formally asked for it during the release planning process and the project
       team members acknowledged that ask saying they would do it.
.. [2] Release notes must be updated prior to a major release. It is a good idea
       to keep release notes as a living document when significant changes are
       made.
.. [3] https://lists.opendaylight.org/pipermail/tsc/2016-December/006468.html
