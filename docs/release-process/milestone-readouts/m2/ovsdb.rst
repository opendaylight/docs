=====
OVSDB
=====

Please provide updates on any previously-incomplete items from prior milestone
readouts.
None

Functionality Freeze:
---------------------

1. Final list of externally consumable APIs defined: Yes

   - If you had Tentative APIs, have they been moved to Provisional or dropped? No

   - If any of your Tentative APIs were dropped, have you notified all projects
     that were expecting them? No API dropped.
   - Also please list all dropped APIs. - None

2. Are all your inter-project dependencies resolved (i.e., have the other
   projects you were counting on given you what you needed)? Yes

3. Were there any project-specific deliverables planned for this milestone? Yes (Mainly Bug Fixes)

   - If so, were they delivered? Yes

Karaf Features Defined:
-----------------------

1. Are all your project's features that are intended for release added to the
   features.xml and checked into integration git repository? Yes

   - `Existing Features <https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=tree;f=southbound/southbound-features;h=99e3dbd349e18886312a82db325f54ae2fb70ac6;hb=HEAD>`_

2. List all top-level, user-facing, and stable Karaf features for your project.

   - **OVSDB Southbound Plugin**:

     * **odl-ovsdb-southbound-api**: User should install this feature if they want to load the yang models expose by the plugin and want to write their own plugin implementation.
     * **odl-ovsdb-southbound-impl** : User should install this feature if they want to consume plugin using the java bindings.
     * **odl-ovsdb-southbound-impl-rest**: User should install this feature if they want to write application that consume plugin using java binding as well as rest interface.
     * **odl-ovsdb-southbound-impl-ui**: User should install this feature if they want to use bindings provided by odl-ovsdb-southbound-impl-rest and also want to load the Dlux GUI.

   - **OVSDB Hardware vTEP Plugin**:

     * **odl-ovsdb-hwvtepsouthbound-api**: User should install this feature if they want to load the yang models expose by the plugin and want to write their own plugin implementation.
     * **odl-ovsdb-hwvtepsouthbound** : User should install this feature if they want to consume plugin using the java bindings.
     * **odl-ovsdb-hwvtepsouthbound-rest**: User should install this feature if they want to write application that consume plugin using java binding as well as rest interface.
     * **odl-ovsdb-hwvtepsouthbound-ui**: User should install this feature if they want to use bindings provided by odl-ovsdb-hwvtepsouthbound-rest and also want to load the dlux GUI.

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

   * **User Guide(s):**

     * :doc:`OVSDB User Guide <../../../user-guide/ovsdb-user-guide>`

   * **Developer Guide(s):**

     * :doc:`OVSDB Developer Guide <../../../developer-guide/ovsdb-developer-guide>`

   * Release notes

2. Have you checked in a reStructuredText outline to the docs repository? Yes

   - `Docs module <https://git.opendaylight.org/gerrit/gitweb?p=ovsdb.git;a=tree;f=docs;h=5369a85700cc02e8a9945fa7b1b0926c0f6e295f;hb=HEAD>`_

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features? Yes

   - ` CSIT Tests <https://jenkins.opendaylight.org/releng/view/ovsdb/>`_

2. Have you filled out basic system test plan template for each top-level
   feature (karaf and not karaf) and a comprehensive system test plan template
   including functionality, cluster, scalability, performance,
   longevity/stability for each stable feature? No

   - Not done yet, will be available by M3

3. Have you integrated odlparent 3 / yangtools 2? No

Project Specific:
-----------------

1. Were there any project-specific deliverables planned for this milestone? Yes (Mostly bug fixing)

2. Have you updated your project facts with the project type category? Yes

3. Do you acknowledge the changes to the RC Blocking Bug Policy [3]_? Yes

.. [1] Note that you can only reasonably hold a project to something if you
       formally asked for it during the release planning process and the project
       team members acknowledged that ask saying they would do it.
.. [2] Release notes must be updated prior to a major release. It is a good idea
       to keep release notes as a living document when significant changes are
       made.
.. [3] https://lists.opendaylight.org/pipermail/tsc/2016-December/006468.html
