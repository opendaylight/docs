.. _pcep-user-guide-test-tools:

Test tools
==========

PCC Mock
^^^^^^^^
The PCC Mock is a stand-alone Java application purposed to simulate a PCC(s).
The simulator is capable to report sample LSPs, respond to delegation, LSP management operations and synchronization optimization procedures.
This application is not part of the OpenDaylight Karaf distribution, however it can be downloaded from OpenDaylight's Nexus (use latest release version):

``https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/bgpcep/pcep-pcc-mock``

Usage
'''''
The application can be run from command line:

.. code-block:: console

   java -jar pcep-pcc-mock-*-executable.jar


with optional input parameters:

.. code-block:: console

   --local-address <Address:Port> (optional, default 127.0.0.1)
      The first PCC IP address. If more PCCs are required, the IP address will be incremented. Port number can be optionally specified.

   --remote-address <Address1:Port1,Address2:Port2,Address3:Port3,...> (optional, default 127.0.0.1:4189)
      The list of IP address for the PCE servers. Port number can be optionally specified, otherwise default port number 4189 is used.

   --pcc <N> (optional, default 1)
      Number of mocked PCC instances.

   --lsp <N> (optional, default 1)
      Number of tunnels (LSPs) reported per PCC, might be zero.

   --pcerr (optional flag)
      If the flag is present, response with PCErr, otherwise PCUpd.

   --log-level <LEVEL> (optional, default INFO)
      Set logging level for pcc-mock.

   -d, --deadtimer <0..255> (optional, default 120)
      DeadTimer value in seconds.

   -ka, --keepalive <0.255> (optional, default 30)
      KeepAlive timer value in seconds.

   --password <password> (optional)
      If the password is present, it is used in TCP MD5 signature, otherwise plain TCP is used.

   --reconnect <seconds> (optional)
      If the argument is present, the value in seconds, is used as a delay before each new reconnect (initial connect or connection re-establishment) attempt.
      The number of reconnect attempts is unlimited. If the argument is omitted, pcc-mock is not trying to reconnect.

   --redelegation-timeout <seconds> (optional, default 0)
      The timeout starts when LSP delegation is returned or PCE fails, stops when LSP is re-delegated to PCE.
      When timeout expires, LSP delegation is revoked and held by PCC.

   --state-timeout <seconds> (optional, default -1 (disabled))
      The timeout starts when LSP delegation is returned or PCE fails, stops when LSP is re-delegated to PCE.
      When timeout expires, PCE-initiated LSP is removed.

   --state-sync-avoidance <disconnect_after_x_seconds> <reconnect_after_x_seconds> <dbVersion>
      Synchronization avoidance capability enabled.
         - disconnect_after_x_seconds: seconds that will pass until disconnections is forced. If set to smaller number than 1, disconnection wont be performed.
         - reconnect_after_x_seconds: seconds that will pass between disconnection and new connection attempt. Only happens if disconnection has been performed.
         - dbVersion: dbVersion used in new Open and must be always equal or bigger than LSP. If equal than LSP skip synchronization will be performed,
           if not full synchronization will be performed taking in account new starting dbVersion desired.
    --incremental-sync-procedure <disconnect_after_x_seconds> <reconnect_after_x_seconds> <dbVersion>
      Incremental synchronization capability enabled.
         - dbVersion: dbVersion used in new Open and must be always bigger than LSP. Incremental synchronization will be performed taking in account new starting dbVersion desired.

    --triggered-initial-sync
      PCE-triggered synchronization capability enabled. Can be combined combined with state-sync-avoidance/incremental-sync-procedure.

    --triggered-re-sync
      PCE-triggered re-synchronization capability enabled.

Data Change Counter Tool
^^^^^^^^^^^^^^^^^^^^^^^^

Data Change Counter tool registers a Data Change Listener to a specified topology's subtree.
This will allow us to know the quantity of changes produced under it, with each data change event counter will be incremented.

Installation
''''''''''''
Installing data change counter tool

.. code-block:: console

   feature:install odl-restconf odl-bgpcep-data-change-counter

Configuration
'''''''''''''
Once we set the configuration, a new data change counter will be created and registers to example-linkstate-topology.

.. important:: **Clustering** - Each Counter Identifier should be unique.

**URL:** ``/restconf/config/odl-data-change-counter-config:data-change-counter-config/data-change-counter``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,3

   <data-change-counter-config xmlns="urn:opendaylight:params:xml:ns:yang:bgpcep:data-change-counter-config">
       <counter-id>data-change-counter</counter-id>
       <topology-name>example-linkstate-topology</topology-name>
   </data-change-counter-config>

@line 2: **Counter Id** - Unique counter change identifier.

@line 3: **Topology Name** - An identifier for a topology.

Usage
'''''

Counter state for topology

**URL:** ``/restconf/operational/data-change-counter:data-change-counter/counter/data-change-counter``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,3

   <counter xmlns="urn:opendaylight:params:xml:ns:yang:bgp-data-change-counter">
       <id>data-change-counter</id>
       <count>0</count>
   </counter>

@line 2: **Counter Id** - Unique counter change identifier.

@line 3: **Count** - Number of changes under registered topology's subtree.
