.class public final Lcoil3/RealImageLoaderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u001b\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a\u0013\u0010\u0005\u001a\u00020\u0000*\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcoil3/ComponentRegistry$Builder;",
        "Lcoil3/RealImageLoader$Options;",
        "options",
        "addServiceLoaderComponents",
        "(Lcoil3/ComponentRegistry$Builder;Lcoil3/RealImageLoader$Options;)Lcoil3/ComponentRegistry$Builder;",
        "addCommonComponents",
        "(Lcoil3/ComponentRegistry$Builder;)Lcoil3/ComponentRegistry$Builder;",
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
        "SMAP\nRealImageLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealImageLoader.kt\ncoil3/RealImageLoaderKt\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 ComponentRegistry.kt\ncoil3/ComponentRegistry$Builder\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 collections.kt\ncoil3/util/CollectionsKt\n*L\n1#1,308:1\n47#2,4:309\n149#3:313\n149#3:314\n157#3:315\n157#3:316\n165#3:317\n165#3:318\n165#3:319\n1062#4:320\n1062#4:329\n57#5,8:321\n57#5,8:330\n*S KotlinDebug\n*F\n+ 1 RealImageLoader.kt\ncoil3/RealImageLoaderKt\n*L\n232#1:309,4\n294#1:313\n295#1:314\n297#1:315\n298#1:316\n300#1:317\n301#1:318\n302#1:319\n260#1:320\n270#1:329\n261#1:321,8\n271#1:330,8\n*E\n"
    }
.end annotation


# direct methods
.method public static final access$CoroutineScope(Lcoil3/util/Logger;)Lkotlinx/coroutines/CoroutineScope;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    .line 8
    .line 9
    new-instance v2, Lcoil3/RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1;

    .line 10
    .line 11
    invoke-direct {v2, v1, p0}, Lcoil3/RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcoil3/util/Logger;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final addCommonComponents(Lcoil3/ComponentRegistry$Builder;)Lcoil3/ComponentRegistry$Builder;
    .locals 3
    .param p0    # Lcoil3/ComponentRegistry$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcoil3/map/StringMapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcoil3/map/StringMapper;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v0, v1}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/map/Mapper;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Lcoil3/map/PathMapper;

    .line 17
    .line 18
    invoke-direct {v0}, Lcoil3/map/PathMapper;-><init>()V

    .line 19
    .line 20
    .line 21
    const-class v1, Lokio/Path;

    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v0, v1}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/map/Mapper;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v0, Lcoil3/key/FileUriKeyer;

    .line 32
    .line 33
    invoke-direct {v0}, Lcoil3/key/FileUriKeyer;-><init>()V

    .line 34
    .line 35
    .line 36
    const-class v1, Lcoil3/Uri;

    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0, v0, v2}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/key/Keyer;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance v0, Lcoil3/key/UriKeyer;

    .line 47
    .line 48
    invoke-direct {v0}, Lcoil3/key/UriKeyer;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p0, v0, v2}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/key/Keyer;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v0, Lcoil3/fetch/FileUriFetcher$Factory;

    .line 60
    .line 61
    invoke-direct {v0}, Lcoil3/fetch/FileUriFetcher$Factory;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0, v0, v2}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    new-instance v0, Lcoil3/fetch/ByteArrayFetcher$Factory;

    .line 73
    .line 74
    invoke-direct {v0}, Lcoil3/fetch/ByteArrayFetcher$Factory;-><init>()V

    .line 75
    .line 76
    .line 77
    const-class v2, [B

    .line 78
    .line 79
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p0, v0, v2}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance v0, Lcoil3/fetch/DataUriFetcher$Factory;

    .line 88
    .line 89
    invoke-direct {v0}, Lcoil3/fetch/DataUriFetcher$Factory;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p0, v0, v1}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method

.method public static final addServiceLoaderComponents(Lcoil3/ComponentRegistry$Builder;Lcoil3/RealImageLoader$Options;)Lcoil3/ComponentRegistry$Builder;
    .locals 1
    .param p0    # Lcoil3/ComponentRegistry$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcoil3/RealImageLoader$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcoil3/ImageLoadersKt;->getServiceLoaderEnabled(Lcoil3/RealImageLoader$Options;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 8
    .line 9
    const/16 v0, 0x1a

    .line 10
    .line 11
    invoke-direct {p1, v0}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcoil3/ComponentRegistry$Builder;->addFetcherFactories(Lkotlin/jvm/functions/Function0;)Lcoil3/ComponentRegistry$Builder;

    .line 15
    .line 16
    .line 17
    new-instance p1, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 18
    .line 19
    const/16 v0, 0x1b

    .line 20
    .line 21
    invoke-direct {p1, v0}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcoil3/ComponentRegistry$Builder;->addDecoderFactories(Lkotlin/jvm/functions/Function0;)Lcoil3/ComponentRegistry$Builder;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-object p0
.end method
