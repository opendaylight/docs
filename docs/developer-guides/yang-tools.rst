.. _yangtools-developer-guide:

YANG Tools Developer Guide
==========================

Overview
--------

YANG Tools is set of libraries and tooling providing support for use
`YANG <https://tools.ietf.org/html/rfc6020>`__ for Java (or other
JVM-based language) projects and applications. The YANG Tools provides
following features in OpenDaylight:

-  Parsing of YANG sources and semantic inference of relationship across
   YANG models as defined in
   `RFC6020 <https://tools.ietf.org/html/rfc6020>`__

-  Representation of YANG-modeled data in Java

   -  **Normalized Node** representation - DOM-like tree model, which
      uses conceptual meta-model more tailored to YANG and OpenDaylight
      use-cases than a standard XML DOM model allows for.

-  Serialization / deserialization of YANG-modeled data driven by YANG
   models

   -  XML - as defined in
      `RFC6020 <https://tools.ietf.org/html/rfc6020>`__

   -  JSON - as defined in
      `draft-lhotka-netmod-yang-json-01 <https://tools.ietf.org/html/rfc6020>`__

   -  Support for third-party generators processing YANG models.

Architecture
~~~~~~~~~~~~

YANG tools consist of the following logical subsystems:

.. list-table:: **YANG Tools**
   :widths: 20 50
   :header-rows: 1

   * - Tool
     - Description
   * - **Commons**
     - Set of general purpose code, which is not specific to
       YANG, but is also useful outside YANG Tools implementation.

   * - **YANG Model and Parser**
     - YANG semantic model and lexical and
       semantic parser of YANG models, which creates in-memory
       cross-referenced representation of YANG models, which is used by other
       components to determine their behavior based on the model.

   * - **YANG data**
     - Definition of Normalized Node APIs and Data Tree
       APIs, reference implementation of these APIs and implementation of
       XML and JSON codecs for Normalized Nodes.

   * - **YANG Maven Plugin**
     - Maven plugin which integrates YANG parser
       into Maven build life-cycle and provides code-generation framework for
       components, which wants to generate code or other artefacts based on YANG model.

Concepts
~~~~~~~~

Project defines base concepts and helper classes which are
project-agnostic and could be used outside of YANG Tools project scope.

Components
~~~~~~~~~~

-  ``yang-common``

-  ``yang-data-api``

-  ``yang-data-codec-gson``

-  ``yang-data-codec-xml``

-  ``yang-data-impl``

-  ``yang-data-jaxen``

-  ``yang-data-transform``

-  ``yang-data-util``

-  ``yang-maven-plugin``

-  ``yang-maven-plugin-it``

-  ``yang-maven-plugin-spi``

-  ``yang-model-api``

-  ``yang-model-export``

-  ``yang-model-util``

-  ``yang-parser-api``

-  ``yang-parser-impl``

YANG Model API
^^^^^^^^^^^^^^

Class diagram of yang model API

.. figure:: images/yang-model-api.png

   YANG Model API

YANG Parser
^^^^^^^^^^^

YANG Statement Parser works on the idea of statement concepts as defined
in RFC6020, section 6.3. We come up here with basic ModelStatement and
StatementDefinition, following RFC6020 idea of having sequence of
statements, where every statement contains keyword and zero or one
argument. ModelStatement is extended by DeclaredStatement (as it comes
from source, e.g. YANG source) and EffectiveStatement, which contains
other sub-statements and tends to represent result of semantic processing
of other statements (uses, augment for YANG). IdentifierNamespace
represents common superclass for YANG model namespaces.

Input of the YANG Statement Parser is a collection of
StatementStreamSource objects. StatementStreamSource interface is used
for inference of effective model and is required to emit its statements
using supplied StatementWriter. Each source (e.g. YANG source) has to be
processed in three steps in order to emit different statements for each
step. This package provides support for various namespaces used across
statement parser in order to map relations during declaration phase
process.

Currently, there are two implementations of StatementStreamSource in
YANGtools:

-  YangStatementSourceImpl - intended for yang sources

-  YinStatementSourceImpl - intended for yin sources

YANG data API
^^^^^^^^^^^^^

Class diagram of yang data API

.. figure:: images/yang-data-api.png

   YANG data API

YANG data Codecs
^^^^^^^^^^^^^^^^

Codecs which enable serialization of NormalizedNodes into YANG-modeled
data in XML or JSON format and deserialization of YANG-modeled data in
XML or JSON format into NormalizedNodes.

YANG Maven Plugin
^^^^^^^^^^^^^^^^^

Maven plugin which integrates YANG parser into Maven build life-cycle and
provides code-generation framework for components, which wants to
generate code or other artefacts based on YANG model.

How to / Tutorials
------------------

Working with YANG Model
~~~~~~~~~~~~~~~~~~~~~~~

First thing you need to do if you want to work with YANG models is to
instantiate a SchemaContext object. This object type describes one or
more parsed YANG modules.

In order to create it you need to utilize YANG statement parser which
takes one or more StatementStreamSource objects as input and then
produces the SchemaContext object.

StatementStreamSource object contains the source file information. It
has two implementations, one for YANG sources - YangStatementSourceImpl,
and one for YIN sources - YinStatementSourceImpl.

Here is an example of creating StatementStreamSource objects for YANG
files, providing them to the YANG statement parser and building the
SchemaContext:

.. code:: java

    StatementStreamSource yangModuleSource == new YangStatementSourceImpl("/example.yang", false);
    StatementStreamSource yangModuleSource2 == new YangStatementSourceImpl("/example2.yang", false);

    CrossSourceStatementReactor.BuildAction reactor == YangInferencePipeline.RFC6020_REACTOR.newBuild();
    reactor.addSources(yangModuleSource, yangModuleSource2);

    SchemaContext schemaContext == reactor.buildEffective();

First, StatementStreamSource objects with two constructor arguments
should be instantiated: path to the yang source file (which is a regular
String object) and a Boolean which determines if the path is absolute or
relative.

Next comes the initiation of new yang parsing cycle - which is
represented by CrossSourceStatementReactor.BuildAction object. You can
get it by calling method ``newBuild()`` on CrossSourceStatementReactor
object (RFC6020\_REACTOR) in YangInferencePipeline class.

Then you should feed yang sources to it by calling method ``addSources()``
that takes one or more StatementStreamSource objects as arguments.

Finally, you call the method ``buildEffective()`` on the reactor object which
returns ``EffectiveSchemaContext`` (that is a concrete implementation of
``SchemaContext``). Now you are ready to work with contents of the added
YANG sources.

Let us explain how to work with models contained in the newly created
``SchemaContext``. If you want to get all the modules in the ``schemaContext``,
you have to call method ``getModules()`` which returns a Set of modules. If
you want to get all the data definitions in ``schemaContext``, you need to
call method ``getDataDefinitions``, etc.

.. code:: java

    Set<Module> modules == schemaContext.getModules();
    Set<DataSchemaNodes> dataSchemaNodes == schemaContext.getDataDefinitions();

Usually you want to access specific modules. Getting a concrete module
from SchemaContext is a matter of calling one of these methods:

-  ``findModuleByName()``,

-  ``findModuleByNamespace()``,

-  ``findModuleByNamespaceAndRevision()``.

In the first case, you need to provide module name as it is defined in
the yang source file and module revision date if it specified in the
yang source file (if it is not defined, you can just pass a null value).
In order to provide the revision date in proper format, you can use a
utility class named SimpleDateFormatUtil.

.. code:: java

    Module exampleModule == schemaContext.findModuleByName("example-module", null);
    // or
    Date revisionDate == SimpleDateFormatUtil.getRevisionFormat().parse("2015-09-02");
    Module exampleModule == schemaContext.findModuleByName("example-module", revisionDate);

In the second case, you have to provide module namespace in form of an
URI object.

.. code:: java

    Module exampleModule == schema.findModuleByNamespace(new URI("opendaylight.org/example-module"));

In the third case, you provide both module namespace and revision date
as arguments.

Once you have a Module object, you can access its contents as they are
defined in YANG Model API. One way to do this is to use method like
``getIdentities()`` or ``getRpcs()`` which will give you a Set of objects.
Otherwise you can access a DataSchemaNode directly via the method
``getDataChildByName()`` which takes a ``QName`` object as its only argument.
Here are a few examples.

.. code:: java

    Set<AugmentationSchema> augmentationSchemas == exampleModule.getAugmentations();
    Set<ModuleImport> moduleImports == exampleModule.getImports();

    ChoiceSchemaNode choiceSchemaNode == (ChoiceSchemaNode) exampleModule.getDataChildByName(QName.create(exampleModule.getQNameModule(), "example-choice"));

    ContainerSchemaNode containerSchemaNode == (ContainerSchemaNode) exampleModule.getDataChildByName(QName.create(exampleModule.getQNameModule(), "example-container"));

The YANG statement parser can work in three modes:

-  default mode

-  mode with active resolution of if-feature statements

-  mode with active semantic version processing

The default mode is active when you initialize the parsing cycle as
usual by calling the method ``newBuild()`` without passing any arguments to
it. The second and third mode can be activated by invoking the ``newBuild()``
with a special argument. You can either activate just one of
them or both by passing proper arguments. Let us explain how these modes
work.

Mode with active resolution of if-features makes yang statements
containing an if-feature statement conditional based on the supported
features. These features are provided in the form of a ``QName-based``
``java.util.Set`` object. In the example below, only two
features are supported: example-feature-1 and example-feature-2. The
Set which contains this information is passed to the method
``newBuild()`` and the mode is activated.

.. code:: java

    Set<QName> supportedFeatures = ImmutableSet.of(
        QName.create("example-namespace", "2016-08-31", "example-feature-1"),
        QName.create("example-namespace", "2016-08-31", "example-feature-2"));

    CrossSourceStatementReactor.BuildAction reactor = YangInferencePipeline.RFC6020_REACTOR.newBuild(supportedFeatures);

In case when no features should be supported, you should provide an
empty ``Set<QName>`` object.

.. code:: java

    Set<QName> supportedFeatures = ImmutableSet.of();

    CrossSourceStatementReactor.BuildAction reactor = YangInferencePipeline.RFC6020_REACTOR.newBuild(supportedFeatures);

When this mode is not activated, all features in the processed YANG
sources are supported.

Mode with active semantic version processing changes the way how YANG
import statements work - each module import is processed based on the
specified semantic version statement and the revision-date statement is
ignored. In order to activate this mode, you have to provide
StatementParserMode.SEMVER\_MODE enum constant as argument to the method
``newBuild()``.

.. code:: java

    CrossSourceStatementReactor.BuildAction reactor == YangInferencePipeline.RFC6020_REACTOR.newBuild(StatementParserMode.SEMVER_MODE);

Before you use a semantic version statement in a YANG module, you need
to define an extension for it so that the YANG statement parser can
recognize it.

.. code::

    module semantic-version {
        namespace "urn:opendaylight:yang:extension:semantic-version";
        prefix sv;
        yang-version 1;

        revision 2016-02-02 {
            description "Initial version";
        }
        sv:semantic-version "0.0.1";

        extension semantic-version {
            argument "semantic-version" {
                yin-element false;
            }
        }
    }

In the example above, you see a YANG module which defines semantic
version as an extension. This extension can be imported to other modules
in which we want to utilize the semantic versioning concept.

Below is a simple example of the semantic versioning usage. With
semantic version processing mode being active, the foo module imports
the bar module based on its semantic version. Notice how both modules
import the module with the semantic-version extension.

.. code::

    module foo {
        namespace foo;
        prefix foo;
        yang-version 1;

        import semantic-version { prefix sv; revision-date 2016-02-02; sv:semantic-version "0.0.1"; }
        import bar { prefix bar; sv:semantic-version "0.1.2";}

        revision "2016-02-01" {
            description "Initial version";
        }
        sv:semantic-version "0.1.1";

        ...
    }

.. code::

    module bar {
        namespace bar;
        prefix bar;
        yang-version 1;

        import semantic-version { prefix sv; revision-date 2016-02-02; sv:semantic-version "0.0.1"; }

        revision "2016-01-01" {
            description "Initial version";
        }
        sv:semantic-version "0.1.2";

        ...
    }

Every semantic version must have the following form: x.y.z. The x
corresponds to a major version, the y corresponds to a minor version and
the z corresponds to a patch version. If no semantic version is
specified in a module or an import statement, then the default one is
used - 0.0.0.

A major version number of 0 indicates that the model is still in
development and is subject to change.

Following a release of major version 1, all modules will increment major
version number when backwards incompatible changes to the model are
made.

The minor version is changed when features are added to the model that
do not impact current clients use of the model.

The patch version is incremented when non-feature changes (such as
bugfixes or clarifications of human-readable descriptions that do not
impact model functionality) are made that maintain backwards
compatibility.

When importing a module with activated semantic version processing mode,
only the module with the newest (highest) compatible semantic version is
imported. Two semantic versions are compatible when all of the following
conditions are met:

-  the major version in the import statement and major version in the
   imported module are equal. For instance, 1.5.3 is compatible with
   1.5.3, 1.5.4, 1.7.2, etc., but it is not compatible with 0.5.2 or
   2.4.8, etc.

-  the combination of minor version and patch version in the import
   statement is not higher than the one in the imported module. For
   instance, 1.5.2 is compatible with 1.5.2, 1.5.4, 1.6.8 etc. In fact,
   1.5.2 is also compatible with versions like 1.5.1, 1.4.9 or 1.3.7 as
   they have equal major version. However, they will not be imported
   because their minor and patch version are lower (older).

If the import statement does not specify a semantic version, then the
default one is chosen - 0.0.0. Thus, the module is imported only if it
has a semantic version compatible with the default one, for example
0.0.0, 0.1.3, 0.3.5 and so on.

Working with YANG data
~~~~~~~~~~~~~~~~~~~~~~

If you want to work with YANG data, you are going to need NormalizedNode
objects that are specified in the YANG data API. NormalizedNode is an
interface at the top of the YANG data hierarchy. It is extended through
sub-interfaces which define the behavior of specific NormalizedNode
types like AnyXmlNode, ChoiceNode, LeafNode, ContainerNode, etc.
Concrete implementations of these interfaces are defined in
``yang-data-impl`` module. Once you have one or more NormalizedNode
instances, you can perform CRUD operations on YANG data tree which is an
in-memory database designed to store normalized nodes in a tree-like
structure.

In some cases it, is clear which NormalizedNode type belongs to which
yang statement (e.g. AnyXmlNode, ChoiceNode, LeafNode). However, there
are some normalized nodes which are named differently from their yang
counterparts. They are listed below:

.. list-table:: **Normalized Nodes**
   :widths: auto
   :header-rows: 1

   * - Node
     - Description
   * - **LeafSetNode**
     - Leaf-list
   * - **OrderedLeafSetNode**
     - Leaf-list that is ordered-by user
   * - **LeafSetEntryNode**
     - Concrete entry in a leaf-list
   * - **MapNode**
     - Keyed list
   * - **OrderedMapNode**
     - Keyed list that is ordered-by user
   * - **MapEntryNode**
     - Concrete entry in a keyed list
   * - **UnkeyedListNode**
     - Unkeyed list
   * - **UnkeyedListEntryNode**
     - Concrete entry in an unkeyed list

To create a concrete NormalizedNode object, use the utility class Builders
or ImmutableNodes. These classes can be found in `yang-data-impl` module and
they provide methods for building each type of normalized node. Here is a
simple example of building a normalized node:

.. code:: java

    // example 1
    ContainerNode containerNode == Builders.containerBuilder().withNodeIdentifier(new YangInstanceIdentifier.NodeIdentifier(QName.create(moduleQName, "example-container")).build();

    // example 2
    ContainerNode containerNode2 == Builders.containerBuilder(containerSchemaNode).build();

Both examples produce the same result. NodeIdentifier is one of the four
types of YangInstanceIdentifier (these types are described in the
Javadoc of YangInstanceIdentifier). The purpose of
YangInstanceIdentifier is to uniquely identify a particular node in the
data tree. In the first example, you have to add NodeIdentifier before
building the resulting node. In the second example it is also added
using the provided ContainerSchemaNode object.

ImmutableNodes class offers similar builder methods and also adds an
overloaded method called ``fromInstanceId()`` which allows you to create a
NormalizedNode object based on YangInstanceIdentifier and SchemaContext.
Below is an example which shows the use of this method.

.. code:: java

    YangInstanceIdentifier.NodeIdentifier contId == new YangInstanceIdentifier.NodeIdentifier(QName.create(moduleQName, "example-container");

    NormalizedNode<?, ?> contNode == ImmutableNodes.fromInstanceId(schemaContext, YangInstanceIdentifier.create(contId));

Let us show a more complex example of creating a NormalizedNode. First,
consider the following YANG module:

.. code::

    module example-module {
        namespace "opendaylight.org/example-module";
        prefix "example";

        container parent-container {
            container child-container {
                list parent-ordered-list {
                    ordered-by user;

                    key "parent-key-leaf";

                    leaf parent-key-leaf {
                        type string;
                    }

                    leaf parent-ordinary-leaf {
                        type string;
                    }

                    list child-ordered-list {
                        ordered-by user;

                        key "child-key-leaf";

                        leaf child-key-leaf {
                            type string;
                        }

                        leaf child-ordinary-leaf {
                            type string;
                        }
                    }
                }
            }
        }
    }

In the following example, two normalized nodes based on the module above
are written to and read from the data tree.

.. code:: java

    TipProducingDataTree inMemoryDataTree ==     InMemoryDataTreeFactory.getInstance().create(TreeType.OPERATIONAL);
    inMemoryDataTree.setSchemaContext(schemaContext);

    // first data tree modification
    MapEntryNode parentOrderedListEntryNode == Builders.mapEntryBuilder().withNodeIdentifier(
    new YangInstanceIdentifier.NodeIdentifierWithPredicates(
    parentOrderedListQName, parentKeyLeafQName, "pkval1"))
    .withChild(Builders.leafBuilder().withNodeIdentifier(
    new YangInstanceIdentifier.NodeIdentifier(parentOrdinaryLeafQName))
    .withValue("plfval1").build()).build();

    OrderedMapNode parentOrderedListNode == Builders.orderedMapBuilder().withNodeIdentifier(
    new YangInstanceIdentifier.NodeIdentifier(parentOrderedListQName))
    .withChild(parentOrderedListEntryNode).build();

    ContainerNode parentContainerNode == Builders.containerBuilder().withNodeIdentifier(
    new YangInstanceIdentifier.NodeIdentifier(parentContainerQName))
    .withChild(Builders.containerBuilder().withNodeIdentifier(
    new NodeIdentifier(childContainerQName)).withChild(parentOrderedListNode).build()).build();

    YangInstanceIdentifier path1 == YangInstanceIdentifier.of(parentContainerQName);

    DataTreeModification treeModification == inMemoryDataTree.takeSnapshot().newModification();
    treeModification.write(path1, parentContainerNode);

    // second data tree modification
    MapEntryNode childOrderedListEntryNode == Builders.mapEntryBuilder().withNodeIdentifier(
    new YangInstanceIdentifier.NodeIdentifierWithPredicates(
    childOrderedListQName, childKeyLeafQName, "chkval1"))
    .withChild(Builders.leafBuilder().withNodeIdentifier(
    new YangInstanceIdentifier.NodeIdentifier(childOrdinaryLeafQName))
    .withValue("chlfval1").build()).build();

    OrderedMapNode childOrderedListNode == Builders.orderedMapBuilder().withNodeIdentifier(
    new YangInstanceIdentifier.NodeIdentifier(childOrderedListQName))
    .withChild(childOrderedListEntryNode).build();

    ImmutableMap.Builder<QName, Object> builder == ImmutableMap.builder();
    ImmutableMap<QName, Object> keys == builder.put(parentKeyLeafQName, "pkval1").build();

    YangInstanceIdentifier path2 == YangInstanceIdentifier.of(parentContainerQName).node(childContainerQName)
    .node(parentOrderedListQName).node(new NodeIdentifierWithPredicates(parentOrderedListQName, keys)).node(childOrderedListQName);

    treeModification.write(path2, childOrderedListNode);
    treeModification.ready();
    inMemoryDataTree.validate(treeModification);
    inMemoryDataTree.commit(inMemoryDataTree.prepare(treeModification));

    DataTreeSnapshot snapshotAfterCommits == inMemoryDataTree.takeSnapshot();
    Optional<NormalizedNode<?, ?>> readNode == snapshotAfterCommits.readNode(path1);
    Optional<NormalizedNode<?, ?>> readNode2 == snapshotAfterCommits.readNode(path2);

First comes the creation of in-memory data tree instance. The schema
context (containing the model mentioned above) of this tree is set.
After that, two normalized nodes are built. The first one consists of a
parent container, a child container and a parent ordered list which
contains a key leaf and an ordinary leaf. The second normalized node is
a child ordered list that also contains a key leaf and an ordinary leaf.

In order to add a child node to a node, method ``withChild()`` is used. It
takes a NormalizedNode as argument. When creating a list entry,
YangInstanceIdentifier.NodeIdentifierWithPredicates should be used as
its identifier. Its arguments are the ``QName`` of the list, ``QName`` of the
list key and the value of the key. Method ``withValue()`` specifies a value
for the ordinary leaf in the list.

Before writing a node to the data tree, a path (YangInstanceIdentifier)
which determines its place in the data tree needs to be defined. The
path of the first normalized node starts at the parent container. The
path of the second normalized node points to the child ordered list
contained in the parent ordered list entry specified by the key value
``"pkval1"``.

Write operation is performed with both normalized nodes mentioned
earlier. It consists of several steps. The first step is to instantiate a
DataTreeModification object based on a DataTreeSnapshot.
DataTreeSnapshot gives you the current state of the data tree. Then
comes the write operation which writes a normalized node at the provided
path in the data tree. After doing both write operations, method ready()
has to be called, marking the modification as ready for application to
the data tree. No further operations within the modification are
allowed. The modification is then validated - checked whether it can be
applied to the data tree. Finally, we commit it to the data tree.

Now you can access the written nodes. In order to do this, you must
create a new DataTreeSnapshot instance and call the method ``readNode()``
with path argument pointing to a node in the tree.

Serialization / deserialization of YANG data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to deserialize YANG-modeled data that has the form of an
XML document, you can use the XML parser found in the module
``yang-data-codec-xml``. The parser walks through the XML document
containing YANG-modeled data based on the provided SchemaContext and
emits node events into a NormalizedNodeStreamWriter. The parser
disallows multiple instances of the same element except for leaf-list
and list entries. The parser also expects that the YANG-modeled data in
the XML source are wrapped in a root element. Otherwise it will not work
correctly.

Here is an example of using the XML parser.

.. code:: java

    InputStream resourceAsStream == ExampleClass.class.getResourceAsStream("/example-module.yang");

    XMLInputFactory factory == XMLInputFactory.newInstance();
    XMLStreamReader reader == factory.createXMLStreamReader(resourceAsStream);

    NormalizedNodeResult result == new NormalizedNodeResult();
    NormalizedNodeStreamWriter streamWriter == ImmutableNormalizedNodeStreamWriter.from(result);

    XmlParserStream xmlParser == XmlParserStream.create(streamWriter, schemaContext);
    xmlParser.parse(reader);

    NormalizedNode<?, ?> transformedInput == result.getResult();

The XML parser utilizes the ``javax.xml.stream.XMLStreamReader`` for parsing
an XML document. First, you should create an instance of this reader
using XMLInputFactory and then load an XML document (in the form of
InputStream object) into it.

In order to emit node events while parsing the data you need to
instantiate a NormalizedNodeStreamWriter. This writer is actually an
interface and therefore you need to use a concrete implementation of it.
In this example it is the ImmutableNormalizedNodeStreamWriter, which
constructs immutable instances of NormalizedNodes.

There are two ways how to create an instance of this writer using the
static overloaded method from(). One version of this method takes a
NormalizedNodeResult as argument. This object type is a result holder in
which the resulting NormalizedNode will be stored. The other version
takes a NormalizedNodeContainerBuilder as argument. All created nodes
will be written to this builder.

Next step is to create an instance of the XML parser. The parser itself
is represented by a class named XmlParserStream. You can use one of two
versions of the static overloaded method create() to construct this
object. One version accepts a NormalizedNodeStreamWriter and a
SchemaContext as arguments, the other version takes the same arguments
plus a SchemaNode. Node events are emitted to the writer. The
SchemaContext is used to check if the YANG data in the XML source comply
with the provided YANG model(s). The last argument, a SchemaNode object,
describes the node that is the parent of nodes defined in the XML data.
If you do not provide this argument, the parser sets the SchemaContext
as the parent node.

The parser is now ready to walk through the XML. Parsing is initiated by
calling the method parse() on the XmlParserStream object with
XMLStreamReader as its argument.

Finally, you can access the result of parsing - a tree of NormalizedNodes
contains the data as they are defined in the parsed XML document - by
calling the method ``getResult()`` on the NormalizedNodeResult object.
