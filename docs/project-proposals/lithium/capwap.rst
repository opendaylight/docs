.. raw:: mediawiki

   {{Project Facts (unofficial)
   |name=CAPWAP
   |createdOn=Dec 02th, 2014
   |state=Incubation
   |primaryContact=Abi Varghese abi.varghese@gmail.com, 
   |projectLead=Mahesh Govind vu3mmg@gmail.com , 
   |committers=
   *Mahesh Govind vu3mmg@gmail.com  ( ODL user name vu3mmg)
   *Tiju John   ttjohn@gmail.com (ODL user name ttjohn)
   *Abi Varghese abi.varghese@gmail.com   ( ODL user name abi)
   *Sajan Liyon   sliyon@brocade.com      ( ODL User Name sajanliyon)
   *Navin Agrawal  
   *Vaibhav Bhatnagar                      (Test Lead)
    
   |irc=freenode.net #opendaylight
   |mailingList=@lists.opendaylight.org
   |meeting=none
   |repo=<nowiki>https://git.opendaylight.org/gerrit/capwap</nowiki>
   }}

Name
----

CAPWAP interface support

Repo Name
---------

capwap

Description
-----------

As a baby step for achieving the goal of **Unified management of wired
and wireless networks using right abstractions** ,we would like to
propose the implementation of "Control And Provisioning of Wireless
Access Points (**CAPWAP**) Protocol" as one of the south bound
interface.

.. figure:: Slide2.jpg
   :alt: Slide2.jpg
   :width: 600px

   Slide2.jpg

User Stories
------------

-  As an administrator I would like to have a single application using
   which I could control provision & apply policies in my network with
   an end to end view ( '''Wireless access + Wired ''')

| ``     # As an administrator I would like to have a single application ``
| ``     using which I could  ``\ **``control``**\ ``  my network with an end to end view  ``
| ``     # As an administrator I would like to have a single application ``
| ``     using which I could   ``\ **``provision``**\ ``  my network with an end to end view  ``
| ``     # As an administrator I would like to have a single application ``
| ``     using which I could   apply ``\ **``policies``**\ ``  in my network with an end to end view  ``

-  As an administrator I would like provide service discovering
   capabilities for my access points. I would like to do this using
   CAPWAP open standard.
-  As an administrator I would like to authorize and authenticate my
   access points and allow them to join to my administrative domain. I
   would like to do this using CAPWAP open standard.
-  As an administrator I would like to configure and apply policy to the
   access points in my administrative domain . I would like to do this
   using CAPWAP open standard.
-  As an administrator I would like to get statistics and reporting from
   my access points. I would like to do this using CAPWAP open standard.

Trello Story Board
------------------

https://trello.com/b/jPO74GLb/capwap-user-stories

Standards to be supported
-------------------------

-  CAPWAP RFC ( RFC 5415) -
-  IEEE 802.11 Binding ( RFC 5416)

Scope of the project
--------------------

-  South Bound MD-SAL Plugin for CAPWAP
-  CAPWAP Protocol library ( CAPWAP RFC 5415)
-  CAPWAP 802.11 bindings" ( CAPWAP RFC 5416)
-  "Unified test Application for CAPWAP and the 802.11 bindings
-  Local Mac with local bridged- In the initial version Local Map
   Support will be provided . There will not be split mac support in the
   initial version.

-  From RFC 5415

| ``  ...........The Local MAC mode of operation allows for the data frames to be``
| ``  either locally bridged or tunneled as 802.3 frames. ...................``

| ``  .........................When Local Bridging is used, the WTP does not tunnel user``
| ``  traffic to the AC; all user traffic is locally bridged.  ..................``

Software Components
-------------------

-  Connection Handler

``     Handles UDP & DTLS connections``

-  CAPWAP Protocol Library

``    Implements CAPWAP Protocol``

-  MD-SAL CAPWAP Plugin

``    South bound ODL plugin``

-  Inventory Manager

``    Database for Access Points``

-  North Bound Sample application

``    Example application which could demonstrate  e2e network abstraction``

Message Flows
-------------

.. figure:: Slide7.jpg
   :alt: Targeted Message flow for initial release
   :width: 600px

   Targeted Message flow for initial release

.. figure:: Slide8.jpg
   :alt: Future message flow in conjunction with openflow
   :width: 600px

   Future message flow in conjunction with openflow

Presentation used for creation review
-------------------------------------

https://wiki.opendaylight.org/images/b/b6/CAPWAP2.ppt

Resources Committed (developers committed to working)
-----------------------------------------------------

Mahesh Govind vu3mmg@gmail.com

Tiju John ttjohn@gmail.com

Abi Varghese abi.varghese@gmail.com

Sajan Liyon sliyon@brocade.com ( ODL User Name sajanliyon)

Initial Committers
------------------

Mahesh Govind vu3mmg@gmail.com ( ODL user name vu3mmg)

Tiju John ttjohn@gmail.com (ODL user name ttjohn)

Abi Varghese abi.varghese@gmail.com ( ODL user name abi)

Sajan Liyon sliyon@brocade.com ( ODL User Name sajanliyon)

Vendor Neutral
--------------

If this proposal is coming from an existing proprietary codebase, have
you ensured that all proprietary trademarks, logos, product names, etc.
have been removed? Please specify.

Meets Board Policy (including IPR)
----------------------------------

Release Plan
------------

| `Release_Plan_For_CAPWAP <Release_Plan_For_CAPWAP>`__ Release plan for
  Capwap
| == Release Milestones ==

-  **Offset:** <Should be 0, 1 or 2. The dates in the table and the
   number in the column header should be adjusted to match>

+-----------------------+-----------------------+-----------------------+
| Milestone             | Offset 2 Date         | Deliverables          |
+=======================+=======================+=======================+
| M1                    | 3/24/2016             | +--------+--------+   |
|                       |                       | | Name   | Descri |   |
|                       |                       | |        | ption  |   |
|                       |                       | +========+========+   |
|                       |                       | | Releas | Candid |   |
|                       |                       | | e      | ate    |   |
|                       |                       | | Plan   | Releas |   |
|                       |                       | |        | e      |   |
|                       |                       | |        | Plan   |   |
|                       |                       | +--------+--------+   |
+-----------------------+-----------------------+-----------------------+
| M2                    | 5/5/2016              | +--------+--------+   |
|                       |                       | | Name   | Descri |   |
|                       |                       | |        | ption  |   |
|                       |                       | +========+========+   |
|                       |                       | | Releas | Final  |   |
|                       |                       | | e      | Releas |   |
|                       |                       | | Plan   | e      |   |
|                       |                       | |        | Plan   |   |
|                       |                       | +--------+--------+   |
+-----------------------+-----------------------+-----------------------+
| M3                    | 6/2/2016              | +--------+--------+   |
|                       |                       | | Name   | Descri |   |
|                       |                       | |        | ption  |   |
|                       |                       | +========+========+   |
|                       |                       | | Featur |        |   |
|                       |                       | | e      |        |   |
|                       |                       | | Freeze |        |   |
|                       |                       | +--------+--------+   |
|                       |                       | | Candid | A      |   |
|                       |                       | | ate    | runnin |   |
|                       |                       | | Stable | g      |   |
|                       |                       | | Distri | candid |   |
|                       |                       | | bution | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | stable |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | blesse |   |
|                       |                       | |        | d      |   |
|                       |                       | |        | by the |   |
|                       |                       | |        | TSC.   |   |
|                       |                       | +--------+--------+   |
|                       |                       | | Extens | A      |   |
|                       |                       | | ion    | runnin |   |
|                       |                       | | Distri | g      |   |
|                       |                       | | bution | candid |   |
|                       |                       | |        | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | extens |   |
|                       |                       | |        | ion    |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | .      |   |
|                       |                       | +--------+--------+   |
+-----------------------+-----------------------+-----------------------+
| M4                    | 6/30/2016             | +--------+--------+   |
|                       |                       | | Name   | Descri |   |
|                       |                       | |        | ption  |   |
|                       |                       | +========+========+   |
|                       |                       | | API    |        |   |
|                       |                       | | Freeze |        |   |
|                       |                       | +--------+--------+   |
|                       |                       | | Candid | A      |   |
|                       |                       | | ate    | runnin |   |
|                       |                       | | Stable | g      |   |
|                       |                       | | Distri | candid |   |
|                       |                       | | bution | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | stable |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | blesse |   |
|                       |                       | |        | d      |   |
|                       |                       | |        | by the |   |
|                       |                       | |        | TSC.   |   |
|                       |                       | +--------+--------+   |
|                       |                       | | Extens | A      |   |
|                       |                       | | ion    | runnin |   |
|                       |                       | | Distri | g      |   |
|                       |                       | | bution | candid |   |
|                       |                       | |        | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | extens |   |
|                       |                       | |        | ion    |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | .      |   |
|                       |                       | +--------+--------+   |
+-----------------------+-----------------------+-----------------------+
| M5                    | 8/4/2016              | +--------+--------+   |
|                       |                       | | Name   | Descri |   |
|                       |                       | |        | ption  |   |
|                       |                       | +========+========+   |
|                       |                       | | Code   |        |   |
|                       |                       | | Freeze |        |   |
|                       |                       | +--------+--------+   |
|                       |                       | | Candid | A      |   |
|                       |                       | | ate    | runnin |   |
|                       |                       | | Stable | g      |   |
|                       |                       | | Distri | candid |   |
|                       |                       | | bution | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | stable |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | blesse |   |
|                       |                       | |        | d      |   |
|                       |                       | |        | by the |   |
|                       |                       | |        | TSC.   |   |
|                       |                       | +--------+--------+   |
|                       |                       | | Extens | A      |   |
|                       |                       | | ion    | runnin |   |
|                       |                       | | Distri | g      |   |
|                       |                       | | bution | candid |   |
|                       |                       | |        | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | extens |   |
|                       |                       | |        | ion    |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | .      |   |
|                       |                       | +--------+--------+   |
+-----------------------+-----------------------+-----------------------+
| RC0                   | 8/11/2016             | +--------+--------+   |
|                       |                       | | Name   | Descri |   |
|                       |                       | |        | ption  |   |
|                       |                       | +========+========+   |
|                       |                       | | Candid | A      |   |
|                       |                       | | ate    | runnin |   |
|                       |                       | | Stable | g      |   |
|                       |                       | | Distri | candid |   |
|                       |                       | | bution | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | stable |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | blesse |   |
|                       |                       | |        | d      |   |
|                       |                       | |        | by the |   |
|                       |                       | |        | TSC.   |   |
|                       |                       | +--------+--------+   |
|                       |                       | | Extens | A      |   |
|                       |                       | | ion    | runnin |   |
|                       |                       | | Distri | g      |   |
|                       |                       | | bution | candid |   |
|                       |                       | |        | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | extens |   |
|                       |                       | |        | ion    |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | .      |   |
|                       |                       | +--------+--------+   |
+-----------------------+-----------------------+-----------------------+
| RC1                   | 8/18/2016             | +--------+--------+   |
|                       |                       | | Name   | Descri |   |
|                       |                       | |        | ption  |   |
|                       |                       | +========+========+   |
|                       |                       | | Candid | A      |   |
|                       |                       | | ate    | runnin |   |
|                       |                       | | Stable | g      |   |
|                       |                       | | Distri | candid |   |
|                       |                       | | bution | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | stable |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | blesse |   |
|                       |                       | |        | d      |   |
|                       |                       | |        | by the |   |
|                       |                       | |        | TSC.   |   |
|                       |                       | +--------+--------+   |
|                       |                       | | Extens | A      |   |
|                       |                       | | ion    | runnin |   |
|                       |                       | | Distri | g      |   |
|                       |                       | | bution | candid |   |
|                       |                       | |        | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | extens |   |
|                       |                       | |        | ion    |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | .      |   |
|                       |                       | +--------+--------+   |
+-----------------------+-----------------------+-----------------------+
| RC2                   | 8/25/2016             | +--------+--------+   |
|                       |                       | | Name   | Descri |   |
|                       |                       | |        | ption  |   |
|                       |                       | +========+========+   |
|                       |                       | | Releas | Releas |   |
|                       |                       | | e      | e      |   |
|                       |                       | | Review | Review |   |
|                       |                       | |        | Descri |   |
|                       |                       | |        | ption  |   |
|                       |                       | +--------+--------+   |
|                       |                       | | Candid | A      |   |
|                       |                       | | ate    | runnin |   |
|                       |                       | | Stable | g      |   |
|                       |                       | | Distri | candid |   |
|                       |                       | | bution | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | stable |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | blesse |   |
|                       |                       | |        | d      |   |
|                       |                       | |        | by the |   |
|                       |                       | |        | TSC.   |   |
|                       |                       | +--------+--------+   |
|                       |                       | | Extens | A      |   |
|                       |                       | | ion    | runnin |   |
|                       |                       | | Distri | g      |   |
|                       |                       | | bution | candid |   |
|                       |                       | |        | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | extens |   |
|                       |                       | |        | ion    |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | .      |   |
|                       |                       | +--------+--------+   |
+-----------------------+-----------------------+-----------------------+
| RC3                   | 9/1/2016              | +--------+--------+   |
|                       |                       | | Name   | Descri |   |
|                       |                       | |        | ption  |   |
|                       |                       | +========+========+   |
|                       |                       | | Releas | Releas |   |
|                       |                       | | e      | e      |   |
|                       |                       | | Review | Review |   |
|                       |                       | |        | Descri |   |
|                       |                       | |        | ption  |   |
|                       |                       | +--------+--------+   |
|                       |                       | | Candid | A      |   |
|                       |                       | | ate    | runnin |   |
|                       |                       | | Stable | g      |   |
|                       |                       | | Distri | candid |   |
|                       |                       | | bution | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | stable |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | blesse |   |
|                       |                       | |        | d      |   |
|                       |                       | |        | by the |   |
|                       |                       | |        | TSC.   |   |
|                       |                       | +--------+--------+   |
|                       |                       | | Extens | A      |   |
|                       |                       | | ion    | runnin |   |
|                       |                       | | Distri | g      |   |
|                       |                       | | bution | candid |   |
|                       |                       | |        | ate    |   |
|                       |                       | |        | of     |   |
|                       |                       | |        | what   |   |
|                       |                       | |        | is     |   |
|                       |                       | |        | attemp |   |
|                       |                       | |        | ting   |   |
|                       |                       | |        | to be  |   |
|                       |                       | |        | the    |   |
|                       |                       | |        | extens |   |
|                       |                       | |        | ion    |   |
|                       |                       | |        | distri |   |
|                       |                       | |        | bution |   |
|                       |                       | |        | .      |   |
|                       |                       | +--------+--------+   |
+-----------------------+-----------------------+-----------------------+
| Formal Release        | 9/8/2016              | +--------+--------+   |
|                       |                       | | Name   | Descri |   |
|                       |                       | |        | ption  |   |
|                       |                       | +========+========+   |
|                       |                       | | Delive | Delive |   |
|                       |                       | | rable  | rable  |   |
|                       |                       | | Name   | Descri |   |
|                       |                       | |        | ption  |   |
|                       |                       | +--------+--------+   |
+-----------------------+-----------------------+-----------------------+
