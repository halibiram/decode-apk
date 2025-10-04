.class public Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# static fields
.field private static final CAMCORDER_TO_VIDEO_QUALITY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/video/Quality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mQuirks:Landroidx/camera/core/impl/Quirks;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->CAMCORDER_TO_VIDEO_QUALITY_MAP:Ljava/util/Map;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Landroidx/camera/video/Quality;->HIGHEST:Landroidx/camera/video/Quality;

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Landroidx/camera/video/Quality;->UHD:Landroidx/camera/video/Quality;

    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x6

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    .line 35
    .line 36
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x5

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    .line 45
    .line 46
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x4

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget-object v2, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    .line 55
    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget-object v2, Landroidx/camera/video/Quality;->LOWEST:Landroidx/camera/video/Quality;

    .line 65
    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/Quirks;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/EncoderProfilesProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/Quirks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mQuirks:Landroidx/camera/core/impl/Quirks;

    .line 9
    .line 10
    return-void
.end method

.method private isDeviceValidQuality(I)Z
    .locals 3

    .line 1
    sget-object v0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->CAMCORDER_TO_VIDEO_QUALITY_MAP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/camera/video/Quality;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mQuirks:Landroidx/camera/core/impl/Quirks;

    .line 16
    .line 17
    const-class v1, Landroidx/camera/video/internal/compat/quirk/VideoQualityQuirk;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/Quirks;->getAll(Ljava/lang/Class;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroidx/camera/video/internal/compat/quirk/VideoQualityQuirk;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 42
    .line 43
    invoke-interface {v1, v2, p1}, Landroidx/camera/video/internal/compat/quirk/VideoQualityQuirk;->isProblematicVideoQuality(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/video/Quality;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-static {v1}, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->workaroundBySurfaceProcessing(Landroidx/camera/core/impl/Quirk;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    return p1

    .line 57
    :cond_1
    const/4 p1, 0x1

    .line 58
    return p1
.end method

.method private static workaroundBySurfaceProcessing(Landroidx/camera/core/impl/Quirk;)Z
    .locals 1
    .param p0    # Landroidx/camera/core/impl/Quirk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p0, Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;

    .line 6
    .line 7
    invoke-interface {p0}, Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;->workaroundBySurfaceProcessing()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->hasProfile(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public hasProfile(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->isDeviceValidQuality(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method
