.. _bgp-user-guide-troubleshooting:
Troubleshooting
===============
This section offers advices in a case OpenDaylight BGP plugin is not working as expected.

.. contents:: Contents
   :depth: 2
   :local:

BGP is not working...
^^^^^^^^^^^^^^^^^^^^^
* First of all, ensure that all required features are installed, local and remote BGP configuration is correct.

* Check OpenDaylight Karaf logs:

From Karaf console:

.. code-block:: console

   log:tail

or open log file: ``data/log/karaf.log``

Possibly, a reason/hint for a cause of the problem can be found there.

* Try to minimise effect of other OpenDaylight features, when searching for a reason of the problem.

* Try to set DEBUG severity level for BGP logger via Karaf console commands, in order to collect more information:

.. code-block:: console

   log:set DEBUG org.opendaylight.protocol.bgp

.. code-block:: console

   log:set DEBUG org.opendaylight.bgpcep.bgp

Bug reporting
^^^^^^^^^^^^^
Before you report a bug, check `BGPCEP Jira <https://jira.opendaylight.org/browse/BGPCEP-756?jql=project%20%3D%20BGPCEP%20AND%20component%20%3D%20BGP>`_ to ensure same/similar bug is not already filed there.

Write an e-mail to bgpcep-users@lists.opendaylight.org and provide following information:

#. State OpenDaylight version

#. Describe your use-case and provide as much details related to BGP as possible

#. Steps to reproduce

#. Attach Karaf log files, optionally packet captures, REST input/output
