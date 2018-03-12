.. _bgp-monitoring-protocol-user-guide-troubleshooting:

Troubleshooting
===============
This section offers advices in a case OpenDaylight BMP plugin is not working as expected.

.. contents:: Contents
   :depth: 2
   :local:

BMP is not working...
^^^^^^^^^^^^^^^^^^^^^
* First of all, ensure that all required features are installed, local monitoring station and monitored router/peers configuration is correct.

  To list all installed features in OpenDaylight use the following command at the Karaf console:

  .. code-block:: console

     feature:list -i

* Check OpenDaylight Karaf logs:

  From Karaf console:

  .. code-block:: console

     log:tail

  or open log file: ``data/log/karaf.log``

  Possibly, a reason/hint for a cause of the problem can be found there.

* Try to minimize effect of other OpenDaylight features, when searching for a reason of the problem.

* Try to set DEBUG severity level for BMP logger via Karaf console commands, in order to collect more information:

  .. code-block:: console

     log:set DEBUG org.opendaylight.protocol.bmp

Bug reporting
^^^^^^^^^^^^^
Before you report a bug, check `BGPCEP Jira <https://jira.opendaylight.org/projects/BGPCEP/issues/BGPCEP-589?filter=allopenissues>`_ to ensure same/similar bug is not already filed there.

Write an e-mail to bgpcep-users@lists.opendaylight.org and provide following information:

#. State OpenDaylight version

#. Describe your use-case and provide as much details related to BMP as possible

#. Steps to reproduce

#. Attach Karaf log files, optionally packet captures, REST input/output
