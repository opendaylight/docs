.. _bgp-user-guide-bgp-server:

BGP Server
==========

BGP uses TCP as its transport protocol, by default listens on port 179. OpenDaylight BGP plugin is configured to listen on port *1790*, due to
privileged ports restriction for non-root users.
One of the workarounds is to use port redirection. In case other port is desired to be used instead, we can reconfigure it.

Here is a sample of bgp port listening re-configuration:

**URL:** ``/restconf/config/odl-bgp-peer-acceptor-config:bgp-peer-acceptor-config/default``

**Method:** ``PUT``

**Content-Type:** ``application/xml``

**Request Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,4

   <bgp-peer-acceptor-config xmlns="urn:opendaylight:params:xml:ns:yang:odl-bgp-peer-acceptor-config">
       <config-name>default</config-name>
       <binding-address>0.0.0.0</binding-address>
       <binding-port>1791</binding-port>
   </bgp-peer-acceptor-config>

@line 3: Binding address: By default is 0.0.0.0, so it is not a mandatory field.

@line 4: Binding Port: Port were BGP Server will listen.
