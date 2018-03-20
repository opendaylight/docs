=======
Netconf
=======

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project met code freeze [1]_? Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation? Yes

4. Is your documentation complete [2]_? Yes

   - Documentation from the previous release still applies.

5. Were project-specific deliverables planned for this milestone delivered
   successfully? No Deliverables

6. Are you running at least one basic automated system test job for each
   top-level feature? Yes

   - https://jenkins.opendaylight.org/releng/view/netconf/

7. Do you have any CLM violations? Yes

   - There are violations with outdated versions of jackson-databind and
     ehcache components. We don't dev time to test and update newer
     versions of the components.

**Stable Features (Only for Projects with Stable Features)**

A. Do your stable features fulfill quality requirements [3]_? No

   - We might not have that high UT coverage for each stable feature. But
     we have exhaustive CSIT tests for stable feature.

B. Are you running several automated system test jobs [4]_ for each stable
   feature? Yes

   - https://jenkins.opendaylight.org/releng/view/netconf/

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
