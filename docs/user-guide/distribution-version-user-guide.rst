.. _dist-version:

Distribution Version reporting
==============================

Overview
--------

This section provides an overview of **odl-distribution-version** feature.

A remote user of OpenDaylight usually has access to RESTCONF and NETCONF
northbound interfaces, but does not have access to the system
OpenDaylight is running on. OpenDaylight has released multiple versions
including Service Releases, and there are incompatible changes between them.
In order to know which YANG modules to use, which bugs to expect
and which workarounds to apply, such user would need to know the exact version
of at least one OpenDaylight component.

There are indirect ways to deduce such version, but the direct way is enabled
by ``odl-distribution-version`` feature. Administrator can specify version strings,
which would be available to users via NETCONF, or via RESTCONF
if OpenDaylight is configured to initiate NETCONF connection
to its config subsystem northbound interface.

By default, users have write access to config subsystem,
so they can add, modify or delete any version strings present there.
Admins can only influence whether the feature is installed, and initial values.

Config subsystem is local only, not cluster aware,
so each member reports versions independently. This is suitable for heterogeneous clusters.

Default config file
~~~~~~~~~~~~~~~~~~~

Initial version values are set via config file ``odl-version.xml`` which is created in
``$KARAF_HOME/etc/opendaylight/karaf/`` upon installation of ``odl-distribution-version`` feature.
If admin wants to use different content, the file with desired content has to be created
there before feature installation happens.

By default, the config file defines two config modules, named ``odl-distribution-version``
and ``odl-odlparent-version``.

RESTCONF usage
~~~~~~~~~~~~~~

OpenDaylight config subsystem NETCONF northbound is not made available just by installing
``odl-distribution-version``, but most other feature installations would enable it.
RESTCONF interfaces are enabled by installing ``odl-restconf`` feature,
but that do not allow access to config subsystem by itself.

On single node deployments, installation of ``odl-netconf-connector-ssh`` is recommended,
which would configure ``controller-config`` device and its MD-SAL mount point.

For cluster deployments, installing ``odl-netconf-clustered-topology`` is recommended.
See documentation for clustering on how to create similar devices for each member,
as ``controller-config`` name is not unique in that context.

Assuming single node deployment and user located on the same system,
here is an example ``curl`` command accessing ``odl-odlparent-version`` config module:

.. code:: bash

    curl 127.0.0.1:8181/restconf/config/network-topology:network-topology/topology/topology-netconf/node/controller-config/yang-ext:mount/config:modules/module/odl-distribution-version:odl-version/odl-odlparent-version
