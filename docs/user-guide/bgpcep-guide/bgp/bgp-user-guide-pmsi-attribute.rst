* **P-Multicast Service Interface Tunnel (PMSI) attribute:**

  - **RSVP-TE P2MP LSP**

    .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <rsvp-te-p2mp-lsp>
              <p2mp-id>1111111111</p2mp-id>
              <tunnel-id>11111</tunnel-id>
              <extended-tunnel-id>10.10.10.10</extended-tunnel-id>
          </rsvp-te-p2mp-lsp>
      </pmsi-tunnel>

  - **mLDP P2MP LSP**

    .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <mldp-p2mp-lsp>
              <address-family xmlns:x="urn:opendaylight:params:xml:ns:yang:bgp-types">x:ipv4-address-family</address-family>
              <root-node-address>10.10.10.10</root-node-address>
              <opaque-value>
                  <opaque-type>255</opaque-type>
                  <opaque-extended-type>11111</opaque-extended-type>
                  <opaque>aa:aa:aa</opaque>
              </opaque-value>
          </mldp-p2mp-lsp>
      </pmsi-tunnel>

  - **PIM-SSM Tree**

    .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <pim-ssm-tree>
              <p-address>11.12.13.14</p-address>
              <p-multicast-group>10.10.10.10</p-multicast-group>
          </pim-ssm-tree>
      </pmsi-tunnel>

  - **PIM-SM Tree**

    .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <pim-sm-tree>
              <p-address>1.0.0.1</p-address>
              <p-multicast-group>10.10.10.10</p-multicast-group>
          </pim-sm-tree>
      </pmsi-tunnel>

  - **BIDIR-PIM Tree**

    .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <bidir-pim-tree>
              <p-address>1.0.0.1</p-address>
              <p-multicast-group>10.10.10.10</p-multicast-group>
          </bidir-pim-tree>
      </pmsi-tunnel>

  - **Ingress Replication**

    .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <ingress-replication>
              <receiving-endpoint-address>172.12.123.3</receiving-endpoint-address>
          </ingress-replication>
      </pmsi-tunnel>

  - **mLDP MP2MP LSP**

    .. code-block:: xml

      <pmsi-tunnel>
          <leaf-information-required>true</leaf-information-required>
          <mpls-label>20024</mpls-label>
          <mldp-mp2mp-lsp>
              <opaque-type>255</opaque-type>
              <opaque-extended-type>11111</opaque-extended-type>
              <opaque>aa:aa</opaque>
          </mldp-mp2mp-lsp>
      </pmsi-tunnel>
