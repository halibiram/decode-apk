.class public final Lcom/v2ray/ang/service/V2RayVpnService;
.super Landroid/net/VpnService;
.source "SourceFile"

# interfaces
.implements Lcom/v2ray/ang/service/ServiceControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/service/V2RayVpnService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0002\u000c\u001b\u0018\u0000 ;2\u00020\u00012\u00020\u0002:\u0001;B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020 H\u0016J\u0008\u0010\"\u001a\u00020 H\u0016J\"\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020$2\u0006\u0010(\u001a\u00020$H\u0016J\u0008\u0010)\u001a\u00020*H\u0016J\u0008\u0010+\u001a\u00020 H\u0016J\u0008\u0010,\u001a\u00020 H\u0016J\u0010\u0010-\u001a\u00020\u00082\u0006\u0010.\u001a\u00020$H\u0016J\u0012\u0010/\u001a\u00020 2\u0008\u00100\u001a\u0004\u0018\u000101H\u0015J\u0008\u00102\u001a\u00020 H\u0002J\u0008\u00103\u001a\u00020\u0008H\u0002J\u0014\u00104\u001a\u00020 2\n\u00105\u001a\u000606R\u00020\u0001H\u0002J\u0008\u00107\u001a\u00020 H\u0002J\u0008\u00108\u001a\u00020 H\u0002J\u0012\u00109\u001a\u00020 2\u0008\u0008\u0002\u0010:\u001a\u00020\u0008H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR#\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8BX\u0083\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0083\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0014\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006<"
    }
    d2 = {
        "Lcom/v2ray/ang/service/V2RayVpnService;",
        "Landroid/net/VpnService;",
        "Lcom/v2ray/ang/service/ServiceControl;",
        "<init>",
        "()V",
        "mInterface",
        "Landroid/os/ParcelFileDescriptor;",
        "isRunning",
        "",
        "process",
        "Ljava/lang/Process;",
        "broadcastReceiver",
        "com/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1",
        "Lcom/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1;",
        "defaultNetworkRequest",
        "Landroid/net/NetworkRequest;",
        "kotlin.jvm.PlatformType",
        "getDefaultNetworkRequest",
        "()Landroid/net/NetworkRequest;",
        "defaultNetworkRequest$delegate",
        "Lkotlin/Lazy;",
        "connectivity",
        "Landroid/net/ConnectivityManager;",
        "getConnectivity",
        "()Landroid/net/ConnectivityManager;",
        "connectivity$delegate",
        "defaultNetworkCallback",
        "com/v2ray/ang/service/V2RayVpnService$defaultNetworkCallback$2$1",
        "getDefaultNetworkCallback",
        "()Lcom/v2ray/ang/service/V2RayVpnService$defaultNetworkCallback$2$1;",
        "defaultNetworkCallback$delegate",
        "onCreate",
        "",
        "onRevoke",
        "onDestroy",
        "onStartCommand",
        "",
        "intent",
        "Landroid/content/Intent;",
        "flags",
        "startId",
        "getService",
        "Landroid/app/Service;",
        "startService",
        "stopService",
        "vpnProtect",
        "socket",
        "attachBaseContext",
        "newBase",
        "Landroid/content/Context;",
        "setup",
        "setupVpnService",
        "configurePerAppProxy",
        "builder",
        "Landroid/net/VpnService$Builder;",
        "runTun2socks",
        "sendFd",
        "stopV2Ray",
        "isForced",
        "Companion",
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
        "SMAP\nV2RayVpnService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 V2RayVpnService.kt\ncom/v2ray/ang/service/V2RayVpnService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,428:1\n1869#2,2:429\n1869#2,2:431\n1869#2,2:433\n*S KotlinDebug\n*F\n+ 1 V2RayVpnService.kt\ncom/v2ray/ang/service/V2RayVpnService\n*L\n191#1:429,2\n213#1:431,2\n289#1:433,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/v2ray/ang/service/V2RayVpnService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MSG_STATE_STAR:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MSG_STATE_STOP:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TUN2SOCKS:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VPN_MTU:I = 0x5dc


# instance fields
.field private final broadcastReceiver:Lcom/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final connectivity$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final defaultNetworkCallback$delegate:Lkotlin/Lazy;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final defaultNetworkRequest$delegate:Lkotlin/Lazy;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isRunning:Z

.field private mInterface:Landroid/os/ParcelFileDescriptor;

.field private process:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/v2ray/ang/service/V2RayVpnService;->TUN2SOCKS:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/v2ray/ang/service/V2RayVpnService$Companion;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v0, v2}, Lcom/v2ray/ang/service/V2RayVpnService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/v2ray/ang/service/V2RayVpnService;->Companion:Lcom/v2ray/ang/service/V2RayVpnService$Companion;

    .line 25
    .line 26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v2, v1, [J

    .line 29
    .line 30
    fill-array-data v2, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/v2ray/ang/service/V2RayVpnService;->MSG_STATE_STAR:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v1, v1, [J

    .line 45
    .line 46
    fill-array-data v1, :array_2

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/v2ray/ang/service/V2RayVpnService;->MSG_STATE_STOP:Ljava/lang/String;

    .line 57
    .line 58
    return-void

    .line 59
    :array_0
    .array-data 8
        0x5317aeb4d08ac367L    # 1.92967982211106E92
        0x74ffd98ecd6a0c29L    # 3.7361433448694673E255
        0x3350a530172d376cL
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 8
        -0x6df688e9c47c385fL    # -8.806026856802918E-222
        0x4a19cced561771d9L    # 9.426866956691776E48
        0x7a99ddf83991cf85L    # 3.756325075118846E282
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_2
    .array-data 8
        0x3679f788716e2715L    # 2.8427666496447477E-46
        -0x11534b10af135f0L
        0x2f66fede7901f69aL    # 2.4242397899050605E-80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1;-><init>(Lcom/v2ray/ang/service/V2RayVpnService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/v2ray/ang/service/V2RayVpnService;->broadcastReceiver:Lcom/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1;

    .line 10
    .line 11
    new-instance v0, L땜땥딐듐뎽땪땪득딨땵뒋듟딜뒬땡땥뒼된딃땨돝됐둑듌듼돛땍딽됨듟뎡뒨딁뒙듽땮디뒵딃딝땧드돨뎨땠듌땦뒹땟뒀돶딐듔됐뒵뒙될땹딃딻뒋뒐딟딽땔될뒨도둘딀드땔딟디된땍뎰둣듼둡뎽땯딐둡딟땪뎽뒙됨뒹뒘딞뒨돶땪땪듽딃딹돸듸돴둘땳땍뎠땧뒵딽돼딎땭딠둑됩듟드둬딤땝딜딹돷돤딎뒙땄듔뒼땤;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-direct {v0, v1}, L땜땥딐듐뎽땪땪득딨땵뒋듟딜뒬땡땥뒼된딃땨돝됐둑듌듼돛땍딽됨듟뎡뒨딁뒙듽땮디뒵딃딝땧드돨뎨땠듌땦뒹땟뒀돶딐듔됐뒵뒙될땹딃딻뒋뒐딟딽땔될뒨도둘딀드땔딟디된땍뎰둣듼둡뎽땯딐둡딟땪뎽뒙됨뒹뒘딞뒨돶땪땪듽딃딹돸듸돴둘땳땍뎠땧뒵딽돼딎땭딠둑됩듟드둬딤땝딜딹돷돤딎뒙땄듔뒼땤;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/v2ray/ang/service/V2RayVpnService;->defaultNetworkRequest$delegate:Lkotlin/Lazy;

    .line 22
    .line 23
    new-instance v0, L땰뒉듼듼뒘땬듸뒬딁딸들땨뒻땋돵들뒷뎡땮둡뒤딄땤땥듬땯땫땣뎨땅땻뒉됴땦뒼땯둔뒬듌딜뎸뒹듻땨딅딟뒈땸땭땫뒵딃듐돤딽땣됩뒼땟땅뒀땵돨딁듻땪되딁땸딹두돴뒾듰땟된뒼뒤뎨딅땱땝돳땰듸땠뒼땀뎬뎠땰뒨듌뎰딞뒙뒷딤땤딁딸뒤땦돸땍땯둠뒉뒨땔돴딜듐땍둣땰뎽땧듔뎨뒙땭뒼뎻땩듌뎸딸땧뎻;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, p0, v1}, L땰뒉듼듼뒘땬듸뒬딁딸들땨뒻땋돵들뒷뎡땮둡뒤딄땤땥듬땯땫땣뎨땅땻뒉됴땦뒼땯둔뒬듌딜뎸뒹듻땨딅딟뒈땸땭땫뒵딃듐돤딽땣됩뒼땟땅뒀땵돨딁듻땪되딁땸딹두돴뒾듰땟된뒼뒤뎨딅땱땝돳땰듸땠뒼땀뎬뎠땰뒨듌뎰딞뒙뒷딤땤딁딸뒤땦돸땍땯둠뒉뒨땔돴딜듐땍둣땰뎽땧듔뎨뒙땭뒼뎻땩듌뎸딸땧뎻;-><init>(Lcom/v2ray/ang/service/V2RayVpnService;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/v2ray/ang/service/V2RayVpnService;->connectivity$delegate:Lkotlin/Lazy;

    .line 34
    .line 35
    new-instance v0, L땰뒉듼듼뒘땬듸뒬딁딸들땨뒻땋돵들뒷뎡땮둡뒤딄땤땥듬땯땫땣뎨땅땻뒉됴땦뒼땯둔뒬듌딜뎸뒹듻땨딅딟뒈땸땭땫뒵딃듐돤딽땣됩뒼땟땅뒀땵돨딁듻땪되딁땸딹두돴뒾듰땟된뒼뒤뎨딅땱땝돳땰듸땠뒼땀뎬뎠땰뒨듌뎰딞뒙뒷딤땤딁딸뒤땦돸땍땯둠뒉뒨땔돴딜듐땍둣땰뎽땧듔뎨뒙땭뒼뎻땩듌뎸딸땧뎻;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-direct {v0, p0, v1}, L땰뒉듼듼뒘땬듸뒬딁딸들땨뒻땋돵들뒷뎡땮둡뒤딄땤땥듬땯땫땣뎨땅땻뒉됴땦뒼땯둔뒬듌딜뎸뒹듻땨딅딟뒈땸땭땫뒵딃듐돤딽땣됩뒼땟땅뒀땵돨딁듻땪되딁땸딹두돴뒾듰땟된뒼뒤뎨딅땱땝돳땰듸땠뒼땀뎬뎠땰뒨듌뎰딞뒙뒷딤땤딁딸뒤땦돸땍땯둠뒉뒨땔돴딜듐땍둣땰뎽땧듔뎨뒙땭뒼뎻땩듌뎸딸땧뎻;-><init>(Lcom/v2ray/ang/service/V2RayVpnService;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/v2ray/ang/service/V2RayVpnService;->defaultNetworkCallback$delegate:Lkotlin/Lazy;

    .line 46
    .line 47
    return-void
.end method

.method public static final synthetic access$getMSG_STATE_STAR$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/V2RayVpnService;->MSG_STATE_STAR:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMSG_STATE_STOP$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/V2RayVpnService;->MSG_STATE_STOP:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final configurePerAppProxy(Landroid/net/VpnService$Builder;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 17
    .line 18
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v4, 0x4

    .line 21
    new-array v5, v4, [J

    .line 22
    .line 23
    fill-array-data v5, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v4, v4, [J

    .line 46
    .line 47
    fill-array-data v4, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v3}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsStringSet(Ljava/lang/String;)Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    move-object v4, v3

    .line 62
    check-cast v4, Ljava/util/Collection;

    .line 63
    .line 64
    if-eqz v4, :cond_5

    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v5, v1, [J

    .line 76
    .line 77
    fill-array-data v5, :array_3

    .line 78
    .line 79
    .line 80
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v2, v4}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :goto_0
    check-cast v3, Ljava/lang/Iterable;

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_4

    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Ljava/lang/String;

    .line 117
    .line 118
    if-eqz v2, :cond_3

    .line 119
    .line 120
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-exception v3

    .line 126
    goto :goto_3

    .line 127
    :cond_3
    invoke-virtual {p1, v3}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    :goto_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :goto_3
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v5, v1, [J

    .line 138
    .line 139
    fill-array-data v5, :array_4

    .line 140
    .line 141
    .line 142
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    return-void

    .line 153
    :cond_5
    :goto_4
    invoke-virtual {p1, v0}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :array_0
    .array-data 8
        -0x2bbbe01473a58452L    # -8.597214504576884E97
        0x46a4b127d36e873dL    # 2.098419511793721E32
        0x4adfacb7d1190d80L    # 4.7403618735312676E52
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_1
    .array-data 8
        -0x31728d80c4e446bcL    # -2.540468461922074E70
        -0x4d4fe3d5ceb9e35L    # -2.007984075897851E285
        0x4b933df5336b8ed1L    # 1.179532560515263E56
        -0x619f2f21b1a5e950L    # -2.336104458939875E-162
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 8
        0x13ea536e7eec2ae9L    # 9.774991319549027E-213
        0x155ba99b9e5bcf8eL    # 8.616182416764072E-206
        0x6ed4f2c37c6e8338L    # 7.753993888187473E225
        0x18155cc6e0283c45L
    .end array-data

    :array_3
    .array-data 8
        0x2fbd847b29c94bcdL    # 9.957739947189156E-79
        0x13fe86d76854751aL
        -0x71c25c8117e19caeL
    .end array-data

    :array_4
    .array-data 8
        0x603e57704182f07L
        -0x239f5d7fbc0692afL    # -9.672635816544493E136
        -0x264c3e239c8b3278L    # -1.3060660673250696E124
    .end array-data
.end method

.method private static final connectivity_delegate$lambda$1(Lcom/v2ray/ang/service/V2RayVpnService;)Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/16 v1, 0xa

    .line 23
    .line 24
    new-array v1, v1, [J

    .line 25
    .line 26
    fill-array-data v1, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x1d7aa8408921c062L    # 1.130153689326369E-166
        -0x1e5856c70d21fcf4L
        0x2ed09131e548461L
    .end array-data

    .line 44
    :array_1
    .array-data 8
        -0x408c83307c94a625L    # -0.004757700537729249
        -0x33bac40e16cf900aL    # -2.6657796538844583E59
        -0x3de0a5b19b6907a5L    # -3.3664768293742535E10
        -0x3caadb5fbf7231faL    # -2.3804980829304856E16
        -0x4712563ea11af3ebL    # -1.785283304084408E-34
        0x5142fa0ec6359b4bL    # 2.880126218754357E83
        -0x39ea37cb7f85ed00L    # -4.3143797140530544E29
        0x40258ac9e8ad886L
        -0x37edfcc7ebe5b6e7L    # -1.532340366229768E39
        -0x6d528e46d0b32716L
    .end array-data
.end method

.method private static final defaultNetworkCallback_delegate$lambda$2(Lcom/v2ray/ang/service/V2RayVpnService;)Lcom/v2ray/ang/service/V2RayVpnService$defaultNetworkCallback$2$1;
    .locals 1

    .line 1
    new-instance v0, Lcom/v2ray/ang/service/V2RayVpnService$defaultNetworkCallback$2$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/v2ray/ang/service/V2RayVpnService$defaultNetworkCallback$2$1;-><init>(Lcom/v2ray/ang/service/V2RayVpnService;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final defaultNetworkRequest_delegate$lambda$0()Landroid/net/NetworkRequest;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v1, 0xd

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method private final getConnectivity()Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/service/V2RayVpnService;->connectivity$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getDefaultNetworkCallback()Lcom/v2ray/ang/service/V2RayVpnService$defaultNetworkCallback$2$1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/service/V2RayVpnService;->defaultNetworkCallback$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/v2ray/ang/service/V2RayVpnService$defaultNetworkCallback$2$1;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getDefaultNetworkRequest()Landroid/net/NetworkRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/service/V2RayVpnService;->defaultNetworkRequest$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/NetworkRequest;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final getMSG_STATE_STAR()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/v2ray/ang/service/V2RayVpnService;->Companion:Lcom/v2ray/ang/service/V2RayVpnService$Companion;

    invoke-virtual {v0}, Lcom/v2ray/ang/service/V2RayVpnService$Companion;->getMSG_STATE_STAR()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getMSG_STATE_STOP()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/v2ray/ang/service/V2RayVpnService;->Companion:Lcom/v2ray/ang/service/V2RayVpnService$Companion;

    invoke-virtual {v0}, Lcom/v2ray/ang/service/V2RayVpnService$Companion;->getMSG_STATE_STOP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final runTun2socks()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v3, 0x5

    .line 20
    new-array v3, v3, [J

    .line 21
    .line 22
    fill-array-data v3, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/v2ray/ang/handler/SettingsManager;->getSocksPort()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v1}, Lcom/v2ray/ang/handler/SettingsManager;->getCurrentVpnInterfaceAddressConfig()Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v4, Ljava/io/File;

    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v7, v2, [J

    .line 56
    .line 57
    fill-array-data v7, :array_2

    .line 58
    .line 59
    .line 60
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v5, v2, [J

    .line 77
    .line 78
    fill-array-data v5, :array_3

    .line 79
    .line 80
    .line 81
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->getIpv4Router()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v5, v2, [J

    .line 95
    .line 96
    fill-array-data v5, :array_4

    .line 97
    .line 98
    .line 99
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v5, v2, [J

    .line 109
    .line 110
    fill-array-data v5, :array_5

    .line 111
    .line 112
    .line 113
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    const/4 v5, 0x4

    .line 123
    new-array v6, v5, [J

    .line 124
    .line 125
    fill-array-data v6, :array_6

    .line 126
    .line 127
    .line 128
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    const-string v4, "127.0.0.1:"

    .line 136
    .line 137
    invoke-static {v3, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    const/4 v6, 0x2

    .line 144
    new-array v14, v6, [J

    .line 145
    .line 146
    fill-array-data v14, :array_7

    .line 147
    .line 148
    .line 149
    invoke-direct {v3, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v15, v6, [J

    .line 159
    .line 160
    fill-array-data v15, :array_8

    .line 161
    .line 162
    .line 163
    invoke-direct {v3, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v15

    .line 170
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 171
    .line 172
    new-array v6, v2, [J

    .line 173
    .line 174
    fill-array-data v6, :array_9

    .line 175
    .line 176
    .line 177
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v16

    .line 184
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 185
    .line 186
    new-array v6, v2, [J

    .line 187
    .line 188
    fill-array-data v6, :array_a

    .line 189
    .line 190
    .line 191
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v17

    .line 198
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 199
    .line 200
    new-array v6, v5, [J

    .line 201
    .line 202
    fill-array-data v6, :array_b

    .line 203
    .line 204
    .line 205
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v18

    .line 212
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    new-array v6, v2, [J

    .line 215
    .line 216
    fill-array-data v6, :array_c

    .line 217
    .line 218
    .line 219
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v19

    .line 226
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 227
    .line 228
    const/4 v6, 0x2

    .line 229
    new-array v5, v6, [J

    .line 230
    .line 231
    fill-array-data v5, :array_d

    .line 232
    .line 233
    .line 234
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v20

    .line 241
    filled-new-array/range {v7 .. v20}, [Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    sget-object v5, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 250
    .line 251
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 252
    .line 253
    new-array v7, v2, [J

    .line 254
    .line 255
    fill-array-data v7, :array_e

    .line 256
    .line 257
    .line 258
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    invoke-virtual {v5, v6}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-eqz v6, :cond_0

    .line 270
    .line 271
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v7, v2, [J

    .line 274
    .line 275
    fill-array-data v7, :array_f

    .line 276
    .line 277
    .line 278
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->getIpv6Router()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 296
    .line 297
    const/4 v6, 0x4

    .line 298
    new-array v7, v6, [J

    .line 299
    .line 300
    fill-array-data v7, :array_10

    .line 301
    .line 302
    .line 303
    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v5, v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_1

    .line 315
    .line 316
    sget-object v1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 317
    .line 318
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 319
    .line 320
    new-array v6, v6, [J

    .line 321
    .line 322
    fill-array-data v6, :array_11

    .line 323
    .line 324
    .line 325
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    invoke-static {v5}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 337
    .line 338
    const/4 v7, 0x2

    .line 339
    new-array v8, v7, [J

    .line 340
    .line 341
    fill-array-data v8, :array_12

    .line 342
    .line 343
    .line 344
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    invoke-virtual {v1, v5, v6}, Lcom/v2ray/ang/util/Utils;->parseInt(Ljava/lang/String;I)I

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 360
    .line 361
    new-array v6, v7, [J

    .line 362
    .line 363
    fill-array-data v6, :array_13

    .line 364
    .line 365
    .line 366
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 392
    .line 393
    new-array v4, v2, [J

    .line 394
    .line 395
    fill-array-data v4, :array_14

    .line 396
    .line 397
    .line 398
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    .line 408
    .line 409
    invoke-direct {v1, v3}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 410
    .line 411
    .line 412
    const/4 v3, 0x1

    .line 413
    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    iput-object v1, v0, Lcom/v2ray/ang/service/V2RayVpnService;->process:Ljava/lang/Process;

    .line 433
    .line 434
    new-instance v1, Ljava/lang/Thread;

    .line 435
    .line 436
    new-instance v3, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;

    .line 437
    .line 438
    const/16 v4, 0xb

    .line 439
    .line 440
    invoke-direct {v3, v0, v4}, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;-><init>(Ljava/lang/Object;I)V

    .line 441
    .line 442
    .line 443
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 447
    .line 448
    .line 449
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 450
    .line 451
    new-array v3, v2, [J

    .line 452
    .line 453
    fill-array-data v3, :array_15

    .line 454
    .line 455
    .line 456
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    iget-object v1, v0, Lcom/v2ray/ang/service/V2RayVpnService;->process:Ljava/lang/Process;

    .line 463
    .line 464
    if-nez v1, :cond_2

    .line 465
    .line 466
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 467
    .line 468
    const/4 v3, 0x2

    .line 469
    new-array v3, v3, [J

    .line 470
    .line 471
    fill-array-data v3, :array_16

    .line 472
    .line 473
    .line 474
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    const/4 v1, 0x0

    .line 481
    :cond_2
    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/v2ray/ang/service/V2RayVpnService;->sendFd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .line 486
    .line 487
    goto :goto_0

    .line 488
    :catch_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 489
    .line 490
    new-array v2, v2, [J

    .line 491
    .line 492
    fill-array-data v2, :array_17

    .line 493
    .line 494
    .line 495
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 502
    .line 503
    const/4 v2, 0x6

    .line 504
    new-array v2, v2, [J

    .line 505
    .line 506
    fill-array-data v2, :array_18

    .line 507
    .line 508
    .line 509
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    :goto_0
    return-void

    .line 516
    nop

    .line 517
    :array_0
    .array-data 8
        -0x4e9dbe1b02e07584L    # -8.266657915189781E-71
        -0x7a07c2f1b0f6df02L    # -6.676514149220158E-280
        0x5abf8faa9a5ed081L    # 1.367324598132804E129
    .end array-data

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :array_1
    .array-data 8
        -0x22881cc2689ea71L    # -1.536433645176575E298
        0x18e5641a32ed6951L    # 9.602057843232602E-189
        0x228ccc0a9f7b4e09L
        -0x2e3dc4c0d7d88965L    # -7.083527335133364E85
        0x2b8cf93188d975c4L    # 6.623248939693789E-99
    .end array-data

    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_2
    .array-data 8
        -0x4f18b469bdf9b914L    # -4.1202033639668295E-73
        0x7de71f70ab819662L    # 3.024449842006912E298
        -0x68e7ba94060fe286L
    .end array-data

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :array_3
    .array-data 8
        0x68be0837d3582L
        0x53fb14a76ce101c8L    # 3.615248798691793E96
        -0x5d77509a35b8c1bcL    # -2.530391828456263E-142
    .end array-data

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    :array_4
    .array-data 8
        -0x78be44f4e9a174edL
        -0x21860f5245c5632L    # -3.089646336815981E298
        -0x75f7afab3163fb77L
    .end array-data

    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    :array_5
    .array-data 8
        -0x152c776ae429998L
        -0x79115399b27edbb7L
        -0x70a30aeecb124042L
    .end array-data

    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    :array_6
    .array-data 8
        -0x149a3bda2aae76caL    # -2.236194963004471E209
        -0x40a7570b3f1c5b89L    # -0.0015051260157241933
        0x69df41685ffd9d3cL    # 9.56981511604402E201
        0x20a655d6dae1da24L    # 2.132279678846179E-151
    .end array-data

    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    :array_7
    .array-data 8
        0x5e30f28df88a2b0cL    # 5.290576738596095E145
        0x534944d874d9bd90L    # 1.6471588845084132E93
    .end array-data

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    :array_8
    .array-data 8
        -0x32ac52dee8389859L    # -3.237741862538942E64
        0x7d019059733548e9L    # 1.4021867822791824E294
    .end array-data

    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    :array_9
    .array-data 8
        -0x5fd661fe520a61fcL    # -9.553095204463264E-154
        -0x5c92664d5e651167L
        -0x14d69166046086afL    # -1.6330074628956929E208
    .end array-data

    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    :array_a
    .array-data 8
        -0x1ae80b33c802b793L    # -9.707694877110984E178
        0x4ceff685b4467249L    # 4.1090019853101405E62
        0x2c0273065d0a65ebL    # 1.079671572095538E-96
    .end array-data

    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    :array_b
    .array-data 8
        0x4fb577bd0a40d9e9L    # 9.710129327445862E75
        -0x2eabc9881c85f81eL    # -6.135423967839894E83
        -0x2dba1b6de32c4fa6L    # -2.177565050979035E88
        -0x5a0dd941507bdc84L    # -6.70363999796607E-126
    .end array-data

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    :array_c
    .array-data 8
        0x391ef42c766348c7L    # 1.490371423597584E-33
        -0x43f6df4a954e897eL
        -0x485527bdd98491c3L    # -1.5408136227088568E-40
    .end array-data

    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    :array_d
    .array-data 8
        -0x72a4fa3fd0d82e20L
        -0x7c3699f60f4d3903L
    .end array-data

    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    :array_e
    .array-data 8
        0x6164f8ba4f01e2beL    # 1.4742091928013637E161
        0x4a08f09cf849a9c5L    # 4.5562122032629436E48
        -0x176460470e49980aL    # -8.066078422194583E195
    .end array-data

    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    :array_f
    .array-data 8
        -0x37d2454794f142aeL    # -5.058191300965397E39
        -0x66ae19e551845be8L
        -0x1c25d53118bef0ecL    # -1.0112420199546574E173
    .end array-data

    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    :array_10
    .array-data 8
        0x718c0a2ed348ee86L    # 9.129376841623411E238
        0x614e5d2172ff5a9eL    # 5.3360969173331705E160
        -0x26b0e4d8199493c3L    # -1.6064733006118145E122
        -0x34d8419c94a82159L    # -1.1370975405590796E54
    .end array-data

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    :array_11
    .array-data 8
        0x42d6d06cd14cdb46L    # 1.003377386586691E14
        -0x33f0d872b2f7e6e6L    # -2.4444995619049611E58
        -0x247abe8a22d1e7e2L    # -7.543686180000415E132
        0x3b294c8e2ec1a802L    # 1.046343957771299E-23
    .end array-data

    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    :array_12
    .array-data 8
        0x21176a5d05b9fe5dL
        -0x6cc03cfa88e960c9L
    .end array-data

    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    :array_13
    .array-data 8
        -0x5264de17cd147f74L    # -5.327829186983714E-89
        0x38bc7c734a2f58b6L    # 2.1430585477315663E-35
    .end array-data

    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    :array_14
    .array-data 8
        -0x72281d635599ad6bL    # -5.596962949984806E-242
        -0x4a2abfdd239399c0L    # -2.271906873285511E-49
        -0x79578504acd6864aL
    .end array-data

    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    :array_15
    .array-data 8
        0x20dc865d10e1188aL
        0x2102ff8b677ec9e3L
        0xc1957077be9f18aL
    .end array-data

    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    :array_16
    .array-data 8
        -0x4348de0f5270c8a2L    # -3.2102901870617157E-16
        0xe89712033a6f1aL
    .end array-data

    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    :array_17
    .array-data 8
        0x33b2fee419a0fca5L    # 1.1821033237323441E-59
        -0x4fe1c64edc9066edL    # -6.525782410286919E-77
        -0x63a0a6f4bbda0aaaL    # -5.069789718033067E-172
    .end array-data

    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    :array_18
    .array-data 8
        0x4db6fb9e7c85a63dL    # 2.420380505528845E66
        0x41ab0432c677ca9aL    # 2.266299872339676E8
        -0x4ba9dc88afb356d0L    # -1.4107491173714584E-56
        -0x7224124653240f19L    # -6.544445949369922E-242
        0x3da44f65673aedc2L    # 9.235982834386114E-12
        -0x2c7c496df3e8729cL    # -2.0560091319032287E94
    .end array-data
.end method

.method private static final runTun2socks$lambda$7(Lcom/v2ray/ang/service/V2RayVpnService;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    new-array v3, v2, [J

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/v2ray/ang/service/V2RayVpnService;->process:Ljava/lang/Process;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    new-array v3, v3, [J

    .line 37
    .line 38
    fill-array-data v3, :array_2

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v3, v1, [J

    .line 54
    .line 55
    fill-array-data v3, :array_3

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v3, v2, [J

    .line 67
    .line 68
    fill-array-data v3, :array_4

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    iget-boolean v0, p0, Lcom/v2ray/ang/service/V2RayVpnService;->isRunning:Z

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v1, v1, [J

    .line 84
    .line 85
    fill-array-data v1, :array_5

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v1, v2, [J

    .line 97
    .line 98
    fill-array-data v1, :array_6

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/v2ray/ang/service/V2RayVpnService;->runTun2socks()V

    .line 108
    .line 109
    .line 110
    :cond_1
    return-void

    .line 111
    :array_0
    .array-data 8
        -0x7125fe8004481c52L    # -3.993692576212018E-237
        -0xbd285285dcc2941L    # -4.221353360448308E251
        0x2b35f2cadbeb2d03L
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_1
    .array-data 8
        0x343fb4418af5f8a6L    # 5.050758525271323E-57
        0x7d4ba30a85603ca3L    # 3.5301630535787093E295
        0x67e936e7ff9960aeL    # 3.594986136479001E192
        0x51705050919066f0L    # 1.980760911349228E84
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_2
    .array-data 8
        -0x640f50229ea67c2cL    # -4.216771281827684E-174
        -0x5e1f42b17dc00963L
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 8
        -0x63cb1935a3caa3fL    # -3.42236303637334E278
        -0x462084d5cf9ed8e0L    # -6.2085547265776216E-30
        0x632f9f3508e25e58L    # 5.966993685292586E169
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_4
    .array-data 8
        -0x2ce070b6b046308aL    # -2.5715307819438163E92
        0x1ce8dd6175e980baL    # 2.058907653093626E-169
        0x24b7fd7cdeaf313eL    # 8.449588013964558E-132
        -0x467b388663f47a20L
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_5
    .array-data 8
        0x61e598aa818966daL    # 3.8864049857204046E163
        0x234148f64c34f315L    # 7.257408977211067E-139
        -0x19a90c594e192e32L    # -9.75244237312055E184
    .end array-data

    :array_6
    .array-data 8
        0x7b47d3bcbdd7c628L    # 7.086259734685551E285
        0x65de9ab339c55dfcL
        -0x10422408274f0618L    # -1.8108213577501356E230
        0x4d47be67da49fc84L    # 1.9535242653831645E64
    .end array-data
.end method

.method private final sendFd()V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object v1, p0, Lcom/v2ray/ang/service/V2RayVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v3, v0, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-object v1, v2

    .line 21
    :cond_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v3, Ljava/io/File;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v6, v0, [J

    .line 38
    .line 39
    fill-array-data v6, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v0, v0, [J

    .line 59
    .line 60
    fill-array-data v0, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    new-instance v7, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;

    .line 78
    .line 79
    invoke-direct {v7, v3, v1, v2}, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;Lkotlin/coroutines/Continuation;)V

    .line 80
    .line 81
    .line 82
    const/4 v8, 0x3

    .line 83
    const/4 v9, 0x0

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        -0x781594a1a99bb13eL
        -0xcba08a5b4a8ee4L
        0x54b047e94a82f7e7L    # 8.902604489157896E99
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 8
        0x6b2aad574138c247L    # 1.712954565567705E208
        0x7fe718d7f6feec29L    # 1.29754374632538E308
        -0x9a1d3602b2778eaL
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_2
    .array-data 8
        -0x604be4d1ea8b9394L    # -5.857760979576735E-156
        -0x457a4f42a115ef1fL    # -8.76067857898362E-27
        0x1ef05dbf6c99b63cL
    .end array-data
.end method

.method private final setup()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/service/V2RayVpnService;->setupVpnService()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/v2ray/ang/service/V2RayVpnService;->runTun2socks()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final setupVpnService()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x3

    .line 6
    new-instance v4, Landroid/net/VpnService$Builder;

    .line 7
    .line 8
    invoke-direct {v4, v0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 9
    .line 10
    .line 11
    sget-object v5, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 12
    .line 13
    invoke-virtual {v5}, Lcom/v2ray/ang/handler/SettingsManager;->getCurrentVpnInterfaceAddressConfig()Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    const/16 v7, 0x5dc

    .line 18
    .line 19
    invoke-virtual {v4, v7}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->getIpv4Client()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const/16 v8, 0x1e

    .line 27
    .line 28
    invoke-virtual {v4, v7, v8}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Lcom/v2ray/ang/handler/SettingsManager;->routingRulesetsBypassLan()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/4 v7, 0x1

    .line 36
    const/4 v8, 0x0

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    sget-object v9, Lcom/v2ray/ang/AppConfig;->INSTANCE:Lcom/v2ray/ang/AppConfig;

    .line 40
    .line 41
    invoke-virtual {v9}, Lcom/v2ray/ang/AppConfig;->getROUTED_IP_LIST()Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    if-eqz v10, :cond_1

    .line 54
    .line 55
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    move-object v11, v10

    .line 60
    check-cast v11, Ljava/lang/String;

    .line 61
    .line 62
    new-array v12, v7, [C

    .line 63
    .line 64
    const/16 v10, 0x2f

    .line 65
    .line 66
    aput-char v10, v12, v8

    .line 67
    .line 68
    const/4 v13, 0x0

    .line 69
    const/4 v14, 0x0

    .line 70
    const/4 v15, 0x6

    .line 71
    const/16 v16, 0x0

    .line 72
    .line 73
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    check-cast v11, Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    check-cast v10, Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    invoke-virtual {v4, v11, v10}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v10, v2, [J

    .line 100
    .line 101
    fill-array-data v10, :array_0

    .line 102
    .line 103
    .line 104
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-virtual {v4, v9, v8}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    sget-object v9, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 119
    .line 120
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v11, v3, [J

    .line 123
    .line 124
    fill-array-data v11, :array_1

    .line 125
    .line 126
    .line 127
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    invoke-virtual {v9, v10}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    if-ne v9, v7, :cond_3

    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->getIpv6Client()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    const/16 v9, 0x7e

    .line 145
    .line 146
    invoke-virtual {v4, v6, v9}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 147
    .line 148
    .line 149
    if-eqz v5, :cond_2

    .line 150
    .line 151
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    new-array v6, v2, [J

    .line 154
    .line 155
    fill-array-data v6, :array_2

    .line 156
    .line 157
    .line 158
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v4, v5, v3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 166
    .line 167
    .line 168
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v2, v2, [J

    .line 171
    .line 172
    fill-array-data v2, :array_3

    .line 173
    .line 174
    .line 175
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    const/16 v5, 0x12

    .line 183
    .line 184
    invoke-virtual {v4, v2, v5}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_2
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array v2, v2, [J

    .line 191
    .line 192
    fill-array-data v2, :array_4

    .line 193
    .line 194
    .line 195
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v4, v2, v8}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 203
    .line 204
    .line 205
    :cond_3
    :goto_1
    sget-object v2, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 206
    .line 207
    invoke-virtual {v2}, Lcom/v2ray/ang/handler/SettingsManager;->getVpnDnsServers()Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Ljava/lang/Iterable;

    .line 212
    .line 213
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-eqz v5, :cond_5

    .line 222
    .line 223
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Ljava/lang/String;

    .line 228
    .line 229
    sget-object v6, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 230
    .line 231
    invoke-virtual {v6, v5}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_4

    .line 236
    .line 237
    invoke-virtual {v4, v5}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_5
    sget-object v2, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 242
    .line 243
    invoke-virtual {v2}, Lcom/v2ray/ang/service/V2RayServiceManager;->getRunningServerName()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v4, v2}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 248
    .line 249
    .line 250
    invoke-direct {v0, v4}, Lcom/v2ray/ang/service/V2RayVpnService;->configurePerAppProxy(Landroid/net/VpnService$Builder;)V

    .line 251
    .line 252
    .line 253
    const/4 v2, 0x0

    .line 254
    :try_start_0
    iget-object v5, v0, Lcom/v2ray/ang/service/V2RayVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    .line 255
    .line 256
    if-nez v5, :cond_6

    .line 257
    .line 258
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 259
    .line 260
    new-array v6, v3, [J

    .line 261
    .line 262
    fill-array-data v6, :array_5

    .line 263
    .line 264
    .line 265
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-object v5, v2

    .line 272
    goto :goto_3

    .line 273
    :catch_0
    nop

    .line 274
    goto :goto_4

    .line 275
    :cond_6
    :goto_3
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .line 277
    .line 278
    :goto_4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 279
    .line 280
    const/16 v6, 0x1c

    .line 281
    .line 282
    if-lt v5, v6, :cond_7

    .line 283
    .line 284
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/v2ray/ang/service/V2RayVpnService;->getConnectivity()Landroid/net/ConnectivityManager;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/v2ray/ang/service/V2RayVpnService;->getDefaultNetworkRequest()Landroid/net/NetworkRequest;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/v2ray/ang/service/V2RayVpnService;->getDefaultNetworkCallback()Lcom/v2ray/ang/service/V2RayVpnService$defaultNetworkCallback$2$1;

    .line 293
    .line 294
    .line 295
    move-result-object v9

    .line 296
    invoke-virtual {v5, v6, v9}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    .line 298
    .line 299
    goto :goto_5

    .line 300
    :catch_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 301
    .line 302
    new-array v6, v3, [J

    .line 303
    .line 304
    fill-array-data v6, :array_6

    .line 305
    .line 306
    .line 307
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 314
    .line 315
    new-array v6, v1, [J

    .line 316
    .line 317
    fill-array-data v6, :array_7

    .line 318
    .line 319
    .line 320
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    :cond_7
    :goto_5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 327
    .line 328
    const/16 v6, 0x1d

    .line 329
    .line 330
    if-lt v5, v6, :cond_8

    .line 331
    .line 332
    invoke-static {v4}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroid/net/VpnService$Builder;)V

    .line 333
    .line 334
    .line 335
    sget-object v5, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 336
    .line 337
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 338
    .line 339
    const/4 v9, 0x4

    .line 340
    new-array v9, v9, [J

    .line 341
    .line 342
    fill-array-data v9, :array_8

    .line 343
    .line 344
    .line 345
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    invoke-virtual {v5, v6}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-eqz v5, :cond_8

    .line 357
    .line 358
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 359
    .line 360
    new-array v6, v3, [J

    .line 361
    .line 362
    fill-array-data v6, :array_9

    .line 363
    .line 364
    .line 365
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    sget-object v6, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 373
    .line 374
    invoke-virtual {v6}, Lcom/v2ray/ang/handler/SettingsManager;->getHttpPort()I

    .line 375
    .line 376
    .line 377
    move-result v6

    .line 378
    invoke-static {v5, v6}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    invoke-static {v4, v5}, L땫땩땳딸됴됴둠딟땬딁땱듰됨듨돳땱돷드땅돶뒋뒹듬땨땩땥뒬땠딅돸둬됩둣뒛듻뎬땵딝땡둣뎽딸땲뎹땝뒈돵딃둣돰딽듬딄땫들도땔딄돶둣둣듻득뒷뎠뒀듬드땪땣뎬땪딁땡됫득됐듰두딎됐따딎뒵땫땨땻뎬땁딄땝딹땤둡뒘뒹뒹땹돳돛듔두돶뎨둑둡땟딀되둠딤딠뒝뒹땩뒐딐딨딐땸땅듬딀땄땪둔땋땦땯둑;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroid/net/VpnService$Builder;Landroid/net/ProxyInfo;)V

    .line 383
    .line 384
    .line 385
    :cond_8
    :try_start_2
    invoke-virtual {v4}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    iput-object v4, v0, Lcom/v2ray/ang/service/V2RayVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    .line 393
    .line 394
    iput-boolean v7, v0, Lcom/v2ray/ang/service/V2RayVpnService;->isRunning:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 395
    .line 396
    return v7

    .line 397
    :catch_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 398
    .line 399
    new-array v3, v3, [J

    .line 400
    .line 401
    fill-array-data v3, :array_a

    .line 402
    .line 403
    .line 404
    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 411
    .line 412
    new-array v1, v1, [J

    .line 413
    .line 414
    fill-array-data v1, :array_b

    .line 415
    .line 416
    .line 417
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    invoke-static {v0, v8, v7, v2}, Lcom/v2ray/ang/service/V2RayVpnService;->stopV2Ray$default(Lcom/v2ray/ang/service/V2RayVpnService;ZILjava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    return v8

    .line 427
    :array_0
    .array-data 8
        0x5f238d7bca6dfb35L    # 2.000110213057069E150
        -0x983c9b9b01f3888L
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    :array_1
    .array-data 8
        -0x1043123a48ef1148L    # -1.7543938478742655E230
        -0x10c2e53a3732754bL    # -6.894742998932599E227
        0x7bdba3fc2c35e902L    # 4.2088437651564915E288
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_2
    .array-data 8
        0x7a96813598262748L    # 3.268057144540121E282
        0x3d494bcd1777caf0L    # 1.797395881947925E-13
    .end array-data

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    :array_3
    .array-data 8
        0x914942f9ad64020L    # 6.38211984672888E-265
        0x1114e96777fd38fdL
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    :array_4
    .array-data 8
        0x67353e2864d92c21L    # 1.4788670528391798E189
        -0x2ebafd4941ce9f62L    # -3.188800066040122E83
    .end array-data

    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    :array_5
    .array-data 8
        -0x593e20b9df913803L    # -5.407156017691767E-122
        0x26186a2bf914abb0L    # 3.606731394034245E-125
        0x25f387a267563cfeL
    .end array-data

    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    :array_6
    .array-data 8
        0x79164f79775fb850L    # 1.9310980680428268E275
        -0x7d4bb3dd40bbfbd2L
        0x358637c2c174a356L    # 7.422874145767192E-51
    .end array-data

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    :array_7
    .array-data 8
        0x75d8fd86ea0f161dL    # 4.802954168246871E259
        -0x7aea8dcb803d89b7L    # -3.60555980396545E-284
        -0x144fdb63ccdd2ff2L    # -5.30715113399809E210
        0x73dd5f270a5c1492L    # 1.31433280058694E250
        0xf9cc93aca2ad8f6L
        0x18b62e097f3cbf55L
    .end array-data

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    :array_8
    .array-data 8
        0x388a9d6e35a7a8deL    # 2.5028590843028286E-36
        -0x320c00681632ebccL    # -3.369725715951554E67
        -0x37e5195bf4105028L    # -2.288478939439047E39
        -0x47c25838a903dbaaL    # -8.714934512201574E-38
    .end array-data

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    :array_9
    .array-data 8
        0x665d5cafb6cbec6L
        -0x6ebe9f3cc74fb8a7L
        0x48d5d19d25244ca7L    # 7.602743603600012E42
    .end array-data

    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    :array_a
    .array-data 8
        -0x23fe4a4194562e94L    # -1.609033487259436E135
        0x142a92a9317e9974L
        -0x15efccfe7ac79d7aL    # -7.935819603089725E202
    .end array-data

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :array_b
    .array-data 8
        0x23cca0e4dc6c1163L
        -0x2baa485c13e0bf41L    # -1.8555186955479173E98
        -0x34f54da4ce69adfcL    # -3.1962953003234565E53
        -0x4c756f9d6ecfb97L
        0x6c2442f1373b79dbL    # 8.526256607303932E212
        -0x190943249733da94L    # -9.893370686341268E187
    .end array-data
.end method

.method private final stopV2Ray(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/v2ray/ang/service/V2RayVpnService;->isRunning:Z

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1c

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-direct {p0}, Lcom/v2ray/ang/service/V2RayVpnService;->getConnectivity()Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {p0}, Lcom/v2ray/ang/service/V2RayVpnService;->getDefaultNetworkCallback()Lcom/v2ray/ang/service/V2RayVpnService$defaultNetworkCallback$2$1;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    :cond_0
    const/4 v1, 0x0

    .line 23
    :try_start_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v3, v0, [J

    .line 26
    .line 27
    fill-array-data v3, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    new-array v3, v3, [J

    .line 40
    .line 41
    fill-array-data v3, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/v2ray/ang/service/V2RayVpnService;->process:Ljava/lang/Process;

    .line 51
    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/4 v3, 0x2

    .line 57
    new-array v3, v3, [J

    .line 58
    .line 59
    fill-array-data v3, :array_2

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-object v2, v1

    .line 69
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v3, v0, [J

    .line 76
    .line 77
    fill-array-data v3, :array_3

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    const/4 v3, 0x7

    .line 89
    new-array v3, v3, [J

    .line 90
    .line 91
    fill-array-data v3, :array_4

    .line 92
    .line 93
    .line 94
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    :goto_0
    sget-object v2, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/v2ray/ang/service/V2RayServiceManager;->stopCoreLoop()Z

    .line 103
    .line 104
    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 108
    .line 109
    .line 110
    :try_start_2
    iget-object p1, p0, Lcom/v2ray/ang/service/V2RayVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    .line 111
    .line 112
    if-nez p1, :cond_2

    .line 113
    .line 114
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v2, v0, [J

    .line 117
    .line 118
    fill-array-data v2, :array_5

    .line 119
    .line 120
    .line 121
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    move-object v1, p1

    .line 129
    :goto_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catch_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    new-array v0, v0, [J

    .line 136
    .line 137
    fill-array-data v0, :array_6

    .line 138
    .line 139
    .line 140
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    const/4 v0, 0x5

    .line 149
    new-array v0, v0, [J

    .line 150
    .line 151
    fill-array-data v0, :array_7

    .line 152
    .line 153
    .line 154
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_2
    return-void

    .line 161
    :array_0
    .array-data 8
        -0x698df04636371556L
        -0x59880ade183ca18bL
        0x135bd93c3472646fL
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_1
    .array-data 8
        0x4372a4aa946ebe53L    # 8.3961633959568688E16
        0x7e4a9f9a39d9833aL    # 2.2286916147486674E300
        -0x3dd7f8274c5d44L
        0x7ce8043c2cb094eL
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 8
        0x3c77cc52d97ec56dL    # 2.0641595363894757E-17
        -0x6a614430b13709f4L
    .end array-data

    :array_3
    .array-data 8
        0x1040b55668aeae1eL    # 2.152419328093352E-230
        0x7af5c935898d9c31L    # 2.0247569039653006E284
        -0x5b413fbbf29c855aL
    .end array-data

    :array_4
    .array-data 8
        -0x2ed05209c700bea1L    # -1.2020088592528536E83
        -0x117b8737f6e20f3dL    # -2.36800636758325E224
        -0x61a8f5a5b350df27L
        0x34c08e01775b57a0L    # 1.3503065287595674E-54
        -0x730516142640d6f9L    # -3.849265355078943E-246
        -0x4eabce40c41c887eL
        -0x45a989474f3982e3L    # -1.1341298316630698E-27
    .end array-data

    :array_5
    .array-data 8
        0x3887c8608c89a303L    # 2.2365165434243757E-36
        0x1c8404823dfcfcc0L
        -0x6517f4a475d108b7L    # -4.635599531954978E-179
    .end array-data

    :array_6
    .array-data 8
        0x3e93525932f202f8L    # 2.879153723836916E-7
        0x55355b8739e872c4L    # 2.989713769513983E102
        -0x706e486090caafcbL
    .end array-data

    :array_7
    .array-data 8
        -0x42f5719b177ddc90L    # -1.1793333970493004E-14
        0x78c9ea983d6beb69L    # 7.010040179118695E273
        0x3847c8c4454aa82eL
        -0x3f92758d730db9aaL    # -236.32648322409904
        0x6f406097f0c9f3f2L    # 7.75942479395546E227
    .end array-data
.end method

.method public static synthetic stopV2Ray$default(Lcom/v2ray/ang/service/V2RayVpnService;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/v2ray/ang/service/V2RayVpnService;->stopV2Ray(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/v2ray/ang/service/V2RayVpnService;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/v2ray/ang/service/V2RayVpnService;->connectivity_delegate$lambda$1(Lcom/v2ray/ang/service/V2RayVpnService;)Landroid/net/ConnectivityManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫()Landroid/net/NetworkRequest;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/service/V2RayVpnService;->defaultNetworkRequest_delegate$lambda$0()Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/v2ray/ang/service/V2RayVpnService;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/v2ray/ang/service/V2RayVpnService;->runTun2socks$lambda$7(Lcom/v2ray/ang/service/V2RayVpnService;)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/v2ray/ang/service/V2RayVpnService;)Lcom/v2ray/ang/service/V2RayVpnService$defaultNetworkCallback$2$1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/v2ray/ang/service/V2RayVpnService;->defaultNetworkCallback_delegate$lambda$2(Lcom/v2ray/ang/service/V2RayVpnService;)Lcom/v2ray/ang/service/V2RayVpnService$defaultNetworkCallback$2$1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/v2ray/ang/util/MyContextWrapper;->Companion:Lcom/v2ray/ang/util/MyContextWrapper$Companion;

    .line 4
    .line 5
    sget-object v1, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/v2ray/ang/handler/SettingsManager;->getLocale()Ljava/util/Locale;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/v2ray/ang/util/MyContextWrapper$Companion;->wrap(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/ContextWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-super {p0, p1}, Landroid/net/VpnService;->attachBaseContext(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public getService()Landroid/app/Service;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/net/VpnService;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v2, 0x21

    .line 48
    .line 49
    if-lt v1, v2, :cond_0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/v2ray/ang/service/V2RayVpnService;->broadcastReceiver:Lcom/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1;

    .line 52
    .line 53
    invoke-static {p0, v1, v0}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Lcom/v2ray/ang/service/V2RayVpnService;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/v2ray/ang/service/V2RayVpnService;->broadcastReceiver:Lcom/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1;

    .line 58
    .line 59
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    :goto_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 79
    .line 80
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/service/V2RayServiceManager;->setServiceControl(Ljava/lang/ref/SoftReference;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :array_0
    .array-data 8
        0x730b08a4b255af3L
        -0x5efc5db5a2b50837L    # -1.199609185883041E-149
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 8
        -0x26293a78174b818fL    # -6.021322176699492E124
        -0x41d48f8180d9b84fL    # -3.194370095865397E-9
        0x69b7327f3cac4caaL    # 1.775635006069831E201
    .end array-data
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/net/VpnService;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/v2ray/ang/service/V2RayVpnService;->broadcastReceiver:Lcom/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/v2ray/ang/service/NotificationService;->INSTANCE:Lcom/v2ray/ang/service/NotificationService;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/v2ray/ang/service/NotificationService;->cancelNotification()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onRevoke()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Lcom/v2ray/ang/service/V2RayVpnService;->stopV2Ray$default(Lcom/v2ray/ang/service/V2RayVpnService;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/v2ray/ang/service/V2RayServiceManager;->startCoreLoop()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/v2ray/ang/service/V2RayVpnService;->startService()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public startService()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/service/V2RayVpnService;->setup()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public stopService()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/v2ray/ang/service/V2RayVpnService;->stopV2Ray(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public vpnProtect(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/VpnService;->protect(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
