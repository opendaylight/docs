.. _bgp-user-guide-operational-state:

Operational State
=================

The OpenDaylight BGP implementation provides a set of APIs (described below), that give its operational state refreshed periodically, by default every 5 seconds.
The following APIs describe what is available starting with how to change the default refresh rate.

.. contents:: Contents
   :depth: 2
   :local:

Operational State Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**URL:** ``/restconf/config/bgp-state-config:bgp-state-config``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3

   <bgp-state-config xmlns="urn:opendaylight:params:xml:ns:yang:controller:config">
       <config-name xmlns="urn:opendaylight:params:xml:ns:yang:bgp-state-config">operationalState</config-name>
       <timer xmlns="urn:opendaylight:params:xml:ns:yang:bgp-state-config">1</timer>
   </bgp-state-config>

@line 3: Time in seconds between operational state update.

BGP RIB Operational State
^^^^^^^^^^^^^^^^^^^^^^^^^

**URL:** ``/restconf/operational/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/global/state``

**Method:** ``GET``

**Content-Type:** ``application/xml``

**Response Body:**

.. code-block:: xml
   :linenos:

   <state xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <as>65000</as>
       <router-id>192.0.2.2</router-id>
       <total-paths>0</total-paths>
       <total-prefixes>0</total-prefixes>
   </state>

@line 2: AS number of the remote peer.

@line 3: The unique protocol instance identifier.

@line 4: Total number of Paths installed on RIB (Loc-RIB)

@line 5: Total number of Prefixes installed on RIB (Loc-RIB)

BGP RIB Families Operational State
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**URL:** ``/restconf/operational/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/global/afi-safis``

**Method:** ``GET``

**Content-Type:** ``application/xml``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,5,6

   <afi-safis xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <afi-safi>
           <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-UNICAST</afi-safi-name>
           <state>
               <total-paths>0</total-paths>
               <total-prefixes>0</total-prefixes>
           </state>
       </afi-safi>
       <afi-safi>
           <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-UNICAST</afi-safi-name>
           <state>
               <total-paths>0</total-paths>
               <total-prefixes>0</total-prefixes>
           </state>
       </afi-safi>
       ....
   </afi-safis>

@line 3: Family Identifier.

@line 5: Total number of Paths installed on RIB (Loc-RIB) per specific family.

@line 6: Total number of Prefixes installed on RIB (Loc-RIB) per specific family.

BGP Neighbors Operational State
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**URL:** ``/restconf/operational/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors``

**Method:** ``GET``

**Content-Type:** ``application/xml``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3

   <neighbors xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <neighbor>
           <neighbor-address>192.0.2.1</neighbor-address>
           .....
       </neighbor>
       <neighbor>
           <neighbor-address>192.0.2.2</neighbor-address>
           .....
       </neighbor>
   </neighbors>

@line 3: IP address of the remote BGP peer. Also serves as an unique identifier of a neighbor in a list of neighbors.

BGP Neighbor Operational State
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. note:: Supported Capabilities only provided when session has been established.

**URL:** ``/restconf/operational/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors/neighbor/127.0.0.2/state``

**Method:** ``GET``

**Content-Type:** ``application/xml``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,3,4,7,8,11,12

   <state xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <session-state>ESTABLISHED</session-state>
       <supported-capabilities xmlns:x="http://openconfig.net/yang/bgp-types">x:ASN32</supported-capabilities>
       <supported-capabilities xmlns:x="http://openconfig.net/yang/bgp-types">x:MPBGP</supported-capabilities>
       <messages>
           <sent>
               <UPDATE>0</UPDATE>
               <NOTIFICATION>0</NOTIFICATION>
           </sent>
           <received>
               <UPDATE>4</UPDATE>
               <NOTIFICATION>0</NOTIFICATION>
           </received>
       </messages>
   </state>

@line 2: Session status

@line 3-4: BGP capabilities supported ( ASN32 / MPBGP / ROUTE_REFRESH / GRACEFUL_RESTART / ADD_PATHS)

@line 7: Total count of Update Messages sent

@line 8: Total count of Notification Messages sent

@line 11: Total count of Update Messages received

@line 12: Total count of Notification Messages received

BGP Neighbor Families Operational State
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. note:: Graceful Restart not supported yet. Planned for Carbon.


**URL:** ``/restconf/operational/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors/neighbor/192.0.2.1/afi-safis``

**Method:** ``GET``

**Content-Type:** ``application/xml``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,5,7,9,10

   <afi-safis xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
        <afi-safi>
            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-UNICAST</afi-safi-name>
            <state>
                <active>false</active>
            </state>
            <graceful-restart>
                <state>
                    <received>false</received>
                    <advertised>false</advertised>
                </state>
            </graceful-restart>
        </afi-safi>
        <afi-safi>
            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-UNICAST</afi-safi-name>
            <state>
                <active>false</active>
            </state>
            <graceful-restart>
                <state>
                    <received>false</received>
                    <advertised>false</advertised>
                </state>
            </graceful-restart>
        </afi-safi>
   </afi-safis>

@line 3: Family Identifier.

@line 5: True if family is advertized by peer.

@line 7: Graceful Restart Operational State per specific family.

@line 9: True if the peer supports graceful restart.

@line 10: True if we support graceful restart.

BGP Neighbor Family Operational State
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. note:: Prefixes state is only provided once session is established.
.. note:: Graceful Restart not supported yet. Planned to be implemented in Carbon.

**URL:** ``/restconf/operational/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors/neighbor/192.0.2.1/afi-safis/afi-safi/openconfig-bgp-types:IPV4%2DUNICAST``

**Method:** ``GET``

**Content-Type:** ``application/xml``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 2,4,6,7,8

   <afi-safi xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-UNICAST</afi-safi-name>
       <state>
           <active>true</active>
           <prefixes>
               <installed>3</installed>
               <sent>0</sent>
               <received>3</received>
           </prefixes>
       </state>
       <graceful-restart>
           <state>
               <received>false</received>
               <advertised>false</advertised>
           </state>
       </graceful-restart>
   </afi-safi>

@line 2: Family Identifier.

@line 4: True if family is advertized to and by peer.

@line 6: Total count of prefixes advertized by peer and installed (effective-rib-in).

@line 7: Total count of prefixes advertized to peer (adj-rib-out).

@line 8: Total count of prefixes advertized by peer (adj-rib-in).

BGP Neighbor Timers Operational State
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. note:: State is only provided once session is established.

**URL:** ``/restconf/operational/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors/neighbor/192.0.2.1/timers``

**Method:** ``GET``

**Content-Type:** ``application/xml``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,4

   <timers xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <state>
           <negotiated-hold-time>180</negotiated-hold-time>
           <uptime>1580676</uptime>
       </state>
   </timers>

@line 3: The negotiated hold-time for the BGP session in seconds.

@line 4: Session duration since establishment in milliseconds.

BGP Neighbor Transport Operational State
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. note:: State is only provided once session is established.

**URL:** ``/restconf/operational/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors/neighbor/192.0.2.1/transport``

**Method:** ``GET``

**Content-Type:** ``application/xml``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,4,5

   <transport xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <state>
           <remote-address>127.0.0.2</remote-address>
           <remote-port>44718</remote-port>
           <local-port>1790</local-port>
       </state>
   </transport>

@line 3: IP address of the remote BGP peer.

@line 4: Port of the remote BGP peer.

@line 5: Local port.

BGP Neighbor Error Handling Operational State
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. note:: State is only provided once session is established.
.. note:: Error handling not supported yet. Planned for Carbon.

**URL:** ``/restconf/operational/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors/neighbor/192.0.2.1/error-handling``

**Method:** ``GET``

**Content-Type:** ``application/xml``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3

   <error-handling xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <state>
           <erroneous-update-messages>0</erroneous-update-messages>
       </state>
   </error-handling>

@line 3: The number of BGP UPDATE messages for which the treat-as-withdraw mechanism has been applied based on
erroneous message contents

BGP Neighbor Graceful Restart Operational State
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. note:: Graceful Restart not supported yet. Planned for Carbon.

**URL:** ``/restconf/operational/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/bgp/neighbors/neighbor/192.0.2.1/graceful-restart``

**Method:** ``GET``

**Content-Type:** ``application/xml``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,4,5

   <graceful-restart xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
       <state>
           <peer-restart-time>0</peer-restart-time>
           <peer-restarting>false</peer-restarting>
           <local-restarting>false</local-restarting>
       </state>
   </graceful-restart>

@line 3: The period of time (advertised by the peer) that the peer expects a restart of a BGP session to take.

@line 4: This flag indicates whether the remote neighbor is currently in the process of restarting, and hence
received routes are currently stale.

@line 5: This flag indicates whether the local neighbor is currently restarting. The flag is unset after all NLRI
have been advertised to the peer, and the End-of-RIB (EOR) marker has been unset.

BGP Peer Groups Operational State
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**URL:** ``/restconf/operational/openconfig-network-instance:network-instances/network-instance/global-bgp/openconfig-network-instance:protocols/protocol/openconfig-policy-types:BGP/bgp-example/peer-groups``

**Method:** ``GET``

**Content-Type:** ``application/xml``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,5,6

   <peer-groups>
       <peer-group>
           <peer-group-name>application-peers</peer-group-name>
           <state>
               <total-paths>0</total-paths>
               <total-prefixes>0</total-prefixes>
           </state>
      </peer-group>
   </peer-groups>

@line 3: Peer Group Identifier.

@line 5: At this moment the cost for count path under effect-rib-in is to high. Therefore the value is the same as total prefixes.

@line 6: Total Prefixes installed under by peers pertaining to this peer group (effective-rib-in).
This count doesn't differentiate repeated prefixes.

CLI
---

BGP Karaf Console (odl-bgpcep-bgp-cli) provides a CLI feature to read operational state per RIB, Neighbor and Peer Group.

.. code-block:: bash
   :linenos:

   opendaylight-user@root> bgp:operational-state -rib example-bgp-rib

.. code-block:: bash
   :linenos:

   opendaylight-user@root> bgp:operational-state -rib example-bgp-rib -neighbor 192.0.2.1

.. code-block:: bash
   :linenos:

   opendaylight-user@root> bgp:operational-state -rib -peer-group application-peers
