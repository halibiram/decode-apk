.class public final Landroidx/camera/camera2/Camera2Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/Camera2Config$DefaultProvider;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static defaultConfig()Landroidx/camera/core/CameraXConfig;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, L돵뒋딌됴땠딟된뎸땯딄딄뒬땐땁뎽뒤됴땀딜뒐땱득땝뒼딨뒤땨땁땮땲됨딝땄딟뒋둥둬뎠돛뒵디둑딐뒬딄뒷땭땬땣됨됩됐되딤둬뒐듸땐딄딹땋딨뎸돼듬땋땔돤땲듸뎽땭땟되딄뎻도뒐돼땍뒹땦딹디듽땃뎹득뎰뒈땜뎸땱딽땐뒈땵듬둡땮둥딤되땭땦도돛듰땱돶딝돷뎽돝뒼됐돛두땫딀딠딄듰땜딜뒋도땐뒛땲;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, L돵들땁돤딄뒈땠딠됫땃둥땮돵뒨됴땬딀땱뎡땵땩드돷돠땔땲땀딎땃뒙듨땱딅땀땨땅따땤뎰뎨둑돝들뒵뒼듐돳따뎸들땨돳뒷둑뒛두뒷딃듽둡됫땸땵땟땔된땰땦뒝땰디딽되땵듨듻땳둥딁뒀된딻둔딅뒼뒼딤뒹됐땪땀뒨땪땭둠땋땐돴딜디땀땡땬뒷딻뒝뒝딎뎨땟돨땝땱딃뎸뒛뒉되돛뒬뒵땯듟뎻땻뒨땝돵땣듬;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, L돵듨딐둬딁땬둥됨땡땻돸뒼땄딽뒋듨뒈땧듸땋됩땥딜듼듬득딀듻될땃뒻디뒻딤돳뒐딻따둥땱됩땰듬땬뎡돝뎬뒼뒷돠땁뎡땟딌뒀뒘딞딻딠딨땰듔돶땵뎹뒻땱땧딞딝듟땩뎹뒾땻땸땮땔땐딎딹땠땫땃땻땣둡딐듐돵땲됴딃뎻될땄땟뎡딹둠돨두딞뒈딠땬뒻듰땫둥딽뎠되되땳땰됴땦땤뎰딻땭뎹땲뒬둡뎬둑돰됫;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Landroidx/camera/core/CameraXConfig$Builder;

    .line 17
    .line 18
    invoke-direct {v3}, Landroidx/camera/core/CameraXConfig$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v0}, Landroidx/camera/core/CameraXConfig$Builder;->setCameraFactoryProvider(Landroidx/camera/core/impl/CameraFactory$Provider;)Landroidx/camera/core/CameraXConfig$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Landroidx/camera/core/CameraXConfig$Builder;->setDeviceSurfaceManagerProvider(Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;)Landroidx/camera/core/CameraXConfig$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v2}, Landroidx/camera/core/CameraXConfig$Builder;->setUseCaseConfigFactoryProvider(Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;)Landroidx/camera/core/CameraXConfig$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroidx/camera/core/CameraXConfig$Builder;->build()Landroidx/camera/core/CameraXConfig;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method private static synthetic lambda$defaultConfig$0(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)V
    :try_end_0
    .catch Landroidx/camera/core/CameraUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-object v0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Landroidx/camera/core/InitializationException;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method private static synthetic lambda$defaultConfig$1(Landroid/content/Context;)Landroidx/camera/core/impl/UseCaseConfigFactory;
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/camera2/internal/Camera2UseCaseConfigFactory;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/Camera2UseCaseConfigFactory;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/content/Context;)Landroidx/camera/core/impl/UseCaseConfigFactory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/camera2/Camera2Config;->lambda$defaultConfig$1(Landroid/content/Context;)Landroidx/camera/core/impl/UseCaseConfigFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/Camera2Config;->lambda$defaultConfig$0(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    move-result-object p0

    return-object p0
.end method
