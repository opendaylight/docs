.. _daexim-user-guide:

Data Export/Import User Guide
=============================


Overview
--------

Data Export/Import is known as "daexim" (pronounced 'deck-sim') for
short. The intended audience are administrators responsible for
operations of OpenDaylight.

Data Export/Import provides an API (via RPCs) to request the bulk
transfer of OpenDaylight system data between its internal data stores
and the local file system. This can be used for scheduling data exports,
checking the status of data being exported, canceling data export jobs,
importing data from files in the file systems, and checking the import
status.

Such export and import of data can be used during system upgrade,
enabling the development of administrative procedures that make
reconfigurations of the base system without concern of internal data
loss.

Data Export produces a models declaration file and one or more data
files. The models declaration file records exactly which YANG models
were loaded (by module name, revision date and namespace). The data
file(s) contain data store data as per the draft-ietf-netmod-yang-json
RFC.

Data Import takes a models declaration file and zero or more data
files. The models declaration file is used to check that the listed
models are loaded before importing any data. Data is imported into each
data store in turn with one transaction executed for each data store,
irrespective of the number of files for that data store, as inter-module
data dependencies may exist. Existing data store data may be cleared
before importing.


Data Export Import Architecture
-------------------------------

The daexim feature is a single feature. This feature leverages the
existing infrastructure provided by MD-SAL and yangtools.


Installing the Feature
----------------------

To install the feature perform the following steps.

.. code:: bash

    karaf > feature:install odl-daexim-all


The interactions with this feature are via Restconf RPCs. The details
are provided in the `Tutorials`.


Tutorials
---------

The following tutorials provide examples of REST API that are supported
by the Data Export/Import feature.  As for all ODL RESTCONF calls, the
following are the common setting for REST calls:

* **Headers:**

  * **Content-Type:** ``application/json``

  * **Accept:** ``application/json``

  * **Authentication:** ``admin:admin``
  
* **Method:** ``HTTP POST``
* <controller-ip>: Host (or IP) where OpenDaylight controller is
  running, e.g. localhost
* <restconf-port>: TCP port where RESTCONF has been configured to
  listen, e.g. 8181 by default

The files created by export are placed in a subdirectory called
``daexim/`` in the installation directory of OpenDaylight. Similarly files
to import must be placed in this ``daexim/`` subdirectory.



Scheduling Export
^^^^^^^^^^^^^^^^^

The **schedule-export** RPC exports the data at a specific time in the
future. The ``run-at`` time may be specified as an absolute UTC time or a
relative offset from the server clock. Attempts to schedule an export in
the past times are rejected. Each file has a JSON-encoded object that
contains module data from the corresponding data store.  Module data is
not included in the object for any module identified in the exclusion
list. Each file contains at least one empty JSON object.

**URL:** ``http://<controller-ip>:<restconf-port>/restconf/operations/data-export-import:schedule-export``

**Payload:**

.. code:: json

  {
     "input": {
       "data-export-import:run-at": 500
     }
  }



Checking Export Status
^^^^^^^^^^^^^^^^^^^^^^

The **status-export** RPC checks the status of the exported data. If the
status has the value of ``initial``, an export has not been scheduled. If
the status has the value of ``scheduled``, ``run-at`` indicates the time at
which the next export runs. If the status has the value of
``in-progress``, ``run-at`` indicates the time at which the running export
was scheduled to start. A status of ``tasks`` indicates activities that
are scheduled and currently being performed. The ``tasks`` status serves
as an indicator of progress and success of the activity. If the status
has any other value, ``run-at`` indicates the time at which the last
export was scheduled to start; and ``tasks`` indicates the activities that
were undertaken. If the status for any node has failed, the
corresponding reason for failure is listed.

**URL:** ``http://<controller-ip>:<restconf-port>/restconf/operations/data-export-import:status-export``

**Payload:** No payload



Canceling Scheduled Export
^^^^^^^^^^^^^^^^^^^^^^^^^^

The **cancel-export** RPC cancels an already scheduled data export
job. To cancel the export, the server stops the tasks that are running
(where possible, immediately), clears any scheduled export time value,
and releases the associated resources. This RPC may be called at any
time, whether an export is in progress, scheduled or not yet
scheduled. The returned result is ``True`` when the server has
successfully cleared tasks, the state, and resources. The status is
``False`` on failure to do so. Note that if no export is scheduled or
running, there is no tasks for the server to clear. Therefore, the
return result is ``True`` because the server cannot fail.

**URL:** ``http://<controller-ip>:<restconf-port>/restconf/operations/data-export-import:cancel-export``

**Payload:** No payload


Importing from a file
^^^^^^^^^^^^^^^^^^^^^

The **immediate-import** RPC imports data from files already present in
the file system.

**URL:** ``http://<controller-ip>:<restconf-port>/restconf/operations/data-export-import:immediate-import``

**Payload:**

.. code:: json

  {
     "input" : {
       "check-models" : true,
       "clear-stores" : "all"
     }
  }




Status of Import
^^^^^^^^^^^^^^^^

The **status-import** RPC checks the last import status. If the status
has the value of ``initial``, an import has not taken place. For all other
values of status, ``imported-at`` indicates the time at which the
restoration has taken place. List nodes hold status about the
restoration for each node.

**URL:** ``http://<controller-ip>:<restconf-port>/restconf/operations/data-export-import:status-import``

**Payload:** No payload


Importing from a file automatically on boot
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Any files placed inside the ``daexim/boot`` subdirectory are automatically
imported on start-up.  The import performed is the exact same as the one by
explicit **immediate-import** RPC, which imports from files ``daexim/``, except
it happens automatically.

The import on boot happens after all other ODL OSGi bundles have successfully
started.  The INFO log and **status import** automatically reflect when the boot
import is planned (via ``boot-import-scheduled``), when the boot import is
ongoing (via ``boot-import-in-progress``), and when the boot import fails
(via ``boot-import-failed``).

Upon completion or failure of this boot import, the files inside the
``daexim/boot`` directory are renamed to ``.imported`` in order to avoid
another import on the next start.
