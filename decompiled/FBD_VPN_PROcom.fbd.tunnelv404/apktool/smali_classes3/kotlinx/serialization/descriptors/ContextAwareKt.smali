.class public final Lkotlinx/serialization/descriptors/ContextAwareKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\u001a\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0002*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0007\u001a\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0007\u001a\u0018\u0010\u000c\u001a\u00020\u0002*\u00020\u00022\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0000\"$\u0010\u0000\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0001*\u00020\u00028FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "capturedKClass",
        "Lkotlin/reflect/KClass;",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getCapturedKClass$annotations",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;)V",
        "getCapturedKClass",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/reflect/KClass;",
        "getContextualDescriptor",
        "Lkotlinx/serialization/modules/SerializersModule;",
        "descriptor",
        "getPolymorphicDescriptors",
        "",
        "withContext",
        "context",
        "kotlinx-serialization-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nContextAware.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextAware.kt\nkotlinx/serialization/descriptors/ContextAwareKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n1#2:112\n1557#3:113\n1628#3,3:114\n*S KotlinDebug\n*F\n+ 1 ContextAware.kt\nkotlinx/serialization/descriptors/ContextAwareKt\n*L\n76#1:113\n76#1:114,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final getCapturedKClass(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/reflect/KClass;
    .locals 1
    .param p0    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            ")",
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, L둬둔됫땮땣딐듐돤두뒛뒉득듽땫뒀듨땳딜땨돶딅돳땩뒼돨뎻땯땧땡뒋듽땄되둣땭듌듽땁땹땯땻땄땡땅듬되도땡뎬땲듨땳뒐둠돨둠되따둡땯딹땡듟땸땰뎬딜둠되땤됴돴뒈뎸땯돰땸듰땝두돴땳둥땦돰땡돛딎딟도딝둠돤땰땫뒵득딤듌땜뎽땩땮땋딁뒤땀뎸땲딄딅두득듼딄됫땄돳뎻딃땁돨득딎딃땰디둣돴뒼;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, L둬둔됫땮땣딐듐돤두뒛뒉득듽땫뒀듨땳딜땨돶딅돳땩뒼돨뎻땯땧땡뒋듽땄되둣땭듌듽땁땹땯땻땄땡땅듬되도땡뎬땲듨땳뒐둠돨둠되따둡땯딹땡듟땸땰뎬딜둠되땤됴돴뒈뎸땯돰땸듰땝두돴땳둥땦돰땡돛딎딟도딝둠돤땰땫뒵득딤듌땜뎽땩땮땋딁뒤땀뎸땲딄딅두득듼딄됫땄돳뎻딃땁돨득딎딃땰디둣돴뒼;

    .line 11
    .line 12
    iget-object p0, p0, L둬둔됫땮땣딐듐돤두뒛뒉득듽땫뒀듨땳딜땨돶딅돳땩뒼돨뎻땯땧땡뒋듽땄되둣땭듌듽땁땹땯땻땄땡땅듬되도땡뎬땲듨땳뒐둠돨둠되따둡땯딹땡듟땸땰뎬딜둠되땤됴돴뒈뎸땯돰땸듰땝두돴땳둥땦돰땡돛딎딟도딝둠돤땰땫뒵득딤듌땜뎽땩땮땋딁뒤땀뎸땲딄딅두득듼딄됫땄돳뎻딃땁돨득딎딃땰디둣돴뒼;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/reflect/KClass;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p0, Lkotlinx/serialization/internal/SerialDescriptorForNullable;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p0, Lkotlinx/serialization/internal/SerialDescriptorForNullable;

    .line 20
    .line 21
    invoke-virtual {p0}, Lkotlinx/serialization/internal/SerialDescriptorForNullable;->getOriginal$kotlinx_serialization_core()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lkotlinx/serialization/descriptors/ContextAwareKt;->getCapturedKClass(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/reflect/KClass;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    :goto_0
    return-object p0
.end method

.method public static synthetic getCapturedKClass$annotations(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    return-void
.end method

.method public static final getContextualDescriptor(Lkotlinx/serialization/modules/SerializersModule;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 2
    .param p0    # Lkotlinx/serialization/modules/SerializersModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "descriptor"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlinx/serialization/descriptors/ContextAwareKt;->getCapturedKClass(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/reflect/KClass;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {p0, p1, v0, v1, v0}, Lkotlinx/serialization/modules/SerializersModule;->getContextual$default(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KClass;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    return-object v0
.end method

.method public static final getPolymorphicDescriptors(Lkotlinx/serialization/modules/SerializersModule;Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/List;
    .locals 1
    .param p0    # Lkotlinx/serialization/modules/SerializersModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            ")",
            "Ljava/util/List<",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "descriptor"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlinx/serialization/descriptors/ContextAwareKt;->getCapturedKClass(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/reflect/KClass;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    check-cast p0, Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 23
    .line 24
    iget-object p0, p0, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2Serializers:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/util/Map;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    :goto_0
    if-nez p0, :cond_2

    .line 41
    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Ljava/util/Collection;

    .line 47
    .line 48
    :cond_2
    check-cast p0, Ljava/lang/Iterable;

    .line 49
    .line 50
    new-instance p1, Ljava/util/ArrayList;

    .line 51
    .line 52
    const/16 v0, 0xa

    .line 53
    .line 54
    invoke-static {p0, v0}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 76
    .line 77
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    return-object p1
.end method

.method public static final withContext(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/reflect/KClass;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .param p0    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "Lkotlin/reflect/KClass<",
            "*>;)",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, L둬둔됫땮땣딐듐돤두뒛뒉득듽땫뒀듨땳딜땨돶딅돳땩뒼돨뎻땯땧땡뒋듽땄되둣땭듌듽땁땹땯땻땄땡땅듬되도땡뎬땲듨땳뒐둠돨둠되따둡땯딹땡듟땸땰뎬딜둠되땤됴돴뒈뎸땯돰땸듰땝두돴땳둥땦돰땡돛딎딟도딝둠돤땰땫뒵득딤듌땜뎽땩땮땋딁뒤땀뎸땲딄딅두득듼딄됫땄돳뎻딃땁돨득딎딃땰디둣돴뒼;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, L둬둔됫땮땣딐듐돤두뒛뒉득듽땫뒀듨땳딜땨돶딅돳땩뒼돨뎻땯땧땡뒋듽땄되둣땭듌듽땁땹땯땻땄땡땅듬되도땡뎬땲듨땳뒐둠돨둠되따둡땯딹땡듟땸땰뎬딜둠되땤됴돴뒈뎸땯돰땸듰땝두돴땳둥땦돰땡돛딎딟도딝둠돤땰땫뒵득딤듌땜뎽땩땮땋딁뒤땀뎸땲딄딅두득듼딄됫땄돳뎻딃땁돨득딎딃땰디둣돴뒼;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/reflect/KClass;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
