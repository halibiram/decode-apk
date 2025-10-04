.class public Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;
    }
.end annotation


# instance fields
.field private final mCameraCharacteristicsImpl:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mCameraId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mStreamConfigurationMapCompat:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mValuesCache:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCharacteristics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mValuesCache:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mStreamConfigurationMapCompat:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x1c

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsApi28Impl;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsApi28Impl;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mCameraCharacteristicsImpl:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mCameraCharacteristicsImpl:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;

    .line 34
    .line 35
    :goto_0
    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mCameraId:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method private isKeyNonCacheable(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCharacteristics$Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public static toCameraCharacteristicsCompat(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
    .locals 1
    .param p0    # Landroid/hardware/camera2/CameraCharacteristics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCharacteristics$Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->isKeyNonCacheable(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mCameraCharacteristicsImpl:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mValuesCache:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-object v0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mCameraCharacteristicsImpl:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mValuesCache:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_2
    monitor-exit p0

    .line 41
    return-object v0

    .line 42
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public getPhysicalCameraIds()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mCameraCharacteristicsImpl:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;->getPhysicalCameraIds()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStreamConfigurationMapCompat()Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mStreamConfigurationMapCompat:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mCameraId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->toStreamConfigurationMapCompat(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;)Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mStreamConfigurationMapCompat:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v1, "StreamConfigurationMap is null!"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto :goto_0

    .line 39
    :catch_1
    move-exception v0

    .line 40
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mStreamConfigurationMapCompat:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    .line 51
    .line 52
    return-object v0
.end method

.method public isZoomOverrideAvailable()Z
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mCameraCharacteristicsImpl:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;

    .line 9
    .line 10
    invoke-static {}, L뎽듸뎬딤뒤뎬됫딤땮땠뎨둬딅땃될땅땯듌땵되뎻둑뎬된되뎸딄땍둘둡듼뎨뒾둬뒨둡뎠둥뎰듰돴될뒝뎡딞듼돴돤듼땍둣땦둑돨듬돰땝된돸딁듽땜듽땱땜돤땱딨땃딐딤돶됐딃땄땩뒙딃딐땃땯드드땣땲땲됫듸땵뒀둑땵딄든딤둠뒨듼됫딠됐돼뎬땃뒹도됨듌뒨땐뒐듟땐땜됫땰뒬뎡득뒛땦딨따되돳딽뒻돷듼딨;->뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두()Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, [I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    array-length v1, v0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v1, :cond_1

    .line 25
    .line 26
    aget v4, v0, v3

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    if-ne v4, v5, :cond_0

    .line 30
    .line 31
    return v5

    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v2
.end method

.method public toCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->mCameraCharacteristicsImpl:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat$CameraCharacteristicsCompatImpl;->unwrap()Landroid/hardware/camera2/CameraCharacteristics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
