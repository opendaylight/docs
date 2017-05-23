.. _opflex-agent-ovs-dev-guide:

OpFlex agent-ovs Developer Guide
================================

Overview
--------

agent-ovs is a policy agent that works with OVS to enforce a group-based
policy networking model with locally attached virtual machines or
containers. The policy agent is designed to work well with orchestration
tools like OpenStack.

agent-ovs Architecture
----------------------

agent-ovs uses libopflex to communicate with an OpFlex-based policy
repository to enforce policy on network endpoints attached to OVS by an
orchestration system.

The key components are:

-  Agent - coordinates startup and configuration

-  Renderers - Renderers are responsible for rendering policy. This is a
   very general mechanism but the currently-implemented renderer is the
   stitched-mode renderer that can work along with with hardware fabrics
   such as ACI that support policy enforcement.

-  EndpointManager - Keep track of network endpoints and declare them to
   the endpoint repository

-  PolicyManager - Keep track of and index policies

-  IntFlowManager - render policies to OVS integration bridge

-  AccessFlowManager - render policies to OVS access bridge

API Reference Documentation
---------------------------

Internal API documentation can be found by in doc/html/index.html in
any build.
