Name
----

OpenFlow L3 extensions

Repo Name
---------

l3extensions

Description
-----------

Cisco specific extensions for openflow protocol introduced by this
project :

Current Extensions

#. define CISCO_VENDOR_ID 0x0000000C

Action Extensions

All 3 action extensions are only supported on the asr9k. enum
cof_action_subtype {

| ``   COF_AT_NONE,``
| ``   COF_AT_OUTPUT_NH,           /* struct cof_action_output_nh */``
| ``   COF_AT_NETFLOW,      /* struct cof_action_netflow */``
| ``   COF_AT_FCID,         /* struct cof_action_fcid */``

}; struct cof_action_header {

| ``   ovs_be16 type;              /* OFPAT_VENDOR */``
| ``   ovs_be16 len;               /* Length is  */``
| ``   ovs_be32 vendor;            /* CISCO_VENDOR_ID */``
| ``   ovs_be16 subtype;           /* COF_AT_XXX */``
| ``   uint8_t pad[6];``

}; set nexthop

only ipv4 and ipv6 nexthop address types are currently supported

only addrextra none is supported (vrf will be support via separate vrf
extension) enum cof_nh_addrtype {

| ``   COF_NH_ADDRTYPE_NONE,       /* illegal */``
| ``   COF_NH_ADDRTYPE_P2P,        /* no address, use with COF_NH_ADDREXTRA_PORT */``
| ``   COF_NH_ADDRTYPE_IPV4,       /* ipv4 address */``
| ``   COF_NH_ADDRTYPE_IPV6,       /* ipv6 address */``
| ``   COF_NH_ADDRTYPE_MAC48,      /* 48bit mac address */``

};

enum cof_nh_addrextra {

| ``   COF_NH_ADDREXTRA_NONE,      /* address only */``
| ``   COF_NH_ADDREXTRA_PORT,      /* address and port */``

};

struct cof_action_output_nh {

| ``   ovs_be16 type;              /* OFPAT_VENDOR */``
| ``   ovs_be16 len;               /* 16 (p2p), 24 (ipv4), 32 (mac48), 40 (ipv6)*/``
| ``   ovs_be32 vendor;            /* CISCO_VENDOR_ID */``
| ``   ovs_be16 subtype;           /* COF_AT_OUTPUT_NH */``
| ``   uint8_t addrtype;           /* COF_NH_ADDRTYPE_XXX */``
| ``   uint8_t addrextratype;      /* COF_NH_ADDREXTRA_XXX */``
| ``   union {``
| ``       ovs_be32 port;``
| ``       uint8_t pad[8];``
| ``   } addrextra;``
| ``   union {``
| ``       ovs_be32 ipv4;``
| ``       uint8_t  ipv6[16];``
| ``       uint8_t  mac48[6];``
| ``   } addr;``
| ``   uint8_t pad[4];``

}; set fcid struct cof_action_fcid {

| ``   ovs_be16 type;              /* OFPAT_VENDOR */``
| ``   ovs_be16 len;               /* Length is 0 */``
| ``   ovs_be32 vendor;            /* CISCO_VENDOR_ID */``
| ``   ovs_be16 subtype;           /* COF_AT_SET_FORWARD_CLASS */``
| ``   uint8_t  fcid;              /* TUNNEL_POLICY_CLASS_MAX = 7 */``
| ``   uint8_t  pad[5];``

}; netlow struct cof_action_netflow {

| ``   ovs_be16 type;              /* OFPAT_VENDOR */``
| ``   ovs_be16 len;               /* len = 0 */``
| ``   ovs_be32 vendor;            /* CISCO_VENDOR_ID */``
| ``   ovs_be16 subtype;           /* COF_AT_NETFLOW */``
| ``   uint8_t pad[6];``

}; New Proposals Matches Actions enum cof_action_subtype {

| ``   COF_AT_NONE,``
| ``   COF_AT_OUTPUT_NH,    /* struct cof_action_output_nh */``
| ``   COF_AT_NETFLOW,      /* struct cof_action_netflow */``
| ``   COF_AT_FCID,         /* struct cof_action_fcid */``
| ``   COF_AT_VRF,          /* struct cof_action_vrf */``
| ``   COF_AT_MPLS_LSP,     /* struct cof_action_mpls_lsp */``

}; set vrf enum cof_vrftype {

| ``   COF_VRFTYPE_NONE,  /* illegal value */``
| ``   COF_VRFTYPE_VPNID, /* vpn-id (rfc 2685) */``
| ``   COF_VRFTYPE_NAME,  /* vrf namestring */``

};

#. define COF_VRF_NAME_MAXLEN 32

struct cof_action_vrf {

| ``   ovs_be16 type;              /* OFPAT_VENDOR */``
| ``   ovs_be16 len;               /* 24 (vpn_id), 48 (vrf_name) */``
| ``   ovs_be32 vendor;            /* CISCO_VENDOR_ID */``
| ``   ovs_be16 subtype;           /* COF_AT_VRF */``
| ``   uint8_t  vrftype;           /* COF_VRFTYPE_XXX */``
| ``   union {``
| ``       uint8_t vpn_id[7];``
| ``       uint8_t vrf_name[COF_VRF_NAME_MAXLEN];``
| ``   } vrfextra;``
| ``   uint8_t pad[5];``

}; select mpls lsp truct cof_action_mpls_lsp {

| ``   ovs_be16 type;              /* OFPAT_VENDOR */``
| ``   ovs_be16 len;               /* 10 + namesize */``
| ``   ovs_be32 vendor;            /* CISCO_VENDOR_ID */``
| ``   ovs_be16 subtype;           /* COF_AT_MPLS_LSP */``
| ``   uint8_t name[0];``

}; openflow message extensions - needs some work label packet enum
cof_pkt_labels {

| ``   COF_PKT_LABEL_TIMESTAMP = 1<<0, /* timestamp packet */``
| ``   COF_PKT_LABEL_INPORT   = 1<<1, /* add inport to packet */``

};

struct cof_action_label_pkt {

| ``   ovs_be16 type;              /* OFPAT_VENDOR */``
| ``   ovs_be16 len;               /* 10 + namesize */``
| ``   ovs_be32 vendor;            /* CISCO_VENDOR_ID */``
| ``   ovs_be16 subtype;           /* COF_AT_LABEL_PKT */``
| ``   ovs_be16 label_bitmask;   /* cof_pkt_labels */``

}; truncate packet struct cof_action_truncate {

| ``   ovs_be16 type;              /* OFPAT_VENDOR */``
| ``   ovs_be16 len;               /* 12 */``
| ``   ovs_be32 vendor;            /* CISCO_VENDOR_ID */``
| ``   ovs_be16 subtype;           /* COF_AT_TRUNCATE */ ``
| ``   ovs_be16 truncate_size; /* size to limit packet to */``

};

Scope
-----

This project delivers Cisco specific extensions to openflow protocol
used by ODL. It is built as standalone bundle for ODL Karaf that
provides extensions to types and actions of openflow protocol based on
Cisco Openflow SDN agent proposal. Review of existing implementation
will be needed in scope of latest changes in Openflow Plugin project.

Resources Committed (developers committed to working)
-----------------------------------------------------

Who is, or will be working on this effort?

Initial Committers
------------------

Who would be the initial committers to the project? Please include each
committer's First and Last Name, OpenDaylight Gerrit-ID, and Email
Address

Vendor Neutral
--------------

If this proposal is coming from an existing proprietary codebase, have
you ensured that all proprietary trademarks, logos, product names, etc.
have been removed? Please specify.

Meets Board Policy (including IPR)
----------------------------------
