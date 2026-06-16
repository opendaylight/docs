==================================
2026.03 Chromium Platform Upgrade
==================================

This document describes the steps to help users upgrade from Vanadium
to Chromium platform. Refer to `Managed Snapshot Integrated (MSI)
project <https://git.opendaylight.org/gerrit/q/topic:chromium-mri>`_
upgrade patches for more information and hints for solutions to common
problems not explicitly listed here.

.. note::
   The **gNMI (gRPC Network Management Interface)** project is now officially
   included as a Managed Project starting with the Chromium release.
   See the `gNMI GitHub repository <https://github.com/opendaylight/gnmi>`__ for more details.

.. contents:: Contents

Preparation
-----------

JDK 21 Version
^^^^^^^^^^^^^^
2026.03 Chromium, requires Java 21, both during compile-time and run-time.
Make sure to install JDK 21 corresponding to at least ``openjdk-21.0.8``,
and that the JAVA_HOME environment variable points to the JDK directory.

Version Bump
^^^^^^^^^^^^
Before performing platform upgrade, do the following to bump the odlparent
versions (for example, `bump-odl-version <https://github.com/skitt/odl-tools/blob/master/bump-odl-version>`_):

1. Update the odlparent version from 14.1.7 to 14.3.1. There should
   not be any reference to **org.opendaylight.odlparent**, except
   for 14.3.1. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[14,15)".

 .. code-block:: shell

  bump-odl-version odlparent 14.1.7 14.3.1

2. Update the direct yangtools version references from 14.0.21 to 15.0.2,
   There should not be any reference to **org.opendaylight.yangtools**,
   except for 15.0.2. This includes custom feature.xml templates
   (``src/main/feature/feature.xml``), the version range should
   be "[15,16)" instead of "[14,15)".

 .. code-block:: shell

  bump-odl-version yangtools 14.0.21 15.0.2

3. Update the MD-SAL version from 15.0.2 to 16.0.3. There should not be
   any reference to **org.opendaylight.mdsal**, except for 16.0.3.

 .. code-block:: shell

  bump-odl-version mdsal 15.0.2 16.0.3

4. Update the Controller version from 12.0.3 to 13.0.2. There should not be
   any reference to **org.opendaylight.controller**, except for 13.0.2.

 .. code-block:: shell

  bump-odl-version controller 12.0.2 13.0.2

5. Update the InfraUtils version from 7.1.10 to 7.1.12. There should not be
   any reference to **org.opendaylight.infrautils**, except for 7.1.12.

 .. code-block:: shell

  bump-odl-version infrautils 7.1.10 7.1.12

6. Update the AAA version from 0.22.3 to 0.23.2. There should not be
   any reference to **org.opendaylight.aaa**, except for 0.23.2.

 .. code-block:: shell

  bump-odl-version aaa 0.22.3 0.23.2

7. Update the NETCONF version from 10.0.2 to 11.0.0. There should not be
   any reference to **org.opendaylight.netconf**, except for 11.0.0.

 .. code-block:: shell

  bump-odl-version netconf 10.0.2 11.0.0

8. Update the gNMI version from 2.0.0 to 3.0.0. There should not be
   any reference to **org.opendaylight.gnmi**, except for 3.0.0.

 .. code-block:: shell

  bump-odl-version gnmi 2.0.0 3.0.0

Install Dependent Projects
^^^^^^^^^^^^^^^^^^^^^^^^^^
Before performing platform upgrade, users must also install
any dependent project. To locally install a dependent project,
pull and install the respective
`chromium-mri <https://git.opendaylight.org/gerrit/q/topic:chromium-mri>`_
changes for any dependent project.

Perform the following steps to save time when locally installing
any dependent project:

* For quick install:

 .. code-block:: shell

  mvn -Pq clean install

* If previously installed, go offline and/or use the
  no-snapshot-update option.

 .. code-block:: shell

  mvn -Pq -o -nsu clean install

Upgrade the ODL Parent
----------------------
The following sub-section describes how to upgrade to
the ODL Parent version 14. Refer to the `ODL Parent Release Notes
<https://github.com/opendaylight/odlparent/blob/master/docs/NEWS.rst#version-1431>`_
for more information.

Features
^^^^^^^^
Any version range referencing version of ODL Parent must be “[14,15)” for ODL Parent 14.

 .. code-block:: xml

   <feature name="odl-infrautils-caches">
       <feature version="[14,15)">odl-guava</feature>
   </feature>

ODL Parent Impacts
------------------
None. Just make sure to sync up with odlparent dependencies `as seen here.
<https://github.com/opendaylight/odlparent/compare/v14.1.7...v14.3.1>`_

YANG Tools Impacts
------------------

Remove YangModuleInfoImpl.getInstance():
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Since YANG Tools version 15 the ``getInstance()`` method has been removed and needs to be replaced using ``INSTANCE``.
See https://lf-opendaylight.atlassian.net/browse/YANGTOOLS-1780 for more details.

DefaultYangParserFactory does not require YangXPathParser:
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Remove this parameter as it is not required.
The example of new approach follows:

  .. code-block:: java

    final DefaultYangParserFactory defaultYangParserFactory = new DefaultYangParserFactory();

Add YangTextToIRSourceTransformer to ModuleInfoSnapshotResolver and SchemaResourceManager
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Add this parameter into initialization of these these classes.
For example:

  .. code-block:: java

    this.snapshotResolver = new ModuleInfoSnapshotResolver("binding-dom-codec",
        new DefaultYangTextToIRSourceTransformer(), yangParserFactory);

Add yang-xpath-impl and yin-source-dom dependencies if required
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Depending on your implementation, add these dependency to resolve IllegalState No YangXPathParserFactory found or
No YinTextToDOMSourceTransformer found.This Exception is thrown because DefaultYangParserFactory uses ServiceLoader to
try to lookup YangXPathParserFactory, and the YangXPathParserFactory was moved in:
https://lf-opendaylight.atlassian.net/browse/YANGTOOLS-1699
and
https://lf-opendaylight.atlassian.net/browse/YANGTOOLS-1707

  .. code-block:: xml

        <dependency>
            <groupId>org.opendaylight.yangtools</groupId>
            <artifactId>yang-xpath-impl</artifactId>
        </dependency>

  .. code-block:: xml

        <dependency>
            <groupId>org.opendaylight.yangtools</groupId>
            <artifactId>yin-source-dom</artifactId>
        </dependency>

ANTLR Parser and Lexer Refactoring
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The YANG parsing infrastructure has been significantly refactored to prevent leaking ANTLR dependencies to downstream
consumers. The original ``yang.parser.antlr`` implementation—which historically handled the YANG grammar,
``if-feature-expr``, and ``path-arg`` with fragmented exception handling—has been cleanly split:
https://lf-opendaylight.atlassian.net/browse/YANGTOOLS-1707

* **YANG Lexer API:** The base lexing functionality (which compiles files into an immutable object model without
  dealing with string un-escaping or ``yang-version`` semantics) is now formally defined by ``parser.spi.YangLexer``.
  The reference ANTLR-based implementation is provided by the new ``yang-lexer-ri`` artifact.

* **Relocated Grammars:** The ``if-feature-expr`` and ``path-arg`` parsing logic has been moved out of the core lexer
  and relocated to ``yang-parser-rfc7950`` (specifically alongside ``IfFeatureStatementSupport`` and
  ``PathStatementSupport`` in ``rfc7950-parser-support``), as these are strictly tied to RFC6020/RFC7950 semantics.

* **Unified Exception Handling:** The parsing infrastructure now strictly operates on the checked
  ``yang.parser.api.YangParserException``. This replaces the previous convoluted approach (where the main parser threw
  ``YangSyntaxErrorException`` and the others threw ``SourceException``). The unified exception natively includes explicit
  references to the ``SourceIdentifier`` and positional error data (line/row).

**Migration Steps:**

1. **Update Dependencies:** If your project directly depended on the old ``yang.parser.antlr`` artifact or explicitly
   referenced OpenDaylight's ANTLR classes, you must migrate to the new ``parser.spi.YangLexer`` API. Ensure you include
   the ``yang-lexer-ri`` artifact at runtime.

2. **Update Exception Handling:** Update your ``try-catch`` blocks to catch ``YangParserException`` instead of
   ``YangSyntaxErrorException`` or ``SourceException`` when interacting with the parser.

3. **Statement Parsing:** If your code explicitly parses ``if-feature`` or ``path`` arguments, ensure your module
   depends on the correct RFC7950 parser support artifacts, as these are no longer bundled in the base lexer.

Example of the refactor can be found in here:
https://github.com/opendaylight/gnmi/commit/659725225488248fb2a4e2eaf1e8751c767cbff4

Update DatabindContext import
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The DatabindContext was migrated to yangtools in:
https://github.com/opendaylight/yangtools/commit/2265500b3adbc7945f8ebd355e27b80e919bb046

Just update the import of this class to:

  .. code-block:: java

    import org.opendaylight.yangtools.databind.DatabindContext;

Split out model.api.meta.BuiltInType
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The constants previously found in ``TypeDefinitions`` have been migrated to the ``BuiltInType`` enumeration. When
checking against built-in type QNames, you must now use ``BuiltInType.<TYPE>.typeName()``.

Additionally, the ``getType()`` method in ``TypedDataSchemaNode`` has been renamed to ``typeDefinition()`` to better
align with the overall YANG model API naming conventions.

The example of the new approach follows:

  .. code-block:: java

    // 1. Getting the type definition from a TypedDataSchemaNode
    final var dataSchemaType = ((TypedDataSchemaNode) dataSchemaNode).typeDefinition();

    // 2. Comparing against built-in types
    if (qname.equals(BuiltInType.BOOLEAN.typeName())) {
        return Boolean.valueOf(value);
    } else if (qname.equals(BuiltInType.UINT32.typeName())) {
        return Uint32.valueOf(value);
    }

MD-SAL Impacts
--------------
None.

IETF Liaison Project Impacts
----------------------------

* Please take into account that since Vanadium YANG models related artifacts have been moved from
  ``MD-SAL`` to new ``ietf`` project. Update your dependencies accordingly. New group-id is ``org.opendaylight.ietf``.
* See `project proposal <https://lf-opendaylight.atlassian.net/wiki/spaces/ODL/pages/282525740/IETF+Liaison+Project>`__.

Netconf Impacts
---------------

OpenAPI: separate out jaxrs and netty
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This module was separated and depending on your implementation, you might need to add this dependency to use it

  .. code-block:: xml

        <dependency>
            <groupId>org.opendaylight.netconf</groupId>
            <artifactId>restconf-openapi-jaxrs</artifactId>
        </dependency>

For more info, follow:
https://lf-opendaylight.atlassian.net/browse/NETCONF-1605

Change OpenAPI base path handling
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

OpenAPI now gets base path from string instead of JaxRsEndpoint, so there is no need to rely on JaxRsEndpoint.
see: https://lf-opendaylight.atlassian.net/browse/NETCONF-1560

RESTCONF HTTP/3 Support and NettyEndpointConfiguration Impacts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

RESTCONF now natively supports an HTTP/3 (QUIC) listener. This listener bootstraps automatically when TLS
(certificate and private key) and a bind address/port are configured.

Because of this addition, the ``NettyEndpointConfiguration`` class constructors have been significantly expanded to
include binding, TLS, and HTTP/3 QUIC transport tuning parameters. If your code instantiates
``NettyEndpointConfiguration`` directly (such as in custom endpoints or integration tests), you must update your
constructor calls to include these new parameters:

* ``bindAddress`` (String, nullable)
* ``bindPort`` (int)
* ``tlsCertificate`` (X509Certificate, nullable)
* ``tlsPrivateKey`` (PrivateKey, nullable)
* ``http3AltSvcMaxAgeSeconds`` (Uint32)
* ``http3InitialMaxData`` (Uint64)
* ``http3InitialMaxStreamDataBidirectionalRemote`` (Uint64)
* ``http3InitialMaxStreamsBidirectional`` (Uint32)

The example of the new approach follows:

  .. code-block:: java

    final var configuration = new NettyEndpointConfiguration(
        ERROR_TAG_MAPPING, PrettyPrintParam.FALSE, Uint16.ZERO, Uint32.valueOf(1000),
        "rests", MessageEncoding.JSON, serverStackGrouping, CHUNK_SIZE, FRAME_SIZE, ALT_SVC_HEADER,
        bindAddress, bindPort, tlsCertificate, tlsPrivateKey,
        Uint32.valueOf(3600), // http3AltSvcMaxAgeSeconds
        Uint64.valueOf(4L * 1024 * 1024), // http3InitialMaxData
        Uint64.valueOf(256L * 1024), // http3InitialMaxStreamDataBidirectionalRemote
        Uint32.valueOf(100)); // http3InitialMaxStreamsBidirectional

Additionally, if you maintain custom Karaf features that package RESTCONF, you must add the new HTTP/3 dependencies
to your ``feature.xml``:

  .. code-block:: xml

    <feature version="[14,15)">odl-netty-http3</feature>
    <feature version="[14,15)">odl-netty-quic</feature>

Remove ConfigUtils.serverTransport{Tcp,Tls}
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Some previously-deprecated methods Were removed. Its replacements live in
HTTPServerOver{Tcp,Tls}.

  .. code-block:: java

        final var serverTransport = HTTPServerOverTcp.of(localAddress, CONTROLLER_PORT);


AAA Impacts
-----------

Refactor initial domain creation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

No need to add default domain into StoreBuilder.
https://lf-opendaylight.atlassian.net/browse/AAA-295

GNMI Impacts
------------

Rework GnmiSouthboundModule initialization
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Due to changes made in latest chromium gNMI release, we will no longer be
providing CrossSourceStatementReactor to GnmiSouthboundProvider as it
is no longer used, and was replaced with YangParserFactory and
YangTextToIRSourceTransformer.

New usage:

  .. code-block:: java

    gnmiProvider = new GnmiSouthboundProvider(
                domMountPointService,
                dataBroker,
                rpcProviderService,
                gnmiExecutor,
                prepareByPathLoaders(gnmiConfiguration),
                encryptionService,
                parserFactory,
                textToIrTransformer);

            gnmiProvider.init();
