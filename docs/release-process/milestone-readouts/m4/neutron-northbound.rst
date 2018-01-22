.. Instructions
..    1. Replace Project Name with your actual project name, ensure you have
..       the same number of ='s as the length of your project in the line before
..       and the line after.
..    2. Remove the (Yes/No) answer at the end of each question with your actual
..       response: Yes or No
..       Note: For Question 5, the response could be: No Deliverables
..    3. For detailed information on each question, use a sub list with a -
..       in front that aligns with the text above and ensure you have a blank
..       line before it.
..

==================
Neutron Northbound
==================

1. Do you have any previously-incomplete items from prior milestone
   readouts?

   No

2. Has your project met code freeze [1]_?

   Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation?

   Yes

4. Is your documentation complete [2]_?

   Yes. No update since Nitrgen cycle.

   - (For each document, link to the file in gerrit)
     - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/neutron-northbound.rst;hb=HEAD
     - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/neutron-service-developer-guide.rst;hb=HEAD
     - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/neutron-service-user-guide.rst;hb=HEAD

   - (Link to pending gerrit patches waiting approval)
     - None

5. Were project-specific deliverables planned for this milestone delivered
   successfully? (No Deliverables/Yes/No)

   No. the followings features are postponed to fluorine cycle.
   - removal of tenant-id
   - move status from configuration space to operation space
   - port status update

6. Are you running at least one basic automated system test job for each
   top-level feature?

   - (If yes, link to test report)
   - (If not, explain why)

   No. System test waiver is applied.
   - https://lists.opendaylight.org/pipermail/release/2017-October/012703.html
   Yes with OpenStack CI.
   - https://review.openstack.org/#/q/project:openstack/networking-odl

   Also ODL Neutron Northbound is tested with NetVirt project, OPNFV FastDataStack

7. Do you have any CLM violations?

   - (If yes, list your CLM violations and explain why each violation can be exempt)

   Yes as shown by NEUTRON CLM job.
   - https://clm.opendaylight.org/assets/index.html#/reports/neutron/5fc334cf335a41659786db11e8d5e67e

   In short, Neutron Northbound uses some of them and the fix should
   be to upgrade their versions. But all the versions are specified by
   odlparent or dependent projects.

**Stable Features (Only for Projects with Stable Features)**

N/A

A. Do your stable features fulfill quality requirements [3]_?

   - (If yes, link to sonar report)
   - (If not, explain why)

   N/A

B. Are you running several automated system test jobs [4]_ for each stable
   feature?

   - (If yes, link to test reports)
   - (If not, explain why)

   N/A

.. [1] Only bug fixes are allowed from now on
.. [2] Only editing and enhancing should take place from now on
.. [3] Unit and/or integration test coverage of at least 75%
.. [4] These test jobs include functionality, cluster, scalability, performance,
       longevity/stability
