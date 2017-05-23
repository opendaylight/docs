.. _opflex-agent-ovs-user-guide:

OpFlex agent-ovs User Guide
===========================

Introduction
------------

agent-ovs is a policy agent that works with OVS to enforce a group-based
policy networking model with locally attached virtual machines or
containers. The policy agent is designed to work well with orchestration
tools like OpenStack.

Agent Configuration
-------------------

The agent configuration is handled using its config file which is by
default found at "/etc/opflex-agent-ovs/opflex-agent-ovs.conf"

Here is an example configuration file that documents the available
options:

::

    {
        // Logging configuration
        // "log": {
        //     // Set the log level.
        //     // Possible values in descending order of verbosity:
        //     // "debug7"-"debug0", "debug" (synonym for "debug0"),
        //     // "info", "warning", "error", "fatal"
        //     // Default: "info"
        //     "level": "info"
        // },

        // Configuration related to the OpFlex protocol
        "opflex": {
            // The policy domain for this agent.
            "domain": "openstack",

            // The unique name in the policy domain for this agent.
            "name": "example-agent",

            // a list of peers to connect to, by hostname and port.  One
            // peer, or an anycast pseudo-peer, is sufficient to bootstrap
            // the connection without needing an exhaustive list of all
            // peers.
            "peers": [
                // EXAMPLE:
                // {"hostname": "10.0.0.30", "port": 8009}
            ],

            "ssl": {
                // SSL mode.  Possible values:
                // disabled: communicate without encryption (default)
                // encrypted: encrypt but do not verify peers
                // secure: encrypt and verify peer certificates
                "mode": "encrypted",

                // The path to a directory containing trusted certificate
                // authority public certificates, or a file containing a
                // specific CA certificate.
                // Default: "/etc/ssl/certs"
                "ca-store": "/etc/ssl/certs"
            },

            "inspector": {
                // Enable the MODB inspector service, which allows
                // inspecting the state of the managed object database.
                // Default: true
                "enabled": true,

                // Listen on the specified socket for the inspector
                // Default: "/var/run/opflex-agent-ovs-inspect.sock"
                "socket-name": "/var/run/opflex-agent-ovs-inspect.sock"
            },

            "notif": {
                // Enable the agent notification service, which sends
                // notifications to interested listeners over a UNIX
                // socket.
                // Default: true
                "enabled": true,

                // Listen on the specified socket for the inspector
                // Default: "/var/run/opflex-agent-ovs-notif.sock"
                "socket-name": "/var/run/opflex-agent-ovs-notif.sock",

                // Set the socket owner user after binding if the user
                // exists
                // Default: do not set the owner
                // "socket-owner": "root",

                // Set the socket group after binding if the group name
                // exists
                // Default: do not set the group
                "socket-group": "opflexep",

                // Set the socket permissions after binding to the
                // specified octal permissions mask
                // Default: do not set the permissions
                "socket-permissions": "770"
            }
        },

        // Endpoint sources provide metadata about local endpoints
        "endpoint-sources": {
            // Filesystem path to monitor for endpoint information
            // Default: no endpoint sources
            "filesystem": ["/var/lib/opflex-agent-ovs/endpoints"]
        },

        // Service sources provide metadata about services that can
        // provide functionality for local endpoints
        "service-sources": {
            // Filesystem path to monitor for service information
            // Default: no service sources
            "filesystem": ["/var/lib/opflex-agent-ovs/services"]
        },

        // Renderers enforce policy obtained via OpFlex.
        // Default: no renderers
        "renderers": {
            // Stitched-mode renderer for interoperating with a
            // hardware fabric such as ACI
            // EXAMPLE:
            "stitched-mode": {
                // "Integration" bridge used to enforce contracts and forward
                // packets
                "int-bridge-name": "br-int",

                // "Access" bridge used to enforce access control and enforce
                // security groups.
                "access-bridge-name": "br-access",

                // Set encapsulation type.  Must set either vxlan or vlan.
                "encap": {
                    // Encapsulate traffic with VXLAN.
                    "vxlan" : {
                        // The name of the tunnel interface in OVS
                        "encap-iface": "br0_vxlan0",

                        // The name of the interface whose IP should be used
                        // as the source IP in encapsulated traffic.
                        "uplink-iface": "team0.4093",

                        // The vlan tag, if any, used on the uplink interface.
                        // Set to zero or omit if the uplink is untagged.
                        "uplink-vlan": 4093,

                        // The IP address used for the destination IP in
                        // the encapsulated traffic.  This should be an
                        // anycast IP address understood by the upstream
                        // stiched-mode fabric.
                        "remote-ip": "10.0.0.32",

                        // UDP port number of the encapsulated traffic.
                        "remote-port": 8472
                    }

                    // Encapsulate traffic with a locally-significant VLAN
                    // tag
                    // EXAMPLE:
                    // "vlan" : {
                    //     // The name of the uplink interface in OVS
                    //     "encap-iface": "team0"
                    // }
                },

                // Configure forwarding policy
                "forwarding": {
                    // Configure the virtual distributed router
                    "virtual-router": {
                        // Enable virtual distributed router.  Set to true
                        // to enable or false to disable.
                        // Default: true.
                        "enabled": true,

                        // Override MAC address for virtual router.
                        // Default: "00:22:bd:f8:19:ff"
                        "mac": "00:22:bd:f8:19:ff",

                        // Configure IPv6-related settings for the virtual
                        // router
                        "ipv6" : {
                            // Send router advertisement messages in
                            // response to router solicitation requests as
                            // well as unsolicited advertisements.  This
                            // is not required in stitched mode since the
                            // hardware router will send them.
                            "router-advertisement": false
                        }
                    },

                    // Configure virtual distributed DHCP server
                    "virtual-dhcp": {
                        // Enable virtual distributed DHCP server.  Set to
                        // true to enable or false to disable.
                        // Default: true
                        "enabled": true,

                        // Override MAC address for virtual dhcp server.
                        // Default: "00:22:bd:f8:19:ff"
                        "mac": "00:22:bd:f8:19:ff"
                    },

                    "endpoint-advertisements": {
                        // Set mode for generation of periodic ARP/NDP
                        // advertisements for endpoints.  Possible values:
                        // disabled: Do not send advertisements
                        // gratuitous-unicast: Send gratuitous endpoint
                        //   advertisements as unicast packets to the router
                        //   mac.
                        // gratuitous-broadcast: Send gratuitous endpoint
                        //   advertisements as broadcast packets.
                        // router-request: Unicast a spoofed request/solicitation
                        //   for the subnet's gateway router.
                        // Default: router-request.
                        "mode": "gratuitous-broadcast"
                    }
                },

                // Location to store cached IDs for managing flow state
                // Default: "/var/lib/opflex-agent-ovs/ids"
                "flowid-cache-dir": "/var/lib/opflex-agent-ovs/ids",

                // Location to write multicast groups for the mcast-daemon
                // Default: "/var/lib/opflex-agent-ovs/mcast/opflex-groups.json"
                "mcast-group-file": "/var/lib/opflex-agent-ovs/mcast/opflex-groups.json"
            }
        }
    }

Endpoint Registration
---------------------

The agent learns about endpoints using endpoint metadata files located
by default in "/var/lib/opflex-agent-ovs/endpoints".

These are JSON-format files such as the (unusually complex) example
below:

::

    {
        "uuid": "83f18f0b-80f7-46e2-b06c-4d9487b0c754",
        "policy-space-name": "test",
        "endpoint-group-name": "group1",
        "interface-name": "veth0",
        "ip": [
            "10.0.0.1", "fd8f:69d8:c12c:ca62::1"
        ],
        "dhcp4": {
            "ip": "10.200.44.2",
            "prefix-len": 24,
            "routers": ["10.200.44.1"],
            "dns-servers": ["8.8.8.8", "8.8.4.4"],
            "domain": "example.com",
            "static-routes": [
                {
                    "dest": "169.254.169.0",
                    "dest-prefix": 24,
                    "next-hop": "10.0.0.1"
                }
            ]
        },
        "dhcp6": {
            "dns-servers": ["2001:4860:4860::8888", "2001:4860:4860::8844"],
            "search-list": ["test1.example.com", "example.com"]
        },
        "ip-address-mapping": [
            {
               "uuid": "91c5b217-d244-432c-922d-533c6c036ab4",
               "floating-ip": "5.5.5.1",
               "mapped-ip": "10.0.0.1",
               "policy-space-name": "common",
               "endpoint-group-name": "nat-epg"
            },
            {
               "uuid": "22bfdc01-a390-4b6f-9b10-624d4ccb957b",
               "floating-ip": "fdf1:9f86:d1af:6cc9::1",
               "mapped-ip": "fd8f:69d8:c12c:ca62::1",
               "policy-space-name": "common",
               "endpoint-group-name": "nat-epg"
            }
        ],
        "mac": "00:00:00:00:00:01",
        "promiscuous-mode": false
    }

The possible parameters for these files are:

**uuid**
    A globally unique ID for the endpoint

**endpoint-group-name**
    The name of the endpoint group for the endpoint

**policy-space-name**
    The name of the policy space for the endpoint group.

**interface-name**
    The name of the OVS interface to which the endpoint is attached

**ip**
    A list of strings contains either IPv4 or IPv6 addresses that the
    endpoint is allowed to use

**mac**
    The MAC address for the endpoint’s interface.

**promiscuous-mode**
    Allow traffic from this VM to bypass default port security

**dhcp4**
    A distributed DHCPv4 configuration block (see below)

**dhcp6**
    A distributed DHCPv6 configuration block (see below)

**ip-address-mapping**
    A list of IP address mapping configuration blocks (see below)

DHCPv4 configuration blocks can contain the following parameters:

**ip**
    the IP address to return with DHCP. Must be one of the configured
    IPv4 addresses.

**prefix**
    the subnet prefix length

**routers**
    a list of default gateways for the endpoint

**dns**
    a list of DNS server addresses

**domain**
    The domain name parameter to send in the DHCP reply

**static-routes**
    A list of static route configuration blocks, which contains a
    "dest", "dest-prefix", and "next-hop" parameters to send as static
    routes to the end host

DHCPv6 configuration blocks can contain the following parameters:

**dns**
    A list of DNS servers for the endpoint

**search-patch**
    The DNS search path for the endpoint

IP address mapping configuration blocks can contain the following
parameters:

**uuid**
    a globally unique ID for the virtual endpoint created by the
    mapping.

**floating-ip**
    Map using DNAT to this floating IPv4 or IPv6 address

**mapped-ip**
    the source IPv4 or IPv6 address; must be one of the IPs assigned to
    the endpoint.

**endpoint-group-name**
    The name of the endpoint group for the NATed IP

**policy-space-name**
    The name of the policy space for the NATed IP

Inspector
---------

The Opflex inspector is a useful command-line tool that will allow you
to inspect the state of the managed object database for the agent for
debugging and diagnosis purposes.

The command is called "gbp\_inspect" and takes the following arguments:

::

    # gbp_inspect -h
    Usage: gbp_inspect [options]
    Allowed options:
      -h [ --help ]                         Print this help message
      --log arg                             Log to the specified file (default
                                            standard out)
      --level arg (=warning)                Use the specified log level (default
                                            warning)
      --syslog                              Log to syslog instead of file or
                                            standard out
      --socket arg (=/usr/var/run/opflex-agent-ovs-inspect.sock)
                                            Connect to the specified UNIX domain
                                            socket (default /usr/var/run/opfl
                                            ex-agent-ovs-inspect.sock)
      -q [ --query ] arg                    Query for a specific object with
                                            subjectname,uri or all objects of a
                                            specific type with subjectname
      -r [ --recursive ]                    Retrieve the whole subtree for each
                                            returned object
      -f [ --follow-refs ]                  Follow references in returned objects
      --load arg                            Load managed objects from the specified
                                            file into the MODB view
      -o [ --output ] arg                   Output the results to the specified
                                            file (default standard out)
      -t [ --type ] arg (=tree)             Specify the output format: tree,
                                            asciitree, list, or dump (default tree)
      -p [ --props ]                        Include object properties in output

Here are some examples of the ways to use this tool.

You can get information about the running system using one or more
queries, which consist of an object model class name and optionally the
URI of a specific object. The simplest query is to get a single object,
nonrecursively:

::

    # gbp_inspect -q DmtreeRoot
    ───⦁ DmtreeRoot,/
    # gbp_inspect -q GbpEpGroup
    ───⦁ GbpEpGroup,/PolicyUniverse/PolicySpace/test/GbpEpGroup/group1/
    ───⦁ GbpEpGroup,/PolicyUniverse/PolicySpace/common/GbpEpGroup/nat-epg/
    # gbp_inspect -q GbpEpGroup,/PolicyUniverse/PolicySpace/common/GbpEpGroup/nat-epg/
    ───⦁ GbpEpGroup,/PolicyUniverse/PolicySpace/common/GbpEpGroup/nat-epg/

You can also display all the properties for each object:

::

    # gbp_inspect -p -q GbpeL24Classifier
    ───⦁ GbpeL24Classifier,/PolicyUniverse/PolicySpace/test/GbpeL24Classifier/classifier4/
          {
            connectionTracking : 1 (reflexive)
            dFromPort          : 80
            dToPort            : 80
            etherT             : 2048 (ipv4)
            name               : classifier4
            prot               : 6
          }
    ───⦁ GbpeL24Classifier,/PolicyUniverse/PolicySpace/test/GbpeL24Classifier/classifier3/
          {
            etherT : 34525 (ipv6)
            name   : classifier3
            order  : 100
            prot   : 58
          }
    ───⦁ GbpeL24Classifier,/PolicyUniverse/PolicySpace/test/GbpeL24Classifier/classifier1/
          {
            etherT : 2054 (arp)
            name   : classifier1
            order  : 102
          }
    ───⦁ GbpeL24Classifier,/PolicyUniverse/PolicySpace/test/GbpeL24Classifier/classifier2/
          {
            etherT : 2048 (ipv4)
            name   : classifier2
            order  : 101
            prot   : 1
          }

You can also request to get the all the children of an object you query
for:

::

    # gbp_inspect -r -q GbpEpGroup,/PolicyUniverse/PolicySpace/common/GbpEpGroup/nat-epg/
    ──┬⦁ GbpEpGroup,/PolicyUniverse/PolicySpace/common/GbpEpGroup/nat-epg/
      ├──⦁ GbpeInstContext,/PolicyUniverse/PolicySpace/common/GbpEpGroup/nat-epg/GbpeInstContext/
      ╰──⦁ GbpEpGroupToNetworkRSrc,/PolicyUniverse/PolicySpace/common/GbpEpGroup/nat-epg/GbpEpGroupToNetworkRSrc/

You can also follow references found in any object downloads:

::

    # gbp_inspect -fr -q GbpEpGroup,/PolicyUniverse/PolicySpace/common/GbpEpGroup/nat-epg/
    ──┬⦁ GbpEpGroup,/PolicyUniverse/PolicySpace/common/GbpEpGroup/nat-epg/
      ├──⦁ GbpeInstContext,/PolicyUniverse/PolicySpace/common/GbpEpGroup/nat-epg/GbpeInstContext/
      ╰──⦁ GbpEpGroupToNetworkRSrc,/PolicyUniverse/PolicySpace/common/GbpEpGroup/nat-epg/GbpEpGroupToNetworkRSrc/
    ──┬⦁ GbpBridgeDomain,/PolicyUniverse/PolicySpace/common/GbpBridgeDomain/bd_ext/
      ╰──⦁ GbpBridgeDomainToNetworkRSrc,/PolicyUniverse/PolicySpace/common/GbpBridgeDomain/bd_ext/GbpBridgeDomainToNetworkRSrc/
    ──┬⦁ GbpFloodDomain,/PolicyUniverse/PolicySpace/common/GbpFloodDomain/fd_ext/
      ╰──⦁ GbpFloodDomainToNetworkRSrc,/PolicyUniverse/PolicySpace/common/GbpFloodDomain/fd_ext/GbpFloodDomainToNetworkRSrc/
    ──┬⦁ GbpRoutingDomain,/PolicyUniverse/PolicySpace/common/GbpRoutingDomain/rd_ext/
      ├──⦁ GbpRoutingDomainToIntSubnetsRSrc,/PolicyUniverse/PolicySpace/common/GbpRoutingDomain/rd_ext/GbpRoutingDomainToIntSubnetsRSrc/152/%2fPolicyUniverse%2fPolicySpace%2fcommon%2fGbpSubnets%2fsubnets_ext%2f/
      ╰──⦁ GbpForwardingBehavioralGroupToSubnetsRSrc,/PolicyUniverse/PolicySpace/common/GbpRoutingDomain/rd_ext/GbpForwardingBehavioralGroupToSubnetsRSrc/
    ──┬⦁ GbpSubnets,/PolicyUniverse/PolicySpace/common/GbpSubnets/subnets_ext/
      ├──⦁ GbpSubnet,/PolicyUniverse/PolicySpace/common/GbpSubnets/subnets_ext/GbpSubnet/subnet_ext4/
      ╰──⦁ GbpSubnet,/PolicyUniverse/PolicySpace/common/GbpSubnets/subnets_ext/GbpSubnet/subnet_ext6/
