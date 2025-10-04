.class public final Landroidx/lifecycle/internal/SavedStateHandleImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0016\u0008\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0011\u001a\u00020\u000cH\u0007J\u0011\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0004H\u0087\u0002J)\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00190\u0018\"\u0004\u0008\u0000\u0010\u00192\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u0002H\u0019H\u0007\u00a2\u0006\u0002\u0010\u001bJ)\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\u00190\u000e\"\u0004\u0008\u0000\u0010\u00192\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u0002H\u0019H\u0007\u00a2\u0006\u0002\u0010\u001dJ\u000e\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001fH\u0007J\u001e\u0010 \u001a\u0004\u0018\u0001H\u0019\"\u0004\u0008\u0000\u0010\u00192\u0006\u0010\u0016\u001a\u00020\u0004H\u0087\u0002\u00a2\u0006\u0002\u0010!J&\u0010\"\u001a\u00020#\"\u0004\u0008\u0000\u0010\u00192\u0006\u0010\u0016\u001a\u00020\u00042\u0008\u0010$\u001a\u0004\u0018\u0001H\u0019H\u0087\u0002\u00a2\u0006\u0002\u0010%J\u001d\u0010&\u001a\u0004\u0018\u0001H\u0019\"\u0004\u0008\u0000\u0010\u00192\u0006\u0010\u0016\u001a\u00020\u0004H\u0007\u00a2\u0006\u0002\u0010!J\u0018\u0010\'\u001a\u00020#2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u000cH\u0007J\u0010\u0010)\u001a\u00020#2\u0006\u0010\u0016\u001a\u00020\u0004H\u0007R\u001f\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000c0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R%\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\nR\u0011\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006*"
    }
    d2 = {
        "Landroidx/lifecycle/internal/SavedStateHandleImpl;",
        "",
        "initialState",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "regular",
        "",
        "getRegular",
        "()Ljava/util/Map;",
        "providers",
        "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;",
        "flows",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "mutableFlows",
        "getMutableFlows",
        "savedStateProvider",
        "getSavedStateProvider",
        "()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;",
        "contains",
        "",
        "key",
        "getStateFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "T",
        "initialValue",
        "(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;",
        "getMutableStateFlow",
        "(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;",
        "keys",
        "",
        "get",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "set",
        "",
        "value",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "remove",
        "setSavedStateProvider",
        "provider",
        "clearSavedStateProvider",
        "lifecycle-viewmodel-savedstate_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSavedStateHandleImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandleImpl.kt\nandroidx/lifecycle/internal/SavedStateHandleImpl\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 8 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt$savedState$1\n*L\n1#1,129:1\n381#2,7:130\n381#2,7:137\n27#3:144\n46#3:145\n32#3,4:146\n31#3,7:156\n126#4:150\n153#4,3:151\n37#5,2:154\n1#6:163\n106#7:164\n46#8:165\n*S KotlinDebug\n*F\n+ 1 SavedStateHandleImpl.kt\nandroidx/lifecycle/internal/SavedStateHandleImpl\n*L\n60#1:130,7\n76#1:137,7\n47#1:144\n47#1:145\n47#1:146,4\n47#1:156,7\n47#1:150\n47#1:151,3\n47#1:154,2\n47#1:163\n47#1:164\n47#1:165\n*E\n"
    }
.end annotation


# instance fields
.field private final flows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mutableFlows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final providers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final regular:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final savedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/lifecycle/internal/SavedStateHandleImpl;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initialState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, L디듰듟드딄되뒝딌땄딻땰딜둡딟돼뎻뒻됫땁딐뒹둘땔땤돷땐땲땤뒛뒼뒙뎰도땝둠땳들뒷땟딤땨뒤돳딟둔둘땡됨땵돳땤땠땳땋땮뎬뒷됩뎬돤땐됩땬뒉땟뎬딌된둡땃땰뒹딠땹뒉됩딃뎸둡땪뒹둠땭딻뒷뒹듻뎸돛땳땯땫땜땻돵뒻뎠될듸딠땸딄듌됩뎸따둑땲뎬땄돼땥듽돼땲뎠딎든듰돵뒐들둘둣딹돷땄땪딀든;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->providers:Ljava/util/Map;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->flows:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->mutableFlows:Ljava/util/Map;

    .line 7
    new-instance p1, L둠땬듟뒵따돳듸뒷딁둥땩듐딌땥돸되땤딻딞드뒉뒨뎬됫땥뒼딀둥땰됨뎹된땁땄뒼땠뒬듌뎻땭땨돸딃듬듸듻됐둣뒻땩땭뒉돴뎹땥딹뒐땵딄땍땧뒹뒤돳뎽땭될땨된땱뒻돼된딤둠돵땩땅땧땹뎸뒬듰둡땁뒼뒵뎸돸듸땬딄듨땩듔돝딐땡뒀뒷딝뒼딜도뒵땮뒵듸뒾되땍돷딃듨됫땲됩딐뒼딁듟땐뒬돰됴두돰땫딟땄;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, L둠땬듟뒵따돳듸뒷딁둥땩듐딌땥돸되땤딻딞드뒉뒨뎬됫땥뒼딀둥땰됨뎹된땁땄뒼땠뒬듌뎻땭땨돸딃듬듸듻됐둣뒻땩땭뒉돴뎹땥딹뒐땵딄땍땧뒹뒤돳뎽땭될땨된땱뒻돼된딤둠돵땩땅땧땹뎸뒬듰둡땁뒼뒵뎸돸듸땬딄듨땩듔돝딐땡뒀뒷딝뒼딜도뒵땮뒵듸뒾되땍돷딃듨됫땲됩딐뒼딁듟땐뒬돰됴두돰땫딟땄;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->savedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 8
    invoke-static {}, L디듰듟드딄되뒝딌땄딻땰딜둡딟돼뎻뒻됫땁딐뒹둘땔땤돷땐땲땤뒛뒼뒙뎰도땝둠땳들뒷땟딤땨뒤돳딟둔둘땡됨땵돳땤땠땳땋땮뎬뒷됩뎬돤땐됩땬뒉땟뎬딌된둡땃땰뒹딠땹뒉됩딃뎸둡땪뒹둠땭딻뒷뒹듻뎸돛땳땯땫땜땻돵뒻뎠될듸딠땸딄듌됩뎸따둑땲뎬땄돼땥듽돼땲뎠딎든듰돵뒐들둘둣딹돷땄땪딀든;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Landroidx/lifecycle/internal/SavedStateHandleImpl;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private static final savedStateProvider$lambda$0(Landroidx/lifecycle/internal/SavedStateHandleImpl;)Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->mutableFlows:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0}, L디듰듟드딄되뒝딌땄딻땰딜둡딟돼뎻뒻됫땁딐뒹둘땔땤돷땐땲땤뒛뒼뒙뎰도땝둠땳들뒷땟딤땨뒤돳딟둔둘땡됨땵돳땤땠땳땋땮뎬뒷됩뎬돤땐됩땬뒉땟뎬딌된둡땃땰뒹딠땹뒉됩딃뎸둡땪뒹둠땭딻뒷뒹듻뎸돛땳땯땫땜땻돵뒻뎠될듸딠땸딄듌됩뎸따둑땲뎬땄돼땥듽돼땲뎠딎든듰돵뒐들둘둣딹돷땄땪딀든;->toMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 38
    .line 39
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0, v2, v1}, Landroidx/lifecycle/internal/SavedStateHandleImpl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->providers:Ljava/util/Map;

    .line 48
    .line 49
    invoke-static {v0}, L디듰듟드딄되뒝딌땄딻땰딜둡딟돼뎻뒻됫땁딐뒹둘땔땤돷땐땲땤뒛뒼뒙뎰도땝둠땳들뒷땟딤땨뒤돳딟둔둘땡됨땵돳땤땠땳땋땮뎬뒷됩뎬돤땐됩땬뒉땟뎬딌된둡땃땰뒹딠땹뒉됩딃뎸둡땪뒹둠땭딻뒷뒹듻뎸돛땳땯땫땜땻돵뒻뎠될듸딠땸딄듌됩뎸따둑땲뎬땄돼땥듽돼땲뎠딎든듰돵뒐들둘둣딹돷땄땪딀든;->toMap(Ljava/util/Map;)Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/util/Map$Entry;

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 84
    .line 85
    invoke-interface {v1}, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;->saveState()Landroid/os/Bundle;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p0, v2, v1}, Landroidx/lifecycle/internal/SavedStateHandleImpl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget-object p0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const/4 v1, 0x0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    new-array p0, v1, [Lkotlin/Pair;

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_3

    .line 127
    .line 128
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Ljava/util/Map$Entry;

    .line 133
    .line 134
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Ljava/lang/String;

    .line 139
    .line 140
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    new-array p0, v1, [Lkotlin/Pair;

    .line 153
    .line 154
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, [Lkotlin/Pair;

    .line 159
    .line 160
    :goto_3
    array-length v0, p0

    .line 161
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    check-cast p0, [Lkotlin/Pair;

    .line 166
    .line 167
    invoke-static {p0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-static {p0}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 172
    .line 173
    .line 174
    return-object p0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/lifecycle/internal/SavedStateHandleImpl;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/internal/SavedStateHandleImpl;->savedStateProvider$lambda$0(Landroidx/lifecycle/internal/SavedStateHandleImpl;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearSavedStateProvider(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->providers:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->mutableFlows:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    invoke-virtual {p0, p1}, Landroidx/lifecycle/internal/SavedStateHandleImpl;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getMutableFlows()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->mutableFlows:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMutableStateFlow(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->mutableFlows:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p2, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_1
    check-cast v1, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 41
    .line 42
    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.flow.MutableStateFlow<T of androidx.lifecycle.internal.SavedStateHandleImpl.getMutableStateFlow>"

    .line 43
    .line 44
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v1
.end method

.method public final getRegular()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSavedStateProvider()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->savedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStateFlow(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->flows:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p2, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_1
    check-cast v1, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 41
    .line 42
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.flow.StateFlow<T of androidx.lifecycle.internal.SavedStateHandleImpl.getStateFlow>"

    .line 47
    .line 48
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p1
.end method

.method public final keys()Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->providers:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-static {v0, v1}, L땝딸돨됫땔땁딎딄땠돷땤딁든땫도듨뎨든땲딀딝땳뒼됩땸땸딨딨딽듨됫돵둘딌따딝득돤땵뎽디돳땻둘땻뎽딃땻둡딁땜땋두됫뎨뒛들돸땹둘딽땭듨뎹딄땪딎땠땨딟디딸딅딤뒼땍뎰뎻뎻땨뒉뒾딎되땲뒉딹땮땠딎뒻땲됫됫땰됫땮득뒼뒐돠둔돨돤딸뎽듟됫듼땬뒙딅땦땸뎰딠땟듐땭딀된돵땻들둣듬돴돰뒉땫;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->flows:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->mutableFlows:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final savedStateProvider()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->savedStateProvider:Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->regular:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->flows:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->mutableFlows:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final setSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "provider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/lifecycle/internal/SavedStateHandleImpl;->providers:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method
