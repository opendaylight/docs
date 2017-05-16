=====
IoTDM
=====

Major Features
==============

odl-onem2m-core
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=iotdm.git;a=blob_plain;f=onem2m/onem2m-features/features-onem2m/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** This feature implements CSE services described in OneM2M specifications and provides some
APIs simplifying development and usage of new plugins. These APIs and related services are considered as IoTDM's plugin
infrastructure.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/iotdm/job/iotdm-csit-1node-basic-all-carbon/

odl-onem2m-http
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=iotdm.git;a=blob_plain;f=onem2m/onem2m-features/features-onem2m/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** Implements communication over HTTP and HTTPS according to OneM2M specifications.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/iotdm/job/iotdm-csit-1node-basic-all-carbon/

odl-onem2m-coap
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=iotdm.git;a=blob_plain;f=onem2m/onem2m-features/features-onem2m/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** Implements communication over CoAP and CoAPS according to OneM2M specifications.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/iotdm/job/iotdm-csit-1node-basic-all-carbon/

odl-onem2m-mqtt
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=iotdm.git;a=blob_plain;f=onem2m/onem2m-features/features-onem2m/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** Implements communication over MQTT according to OneM2M specifications.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/iotdm/job/iotdm-csit-1node-basic-all-carbon/

odl-onem2m-websocket
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=iotdm.git;a=blob_plain;f=onem2m/onem2m-features/features-onem2m/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** Implements communication over websocket according to OneM2M specifications.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** https://jenkins.opendaylight.org/releng/view/iotdm/job/iotdm-csit-1node-basic-all-carbon/

odl-iotdmbundleloader
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=iotdm.git;a=blob_plain;f=onem2mplugins/iotdmbundleloader/features/features-iotdmbundleloader/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** Provides REST API to dynamically install/uninstall/reinstall new OSGI bundles to Karaf.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

odl-iotdmkaraffeatureloader
------------

* **Feature URL:** https://git.opendaylight.org/gerrit/gitweb?p=iotdm.git;a=blob_plain;f=onem2mplugins/iotdmkaraffeatureloader/features/features-iotdmkaraffeatureloader/src/main/features/features.xml;hb=refs/heads/stable/carbon
* **Feature Description:** Provides REST API to dynamically install/uninstall/reinstall new Karaf features from Karaf archive file.
* **Top Level:** Yes
* **User Facing:** Yes
* **Experimental:** Yes
* **CSIT Test:** N/A

Documentation
=============

There is some outdated documentation at our wiki page: https://wiki.opendaylight.org/view/IoTDM:Main
Some more actual developers documentation can be found in source code as *.md files.

Security Considerations
=======================

Since this project implements OneM2M specifications including protocol bindings it is also opening multiple ports
for plugins providing mapping between protocol specific representation of data to the common format used by
onem2m-core. Port numbers opened by IoTDM depends on configuration of these plugins and also depends on number of
instances of the plugins.
There are some default server port numbers pre-configured for OneM2M related plugins,
e.g.: HTTP: 8282, CoAP: 5683, Websocket: 8888
HTTPS and CoAPS communication can be used instead of unsecured versions but it must be configured properly.
There are implemented also other experimental plugins opening some TCP or UDP ports.

Quality Assurance
=================

* `Link to Sonar Report https://sonar.opendaylight.org/overview?id=org.opendaylight.iotdm%3Aiotdm-aggregator`_ (0.6 %)
* `Link to CSIT Jobs https://jenkins.opendaylight.org/releng/view/iotdm/job/iotdm-csit-1node-basic-all-carbon/`_
* Other manual testing and QA information
HTTP communication tested manually by Postman collections and other communication (MQTT, CoAP, Websocket) tested
occasionally using some opensource tools.
We are using code coverage achieved by our CSIT test suites as QA metrics what is currently 35 %.

* Testing methodology. How extensive was it? What should be expected to work? What hasn't been tested as much?
We have defined CSIT test suites including list of test cases without implementation including description only.
These tests are marked as "excluded" so they are not executed by CSIT jobs.
There are described 736 tests and 278 of them are implemented. These tests are testing HTTP communication only.
Other communication protocols are not being tested by CSIT jobs now.

Migration
---------

* Is is possible migrate from the previous release? If so, how?
No, current release is backward incompatible.

Compatibility
------------

* Is this release compatible with the previous release?
* Any API changes?
* Any configuration changes?
No, all APIs are new or have been modified.

Bugs Fixed
----------

* List of bugs fixed since the previous release
Only bugs related to current release have been fixed.

Known Issues
------------

* List key known issues with workarounds
* `Link to Open Bugs <N/A>`_

End-of-life
===========

* List of features/APIs which are EOLed, deprecated, and/or removed in this release

Standards
=========

* List of standards implemented and to what extent
Subset of functionality described in OneM2M specifications: http://onem2m.org/technical/published-documents
TS 0001, version 2.10.0
TS 0004, version 2.7.1
TS 0008, version 1.3.2
TS 0009, version 2.6.1
TS 0010, version 2.4.1
TS 0020, version 2.1.0

Release Mechanics
=================

* `Link to release plan`_ https://wiki.opendaylight.org/view/Iotdm:_Carbon_Release_Plan
* Describe any major shifts in release schedule from the release plan
