.. _bgp-monitoring-protocol-user-guide-test-tools:

Test tools
==========
BMP test tool serves to test basic BMP functionality, scalability and performance.

BMP mock
^^^^^^^^
The BMP mock is a stand-alone Java application purposed to simulate a BMP-enabled router(s) and peers.
The simulator is capable to report dummy routes and statistics.
This application is not part of the OpenDaylight Karaf distribution, however it can be downloaded from OpenDaylight's Nexus (use latest release version):

``https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/bgpcep/bgp-bmp-mock``

Usage
'''''
The application can be run from command line:

.. code-block:: console

   java -jar bgp-bmp-mock-*-executable.jar


with optional input parameters:

.. code-block:: console

   --local_address <address> (optional, default 127.0.0.1)
      The IPv4 address where BMP mock is bind to.

   -ra <IP_ADDRESS:PORT,...>, --remote_address <IP_ADDRESS:PORT,...>
      A list of IP addresses of BMP monitoring station, by default 127.0.0.1:12345.

   --passive (optional, not present by default)
      This flags enables passive mode for simulated routers.

   --routers_count <0..N> (optional, default 1)
       An amount of BMP routers to be connected to the BMP monitoring station.

   --peers_count <0..N> (optional, default 0)
      An amount of peers reported by each BMP router.

   --pre_policy_routes <0..N> (optional, default 0)
      An amount of "pre-policy" simple IPv4 routes reported by each peer.

   --post_policy_routes <0..N> (optional, default 0)
      An amount of "post-policy" simple IPv4 routes reported by each peer.

   --log_level <FATAL|ERROR|INFO|DEBUG|TRACE> (optional, default INFO)
      Set logging level for BMP mock.
