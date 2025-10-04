.class public final Landroidx/room/InvalidationTracker$ObserverWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverWrapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u001d\u0010\u0011\u001a\u00020\u00122\u000e\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\rH\u0000\u00a2\u0006\u0002\u0008\u0015J\u001f\u0010\u0016\u001a\u00020\u00122\u000e\u0010\u0017\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007H\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/room/InvalidationTracker$ObserverWrapper;",
        "",
        "observer",
        "Landroidx/room/InvalidationTracker$Observer;",
        "tableIds",
        "",
        "tableNames",
        "",
        "",
        "(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;)V",
        "getObserver$room_runtime_release",
        "()Landroidx/room/InvalidationTracker$Observer;",
        "singleTableSet",
        "",
        "getTableIds$room_runtime_release",
        "()[I",
        "[Ljava/lang/String;",
        "notifyByTableInvalidStatus",
        "",
        "invalidatedTablesIds",
        "",
        "notifyByTableInvalidStatus$room_runtime_release",
        "notifyByTableNames",
        "tables",
        "notifyByTableNames$room_runtime_release",
        "([Ljava/lang/String;)V",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/InvalidationTracker$ObserverWrapper\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,840:1\n13674#2,3:841\n12744#2,2:844\n13579#2:846\n13579#2,2:847\n13580#2:849\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/InvalidationTracker$ObserverWrapper\n*L\n612#1:841,3\n634#1:844,2\n640#1:846\n641#1:847,2\n640#1:849\n*E\n"
    }
.end annotation


# instance fields
.field private final observer:Landroidx/room/InvalidationTracker$Observer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final singleTableSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tableIds:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tableNames:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/room/InvalidationTracker$Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "observer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "tableIds"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "tableNames"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->observer:Landroidx/room/InvalidationTracker$Observer;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableIds:[I

    .line 22
    .line 23
    iput-object p3, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableNames:[Ljava/lang/String;

    .line 24
    .line 25
    array-length p1, p3

    .line 26
    const/4 v0, 0x0

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    if-nez p1, :cond_1

    .line 33
    .line 34
    aget-object p1, p3, v0

    .line 35
    .line 36
    invoke-static {p1}, L땝듌땜땠땲뒉돤둔둥땻든땧땐땜둡딠듸들됴돝땨딸듌뒋딄뒤딐둑됴돤됨돛땁뎡딎둡뒝된듐둔땪따둔땱뒬뒙딃딃딌될딟됐땅뒐땳됩둬땫돛돨땀돶돼딸땬딄둠뒀딄드딐땋듐땩돶땅땹둡도득들땜땫땠딀땡뒉땬딨땐뒈땔뒵딐딹땜뒵딽땡듻뎰뎠땠땪둔딸뒨되돤돵둘땨돤땡돠뎸땳딸딌땬듻땧뎰땜딝돨땣뒹딄땳;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {}, L땝따땧돴딤듌뎻둣딄뒙뎽뒨땵듼든둬도돠뒵뒘뎹뒬된딜뎠딨둑땔둬둬돼돷둥땜땲뒛돛딤둘뎰땱듸뒨땨뒻뎹둣땣뒋됐딄땻땱돶뒉딠뎨땵땋땀땩듽듼듸뒉땭둣뎠돸딻뒋듻땁됫땱딝돠듸땮뎸뎨딎딎돤돴뎰뎬뒻듻뒝뒈딝땨땯됨돷딠땭딀돤뒀돴뒻뒻돴뒾땀듼땭땻땣땝듰듨땟돼됐뒛돶듼돴득돤돰딌땡됐뎸둑딠;->emptySet()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_1
    iput-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->singleTableSet:Ljava/util/Set;

    .line 46
    .line 47
    array-length p1, p2

    .line 48
    array-length p2, p3

    .line 49
    if-ne p1, p2, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "Check failed."

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method


# virtual methods
.method public final getObserver$room_runtime_release()Landroidx/room/InvalidationTracker$Observer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->observer:Landroidx/room/InvalidationTracker$Observer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTableIds$room_runtime_release()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableIds:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final notifyByTableInvalidStatus$room_runtime_release(Ljava/util/Set;)V
    .locals 7
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "invalidatedTablesIds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableIds:[I

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v1, v3, :cond_2

    .line 14
    .line 15
    invoke-static {}, L땝듌땜땠땲뒉돤둔둥땻든땧땐땜둡딠듸들됴돝땨딸듌뒋딄뒤딐둑됴돤됨돛땁뎡딎둡뒝된듐둔땪따둔땱뒬뒙딃딃딌될딟됐땅뒐땳됩둬땫돛돨땀돶돼딸땬딄둠뒀딄드딐땋듐땩돶땅땹둡도득들땜땫땠딀땡뒉땬딨땐뒈땔뒵딐딹땜뒵딽땡듻뎰뎠땠땪둔딸뒨되돤돵둘땨돤땡돠뎸땳딸딌땬듻땧뎰땜딝돨땣뒹딄땳;->createSetBuilder()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableIds:[I

    .line 20
    .line 21
    array-length v3, v1

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-ge v2, v3, :cond_1

    .line 24
    .line 25
    aget v5, v1, v2

    .line 26
    .line 27
    add-int/lit8 v6, v4, 0x1

    .line 28
    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    iget-object v5, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableNames:[Ljava/lang/String;

    .line 40
    .line 41
    aget-object v4, v5, v4

    .line 42
    .line 43
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    move v4, v6

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v0}, L땝듌땜땠땲뒉돤둔둥땻든땧땐땜둡딠듸들됴돝땨딸듌뒋딄뒤딐둑됴돤됨돛땁뎡딎둡뒝된듐둔땪따둔땱뒬뒙딃딃딌될딟됐땅뒐땳됩둬땫돛돨땀돶돼딸땬딄둠뒀딄드딐땋듐땩돶땅땹둡도득들땜땫땠딀땡뒉땬딨땐뒈땔뒵딐딹땜뒵딽땡듻뎰뎠땠땪둔딸뒨되돤돵둘땨돤땡돠뎸땳딸딌땬듻땧뎰땜딝돨땣뒹딄땳;->build(Ljava/util/Set;)Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    aget v0, v0, v2

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->singleTableSet:Ljava/util/Set;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {}, L땝따땧돴딤듌뎻둣딄뒙뎽뒨땵듼든둬도돠뒵뒘뎹뒬된딜뎠딨둑땔둬둬돼돷둥땜땲뒛돛딤둘뎰땱듸뒨땨뒻뎹둣땣뒋됐딄땻땱돶뒉딠뎨땵땋땀땩듽듼듸뒉땭둣뎠돸딻뒋듻땁됫땱딝돠듸땮뎸뎨딎딎돤돴뎰뎬뒻듻뒝뒈딝땨땯됨돷딠땭딀돤뒀돴뒻뒻돴뒾땀듼땭땻땣땝듰듨땟돼됐뒛돶듼돴득돤돰딌땡됐뎸둑딠;->emptySet()Ljava/util/Set;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    invoke-static {}, L땝따땧돴딤듌뎻둣딄뒙뎽뒨땵듼든둬도돠뒵뒘뎹뒬된딜뎠딨둑땔둬둬돼돷둥땜땲뒛돛딤둘뎰땱듸뒨땨뒻뎹둣땣뒋됐딄땻땱돶뒉딠뎨땵땋땀땩듽듼듸뒉땭둣뎠돸딻뒋듻땁됫땱딝돠듸땮뎸뎨딎딎돤돴뎰뎬뒻듻뒝뒈딝땨땯됨돷딠땭딀돤뒀돴뒻뒻돴뒾땀듼땭땻땣땝듰듨땟돼됐뒛돶듼돴득돤돰딌땡됐뎸둑딠;->emptySet()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_1
    move-object v0, p1

    .line 80
    check-cast v0, Ljava/util/Collection;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->observer:Landroidx/room/InvalidationTracker$Observer;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    return-void
.end method

.method public final notifyByTableNames$room_runtime_release([Ljava/lang/String;)V
    .locals 11
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tables"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableNames:[Ljava/lang/String;

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v2, :cond_3

    .line 14
    .line 15
    invoke-static {}, L땝듌땜땠땲뒉돤둔둥땻든땧땐땜둡딠듸들됴돝땨딸듌뒋딄뒤딐둑됴돤됨돛땁뎡딎둡뒝된듐둔땪따둔땱뒬뒙딃딃딌될딟됐땅뒐땳됩둬땫돛돨땀돶돼딸땬딄둠뒀딄드딐땋듐땩돶땅땹둡도득들땜땫땠딀땡뒉땬딨땐뒈땔뒵딐딹땜뒵딽땡듻뎰뎠땠땪둔딸뒨되돤돵둘땨돤땡돠뎸땳딸딌땬듻땧뎰땜딝돨땣뒹딄땳;->createSetBuilder()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    array-length v3, p1

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    if-ge v4, v3, :cond_2

    .line 22
    .line 23
    aget-object v5, p1, v4

    .line 24
    .line 25
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableNames:[Ljava/lang/String;

    .line 26
    .line 27
    array-length v7, v6

    .line 28
    const/4 v8, 0x0

    .line 29
    :goto_1
    if-ge v8, v7, :cond_1

    .line 30
    .line 31
    aget-object v9, v6, v8

    .line 32
    .line 33
    invoke-static {v9, v5, v2}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    if-eqz v10, :cond_0

    .line 38
    .line 39
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {v0}, L땝듌땜땠땲뒉돤둔둥땻든땧땐땜둡딠듸들됴돝땨딸듌뒋딄뒤딐둑됴돤됨돛땁뎡딎둡뒝된듐둔땪따둔땱뒬뒙딃딃딌될딟됐땅뒐땳됩둬땫돛돨땀돶돼딸땬딄둠뒀딄드딐땋듐땩돶땅땹둡도득들땜땫땠딀땡뒉땬딨땐뒈땔뒵딐딹땜뒵딽땡듻뎰뎠땠땪둔딸뒨되돤돵둘땨돤땡돠뎸땳딸딌땬듻땧뎰땜딝돨땣뒹딄땳;->build(Ljava/util/Set;)Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    array-length v0, p1

    .line 54
    const/4 v3, 0x0

    .line 55
    :goto_2
    if-ge v3, v0, :cond_5

    .line 56
    .line 57
    aget-object v4, p1, v3

    .line 58
    .line 59
    iget-object v5, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableNames:[Ljava/lang/String;

    .line 60
    .line 61
    aget-object v5, v5, v1

    .line 62
    .line 63
    invoke-static {v4, v5, v2}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    iget-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->singleTableSet:Ljava/util/Set;

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    invoke-static {}, L땝따땧돴딤듌뎻둣딄뒙뎽뒨땵듼든둬도돠뒵뒘뎹뒬된딜뎠딨둑땔둬둬돼돷둥땜땲뒛돛딤둘뎰땱듸뒨땨뒻뎹둣땣뒋됐딄땻땱돶뒉딠뎨땵땋땀땩듽듼듸뒉땭둣뎠돸딻뒋듻땁됫땱딝돠듸땮뎸뎨딎딎돤돴뎰뎬뒻듻뒝뒈딝땨땯됨돷딠땭딀돤뒀돴뒻뒻돴뒾땀듼땭땻땣땝듰듨땟돼됐뒛돶듼돴득돤돰딌땡됐뎸둑딠;->emptySet()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    goto :goto_3

    .line 80
    :cond_6
    invoke-static {}, L땝따땧돴딤듌뎻둣딄뒙뎽뒨땵듼든둬도돠뒵뒘뎹뒬된딜뎠딨둑땔둬둬돼돷둥땜땲뒛돛딤둘뎰땱듸뒨땨뒻뎹둣땣뒋됐딄땻땱돶뒉딠뎨땵땋땀땩듽듼듸뒉땭둣뎠돸딻뒋듻땁됫땱딝돠듸땮뎸뎨딎딎돤돴뎰뎬뒻듻뒝뒈딝땨땯됨돷딠땭딀돤뒀돴뒻뒻돴뒾땀듼땭땻땣땝듰듨땟돼됐뒛돶듼돴득돤돰딌땡됐뎸둑딠;->emptySet()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_3
    move-object v0, p1

    .line 85
    check-cast v0, Ljava/util/Collection;

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_7

    .line 92
    .line 93
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->observer:Landroidx/room/InvalidationTracker$Observer;

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    .line 96
    .line 97
    .line 98
    :cond_7
    return-void
.end method
