.class public final Lcom/v2ray/ang/service/V2RayTestService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\"\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0016J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/v2ray/ang/service/V2RayTestService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "realTestScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getRealTestScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "realTestScope$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "onStartCommand",
        "",
        "intent",
        "Landroid/content/Intent;",
        "flags",
        "startId",
        "onBind",
        "Landroid/os/IBinder;",
        "startRealPing",
        "",
        "guid",
        "",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nV2RayTestService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 V2RayTestService.kt\ncom/v2ray/ang/service/V2RayTestService\n+ 2 _Ext.kt\ncom/v2ray/ang/extension/_ExtKt\n*L\n1#1,92:1\n190#2,4:93\n*S KotlinDebug\n*F\n+ 1 V2RayTestService.kt\ncom/v2ray/ang/service/V2RayTestService\n*L\n48#1:93,4\n*E\n"
    }
.end annotation


# instance fields
.field private final realTestScope$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, L땜땥딐듐뎽땪땪득딨땵뒋듟딜뒬땡땥뒼된딃땨돝됐둑듌듼돛땍딽됨듟뎡뒨딁뒙듽땮디뒵딃딝땧드돨뎨땠듌땦뒹땟뒀돶딐듔됐뒵뒙될땹딃딻뒋뒐딟딽땔될뒨도둘딀드땔딟디된땍뎰둣듼둡뎽땯딐둡딟땪뎽뒙됨뒹뒘딞뒨돶땪땪듽딃딹돸듸돴둘땳땍뎠땧뒵딽돼딎땭딠둑됩듟드둬딤땝딜딹돷돤딎뒙땄듔뒼땤;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, L땜땥딐듐뎽땪땪득딨땵뒋듟딜뒬땡땥뒼된딃땨돝됐둑듌듼돛땍딽됨듟뎡뒨딁뒙듽땮디뒵딃딝땧드돨뎨땠듌땦뒹땟뒀돶딐듔됐뒵뒙될땹딃딻뒋뒐딟딽땔될뒨도둘딀드땔딟디된땍뎰둣듼둡뎽땯딐둡딟땪뎽뒙됨뒹뒘딞뒨돶땪땪듽딃딹돸듸돴둘땳땍뎠땧뒵딽돼딎땭딠둑됩듟드둬딤땝딜딹돷돤딎뒙땄듔뒼땤;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/v2ray/ang/service/V2RayTestService;->realTestScope$delegate:Lkotlin/Lazy;

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic access$startRealPing(Lcom/v2ray/ang/service/V2RayTestService;Ljava/lang/String;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/v2ray/ang/service/V2RayTestService;->startRealPing(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private final getRealTestScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/service/V2RayTestService;->realTestScope$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final realTestScope_delegate$lambda$0()Lkotlinx/coroutines/CoroutineScope;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    new-array v2, v2, [J

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x52d6297af69fe3f7L    # -3.9637811656771305E-91
        -0x6a0b7bbae9782edaL    # -6.543799722535926E-203
        0x3bd622f6575df268L    # 1.87504052892866E-20
        -0x7d9b7783179d60f3L    # -3.92455115015503E-297
    .end array-data
.end method

.method private final startRealPing(Ljava/lang/String;)J
    .locals 5

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-wide v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/ProfileItem;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    sget-object v4, Lcom/v2ray/ang/dto/EConfigType;->HYSTERIA2:Lcom/v2ray/ang/dto/EConfigType;

    .line 17
    .line 18
    if-ne v3, v4, :cond_1

    .line 19
    .line 20
    sget-object p1, Lcom/v2ray/ang/util/PluginUtil;->INSTANCE:Lcom/v2ray/ang/util/PluginUtil;

    .line 21
    .line 22
    invoke-virtual {p1, p0, v0}, Lcom/v2ray/ang/util/PluginUtil;->realPingHy2(Landroid/content/Context;Lcom/v2ray/ang/dto/ProfileItem;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0

    .line 27
    :cond_1
    sget-object v0, Lcom/v2ray/ang/handler/V2rayConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/V2rayConfigManager;

    .line 28
    .line 29
    invoke-virtual {v0, p0, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getV2rayConfig4Speedtest(Landroid/content/Context;Ljava/lang/String;)Lcom/v2ray/ang/dto/ConfigResult;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ConfigResult;->getStatus()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    return-wide v1

    .line 40
    :cond_2
    sget-object v0, Lcom/v2ray/ang/handler/SpeedtestManager;->INSTANCE:Lcom/v2ray/ang/handler/SpeedtestManager;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ConfigResult;->getContent()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/handler/SpeedtestManager;->realPing(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    return-wide v0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/service/V2RayTestService;->realTestScope_delegate$lambda$0()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lgo/Seq;->setContext(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/v2ray/ang/util/Utils;->userAssetPath(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/v2ray/ang/util/Utils;->getDeviceIdForXUDPBaseKey()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Llibv2ray/Libv2ray;->initCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v5, v2, [J

    .line 10
    .line 11
    fill-array-data v5, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v4, v3

    .line 31
    :goto_0
    if-nez v4, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v6, 0x7

    .line 39
    if-ne v5, v6, :cond_5

    .line 40
    .line 41
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v2, v2, [J

    .line 44
    .line 45
    fill-array-data v2, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    const/16 v5, 0x21

    .line 58
    .line 59
    if-lt v4, v5, :cond_2

    .line 60
    .line 61
    invoke-static {p1, v2}, L뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    instance-of v4, v2, Ljava/lang/String;

    .line 71
    .line 72
    if-nez v4, :cond_3

    .line 73
    .line 74
    move-object v2, v3

    .line 75
    :cond_3
    check-cast v2, Ljava/lang/String;

    .line 76
    .line 77
    :goto_1
    check-cast v2, Ljava/lang/String;

    .line 78
    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v0, v0, [J

    .line 84
    .line 85
    const-wide v4, 0x142c954fd9c06f1fL

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    aput-wide v4, v0, v1

    .line 91
    .line 92
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :cond_4
    invoke-direct {p0}, Lcom/v2ray/ang/service/V2RayTestService;->getRealTestScope()Lkotlinx/coroutines/CoroutineScope;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    new-instance v7, Lcom/v2ray/ang/service/V2RayTestService$onStartCommand$1;

    .line 104
    .line 105
    invoke-direct {v7, p0, v2, v3}, Lcom/v2ray/ang/service/V2RayTestService$onStartCommand$1;-><init>(Lcom/v2ray/ang/service/V2RayTestService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 106
    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    const/4 v6, 0x0

    .line 110
    const/4 v8, 0x3

    .line 111
    const/4 v9, 0x0

    .line 112
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    :goto_2
    if-nez v4, :cond_6

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    const/16 v2, 0x48

    .line 124
    .line 125
    if-ne v1, v2, :cond_7

    .line 126
    .line 127
    invoke-direct {p0}, Lcom/v2ray/ang/service/V2RayTestService;->getRealTestScope()Lkotlinx/coroutines/CoroutineScope;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-interface {v1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    .line 136
    .line 137
    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 142
    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    invoke-static {v1, v3, v0, v3}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_7
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    return p1

    .line 153
    :array_0
    .array-data 8
        -0x51d89658a5d3a76fL    # -2.3538725046847455E-86
        0x3fb249f6ef503859L    # 0.07144111006366084
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_1
    .array-data 8
        -0x6bcd4f977544367cL
        -0x5c47e76f4b74cfb4L
    .end array-data
.end method
