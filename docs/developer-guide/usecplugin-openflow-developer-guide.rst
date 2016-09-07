Usecplugin-OpenFlow Developer Guide
===================================

Overview
--------

Usecplugin-OpenFlow provides security related information for the
OpenFlow southbound interface.

Usecplugin-OpenFlow Architecture
--------------------------------

Usecplugin-OpenFlow listens on OpenFlow southbound interface for
Packet\_In messages. The application parses the message for header
information. Usecplugin-OpenFlow has PacketHandler class that implements
the PacketProcessing interface to override the OnPacketReceived
notification by which the application is notified of Packet\_In
messages.

Usecplugin-OpenFlow is implemented with the help of a few java classes.

UsecpluginProvider
    Provider class for Usecplugin-OpenFlow feature implementation.

PacketHandler
    Receives Packet\_In messages coming to the controller and process
    them appropriately

PacketParsing
    Decodes Packet\_In messages for packet header information (L2, L3 &
    L4 information)

InventoryUtility
    Decodes Packet\_In messages for OpenFlow Switch and Port information

UsecpluginNotifImpl
    Logs notification information which can be seen by log:display at
    the Karaf terminal

UsecpluginRPCImpl
    Implements Usecplugin RPCs

UsecpluginStore
    Stores attack information into YANG Data Store and log file.

Key APIs and Interfaces
-----------------------

-  RPC APIs

   Attacks from DPID
       Number of OpenFlow Packet\_In Attacks from Switch with DeviceID

   Attacks from Host
       Number of OpenFlow Packet\_In Attacks from SrcIP Address

   Attacks to Server
       Number of OpenFlow Packet\_In Attacks to DstIP Address

   Attacks at Time of Day
       Number of OpenFlow Packet\_In Attacks at a Particular Time with a
       variable Window Time

-  Notification APIs

   On Low Water Mark Breached
       Notification generated on breaching Low Water Mark

