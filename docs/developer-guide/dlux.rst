DLUX
====

Setup and Run
-------------

Required Technology Stack
~~~~~~~~~~~~~~~~~~~~~~~~~

-  AngularJS (JavaScript client-side framework, http://www.angularjs.org
   )

Run DLUX
~~~~~~~~

To turn on the DLUX UI, install DLUX core feature via running following
command on the Karaf console -

::

    feature:install odl-dlux-core

The above command will install odl-restconf and DLUX topology
application internally, along with core DLUX components. Once this
feature is successfully installed, access the UI at
http://localhost:8181/index.html. The default credentials for login are
admin/admin.

All the applications in DLUX are Karaf features. A user can install
other dlux applications such as node and yang-ui from Karaf console
using commands such as -

::

    $ feature:install odl-dlux-node

    $ feature:install odl-dlux-yangui

DLUX Modules
------------

DLUX modules are the individual features such as nodes and topology.
Each module has a defined structure and you can find all existing
modules at
https://github.com/opendaylight/dlux/tree/stable/lithium/modules.

Module Structure
~~~~~~~~~~~~~~~~

-  module\_folder

   -  <module\_name>.module.js

   -  <module\_name>.controller.js

   -  <module\_name>.services.js

   -  <module\_name>.directives.js

   -  <module\_name>.filter.js

   -  index.tpl.html

   -  <a\_stylesheet>.css

Create New Module
~~~~~~~~~~~~~~~~~

Define the module
^^^^^^^^^^^^^^^^^

1. Create an empty maven project and create your module folder under
   src/main/resources.

2. Create an empty file with pattern <module\_name>.module.js.

3. Next, you need to surround the angular module with a define function.
   This allows RequireJs to see our module.js files. The first argument
   is an array which contains all the module’s dependencies. The second
   argument is a callback function, whose body contain the AngularJS
   code base. The function parameters correspond with the order of
   dependencies. Each dependency is injected into a parameter, if it is
   provided.

4. Finally, you will return the angular module to be able to inject it
   as a parameter in others modules.

For each new module, you must have at least these two dependencies :

-  angularAMD : It’s a wrapper around AngularJS to provide an AMD
   (Asynchronous Module Definition) support, which is used by RequireJs.
   For more information see the `AMD
   documentation <https://github.com/amdjs/amdjs-api/blob/master/AMD.md>`__.

-  app/core/core.services : This one is mandatory, if you want to add
   content in the navigation menu, the left bar or the top bar.

The following are not mandatory, but very often used.

-  angular-ui-router : A library to provide URL routing.

-  routingConfig : To set the level access to a page.

Your module.js file might look like this:

::

    define(['angularAMD','app/routingConfig', 'angular-ui-router','app/core/core.services'], function(ng) {
       var module = angular.module('app.a_module', ['ui.router.state', 'app.core']);
       // module configuration
       module.config(function() {
           [...]
       });
      return module;
    });

Set the register function
^^^^^^^^^^^^^^^^^^^^^^^^^

AngularJS allows lazy registration of a module’s components such as
controller, factory etc. Once you will install your application, DLUX
will load your module javascript, but not your angular component during
bootstrap phase. You have to register your angular components to make
sure they are available at the runtime.

Here is how to register your module’s component for lazy initialization
-

::

    module.config(function($compileProvider, $controllerProvider, $provide) {
       module.register = {
         controller : $controllerProvider.register,
         directive : $compileProvider.directive,
         factory : $provide.factory,
         service : $provide.service
       };
    });

Set the route
^^^^^^^^^^^^^

The next step is to set up the route for your module. This part is also
done in the configuration method of the module. We have to add
**$stateProvider** as a parameter.

::

    module.config(function($stateProvider) {
       var access = routingConfig.accessLevels;
       $stateProvider.state('main.module', {
         url: 'module',
         views : {
           'content' : {
             templateUrl: 'src/app/module/module.tpl.html',
             controller: 'ModuleCtrl'
           }
         }
       });
    });

Adding element to the navigation menu
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To be able to add item to the navigation menu, the module requires the
**NavHelperProvider** parameter in the configuration method.
**addToMenu** method in **NavMenuHelper** helper allows an item addition
to the menu.

::

    var module = angular.module('app.a_module', ['app.core']);
    module.config(function(NavMenuHelper) {
        NavMenuHelper.addToMenu('myFirstModule', {
            "link" : "#/module/index",
            "active" : "module",
            "title" : "My First Module",
            "icon" : "icon-sitemap",
            "page" : {
                "title" : "My First Module",
                "description" : "My first module"
            }
        });
    });

The first parameter is an ID that refers to the level of your menu and
the second is a object. For now, The ID parameter supports two levels of
depth. If your ID looks like *rootNode.childNode*, the helper will look
for a node named *rootNode* and it will append the *childNode* to it. If
the root node doesn’t exist, it will create it.

Link the AngularJS module’s controller file
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To include the module’s controller file, you can use the
NavHelperProvider. It contains a method that will load the given file.

::

    [...]
       NavHelperProvider.addControllerUrl('<path_to_module_folder>/<module_name>.controller');

This completes your module.js file.

Create the controller, factory, directive, etc
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Creating the controller and other components is similar to the module.

-  First, add the define method.

-  Second, add the relative path to the module definition.

-  Last, create your methods as you usually do it with AngularJS.

For example -

::

    define(['<relative_path_to_module>/<module_name>.module'], function(module) {
       module.register.controller('ModuleCtrl', function($rootScope, $scope) {
       });
    });

Add new application using DLUX modularity
-----------------------------------------

DLUX works as a Karaf based UI platform, where you can create a new
Karaf feature of your UI component and install that UI applications in
DLUX using blueprint. This page will help you to create and load a new
application for DLUX. You don’t have to add new module in DLUX
repository.

Add a new OSGi blueprint bundle
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The OSGi Blueprint Container specification allows us to use dependency
injection in our OSGi environment. Each DLUX application module
registers itself via blueprint configuration. Each application will have
its own blueprint.xml to place its configuration.

1. Create a maven project to place blueprint configuration. For
   reference, take a look at topology bundle, present at
   https://github.com/opendaylight/dlux/tree/stable/lithium/bundles/topology.
   All the existing DLUX modules' configurations are available under
   bundles directory of DLUX code.

2. In pom.xml, you have to add a maven plugin to unpack your module code
   under generated-resources of this project. For reference, you can
   check pom.xml of dlux/bundles/topology at
   https://github.com/opendaylight/dlux/tree/stable/lithium/bundles/topology.
   Your bundle will eventually get deployed in Karaf as feature, so your
   bundle should contain all your module code. If you want to combine
   module and bundle project, that should not be an issue either.

3. Create a blueprint.xml configuration file under
   src/main/resources/OSGI-INF/blueprint. Below is the content of the
   blueprint.xml taken from topology bundles’s blueprint.xml. Any new
   application should create a blueprint.xml in following format -

::

    <blueprint xmlns="http://www.osgi.org/xmlns/blueprint/v1.0.0">
        <reference id="httpService" availability="mandatory" activation="eager" interface="org.osgi.service.http.HttpService"/>
        <reference id="loader" availability="mandatory" activation="eager" interface="org.opendaylight.dlux.loader.DluxModuleLoader"/>

        <bean id="bundle" init-method="initialize" destroy-method="clean" class="org.opendaylight.dlux.loader.DluxModule">
          <property name="httpService" ref="httpService"/>
          <property name="loader" ref="loader"/>
          <property name="moduleName" value="topology "/>
          <property name="url" value="/src/app/topology"/>
          <property name="directory" value="/topology"/>
          <property name="requireJs" value="app/topology/topology.module"/>
          <property name="angularJs" value="app.topology"/>
          <property name="cssDependencies">
              <list>
                  <value>http://yui.yahooapis.com/3.18.1/build/cssreset/cssreset-min.css</value>
                  <value>src/app/topology/topology-custom.css</value>
              </list>
          </property>
        </bean>
    </blueprint>

In above configuration, there are two references with id httpService and
loader. These two beans will already be initialized by dlux-core, so any
new application can use them. Without these two bean references, a new
application will not be able to register.

Next is the initialization of your application bean, which will be an
instance of class org.opendaylight.dlux.loader.DluxModule. There are 5
properties that you should provide in this bean besides the references
of httpService and loader. Lets talk about those bean properties in
little more detail.

**moduleName** : Name of your module. This name should be unique in
DLUX.

**url**: This is the url via which RequireJS in DLUX will try to load
your module JS/HTML files. Also, this is the url that browser will use
to load the static HTML, JS or CSS files. RequireJS in DLUX has a base
path of **src**, so all the url should start with /src so RequireJS and
the browser can correctly find the files.

**directory**: In your bundle’s pom.xml, you unpack your module code.
This is the directory where your actual static files will reside. The
above mentioned url is registered with httpService, so when browser
makes a call to that url, it will be redirected to the directory
mentioned here. In the above example, all the topology files are present
under /topology directory and the browser/RequireJS can access those
files with uri /src/app/topology.

**requireJS**: This is the path to your RequireJS module. If you notice
closely, you will see the initial path of RequireJS app/topology in the
above example matches with the last part of url. This path will be be
used by RequireJS. As mentioned above, we have kept **src** as base path
in RequireJS, that is the exact reason that url start with /src.

**angularJS**: name of your AngularJS module.

**cssDependencies**: If the application has any external/internal css
dependencies, then those can be added here. If you create your own css
files, just point to those css files here. Use the url path that you
mentioned above, so the browser can find your css file.

OSGi understands blueprint.xml, once you will deploy your bundle in
karaf (or you can create a new feature for your application), karaf will
read your blueprint.xml and it will try to register your application
with dlux. Once successful, if you refresh your dlux UI, you will see
your application in left hand navigation bar of dlux.

Yang Utils
----------

Yang Utils are used by UI to perform all CRUD operations. All of these
utilities are present in yangutils.services.js file. It has following
AngularJS factories -

-  **arrayUtils** – defines functions for working with arrays.

-  **pathUtils** – defines functions for working with xpath (paths to
   APIs and subAPIs). It divides xpath string to array of elements, so
   this array can be later used for search functions.

-  **syncFact** – provides synchronization between requests to and from
   OpenDaylight when it’s needed.

-  **custFunct** – it is linked with
   apiConnector.createCustomFunctionalityApis in yangui controller in
   yangui.controller.js. That function makes it possible to create some
   custom function called by the click on button in index.tpl.html. All
   custom functions are stored in array and linked to specific subAPI.
   When particular subAPI is expanded and clicked, its inputs (linked
   root node with its child nodes) are displayed in the bottom part of
   the page and its buttons with custom functionality are displayed
   also.

-  **reqBuilder** – Builds object in JSON format from input fields of
   the UI page. **Show Preview** button on Yang UI use this builder.
   This request is sent to OpenDaylight when button PUT or POST is
   clicked.

-  **yinParser** – factory for reading .xml files of yang models and
   creating object hierarchy. Every statement from yang is represented
   by a node.

-  **nodeWrapper** – adds functions to objects in tree hierarchy created
   with yinParser. These functions provide functionality for every type
   of node.

-  **apiConnector** – the main functionality is filling the main
   structures and linking them. Structure of APIs and subAPIs which is
   two level array - first level is filled by main APIs, second level is
   filled by others sub APIs. Second main structure is array of root
   nodes, which are objects including root node and its children nodes.
   Linking these two structures is creating links between every subAPI
   (second level of APIs array) and its root node, which must be
   displayed like inputs when subAPI is expanded.

-  **yangUtils** – some top level functions which are used by yangui
   controller for creating the main structures.

