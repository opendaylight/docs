.. Instructions
..    1. Replace Project Name with your actual project name, ensure you have
..       the same number of ='s as the length of your project in the line before
..       and the line after.
..    2. Remove the (Yes/No) answer at the end of each question with your actual
..       response: Yes or No
..       Note: For Question 5, the response could be: No Deliverables
..    3. For detailed information on each question, use a sub list with a -
..       in front that aligns with the text above and ensure you have a blank
..

==================
Neutron Northbound
==================

1. Do you have any previously-incomplete items from prior milestone
   readouts?

   No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now?

   No. The following three patches will be merged. They don't break API
   compatibility. The breaking part are postponed to F.

   - https://git.opendaylight.org/gerrit/#/c/66915/
   - https://git.opendaylight.org/gerrit/#/c/60170/
   - https://git.opendaylight.org/gerrit/#/c/51981/

3. Do you have content in your project documentation?

   Yes. No update since Nitrgen cycle.

   - 434 words https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/neutron-northbound.rst;hb=HEAD
   - 702 words https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/neutron-service-developer-guide.rst;hb=HEAD
   - 808 words https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/neutron-service-user-guide.rst;hb=HEAD

4. Has your project met the requirements to be included in Maven Central [2]_?

   Yes

5. Were project-specific deliverables planned for this milestone delivered
   successfully?

   No Deliverables

6. Have you started automated system testing for your top-level features?

   System test waiver is applied.
     - https://lists.opendaylight.org/pipermail/release/2017-October/012703.html

   Yes with OpenStack CI.
     - https://review.openstack.org/#/q/project:openstack/networking-odl

   Also ODL Neutron Northbound is tested with NetVirt project, OPNFV FastDataStack

7. Does your project use any ports, including for testing?

   Yes

   - (If yes, list of ports used) 8181, 8087
   - (If yes, have you updated the wiki [3]_ with all ports used? Yes

8. Does your project build successfully in Autorelease?

   Yes. https://jenkins.opendaylight.org/releng/job/neutron-validate-autorelease-oxygen/36/

   - (If yes, link to successful autorelease job [4]_)
   - (If not, explain why)

.. [1] Provide a link to a gerrit search for patches modifying the files
       defined as specifying the API. For example:
       https://git.opendaylight.org/gerrit/#/q/file:%255Eopendaylight/md-sal/sal-binding-api/.%252B+status:merged+project:controller
.. [2] http://central.sonatype.org/pages/requirements.html
.. [3] https://wiki.opendaylight.org/view/Ports
.. [4] https://wiki.opendaylight.org/view/RelEng/Autorelease/Project_Autorelease_Requirements
