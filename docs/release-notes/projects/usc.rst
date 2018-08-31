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
* USC UI is responsible for displaying a graphical user interface representing
  the state of USC in the OpenDaylight DLUX UI.

USC Channel UI
--------------

* **Feature Name:** odl-usc-channel-ui
* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=usc.git;a=blob;f=usc-features/src/main/features/features.xml;
* **Feature Description:**  Responsible for communication between the controller
  and the USC agent . It responds to call-home with the controller, maintains
  live connections with the devices, acts as muxer/demuxer for packets with the
  USC header, and provides support for TLS/DTLS.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** No
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/usc/

Documentation
=============

Please provide the URL to each document at docs.opendaylight.org. If the
document is under review, provide a link to the change in Gerrit.

* **User Guide(s):**

  * `USC User Guide <http://docs.opendaylight.org/en/latest/user-guide/unified-secure-channel.html>`_

* **Developer Guide(s):**

  * `USC Developer Guide <http://docs.opendaylight.org/en/latest/developer-guide/unified-secure-channel.html>`_

Security Considerations
=======================

* USC uses TLS and DTLS to secure the channels. Asymmetric authentication
  handshake when establishing the channels. Mutual authentication achieved with
  certificates configured in usc.properties for both the controller and the
  device.

Quality Assurance
=================

* `Link to Sonar Report <https://sonar.opendaylight.org/overview?id=44336>`_
* `Link to CSIT Jobs <https://jenkins.opendaylight.org/releng/view/usc/>`_
* `Link to Additional Details <https://wiki.opendaylight.org/view/USC:Integration_Test>`_
* Code is covered by unit and integration tests
* System Tests are performed by CSIT jobs using java test agent.


Migration
---------

* Nothing beyond general Carbon migration requirements.

Compatiblity
------------

* Nothing beyond general Carbon compatibility constraints.

Bugs Fixed
----------

* `Bug Report <https://bugs.opendaylight.org/buglist.cgi?bug_status=UNCONFIRMED&bug_status=CONFIRMED&bug_status=IN_PROGRESS&bug_status=WAITING_FOR_REVIEW&bug_status=VERIFIED&list_id=47710&product=usc&query_format=advanced&resolution=--->`_

Known Issues
------------

* `3402 <https://bugs.opendaylight.org/show_bug.cgi?id=4558>`_ USC features has configuration issues with 3-node cluster environment.

End-of-life
===========

* Nothing deprecated, EOL.

Standards
=========

* N/A

Release Mechanics
=================

* Project was on schedule
