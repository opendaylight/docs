==========
ODL Parent
==========

1. Do you have any previously-incomplete items from prior milestone
   readouts? No

2. Has your project met code freeze? Yes

3. Are all externally visible strings frozen to allow for translation &
   documentation? Yes

4. Is your documentation complete? No

   - Developer's Guide: https://git.opendaylight.org/gerrit/gitweb?p=docs.git;a=blob;f=docs/developer-guide/odl-parent-developer-guide.rst
   - Updates forthcoming for 3.0

5. Were project-specific deliverables planned for this milestone delivered
   successfully? Yes

6. Are you running at least one basic automated system test job for each
   top-level feature? No

   - ODL Parent has a system test waiver

7. Do you have any CLM violations? (Yes/No)

   - Yes. The newly-identified vulnerabilities are as follows:

     - ``org.apache.karaf.jaas.modules``: this is a false-positive based on
       httpcomponents but using the Karaf version
     - CVE-2016-3092, CVE-1026-1000031: file upload in Karaf; this isn’t
       exposed in ODL
     - ``org.ops4j.pax.web`` JSP vulnerabilities: ODL doesn’t ship any JSPs

**Stable Features (Only for Projects with Stable Features)**

A. Do your stable features fulfill quality requirements? No

   - ODL Parent’s features wrap upstream features, so they rely on upstream’s
     testing

B. Are you running several automated system test jobs for each stable
   feature? No

   - ODL Parent has a system test waiver
