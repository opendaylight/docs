============
Distribution
============

Overview
========

The Distribution project is the placeholder for the ODL karaf
distribution. The project currently generates 2 artifacts:

* The Managed distribution (e.g. karaf-<version>.tar.gz): This includes
  the Managed projects in OpenDaylight (See :ref:`managed-release`).
 
* The Common distribution (e.g. opendaylight-<version>.tar.gz): This
  includes Managed and Self-Managed projects (See :ref:`managed-release`).

The distribution project is also the placeholder for the distribution
scripts. Example of these scripts:

* :ref:`Clustering scripts in Distribution <getting-started-clustering-scripts>`

Behavior Changes
================

No behavior change in this release.

New and Modified Features
=========================

No new features were added in this release, and no existing features were
modified.

Deprecated Features
===================

No existing features were removed in this release.

Resolved Issues
===============

No issues were resolved in this release.

Known Issues
============

* `ODLPARENT-110 <https://jira.opendaylight.org/browse/ODLPARENT-110>`_

  Successive feature installation from karaf4 console causes bundles refresh.

  **Workaround:**

  * Use --no-auto-refresh option in the karaf feature install command.

    .. code:: bash

       feature:install --no-auto-refresh odl-netconf-topology

  * List all the features you need in the karaf config boot file.

  * Install all features at once in console, for example:

    .. code:: bash

       feature:install odl-restconf odl-netconf-mdsal odl-mdsal-apidocs odl-clustering-test-app odl-netconf-topology

* `ODLPARENT-113 <https://jira.opendaylight.org/browse/ODLPARENT-113>`_

  The ssh-dss method is used by Karaf SSH console, but no longer supported by
  clients such as OpenSSH.

  **Workaround:**

  * Use the bin/client script, which uses karaf:karaf as the default
    credentials.

  * Use this ssh option:

    .. code:: bash

       ssh -oHostKeyAlgorithms=+ssh-dss -p 8101 karaf@localhost

  After restart, Karaf is unable to re-use the generated host.key file.

  **Workaround:** Delete the etc/host.key file before starting Karaf again.

