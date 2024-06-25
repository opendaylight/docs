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
  first node's role as *member-1* in the ``pekko.conf`` file, OpenDaylight uses
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

    Scripts are stored in the OpenDaylight ``distribution/bin`` folder, and
    maintained in the distribution project
    `repository <https://git.opendaylight.org/gerrit/admin/repos/integration/distribution>`_
    in the folder ``karaf-scripts/src/main/assembly/bin/``.

Configure Cluster Script
^^^^^^^^^^^^^^^^^^^^^^^^

This script is used to configure the cluster parameters (e.g. ``pekko.conf``,
``module-shards.conf``) on a member of the controller cluster. The user should
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
file ``"custom_shard_configs.txt"`` in the same folder as this tool. Please see
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
#. Move into the ``<karaf-distribution-directory>/bin`` directory and run::

      JAVA_MAX_MEM=4G JAVA_MAX_PERM_MEM=512m ./karaf

#. Enable clustering by running the following command at the Karaf command line::

      feature:install odl-mdsal-distributed-datastore

   After installation you will be able to see new folder ``configuration/initial/``
   with config files

#. Open the following configuration files:

   * ``configuration/initial/pekko.conf``
   * ``configuration/initial/module-shards.conf``

#. In each configuration file, make the following changes:

   Find every instance of the following lines and replace _127.0.0.1_ with the
   hostname or IP address of the machine on which this file resides and
   OpenDaylight will run::

      artery {
        canonical.hostname = "127.0.0.1"

   .. note:: The value you need to specify will be different for each node in the
             cluster.

#. Find the following lines and replace _127.0.0.1_ with the hostname or IP
   address of any of the machines that will be part of the cluster::

      cluster {
        seed-nodes = ["pekko://opendaylight-cluster-data@${IP_OF_MEMBER1}:2550",
                      <url-to-cluster-member-2>,
                      <url-to-cluster-member-3>]

#. Find the following section and specify the role for each member node. Here
   we assign the first node with the *member-1* role, the second node with the
   *member-2* role, and the third node with the *member-3* role::

     roles = [
       "member-1"
     ]

   .. note:: This step should use a different role on each node.

#. Open the ``configuration/initial/module-shards.conf`` file and update the
   replicas so that each shard is replicated to all three nodes::

      replicas = [
          "member-1",
          "member-2",
          "member-3"
      ]

   For reference, view a sample config files below.

#. Restart bundle via command line::

      opendaylight-user@root>restart org.opendaylight.controller.sal-distributed-datastore

OpenDaylight should now be running in a three node cluster. You can use any of
the three member nodes to access the data residing in the datastore.

Sample Config Files
"""""""""""""""""""

Sample ``pekko.conf`` file::

   odl-cluster-data {
     pekko {
       remote {
         artery {
           enabled = on
           transport = tcp
           canonical.hostname = "10.0.2.10"
           canonical.port = 2550
         }
       }

       cluster {
         # Using artery.
         seed-nodes = ["pekko://opendaylight-cluster-data@10.0.2.10:2550",
                       "pekko://opendaylight-cluster-data@10.0.2.11:2550",
                       "pekko://opendaylight-cluster-data@10.0.2.12:2550"]

         roles = [
           "member-1"
         ]

         # when under load we might trip a false positive on the failure detector
         # failure-detector {
           # heartbeat-interval = 4 s
           # acceptable-heartbeat-pause = 16s
         # }
       }

       persistence {
         # By default the snapshots/journal directories live in KARAF_HOME. You can choose to put it somewhere else by
         # modifying the following two properties. The directory location specified may be a relative or absolute path.
         # The relative path is always relative to KARAF_HOME.

         # snapshot-store.local.dir = "target/snapshots"

         # Use lz4 compression for LocalSnapshotStore snapshots
         snapshot-store.local.use-lz4-compression = false
         # Size of blocks for lz4 compression: 64KB, 256KB, 1MB or 4MB
         snapshot-store.local.lz4-blocksize = 256KB
       }
       disable-default-actor-system-quarantined-event-handling = "false"
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

OpenDaylight exposes shard information via ``MBeans``, which can be explored
with ``JConsole``, VisualVM, or other JMX clients, or exposed via a REST API using
`Jolokia <https://jolokia.org/features.html>`_, provided by the
``odl-jolokia`` Karaf feature. This is convenient, due to a significant focus
on REST in OpenDaylight.

The basic URI that lists a schema of all available ``MBeans``, but not their
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
        "PeerAddresses": "member-3-shard-default-operational: pekko://opendaylight-cluster-data@192.168.16.3:2550/user/shardmanager-operational/member-3-shard-default-operational, member-2-shard-default-operational: pekko://opendaylight-cluster-data@192.168.16.2:2550/user/shardmanager-operational/member-2-shard-default-operational",
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

The ODLTools team is maintaining a Python based `tool
<https://github.com/opendaylight/odltools>`_,
that takes advantage of the above ``MBeans`` exposed via ``Jolokia``.

.. _cluster_admin_api:

Failure handling
----------------

Overview
--------

A fundamental problem in distributed systems is that network
partitions (split brain scenarios) and machine crashes are indistinguishable
for the observer, i.e. a node can observe that there is a problem with another
node, but it cannot tell if it has crashed and will never be available again,
if there is a network issue that might or might not heal again after a while or
if process is unresponsive because of overload, CPU starvation or long garbage
collection pauses.

When there is a crash, we would like to remove the affected node immediately
from the cluster membership. When there is a network partition or unresponsive
process we would like to wait for a while in the hope that it is a transient
problem that will heal again, but at some point, we must give up and continue
with the nodes on one side of the partition and shut down nodes on the other
side. Also, certain features are not fully available during partitions so it
might not matter that the partition is transient or not if it just takes too
long. Those two goals are in conflict with each other and there is a trade-off
between how quickly we can remove a crashed node and premature action on
transient network partitions.

Split Brain Resolver
--------------------

You need to enable the Split Brain Resolver by configuring it as downing
provider in the configuration::

    pekko.cluster.downing-provider-class = "org.apache.pekko.cluster.sbr.SplitBrainResolverProvider"

You should also consider different downing strategies, described below.

.. note:: If no downing provider is specified, NoDowning provider is used.

All strategies are inactive until the cluster membership and the information about
unreachable nodes have been stable for a certain time period. Continuously adding
more nodes while there is a network partition does not influence this timeout, since
the status of those nodes will not be changed to Up while there are unreachable nodes.
Joining nodes are not counted in the logic of the strategies.

Setting ``pekko.cluster.split-brain-resolver.stable-after`` to a shorter duration for having
quicker removal of crashed nodes can be done at the price of risking a too early action on
transient network partitions that otherwise would have healed. Do not set this to a shorter
duration than the membership dissemination time in the cluster, which depends on the cluster size.
Recommended minimum duration for different cluster sizes:

============   ============
Cluster size   stable-after
============   ============
5              7 s
10             10 s
20             13 s
50             17 s
100            20 s
1000           30 s
============   ============

.. note:: It is important that you use the same configuration on all nodes.

When reachability observations by the failure detector are changed, the SBR
decisions are deferred until there are no changes within the stable-after
duration. If this continues for too long it might be an indication of an
unstable system/network and it could result in delayed or conflicting
decisions on separate sides of a network partition.

As a precaution for that scenario all nodes are downed if no decision is
made within stable-after + down-all-when-unstable from the first unreachability
event. The measurement is reset if all unreachable have been healed, downed or
removed, or if there are no changes within stable-after * 2.

Configuration::

    pekko.cluster.split-brain-resolver {
      # Time margin after which shards or singletons that belonged to a downed/removed
      # partition are created in surviving partition. The purpose of this margin is that
      # in case of a network partition the persistent actors in the non-surviving partitions
      # must be stopped before corresponding persistent actors are started somewhere else.
      # This is useful if you implement downing strategies that handle network partitions,
      # e.g. by keeping the larger side of the partition and shutting down the smaller side.
      # Decision is taken by the strategy when there has been no membership or
      # reachability changes for this duration, i.e. the cluster state is stable.
      stable-after = 20s

      # When reachability observations by the failure detector are changed the SBR decisions
      # are deferred until there are no changes within the 'stable-after' duration.
      # If this continues for too long it might be an indication of an unstable system/network
      # and it could result in delayed or conflicting decisions on separate sides of a network
      # partition.
      # As a precaution for that scenario all nodes are downed if no decision is made within
      # `stable-after + down-all-when-unstable` from the first unreachability event.
      # The measurement is reset if all unreachable have been healed, downed or removed, or
      # if there are no changes within `stable-after * 2`.
      # The value can be on, off, or a duration.
      # By default it is 'on' and then it is derived to be 3/4 of stable-after, but not less than
      # 4 seconds.
      down-all-when-unstable = on
    }


Keep majority
^^^^^^^^^^^^^

This strategy is used by default, because it works well for most systems.
It will down the unreachable nodes if the current node is in the majority part
based on the last known membership information. Otherwise down the reachable
nodes, i.e. the own part. If the parts are of equal size the part containing the
node with the lowest address is kept.

This strategy is a good choice when the number of nodes in the cluster change
dynamically and you can therefore not use static-quorum.

* If there are membership changes at the same time as the network partition
  occurs, for example, the status of two members are changed to Up on one side
  but that information is not disseminated to the other side before the
  connection is broken, it will down all nodes on the side that could be in
  minority if the joining nodes were changed to Up on the other side.
  Note that if the joining nodes were not changed to Up and becoming a majority
  on the other side then each part will shut down itself, terminating the whole
  cluster.

* If there are more than two partitions and none is in majority each part will
  shut down itself, terminating the whole cluster.

* If more than half of the nodes crash at the same time the other running nodes
  will down themselves because they think that they are not in majority, and
  thereby the whole cluster is terminated.

The decision can be based on nodes with a configured role instead of all nodes
in the cluster. This can be useful when some types of nodes are more valuable
than others.

Configuration::

    pekko.cluster.split-brain-resolver.active-strategy=keep-majority

::

    pekko.cluster.split-brain-resolver.keep-majority {
      # if the 'role' is defined the decision is based only on members with that 'role'
      role = ""
    }

Static quorum
^^^^^^^^^^^^^

The strategy named static-quorum will down the unreachable nodes if the number
of remaining nodes are greater than or equal to a configured quorum-size.
Otherwise, it will down the reachable nodes, i.e. it will shut down that side
of the partition.

This strategy is a good choice when you have a fixed number of nodes in the
cluster, or when you can define a fixed number of nodes with a certain role.

* If there are unreachable nodes when starting up the cluster, before reaching
  this limit, the cluster may shut itself down immediately.
  This is not an issue if you start all nodes at approximately the same time or
  use the ``pekko.cluster.min-nr-of-members`` to define required number of
  members before the leader changes member status of ‘Joining’ members to ‘Up’.
  You can tune the timeout after which downing decisions are made using the
  stable-after setting.

* You should not add more members to the cluster than quorum-size * 2 - 1.
  If the exceeded cluster size remains when a SBR decision is needed it will
  down all nodes because otherwise there is a risk that both sides may down each
  other and thereby form two separate clusters.

* If the cluster is split into 3 (or more) parts each part that is smaller than
  then configured quorum-size will down itself and possibly shutdown the whole
  cluster.

* If more nodes than the configured quorum-size crash at the same time the other
  running nodes will down themselves because they think that they are not in the
  majority, and thereby the whole cluster is terminated.

The decision can be based on nodes with a configured role instead of all nodes
in the cluster. This can be useful when some types of nodes are more valuable
than others.

By defining a role for a few stable nodes in the cluster and using that in the
configuration of static-quorum you will be able to dynamically add and remove
other nodes without this role and still have good decisions of what nodes to
keep running and what nodes to shut down in the case of network partitions.
The advantage of this approach compared to keep-majority is that you do not risk
splitting the cluster into two separate clusters, i.e. a split brain.

Configuration::

    pekko.cluster.split-brain-resolver.active-strategy=static-quorum

::

    pekko.cluster.split-brain-resolver.static-quorum {
      # minimum number of nodes that the cluster must have
      quorum-size = undefined

      # if the 'role' is defined the decision is based only on members with that 'role'
      role = ""
    }

Keep oldest
^^^^^^^^^^^

The strategy named keep-oldest will down the part that does not contain the oldest
member. The oldest member is interesting because the active Cluster Singleton
instance is running on the oldest member.

This strategy is good to use if you use Cluster Singleton and do not want to shut
down the node where the singleton instance runs. If the oldest node crashes a new
singleton instance will be started on the next oldest node.

* If down-if-alone is configured to on, then if the oldest node has partitioned
  from all other nodes the oldest will down itself and keep all other nodes running.
  The strategy will not down the single oldest node when it is the only remaining
  node in the cluster.

* If there are membership changes at the same time as the network partition occurs,
  for example, the status of the oldest member is changed to Exiting on one side but
  that information is not disseminated to the other side before the connection is
  broken, it will detect this situation and make the safe decision to down all nodes
  on the side that sees the oldest as Leaving. Note that this has the drawback that
  if the oldest was Leaving and not changed to Exiting then each part will shut down
  itself, terminating the whole cluster.

The decision can be based on nodes with a configured role instead of all nodes
in the cluster.

Configuration::

    pekko.cluster.split-brain-resolver.active-strategy=keep-oldest


::

    pekko.cluster.split-brain-resolver.keep-oldest {
      # Enable downing of the oldest node when it is partitioned from all other nodes
      down-if-alone = on

      # if the 'role' is defined the decision is based only on members with that 'role',
      # i.e. using the oldest member (singleton) within the nodes with that role
      role = ""
    }

Down all
^^^^^^^^

The strategy named down-all will down all nodes.

This strategy can be a safe alternative if the network environment is highly unstable
with unreachability observations that can’t be fully trusted, and including frequent
occurrences of indirectly connected nodes. Due to the instability there is an increased
risk of different information on different sides of partitions and therefore the other
strategies may result in conflicting decisions. In such environments it can be better
to shutdown all nodes and start up a new fresh cluster.

* This strategy is not recommended for large clusters (> 10 nodes) because any minor
  problem will shutdown all nodes, and that is more likely to happen in larger clusters
  since there are more nodes that may fail.

Configuration::

    pekko.cluster.split-brain-resolver.active-strategy=down-all

Lease
^^^^^

The strategy named lease-majority is using a distributed lease (lock) to decide what
nodes that are allowed to survive. Only one SBR instance can acquire the lease make
the decision to remain up. The other side will not be able to acquire the lease and
will therefore down itself.

This strategy is very safe since coordination is added by an external arbiter.

* In some cases the lease will be unavailable when needed for a decision from all
  SBR instances, e.g. because it is on another side of a network partition, and then
  all nodes will be downed.

Configuration::

    pekko {
      cluster {
        downing-provider-class = "org.apache.pekko.cluster.sbr.SplitBrainResolverProvider"
        split-brain-resolver {
          active-strategy = "lease-majority"
          lease-majority {
            lease-implementation = "pekko.coordination.lease.kubernetes"
          }
        }
      }
    }

::

    pekko.cluster.split-brain-resolver.lease-majority {
      lease-implementation = ""

      # This delay is used on the minority side before trying to acquire the lease,
      # as an best effort to try to keep the majority side.
      acquire-lease-delay-for-minority = 2s

      # If the 'role' is defined the majority/minority is based only on members with that 'role'.
      role = ""
    }

Indirectly connected nodes
^^^^^^^^^^^^^^^^^^^^^^^^^^

In a malfunctioning network there can be situations where nodes are observed as
unreachable via some network links but they are still indirectly connected via
other nodes, i.e. it’s not a clean network partition (or node crash).

When this situation is detected the Split Brain Resolvers will keep fully
connected nodes and down all the indirectly connected nodes.

If there is a combination of indirectly connected nodes and a clean network
partition it will combine the above decision with the ordinary decision,
e.g. keep majority, after excluding suspicious failure detection observations.

Multi-DC cluster
----------------

An OpenDaylight cluster has an ability to run on multiple data centers in a way,
that tolerates network partitions among them.

Nodes can be assigned to group of nodes by setting the
``pekko.cluster.multi-data-center.self-data-center`` configuration property.
A node can only belong to one data center and if nothing is specified a node will
belong to the default data center.

The grouping of nodes is not limited to the physical boundaries of data centers,
it could also be used as a logical grouping for other reasons, such as isolation
of certain nodes to improve stability or splitting up a large cluster into smaller
groups of nodes for better scalability.

Failure detection
^^^^^^^^^^^^^^^^^

Failure detection is performed by sending heartbeat messages to detect if a node
is unreachable. This is done more frequently and with more certainty among the
nodes in the same data center than across data centers.

Two different failure detectors can be configured for these two purposes:

* ``pekko.cluster.failure-detector`` for failure detection within own data center

* ``pekko.cluster.multi-data-center.failure-detector`` for failure detection across
  different data centers

Heartbeat messages for failure detection across data centers are only performed
between a number of the oldest nodes on each side. The number of nodes is configured
with ``pekko.cluster.multi-data-center.cross-data-center-connections``.

This influences how rolling updates should be performed. Don’t stop all of the oldest nodes
that are used for gossip at the same time. Stop one or a few at a time so that new
nodes can take over the responsibility. It’s best to leave the oldest nodes until last.

Configuration::

    multi-data-center {
      # Defines which data center this node belongs to. It is typically used to make islands of the
      # cluster that are colocated. This can be used to make the cluster aware that it is running
      # across multiple availability zones or regions. It can also be used for other logical
      # grouping of nodes.
      self-data-center = "default"


      # Try to limit the number of connections between data centers. Used for gossip and heartbeating.
      # This will not limit connections created for the messaging of the application.
      # If the cluster does not span multiple data centers, this value has no effect.
      cross-data-center-connections = 5

      # The n oldest nodes in a data center will choose to gossip to another data center with
      # this probability. Must be a value between 0.0 and 1.0 where 0.0 means never, 1.0 means always.
      # When a data center is first started (nodes < 5) a higher probability is used so other data
      # centers find out about the new nodes more quickly
      cross-data-center-gossip-probability = 0.2

      failure-detector {
        # FQCN of the failure detector implementation.
        # It must implement org.apache.pekko.remote.FailureDetector and have
        # a public constructor with a com.typesafe.config.Config and
        # pekko.actor.EventStream parameter.
        implementation-class = "org.apache.pekko.remote.DeadlineFailureDetector"

        # Number of potentially lost/delayed heartbeats that will be
        # accepted before considering it to be an anomaly.
        # This margin is important to be able to survive sudden, occasional,
        # pauses in heartbeat arrivals, due to for example garbage collect or
        # network drop.
        acceptable-heartbeat-pause = 10 s

        # How often keep-alive heartbeat messages should be sent to each connection.
        heartbeat-interval = 3 s

        # After the heartbeat request has been sent the first failure detection
        # will start after this period, even though no heartbeat message has
        # been received.
        expected-response-after = 1 s
      }
    }

Active/Backup Setup
-------------------

It is desirable to have the possibility to fail over to a different
data center, in case all nodes become unreachable. To achieve that
shards in the backup data center must be in "non-voting" state.

The API to manipulate voting states on shards is defined as RPCs in the
`cluster-admin.yang <https://git.opendaylight.org/gerrit/gitweb?p=controller.git;a=blob;f=opendaylight/md-sal/sal-cluster-admin-api/src/main/yang/cluster-admin.yang>`_
file in the *controller* project, which is well documented. A summary is
provided below.

.. note::

  Unless otherwise indicated, the below POST requests are to be sent to any
  single cluster node.

To create an active/backup setup with a 6 node cluster (3 active and 3 backup
nodes in two locations) such configuration is used:

* for member-1, member-2 and member-3 (active data center)::

    pekko.cluster.multi-data-center {
      self-data-center = "main"
    }

* for member-4, member-5, member-6 (backup data center)::

    pekko.cluster.multi-data-center {
      self-data-center = "backup"
    }

There is an RPC to set voting states of all shards on
a list of nodes to a given state::

   POST  /restconf/operations/cluster-admin:change-member-voting-states-for-all-shards

   or

   POST  /rests/operations/cluster-admin:change-member-voting-states-for-all-shards

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
data center to backup data center is to flip the voting state of each
shard (on each node, active AND backup). That can be easily achieved with the
following RPC call (no parameters needed)::

    POST  /restconf/operations/cluster-admin:flip-member-voting-states-for-all-shards

    or

    POST /rests/operations/cluster-admin:flip-member-voting-states-for-all-shards

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

    or

    POST  /rests/operations/cluster-admin:remove-all-shard-replicas

and example input::

    {
      "input": {
        "member-name": "member-1"
      }
    }

or just one particular shard::

    POST  /restconf/operations/cluster-admin:remove-shard-replica

    or

    POST  /rests/operations/cluster-admin:remove-shard-replicas

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

    or

    POST  /rests/operations/cluster-admin:add-replicas-for-all-shards

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
shard-snapshot-data-threshold-percentage       uint8 (1..100)    12      The percentage of ``Runtime.totalMemory()`` used by the in-memory journal log before a snapshot is to be taken
shard-heartbeat-interval-in-millis             uint16 (100..max) 500     The interval at which a shard will send a heart beat message to its remote shard.
operation-timeout-in-seconds                   uint16 (5..max)   5       The maximum amount of time for pekko operations (remote or local) to complete before failing.
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

These configuration options are included in the ``etc/org.opendaylight.controller.cluster.datastore.cfg`` configuration file.
