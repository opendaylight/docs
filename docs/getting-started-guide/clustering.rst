Setting Up Clustering
=====================

Clustering Overview
-------------------

Clustering is a mechanism that enables multiple processes and programs to work
together as one entity.  For example, when you search for something on
google.com, it may seem like your search request is processed by only one web
server. In reality, your search request is processed by may web servers
connected in a cluster. Similarly, you can have multiple instances of
OpenDaylight working together as one entity.

Advantages of clustering are:

* Scaling: If you have multiple instances of OpenDaylight running, you can
  potentially do more work and store more data than you could with only one
  instance. You can also break up your data into smaller chunks (shards) and
  either distribute that data across the cluster or perform certain operations
  on certain members of the cluster.
* High Availability: If you have multiple instances of OpenDaylight running and
  one of them crashes, you will still have the other instances working and
  available.
* Data Persistence: You will not lose any data stored in OpenDaylight after a
  manual restart or a crash.

The following sections describe how to set up clustering on both individual and
multiple OpenDaylight instances.

Multiple Node Clustering
------------------------

The following sections describe how to set up multiple node clusters in OpenDaylight.

Deployment Considerations
^^^^^^^^^^^^^^^^^^^^^^^^^

To implement clustering, the deployment considerations are as follows:

* To set up a cluster with multiple nodes, we recommend that you use a minimum
  of three machines. You can set up a cluster with just two nodes. However, if
  one of the two nodes fail, the cluster will not be operational.

  .. note:: This is because clustering in OpenDaylight requires a majority of the
             nodes to be up and one node cannot be a majority of two nodes.

* Every device that belongs to a cluster needs to have an identifier.
  OpenDaylight uses the node's ``role`` for this purpose. After you define the
  first node's role as *member-1* in the ``akka.conf`` file, OpenDaylight uses
  *member-1* to identify that node.

* Data shards are used to contain all or a certain segment of a OpenDaylight's
  MD-SAL datastore. For example, one shard can contain all the inventory data
  while another shard contains all of the topology data.

  If you do not specify a module in the ``modules.conf`` file and do not specify
  a shard in ``module-shards.conf``, then (by default) all the data is placed in
  the default shard (which must also be defined in ``module-shards.conf`` file).
  Each shard has replicas configured. You can specify the details of where the
  replicas reside in ``module-shards.conf`` file.

* If you have a three node cluster and would like to be able to tolerate any
  single node crashing, a replica of every defined data shard must be running
  on all three cluster nodes.

  .. note:: This is because OpenDaylight's clustering implementation requires a
            majority of the defined shard replicas to be running in order to
            function. If you define data shard replicas on two of the cluster nodes
            and one of those nodes goes down, the corresponding data shards will not
            function.

* If you have a three node cluster and have defined replicas for a data shard
  on each of those nodes, that shard will still function even if only two of
  the cluster nodes are running. Note that if one of those remaining two nodes
  goes down, the shard will not be operational.

* It is  recommended that you have multiple seed nodes configured. After a
  cluster member is started, it sends a message to all of its seed nodes.
  The cluster member then sends a join command to the first seed node that
  responds. If none of its seed nodes reply, the cluster member repeats this
  process until it successfully establishes a connection or it is shut down.

* After a node is unreachable, it remains down for configurable period of time
  (10 seconds, by default). Once a node goes down, you need to restart it so
  that it can rejoin the cluster. Once a restarted node joins a cluster, it
  will synchronize with the lead node automatically.

.. _getting-started-clustering-scripts:

Clustering Scripts
------------------

OpenDaylight includes some scripts to help with the clustering configuration.

.. note::

    Scripts are stored in the OpenDaylight distribution/bin folder, and
    maintained in the distribution project
    `repository <https://git.opendaylight.org/gerrit/p/integration/distribution>`_
    in the folder distribution-karaf/src/main/assembly/bin/.

Configure Cluster Script
^^^^^^^^^^^^^^^^^^^^^^^^

This script is used to configure the cluster parameters (e.g. akka.conf,
module-shards.conf) on a member of the controller cluster. The user should
restart the node to apply the changes.

.. note::

    The script can be used at any time, even before the controller is started
    for the first time.

Usage::

    bin/configure_cluster.sh <index> <seed_nodes_list>

* index: Integer within 1..N, where N is the number of seed nodes. This indicates
  which controller node (1..N) is configured by the script.
* seed_nodes_list: List of seed nodes (IP address), separated by comma or space.

The IP address at the provided index should belong to the member executing
the script. When running this script on multiple seed nodes, keep the
seed_node_list the same, and vary the index from 1 through N.

Optionally, shards can be configured in a more granular way by modifying the
file "custom_shard_configs.txt" in the same folder as this tool. Please see
that file for more details.

Example::

    bin/configure_cluster.sh 2 192.168.0.1 192.168.0.2 192.168.0.3

The above command will configure the member 2 (IP address 192.168.0.2) of a
cluster made of 192.168.0.1 192.168.0.2 192.168.0.3.

Setting Up a Multiple Node Cluster
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To run OpenDaylight in a three node cluster, perform the following:

First, determine the three machines that will make up the cluster. After that,
do the following on each machine:

#. Copy the OpenDaylight distribution zip file to the machine.
#. Unzip the distribution.
#. Open the following .conf files:

   * configuration/initial/akka.conf
   * configuration/initial/module-shards.conf

#. In each configuration file, make the following changes:

   Find every instance of the following lines and replace _127.0.0.1_ with the
   hostname or IP address of the machine on which this file resides and
   OpenDaylight will run::

      netty.tcp {
        hostname = "127.0.0.1"

   .. note:: The value you need to specify will be different for each node in the
             cluster.

#. Find the following lines and replace _127.0.0.1_ with the hostname or IP
   address of any of the machines that will be part of the cluster::

      cluster {
        seed-nodes = ["akka.tcp://opendaylight-cluster-data@${IP_OF_MEMBER1}:2550",
                      <url-to-cluster-member-2>,
                      <url-to-cluster-member-3>]

#. Find the following section and specify the role for each member node. Here
   we assign the first node with the *member-1* role, the second node with the
   *member-2* role, and the third node with the *member-3* role::

     roles = [
       "member-1"
     ]

   .. note:: This step should use a different role on each node.

#. Open the configuration/initial/module-shards.conf file and update the
   replicas so that each shard is replicated to all three nodes::

      replicas = [
          "member-1",
          "member-2",
          "member-3"
      ]

   For reference, view a sample config files <<_sample_config_files,below>>.

#. Move into the +<karaf-distribution-directory>/bin+ directory.
#. Run the following command::

      JAVA_MAX_MEM=4G JAVA_MAX_PERM_MEM=512m ./karaf

#. Enable clustering by running the following command at the Karaf command line::

      feature:install odl-mdsal-clustering

OpenDaylight should now be running in a three node cluster. You can use any of
the three member nodes to access the data residing in the datastore.

Sample Config Files
"""""""""""""""""""

Sample ``akka.conf`` file::

   odl-cluster-data {
     bounded-mailbox {
       mailbox-type = "org.opendaylight.controller.cluster.common.actor.MeteredBoundedMailbox"
       mailbox-capacity = 1000
       mailbox-push-timeout-time = 100ms
     }

     metric-capture-enabled = true

     akka {
       loglevel = "DEBUG"
       loggers = ["akka.event.slf4j.Slf4jLogger"]

       actor {

         provider = "akka.cluster.ClusterActorRefProvider"
         serializers {
                   java = "akka.serialization.JavaSerializer"
                   proto = "akka.remote.serialization.ProtobufSerializer"
                 }

                 serialization-bindings {
                     "com.google.protobuf.Message" = proto

                 }
       }
       remote {
         log-remote-lifecycle-events = off
         netty.tcp {
           hostname = "10.194.189.96"
           port = 2550
           maximum-frame-size = 419430400
           send-buffer-size = 52428800
           receive-buffer-size = 52428800
         }
       }

       cluster {
         seed-nodes = ["akka.tcp://opendaylight-cluster-data@10.194.189.96:2550",
                       "akka.tcp://opendaylight-cluster-data@10.194.189.98:2550",
                       "akka.tcp://opendaylight-cluster-data@10.194.189.101:2550"]

         auto-down-unreachable-after = 10s

         roles = [
           "member-2"
         ]

       }
     }
   }

   odl-cluster-rpc {
     bounded-mailbox {
       mailbox-type = "org.opendaylight.controller.cluster.common.actor.MeteredBoundedMailbox"
       mailbox-capacity = 1000
       mailbox-push-timeout-time = 100ms
     }

     metric-capture-enabled = true

     akka {
       loglevel = "INFO"
       loggers = ["akka.event.slf4j.Slf4jLogger"]

       actor {
         provider = "akka.cluster.ClusterActorRefProvider"

       }
       remote {
         log-remote-lifecycle-events = off
         netty.tcp {
           hostname = "10.194.189.96"
           port = 2551
         }
       }

       cluster {
         seed-nodes = ["akka.tcp://opendaylight-cluster-rpc@10.194.189.96:2551"]

         auto-down-unreachable-after = 10s
       }
     }
   }

Sample ``module-shards.conf`` file::

   module-shards = [
       {
           name = "default"
           shards = [
               {
                   name="default"
                   replicas = [
                       "member-1",
                       "member-2",
                       "member-3"
                   ]
               }
           ]
       },
       {
           name = "topology"
           shards = [
               {
                   name="topology"
                   replicas = [
                       "member-1",
                       "member-2",
                       "member-3"
                   ]
               }
           ]
       },
       {
           name = "inventory"
           shards = [
               {
                   name="inventory"
                   replicas = [
                       "member-1",
                       "member-2",
                       "member-3"
                   ]
               }
           ]
       },
       {
            name = "toaster"
            shards = [
                {
                    name="toaster"
                    replicas = [
                       "member-1",
                       "member-2",
                       "member-3"
                    ]
                }
            ]
       }
   ]

Cluster Monitoring
------------------

OpenDaylight exposes shard information via MBeans, which can be explored with
JConsole, VisualVM, or other JMX clients, or exposed via a REST API using
`Jolokia <https://jolokia.org/features-nb.html>`_, provided by the
``odl-jolokia`` Karaf feature. This is convenient, due to a significant focus
on REST in OpenDaylight.

The basic URI that lists a schema of all available MBeans, but not their
content itself is::

    GET  /jolokia/list

To read the information about the shards local to the queried OpenDaylight
instance use the following REST calls. For the config datastore::

    GET  /jolokia/read/org.opendaylight.controller:type=DistributedConfigDatastore,Category=ShardManager,name=shard-manager-config

For the operational datastore::

    GET  /jolokia/read/org.opendaylight.controller:type=DistributedOperationalDatastore,Category=ShardManager,name=shard-manager-operational

The output contains information on shards present on the node::

    {
      "request": {
        "mbean": "org.opendaylight.controller:Category=ShardManager,name=shard-manager-operational,type=DistributedOperationalDatastore",
        "type": "read"
      },
      "value": {
        "LocalShards": [
          "member-1-shard-default-operational",
          "member-1-shard-entity-ownership-operational",
          "member-1-shard-topology-operational",
          "member-1-shard-inventory-operational",
          "member-1-shard-toaster-operational"
        ],
        "SyncStatus": true,
        "MemberName": "member-1"
      },
      "timestamp": 1483738005,
      "status": 200
    }

The exact names from the "LocalShards" lists are needed for further
exploration, as they will be used as part of the URI to look up detailed info
on a particular shard. An example output for the
``member-1-shard-default-operational`` looks like this::

    {
      "request": {
        "mbean": "org.opendaylight.controller:Category=Shards,name=member-1-shard-default-operational,type=DistributedOperationalDatastore",
        "type": "read"
      },
      "value": {
        "ReadWriteTransactionCount": 0,
        "SnapshotIndex": 4,
        "InMemoryJournalLogSize": 1,
        "ReplicatedToAllIndex": 4,
        "Leader": "member-1-shard-default-operational",
        "LastIndex": 5,
        "RaftState": "Leader",
        "LastCommittedTransactionTime": "2017-01-06 13:19:00.135",
        "LastApplied": 5,
        "LastLeadershipChangeTime": "2017-01-06 13:18:37.605",
        "LastLogIndex": 5,
        "PeerAddresses": "member-3-shard-default-operational: akka.tcp://opendaylight-cluster-data@192.168.16.3:2550/user/shardmanager-operational/member-3-shard-default-operational, member-2-shard-default-operational: akka.tcp://opendaylight-cluster-data@192.168.16.2:2550/user/shardmanager-operational/member-2-shard-default-operational",
        "WriteOnlyTransactionCount": 0,
        "FollowerInitialSyncStatus": false,
        "FollowerInfo": [
          {
            "timeSinceLastActivity": "00:00:00.320",
            "active": true,
            "matchIndex": 5,
            "voting": true,
            "id": "member-3-shard-default-operational",
            "nextIndex": 6
          },
          {
            "timeSinceLastActivity": "00:00:00.320",
            "active": true,
            "matchIndex": 5,
            "voting": true,
            "id": "member-2-shard-default-operational",
            "nextIndex": 6
          }
        ],
        "FailedReadTransactionsCount": 0,
        "StatRetrievalTime": "810.5 μs",
        "Voting": true,
        "CurrentTerm": 1,
        "LastTerm": 1,
        "FailedTransactionsCount": 0,
        "PendingTxCommitQueueSize": 0,
        "VotedFor": "member-1-shard-default-operational",
        "SnapshotCaptureInitiated": false,
        "CommittedTransactionsCount": 6,
        "TxCohortCacheSize": 0,
        "PeerVotingStates": "member-3-shard-default-operational: true, member-2-shard-default-operational: true",
        "LastLogTerm": 1,
        "StatRetrievalError": null,
        "CommitIndex": 5,
        "SnapshotTerm": 1,
        "AbortTransactionsCount": 0,
        "ReadOnlyTransactionCount": 0,
        "ShardName": "member-1-shard-default-operational",
        "LeadershipChangeCount": 1,
        "InMemoryJournalDataSize": 450
      },
      "timestamp": 1483740350,
      "status": 200
    }

The output helps identifying shard state (leader/follower, voting/non-voting),
peers, follower details if the shard is a leader, and other
statistics/counters.

The Integration team is maintaining a Python based `tool
<https://github.com/opendaylight/integration-test/tree/master/tools/clustering/cluster-monitor>`_,
that takes advantage of the above MBeans exposed via Jolokia.

.. _cluster_admin_api:

Geo-distributed Active/Backup Setup
-----------------------------------

An OpenDaylight cluster works best when the latency between the nodes is very
small, which practically means they should be in the same datacenter. It is
however desirable to have the possibility to fail over to a different
datacenter, in case all nodes become unreachable. To achieve that, the cluster
can be expanded with nodes in a different datacenter, but in a way that
doesn't affect latency of the primary nodes. To do that, shards in the backup
nodes must be in "non-voting" state.

The API to manipulate voting states on shards is defined as RPCs in the
`cluster-admin.yang <https://git.opendaylight.org/gerrit/gitweb?p=controller.git;a=blob;f=opendaylight/md-sal/sal-cluster-admin-api/src/main/yang/cluster-admin.yang>`_
file in the *controller* project, which is well documented. A summary is
provided below.

.. note::

  Unless otherwise indicated, the below POST requests are to be sent to any
  single cluster node.

To create an active/backup setup with a 6 node cluster (3 active and 3 backup
nodes in two locations) there is an RPC to set voting states of all shards on
a list of nodes to a given state::

   POST  /restconf/operations/cluster-admin:change-member-voting-states-for-all-shards

This RPC needs the list of nodes and the desired voting state as input. For
creating the backup nodes, this example input can be used::

    {
      "input": {
        "member-voting-state": [
          {
            "member-name": "member-4",
            "voting": false
          },
          {
            "member-name": "member-5",
            "voting": false
          },
          {
            "member-name": "member-6",
            "voting": false
          }
        ]
      }
    }

When an active/backup deployment already exists, with shards on the backup
nodes in non-voting state, all that is needed for a fail-over from the active
"sub-cluster" to backup "sub-cluster" is to flip the voting state of each
shard (on each node, active AND backup). That can be easily achieved with the
following RPC call (no parameters needed)::

    POST  /restconf/operations/cluster-admin:flip-member-voting-states-for-all-shards

If it's an unplanned outage where the primary voting nodes are down, the
"flip" RPC must be sent to a backup non-voting node. In this case there are no
shard leaders to carry out the voting changes. However there is a special case
whereby if the node that receives the RPC is non-voting and is to be changed
to voting and there's no leader, it will apply the voting changes locally and
attempt to become the leader. If successful, it persists the voting changes
and replicates them to the remaining nodes.

When the primary site is fixed and you want to fail back to it, care must be
taken when bringing the site back up. Because it was down when the voting
states were flipped on the secondary, its persisted database won't contain
those changes. If brought back up in that state, the nodes will think they're
still voting. If the nodes have connectivity to the secondary site, they
should follow the leader in the secondary site and sync with it. However if
this does not happen then the primary site may elect its own leader thereby
partitioning the 2 clusters, which can lead to undesirable results. Therefore
it is recommended to either clean the databases (i.e., ``journal`` and
``snapshots`` directory) on the primary nodes before bringing them back up or
restore them from a recent backup of the secondary site (see section
:ref:`cluster_backup_restore`).

If is also possible to gracefully remove a node from a cluster, with the
following RPC::

    POST  /restconf/operations/cluster-admin:remove-all-shard-replicas

and example input::

    {
      "input": {
        "member-name": "member-1"
      }
    }

or just one particular shard::

    POST  /restconf/operations/cluster-admin:remove-shard-replica

with example input::

    {
      "input": {
        "shard-name": "default",
        "member-name": "member-2",
        "data-store-type": "config"
      }
    }

Now that a (potentially dead/unrecoverable) node was removed, another one can
be added at runtime, without changing the configuration files of the healthy
nodes (requiring reboot)::

    POST  /restconf/operations/cluster-admin:add-replicas-for-all-shards

No input required, but this RPC needs to be sent to the new node, to instruct
it to replicate all shards from the cluster.

.. note::

  While the cluster admin API allows adding and removing shards dynamically,
  the ``module-shard.conf`` and ``modules.conf`` files are still used on
  startup to define the initial configuration of shards. Modifications from
  the use of the API are not stored to those static files, but to the journal.

Extra Configuration Options
---------------------------

============================================== ================= ======= ==============================================================================================================================================================================
Name                                           Type              Default Description
============================================== ================= ======= ==============================================================================================================================================================================
max-shard-data-change-executor-queue-size      uint32 (1..max)   1000    The maximum queue size for each shard's data store data change notification executor.
max-shard-data-change-executor-pool-size       uint32 (1..max)   20      The maximum thread pool size for each shard's data store data change notification executor.
max-shard-data-change-listener-queue-size      uint32 (1..max)   1000    The maximum queue size for each shard's data store data change listener.
max-shard-data-store-executor-queue-size       uint32 (1..max)   5000    The maximum queue size for each shard's data store executor.
shard-transaction-idle-timeout-in-minutes      uint32 (1..max)   10      The maximum amount of time a shard transaction can be idle without receiving any messages before it self-destructs.
shard-snapshot-batch-count                     uint32 (1..max)   20000   The minimum number of entries to be present in the in-memory journal log before a snapshot is to be taken.
shard-snapshot-data-threshold-percentage       uint8 (1..100)    12      The percentage of Runtime.totalMemory() used by the in-memory journal log before a snapshot is to be taken
shard-hearbeat-interval-in-millis              uint16 (100..max) 500     The interval at which a shard will send a heart beat message to its remote shard.
operation-timeout-in-seconds                   uint16 (5..max)   5       The maximum amount of time for akka operations (remote or local) to complete before failing.
shard-journal-recovery-log-batch-size          uint32 (1..max)   5000    The maximum number of journal log entries to batch on recovery for a shard before committing to the data store.
shard-transaction-commit-timeout-in-seconds    uint32 (1..max)   30      The maximum amount of time a shard transaction three-phase commit can be idle without receiving the next messages before it aborts the transaction
shard-transaction-commit-queue-capacity        uint32 (1..max)   20000   The maximum allowed capacity for each shard's transaction commit queue.
shard-initialization-timeout-in-seconds        uint32 (1..max)   300     The maximum amount of time to wait for a shard to initialize from persistence on startup before failing an operation (eg transaction create and change listener registration).
shard-leader-election-timeout-in-seconds       uint32 (1..max)   30      The maximum amount of time to wait for a shard to elect a leader before failing an operation (eg transaction create).
enable-metric-capture                          boolean           false   Enable or disable metric capture.
bounded-mailbox-capacity                       uint32 (1..max)   1000    Max queue size that an actor's mailbox can reach
persistent                                     boolean           true    Enable or disable data persistence
shard-isolated-leader-check-interval-in-millis uint32 (1..max)   5000    the interval at which the leader of the shard will check if its majority followers are active and term itself as isolated
============================================== ================= ======= ==============================================================================================================================================================================

These configuration options are included in the etc/org.opendaylight.controller.cluster.datastore.cfg configuration file.
