======================
Unified Secure Channel
======================

Major Features
==============

* USC Agent provides proxy and agent functionality on top of all standard
  protocols supported by the device. It initiates call-home with the controller,
  maintains live connections with with the controller, acts as a demuxer/muxer
  for packets with the USC header, and authenticates the controller.
* USC Plugin is responsible for communication between the controller and the USC
  agent . It responds to call-home with the controller, maintains live
  connections with the devices, acts as a muxer/demuxer for packets with the USC
  header, and provides support for TLS/DTLS.
* USC Manager handles configurations, high availability, security, monitoring,
  and clustering support for USC.

USC Channel UI
--------------

* **Feature Name:** odl-usc-channel-ui
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=usc.git;a=blob;f=usc-features/odl-usc-channel-ui/pom.xml;
* **Feature Description:**  Responsible for communication between the controller
  and the USC agent . It responds to call-home with the controller, maintains
  live connections with the devices, acts as muxer/demuxer for packets with the
  USC header, and provides support for TLS/DTLS.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/usc

Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If the
document is under review, provide a link to the change in Gerrit.

* **User Guide(s):**

  * :ref:`usc-user-guide`

* **Developer Guide(s):**

  * :ref:`usc-dev-guide`

Security Considerations
=======================

* USC uses TLS and DTLS to secure the channels. Asymmetric authentication
  handshake when establishing the channels. Mutual authentication achieved with
  certificates configured in usc.properties for both the controller and the
  device.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=44336>`_
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/usc>`_
* `Link to Additional Details <https://wiki.opendaylight.org/view/USC:Integration_Test>`_
* Code is covered by unit and integration tests
* System Tests are performed by CSIT jobs using java test agent.


Migration
---------

* Nothing beyond general OpenDaylight migration requirements.

Compatibility
-------------

* Nothing beyond general OpenDaylight compatibility constraints.

Bugs Fixed
----------

* `USC Bugs List <https://jira.opendaylight.org/projects/USC>`_

Known Issues
------------

* `USC-12 <https://jira.opendaylight.org/browse/USC-12>`_ USC features has configuration issues with 3-node cluster environment.

End-of-life
===========

* Nothing deprecated, EOL.

Standards
=========

* N/A

Release Mechanics
=================

* `USC Release Plan <https://wiki.opendaylight.org/view/USC:Release_Plan>`_
* Project was on schedule
