
======
Unimgr
======

1. Do you have any previously-incomplete items from prior milestone
   readouts? (Yes/No)

   - No

2. Has your project achieved API freeze such that all externally accessible
   Stable or Provisional APIs will not be modified after now? (Yes/No)

   - Yes

3. Do you have content in your project documentation? (Yes/No)

   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/user-guide/uni-manager-plug-in-project.rst;h=7255cfbb94ef317a04395825e45c43068a06522b;hb=HEAD
   - https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/uni-manager-plug-in-developer-guide.rst;h=9c003a8c813c7b1d33dc61aa0b41299560f34d39;hb=HEAD

4. Has your project met the requirements to be included in Maven Central [2]_?
   (Yes/No)

   - Yes

5. Were project-specific deliverables planned for this milestone delivered
   successfully? (No Deliverables/Yes/No)

   - Yes

6. Have you started automated system testing for your top-level features? (Yes/No)

   - https://jenkins.opendaylight.org/releng/view/unimgr/job/unimgr-csit-1node-basic-all-oxygen/
   - https://jenkins.opendaylight.org/releng/view/unimgr/job/unimgr-csit-1node-legato-all-oxygen/

7. Does your project use any ports, including for testing? (Yes/No)

   - 830 - Netconf
   - 6640, 6641 - OVSDB

8. Does your project build successfully in Autorelease? (Yes/No)

   - Yes
   - https://jenkins.opendaylight.org/releng/job/unimgr-validate-autorelease-oxygen/36/

.. [2] http://central.sonatype.org/pages/requirements.html
