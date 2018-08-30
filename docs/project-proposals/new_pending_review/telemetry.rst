Name
----

Telemetry

Repo Name
---------

telemetry

Description
-----------

Traditional way to get running information from network device, such as
snmp or netflow, is becoming insufficient in sdn network. Because sdn
application needs better performance and more flexible data format. It‘s
necessary to implement a telemetry channel to support new app in sdn(
(e.g. traffic optimization).

.. figure:: Telemetry_fig_1_2.png
   :alt: Telemetry_fig_1_2.png
   :width: 700px

   Telemetry_fig_1_2.png

architecture
''''''''''''

telemetry channel could be defined as control plane and data plane, as
the picture below

.. figure:: Telemetry_fig_2.png
   :alt: Telemetry_fig_2.png
   :width: 800px

   Telemetry_fig_2.png

-  Control plane

Control plane implements a configuration channel which can be used to
set data type/frequency/data destination of telemetry in the target
device. SBI of control plane is openconfig model based，and NBI is
Restful API based.

-  Data plane

data plane of telemetry is a stream channel. It is supposed to be
constructed based on GRPC, a google open-source project. Device running
telemetry could send data with the stream channel to any kinds of
processor include sdn controller. Data format in GRPC is defined with
google protocol buffer(GPB) and there is no any standard definition
model.

Components
''''''''''

.. figure:: Telemetry_fig_3.png
   :alt: Telemetry_fig_3.png
   :width: 800px

   Telemetry_fig_3.png

+-----------------------------------+-----------------------------------+
| Components                        | Description                       |
+===================================+===================================+
| NB API                            | telemetry configuration           |
|                                   | northbound API definition, such   |
|                                   | as create telemetry or set        |
|                                   | telemetry destination.            |
+-----------------------------------+-----------------------------------+
| configuration                     | Receive the input from NBI,       |
|                                   | persistent data, and finish the   |
|                                   | configure with SBI to device.     |
+-----------------------------------+-----------------------------------+
| Runtime server                    | Receive runtime data from         |
|                                   | telemetry on device               |
+-----------------------------------+-----------------------------------+
| Data processor                    | 1.implement a data listener       |
|                                   | service, allow apps to register   |
|                                   | telemetry data with types. 2.     |
|                                   | Process telemetry runtime data    |
|                                   | and notify to apps.               |
+-----------------------------------+-----------------------------------+

Dependency
''''''''''

Telemetry projects will have dependency on these projects: MD-SAL,
controller, netconf, yang-tools, dlux.

Scope
-----

Resources Committed (developers committed to working)
-----------------------------------------------------

TBD

Initial Committers
------------------

| wang.senxiao@zte.com.cn
| ding.rui@zte.com.cn
| he.yunbo@zte.com.cn
| zhu.jianxun2@zte.com.cn
| li.feng3@zte.com.cn
| huan.linying@zte.com.cn

Vendor Neutral
--------------

The project is made from scratch, no vendor code, logos nor is anything
included.

Meets Board Policy (including IPR)
----------------------------------

New Project. No Inbound Code Review required
