.. _bgp-user-guide-protocol-configuration-loader:

BGP Protocol Configuration Loader
=================================

BGP Protocol Configuration Loader allows the user to define the static initial
configuration for a BGP protocol instance.
This service will detect the creation of new configuration files following the
pattern ``protocols-*.xml`` under the path "etc/opendaylight/bgpcep".
Once the file is processed, the defined configuration will be available from
the configuration Data Store.

.. note:: If the BGP instance is already present, no update or configuration will be applied.

**PATH:** ``etc/opendaylight/bgpcep/protocols-config.xml``

.. code-block:: xml

    <protocols xmlns="http://openconfig.net/yang/network-instance">
        <protocol>
            <name>example-bgp-rib</name>
            <identifier xmlns:x="http://openconfig.net/yang/policy-types">x:BGP</identifier>
            <bgp xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
                <global>
                    <config>
                        <router-id>192.0.2.2</router-id>
                        <as>64496</as>
                        <!-- if cluster-id is not present, it's value is the same as bgp-id -->
                        <!-- <route-reflector-cluster-id>192.0.2.3</route-reflector-cluster-id> -->
                        <!-- <read-only-limit>120</read-only-limit>-->
                    </config>
                    <afi-safis>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-UNICAST</afi-safi-name>
                            <!--Advertise N Paths
                            <receive>true</receive>
                            <send-max>2</send-max>-->
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-UNICAST</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-LABELLED-UNICAST</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-LABELLED-UNICAST</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV4-UNICAST</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV6-UNICAST</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L2VPN-EVPN</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name>LINKSTATE</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name>IPV4-FLOW</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name>IPV6-FLOW</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name>IPV4-L3VPN-FLOW</afi-safi-name>
                        </afi-safi>
                        <afi-safi>
                            <afi-safi-name>IPV6-L3VPN-FLOW</afi-safi-name>
                        </afi-safi>
                    </afi-safis>
                </global>
                <neighbors xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
                    <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
                        <neighbor-address>192.0.2.1</neighbor-address>
                        <config>
                            <peer-type>INTERNAL</peer-type>
                            <peer-as>64496</peer-as>
                        </config>
                        <transport>
                            <config>
                                <remote-port>179</remote-port>
                                <passive-mode>true</passive-mode>
                            </config>
                        </transport>
                        <timers>
                            <config>
                                <hold-time>180</hold-time>
                                <connect-retry>10</connect-retry>
                            </config>
                        </timers>
                        <route-reflector>
                            <config>
                                <route-reflector-client>false</route-reflector-client>
                            </config>
                        </route-reflector>
                        <afi-safis>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-UNICAST</afi-safi-name>
                                <!--Advertise N Paths
                                <receive>true</receive>
                                <send-max>0</send-max>-->
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-UNICAST</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV4-LABELLED-UNICAST</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:IPV6-LABELLED-UNICAST</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV4-UNICAST</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L3VPN-IPV6-UNICAST</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name xmlns:x="http://openconfig.net/yang/bgp-types">x:L2VPN-EVPN</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name>LINKSTATE</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name>IPV4-FLOW</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name>IPV6-FLOW</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name>IPV4-L3VPN-FLOW</afi-safi-name>
                            </afi-safi>
                            <afi-safi>
                                <afi-safi-name>IPV6-L3VPN-FLOW</afi-safi-name>
                            </afi-safi>
                        </afi-safis>
                    </neighbor>
                    <neighbor xmlns="urn:opendaylight:params:xml:ns:yang:bgp:openconfig-extensions">
                        <neighbor-address>192.0.2.6</neighbor-address>
                        <config>
                            <peer-group>application-peers</peer-group>
                        </config>
                    </neighbor>
                </neighbors>
            </bgp>
        </protocol>
    </protocols>

BGP Configuration Example
'''''''''''''''''''''''''

BGP provides a feature providing a BGP Protocol and Network Topology configuration file example.
Once feature is installed defined configuration will be loaded and setup.

.. code-block:: console

   feature:install odl-bgpcep-bgp-config-example
