Persistence and Backup
======================

Set Persistence Script
^^^^^^^^^^^^^^^^^^^^^^

This script is used to enable or disable the config datastore persistence. The
default state is enabled but there are cases where persistence may not be
required or even desired. The user should restart the node to apply the changes.

.. note::

  The script can be used at any time, even before the controller is started
  for the first time.

Usage:

.. code-block:: bash

   bin/set_persistence.sh <on/off>

Example:

.. code-block:: bash

   bin/set_persistence.sh off

The above command will disable the config datastore persistence.

.. _cluster_backup_restore:

Backing Up and Restoring the Datastore
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The same cluster-admin API described in the :ref:`cluster guide <cluster_admin_api>`
for managing shard voting states has an RPC allowing backup of the datastore in a single
node, taking only the file name as a parameter::

    POST  /restconf/operations/cluster-admin:backup-datastore

RPC input JSON::

    {
      "input": {
        "file-path": "/tmp/datastore_backup"
      }
    }

.. note::

  This backup can only be restored if the YANG models of the backed-up data
  are identical in the backup OpenDaylight instance and restore target
  instance.

To restore the backup on the target node the file needs to be placed into the
``$KARAF_HOME/clustered-datastore-restore`` directory, and then the node
restarted. If the directory does not exist (which is quite likely if this is a
first-time restore) it needs to be created. On startup, ODL checks if the
``journal`` and ``snapshots`` directories in ``$KARAF_HOME`` are empty, and
only then tries to read the contents of the ``clustered-datastore-restore``
directory, if it exists. So for a successful restore, those two directories
should be empty. The backup file name itself does not matter, and the startup
process will delete it after a successful restore.

The backup is node independent, so when restoring a 3 node cluster, it is best
to restore it on each node for consistency. For example, if restoring on one
node only, it can happen that the other two empty nodes form a majority and
the cluster comes up with no data.