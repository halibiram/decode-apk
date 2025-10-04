.class final Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;
.super Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClassVerificationFailure",
        "NewApi"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresExtension;
    extension = 0xf4240
    version = 0x4
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api33Ext4Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0011\u0010\u000c\u001a\u00020\tH\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ\u0011\u0010\u000e\u001a\u00020\u000bH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;",
        "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "mAppSetIdManager",
        "Landroid/adservices/appsetid/AppSetIdManager;",
        "(Landroid/adservices/appsetid/AppSetIdManager;)V",
        "convertResponse",
        "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;",
        "response",
        "Landroid/adservices/appsetid/AppSetId;",
        "getAppSetId",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAppSetIdAsyncInternal",
        "ads-adservices_release"
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
        "SMAP\nAppSetIdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppSetIdManager.kt\nandroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,94:1\n314#2,11:95\n*S KotlinDebug\n*F\n+ 1 AppSetIdManager.kt\nandroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl\n*L\n59#1:95,11\n*E\n"
    }
.end annotation


# instance fields
.field private final mAppSetIdManager:Landroid/adservices/appsetid/AppSetIdManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/adservices/appsetid/AppSetIdManager;)V
    .locals 1
    .param p1    # Landroid/adservices/appsetid/AppSetIdManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mAppSetIdManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;->mAppSetIdManager:Landroid/adservices/appsetid/AppSetIdManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, L뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥;->뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, L딹뒋둔둔듌들됐두뒛둣땥뒤땃딌돸딻듸땫돛듨도땱뎽땦땧딸딸땀땥듻됴뎹뒹뒛돤듟돠돷딝땱뒉돳됴뒨득뒷듐땥땹땭득됩땃뒤땩뒾뒝디뒀땦딹돼돵됴듔딞될돨땦둘둔둣딽뎸땁딽딃뒾땭돠땐딹땯뒉뎽땅든뎨땜뒹땪될디딀뎽돸땄딐딅땟돴땹돸뎽듐땤땝딻땲딁땻돸땅딟땄딝딤땩땅뒻둘딀둡뎠두땫돴뒷뒉둑;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "context.getSystemService\u2026:class.java\n            )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, L뎽듸뎬딤뒤뎬됫딤땮땠뎨둬딅땃될땅땯듌땵되뎻둑뎬된되뎸딄땍둘둡듼뎨뒾둬뒨둡뎠둥뎰듰돴될뒝뎡딞듼돴돤듼땍둣땦둑돨듬돰땝된돸딁듽땜듽땱땜돤땱딨땃딐딤돶됐딃땄땩뒙딃딐땃땯드드땣땲땲됫듸땵뒀둑땵딄든딤둠뒨듼됫딠됐돼뎬땃뒹도됨듌뒨땐뒐듟땐땜됫땰뒬뎡득뒛땦딨따되돳딽뒻돷듼딨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/lang/Object;)Landroid/adservices/appsetid/AppSetIdManager;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;-><init>(Landroid/adservices/appsetid/AppSetIdManager;)V

    return-void
.end method

.method public static final synthetic access$getAppSetIdAsyncInternal(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;->getAppSetIdAsyncInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getMAppSetIdManager$p(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;)Landroid/adservices/appsetid/AppSetIdManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;->mAppSetIdManager:Landroid/adservices/appsetid/AppSetIdManager;

    .line 2
    .line 3
    return-object p0
.end method

.method private final convertResponse(Landroid/adservices/appsetid/AppSetId;)Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;
    .locals 3

    .line 1
    invoke-static {p1}, L뎽듸뎬딤뒤뎬됫딤땮땠뎨둬딅땃될땅땯듌땵되뎻둑뎬된되뎸딄땍둘둡듼뎨뒾둬뒨둡뎠둥뎰듰돴될뒝뎡딞듼돴돤듼땍둣땦둑돨듬돰땝된돸딁듽땜듽땱땜돤땱딨땃딐딤돶됐딃땄땩뒙딃딐땃땯드드땣땲땲됫듸땵뒀둑땵딄든딤둠뒨듼됫딠됐돼뎬땃뒹도됨듌뒨땐뒐듟땐땜됫땰뒬뎡득뒛땦딨따되돳딽뒻돷듼딨;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/adservices/appsetid/AppSetId;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "response.id"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;

    .line 11
    .line 12
    invoke-static {p1}, L뎽듸뎬딤뒤뎬됫딤땮땠뎨둬딅땃될땅땯듌땵되뎻둑뎬된되뎸딄땍둘둡듼뎨뒾둬뒨둡뎠둥뎰듰돴될뒝뎡딞듼돴돤듼땍둣땦둑돨듬돰땝된돸딁듽땜듽땱땜돤땱딨땃딐딤돶됐딃땄땩뒙딃딐땃땯드드땣땲땲됫듸땵뒀둑땵딄든딤둠뒨듼됫딠됐돼뎬땃뒹도됨듌뒨땐뒐듟땐땜됫땰뒬뎡득뒛땦딨따되돳딽뒻돷듼딨;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/adservices/appsetid/AppSetId;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, v2}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;

    .line 24
    .line 25
    invoke-static {p1}, L뎽듸뎬딤뒤뎬됫딤땮땠뎨둬딅땃될땅땯듌땵되뎻둑뎬된되뎸딄땍둘둡듼뎨뒾둬뒨둡뎠둥뎰듰돴될뒝뎡딞듼돴돤듼땍둣땦둑돨듬돰땝된돸딁듽땜듽땱땜돤땱딨땃딐딤돶됐딃땄땩뒙딃딐땃땯드드땣땲땲됫듸땵뒀둑땵딄든딤둠뒨듼됫딠됐돼뎬땃뒹도됨듌뒨땐뒐듟땐땜됫땰뒬뎡득뒛땦딨따되돳딽뒻돷듼딨;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/adservices/appsetid/AppSetId;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-direct {v0, p1, v1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method private final getAppSetIdAsyncInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/adservices/appsetid/AppSetId;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;->access$getMAppSetIdManager$p(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;)Landroid/adservices/appsetid/AppSetIdManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, L뎻듟땨뒝땄딃됩따땣땮돷뒛둬든뒨뎻땯딄돰뒉땡돠딤딨땠돸땋돳땋뎨땠딎됨둔땸딻딄땡돠듐둑딨뒼드딅된둬뒋딄듨뒀됩돳뎠듌뒬땝뎠딽땦돸돸땵땜땋땧둬돷돼돛딻돤뒙뒷돰딤듻뒷돳땬뒀땸땠둡돵돛듟땰듻뒾땮딄땦뒼뒼땲딟듨돷돛땅딤뒛땄돝뒋됴뒉땋드뒐돨뒋딎땧드듨둔땀땁땟됴돛둡땁딀뒐돳땧땅;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v3}, L뎻듟땨뒝땄딃됩따땣땮돷뒛둬든뒨뎻땯딄돰뒉땡돠딤딨땠돸땋돳땋뎨땠딎됨둔땸딻딄땡돠듐둑딨뒼드딅된둬뒋딄듨뒀됩돳뎠듌뒬땝뎠딽땦돸돸땵땜땋땧둬돷돼돛딻돤뒙뒷돰딤듻뒷돳땬뒀땸땠둡돵돛듟땰듻뒾땮딄땦뒼뒼땲딟듨돷돛땅딤뒛땄돝뒋됴뒉땋드뒐돨뒋딎땧드듨둔땀땁땟됴돛둡땁딀뒐돳땧땅;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroidx/core/os/OutcomeReceiverKt;->asOutcomeReceiver(Lkotlin/coroutines/Continuation;)Landroid/os/OutcomeReceiver;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v1, v2, v3}, L뎽듸뎬딤뒤뎬됫딤땮땠뎨둬딅땃될땅땯듌땵되뎻둑뎬된되뎸딄땍둘둡듼뎨뒾둬뒨둡뎠둥뎰듰돴될뒝뎡딞듼돴돤듼땍둣땦둑돨듬돰땝된돸딁듽땜듽땱땜돤땱딨땃딐딤돶됐딃땄땩뒙딃딐땃땯드드땣땲땲됫듸땵뒀둑땵딄든딤둠뒨듼됫딠됐돼뎬땃뒹도됨듌뒨땐뒐듟땐땜됫땰뒬뎡득뒛땦딨따되돳딽뒻돷듼딨;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Landroid/adservices/appsetid/AppSetIdManager;L뎻듟땨뒝땄딃됩따땣땮돷뒛둬든뒨뎻땯딄돰뒉땡돠딤딨땠돸땋돳땋뎨땠딎됨둔땸딻딄땡돠듐둑딨뒼드딅된둬뒋딄듨뒀됩돳뎠듌뒬땝뎠딽땦돸돸땵땜땋땧둬돷돼돛딻돤뒙뒷돰딤듻뒷돳땬뒀땸땠둡돵돛듟땰듻뒾땮딄땦뒼뒼땲딟듨돷돛땅딤뒛땄돝뒋됴뒉땋드뒐돨뒋딎땧드듨둔땀땁땟됴돛둡땁딀뒐돳땧땅;Landroid/os/OutcomeReceiver;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-ne v0, v1, :cond_0

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAppSetId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;-><init>(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object p0, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    iput v3, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl$getAppSetId$1;->label:I

    .line 60
    .line 61
    invoke-direct {p0, v0}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;->getAppSetIdAsyncInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    move-object v0, p0

    .line 69
    :goto_1
    invoke-static {p1}, L뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Ljava/lang/Object;)Landroid/adservices/appsetid/AppSetId;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {v0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;->convertResponse(Landroid/adservices/appsetid/AppSetId;)Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method
