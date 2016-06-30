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
        seed-nodes = ["akka.tcp://opendaylight-cluster-data@127.0.0.1:2550"]

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
         seed-nodes = ["akka.tcp://opendaylight-cluster-data@10.194.189.96:2550"]

         auto-down-unreachable-after = 10s

         roles = [
           "member-1"
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

Set Persistence Script
^^^^^^^^^^^^^^^^^^^^^^

This script is used to enable or disable the config datastore persistence. The
default state is enabled but there are cases where persistence may not be
required or even desired. The user should restart the node to apply the changes.

.. note::

  The script can be used at any time, even before the controller is started
  for the first time.

Usage::

    bin/set_persistence.sh <on/off>

Example::

    bin/set_persistence.sh off

The above command will disable the config datastore persistence.
