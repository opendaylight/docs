===============
OpenFlow Plugin
===============

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

   - `Existing Features <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=tree;f=features-aggregator;h=cdbabd213e7dbcc1944e3e9d389f99c22c17a670;hb=HEAD>`_

2. List all top-level, user-facing, and stable Karaf features for your project.

* **odl-openflowjava-protocol**: OpenFlow protocol library implementation
* **odl-openflowplugin-nsf-model**: OpenFlowPlugin exposed YANG models for device configuration and operational state.
* **odl-openflowplugin-southbound**: OpenFlow Southbound plugin implementation
* **odl-openflowplugin-app-config-pusher**: Pushes node configuration changes to OpenFlow device
* **odl-openflowplugin-app-forwardingrules-manager**: Sends device configuration from config datastore to OpenFlow device incrementally.
* **odl-openflowplugin-app-forwardingrules-sync**: Sends device configuration from config datastore to OpenFlow devices. It uses batching and push the diffs between previous and new configuration. forwardingrules-sync can be replaced with forwardingrules-manager and vice versa.
* **odl-openflowplugin-app-table-miss-enforcer**: Configures table miss flows to OpenFlow device
* **odl-openflowplugin-app-topology**: Discovers topology of connected OpenFlow devices
* **odl-openflowplugin-nxm-extensions**: Support for OpenFlow Nicira Extensions
* **odl-openflowplugin-onf-extensions**: Support for Open Networking Foundation Extensions
* **odl-openflowplugin-flow-services**: Wrapper feature for standard applications
* **odl-openflowplugin-flow-services-rest**: odl-openflowplugin-flow-services feature with REST interface
* **odl-openflowplugin-flow-services-ui**: odl-openflowplugin-flow-services feature with REST interface and UI

Documentation:
--------------

1. List the kinds of documentation you will provide including at least:

* **User Guide(s):**

  * :doc:`../../user-guide/openflow-plugin-project-user-guide`

* **Developer Guide(s):**

  * :doc:`../../developer-guide/openflow-plugin-project-developer-guide`
* Release notes

2. Have you checked in a reStructuredText outline to the docs repository? Yes

   - `Docs module <https://git.opendaylight.org/gerrit/gitweb?p=openflowplugin.git;a=tree;f=docs;h=cb5e9a625ed57e1292eff8556bbe8cf99eb2c745;hb=HEAD>`_

Integration and Test:
---------------------

1. Have you started automated system testing for your top-level features? Yes

   - ` CSIT Tests <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

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
