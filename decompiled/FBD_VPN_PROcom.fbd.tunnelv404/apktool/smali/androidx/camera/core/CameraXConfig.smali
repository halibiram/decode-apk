.class public final Landroidx/camera/core/CameraXConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/internal/TargetConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/CameraXConfig$Builder;,
        Landroidx/camera/core/CameraXConfig$Provider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/internal/TargetConfig<",
        "Landroidx/camera/core/CameraX;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_OPTION_CAMERA_OPEN_RETRY_MAX_TIMEOUT_IN_MILLIS_WHILE_RESUMING:J = -0x1L

.field static final OPTION_AVAILABLE_CAMERAS_LIMITER:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/camera/core/CameraSelector;",
            ">;"
        }
    .end annotation
.end field

.field static final OPTION_CAMERA_EXECUTOR:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field static final OPTION_CAMERA_FACTORY_PROVIDER:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/camera/core/impl/CameraFactory$Provider;",
            ">;"
        }
    .end annotation
.end field

.field static final OPTION_CAMERA_OPEN_RETRY_MAX_TIMEOUT_IN_MILLIS_WHILE_RESUMING:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static final OPTION_CAMERA_PROVIDER_INIT_RETRY_POLICY:Landroidx/camera/core/impl/Config$Option;
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/camera/core/ExperimentalRetryPolicy;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/camera/core/RetryPolicy;",
            ">;"
        }
    .end annotation
.end field

.field static final OPTION_DEVICE_SURFACE_MANAGER_PROVIDER:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;",
            ">;"
        }
    .end annotation
.end field

.field static final OPTION_MIN_LOGGING_LEVEL:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final OPTION_QUIRK_SETTINGS:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/camera/core/impl/QuirkSettings;",
            ">;"
        }
    .end annotation
.end field

.field static final OPTION_SCHEDULER_HANDLER:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field static final OPTION_USECASE_CONFIG_FACTORY_PROVIDER:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfig:Landroidx/camera/core/impl/OptionsBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "camerax.core.appConfig.cameraFactoryProvider"

    .line 2
    .line 3
    const-class v1, Landroidx/camera/core/impl/CameraFactory$Provider;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_FACTORY_PROVIDER:Landroidx/camera/core/impl/Config$Option;

    .line 10
    .line 11
    const-string v0, "camerax.core.appConfig.deviceSurfaceManagerProvider"

    .line 12
    .line 13
    const-class v1, Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_DEVICE_SURFACE_MANAGER_PROVIDER:Landroidx/camera/core/impl/Config$Option;

    .line 20
    .line 21
    const-string v0, "camerax.core.appConfig.useCaseConfigFactoryProvider"

    .line 22
    .line 23
    const-class v1, Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_USECASE_CONFIG_FACTORY_PROVIDER:Landroidx/camera/core/impl/Config$Option;

    .line 30
    .line 31
    const-string v0, "camerax.core.appConfig.cameraExecutor"

    .line 32
    .line 33
    const-class v1, Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

    .line 40
    .line 41
    const-string v0, "camerax.core.appConfig.schedulerHandler"

    .line 42
    .line 43
    const-class v1, Landroid/os/Handler;

    .line 44
    .line 45
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_SCHEDULER_HANDLER:Landroidx/camera/core/impl/Config$Option;

    .line 50
    .line 51
    const-string v0, "camerax.core.appConfig.minimumLoggingLevel"

    .line 52
    .line 53
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_MIN_LOGGING_LEVEL:Landroidx/camera/core/impl/Config$Option;

    .line 60
    .line 61
    const-string v0, "camerax.core.appConfig.availableCamerasLimiter"

    .line 62
    .line 63
    const-class v1, Landroidx/camera/core/CameraSelector;

    .line 64
    .line 65
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_AVAILABLE_CAMERAS_LIMITER:Landroidx/camera/core/impl/Config$Option;

    .line 70
    .line 71
    const-string v0, "camerax.core.appConfig.cameraOpenRetryMaxTimeoutInMillisWhileResuming"

    .line 72
    .line 73
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 74
    .line 75
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_OPEN_RETRY_MAX_TIMEOUT_IN_MILLIS_WHILE_RESUMING:Landroidx/camera/core/impl/Config$Option;

    .line 80
    .line 81
    const-string v0, "camerax.core.appConfig.cameraProviderInitRetryPolicy"

    .line 82
    .line 83
    const-class v1, Landroidx/camera/core/RetryPolicy;

    .line 84
    .line 85
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_PROVIDER_INIT_RETRY_POLICY:Landroidx/camera/core/impl/Config$Option;

    .line 90
    .line 91
    const-string v0, "camerax.core.appConfig.quirksSettings"

    .line 92
    .line 93
    const-class v1, Landroidx/camera/core/impl/QuirkSettings;

    .line 94
    .line 95
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Landroidx/camera/core/CameraXConfig;->OPTION_QUIRK_SETTINGS:Landroidx/camera/core/impl/Config$Option;

    .line 100
    .line 101
    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/OptionsBundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic containsOption(Landroidx/camera/core/impl/Config$Option;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Z

    move-result p1

    return p1
.end method

.method public final synthetic findOptions(Ljava/lang/String;Landroidx/camera/core/impl/Config$OptionMatcher;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/ReadableConfig;Ljava/lang/String;Landroidx/camera/core/impl/Config$OptionMatcher;)V

    return-void
.end method

.method public getAvailableCamerasLimiter(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector;
    .locals 2
    .param p1    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_AVAILABLE_CAMERAS_LIMITER:Landroidx/camera/core/impl/Config$Option;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/camera/core/CameraSelector;

    .line 10
    .line 11
    return-object p1
.end method

.method public getCameraExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    return-object p1
.end method

.method public getCameraFactoryProvider(Landroidx/camera/core/impl/CameraFactory$Provider;)Landroidx/camera/core/impl/CameraFactory$Provider;
    .locals 2
    .param p1    # Landroidx/camera/core/impl/CameraFactory$Provider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_FACTORY_PROVIDER:Landroidx/camera/core/impl/Config$Option;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/camera/core/impl/CameraFactory$Provider;

    .line 10
    .line 11
    return-object p1
.end method

.method public getCameraOpenRetryMaxTimeoutInMillisWhileResuming()J
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_OPEN_RETRY_MAX_TIMEOUT_IN_MILLIS_WHILE_RESUMING:Landroidx/camera/core/impl/Config$Option;

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Long;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0
.end method

.method public getCameraProviderInitRetryPolicy()Landroidx/camera/core/RetryPolicy;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/camera/core/ExperimentalRetryPolicy;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_PROVIDER_INIT_RETRY_POLICY:Landroidx/camera/core/impl/Config$Option;

    .line 4
    .line 5
    sget-object v2, Landroidx/camera/core/RetryPolicy;->DEFAULT:Landroidx/camera/core/RetryPolicy;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/camera/core/RetryPolicy;

    .line 12
    .line 13
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroidx/camera/core/RetryPolicy;

    .line 17
    .line 18
    return-object v0
.end method

.method public getConfig()Landroidx/camera/core/impl/Config;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceSurfaceManagerProvider(Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;
    .locals 2
    .param p1    # Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_DEVICE_SURFACE_MANAGER_PROVIDER:Landroidx/camera/core/impl/Config$Option;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;

    .line 10
    .line 11
    return-object p1
.end method

.method public getMinimumLoggingLevel()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_MIN_LOGGING_LEVEL:Landroidx/camera/core/impl/Config$Option;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final synthetic getOptionPriority(Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getPriorities(Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getQuirkSettings()Landroidx/camera/core/impl/QuirkSettings;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_QUIRK_SETTINGS:Landroidx/camera/core/impl/Config$Option;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/camera/core/impl/QuirkSettings;

    .line 11
    .line 12
    return-object v0
.end method

.method public getSchedulerHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_SCHEDULER_HANDLER:Landroidx/camera/core/impl/Config$Option;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/os/Handler;

    .line 10
    .line 11
    return-object p1
.end method

.method public final synthetic getTargetClass()Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-static {p0}, L땩땔돰뒻땮뎸땦땸딅땋땬땐될딹딞딨딝디딠두땔둬들득땅디땣땸든딤둡드딟뒘돤땡뎰땋딻딄땄땵둥뒤뎬뒵딸돶딨될뎰뎸돷뒬땟딠득땩뒈땜뒛뎸땰땫됩듰땫뒨땯땨듨딀따돰딎됩됩듬땀땲땧땜뒋뒛듨땫뎻됨뒼뒻땋땦뎨둡땫두득딻돶땅뒹뎨딤딄따뎬땵둠뒷뒈둑뒻뒤돵뎹뒾땵될돳뎸딃두땲돵딜딁딃돛땋땋;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/internal/TargetConfig;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getTargetClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L땩땔돰뒻땮뎸땦땸딅땋땬땐될딹딞딨딝디딠두땔둬들득땅디땣땸든딤둡드딟뒘돤땡뎰땋딻딄땄땵둥뒤뎬뒵딸돶딨될뎰뎸돷뒬땟딠득땩뒈땜뒛뎸땰땫됩듰땫뒨땯땨듨딀따돰딎됩됩듬땀땲땧땜뒋뒛듨땫뎻됨뒼뒻땋땦뎨둡땫두득딻돶땅뒹뎨딤딄따뎬땵둠뒷뒈둑뒻뒤돵뎹뒾땵될돳뎸딃두땲돵딜딁딃돛땋땋;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/internal/TargetConfig;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getTargetName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, L땩땔돰뒻땮뎸땦땸딅땋땬땐될딹딞딨딝디딠두땔둬들득땅디땣땸든딤둡드딟뒘돤땡뎰땋딻딄땄땵둥뒤뎬뒵딸돶딨될뎰뎸돷뒬땟딠득땩뒈땜뒛뎸땰땫됩듰땫뒨땯땨듨딀따돰딎됩됩듬땀땲땧땜뒋뒛듨땫뎻됨뒼뒻땋땦뎨둡땫두득딻돶땅뒹뎨딤딄따뎬땵둠뒷뒈둑뒻뒤돵뎹뒾땵될돳뎸딃두땲돵딜딁딃돛땋땋;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/internal/TargetConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getTargetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L땩땔돰뒻땮뎸땦땸딅땋땬땐될딹딞딨딝디딠두땔둬들득땅디땣땸든딤둡드딟뒘돤땡뎰땋딻딄땄땵둥뒤뎬뒵딸돶딨될뎰뎸돷뒬땟딠득땩뒈땜뒛뎸땰땫됩듰땫뒨땯땨듨딀따돰딎됩됩듬땀땲땧땜뒋뒛듨땫뎻됨뒼뒻땋땦뎨둡땫두득딻돶땅뒹뎨딤딄따뎬땵둠뒷뒈둑뒻뒤돵뎹뒾땵될돳뎸딃두땲돵딜딁딃돛땋땋;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/core/internal/TargetConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUseCaseConfigFactoryProvider(Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;)Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;
    .locals 2
    .param p1    # Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_USECASE_CONFIG_FACTORY_PROVIDER:Landroidx/camera/core/impl/Config$Option;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;

    .line 10
    .line 11
    return-object p1
.end method

.method public final synthetic listOptions()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-static {p0}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/core/impl/ReadableConfig;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic retrieveOptionWithPriority(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
