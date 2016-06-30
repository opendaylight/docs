<div id="header">

</div>

<div id="content">

<div class="literalblock">

<div class="content">

   					 This File is Still Under Construction

</div>

</div>

Installing Vagrant {#_installing_vagrant .float}
------------------

<div class="sidebarblock">

<div class="content">

<div class="paragraph">

Vagrant is a command line utility tool that is used to create and manage
virtual development environments or VDE, as they are commonly referred
to. Vagrant aids in building VDE’s with the help of basic configurations
that allow a user to create, manage and deploy a wide range of
development environments.

</div>

<div class="paragraph">

Steps required to install Vagrant.

</div>

<div class="paragraph">

Step 1. Open the terminal on your machine.

</div>

<div class="paragraph">

Step 2. Install VirtualBox. Type in the following command.

</div>

<div class="literalblock">

<div class="content">

    sudo dnf install virtualbox

</div>

</div>

<div class="paragraph">

For Ubuntu OS,

</div>

<div class="literalblock">

<div class="content">

    sudo apt-get install virtualbox

</div>

</div>

<div class="paragraph">

Step 3. Install Vagrant using this command.

</div>

<div class="literalblock">

<div class="content">

    sudo dnf install vagrant

</div>

</div>

<div class="paragraph">

For Ubuntu OS,

</div>

<div class="literalblock">

<div class="content">

    sudo apt-get install vagrant

</div>

</div>

<div class="paragraph">

Step 4. To make sure you have successfully installed Vagrant on your
machine, just run the following command to return the current version of
Vagrant that is installed on your machine.

</div>

<div class="literalblock">

<div class="content">

    vagrant   -v

</div>

</div>

<div class="paragraph">

Step 5. Step 4 should return the current version of Vagrant installed on
your machine. If the version is displayed, it indicates that Vagrant has
been successfully installed on your machine.

</div>

</div>

</div>

Running the Vagrant Box {#_running_the_vagrant_box .float}
-----------------------

<div class="sidebarblock">

<div class="content">

<div class="paragraph">

Download the vagrant box using the command:

</div>

<div class="literalblock">

<div class="content">

    vagrant  init  -m  ‘f23_rpm_be_sr2’

</div>

</div>

<div class="paragraph">

Once the box had been downloaded, you can get a look at the vagrant file
by performing a ‘cat’ operation on the file named ‘Vagrantfile’.

</div>

<div class="literalblock">

<div class="content">

    cat Vagrantfile

</div>

</div>

<div class="paragraph">

To create and compile the configurations put forth by the Vagrantfile,
we make use of the ‘vagrant up’ command. Once the configuration has been
compiled, use the ‘vagrant ssh’ command to ssh into the new vagrant
build environment.

</div>

</div>

</div>

Setting Up the OpenDaylight Controller {#_setting_up_the_opendaylight_controller .float}
--------------------------------------

<div class="sidebarblock">

<div class="content">

<div class="paragraph">

There are two different ways of setting up the OpenDaylight Controller:

</div>

<div class="literalblock">

<div class="content">

    1.The first method requires that you move into the OpenDaylight working directory from your terminal and run the ./bin/karaf in order to run the controller.

</div>

</div>

<div class="paragraph">

The OpenDaylight Working Directory: cd
distribution-karaf-0.4.0-Beryllium/

</div>

<div class="literalblock">

<div class="content">

    2.This is the SSH method. You can ssh into the Karaf console with the help of the following command:

</div>

</div>

<div class="literalblock">

<div class="content">

    sudo  ssh  -p  8101  karaf@localhost

</div>

</div>

<div class="paragraph">

The password being: karaf

</div>

<div class="paragraph">

You will now be within the OpenDaylight controller console wherein you
need to install the required features.

</div>

<div class="admonitionblock">

+--------------------------------------+--------------------------------------+
| <div class="title">                  | All features MUST be installed in    |
|                                      | the right order for the controller   |
| Important                            | to function properly.                |
|                                      |                                      |
| </div>                               |                                      |
+--------------------------------------+--------------------------------------+

</div>

<div class="paragraph">

Install the required features:

</div>

<div class="literalblock">

<div class="content">

    >feature:install odl-restconf odl-l2switch-switch odl-openflowplugin-all odl-mdsal-apidocs odl-dlux-all

</div>

</div>

<div class="paragraph">

Once the required features have been installed, the next step is to open
<http://%3CController> Ip&gt;:8181/index.html.

</div>

<div class="paragraph">

The OpenDaylight user interface page will be displayed. Enter the
following credentials to login to the web GUI of OpenDaylight:

</div>

<div class="paragraph">

Username: admin

</div>

<div class="paragraph">

Password: admin

</div>

<div class="paragraph">

The time taken to gain access into the DLUX web user interface depends
on the hardware capability of your machine.

</div>

</div>

</div>

Mininet {#_mininet .float}
-------

<div class="sidebarblock">

<div class="content">

<div class="paragraph">

Mininet is a network testing tool that is often used by network
architects to create network topologies and test them virtually before
real-world deployment. Mininet functions as a network emulator that aids
in building network topologies involving network entities like hosts,
switches, links and controllers.

</div>

<div class="paragraph">

Working with Mininet

</div>

<div class="paragraph">

To be able to initialize mininet on your machine, type in the command
‘sudo mn’. This will initialize mininet with a default topology
consisting of 1 switch and 2 hosts. This topology is referred to as the
minimal topology.

</div>

<div class="paragraph">

Always prior to building mininet topologies, we need to make sure that
there are no existing remnants of previous topologies. To clear a
previous topology, we use the following command:

</div>

<div class="literalblock">

<div class="content">

    sudo  mn  -c

</div>

</div>

<div class="paragraph">

Building Topologies on Mininet

</div>

<div class="paragraph">

Let us take a look at a sample mininet topology building command.

</div>

<div class="literalblock">

<div class="content">

    sudo  mn  --mac  --topo=single,3  --controller=remote,ip=127.0.0.1  --switch=ovsk

</div>

</div>

<div class="paragraph">

sudo mn - Initializes the mininet console --mac – To allocate easily
understandable MAC addresses to hosts. --topo – To initialize the
topology (In this case, it is a single switch topology with 1 switch and
3 hosts). --controller – To initialize the remote controller (In this
case, the remote controller is allocated an IP address of 127.0.0.1).
--switch – To initialize the switch (In this case, an OpenvSwitch).

</div>

</div>

</div>

The L2Switch {#_the_l2switch .float}
------------

<div class="sidebarblock">

<div class="content">

<div class="paragraph">

The Layer 2 Switch is a networking entity that provides Layer 2
switching functionality. An essential parameter for the working of a
Layer 2 Switch is the MAC address. Since MAC addresses correspond to the
2nd layer of the 7-Layer OSI model, we reference to this switch as a
Layer 2 Switch.

</div>

<div class="paragraph">

Initialize the Topology on Mininet

</div>

<div class="paragraph">

Let us now build our mininet topology. We shall be using the linear
topology wherein all the switches are connected in a line and each
switch is connected to a host.

</div>

<div class="literalblock">

<div class="content">

    sudo mn  --mac  --topo=linear,4  --controller=remote,ip=127.0.0.1 --switch=ovsk,protocols=OpenFlow13

</div>

</div>

<div class="paragraph">

The ‘protocols=OpenFlow13’ in the above command specifies the fact that
the OpenVSwitch shall operate with version 1.3 of the OpenFlow protocol.

</div>

<div class="paragraph">

Generating Traffic on Mininet

</div>

<div class="paragraph">

As discussed earlier, the primary function of mininet is to act as a
testing utility, prior to deploying the network in a real world
environment.

</div>

<div class="paragraph">

Trying to establish pings between hosts can be the most useful way of
generating traffic between them.

</div>

<div class="paragraph">

To allow host h1 to ping host h2, we use the following command:

</div>

<div class="literalblock">

<div class="content">

    h1  ping  h2

</div>

</div>

<div class="paragraph">

To facilitate pings between each and every host connected in the
network, we use the following command:

</div>

<div class="literalblock">

<div class="content">

    pingall

</div>

</div>

</div>

</div>

</div>

<div id="footnotes">

------------------------------------------------------------------------

</div>

<div id="footer">

<div id="footer-text">

Last updated 2016-06-30 13:43:39 MDT

</div>

</div>
