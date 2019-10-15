=====
OVSDB
=====

Overview
========

OVSDB Project provides the following functionality to the end user.
* **OVSDB Southbound Plugin** Plugin handles the OVS device that supports the
`OVSDB schema <http://openvswitch.org/ovs-vswitchd.conf.db.5.pdf>`_ and uses the
`OVSDB protocol <https://tools.ietf.org/html/rfc7047>`_. This feature provides
the implementation of the defined YANG models. Developers developing the
in-controller application and want to leverage OVSDB for device configuration
can leverage this functionality.
* **HWvTep Southbound Plugin** Plugin handles the OVS device that supports the
`OVSDB Hardware vTEP schema <http://openvswitch.org/docs/vtep.5.pdf>`_ and uses
`OVSDB protocol <https://tools.ietf.org/html/rfc7047>`_. This feature
provides the implementation of the project defined YANG  models. Developers
developing the in-controller application and want to leverage OVSDB Hardware
vTEP plugin for device configuration can leverage this functionality.

Behavior Changes
================

No behavioural changes introduced in this release.

New and Modified Features
=========================

No new feature implemented in this release.
No existing features were modified in this release.

Deprecated Features
===================

This releases does not remove any deprecated features.

Resolved Issues
===============

No issue resolved in the sodium release.

Known Issues
============

No known issue exist in the sodium release.
