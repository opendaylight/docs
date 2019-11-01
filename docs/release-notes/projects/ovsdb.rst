=====
OVSDB
=====

Overview
========

OVSDB Project provides the following functionality to the end user.

.. list-table::
   :widths: 15 55
   :header-rows: 1

   * - **Feature**
     - **Description**

   * - **OVSDB Southbound Plugin**
     - This plugin handles the OVS device that supports the
       `OVSDB schema <http://openvswitch.org/ovs-vswitchd.conf.db.5.pdf>`_
       and uses the `OVSDB protocol <https://tools.ietf.org/html/rfc7047>`_.
       This feature provides the implementation of the defined YANG models.
       Developers developing the in-controller application and want to
       leverage OVSDB for device configuration can leverage this functionality.
   * - **HWvTep Southbound Plugin**
     - This plugin handles the OVS device that supports the `OVSDB Hardware vTEP schema
       <http://openvswitch.org/docs/vtep.5.pdf>`_ and uses `OVSDB protocol
       <https://tools.ietf.org/html/rfc7047>`_. This feature provides the
       implementation of the project defined YANG  models. Users developing
       the in-controller application and want to leverage OVSDB Hardware
       vTEP plugin for device configuration can leverage this functionality.

Behavior Changes
================

No behavioral changes introduced in this release.

New and Modified Features
=========================

No new feature was implemented in this release.
No existing features were modified in this release.

Deprecated Features
===================

This release does not remove any deprecated features.

Resolved Issues
===============

No issue was resolved in the sodium release.

Known Issues
============
* `Open Bugs <https://jira.opendaylight.org/browse/OVSDB-487?jql=project%20%3D%20ovsdb%20%20AND%20resolution%20%3D%20Unresolved%20ORDER%20BY%20created%20DESC%2C%20affectedVersion%20ASC%2C%20priority%20DESC%2C%20updated%20DESC)>`_
