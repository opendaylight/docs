Infrautils
==========

Overview
--------

Infrautils offer various utilities and infrastructures for other projects to use:

Counters Infrastructure
-----------------------
Create, update and output counters is a basic tool for debugging and generating statistics in any system.
We have developed a counter infrastructure integrated into ODL which has already been successfully used with
multiple products, and more recently in debugging and fixing the OpenFlow plugin/Java and LACP modules.
`Getting started with Counters  <https://wiki.opendaylight.org/view/Getting_started_with_Counters>`__

Async Infrastructure
-----------------------
The decision to split a service into one or more threads with asynchronous interactions between them is
frequently dependent on constraints learned late in the development and even the deployment cycle.
In order to allow flexibility in making these decisions we have developed an infrastructure which is
configuration driven allowing agnostic code to be written under generic constrains which can then later
be customized according to the required constraints.
`Getting started with Async  <https://git.opendaylight.org/gerrit/gitweb?p=infrautils.git;a=tree;f=samples/sample-async;h=dedd664da4a1bcfbe62261df73d19044d334f0b9;hb=refs/heads/master>`__

