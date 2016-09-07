NATApp Developer Guide
======================

Overview
--------

NATApp acts as a basic framework for providing NAT functionality to the
SDN controller. One can use REST or Java APIs to enter global IP address
into YANG Data Store which will be used by the odl-natapp-feature to map
local IP to global IP addresses.

NATApp Architecture
-------------------

NATApp listens on OpenFlow southbound interface for Packet\_In messages.
The application parses the message for header information. If the
received message has a local IP address the application installs rules
on the OpenFlow switch for network address translation from local to
global IP addresses. NATApp has NATPacketHandler class that implements
the PacketProcessing interface to override the OnPacketReceived
notification by which the application is notified of Packet\_In
messages.

NATApp is implemented with the help of a few java classes.

1. NATPacketHandler

   -  Receives Packet\_In messages coming to the controller and process
      them appropriately

2. NATPacketParsing

   -  Decodes Packet\_In messages for packet header information (L2, L3
      & L4 information)

3. NATInventoryUtility

   -  Decodes Packet\_In messages for OpenFlow Switch and Port
      information

4. NATFlowBuilder

   -  Creates NAT flow rules at the OpenFlow Switch

5. NATYangStore

   -  Reads Global IP entered by user and maps local IP to Global IP
      information

6. NATFlowHandler

   -  Manages expired flows in the switch and frees up used global IP
      address for future natting.

Key APIs and Interfaces
-----------------------

1. RPC APIs

   -  Static - Configure Static Natting Functionality

   -  Dynamic - Configure Static Dynamic Functionality

   -  PAT - Configure PAT Functionality

2. DataStore APIs

   -  StaticNatIp - Configure floating IP addresses for Static Natting

   -  StaticIpMapInfo - Mapped Information between floating and private
      IP addresses in Static Natting

   -  DynamicNatIp - Configure floating IP addresses for Dynamic Natting

   -  DynamicIpMapInfo - Mapped Information between floating and private
      IP addresses in Dynamic Natting

   -  PatIp - Configure floating IP addresses for Port Address
      Translation

   -  PatIpMapInfo - Mapped Information between TCP Port numbers of
      floating IP and private IP addresses

3. Notification APIs

   -  DynamicIPExhaustion - Exhaustion of Dynamic Global IP Addresses

   -  PatOverConnection - More than 10 TCP or UDP connections from one
      private IP address

