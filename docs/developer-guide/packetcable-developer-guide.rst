.. _packetcable-dev-guide:

PacketCable Developer Guide
===========================

PCMM Specification
------------------

`PacketCable™ Multimedia
Specification <http://www.cablelabs.com/specification/packetcable-multimedia-specification>`__

System Overview
---------------

These components introduce a DOCSIS QoS Service Flow management using
the PCMM protocol. The driver component is responsible for the
PCMM/COPS/PDP functionality required to service requests from
PacketCable Provider and FlowManager. Requests are transposed into PCMM
Gate Control messages and transmitted via COPS to the CCAP/CMTS. This
plugin adheres to the PCMM/COPS/PDP functionality defined in the
CableLabs specification. PacketCable solution is an MDSAL compliant
component.

PacketCable Components
----------------------

The packetcable maven project is comprised of several modules.

+--------------------------------------+--------------------------------------+
| Bundle                               | Description                          |
+======================================+======================================+
| packetcable-driver                   | A common module that containts the   |
|                                      | COPS stack and manages all           |
|                                      | connections to CCAPS/CMTSes.         |
+--------------------------------------+--------------------------------------+
| packetcable-emulator                 | A basic CCAP emulator to facilitate  |
|                                      | testing the plugin when no physical  |
|                                      | CCAP is avaible.                     |
+--------------------------------------+--------------------------------------+
| packetcable-policy-karaf             | Generates a Karaf distribution with  |
|                                      | a config that loads all the          |
|                                      | packetcable features at runtime.     |
+--------------------------------------+--------------------------------------+
| packetcable-policy-model             | Contains the YANG information model. |
+--------------------------------------+--------------------------------------+
| packetcable-policy-server            | Provider hosts the model processing, |
|                                      | RESTCONF, and API implementation.    |
+--------------------------------------+--------------------------------------+

Setting Logging Levels
~~~~~~~~~~~~~~~~~~~~~~

From the Karaf console

::

    log:set <LEVEL> (<PACKAGE>|<BUNDLE>)
    Example
    log:set DEBUG org.opendaylight.packetcable.packetcable-policy-server

Tools for Testing
-----------------

Postman REST client for Chrome
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`Install the Chrome
extension <https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en>`__

`Download and import sample packetcable
collection <https://git.opendaylight.org/gerrit/gitweb?p=packetcable.git;a=tree;f=packetcable-policy-server/doc/restconf-samples>`__

View Rest API
~~~~~~~~~~~~~

1. Install the ``odl-mdsal-apidocs`` feature from the karaf console.

2. Open http://localhost:8181/apidoc/explorer/index.html default dev
   build user/pass is admin/admin

3. Navigate to the PacketCable section.

Yang-IDE
~~~~~~~~

Editing yang can be done in any text editor but Yang-IDE will help
prevent mistakes.

`Setup and Build Yang-IDE for
Eclipse <https://github.com/xored/yang-ide/wiki/Setup-and-build>`__

Using Wireshark to Trace PCMM
-----------------------------

1. To start wireshark with privileges issue the following command:

   ::

       sudo wireshark &

2. Select the interface to monitor.

3. Use the Filter to only display COPS messages by applying “cops” in
   the filter field.

   .. figure:: ./images/packetcable-developer-wireshark.png

      Wireshark looking for COPS messages.

Debugging and Verifying DQoS Gate (Flows) on the CCAP/CMTS
----------------------------------------------------------

Below are some of the most useful CCAP/CMTS commands to verify flows
have been enabled on the CMTS.

Cisco
~~~~~

`Cisco CMTS Cable Command
Reference <http://www.cisco.com/c/en/us/td/docs/cable/cmts/cmd_ref/b_cmts_cable_cmd_ref.pdf>`__

Find the Cable Modem
~~~~~~~~~~~~~~~~~~~~

::

    10k2-DSG#show cable modem
                                                                                      D
    MAC Address    IP Address      I/F           MAC           Prim RxPwr  Timing Num I
                                                 State         Sid  (dBmv) Offset CPE P
    0010.188a.faf6 0.0.0.0         C8/0/0/U0     offline       1    0.00   1482   0   N
    74ae.7600.01f3 10.32.115.150   C8/0/10/U0    online        1    -0.50  1431   0   Y
    0010.188a.fad8 10.32.115.142   C8/0/10/UB    w-online      2    -0.50  1507   1   Y
    000e.0900.00dd 10.32.115.143   C8/0/10/UB    w-online      3    1.00   1677   0   Y
    e86d.5271.304f 10.32.115.168   C8/0/10/UB    w-online      6    -0.50  1419   1   Y

Show PCMM Plugin Connection
~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    10k2-DSG#show packetcabl ?
      cms     Gate Controllers connected to this PacketCable client
      event   Event message server information
      gate    PacketCable gate information
      global  PacketCable global information

    10k2-DSG#show packetcable cms
    GC-Addr        GC-Port  Client-Addr    COPS-handle  Version PSID Key PDD-Cfg


    10k2-DSG#show packetcable cms
    GC-Addr        GC-Port  Client-Addr    COPS-handle  Version PSID Key PDD-Cfg
    10.32.0.240    54238    10.32.15.3     0x4B9C8150/1    4.0   0    0   0

Show COPS Messages
~~~~~~~~~~~~~~~~~~

::

    debug cops details

Use CM Mac Address to List Service Flows
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    10k2-DSG#show cable modem
                                                                                      D
    MAC Address    IP Address      I/F           MAC           Prim RxPwr  Timing Num I
                                                 State         Sid  (dBmv) Offset CPE P
    0010.188a.faf6 ---             C8/0/0/UB     w-online      1    0.50   1480   1   N
    74ae.7600.01f3 10.32.115.150   C8/0/10/U0    online        1    -0.50  1431   0   Y
    0010.188a.fad8 10.32.115.142   C8/0/10/UB    w-online      2    -0.50  1507   1   Y
    000e.0900.00dd 10.32.115.143   C8/0/10/UB    w-online      3    0.00   1677   0   Y
    e86d.5271.304f 10.32.115.168   C8/0/10/UB    w-online      6    -0.50  1419   1   Y


    10k2-DSG#show cable modem 000e.0900.00dd service-flow


    SUMMARY:
    MAC Address    IP Address      Host          MAC           Prim  Num Primary    DS
                                   Interface     State         Sid   CPE Downstream RfId
    000e.0900.00dd 10.32.115.143   C8/0/10/UB    w-online      3     0   Mo8/0/2:1  2353


    Sfid  Dir Curr  Sid   Sched  Prio MaxSusRate  MaxBrst     MinRsvRate  Throughput
              State       Type
    23    US  act   3     BE     0    0           3044        0           39
    30    US  act   16    BE     0    500000      3044        0           0
    24    DS  act   N/A   N/A    0    0           3044        0           17



    UPSTREAM SERVICE FLOW DETAIL:

    SFID  SID   Requests   Polls      Grants     Delayed    Dropped    Packets
                                                 Grants     Grants
    23    3     784        0          784        0          0          784
    30    16    0          0          0          0          0          0


    DOWNSTREAM SERVICE FLOW DETAIL:

    SFID  RP_SFID QID    Flg Policer               Scheduler             FrwdIF
                             Xmits      Drops      Xmits      Drops
    24    33019   131550     0          0          777        0          Wi8/0/2:2

    Flags Legend:
    $: Low Latency Queue (aggregated)
    ~: CIR Queue

Deleting a PCMM Gate Message from the CMTS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    10k2-DSG#test cable dsd  000e.0900.00dd 30

Find service flows
~~~~~~~~~~~~~~~~~~

All gate controllers currently connected to the PacketCable client are
displayed

::

    show cable modem 00:11:22:33:44:55 service flow   ????
    show cable modem

Debug and display PCMM Gate messages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    debug packetcable gate control
    debug packetcable gate events
    show packetcable gate summary
    show packetcable global
    show packetcable cms

Debug COPS messages
~~~~~~~~~~~~~~~~~~~

::

    debug cops detail
    debug packetcable cops
    debug cable dynamic_qos trace

Integration Verification
------------------------

Checkout the integration project and perform regression tests.

::

    git clone ssh://${ODL_USERNAME}@git.opendaylight.org:29418/integration.git
    git clone https:/git.opendaylight.org/gerrit/integration.git

1. Check and edit the
   integration/features/src/main/resources/features.xml and follow the
   directions there.

2. Check and edit the integration/features/pom.xml and add a dependency
   for your feature file

3. Build integration/features and debug

``  mvn clean install``

Test your feature in the integration/distributions/extra/karaf/
distribution

::

    cd integration/distributions/extra/karaf/
    mvn clean install
    cd target/assembly/bin
    ./karaf

service-wrapper
~~~~~~~~~~~~~~~

Install http://karaf.apache.org/manual/latest/users-guide/wrapper.html

::

    opendaylight-user@root>feature:install service-wrapper
    opendaylight-user@root>wrapper:install --help
    DESCRIPTION
            wrapper:install

    Install the container as a system service in the OS.

    SYNTAX
            wrapper:install [options]

    OPTIONS
            -d, --display
                    The display name of the service.
                    (defaults to karaf)
            --help
                    Display this help message
            -s, --start-type
                    Mode in which the service is installed. AUTO_START or DEMAND_START (Default: AUTO_START)
                    (defaults to AUTO_START)
            -n, --name
                    The service name that will be used when installing the service. (Default: karaf)
                    (defaults to karaf)
            -D, --description
                    The description of the service.
                    (defaults to )

    opendaylight-user@root> wrapper:install
    Creating file: /home/user/odl/distribution-karaf-0.5.0-Boron/bin/karaf-wrapper
    Creating file: /home/user/odl/distribution-karaf-0.5.0-Boron/bin/karaf-service
    Creating file: /home/user/odl/distribution-karaf-0.5.0-Boron/etc/karaf-wrapper.conf
    Creating file: /home/user/odl/distribution-karaf-0.5.0-Boron/lib/libwrapper.so
    Creating file: /home/user/odl/distribution-karaf-0.5.0-Boron/lib/karaf-wrapper.jar
    Creating file: /home/user/odl/distribution-karaf-0.5.0-Boron/lib/karaf-wrapper-main.jar

    Setup complete.  You may wish to tweak the JVM properties in the wrapper configuration file:
    /home/user/odl/distribution-karaf-0.5.0-Boron/etc/karaf-wrapper.conf
    before installing and starting the service.


    Ubuntu/Debian Linux system detected:
      To install the service:
        $ ln -s /home/user/odl/distribution-karaf-0.5.0-Boron/bin/karaf-service /etc/init.d/

      To start the service when the machine is rebooted:
        $ update-rc.d karaf-service defaults

      To disable starting the service when the machine is rebooted:
        $ update-rc.d -f karaf-service remove

      To start the service:
        $ /etc/init.d/karaf-service start

      To stop the service:
        $ /etc/init.d/karaf-service stop

      To uninstall the service :
        $ rm /etc/init.d/karaf-service
