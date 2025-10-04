.class public final Lcoil3/util/Collections_jvmCommonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u001a<\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0000\u001a0\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\n\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\nH\u0000\u001a\u001e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u000c\"\u0004\u0008\u0000\u0010\r*\u0008\u0012\u0004\u0012\u0002H\r0\u000cH\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "LruMutableMap",
        "",
        "K",
        "V",
        "",
        "initialCapacity",
        "",
        "loadFactor",
        "",
        "toImmutableMap",
        "",
        "toImmutableList",
        "",
        "T",
        "coil-core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\ncollections.jvmCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 collections.jvmCommon.kt\ncoil3/util/Collections_jvmCommonKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,21:1\n1#2:22\n*E\n"
    }
.end annotation


# direct methods
.method public static final LruMutableMap(IF)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(IF)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static synthetic LruMutableMap$default(IFILjava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 1
    and-int/lit8 p3, p2, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    const/high16 p1, 0x3f400000    # 0.75f

    .line 11
    .line 12
    :cond_1
    invoke-static {p0, p1}, Lcoil3/util/Collections_jvmCommonKt;->LruMutableMap(IF)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final toImmutableList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    check-cast p0, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :goto_0
    return-object p0
.end method

.method public static final toImmutableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, L디듰듟드딄되뒝딌땄딻땰딜둡딟돼뎻뒻됫땁딐뒹둘땔땤돷땐땲땤뒛뒼뒙뎰도땝둠땳들뒷땟딤땨뒤돳딟둔둘땡됨땵돳땤땠땳땋땮뎬뒷됩뎬돤땐됩땬뒉땟뎬딌된둡땃땰뒹딠땹뒉됩딃뎸둡땪뒹둠땭딻뒷뒹듻뎸돛땳땯땫땜땻돵뒻뎠될듸딠땸딄듌됩뎸따둑땲뎬땄돼땥듽돼땲뎠딎든듰돵뒐들둘둣딹돷땄땪딀든;->emptyMap()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_0
    return-object p0
.end method
