============
Distribution
============

Overview
========

The Distribution project is the placeholder for the ODL karaf
distribution. The project currently generates 3 artifacts:

.. list-table:: Distribution Artifacts
   :widths: 20 50
   :header-rows: 1

   * - **Artifact**
     - **Description**

   * - **Managed distribution** (e.g., karaf-<version>.tar.gz)
     - This includes the managed projects in OpenDaylight
       (refer to, :ref:`managed-release`).
   * - **Common distribution** (e.g., opendaylight-<version>.tar.gz)
     - This includes managed and self-managed projects
       (refer to, :ref:`managed-release`).
   * - **ONAP distribution** (e.g., onap-karaf-<version>.tar.gz)
     - This is the distribution used in the ONAP CCSDK project.

The distribution project is also the placeholder for the distribution
scripts. Example of these scripts:

* :ref:`Clustering scripts in Distribution <getting-started-clustering-scripts>`

Behavior/Feature Changes
========================

Here is the link to the features improved in this release:

`OpenDaylight JIRA Tickets - Improvement <https://jira.opendaylight.org/issues/?jql=project+%3D+distribution+AND+type+%3D+Improvement+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_

New Features
============

Here is the link to the new features introduced in this release:

`OpenDaylight JIRA Tickets - New Feature <https://jira.opendaylight.org/issues/?jql=project+%3D+distribution+AND+type+%3D+%22New+Feature%22+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_

Deprecated Features
===================

Here is the link to the features removed in this release:

`OpenDaylight JIRA Tickets - Deprecated Feature <https://jira.opendaylight.org/issues/?jql=project+%3D+distribution+AND+type+%3D+Deprecate+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_

Resolved Issues
===============

Here is the link to the resolved issues fixed in this release:

`OpenDaylight JIRA Tickets - Resolved Issue <https://jira.opendaylight.org/issues/?jql=project+%3D+distribution+AND+type+%3D+Bug+AND+status+in+%28Resolved%2C+Done%2C+Closed%29+AND+fixVersion+in+%28%22Silicon+GA%22%2C+Silicon%2C+silicon%29++ORDER+BY+issuetype+DESC%2C+key+ASC>`_


Known Issues
============

Here is the link to the known issues exist in this release:

`OpenDaylight JIRA Tickets - Known Issue <https://jira.opendaylight.org/issues/?jql=project+%3D+distribution+AND+type+%3D+Bug+AND+status+not+in+%28Resolved%2C+Done%2C+Closed%29+ORDER+BY+issuetype+DESC%2C+key+ASC>`_