.. _nemo-dev-guide:

NEtwork MOdeling (NEMO)
=======================

Overview
--------

The NEMO engine provides REST APIs to express intent, and manage it. With this
northbound API, user could query what intents have been handled successfully, and
what types have been predefined.

NEMO Architecture
-----------------

In NEMO project, it provides three features facing developer.

* ``odl-nemo-engine``: it is a whole model to handle intent.

* ``odl-nemo-openflow-renderer``: it is a southbound render to translate intent to flow
  table in devices supporting for OpenFlow protocol.

* ``odl-nemo-cli-render``: it is also a southbound render to translate intent into forwarding
  table in devices supporting for traditional protocol.

Key APIs and Interfaces
-----------------------

NEMO projects provide four basic REST methods for user to use.

* PUT: store the information expressed in NEMO model directly without handled by NEMO engine.

* POST: the information expressed in NEMO model will be handled by NEMO engine, and will
  be translated into southbound configuration.

* GET: obtain the data stored in data store.

* DELETE: delete the data in data store.

NEMO Intent API
~~~~~~~~~~~~~~~

NEMO provides several RPCs to handle user's intent. All RPCs use POST method.

-  ``http://{controller-ip}:8181/restconf/operations/nemo-intent:register-user``: a REST API
   to register a new user. It is the first and necessary step to express intent.

-  ``http://{controller-ip}:8181/restconf/operations/nemo-intent:transaction-begin``: a REST
   type to start a transaction. The intent exist in the transaction will be handled together.

-  ``http://{controller-ip}:8181/restconf/operations/nemo-intent:transaction-end``: a REST API
   to end a transaction. The intent exist in the transaction will be handled together.

-  ``http://{controller-ip}:8181/restconf/operations/nemo-intent:structure-style-nemo-update``: a
   REST API to create, import or update intent in a structure style, that is, user could express the
   structure of intent in json body.

-  ``http://{controller-ip}:8181/restconf/operations/nemo-intent:structure-style-nemo-delete``: a
   REST API to delete intent in a structure style.

-  ``http://{controller-ip}:8181/restconf/operations/nemo-intent:language-style-nemo-request``: a REST
   API to create, import, update and delete intent in a language style, that is, user could express
   intent with NEMO script. On the other hand, with this interface, user could query which intent have
   been handled successfully.

API Reference Documentation
---------------------------

Go to ``http://${IPADDRESS}:8181/apidoc/explorer/index.html``. User could see many useful APIs to
deploy or query intent.

