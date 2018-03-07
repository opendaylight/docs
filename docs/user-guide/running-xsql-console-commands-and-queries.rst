Running XSQL Console Commands and Queries
=========================================

.. note:: The XSQL component packaged in odl-mdsal-xsql has been deprecated and
          will be removed in the next release.

XSQL Overview
-------------

XSQL is an XML-based query language that describes simple stored
procedures which parse XML data, query or update database tables, and
compose XML output. XSQL allows you to query tree models like a
sequential database. For example, you could run a query that lists all
of the ports configured on a particular module and their attributes.

The following sections cover the XSQL installation process, supported
XSQL commands, and the way to structure queries.

Installing XSQL
---------------

To run commands from the XSQL console, you must first install XSQL on
your system:

1. Navigate to the directory in which you unzipped OpenDaylight

2. Start Karaf:

   ::

       ./bin/karaf

3. Install XSQL:

   ::

       feature:install odl-mdsal-xsql

XSQL Console Commands
---------------------

To enter a command in the XSQL console, structure the command as
follows: **odl:xsql** *<XSQL command>*

The following table describes the commands supported in this
OpenDaylight release.

+-----------------------+----------------------------------------------------+
| **Command**           | **Description**                                    |
+-----------------------+----------------------------------------------------+
| **r**                 | Repeats the last command you executed.             |
+-----------------------+----------------------------------------------------+
| **list vtables**      | Lists the schema node containers that are          |
|                       | currently installed. Whenever an OpenDaylight      |
|                       | module is installed, its YANG model is placed in   |
|                       | the schema context. At that point, the XSQL        |
|                       | receives a notification, confirms that the         |
|                       | module’s YANG model resides in the schema context  |
|                       | and then maps the model to XSQL by setting up the  |
|                       | necessary vtables and vfields. This command is     |
|                       | useful when you need to determine vtable           |
|                       | information for a query.                           |
+-----------------------+----------------------------------------------------+
| **list vfields**      | Lists the vfields present in a specific vtable.    |
| *<vtable name>*       | This command is useful when you need to determine  |
|                       | vfields information for a query.                   |
+-----------------------+----------------------------------------------------+
| **jdbc** *<ip         | When the ODL server is behind a firewall, and the  |
| address>*             | JDBC client cannot connect to the JDBC server, run |
|                       | this command to start the client as a server and   |
|                       | establish a connection.                            |
+-----------------------+----------------------------------------------------+
| **exit**              | Closes the console.                                |
+-----------------------+----------------------------------------------------+
| **tocsv**             | Enables or disables the forwarding of query output |
|                       | as a .csv file.                                    |
+-----------------------+----------------------------------------------------+
| **filename**          | Specifies the .tocsv file to which the query data  |
| *<filename>*          | is exported. If you do not specify a value for     |
|                       | this option when the toccsv option is enabled, the |
|                       | filename for the query data file is generated      |
|                       | automatically.                                     |
+-----------------------+----------------------------------------------------+

Table: Supported XSQL Console Commands

XSQL Queries
------------

You can run a query to extract information that meets the criteria you
specify using the information provided by the **list vtables** and
**list vfields** *<vtable name>* commands. Any query you run should be
structured as follows:

**select** *<vfields you want to search for, separated by a comma and a
space>* **from** *<vtables you want to search in, separated by a comma
and a space>* **where** *<criteria>* ***\*\ *<criteria operator>****;\*

For example, if you want to search the nodes/node ID field in the
nodes/node-connector table and find every instance of the
Hardware-Address object that contains *BA* in its text string, enter the
following query:

::

    select nodes/node.ID from nodes/node-connector where Hardware-Address like '%BA%';

The following criteria operators are supported:

+----------------+-----------------------------------------------------------+
| **Criteria     | **Description**                                           |
| Operators**    |                                                           |
+----------------+-----------------------------------------------------------+
| **=**          | Lists results that equal the value you specify.           |
+----------------+-----------------------------------------------------------+
| **!=**         | Lists results that do not equal the value you specify.    |
+----------------+-----------------------------------------------------------+
| **like**       | Lists results that contain the substring you specify. For |
|                | example, if you specify **like %BC%**, every string that  |
|                | contains that particular substring is displayed.          |
+----------------+-----------------------------------------------------------+
| **<**          | Lists results that are less than the value you specify.   |
+----------------+-----------------------------------------------------------+
| **>**          | Lists results that are more than the value you specify.   |
+----------------+-----------------------------------------------------------+
| **and**        | Lists results that match both values you specify.         |
+----------------+-----------------------------------------------------------+
| **or**         | Lists results that match either of the two values you     |
|                | specify.                                                  |
+----------------+-----------------------------------------------------------+
| **>=**         | Lists results that are more than or equal to the value    |
|                | you specify.                                              |
+----------------+-----------------------------------------------------------+
| **⇐**          | Lists results that are less than or equal to the value    |
|                | you specify.                                              |
+----------------+-----------------------------------------------------------+
| **is null**    | Lists results for which no value is assigned.             |
+----------------+-----------------------------------------------------------+
| **not null**   | Lists results for which any value is assigned.            |
+----------------+-----------------------------------------------------------+
| **skip**       | Use this operator to list matching results from a child   |
|                | node, even if its parent node does not meet the specified |
|                | criteria. See the following example for more information. |
+----------------+-----------------------------------------------------------+

Table: Supported XSQL Query Criteria Operators

Example: Skip Criteria Operator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you are looking at the following structure and want to determine all
of the ports that belong to a YY type module:

-  Network Element 1

   -  Module 1, Type XX

      -  Module 1.1, Type YY

         -  Port 1

         -  Port 2

   -  Module 2, Type YY

      -  Port 1

      -  Port 2

If you specify **Module.Type=\ *YY*** in your query criteria, the ports
associated with module 1.1 will not be returned since its parent module
is type XX. Instead, enter **Module.Type=\ *YY* or skip
Module!=\ *YY***. This tells XSQL to disregard any parent module data
that does not meet the type YY criteria and collect results for any
matching child modules. In this example, you are instructing the query
to skip module 1 and collect the relevant data from module 1.1.
