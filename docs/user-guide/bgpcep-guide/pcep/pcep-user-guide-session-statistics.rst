.. _pcep-user-guide-session-statistics:

Session statistics
==================
The PCEP statistics provides information about PCE <-> PCC session and its stateful listener (topology-provider).

Usage
'''''

**URL:** ``/restconf/operational/network-topology:network-topology/topology/pcep-topology/node/pcc:%2F%2F43.43.43.43/pcep-session-state``

**Method:** ``GET``

**Response Body:**

.. code-block:: xml
   :linenos:
   :emphasize-lines: 3,4,5,6,7,8,9,10,13,14,15,16,19,20,21,22,25,26,27,28,31,32,33,35,36,37

   <pcep-session-state xmlns="urn:opendaylight:params:xml:ns:yang:topology:pcep:stats">
      <messages>
         <last-received-rpt-msg-timestamp xmlns="urn:opendaylight:params:xml:ns:yang:pcep:stateful:stats">1512640592</last-received-rpt-msg-timestamp>
         <sent-upd-msg-count xmlns="urn:opendaylight:params:xml:ns:yang:pcep:stateful:stats">0</sent-upd-msg-count>
         <received-rpt-msg-count xmlns="urn:opendaylight:params:xml:ns:yang:pcep:stateful:stats">2</received-rpt-msg-count>
         <sent-init-msg-count xmlns="urn:opendaylight:params:xml:ns:yang:pcep:stateful:stats">0</sent-init-msg-count>
         <sent-msg-count>0</sent-msg-count>
         <last-sent-msg-timestamp>0</last-sent-msg-timestamp>
         <unknown-msg-received>0</unknown-msg-received>
         <received-msg-count>2</received-msg-count>
         <error-messages>
            <last-sent-error></last-sent-error>
            <received-error-msg-count>0</received-error-msg-count>
            <sent-error-msg-count>0</sent-error-msg-count>
            <last-received-error></last-received-error>
         </error-messages>
         <reply-time>
            <average-time>0</average-time>
            <min-time>0</min-time>
            <max-time>0</max-time>
         </reply-time>
      </messages>
      <peer-pref>
         <keepalive>30</keepalive>
         <deadtimer>120</deadtimer>
         <ip-address>127.0.0.1</ip-address>
         <session-id>0</session-id>
      </peer-pref>
      <local-pref>
         <keepalive>30</keepalive>
         <deadtimer>120</deadtimer>
         <ip-address>127.0.0.1</ip-address>
         <session-id>0</session-id>
      </local-pref>
      <peer-capabilities>
         <stateful xmlns="urn:opendaylight:params:xml:ns:yang:pcep:stateful:stats">true</stateful>
         <instantiation xmlns="urn:opendaylight:params:xml:ns:yang:pcep:stateful:stats">true</instantiation>
         <active xmlns="urn:opendaylight:params:xml:ns:yang:pcep:stateful:stats">true</active>
      </peer-capabilities>
      <session-duration>0:00:00:18</session-duration>
      <delegated-lsps-count>1</delegated-lsps-count>
      <synchronized>true</synchronized>
   </pcep-session-state>

@line 3: **last-received-rpt-msg-timestamp** - The timestamp of last received PCRpt message.

@line 4: **sent-upd-msg-count** - The number of sent PCUpd messages.

@line 5: **received-rpt-msg-count** - The number of received PcRpt messages.

@line 6: **sent-init-msg-count** - The number of sent PCInitiate messages.

@line 7: **sent-msg-count** - Total number of sent PCEP messages.

@line 8: **last-sent-msg-timestamp** - The timestamp of last sent message.

@line 9: **unknown-msg-received** - The number of received unknown messages.

@line 10: **received-msg-count** - Total number of received PCEP messages.

@line 13: **last-sent-error** - Type/value tuple of last sent error.

@line 14: **received-error-msg-count** - Total number of received PCErr messages.

@line 15: **sent-error-msg-count** - Total number of sent PCErr messages.

@line 16: **last-received-error** - Type/value tuple of last sent error.

@line 19: **keepalive** - Advertised keep-alive value.

@line 20: **deadtimer** - Advertised deadtimer value.

@line 21: **ip-address** - Peer's IP address.

@line 22: **session-id** - Peer's session identifier.

@line 25: **keepalive** - Advertised keep-alive value.

@line 26: **deadtimer** - Advertised deadtimer value.

@line 27: **ip-address** - Peer's IP address.

@line 28: **session-id** - Peer's session identifier.

@line 31: **stateful** - Represents peer's stateful/stateless capability.

@line 32: **instantiation** - Represents peer's instantiation capability.

@line 33: **active** - Represents peer's LSP update capability.

@line 35: **session-duration** - Elapsed time (in d:H:m:s) from session-up until last statistic update.

@line 36: **delegated-lsps-count** - The number of delegated LSPs (tunnels) from PCC.

@line 37: **synchronized** - Represents synchronization status.
