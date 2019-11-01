Sodium-SR1 Release Notes
========================

This page details changes and bug fixes between the Sodium Release
and the Sodium Stability Release 1 (Sodium-SR1) of OpenDaylight.

Projects with No Noteworthy Changes
-----------------------------------


aaa
---
* `96e5830d <https://git.opendaylight.org/gerrit/#/q/96e5830d>`_
  : Disable slf4j SSL link
* `4ffa85f4 <https://git.opendaylight.org/gerrit/#/q/4ffa85f4>`_
  : Reduce javadoc links
* `10f7067d <https://git.opendaylight.org/gerrit/#/q/10f7067d>`_
  : Add modernizer suppressions
* `b284c4b1 <https://git.opendaylight.org/gerrit/#/q/b284c4b1>`_
  : Fix a yangtools misreference
* `264e8fea <https://git.opendaylight.org/gerrit/#/q/264e8fea>`_
  : Bump mdsal to 4.0.6
* `624f69c1 <https://git.opendaylight.org/gerrit/#/q/624f69c1>`_
  : Bump odlparent to 5.0.2


bgpcep
------
* `67ada25c9 <https://git.opendaylight.org/gerrit/#/q/67ada25c9>`_
  : Update docs header to Sodium in stable/sodium
* `f7af474a5 <https://git.opendaylight.org/gerrit/#/q/f7af474a5>`_
  : Bump mdsal to 4.0.6
* `42a8da504 <https://git.opendaylight.org/gerrit/#/q/42a8da504>`_
  : Bump yangtools to 3.0.5
* `4110f0274 <https://git.opendaylight.org/gerrit/#/q/4110f0274>`_
  : Bump odlparent to 5.0.2
* `a6d68c151 <https://git.opendaylight.org/gerrit/#/q/a6d68c151>`_
  : Reduce use of Lists.new*List()
* `7872aa82d <https://git.opendaylight.org/gerrit/#/q/7872aa82d>`_
  : Fix checkstyle violations
* `443d3c9a9 <https://git.opendaylight.org/gerrit/#/q/443d3c9a9>`_
  : Migrate NodeIdentifierWithPredicates users


controller
----------
* `51c8d31e67 <https://git.opendaylight.org/gerrit/#/q/51c8d31e67>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Use careful byte-masking/shifting in Mg Input
* `1be865aa2c <https://git.opendaylight.org/gerrit/#/q/1be865aa2c>`_
  : Disable slf4j SSL link
* `6d0313e289 <https://git.opendaylight.org/gerrit/#/q/6d0313e289>`_
  : Register MXBean only during start
* `d6875afc77 <https://git.opendaylight.org/gerrit/#/q/d6875afc77>`_
  `CONTROLLER-1920 <https://jira.opendaylight.org/browse/CONTROLLER-1920>`_
  : Split up transaction chunks
* `bc6c86ebab <https://git.opendaylight.org/gerrit/#/q/bc6c86ebab>`_
  : Use ReusableNormalizedNodeReceiver
* `6168e3ada0 <https://git.opendaylight.org/gerrit/#/q/6168e3ada0>`_
  : Fixup docs references
* `36b223eaa4 <https://git.opendaylight.org/gerrit/#/q/36b223eaa4>`_
  : Do not update term from unreachable members
* `219d4854c0 <https://git.opendaylight.org/gerrit/#/q/219d4854c0>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Define PayloadVersion.MAGNESIUM
* `17c2cdf512 <https://git.opendaylight.org/gerrit/#/q/17c2cdf512>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Define DataStoreVersions.MAGNESIUM_VERSION
* `27cd8569a6 <https://git.opendaylight.org/gerrit/#/q/27cd8569a6>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Add cds-access-api MAGNESIUM version
* `f19d751c62 <https://git.opendaylight.org/gerrit/#/q/f19d751c62>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Define PayloadVersion.SODIUM_SR1
* `9e0a82e03d <https://git.opendaylight.org/gerrit/#/q/9e0a82e03d>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Switch ABIVersion/DataStoreVersions back to Neon SR2
* `816b8424db <https://git.opendaylight.org/gerrit/#/q/816b8424db>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Define DataStoreVersions.SODIUM_SR1_VERSION
* `1650d581fe <https://git.opendaylight.org/gerrit/#/q/1650d581fe>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Add cds-access-api SODIUM_SR1 version
* `66086b54b2 <https://git.opendaylight.org/gerrit/#/q/66086b54b2>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Add Magnesium stream version
* `33b722cd65 <https://git.opendaylight.org/gerrit/#/q/33b722cd65>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Add LithiumSR1 input/output support
* `d250ac0243 <https://git.opendaylight.org/gerrit/#/q/d250ac0243>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Add Magnesium encoding tokens
* `2d9e3b5a95 <https://git.opendaylight.org/gerrit/#/q/2d9e3b5a95>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Add an explicit namespace sharing test
* `82503776b9 <https://git.opendaylight.org/gerrit/#/q/82503776b9>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Move Neon SR2 tokens into its own class
* `a9b52bf8b7 <https://git.opendaylight.org/gerrit/#/q/a9b52bf8b7>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Rename ValueTypes to LithiumValue
* `2059bc2827 <https://git.opendaylight.org/gerrit/#/q/2059bc2827>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Rename PathArgumentTypes to LithiumPathArgument
* `86519138c9 <https://git.opendaylight.org/gerrit/#/q/86519138c9>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Rename NodeTypes to LithiumNode
* `03d96bfe16 <https://git.opendaylight.org/gerrit/#/q/03d96bfe16>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Move Lithium tokens to their own class
* `2b957f3805 <https://git.opendaylight.org/gerrit/#/q/2b957f3805>`_
  : Suppress modernization
* `49809b5cff <https://git.opendaylight.org/gerrit/#/q/49809b5cff>`_
  : Migrate from YangInstanceIdentifier.EMPTY
* `e1ab83451c <https://git.opendaylight.org/gerrit/#/q/e1ab83451c>`_
  : Mark historic DataStoreVersions deprecated
* `e7583b7058 <https://git.opendaylight.org/gerrit/#/q/e7583b7058>`_
  : Bump mdsal to 4.0.6
* `61631d3719 <https://git.opendaylight.org/gerrit/#/q/61631d3719>`_
  : Bump yangtools to 3.0.5
* `c3839997c6 <https://git.opendaylight.org/gerrit/#/q/c3839997c6>`_
  : Bump odlparent to 5.0.2
* `45ee083e86 <https://git.opendaylight.org/gerrit/#/q/45ee083e86>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Use explicit versioning in MetadataShardDataTreeSnapshot
* `28c91e1e6c <https://git.opendaylight.org/gerrit/#/q/28c91e1e6c>`_
  : Add more serialization assertions
* `2c60dab1b2 <https://git.opendaylight.org/gerrit/#/q/2c60dab1b2>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Add a 100K-entry test
* `b843cd2e6a <https://git.opendaylight.org/gerrit/#/q/b843cd2e6a>`_
  `CONTROLLER-1919 <https://jira.opendaylight.org/browse/CONTROLLER-1919>`_
  : Add encoding size asserts
* `d71ff207d7 <https://git.opendaylight.org/gerrit/#/q/d71ff207d7>`_
  : Separate out AbstractNormalizedNodeDataInput
* `3e54a7ee64 <https://git.opendaylight.org/gerrit/#/q/3e54a7ee64>`_
  : Add @SupressFBWarnings around Await.result()
* `5d9451d60b <https://git.opendaylight.org/gerrit/#/q/5d9451d60b>`_
  : Make sure we know the version we encountered
* `199bd8bd24 <https://git.opendaylight.org/gerrit/#/q/199bd8bd24>`_
  : Optimize anyxml output
* `da733a0fd4 <https://git.opendaylight.org/gerrit/#/q/da733a0fd4>`_
  : Move Lithium-specific logic from AbstractNormalizedNodeDataOutput
* `4bab20f395 <https://git.opendaylight.org/gerrit/#/q/4bab20f395>`_
  : Remove ensureHeaderWritten() from writeNode()
* `7086c00686 <https://git.opendaylight.org/gerrit/#/q/7086c00686>`_
  : Reorganize AbstractNormalizedNodeDataOutput
* `e9fbfe9cca <https://git.opendaylight.org/gerrit/#/q/e9fbfe9cca>`_
  : Split out AbstractLithiumDataInput
* `86aed4a9a3 <https://git.opendaylight.org/gerrit/#/q/86aed4a9a3>`_
  : Cleanup PathArgumentTypes
* `239cc7b989 <https://git.opendaylight.org/gerrit/#/q/239cc7b989>`_
  : AbstractNormalizedNodeDataOutput fails to write out header
* `0c7f9afaca <https://git.opendaylight.org/gerrit/#/q/0c7f9afaca>`_
  : Tighten AbstractLithiumDataOutput.writeString()
* `65f9a729fd <https://git.opendaylight.org/gerrit/#/q/65f9a729fd>`_
  : Remove NormalizedNodeOutputStreamWriter
* `5750501908 <https://git.opendaylight.org/gerrit/#/q/5750501908>`_
  : Disconnect {Lithium,NeonSR2} implementations
* `44c2a672ae <https://git.opendaylight.org/gerrit/#/q/44c2a672ae>`_
  : Lower ValueTypes constant visibility
* `05f092890b <https://git.opendaylight.org/gerrit/#/q/05f092890b>`_
  : Fix checkstyle/spotbugs violations
* `51404ca5fc <https://git.opendaylight.org/gerrit/#/q/51404ca5fc>`_
  : Cleanup ValueTypes lookup
* `b0d6c04dfc <https://git.opendaylight.org/gerrit/#/q/b0d6c04dfc>`_
  `CONTROLLER-1908 <https://jira.opendaylight.org/browse/CONTROLLER-1908>`_
  : Deduplicate MapNode key leaf values
* `4ceac9e1c4 <https://git.opendaylight.org/gerrit/#/q/4ceac9e1c4>`_
  : Move common code to startNode()
* `dc73c367b4 <https://git.opendaylight.org/gerrit/#/q/dc73c367b4>`_
  : Reduce reliance on Guava Fuction/Supplier
* `37cdbd3d1e <https://git.opendaylight.org/gerrit/#/q/37cdbd3d1e>`_
  : Fix modernization issues
* `a28080b967 <https://git.opendaylight.org/gerrit/#/q/a28080b967>`_
  : Clean up opendaylight-inventory model
* `294c1ccaad <https://git.opendaylight.org/gerrit/#/q/294c1ccaad>`_
  `CONTROLLER-1382 <https://jira.opendaylight.org/browse/CONTROLLER-1382>`_
  : Revert "Bug 3871: Deprecate opendaylight-inventory model."
* `4c48966122 <https://git.opendaylight.org/gerrit/#/q/4c48966122>`_
  : Fixup chunk offset movement on resend
* `887d45367b <https://git.opendaylight.org/gerrit/#/q/887d45367b>`_
  : Lost commit index when a snapshot is captured
* `1032f539c0 <https://git.opendaylight.org/gerrit/#/q/1032f539c0>`_
  : Drop public modifier from NodeTypes
* `84c278d49a <https://git.opendaylight.org/gerrit/#/q/84c278d49a>`_
  : Rename SodiumNormalizedNode* classes
* `c28d67e3ba <https://git.opendaylight.org/gerrit/#/q/c28d67e3ba>`_
  : Move DataNormalizationOperation methods
* `a04084f57c <https://git.opendaylight.org/gerrit/#/q/a04084f57c>`_
  : Final bits of NodeIdentifier migration
* `940361985c <https://git.opendaylight.org/gerrit/#/q/940361985c>`_
  : Another round of checkstyle fixes


coe
---
* `659474f <https://git.opendaylight.org/gerrit/#/q/659474f>`_
  : Bump mdsal to 4.0.6
* `7f67993 <https://git.opendaylight.org/gerrit/#/q/7f67993>`_
  : Bump odlparent to 5.0.2
* `87e787c <https://git.opendaylight.org/gerrit/#/q/87e787c>`_
  : Fixup checkstyle


daexim
------
* `2e68793 <https://git.opendaylight.org/gerrit/#/q/2e68793>`_
  : Update docs header to Sodium in stable/sodium
* `fa7b403 <https://git.opendaylight.org/gerrit/#/q/fa7b403>`_
  : Bump mdsal to 4.0.6
* `686cd3f <https://git.opendaylight.org/gerrit/#/q/686cd3f>`_
  : Bump odlparent to 5.0.2


genius
------
* `5d71682e <https://git.opendaylight.org/gerrit/#/q/5d71682e>`_
  : Bump mdsal to 4.0.6
* `981bc04d <https://git.opendaylight.org/gerrit/#/q/981bc04d>`_
  : Bump yangtools to 3.0.5
* `0bd9ef06 <https://git.opendaylight.org/gerrit/#/q/0bd9ef06>`_
  : Bump odlparent to 5.0.2
* `f9cbc8b6 <https://git.opendaylight.org/gerrit/#/q/f9cbc8b6>`_
  : Fix checkstyle


infrautils
----------
* `2a7877bf <https://git.opendaylight.org/gerrit/#/q/2a7877bf>`_
  : Pre-compute string constants
* `925d8743 <https://git.opendaylight.org/gerrit/#/q/925d8743>`_
  : Bump odlparent to 5.0.2
* `e7d611b6 <https://git.opendaylight.org/gerrit/#/q/e7d611b6>`_
  : Fix checkstyle
* `4bb5c3cc <https://git.opendaylight.org/gerrit/#/q/4bb5c3cc>`_
  : Remove modernizer configuration


integration/distribution
------------------------
* `7935dc0 <https://git.opendaylight.org/gerrit/#/q/7935dc0>`_
  : Update common dist version after Sodium GA
* `da75b04 <https://git.opendaylight.org/gerrit/#/q/da75b04>`_
  : Bump MRI versions
* `bb4a10c <https://git.opendaylight.org/gerrit/#/q/bb4a10c>`_
  : Enable TPCE and JSON-RPC in sodium distribution


lispflowmapping
---------------
* `2eb30531 <https://git.opendaylight.org/gerrit/#/q/2eb30531>`_
  : Bump mdsal to 4.0.6
* `b58f316b <https://git.opendaylight.org/gerrit/#/q/b58f316b>`_
  : Bump odlparent to 5.0.2
* `13f509c3 <https://git.opendaylight.org/gerrit/#/q/13f509c3>`_
  : Fix checkstyle violations


netconf
-------
* `975f420ff <https://git.opendaylight.org/gerrit/#/q/975f420ff>`_
  : Add pagination for mounted resources of apidocs
* `723a83ca8 <https://git.opendaylight.org/gerrit/#/q/723a83ca8>`_
  `NETCONF-352 <https://jira.opendaylight.org/browse/NETCONF-352>`_
  : Reorganize transactionChainHandler usage.
* `6f5deb203 <https://git.opendaylight.org/gerrit/#/q/6f5deb203>`_
  : Migrate YangInstanceIdentifier.EMPTY users
* `7dd051ef0 <https://git.opendaylight.org/gerrit/#/q/7dd051ef0>`_
  : Remove use NodeIdentifierWithPredices.getKeyValues()
* `47fc3bf9d <https://git.opendaylight.org/gerrit/#/q/47fc3bf9d>`_
  : Separate out DeviceSources(Resolver)
* `892276900 <https://git.opendaylight.org/gerrit/#/q/892276900>`_
  : Simplify base schema lookups
* `ef66f2aad <https://git.opendaylight.org/gerrit/#/q/ef66f2aad>`_
  `NETCONF-639 <https://jira.opendaylight.org/browse/NETCONF-639>`_
  : Fix choice action request test
* `8aa0cfe74 <https://git.opendaylight.org/gerrit/#/q/8aa0cfe74>`_
  : Propagate MountPointContext to NetconfMessageTransformer
* `75e306196 <https://git.opendaylight.org/gerrit/#/q/75e306196>`_
  : Update NodeIdentifierWithPredicates construction
* `4e77b03ae <https://git.opendaylight.org/gerrit/#/q/4e77b03ae>`_
  `NETCONF-639 <https://jira.opendaylight.org/browse/NETCONF-639>`_
  : Fix action lookups
* `eafd00e52 <https://git.opendaylight.org/gerrit/#/q/eafd00e52>`_
  : Teach BaseSchema about schema mounts
* `f53a84015 <https://git.opendaylight.org/gerrit/#/q/f53a84015>`_
  : More SchemaContext reuse
* `121008c97 <https://git.opendaylight.org/gerrit/#/q/121008c97>`_
  : Reuse schemacontext in ListenerAdapterTest
* `1576b451b <https://git.opendaylight.org/gerrit/#/q/1576b451b>`_
  : Reuse SchemaContext in RuntimeRpcTest
* `50c0a463d <https://git.opendaylight.org/gerrit/#/q/50c0a463d>`_
  : Reuse schemaContext in mdsal-netconf-connector tests
* `66c5a4233 <https://git.opendaylight.org/gerrit/#/q/66c5a4233>`_
  : Reuse SchemaContext in NetconfCommandsImplTest
* `14757a264 <https://git.opendaylight.org/gerrit/#/q/14757a264>`_
  : Reuse SchemaContext in NetconfDeviceTopologyAdapterTest
* `4435526f5 <https://git.opendaylight.org/gerrit/#/q/4435526f5>`_
  : Share test model SchemaContext
* `e5b8c699a <https://git.opendaylight.org/gerrit/#/q/e5b8c699a>`_
  : Close module URL stream as soon as possible
* `cea6b159d <https://git.opendaylight.org/gerrit/#/q/cea6b159d>`_
  : Use constant NodeIdentifiers in LibraryModulesSchemas
* `24f9babdf <https://git.opendaylight.org/gerrit/#/q/24f9babdf>`_
  : Reduce code duplication in LibraryModulesSchemas
* `5350d2516 <https://git.opendaylight.org/gerrit/#/q/5350d2516>`_
  : Shorten nested class references
* `e44407442 <https://git.opendaylight.org/gerrit/#/q/e44407442>`_
  : Simplify guessJsonFromFileName()
* `fd287393a <https://git.opendaylight.org/gerrit/#/q/fd287393a>`_
  : LibraryModulesSchemas.availableModels is immutable
* `920a998c2 <https://git.opendaylight.org/gerrit/#/q/920a998c2>`_
  : Cleanup state checking
* `9ce3a5679 <https://git.opendaylight.org/gerrit/#/q/9ce3a5679>`_
  : Centralize NETCONF_(DATA)_QNAME
* `cd90b42ac <https://git.opendaylight.org/gerrit/#/q/cd90b42ac>`_
  : Simplify GET_SCHEMAS_RPC initialization
* `7aa9f6ba7 <https://git.opendaylight.org/gerrit/#/q/7aa9f6ba7>`_
  : Improve action lookup
* `bfb98ea90 <https://git.opendaylight.org/gerrit/#/q/bfb98ea90>`_
  : Make NetconfMessageTransformer.getActions() static
* `abccfa85e <https://git.opendaylight.org/gerrit/#/q/abccfa85e>`_
  : Reuse schema in NetconfMessageTransformerTest
* `6c177b8a0 <https://git.opendaylight.org/gerrit/#/q/6c177b8a0>`_
  : Remove unneeded type arguments
* `e700e3106 <https://git.opendaylight.org/gerrit/#/q/e700e3106>`_
  : Cleanup toRpcResult()
* `f67f8c229 <https://git.opendaylight.org/gerrit/#/q/f67f8c229>`_
  : Make mappedRpcs an ImmutableMap
* `1ea17d0dc <https://git.opendaylight.org/gerrit/#/q/1ea17d0dc>`_
  : Make notification filter a simple lambda
* `21f231413 <https://git.opendaylight.org/gerrit/#/q/21f231413>`_
  : Fix schema source registrations not being cleared
* `50e58b477 <https://git.opendaylight.org/gerrit/#/q/50e58b477>`_
  : Introduce CREATE_SUBSCRIPTION_RPC_PATH
* `9cba5885e <https://git.opendaylight.org/gerrit/#/q/9cba5885e>`_
  : Fix mdsal reference
* `4f496bbf4 <https://git.opendaylight.org/gerrit/#/q/4f496bbf4>`_
  : Bump mdsal to 4.0.6
* `9dca3efa9 <https://git.opendaylight.org/gerrit/#/q/9dca3efa9>`_
  : Bump yangtools to 3.0.5
* `a1dc9a431 <https://git.opendaylight.org/gerrit/#/q/a1dc9a431>`_
  : Bump odlparent to 5.0.2
* `a8d8326c8 <https://git.opendaylight.org/gerrit/#/q/a8d8326c8>`_
  `NETCONF-618 <https://jira.opendaylight.org/browse/NETCONF-618>`_
  : Teach RFC8040 restconf about actions
* `218bcbb83 <https://git.opendaylight.org/gerrit/#/q/218bcbb83>`_
  : Fix checkstyle
* `a88ce37a5 <https://git.opendaylight.org/gerrit/#/q/a88ce37a5>`_
  : Fix checkstyle
* `f0525c56b <https://git.opendaylight.org/gerrit/#/q/f0525c56b>`_
  `NETCONF-635 <https://jira.opendaylight.org/browse/NETCONF-635>`_
  : Teach NETCONF about YANG 1.1 actions in cluster topology
* `ce55cfb19 <https://git.opendaylight.org/gerrit/#/q/ce55cfb19>`_
  `NETCONF-538 <https://jira.opendaylight.org/browse/NETCONF-538>`_
  : Teach AbstractGet how to transform MapNodes
* `a1b5f0e56 <https://git.opendaylight.org/gerrit/#/q/a1b5f0e56>`_
  : Simplify RestconfValidationUtils users


netvirt
-------
* `9a2ff446a <https://git.opendaylight.org/gerrit/#/q/9a2ff446a>`_
  : Bump mdsal to 4.0.6
* `37562abd1 <https://git.opendaylight.org/gerrit/#/q/37562abd1>`_
  : Bump odlparent to 5.0.2
* `f7bc41b85 <https://git.opendaylight.org/gerrit/#/q/f7bc41b85>`_
  : Fix checkstyle


neutron
-------
* `8c7f1344 <https://git.opendaylight.org/gerrit/#/q/8c7f1344>`_
  : Bump mdsal to 4.0.6
* `62baa86d <https://git.opendaylight.org/gerrit/#/q/62baa86d>`_
  : Bump odlparent to 5.0.2


openflowplugin
--------------
* `3441b9a62 <https://git.opendaylight.org/gerrit/#/q/3441b9a62>`_
  : Fix odlparent reference
* `1088cf99b <https://git.opendaylight.org/gerrit/#/q/1088cf99b>`_
  : Bump mdsal to 4.0.6
* `24f98ed80 <https://git.opendaylight.org/gerrit/#/q/24f98ed80>`_
  : Bump odlparent to 5.0.2
* `04d54fe8e <https://git.opendaylight.org/gerrit/#/q/04d54fe8e>`_
  : Fix checkstyle


ovsdb
-----
* `40686bcba <https://git.opendaylight.org/gerrit/#/q/40686bcba>`_
  : Bump mdsal to 4.0.6
* `9c1cee626 <https://git.opendaylight.org/gerrit/#/q/9c1cee626>`_
  : Bump odlparent to 5.0.2
* `66d9813b7 <https://git.opendaylight.org/gerrit/#/q/66d9813b7>`_
  : Fix checkstyle


serviceutils
------------
* `190a661 <https://git.opendaylight.org/gerrit/#/q/190a661>`_
  : Bump mdsal to 4.0.6
* `e5dbd90 <https://git.opendaylight.org/gerrit/#/q/e5dbd90>`_
  : Bump yangtools to 3.0.5
* `afcd89f <https://git.opendaylight.org/gerrit/#/q/afcd89f>`_
  : Bump odlparent to 5.0.2
* `6ab89c4 <https://git.opendaylight.org/gerrit/#/q/6ab89c4>`_
  : Fix checkstyle


sfc
---
* `2f89800c <https://git.opendaylight.org/gerrit/#/q/2f89800c>`_
  : Bump mdsal to 4.0.6
* `ba9ffe47 <https://git.opendaylight.org/gerrit/#/q/ba9ffe47>`_
  : Bump odlparent to 5.0.2
* `273d3eb1 <https://git.opendaylight.org/gerrit/#/q/273d3eb1>`_
  : Fix checkstyle

