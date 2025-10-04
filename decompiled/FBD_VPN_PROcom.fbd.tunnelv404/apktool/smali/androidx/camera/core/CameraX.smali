.class public final Landroidx/camera/core/CameraX;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation build Landroidx/annotation/OptIn;
    markerClass = {
        Landroidx/camera/core/ExperimentalRetryPolicy;
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/CameraX$InternalInitState;
    }
.end annotation


# static fields
.field private static final MIN_LOG_LEVEL_LOCK:Ljava/lang/Object;

.field private static final RETRY_TOKEN:Ljava/lang/String; = "retry_token"

.field private static final TAG:Ljava/lang/String; = "CameraX"

.field private static final sMinLogLevelReferenceCountMap:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "MIN_LOG_LEVEL_LOCK"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCameraExecutor:Ljava/util/concurrent/Executor;

.field private mCameraFactory:Landroidx/camera/core/impl/CameraFactory;

.field final mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

.field private final mCameraXConfig:Landroidx/camera/core/CameraXConfig;

.field private mDefaultConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

.field private final mInitInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mInitState:Landroidx/camera/core/CameraX$InternalInitState;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mInitializeLock"
    .end annotation
.end field

.field private final mInitializeLock:Ljava/lang/Object;

.field private final mMinLogLevel:Ljava/lang/Integer;

.field private final mRetryPolicy:Landroidx/camera/core/RetryPolicy;

.field private final mSchedulerHandler:Landroid/os/Handler;

.field private final mSchedulerThread:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mShutdownInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mInitializeLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/core/CameraX;->MIN_LOG_LEVEL_LOCK:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/camera/core/CameraX;->sMinLogLevelReferenceCountMap:Landroid/util/SparseArray;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/camera/core/CameraXConfig$Provider;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/CameraXConfig$Provider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/QuirkSettingsLoader;

    invoke-direct {v0}, Landroidx/camera/core/impl/QuirkSettingsLoader;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/camera/core/CameraX;-><init>(Landroid/content/Context;Landroidx/camera/core/CameraXConfig$Provider;Landroidx/arch/core/util/Function;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/camera/core/CameraXConfig$Provider;Landroidx/arch/core/util/Function;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/CameraXConfig$Provider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/camera/core/CameraXConfig$Provider;",
            "Landroidx/arch/core/util/Function<",
            "Landroid/content/Context;",
            "Landroidx/camera/core/impl/QuirkSettings;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/camera/core/impl/CameraRepository;

    invoke-direct {v0}, Landroidx/camera/core/impl/CameraRepository;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    .line 5
    sget-object v0, Landroidx/camera/core/CameraX$InternalInitState;->UNINITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v0, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/CameraX;->mShutdownInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p2}, Landroidx/camera/core/CameraXConfig$Provider;->getCameraXConfig()Landroidx/camera/core/CameraXConfig;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Landroidx/camera/core/CameraX;->getConfigProvider(Landroid/content/Context;)Landroidx/camera/core/CameraXConfig$Provider;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 9
    invoke-interface {p2}, Landroidx/camera/core/CameraXConfig$Provider;->getCameraXConfig()Landroidx/camera/core/CameraXConfig;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 10
    :goto_0
    iget-object p2, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    invoke-virtual {p2}, Landroidx/camera/core/CameraXConfig;->getQuirkSettings()Landroidx/camera/core/impl/QuirkSettings;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroidx/camera/core/CameraX;->updateQuirkSettings(Landroid/content/Context;Landroidx/camera/core/impl/QuirkSettings;Landroidx/arch/core/util/Function;)V

    .line 11
    iget-object p2, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    invoke-virtual {p2, v0}, Landroidx/camera/core/CameraXConfig;->getCameraExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 12
    iget-object p3, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    invoke-virtual {p3, v0}, Landroidx/camera/core/CameraXConfig;->getSchedulerHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p3

    if-nez p2, :cond_1

    .line 13
    new-instance p2, Landroidx/camera/core/CameraExecutor;

    invoke-direct {p2}, Landroidx/camera/core/CameraExecutor;-><init>()V

    :cond_1
    iput-object p2, p0, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    if-nez p3, :cond_2

    .line 14
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "CameraX-scheduler"

    const/16 v1, 0xa

    invoke-direct {p2, p3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Landroidx/camera/core/CameraX;->mSchedulerThread:Landroid/os/HandlerThread;

    .line 15
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 16
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/os/HandlerCompat;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    goto :goto_1

    .line 17
    :cond_2
    iput-object v0, p0, Landroidx/camera/core/CameraX;->mSchedulerThread:Landroid/os/HandlerThread;

    .line 18
    iput-object p3, p0, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    .line 19
    :goto_1
    iget-object p2, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    sget-object p3, Landroidx/camera/core/CameraXConfig;->OPTION_MIN_LOGGING_LEVEL:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3, v0}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Landroidx/camera/core/CameraX;->mMinLogLevel:Ljava/lang/Integer;

    .line 20
    invoke-static {p2}, Landroidx/camera/core/CameraX;->increaseMinLogLevelReference(Ljava/lang/Integer;)V

    .line 21
    new-instance p2, Landroidx/camera/core/RetryPolicy$Builder;

    iget-object p3, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 22
    invoke-virtual {p3}, Landroidx/camera/core/CameraXConfig;->getCameraProviderInitRetryPolicy()Landroidx/camera/core/RetryPolicy;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/camera/core/RetryPolicy$Builder;-><init>(Landroidx/camera/core/RetryPolicy;)V

    invoke-virtual {p2}, Landroidx/camera/core/RetryPolicy$Builder;->build()Landroidx/camera/core/RetryPolicy;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/core/CameraX;->mRetryPolicy:Landroidx/camera/core/RetryPolicy;

    .line 23
    invoke-direct {p0, p1}, Landroidx/camera/core/CameraX;->initInternal(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/CameraX;->mInitInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    .line 24
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CameraX is not configured properly. The most likely cause is you did not include a default implementation in your build such as \'camera-camera2\'."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static decreaseMinLogLevelReference(Ljava/lang/Integer;)V
    .locals 3
    .param p0    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/camera/core/CameraX;->MIN_LOG_LEVEL_LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    :try_start_0
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget-object v1, Landroidx/camera/core/CameraX;->sMinLogLevelReferenceCountMap:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {}, Landroidx/camera/core/CameraX;->updateOrResetMinLogLevel()V

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method private static getConfigProvider(Landroid/content/Context;)Landroidx/camera/core/CameraXConfig$Provider;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "CameraX"

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/camera/core/impl/utils/ContextUtil;->getApplicationFromContext(Landroid/content/Context;)Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Landroidx/camera/core/CameraXConfig$Provider;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    check-cast v1, Landroidx/camera/core/CameraXConfig$Provider;

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :try_start_0
    invoke-static {p0}, Landroidx/camera/core/impl/utils/ContextUtil;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Landroid/content/ComponentName;

    .line 24
    .line 25
    const-class v4, Landroidx/camera/core/impl/MetadataHolderService;

    .line 26
    .line 27
    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    const/16 p0, 0x280

    .line 31
    .line 32
    invoke-virtual {v2, v3, p0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    const-string v2, "androidx.camera.core.impl.MetadataHolderService.DEFAULT_CONFIG_PROVIDER"

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :catch_2
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :catch_3
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :catch_4
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :catch_5
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :catch_6
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object p0, v1

    .line 62
    :goto_0
    if-nez p0, :cond_2

    .line 63
    .line 64
    const-string p0, "No default CameraXConfig.Provider specified in meta-data. The most likely cause is you did not include a default implementation in your build such as \'camera-camera2\'."

    .line 65
    .line 66
    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Landroidx/camera/core/CameraXConfig$Provider;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    move-object v1, p0

    .line 85
    goto :goto_2

    .line 86
    :goto_1
    const-string v2, "Failed to retrieve default CameraXConfig.Provider from meta-data"

    .line 87
    .line 88
    invoke-static {v0, v2, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :goto_2
    return-object v1
.end method

.method private static increaseMinLogLevelReference(Ljava/lang/Integer;)V
    .locals 5
    .param p0    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/camera/core/CameraX;->MIN_LOG_LEVEL_LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    :try_start_0
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "minLogLevel"

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v4, 0x6

    .line 18
    invoke-static {v1, v3, v4, v2}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    sget-object v1, Landroidx/camera/core/CameraX;->sMinLogLevelReferenceCountMap:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    add-int/2addr v3, v2

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroidx/camera/core/CameraX;->updateOrResetMinLogLevel()V

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method private initAndRetryRecursively(Ljava/util/concurrent/Executor;JILandroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 9
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "JI",
            "Landroid/content/Context;",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v8, L돶땝뒬땳딐됐뒘돨돤딄뒛땀뎨뒷딐땱딞됩땣딤딐뎬딌드듸둑둔뒙딄땮뎽땋땱땀뎹땃땤딄둬두됨된딐뒘땹듽둥돳듟뒐뎹돶듐땸땬돨뒐땮돛딝땣둘땦따두딄듔뒛땨딃둥듰듟듬딟둑땐딀뒼땮딎뒾딃됩뎸듌뒹뒤둣딜뒈돠땡땄땡딃딨뒘뒵딠땮듻돴될됩땝딐둔땋드딹땤뎹땠뎸뎽땟듨딸땹땧듟땯땭돤듟됩땋땦뒛;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p5

    .line 6
    move-object v3, p1

    .line 7
    move v4, p4

    .line 8
    move-object v5, p6

    .line 9
    move-wide v6, p2

    .line 10
    invoke-direct/range {v0 .. v7}, L돶땝뒬땳딐됐뒘돨돤딄뒛땀뎨뒷딐땱딞됩땣딤딐뎬딌드듸둑둔뒙딄땮뎽땋땱땀뎹땃땤딄둬두됨된딐뒘땹듽둥돳듟뒐뎹돶듐땸땬돨뒐땮돛딝땣둘땦따두딄듔뒛땨딃둥듰듟듬딟둑땐딀뒼땮딎뒾딃됩뎸듌뒹뒤둣딜뒈돠땡땄땡딃딨뒘뒵딠땮듻돴될됩땝딐둔땋드딹땤뎹땠뎸뎽땟듨딸땹땧듟땯땭돤듟됩땋땦뒛;-><init>(Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private initInternal(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 5
    .line 6
    sget-object v2, Landroidx/camera/core/CameraX$InternalInitState;->UNINITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    const-string v2, "CameraX.initInternal() should only be called once per instance"

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZING:Landroidx/camera/core/CameraX$InternalInitState;

    .line 19
    .line 20
    iput-object v1, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 21
    .line 22
    new-instance v1, L뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬;

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-direct {v1, p0, p1, v2}, L뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    monitor-exit v0

    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method private synthetic lambda$initAndRetryRecursively$1(Ljava/util/concurrent/Executor;JILandroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 7

    .line 1
    add-int/lit8 v4, p4, 0x1

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move-object v5, p5

    .line 7
    move-object v6, p6

    .line 8
    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/CameraX;->initAndRetryRecursively(Ljava/util/concurrent/Executor;JILandroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$initAndRetryRecursively$2(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move/from16 v6, p3

    .line 6
    .line 7
    move-object/from16 v8, p4

    .line 8
    .line 9
    move-wide/from16 v4, p5

    .line 10
    .line 11
    const-string v1, "Device reporting less cameras than anticipated. On real devices: Retrying initialization might resolve temporary camera errors. On emulators: Ensure virtual camera configuration matches supported camera features as reported by PackageManager#hasSystemFeature. Available cameras: "

    .line 12
    .line 13
    const-string v2, "Retry init. Start time "

    .line 14
    .line 15
    const-string v0, "CX:initAndRetryRecursively"

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/utils/ContextUtil;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    const/4 v14, 0x0

    .line 25
    :try_start_0
    iget-object v0, v9, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 26
    .line 27
    invoke-virtual {v0, v14}, Landroidx/camera/core/CameraXConfig;->getCameraFactoryProvider(Landroidx/camera/core/impl/CameraFactory$Provider;)Landroidx/camera/core/impl/CameraFactory$Provider;

    .line 28
    .line 29
    .line 30
    move-result-object v10

    .line 31
    if-eqz v10, :cond_4

    .line 32
    .line 33
    iget-object v0, v9, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    iget-object v11, v9, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-static {v0, v11}, Landroidx/camera/core/impl/CameraThreadConfig;->create(Ljava/util/concurrent/Executor;Landroid/os/Handler;)Landroidx/camera/core/impl/CameraThreadConfig;

    .line 38
    .line 39
    .line 40
    move-result-object v12

    .line 41
    iget-object v0, v9, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 42
    .line 43
    invoke-virtual {v0, v14}, Landroidx/camera/core/CameraXConfig;->getAvailableCamerasLimiter(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v11, v9, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 48
    .line 49
    invoke-virtual {v11}, Landroidx/camera/core/CameraXConfig;->getCameraOpenRetryMaxTimeoutInMillisWhileResuming()J

    .line 50
    .line 51
    .line 52
    move-result-wide v15
    :try_end_0
    .catch Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroidx/camera/core/InitializationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    move-object v11, v7

    .line 54
    move-object v13, v0

    .line 55
    move-object/from16 v17, v1

    .line 56
    .line 57
    move-object v1, v14

    .line 58
    move-wide v14, v15

    .line 59
    :try_start_1
    invoke-interface/range {v10 .. v15}, Landroidx/camera/core/impl/CameraFactory$Provider;->newInstance(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/core/CameraSelector;J)Landroidx/camera/core/impl/CameraFactory;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    iput-object v10, v9, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/camera/core/impl/CameraFactory;

    .line 64
    .line 65
    iget-object v10, v9, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 66
    .line 67
    invoke-virtual {v10, v1}, Landroidx/camera/core/CameraXConfig;->getDeviceSurfaceManagerProvider(Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    if-eqz v10, :cond_3

    .line 72
    .line 73
    iget-object v11, v9, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/camera/core/impl/CameraFactory;

    .line 74
    .line 75
    invoke-interface {v11}, Landroidx/camera/core/impl/CameraFactory;->getCameraManager()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    iget-object v12, v9, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/camera/core/impl/CameraFactory;

    .line 80
    .line 81
    invoke-interface {v12}, Landroidx/camera/core/impl/CameraFactory;->getAvailableCameraIds()Ljava/util/Set;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    invoke-interface {v10, v7, v11, v12}, Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;->newInstance(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    iput-object v10, v9, Landroidx/camera/core/CameraX;->mSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    .line 90
    .line 91
    iget-object v10, v9, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 92
    .line 93
    invoke-virtual {v10, v1}, Landroidx/camera/core/CameraXConfig;->getUseCaseConfigFactoryProvider(Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;)Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    if-eqz v10, :cond_2

    .line 98
    .line 99
    invoke-interface {v10, v7}, Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;->newInstance(Landroid/content/Context;)Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    iput-object v10, v9, Landroidx/camera/core/CameraX;->mDefaultConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 104
    .line 105
    instance-of v10, v3, Landroidx/camera/core/CameraExecutor;

    .line 106
    .line 107
    if-eqz v10, :cond_0

    .line 108
    .line 109
    move-object v10, v3

    .line 110
    check-cast v10, Landroidx/camera/core/CameraExecutor;

    .line 111
    .line 112
    iget-object v11, v9, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/camera/core/impl/CameraFactory;

    .line 113
    .line 114
    invoke-virtual {v10, v11}, Landroidx/camera/core/CameraExecutor;->init(Landroidx/camera/core/impl/CameraFactory;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :catch_0
    move-exception v0

    .line 122
    goto :goto_3

    .line 123
    :catch_1
    move-exception v0

    .line 124
    goto :goto_3

    .line 125
    :catch_2
    move-exception v0

    .line 126
    goto :goto_3

    .line 127
    :cond_0
    :goto_0
    iget-object v10, v9, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 128
    .line 129
    iget-object v11, v9, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/camera/core/impl/CameraFactory;

    .line 130
    .line 131
    invoke-virtual {v10, v11}, Landroidx/camera/core/impl/CameraRepository;->init(Landroidx/camera/core/impl/CameraFactory;)V

    .line 132
    .line 133
    .line 134
    iget-object v10, v9, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 135
    .line 136
    invoke-static {v7, v10, v0}, Landroidx/camera/core/impl/CameraValidator;->validateCameras(Landroid/content/Context;Landroidx/camera/core/impl/CameraRepository;Landroidx/camera/core/CameraSelector;)V

    .line 137
    .line 138
    .line 139
    const/4 v0, 0x1

    .line 140
    if-le v6, v0, :cond_1

    .line 141
    .line 142
    invoke-direct {v9, v1}, Landroidx/camera/core/CameraX;->traceExecutionState(Landroidx/camera/core/RetryPolicy$ExecutionState;)V

    .line 143
    .line 144
    .line 145
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroidx/camera/core/CameraX;->setStateToInitialized()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroidx/camera/core/InitializationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .line 150
    .line 151
    :goto_1
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_4

    .line 155
    .line 156
    :cond_2
    :try_start_2
    new-instance v0, Landroidx/camera/core/InitializationException;

    .line 157
    .line 158
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string v11, "Invalid app configuration provided. Missing UseCaseConfigFactory."

    .line 161
    .line 162
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {v0, v10}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_3
    new-instance v0, Landroidx/camera/core/InitializationException;

    .line 170
    .line 171
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    const-string v11, "Invalid app configuration provided. Missing CameraDeviceSurfaceManager."

    .line 174
    .line 175
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v10}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :catch_3
    move-exception v0

    .line 183
    :goto_2
    move-object/from16 v17, v1

    .line 184
    .line 185
    move-object v1, v14

    .line 186
    goto :goto_3

    .line 187
    :catch_4
    move-exception v0

    .line 188
    goto :goto_2

    .line 189
    :catch_5
    move-exception v0

    .line 190
    goto :goto_2

    .line 191
    :cond_4
    move-object/from16 v17, v1

    .line 192
    .line 193
    move-object v1, v14

    .line 194
    new-instance v0, Landroidx/camera/core/InitializationException;

    .line 195
    .line 196
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 197
    .line 198
    const-string v11, "Invalid app configuration provided. Missing CameraFactory."

    .line 199
    .line 200
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-direct {v0, v10}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    throw v0
    :try_end_2
    .catch Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroidx/camera/core/InitializationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    :goto_3
    :try_start_3
    new-instance v10, Landroidx/camera/core/impl/CameraProviderExecutionState;

    .line 208
    .line 209
    invoke-direct {v10, v4, v5, v6, v0}, Landroidx/camera/core/impl/CameraProviderExecutionState;-><init>(JILjava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    iget-object v11, v9, Landroidx/camera/core/CameraX;->mRetryPolicy:Landroidx/camera/core/RetryPolicy;

    .line 213
    .line 214
    invoke-interface {v11, v10}, Landroidx/camera/core/RetryPolicy;->onRetryDecisionRequested(Landroidx/camera/core/RetryPolicy$ExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    invoke-direct {v9, v10}, Landroidx/camera/core/CameraX;->traceExecutionState(Landroidx/camera/core/RetryPolicy$ExecutionState;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v11}, Landroidx/camera/core/RetryPolicy$RetryConfig;->shouldRetry()Z

    .line 222
    .line 223
    .line 224
    move-result v10

    .line 225
    if-eqz v10, :cond_5

    .line 226
    .line 227
    const v10, 0x7fffffff

    .line 228
    .line 229
    .line 230
    if-ge v6, v10, :cond_5

    .line 231
    .line 232
    const-string v1, "CameraX"

    .line 233
    .line 234
    new-instance v10, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v2, " current time "

    .line 243
    .line 244
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 248
    .line 249
    .line 250
    move-result-wide v12

    .line 251
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-static {v1, v2, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    .line 260
    .line 261
    iget-object v0, v9, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    .line 262
    .line 263
    new-instance v10, L돶땝뒬땳딐됐뒘돨돤딄뒛땀뎨뒷딐땱딞됩땣딤딐뎬딌드듸둑둔뒙딄땮뎽땋땱땀뎹땃땤딄둬두됨된딐뒘땹듽둥돳듟뒐뎹돶듐땸땬돨뒐땮돛딝땣둘땦따두딄듔뒛땨딃둥듰듟듬딟둑땐딀뒼땮딎뒾딃됩뎸듌뒹뒤둣딜뒈돠땡땄땡딃딨뒘뒵딠땮듻돴될됩땝딐둔땋드딹땤뎹땠뎸뎽땟듨딸땹땧듟땯땭돤듟됩땋땦뒛;

    .line 264
    .line 265
    move-object v1, v10

    .line 266
    move-object/from16 v2, p0

    .line 267
    .line 268
    move-object/from16 v3, p2

    .line 269
    .line 270
    move-wide/from16 v4, p5

    .line 271
    .line 272
    move/from16 v6, p3

    .line 273
    .line 274
    move-object/from16 v8, p4

    .line 275
    .line 276
    invoke-direct/range {v1 .. v8}, L돶땝뒬땳딐됐뒘돨돤딄뒛땀뎨뒷딐땱딞됩땣딤딐뎬딌드듸둑둔뒙딄땮뎽땋땱땀뎹땃땤딄둬두됨된딐뒘땹듽둥돳듟뒐뎹돶듐땸땬돨뒐땮돛딝땣둘땦따두딄듔뒛땨딃둥듰듟듬딟둑땐딀뒼땮딎뒾딃됩뎸듌뒹뒤둣딜뒈돠땡땄땡딃딨뒘뒵딠땮듻돴될됩땝딐둔땋드딹땤뎹땠뎸뎽땟듨딸땹땧듟땯땭돤듟됩땋땦뒛;-><init>(Landroidx/camera/core/CameraX;Ljava/util/concurrent/Executor;JILandroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 277
    .line 278
    .line 279
    const-string v1, "retry_token"

    .line 280
    .line 281
    invoke-virtual {v11}, Landroidx/camera/core/RetryPolicy$RetryConfig;->getRetryDelayInMillis()J

    .line 282
    .line 283
    .line 284
    move-result-wide v2

    .line 285
    invoke-static {v0, v10, v1, v2, v3}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 286
    .line 287
    .line 288
    goto/16 :goto_1

    .line 289
    .line 290
    :cond_5
    iget-object v2, v9, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    .line 291
    .line 292
    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    :try_start_4
    sget-object v3, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZING_ERROR:Landroidx/camera/core/CameraX$InternalInitState;

    .line 294
    .line 295
    iput-object v3, v9, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 296
    .line 297
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 298
    :try_start_5
    invoke-virtual {v11}, Landroidx/camera/core/RetryPolicy$RetryConfig;->shouldCompleteWithoutFailure()Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_6

    .line 303
    .line 304
    invoke-direct/range {p0 .. p0}, Landroidx/camera/core/CameraX;->setStateToInitialized()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v8, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    goto/16 :goto_1

    .line 311
    .line 312
    :cond_6
    instance-of v1, v0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    .line 313
    .line 314
    if-eqz v1, :cond_7

    .line 315
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    move-object/from16 v2, v17

    .line 319
    .line 320
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    move-object v2, v0

    .line 324
    check-cast v2, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    .line 325
    .line 326
    invoke-virtual {v2}, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;->getAvailableCameraCount()I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    const-string v2, "CameraX"

    .line 338
    .line 339
    invoke-static {v2, v1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    .line 341
    .line 342
    new-instance v0, Landroidx/camera/core/InitializationException;

    .line 343
    .line 344
    new-instance v2, Landroidx/camera/core/CameraUnavailableException;

    .line 345
    .line 346
    const/4 v3, 0x3

    .line 347
    invoke-direct {v2, v3, v1}, Landroidx/camera/core/CameraUnavailableException;-><init>(ILjava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-direct {v0, v2}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v8, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 354
    .line 355
    .line 356
    goto/16 :goto_1

    .line 357
    .line 358
    :cond_7
    instance-of v1, v0, Landroidx/camera/core/InitializationException;

    .line 359
    .line 360
    if-eqz v1, :cond_8

    .line 361
    .line 362
    invoke-virtual {v8, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 363
    .line 364
    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :cond_8
    new-instance v1, Landroidx/camera/core/InitializationException;

    .line 368
    .line 369
    invoke-direct {v1, v0}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v8, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 373
    .line 374
    .line 375
    goto/16 :goto_1

    .line 376
    .line 377
    :goto_4
    return-void

    .line 378
    :catchall_1
    move-exception v0

    .line 379
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 380
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 381
    :goto_5
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 382
    .line 383
    .line 384
    throw v0
.end method

.method private synthetic lambda$initInternal$0(Landroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    const/4 v4, 0x1

    .line 8
    move-object v0, p0

    .line 9
    move-object v5, p1

    .line 10
    move-object v6, p2

    .line 11
    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/CameraX;->initAndRetryRecursively(Ljava/util/concurrent/Executor;JILandroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "CameraX initInternal"

    .line 15
    .line 16
    return-object p1
.end method

.method private synthetic lambda$shutdownInternal$3(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mSchedulerThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    instance-of v1, v0, Landroidx/camera/core/CameraExecutor;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/camera/core/CameraExecutor;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/camera/core/CameraExecutor;->deinit()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mSchedulerThread:Landroid/os/HandlerThread;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private synthetic lambda$shutdownInternal$4(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraRepository;->deinit()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;

    .line 8
    .line 9
    const/16 v2, 0xe

    .line 10
    .line 11
    invoke-direct {v1, p0, p1, v2}, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    invoke-interface {v0, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "CameraX shutdownInternal"

    .line 20
    .line 21
    return-object p1
.end method

.method private setStateToInitialized()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    .line 5
    .line 6
    iput-object v1, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v1
.end method

.method private shutdownInternal()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const-string v2, "retry_token"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v1, v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v1, Landroidx/camera/core/CameraX$InternalInitState;->SHUTDOWN:Landroidx/camera/core/CameraX$InternalInitState;

    .line 30
    .line 31
    iput-object v1, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mMinLogLevel:Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-static {v1}, Landroidx/camera/core/CameraX;->decreaseMinLogLevelReference(Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;

    .line 39
    .line 40
    const/4 v2, 0x7

    .line 41
    invoke-direct {v1, p0, v2}, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Landroidx/camera/core/CameraX;->mShutdownInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 49
    .line 50
    :goto_0
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mShutdownInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-object v1

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v2, "CameraX could not be shutdown when it is initializing."

    .line 59
    .line 60
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v1

    .line 64
    :cond_2
    sget-object v1, Landroidx/camera/core/CameraX$InternalInitState;->SHUTDOWN:Landroidx/camera/core/CameraX$InternalInitState;

    .line 65
    .line 66
    iput-object v1, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    monitor-exit v0

    .line 74
    return-object v1

    .line 75
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw v1
.end method

.method private traceExecutionState(Landroidx/camera/core/RetryPolicy$ExecutionState;)V
    .locals 1
    .param p1    # Landroidx/camera/core/RetryPolicy$ExecutionState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/tracing/Trace;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Landroidx/camera/core/RetryPolicy$ExecutionState;->getStatus()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    :goto_0
    const-string v0, "CX:CameraProvider-RetryStatus"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroidx/tracing/Trace;->setCounter(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private static updateOrResetMinLogLevel()V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "MIN_LOG_LEVEL_LOCK"
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/CameraX;->sMinLogLevelReferenceCountMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroidx/camera/core/Logger;->resetMinLogLevel()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x3

    .line 14
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/camera/core/Logger;->setMinLogLevel(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x4

    .line 25
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-static {v1}, Landroidx/camera/core/Logger;->setMinLogLevel(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v1, 0x5

    .line 36
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-static {v1}, Landroidx/camera/core/Logger;->setMinLogLevel(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/4 v1, 0x6

    .line 47
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-static {v1}, Landroidx/camera/core/Logger;->setMinLogLevel(I)V

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_0
    return-void
.end method

.method private static updateQuirkSettings(Landroid/content/Context;Landroidx/camera/core/impl/QuirkSettings;Landroidx/arch/core/util/Function;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/impl/QuirkSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/camera/core/impl/QuirkSettings;",
            "Landroidx/arch/core/util/Function<",
            "Landroid/content/Context;",
            "Landroidx/camera/core/impl/QuirkSettings;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "CameraX"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string p2, "QuirkSettings from CameraXConfig: "

    .line 8
    .line 9
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {p2, p0}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    move-object p1, p0

    .line 28
    check-cast p1, Landroidx/camera/core/impl/QuirkSettings;

    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p2, "QuirkSettings from app metadata: "

    .line 33
    .line 34
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    if-nez p1, :cond_1

    .line 48
    .line 49
    sget-object p1, Landroidx/camera/core/impl/QuirkSettingsHolder;->DEFAULT:Landroidx/camera/core/impl/QuirkSettings;

    .line 50
    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p2, "QuirkSettings by default: "

    .line 54
    .line 55
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-static {}, Landroidx/camera/core/impl/QuirkSettingsHolder;->instance()Landroidx/camera/core/impl/QuirkSettingsHolder;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/QuirkSettingsHolder;->set(Landroidx/camera/core/impl/QuirkSettings;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/camera/core/CameraX;->lambda$initAndRetryRecursively$2(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/CameraX;)V
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Landroidx/camera/core/CameraX;->lambda$shutdownInternal$3(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/CameraX;Landroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/CameraX;->lambda$initInternal$0(Landroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/CameraX;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Landroidx/camera/core/CameraX;->lambda$shutdownInternal$4(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V
    .locals 7

    .line 1
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p5

    move v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/CameraX;->lambda$initAndRetryRecursively$1(Ljava/util/concurrent/Executor;JILandroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method


# virtual methods
.method public getCameraDeviceSurfaceManager()Landroidx/camera/core/impl/CameraDeviceSurfaceManager;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "CameraX not initialized yet."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public getCameraFactory()Landroidx/camera/core/impl/CameraFactory;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/camera/core/impl/CameraFactory;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "CameraX not initialized yet."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public getCameraRepository()Landroidx/camera/core/impl/CameraRepository;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultConfigFactory()Landroidx/camera/core/impl/UseCaseConfigFactory;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mDefaultConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "CameraX not initialized yet."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public getInitializeFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mInitInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    return-object v0
.end method

.method public isInitialized()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mInitState:Landroidx/camera/core/CameraX$InternalInitState;

    .line 5
    .line 6
    sget-object v2, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public shutdown()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/CameraX;->shutdownInternal()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
