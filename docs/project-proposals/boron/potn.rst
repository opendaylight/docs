Name
----

POTN (Packet Optical Transport Network)

Repo Name
---------

potn

Description
-----------

In Korea, wired telecommunications carriers (KT, SKT, LGU+, and KINX)
provide various network services with brownfield networks that consist
of assorted transport technologies (SDH/MPLS-TP, OTN/OTH, ROADM/DWDM,
IP/MPLS) with diverse network appliances (Firewall, IDS/IPS, Web
Accelerator). In order to reduce CAPEX and to avoid vendor lock-in,
these transport networks are often comprised of multi-vendor and
multi-domain equipment, which leads to taking various forms of layered
architectures such as (SDH/OTN+ROADM) or (PTN/OTN+ROADM). As a result,
this byzantine complexity causes an increase in OPEX and becomes a
significant hurdle in the era of software defined infrastructure (SDI)
and agile networking infrastructure. Consequently, research
organizations and local telecommunications carriers are investigating
and analyzing requirements for transport SDN technology.

-  Carrier’s requirements

| 1. **Operational Simplicity** enables network service
  control/provision with simpler and more open APIs.
| 2. **Differentiated Service Delivery** means automatically allocating
  resources in accordance to the context of an application or a service.
| 3. **Scalability** means supporting multi-domain and multi-layer
  network service control/provision transactions in a scale of hours and
  minutes, not weeks and days.
| 4. **Security** provides enhanced security of provided network
  services or resource isolation
| 5. **Continuous Availability** means diverse and flexible network
  recovery in case of any disastrous or erroneous operations or
  failures.
| 6. **Legacy and multi-Domain Interworking** is about supporting
  network diversity.

-  Expectations

| 1. Solving instantaneous multi-vendor end-to-end service provisioning
  will lead to OPEX and CAPEX reduction.
| 2. Enabling sustainable multi-vendor-based transport networks for
  CAPEX reduction.
| 3. Operating efficiently through the global network view
| 4. Supporting the evolution into an open transport network
  infrastructure for various future services

-  **Controller**

| |Mplscontroller.png| 
| -**Inventory Manager** maintains the DB (Data Broker) based on the
  information gathered from SB Plugins or the MD-SAL. It can update the
  information or notify other managers as needed.
|    -Implementing Notification
|    -Manage information on nodes


 -**Topology Manager** acquires information on nodes and network
  topologies through registering a listener on the Inventory Data Store
  Tree. It maintains its own Data Store for other plugins to use.
|    -Implementing Notification
|    -Manage information on nodes
|    -Manage information on topologies and links
| -**Service Manager** receives a user’s service
  creation/modification/deletion request though the Restconf interfaces.
  It parses the input and invokes appropriate RPCs to
  create/modify/delete the requested service.
|    -RPC call
|    -Implementing Notification
|    -Manage PTP Service
| -**Southbound Plugin** connects to a EMS or MPLS nodes for control and
  management. It can notify the MPLS-TP controller or MD-SAL as needed.
|    -RPC implementation
|    -Manage node connections
|    -Manage Node Information
|    -Map node and MD-SAL information
| \* **Sequence Diagram**
| |Nodeupdate.png| 
| 1. The SB Plugin detects that a new node has joined and sends a
  notification to the MD-SAL.
| 2. The MD-SAL routes the notification to bundles that registered the
  listener.
| 3. The Inventory Manager Plugin writes the node information on the
  Data Store.
| 4. The Topology Manager receives a notification through an
  “OnDataChanged” message.
| |Linkupdate.png| 
| 1. The SB Plugin detects that a new link and send a notification to
  the MD-SAL.
| 2. The MD-SAL routes the notification to bundles that registered the
  listener.
| 3. The Topology Manager receives a notification and writes the link
  information on the Data Store.
| |Serviceupdate.png| 
| 1. A user inputs a service creation command though a Restconf
  interface.
| 2. The Service Manager parses the input and checks its validity. Once
  it's verified, it writes to the MD-SAL and invokes RPCs in accordance
  with the input.
| 3. Upon receiving a RPC, the SB plugin translates the RPC into a
  target compatible command (an EMS or MPLS node) and sends it to the
  target entity.
| 4. The entity (the EMS or MPLS Node) executes the command and notifies
  the result to the SB Plugin.
| 5. The SB Plugin sends a notification message to the MD-SAL and the
  MD-SAL routes it to all registered bundles, in this case the Inventory
  Manager.
| 6. After certain verification procedures (format and contents), the
  Inventory Manager writes the information on the Data Store.
| 7. Upon receiving the “onDataChanged” message, the Topology and
  Service Managers reflect changes on their Data Store.

Scope
-----

| This project will provide a Northbound Interface (NBI) to integrate
  and control devices that speak the PTN/OTN or provide similar
  functionality. This will include designing YANG models and developing
  codes for provisioning PTN/OTN services and translating those
  provisioning requests into appropriate southbound plugin calls. The
  project may also develop additional southbound plugins as needed.
| Phase 1) MPLS-TP
| Phase 2) OTN

Resources Committed (developers committed to working)
-----------------------------------------------------

-  Justin Sae Hyong Park, (labry, labry@etri.re.kr)
-  Jisoo Shin, (jshin, jshin@etri.re.kr)
-  Jin Won Kang, (kjwon15, kjwonmail@gmail.com)
-  Chang-Gyu Lim, (etrihuman, human@etri.re.kr)
-  Soomyung Park, (smpahk68, smpahk@etri.re.kr)

Initial Committers
------------------

-  Justin Sae Hyong Park, (labry, labry@etri.re.kr)
-  Jisoo Shin, (jshin, jshin@etri.re.kr)
-  Jin Won Kang, (kjwon15, kjwonmail@gmail.com)
-  Chang-Gyu Lim, (etrihuman, human@etri.re.kr)
-  Soomyung Park, (smpahk68, smpahk@etri.re.kr)
-  Moon Ho Yoo, (moono79, moono79@woori-net.com)

Vendor Neutral
--------------

-  No vendor branding in project name
-  No vendor branding present in code or output of build
-  No vendor branding present in documentation
-  All contributed code will adhere to OpenDaylight's copyright and
   license policies.

Meets Board Policy (including IPR)
----------------------------------

.. |Nodeupdate.png| image:: Nodeupdate.png
   :width: 350px
.. |Linkupdate.png| image:: Linkupdate.png
   :width: 350px
.. |Serviceupdate.png| image:: Serviceupdate.png
   :width: 500px


.. |Mplscontroller.png| image:: Mplscontroller.png
   :width: 450px