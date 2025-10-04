.class public final Lcom/google/common/graph/ImmutableNetwork;
.super Lcom/google/common/graph/StandardNetwork;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
    containerOf = {
        "N",
        "E"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/ImmutableNetwork$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/StandardNetwork<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/graph/Network;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/graph/NetworkBuilder;->from(Lcom/google/common/graph/Network;)Lcom/google/common/graph/NetworkBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/common/graph/ImmutableNetwork;->getNodeConnections(Lcom/google/common/graph/Network;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p1}, Lcom/google/common/graph/ImmutableNetwork;->getEdgeToReferenceNode(Lcom/google/common/graph/Network;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, v0, v1, p1}, Lcom/google/common/graph/StandardNetwork;-><init>(Lcom/google/common/graph/NetworkBuilder;Ljava/util/Map;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static adjacentNodeFn(Lcom/google/common/graph/Network;Ljava/lang/Object;)Lcom/google/common/base/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;TN;)",
            "Lcom/google/common/base/Function<",
            "TE;TN;>;"
        }
    .end annotation

    .line 1
    new-instance v0, L딀돝땨듟땬둘땍뎰돵뒋듸드땀뒨땡돳돨땅땭땳뎠땫듟뒻듌땅돠땹땡둑듨딽뒛땨땬땪땯뎬디땬뎰둑땻듔듽딁딟땭딎딟뒹딁돼땄뒾딨뎻땬듨듽된됫땔딤땲땟뒤딸땲땀뎸땍듟딠딠뒵뒉딎땍뒐땱둠땤뎠돵딄땔딌둡돨뒹땨듐딅둣뎰돵됐돷돛땨땰뒤뒐듰땥땬뒨땁땵딟둔듼든돴딎땲딎딐땹뒛뒹뒋됨듸둣듬땔듻돷;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, L딀돝땨듟땬둘땍뎰돵뒋듸드땀뒨땡돳돨땅땭땳뎠땫듟뒻듌땅돠땹땡둑듨딽뒛땨땬땪땯뎬디땬뎰둑땻듔듽딁딟땭딎딟뒹딁돼땄뒾딨뎻땬듨듽된됫땔딤땲땟뒤딸땲땀뎸땍듟딠딠뒵뒉딎땍뒐땱둠땤뎠돵딄땔딌둡돨뒹땨듐딅둣뎰돵됐돷돛땨땰뒤뒐듰땥땬뒨땁땵딟둔듼든돴딎땲딎딐땹뒛뒹뒋됨듸둣듬땔듻돷;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static connectionsOf(Lcom/google/common/graph/Network;Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;TN;)",
            "Lcom/google/common/graph/NetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0}, Lcom/google/common/graph/ImmutableNetwork;->sourceNodeFn(Lcom/google/common/graph/Network;)Lcom/google/common/base/Function;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {p0}, Lcom/google/common/graph/ImmutableNetwork;->targetNodeFn(Lcom/google/common/graph/Network;)Lcom/google/common/base/Function;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {p0, p1, p1}, Lcom/google/common/graph/Network;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsParallelEdges()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    invoke-static {v0, v1, p1}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->ofImmutable(Ljava/util/Map;Ljava/util/Map;I)Lcom/google/common/graph/DirectedMultiNetworkConnections;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/google/common/graph/DirectedNetworkConnections;->ofImmutable(Ljava/util/Map;Ljava/util/Map;I)Lcom/google/common/graph/DirectedNetworkConnections;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :goto_0
    return-object p0

    .line 55
    :cond_1
    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/graph/ImmutableNetwork;->adjacentNodeFn(Lcom/google/common/graph/Network;Ljava/lang/Object;)Lcom/google/common/base/Function;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsParallelEdges()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    invoke-static {p1}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedMultiNetworkConnections;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-static {p1}, Lcom/google/common/graph/UndirectedNetworkConnections;->ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedNetworkConnections;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    :goto_1
    return-object p0
.end method

.method public static copyOf(Lcom/google/common/graph/ImmutableNetwork;)Lcom/google/common/graph/ImmutableNetwork;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ImmutableNetwork<",
            "TN;TE;>;)",
            "Lcom/google/common/graph/ImmutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/ImmutableNetwork;

    return-object p0
.end method

.method public static copyOf(Lcom/google/common/graph/Network;)Lcom/google/common/graph/ImmutableNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lcom/google/common/graph/ImmutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/graph/ImmutableNetwork;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/graph/ImmutableNetwork;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/graph/ImmutableNetwork;

    invoke-direct {v0, p0}, Lcom/google/common/graph/ImmutableNetwork;-><init>(Lcom/google/common/graph/Network;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static getEdgeToReferenceNode(Lcom/google/common/graph/Network;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TE;TN;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {p0, v2}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private static getNodeConnections(Lcom/google/common/graph/Network;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TN;",
            "Lcom/google/common/graph/NetworkConnections<",
            "TN;TE;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {p0, v2}, Lcom/google/common/graph/ImmutableNetwork;->connectionsOf(Lcom/google/common/graph/Network;Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method private static synthetic lambda$adjacentNodeFn$2(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/graph/EndpointPair;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic lambda$sourceNodeFn$0(Lcom/google/common/graph/Network;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair;->source()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic lambda$targetNodeFn$1(Lcom/google/common/graph/Network;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/graph/EndpointPair;->target()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static sourceNodeFn(Lcom/google/common/graph/Network;)Lcom/google/common/base/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lcom/google/common/base/Function<",
            "TE;TN;>;"
        }
    .end annotation

    .line 1
    new-instance v0, L듽딟돳뒵땠땹땻땫뒈딞듬돠땥딜딀뒙돴둣땤따딁땥둣돨됴돝뒈땜땍뒋땃둑딌뒙듨땡돰딝뎬둬땯땫땲땰뎰듔뎡디뒹뎡돨땸뎽돠땤뒛드뒼뎠딤땅땹듟듨됨땟뒹땁땃땫둘딄뒐땱뒋돰돝땬딎뎬땸땠됩뒼딞두됴돤두땹딤뎬도딁뒐득듐듌딜둠뎠딽뒼뎰딤땨땅땀되땄뒋듸뎽듔딤뒷드땝뒬땭딸든듬딄돵드땮딄둠딜;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, L듽딟돳뒵땠땹땻땫뒈딞듬돠땥딜딀뒙돴둣땤따딁땥둣돨됴돝뒈땜땍뒋땃둑딌뒙듨땡돰딝뎬둬땯땫땲땰뎰듔뎡디뒹뎡돨땸뎽돠땤뒛드뒼뎠딤땅땹듟듨됨땟뒹땁땃땫둘딄뒐땱뒋돰돝땬딎뎬땸땠됩뒼딞두됴돤두땹딤뎬도딁뒐득듐듌딜둠뎠딽뒼뎰딤땨땅땀되땄뒋듸뎽듔딤뒷드땝뒬땭딸든듬딄돵드땮딄둠딜;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static targetNodeFn(Lcom/google/common/graph/Network;)Lcom/google/common/base/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lcom/google/common/base/Function<",
            "TE;TN;>;"
        }
    .end annotation

    .line 1
    new-instance v0, L듽딟돳뒵땠땹땻땫뒈딞듬돠땥딜딀뒙돴둣땤따딁땥둣돨됴돝뒈땜땍뒋땃둑딌뒙듨땡돰딝뎬둬땯땫땲땰뎰듔뎡디뒹뎡돨땸뎽돠땤뒛드뒼뎠딤땅땹듟듨됨땟뒹땁땃땫둘딄뒐땱뒋돰돝땬딎뎬땸땠됩뒼딞두됴돤두땹딤뎬도딁뒐득듐듌딜둠뎠딽뒼뎰딤땨땅땀되땄뒋듸뎽듔딤뒷드땝뒬땭딸든듬딄돵드땮딄둠딜;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, L듽딟돳뒵땠땹땻땫뒈딞듬돠땥딜딀뒙돴둣땤따딁땥둣돨됴돝뒈땜땍뒋땃둑딌뒙듨땡돰딝뎬둬땯땫땲땰뎰듔뎡디뒹뎡돨땸뎽돠땤뒛드뒼뎠딤땅땹듟듨됨땟뒹땁땃땫둘딄뒐땱뒋돰돝땬딎뎬땸땠됩뒼딞두됴돤두땹딤뎬도딁뒐득듐듌딜둠뎠딽뒼뎰딤땨땅땀되땄뒋듸뎽듔딤뒷드땝뒬땭딸든듬딄돵드땮딄둠딜;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/google/common/graph/Network;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/graph/ImmutableNetwork;->lambda$targetNodeFn$1(Lcom/google/common/graph/Network;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/google/common/graph/Network;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/graph/ImmutableNetwork;->lambda$sourceNodeFn$0(Lcom/google/common/graph/Network;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/common/graph/ImmutableNetwork;->lambda$adjacentNodeFn$2(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/StandardNetwork;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic allowsParallelEdges()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/graph/StandardNetwork;->allowsParallelEdges()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic allowsSelfLoops()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/graph/StandardNetwork;->allowsSelfLoops()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic asGraph()Lcom/google/common/graph/Graph;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/graph/ImmutableNetwork;->asGraph()Lcom/google/common/graph/ImmutableGraph;

    move-result-object v0

    return-object v0
.end method

.method public asGraph()Lcom/google/common/graph/ImmutableGraph;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ImmutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/graph/ImmutableGraph;

    invoke-super {p0}, Lcom/google/common/graph/AbstractNetwork;->asGraph()Lcom/google/common/graph/Graph;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/graph/ImmutableGraph;-><init>(Lcom/google/common/graph/BaseGraph;)V

    return-object v0
.end method

.method public bridge synthetic edgeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/graph/StandardNetwork;->edgeOrder()Lcom/google/common/graph/ElementOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic edges()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/graph/StandardNetwork;->edges()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/StandardNetwork;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic inEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/StandardNetwork;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/StandardNetwork;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/StandardNetwork;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic isDirected()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/graph/StandardNetwork;->isDirected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic nodeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/graph/StandardNetwork;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic nodes()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/graph/StandardNetwork;->nodes()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic outEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/StandardNetwork;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/StandardNetwork;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/graph/StandardNetwork;->successors(Ljava/lang/Object;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
