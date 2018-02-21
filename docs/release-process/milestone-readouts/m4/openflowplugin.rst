===============
OpenFlow Plugin
===============

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project met code freeze [1]_? Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation? Yes

4. Is your documentation complete [2]_? Yes

   * **User Guide(s):**

     * :doc:`../../../user-guide/openflow-plugin-project-user-guide`

   * **Developer Guide(s):**

     * :doc:`../../../developer-guide/openflow-plugin-project-developer-guide`

5. Were project-specific deliverables planned for this milestone delivered
   successfully? Yes

6. Are you running at least one basic automated system test job for each
   top-level feature? (Yes/No)

   - ` CSIT Tests <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

7. Do you have any CLM violations?

   - All violations are transitive dependencies from other ODL Projects

**Stable Features (Only for Projects with Stable Features)**

A. Do your stable features fulfill quality requirements [3]_? Yes
    Almost (Main plugin implementation has coverage more than 75%. Overall Unit Test Coverage is 68%, but we have
    extensive CSIT that overall increase the coverage above 75%)

   - https://sonar.opendaylight.org/dashboard?id=org.opendaylight.openflowplugin%3Aopenflowplugin-impl

B. Are you running several automated system test jobs [4]_ for each stable
   feature? Yes, please refer the below URL to see details of all the running CSIT jobs.

   - ` CSIT Tests <https://jenkins.opendaylight.org/releng/view/openflowplugin/>`_

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
