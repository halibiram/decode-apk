.class final Lcom/google/common/graph/StandardMutableNetwork;
.super Lcom/google/common/graph/StandardNetwork;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/graph/MutableNetwork;


# annotations
.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/StandardNetwork<",
        "TN;TE;>;",
        "Lcom/google/common/graph/MutableNetwork<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/graph/NetworkBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/NetworkBuilder<",
            "-TN;-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/graph/StandardNetwork;-><init>(Lcom/google/common/graph/NetworkBuilder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/NetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/StandardMutableNetwork;->newConnections()Lcom/google/common/graph/NetworkConnections;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/common/graph/StandardNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    .line 6
    .line 7
    invoke-virtual {v1, p1, v0}, Lcom/google/common/graph/MapIteratorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private newConnections()Lcom/google/common/graph/NetworkConnections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/NetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/graph/StandardNetwork;->isDirected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/common/graph/StandardNetwork;->allowsParallelEdges()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->of()Lcom/google/common/graph/DirectedMultiNetworkConnections;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/google/common/graph/DirectedNetworkConnections;->of()Lcom/google/common/graph/DirectedNetworkConnections;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/graph/StandardNetwork;->allowsParallelEdges()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-static {}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->of()Lcom/google/common/graph/UndirectedMultiNetworkConnections;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-static {}, Lcom/google/common/graph/UndirectedNetworkConnections;->of()Lcom/google/common/graph/UndirectedNetworkConnections;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addEdge(Lcom/google/common/graph/EndpointPair;Ljava/lang/Object;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;TE;)Z"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->validateEndpoints(Lcom/google/common/graph/EndpointPair;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/graph/StandardMutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)Z"
        }
    .end annotation

    const/16 v0, 0x15

    const/4 v1, 0x1

    .line 1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v4, v3, [J

    fill-array-data v4, :array_0

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_1

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p3}, Lcom/google/common/graph/StandardNetwork;->containsEdge(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, p3}, Lcom/google/common/graph/StandardNetwork;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/common/graph/EndpointPair;->of(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/common/graph/EndpointPair;->equals(Ljava/lang/Object;)Z

    move-result p2

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0x10

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {p2, v1, p3, v0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v3

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/google/common/graph/StandardNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v2, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/NetworkConnections;

    .line 10
    invoke-virtual {p0}, Lcom/google/common/graph/StandardNetwork;->allowsParallelEdges()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v2}, Lcom/google/common/graph/NetworkConnections;->successors()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v0, [J

    fill-array-data v5, :array_4

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {v3, v4, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 14
    invoke-virtual {p0}, Lcom/google/common/graph/StandardNetwork;->allowsSelfLoops()Z

    move-result v4

    if-nez v4, :cond_4

    xor-int/lit8 v4, v3, 0x1

    .line 15
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_5

    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    if-nez v2, :cond_5

    .line 16
    invoke-direct {p0, p1}, Lcom/google/common/graph/StandardMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v2

    .line 17
    :cond_5
    invoke-interface {v2, p3, p2}, Lcom/google/common/graph/NetworkConnections;->addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/google/common/graph/StandardNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p2}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    if-nez v0, :cond_6

    .line 19
    invoke-direct {p0, p2}, Lcom/google/common/graph/StandardMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    .line 20
    :cond_6
    invoke-interface {v0, p3, p1, v3}, Lcom/google/common/graph/NetworkConnections;->addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 21
    iget-object p2, p0, Lcom/google/common/graph/StandardNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {p2, p3, p1}, Lcom/google/common/graph/MapIteratorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    nop

    :array_0
    .array-data 8
        0x5e57fafbe549f277L    # 2.9944319219855315E146
        -0x300b36e548bedffeL    # -1.504252418819121E77
    .end array-data

    :array_1
    .array-data 8
        0xb738c234fe61843L
        -0x77d027dae6cfb84dL
    .end array-data

    :array_2
    .array-data 8
        0x2670132505183d6L
        0x405ee26dcbec4390L    # 123.53795145104073
    .end array-data

    :array_3
    .array-data 8
        0x231b9c8d5e00222dL    # 1.44914727917978E-139
        0x6bdb2d00c16a28b1L    # 3.5737090811692967E211
        -0x498537e88241c8d0L    # -2.9319552178869953E-46
        0x6028b3f364c6799dL    # 1.656060880879232E155
        -0x4e0df2710e0a85daL    # -4.18513495288121E-68
        -0x735d37a35ef63213L    # -8.39480771669399E-248
        -0x6d6ec08811f81221L    # -3.053795764794968E-219
        0x5df7c62e43d97618L    # 4.638556115323198E144
        0x1113852f632ebbd4L    # 2.0600072130819083E-226
        0xd2fd0a00f28292fL
        -0x6da8734c709cdd40L
        0x7fd7752446ab573cL    # 6.588990487028827E307
        0x43b297a602867eb2L    # 1.33972194394260736E18
        -0x35b187c305a071b0L    # -8.906297573545067E49
        0x4e76ef338c5b399fL    # 9.892954721810567E69
        -0xa02890238264824L    # -2.265165374198148E260
    .end array-data

    :array_4
    .array-data 8
        -0x4c2d4e7430796102L    # -4.653207298929871E-59
        -0x76626ba1a2d3e41fL    # -2.348418921285695E-262
        -0x2a69bf7c0af9b207L    # -1.9935532101149057E104
        0x47f2e21511c0bfebL    # 4.015998456206549E38
        0x71639a657a033a17L    # 1.5956277646319192E238
        0x45ec4fbfcbbeab15L    # 7.009592916138873E28
        -0x47049ca0b6ba77bdL    # -3.2967313705867466E-34
        -0x4a82a5d882df2e60L
        0x30443e4e52347bf2L    # 3.49650528264652E-76
        0x3791f6b4f5a1f582L    # 5.155328703275614E-41
        -0x15214f76681e418cL    # -6.158121649578763E206
        -0x1d7cbbfef4c9449eL
        -0x3f227c10482006f1L    # -30223.74559783289
        0x1965d2c711fbc636L
        -0x5cba51cd61838fb8L    # -9.102915216809886E-139
        -0x1e79ffbb545bb29bL    # -6.186301098072909E161
        -0x524623d431398fc5L    # -2.0311899252145773E-88
        -0x2dd5deef03387a9aL    # -6.497320564992945E87
        0x215c58e48ffaf77bL
        -0x12135120d246e93fL    # -3.2400581931244595E221
        -0x6f1dc159d4fe0610L
    .end array-data

    :array_5
    .array-data 8
        -0x3fabde25e2589b57L    # -80.52893773409836
        -0x164d08c2eafae47fL    # -1.4517362888515128E201
        -0x76d89bedffe29d65L
        -0x5bd044be1d399ea0L
        -0x4eaf5428c18f2679L    # -3.774237950470798E-71
        0x62e7276774f34f1fL    # 2.730688532327901E168
        -0x31ad7f91bc7a4caaL    # -1.995217492886856E69
        -0x46da6566262d9017L    # -2.0803808667467954E-33
        -0x53ae595b1da8d093L    # -3.305442052881249E-95
        0x863393b850ce63dL
        0x410d38abfb2615bdL    # 239381.49763123496
        0x1780af7e6bb64412L
        -0x760948301969337aL
        0x470efe3265d46749L    # 2.011557883978301E34
        -0x46be3f1bbca735f9L    # -6.838392912342073E-33
        -0x3d3eeed7d7b38932L    # -3.753077169175761E13
        0x3d54f42aef913e85L    # 2.9777112542416306E-13
        0x783b8f96b1a634ceL    # 1.4560269128099433E271
        0x2d0e5d48de2087e6L    # 1.1645440926247998E-91
        -0x4830d149a37ba394L    # -7.159144035889796E-40
        0x23d53f7df387fed9L    # 4.567729165696555E-136
    .end array-data
.end method

.method public addNode(Ljava/lang/Object;)Z
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/google/common/graph/StandardNetwork;->containsNode(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/graph/StandardMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x29833be968083131L
        0x729fc9bc155d959dL    # 1.3565633109324872E244
    .end array-data
.end method

.method public removeEdge(Ljava/lang/Object;)Z
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/common/graph/StandardNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/google/common/graph/StandardNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/google/common/graph/NetworkConnections;

    .line 36
    .line 37
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    check-cast v2, Lcom/google/common/graph/NetworkConnections;

    .line 41
    .line 42
    invoke-interface {v2, p1}, Lcom/google/common/graph/NetworkConnections;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v4, p0, Lcom/google/common/graph/StandardNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/google/common/graph/NetworkConnections;

    .line 53
    .line 54
    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    check-cast v4, Lcom/google/common/graph/NetworkConnections;

    .line 58
    .line 59
    invoke-interface {v2, p1}, Lcom/google/common/graph/NetworkConnections;->removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/common/graph/StandardNetwork;->allowsSelfLoops()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v5, 0x1

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    :cond_1
    invoke-interface {v4, p1, v1}, Lcom/google/common/graph/NetworkConnections;->removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/google/common/graph/StandardNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    return v5

    .line 85
    :array_0
    .array-data 8
        -0x7acc23ce4079a9b3L    # -1.335568814530782E-283
        -0x6a768dd6d7fba44cL
    .end array-data
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/common/graph/StandardNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_0
    invoke-interface {v0}, Lcom/google/common/graph/NetworkConnections;->incidentEdges()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0, v1}, Lcom/google/common/graph/StandardMutableNetwork;->removeEdge(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/StandardNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    return p1

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        0x5ac7b0e39a209502L    # 2.0527263335090607E129
        0x2d9aa715fb7c7145L    # 5.233619726691314E-89
    .end array-data
.end method
