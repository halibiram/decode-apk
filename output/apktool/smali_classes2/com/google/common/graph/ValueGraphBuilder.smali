.class public final Lcom/google/common/graph/ValueGraphBuilder;
.super Lcom/google/common/graph/AbstractGraphBuilder;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractGraphBuilder<",
        "TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/graph/AbstractGraphBuilder;-><init>(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private cast()Lcom/google/common/graph/ValueGraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN1;TV1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public static directed()Lcom/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/ValueGraphBuilder;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static from(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/ValueGraphBuilder;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->allowsSelfLoops()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;->allowsSelfLoops(Z)Lcom/google/common/graph/ValueGraphBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;->nodeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/ValueGraphBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->incidentEdgeOrder()Lcom/google/common/graph/ElementOrder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Lcom/google/common/graph/ValueGraphBuilder;->incidentEdgeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/ValueGraphBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static undirected()Lcom/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/ValueGraphBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public allowsSelfLoops(Z)Lcom/google/common/graph/ValueGraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/common/graph/AbstractGraphBuilder;->allowsSelfLoops:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/google/common/graph/MutableValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lcom/google/common/graph/MutableValueGraph<",
            "TN1;TV1;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/StandardMutableValueGraph;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/graph/StandardMutableValueGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public copy()Lcom/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/ValueGraphBuilder;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/google/common/graph/AbstractGraphBuilder;->directed:Z

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/google/common/graph/AbstractGraphBuilder;->allowsSelfLoops:Z

    .line 9
    .line 10
    iput-boolean v1, v0, Lcom/google/common/graph/AbstractGraphBuilder;->allowsSelfLoops:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/common/graph/AbstractGraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/google/common/graph/AbstractGraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/common/graph/AbstractGraphBuilder;->expectedNodeCount:Lcom/google/common/base/Optional;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/google/common/graph/AbstractGraphBuilder;->expectedNodeCount:Lcom/google/common/base/Optional;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/common/graph/AbstractGraphBuilder;->incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/google/common/graph/AbstractGraphBuilder;->incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;

    .line 23
    .line 24
    return-object v0
.end method

.method public expectedNodeCount(I)Lcom/google/common/graph/ValueGraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/graph/Graphs;->checkNonNegative(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/google/common/graph/AbstractGraphBuilder;->expectedNodeCount:Lcom/google/common/base/Optional;

    .line 14
    .line 15
    return-object p0
.end method

.method public immutable()Lcom/google/common/graph/ImmutableValueGraph$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lcom/google/common/graph/ImmutableValueGraph$Builder<",
            "TN1;TV1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/ValueGraphBuilder;->cast()Lcom/google/common/graph/ValueGraphBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/common/graph/ImmutableValueGraph$Builder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/google/common/graph/ImmutableValueGraph$Builder;-><init>(Lcom/google/common/graph/ValueGraphBuilder;)V

    .line 8
    .line 9
    .line 10
    return-object v1
.end method

.method public incidentEdgeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/ValueGraphBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lcom/google/common/graph/ElementOrder<",
            "TN1;>;)",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN1;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->UNORDERED:Lcom/google/common/graph/ElementOrder$Type;

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->STABLE:Lcom/google/common/graph/ElementOrder$Type;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/16 v2, 0x12

    .line 24
    .line 25
    new-array v2, v2, [J

    .line 26
    .line 27
    fill-array-data v2, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/google/common/graph/ValueGraphBuilder;->cast()Lcom/google/common/graph/ValueGraphBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/google/common/graph/ElementOrder;

    .line 49
    .line 50
    iput-object p1, v0, Lcom/google/common/graph/AbstractGraphBuilder;->incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;

    .line 51
    .line 52
    return-object v0

    .line 53
    :array_0
    .array-data 8
        0x5021b525a126f9d0L    # 1.0252003141006457E78
        0x634440a9802ac666L    # 1.5286499996718198E170
        -0x19fa67fa8509ee6L    # -5.474610240505889E300
        0x76e3fa1d89f870eeL    # 5.032418650186121E264
        0x22cf87b675773395L    # 5.171276673815539E-141
        -0xb6ca0871ba2cebbL
        0x3d6bdc1bff1ee6d1L    # 7.918232027374174E-13
        -0x4c982a111d72f496L    # -4.63530556421465E-61
        -0x181bef2e1e611787L    # -2.860893008331755E192
        -0x211772c80f88007eL    # -1.5696697425131103E149
        -0xb910c55f623e6cdL    # -7.091408064902376E252
        -0xab25d404d7b3d74L
        -0x50bc4d50e27747d6L    # -5.191501304812222E-81
        0x5126a0b3f30607b4L    # 8.58558943037295E82
        -0x552e39e39932f81eL    # -1.983917021747603E-102
        0x78c4b20870d6f0feL    # 5.5978436895523985E273
        0x6f86ca0b5618b0dL
        0x68302f3b5a4e3acbL    # 7.384081744385757E193
    .end array-data
.end method

.method public nodeOrder(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/ValueGraphBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lcom/google/common/graph/ElementOrder<",
            "TN1;>;)",
            "Lcom/google/common/graph/ValueGraphBuilder<",
            "TN1;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/ValueGraphBuilder;->cast()Lcom/google/common/graph/ValueGraphBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/common/graph/ElementOrder;

    .line 10
    .line 11
    iput-object p1, v0, Lcom/google/common/graph/AbstractGraphBuilder;->nodeOrder:Lcom/google/common/graph/ElementOrder;

    .line 12
    .line 13
    return-object v0
.end method
