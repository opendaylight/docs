OpFlex agent-ovs Install Guide
==============================

Required Packages
-----------------

You'll need to install the following packages and their dependencies:

* libuv
* openvswitch-gbp
* openvswitch-gbp-lib
* openvswitch-gbp-kmod
* libopflex
* libmodelgbp
* agent-ovs

Packages are available for Red Hat Enterprise Linux 7 and Ubuntu 14.04
LTS.  Some of the examples below are specific to RHEL7 but you can run
the equivalent commands for upstart instead of systemd.

Note that many of these steps may be performed automatically if you're
deploying this along with a larger orchestration system.

Host Networking Configuration
-----------------------------

You'll need to set up your VM host uplink interface.  You should
ensure that the MTU of the underlying network is sufficient to handle
tunneled traffic.  We will use an example of setting up *eth0* as your
uplink interface with a vlan of 4093 used for the networking control
infrastructure and tunnel data plane.

We just need to set the MTU and disable IPv4 and IPv6
autoconfiguration. The MTU needs to be large enough to allow both the
VXLAN header and VLAN tags to pass through without fragmenting for
best performance. We'll use 1600 bytes which should be sufficient
assuming you are using a default 1500 byte MTU on your virtual machine
traffic. If you already have any NetworkManager connections configured
for your uplink interface find the connection name and proceed to the
next step. Otherwise, create a connection with (be sure to update the
variable UPLINK_IFACE as needed)::

   UPLINK_IFACE=eth0
   nmcli c add type ethernet ifname $UPLINK_IFACE

Now, configure your interface as follows::

   CONNECTION_NAME="ethernet-$UPLINK_IFACE"
   nmcli connection mod "$CONNECTION_NAME" connection.autoconnect yes \
       ipv4.method link-local \
       ipv6.method ignore \
       802-3-ethernet.mtu 9000 \
       ipv4.routes '224.0.0.0/4 0.0.0.0 2000'

Then bring up the interface with::

   nmcli connection up "$CONNECTION_NAME"

Next, create the infrastructure interface using the infrastructure
VLAN (4093 by default). We'll need to create a vlan subinterface of
your uplink interface, the configure DHCP on that interface. Run the
following commands. Be sure to replace the variable values if needed. If
you're not using NIC teaming, replace the variable team0 below::

   UPLINK_IFACE=team0
   INFRA_VLAN=4093
   nmcli connection add type vlan ifname $UPLINK_IFACE.$INFRA_VLAN dev $UPLINK_IFACE id $INFRA_VLAN
   nmcli connection mod vlan-$UPLINK_IFACE.$INFRA_VLAN \
       ethernet.mtu 1600 ipv4.routes '224.0.0.0/4 0.0.0.0 1000'
   sed "s/CLIENT_ID/01:$(ip link show $UPLINK_IFACE | awk '/ether/ {print $2}')/" \
       > /etc/dhcp/dhclient-$UPLINK_IFACE.$INFRA_VLAN.conf <<EOF
   send dhcp-client-identifier CLIENT_ID;
   request subnet-mask, domain-name, domain-name-servers, host-name;
   EOF

Now bring up the new interface with::

   nmcli connection up vlan-$UPLINK_IFACE.$INFRA_VLAN

If you were successful, you should be able to see an IP address when you run::

   ip addr show dev $UPLINK_IFACE.$INFRA_VLAN

OVS Bridge Configuration
------------------------

We'll need to configure an OVS bridge which will handle the traffic
for any virtual machines or containers that are hosted on the VM
host. First, enable the openvswitch service and start it::

   # systemctl enable openvswitch
   ln -s '/usr/lib/systemd/system/openvswitch.service' '/etc/systemd/system/multi-user.target.wants/openvswitch.service'
   # systemctl start openvswitch
   # systemctl status openvswitch
   openvswitch.service - Open vSwitch
      Loaded: loaded (/usr/lib/systemd/system/openvswitch.service; enabled)
      Active: active (exited) since Fri 2014-12-12 17:20:13 PST; 3s ago
     Process: 3053 ExecStart=/bin/true (code=exited, status=0/SUCCESS)
    Main PID: 3053 (code=exited, status=0/SUCCESS)
   Dec 12 17:20:13 ovs-server.cisco.com systemd[1]: Started Open vSwitch.

Next, we can create an OVS bridge (you may wish to use a different
bridge name)::

   # ovs-vsctl add-br br0
   # ovs-vsctl show
   34aa83d7-b918-4e49-bcec-1b521acd1962
       Bridge "br0"
           Port "br0"
               Interface "br0"
                   type: internal
       ovs_version: "2.3.90"

Next, we configure a tunnel interface on our new bridge as follows::

   # ovs-vsctl add-port br0 br0_vxlan0 -- \
       set Interface br0_vxlan0 type=vxlan \
       options:remote_ip=flow options:key=flow options:dst_port=8472
   # ovs-vsctl show
   34aa83d7-b918-4e49-bcec-1b521acd1962
       Bridge "br0"
           Port "br0_vxlan0"
               Interface "br0_vxlan0"
                   type: vxlan
                   options: {dst_port="8472", key=flow, remote_ip=flow}
           Port "br0"
               Interface "br0"
                   type: internal
       ovs_version: "2.3.90"

Open vSwitch is now configured and ready.

Agent Configuration
-------------------

Before enabling the agent, we'll need to edit its configuration file,
which is located at "/etc/opflex-agent-ovs/opflex-agent-ovs.conf".

First, we'll configure the Opflex protocol parameters. If you're using
an ACI fabric, you'll need the OpFlex domain from the ACI
configuration, which is the name of the VMM domain you mapped to the
interface for this hypervisor. Set the "domain" field to this
value. Next, set the "name" field to a hostname or other unique
identifier for the VM host. Finally, set the "peers" list to contain
the fixed static anycast peer address of 10.0.0.30 and port 8009. Here
is an example of a completed section (bold text shows areas you'll
need to modify)::

   "opflex": {
       // The globally unique policy domain for this agent.
       "domain": "[CHANGE ME]",
   
       // The unique name in the policy domain for this agent.
       "name": "[CHANGE ME]",
   
       // a list of peers to connect to, by hostname and port.  One
       // peer, or an anycast pseudo-peer, is sufficient to bootstrap 
       // the connection without needing an exhaustive list of all
       // peers.
       "peers": [
           {"hostname": "10.0.0.30", "port": 8009}
       ],
   
       "ssl": {
           // SSL mode.  Possible values:
           // disabled: communicate without encryption
           // encrypted: encrypt but do not verify peers
           // secure: encrypt and verify peer certificates
           "mode": "encrypted",
   
           // The path to a directory containing trusted certificate
           // authority public certificates, or a file containing a
           // specific CA certificate.
           "ca-store": "/etc/ssl/certs/"
       }
   },

Next, configure the appropriate policy renderer for the ACI
fabric. You'll want to use a stitched-mode renderer. You'll need to
configure the bridge name and the uplink interface name. The remote
anycast IP address will need to be obtained from the ACI configuration
console, but unless the configuration is unusual, it will be
10.0.0.32::

   // Renderers enforce policy obtained via OpFlex.
   "renderers": {
       // Stitched-mode renderer for interoperating with a
       // hardware fabric such as ACI
       "stitched-mode": {
           "ovs-bridge-name": "br0",
       
           // Set encapsulation type.  Must set either vxlan or vlan.
           "encap": {
               // Encapsulate traffic with VXLAN.
               "vxlan" : {
                   // The name of the tunnel interface in OVS
                   "encap-iface": "br0_vxlan0",
       
                   // The name of the interface whose IP should be used
                   // as the source IP in encapsulated traffic.
                   "uplink-iface": "eth0.4093",
       
                   // The vlan tag, if any, used on the uplink interface.
                   // Set to zero or omit if the uplink is untagged.
                   "uplink-vlan": 4093,
   
                   // The IP address used for the destination IP in
                   // the encapsulated traffic.  This should be an
                   // anycast IP address understood by the upstream
                   // stitched-mode fabric.
                   "remote-ip": "10.0.0.32"
               }
           },
           // Configure forwarding policy
           "forwarding": {
               // Configure the virtual distributed router
               "virtual-router": {
                   // Enable virtual distributed router.  Set to true
                   // to enable or false to disable.  Default true.
                   "enabled": true,
      
                   // Override MAC address for virtual router.
                   // Default is "00:22:bd:f8:19:ff"
                   "mac": "00:22:bd:f8:19:ff",
      
                   // Configure IPv6-related settings for the virtual
                   // router
                   "ipv6" : {
                       // Send router advertisement messages in
                       // response to router solicitation requests as
                       // well as unsolicited advertisements.
                       "router-advertisement": true
                   }
               },
      
               // Configure virtual distributed DHCP server
               "virtual-dhcp": {
                   // Enable virtual distributed DHCP server.  Set to
                   // true to enable or false to disable.  Default
                   // true.
                   "enabled": true,
      
                   // Override MAC address for virtual dhcp server.
                   // Default is "00:22:bd:f8:19:ff"
                   "mac": "00:22:bd:f8:19:ff"
               }
           },
   
           // Location to store cached IDs for managing flow state
           "flowid-cache-dir": "DEFAULT_FLOWID_CACHE_DIR"
       }
   }

Finally, enable the agent service::

   # systemctl enable agent-ovs
   ln -s '/usr/lib/systemd/system/agent-ovs.service' '/etc/systemd/system/multi-user.target.wants/agent-ovs.service'
   # systemctl start agent-ovs
   # systemctl status agent-ovs
   agent-ovs.service - Opflex OVS Agent
      Loaded: loaded (/usr/lib/systemd/system/agent-ovs.service; enabled)
      Active: active (running) since Mon 2014-12-15 10:03:42 PST; 5min ago
    Main PID: 6062 (agent_ovs)
      CGroup: /system.slice/agent-ovs.service
              └─6062 /usr/bin/agent_ovs

The agent is now running and ready to enforce policy. You can add
endpoints to the local VM hosts using the OpFlex Group-based policy
plugin from OpenStack, or manually.
