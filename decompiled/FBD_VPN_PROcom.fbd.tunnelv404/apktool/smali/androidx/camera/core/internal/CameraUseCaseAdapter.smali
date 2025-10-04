.class public final Landroidx/camera/core/internal/CameraUseCaseAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/Camera;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;,
        Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraException;,
        Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraUseCaseAdapter"


# instance fields
.field private final mAdapterCameraControl:Landroidx/camera/core/impl/RestrictedCameraControl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mAdapterCameraInfo:Landroidx/camera/core/impl/RestrictedCameraInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mAdapterSecondaryCameraInfo:Landroidx/camera/core/impl/RestrictedCameraInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mAppUseCases:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private mAttached:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCameraConfig:Landroidx/camera/core/impl/CameraConfig;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mCameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCameraDeviceSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

.field private final mCameraInternal:Landroidx/camera/core/impl/CameraInternal;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mCameraUseCases:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private mEffects:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;

.field private mInteropConfig:Landroidx/camera/core/impl/Config;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLayoutSettings:Landroidx/camera/core/LayoutSettings;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPlaceholderForExtensions:Landroidx/camera/core/UseCase;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mSecondaryLayoutSettings:Landroidx/camera/core/LayoutSettings;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mStreamSharing:Landroidx/camera/core/streamsharing/StreamSharing;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mUseCaseConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

.field private mViewPort:Landroidx/camera/core/ViewPort;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/impl/CameraDeviceSurfaceManager;Landroidx/camera/core/impl/UseCaseConfigFactory;)V
    .locals 10
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/concurrent/CameraCoordinator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/CameraDeviceSurfaceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/impl/UseCaseConfigFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v3, Landroidx/camera/core/impl/RestrictedCameraInfo;

    .line 2
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    .line 3
    invoke-static {}, Landroidx/camera/core/impl/CameraConfigs;->defaultConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroidx/camera/core/impl/RestrictedCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraConfig;)V

    const/4 v4, 0x0

    sget-object v6, Landroidx/camera/core/LayoutSettings;->DEFAULT:Landroidx/camera/core/LayoutSettings;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v6

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    .line 4
    invoke-direct/range {v0 .. v9}, Landroidx/camera/core/internal/CameraUseCaseAdapter;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/RestrictedCameraInfo;Landroidx/camera/core/impl/RestrictedCameraInfo;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/impl/CameraDeviceSurfaceManager;Landroidx/camera/core/impl/UseCaseConfigFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/RestrictedCameraInfo;Landroidx/camera/core/impl/RestrictedCameraInfo;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/impl/CameraDeviceSurfaceManager;Landroidx/camera/core/impl/UseCaseConfigFactory;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/RestrictedCameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/impl/RestrictedCameraInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/core/LayoutSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/camera/core/LayoutSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroidx/camera/core/concurrent/CameraCoordinator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroidx/camera/core/impl/CameraDeviceSurfaceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroidx/camera/core/impl/UseCaseConfigFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAppUseCases:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraUseCases:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mEffects:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAttached:Z

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mInteropConfig:Landroidx/camera/core/impl/Config;

    .line 12
    iput-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 13
    iput-object p2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 14
    iput-object p5, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 15
    iput-object p6, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 16
    iput-object p7, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 17
    iput-object p8, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraDeviceSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    .line 18
    iput-object p9, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mUseCaseConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 19
    invoke-virtual {p3}, Landroidx/camera/core/impl/RestrictedCameraInfo;->getCameraConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 20
    invoke-interface {p2, v0}, Landroidx/camera/core/impl/CameraConfig;->getSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/core/impl/SessionProcessor;

    move-result-object p2

    .line 21
    new-instance p5, Landroidx/camera/core/impl/RestrictedCameraControl;

    .line 22
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object p1

    invoke-direct {p5, p1, p2}, Landroidx/camera/core/impl/RestrictedCameraControl;-><init>(Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/core/impl/SessionProcessor;)V

    iput-object p5, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAdapterCameraControl:Landroidx/camera/core/impl/RestrictedCameraControl;

    .line 23
    iput-object p3, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAdapterCameraInfo:Landroidx/camera/core/impl/RestrictedCameraInfo;

    .line 24
    iput-object p4, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAdapterSecondaryCameraInfo:Landroidx/camera/core/impl/RestrictedCameraInfo;

    .line 25
    invoke-static {p3, p4}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->generateCameraId(Landroidx/camera/core/impl/RestrictedCameraInfo;Landroidx/camera/core/impl/RestrictedCameraInfo;)Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mId:Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;

    return-void
.end method

.method private cacheInteropConfig()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 5
    .line 6
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraControlInternal;->getInteropConfig()Landroidx/camera/core/impl/Config;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mInteropConfig:Landroidx/camera/core/impl/Config;

    .line 15
    .line 16
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraControlInternal;->clearInteropConfig()V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public static calculateCameraUseCases(Ljava/util/Collection;Landroidx/camera/core/UseCase;Landroidx/camera/core/streamsharing/StreamSharing;)Ljava/util/Collection;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/streamsharing/StreamSharing;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Landroidx/camera/core/UseCase;",
            "Landroidx/camera/core/streamsharing/StreamSharing;",
            ")",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/camera/core/streamsharing/StreamSharing;->getChildren()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    return-object v0
.end method

.method private calculatePlaceholderForExtensions(Ljava/util/Collection;Landroidx/camera/core/streamsharing/StreamSharing;)Landroidx/camera/core/UseCase;
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/streamsharing/StreamSharing;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Landroidx/camera/core/streamsharing/StreamSharing;",
            ")",
            "Landroidx/camera/core/UseCase;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroidx/camera/core/streamsharing/StreamSharing;->getChildren()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->isCoexistingPreviewImageCaptureRequired()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    invoke-static {v1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->isExtraPreviewRequired(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mPlaceholderForExtensions:Landroidx/camera/core/UseCase;

    .line 37
    .line 38
    invoke-static {p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->isPreview(Landroidx/camera/core/UseCase;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mPlaceholderForExtensions:Landroidx/camera/core/UseCase;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-direct {p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->createExtraPreview()Landroidx/camera/core/Preview;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-static {v1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->isExtraImageCaptureRequired(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    iget-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mPlaceholderForExtensions:Landroidx/camera/core/UseCase;

    .line 59
    .line 60
    invoke-static {p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->isImageCapture(Landroidx/camera/core/UseCase;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mPlaceholderForExtensions:Landroidx/camera/core/UseCase;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-direct {p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->createExtraImageCapture()Landroidx/camera/core/ImageCapture;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    const/4 p1, 0x0

    .line 75
    :goto_1
    monitor-exit v0

    .line 76
    return-object p1

    .line 77
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p1
.end method

.method private static calculateSensorToBufferTransformMatrix(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Matrix;
    .locals 4
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    const-string v1, "Cannot compute viewport crop rects zero sized sensor rect."

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    int-to-float v2, v2

    .line 38
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    int-to-float p1, p1

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 48
    .line 49
    invoke-virtual {p0, v1, v0, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method private calculateSuggestedStreamSpecs(ILandroidx/camera/core/impl/CameraInfoInternal;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .locals 20
    .param p2    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;",
            ">;)",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v4, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    new-instance v8, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v9, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x0

    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Landroidx/camera/core/UseCase;

    .line 40
    .line 41
    iget-object v7, v0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraDeviceSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroidx/camera/core/UseCase;->getImageFormat()I

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    invoke-virtual {v5}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    move/from16 v12, p1

    .line 52
    .line 53
    invoke-interface {v7, v12, v3, v10, v11}, Landroidx/camera/core/impl/CameraDeviceSurfaceManager;->transformSurfaceConfig(ILjava/lang/String;ILandroid/util/Size;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    invoke-virtual {v5}, Landroidx/camera/core/UseCase;->getImageFormat()I

    .line 58
    .line 59
    .line 60
    move-result v14

    .line 61
    invoke-virtual {v5}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    .line 62
    .line 63
    .line 64
    move-result-object v15

    .line 65
    invoke-virtual {v5}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-static {v7}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    check-cast v7, Landroidx/camera/core/impl/StreamSpec;

    .line 74
    .line 75
    invoke-virtual {v7}, Landroidx/camera/core/impl/StreamSpec;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    .line 76
    .line 77
    .line 78
    move-result-object v16

    .line 79
    invoke-static {v5}, Landroidx/camera/core/streamsharing/StreamSharing;->getCaptureTypes(Landroidx/camera/core/UseCase;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v17

    .line 83
    invoke-virtual {v5}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-virtual {v7}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 88
    .line 89
    .line 90
    move-result-object v18

    .line 91
    invoke-virtual {v5}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-interface {v7, v6}, Landroidx/camera/core/impl/UseCaseConfig;->getTargetFrameRate(Landroid/util/Range;)Landroid/util/Range;

    .line 96
    .line 97
    .line 98
    move-result-object v19

    .line 99
    invoke-static/range {v13 .. v19}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->create(Landroidx/camera/core/impl/SurfaceConfig;ILandroid/util/Size;Landroidx/camera/core/DynamicRange;Ljava/util/List;Landroidx/camera/core/impl/Config;Landroid/util/Range;)Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    move/from16 v12, p1

    .line 118
    .line 119
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_7

    .line 124
    .line 125
    new-instance v10, Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 128
    .line 129
    .line 130
    new-instance v5, Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 133
    .line 134
    .line 135
    :try_start_0
    iget-object v2, v0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 136
    .line 137
    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-interface {v2}, Landroidx/camera/core/impl/CameraControlInternal;->getSensorRect()Landroid/graphics/Rect;

    .line 142
    .line 143
    .line 144
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_1

    .line 146
    :catch_0
    nop

    .line 147
    move-object v2, v6

    .line 148
    :goto_1
    new-instance v7, Landroidx/camera/core/internal/SupportedOutputSizesSorter;

    .line 149
    .line 150
    if-eqz v2, :cond_1

    .line 151
    .line 152
    invoke-static {v2}, Landroidx/camera/core/impl/utils/TransformUtils;->rectToSize(Landroid/graphics/Rect;)Landroid/util/Size;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    :cond_1
    invoke-direct {v7, v1, v6}, Landroidx/camera/core/internal/SupportedOutputSizesSorter;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroid/util/Size;)V

    .line 157
    .line 158
    .line 159
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    :cond_2
    const/4 v11, 0x0

    .line 164
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    if-eqz v13, :cond_4

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    check-cast v13, Landroidx/camera/core/UseCase;

    .line 175
    .line 176
    move-object/from16 v14, p5

    .line 177
    .line 178
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    check-cast v15, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;

    .line 183
    .line 184
    iget-object v6, v15, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mExtendedConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 185
    .line 186
    iget-object v15, v15, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mCameraConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 187
    .line 188
    invoke-virtual {v13, v1, v6, v15}, Landroidx/camera/core/UseCase;->mergeConfigs(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfig;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-virtual {v10, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7, v6}, Landroidx/camera/core/internal/SupportedOutputSizesSorter;->getSortedSupportedOutputSizes(Landroidx/camera/core/impl/UseCaseConfig;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v15

    .line 199
    invoke-virtual {v5, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v13}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    instance-of v6, v6, Landroidx/camera/core/impl/PreviewConfig;

    .line 207
    .line 208
    if-eqz v6, :cond_3

    .line 209
    .line 210
    invoke-virtual {v13}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    check-cast v6, Landroidx/camera/core/impl/PreviewConfig;

    .line 215
    .line 216
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-static {v6}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/camera/core/impl/UseCaseConfig;)I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    const/4 v11, 0x2

    .line 224
    if-ne v6, v11, :cond_2

    .line 225
    .line 226
    const/4 v6, 0x1

    .line 227
    const/4 v11, 0x1

    .line 228
    goto :goto_2

    .line 229
    :cond_4
    iget-object v1, v0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraDeviceSurfaceManager:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    .line 230
    .line 231
    invoke-static/range {p3 .. p3}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->hasVideoCapture(Ljava/util/Collection;)Z

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    move/from16 v2, p1

    .line 236
    .line 237
    move v6, v11

    .line 238
    invoke-interface/range {v1 .. v7}, Landroidx/camera/core/impl/CameraDeviceSurfaceManager;->getSuggestedStreamSpecs(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;ZZ)Landroid/util/Pair;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_5

    .line 255
    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    check-cast v3, Ljava/util/Map$Entry;

    .line 261
    .line 262
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    check-cast v4, Landroidx/camera/core/UseCase;

    .line 267
    .line 268
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v5, Ljava/util/Map;

    .line 271
    .line 272
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    check-cast v3, Landroidx/camera/core/impl/StreamSpec;

    .line 281
    .line 282
    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_5
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v1, Ljava/util/Map;

    .line 289
    .line 290
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_7

    .line 303
    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    check-cast v2, Ljava/util/Map$Entry;

    .line 309
    .line 310
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    if-eqz v3, :cond_6

    .line 319
    .line 320
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    check-cast v3, Landroidx/camera/core/UseCase;

    .line 329
    .line 330
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    check-cast v2, Landroidx/camera/core/impl/StreamSpec;

    .line 335
    .line 336
    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_7
    return-object v8
.end method

.method private checkUnsupportedFeatureCombinationAndThrow(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->hasExtension()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->hasNonSdrConfig(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->hasUltraHdrImageCapture(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "Extensions are not supported for use with Ultra HDR image capture."

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string v0, "Extensions are only supported for use with standard dynamic range."

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mEffects:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    invoke-static {p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->hasUltraHdrImageCapture(Ljava/util/Collection;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string v1, "Ultra HDR image capture does not support for use with CameraEffect."

    .line 57
    .line 58
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    :goto_1
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p1
.end method

.method private createExtraImageCapture()Landroidx/camera/core/ImageCapture;
    .locals 2

    .line 1
    new-instance v0, Landroidx/camera/core/ImageCapture$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ImageCapture-Extra"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture$Builder;->setTargetName(Ljava/lang/String;)Landroidx/camera/core/ImageCapture$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$Builder;->build()Landroidx/camera/core/ImageCapture;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method private createExtraPreview()Landroidx/camera/core/Preview;
    .locals 2

    .line 1
    new-instance v0, Landroidx/camera/core/Preview$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/Preview$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Preview-Extra"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview$Builder;->setTargetName(Ljava/lang/String;)Landroidx/camera/core/Preview$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, L돶땜딤땳땐돝땵뒙딐딽돵뎽듨듼듔뒘된땥돤듻땳딁딄돨딄된뒐딀딞득도듸딻뒐딜땪뒋디듬땋뒛뒉뎡뒵도듰땭뒵됐땯뒘땋땭뒛듻될따돤땡됐돨돼땮듽땝땁됫둑딻돳돳뒼둠딌뒉땋땩돤딎듬딀땯땳뒘딅둑돛뒉딌된돛딝뒀뒀딨뒝듨듼딻돷뒋듸딀듻딄둣뒷둡딌뒀돸둘땪둥둑땹딞둣땻땻뎰뒬둬땯뒷뒙딐뒛둥땻;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private createOrReuseStreamSharing(Ljava/util/Collection;Z)Landroidx/camera/core/streamsharing/StreamSharing;
    .locals 8
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;Z)",
            "Landroidx/camera/core/streamsharing/StreamSharing;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getStreamSharingChildren(Ljava/util/Collection;Z)Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v6

    .line 8
    invoke-interface {v6}, Ljava/util/Set;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p2, 0x2

    .line 13
    const/4 v1, 0x0

    .line 14
    if-ge p1, p2, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->hasExtension()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-static {v6}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->hasVideoCapture(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :cond_1
    iget-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mStreamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/camera/core/streamsharing/StreamSharing;->getChildren()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1, v6}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mStreamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    .line 48
    .line 49
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-object p1

    .line 54
    :cond_2
    invoke-static {v6}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->isStreamSharingChildrenCombinationValid(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-object v1

    .line 62
    :cond_3
    new-instance p1, Landroidx/camera/core/streamsharing/StreamSharing;

    .line 63
    .line 64
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 65
    .line 66
    iget-object v3, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 67
    .line 68
    iget-object v4, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 69
    .line 70
    iget-object v5, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 71
    .line 72
    iget-object v7, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mUseCaseConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 73
    .line 74
    move-object v1, p1

    .line 75
    invoke-direct/range {v1 .. v7}, Landroidx/camera/core/streamsharing/StreamSharing;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;Ljava/util/Set;Landroidx/camera/core/impl/UseCaseConfigFactory;)V

    .line 76
    .line 77
    .line 78
    monitor-exit v0

    .line 79
    return-object p1

    .line 80
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p1
.end method

.method public static generateCameraId(Landroidx/camera/core/impl/RestrictedCameraInfo;Landroidx/camera/core/impl/RestrictedCameraInfo;)Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;
    .locals 2
    .param p0    # Landroidx/camera/core/impl/RestrictedCameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/impl/RestrictedCameraInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/camera/core/impl/ForwardingCameraInfo;->getCameraId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/impl/ForwardingCameraInfo;->getCameraId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Landroidx/camera/core/impl/RestrictedCameraInfo;->getCameraConfig()Landroidx/camera/core/impl/CameraConfig;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraConfig;->getCompatibilityId()Landroidx/camera/core/impl/Identifier;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p1, p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;->create(Ljava/lang/String;Landroidx/camera/core/impl/Identifier;)Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private static generateExtendedStreamSharingConfigFromPreview(Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/streamsharing/StreamSharing;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 2
    .param p0    # Landroidx/camera/core/impl/UseCaseConfigFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/streamsharing/StreamSharing;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/UseCaseConfigFactory;",
            "Landroidx/camera/core/streamsharing/StreamSharing;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/Preview$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/Preview$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1, p0}, Landroidx/camera/core/Preview;->getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-static {p0}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object v0, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_CLASS:Landroidx/camera/core/impl/Config$Option;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/MutableOptionsBundle;->removeOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroidx/camera/core/streamsharing/StreamSharing;->getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method private getCameraMode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 5
    .line 6
    invoke-interface {v1}, Landroidx/camera/core/concurrent/CameraCoordinator;->getCameraOperatingMode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x2

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    const/4 v0, 0x0

    .line 20
    return v0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1
.end method

.method private static getConfigs(Ljava/util/Collection;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/impl/UseCaseConfigFactory;)Ljava/util/Map;
    .locals 5
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/impl/UseCaseConfigFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/UseCaseConfigFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Landroidx/camera/core/impl/UseCaseConfigFactory;",
            "Landroidx/camera/core/impl/UseCaseConfigFactory;",
            ")",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/camera/core/UseCase;

    .line 21
    .line 22
    invoke-static {v1}, Landroidx/camera/core/streamsharing/StreamSharing;->isStreamSharing(Landroidx/camera/core/UseCase;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move-object v2, v1

    .line 29
    check-cast v2, Landroidx/camera/core/streamsharing/StreamSharing;

    .line 30
    .line 31
    invoke-static {p1, v2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->generateExtendedStreamSharingConfigFromPreview(Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/streamsharing/StreamSharing;)Landroidx/camera/core/impl/UseCaseConfig;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1, v2, p1}, Landroidx/camera/core/UseCase;->getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_1
    const/4 v3, 0x1

    .line 42
    invoke-virtual {v1, v3, p2}, Landroidx/camera/core/UseCase;->getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v4, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;

    .line 47
    .line 48
    invoke-direct {v4, v2, v3}, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;-><init>(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-object v0
.end method

.method private getSharingTargets(Z)I
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mEffects:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroidx/camera/core/CameraEffect;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/camera/core/CameraEffect;->getTargets()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-static {v5}, Landroidx/camera/core/processing/TargetUtils;->getNumberOfTargets(I)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x1

    .line 33
    if-le v5, v6, :cond_0

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    :cond_1
    const-string v2, "Can only have one sharing effect."

    .line 39
    .line 40
    invoke-static {v4, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move-object v2, v3

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    if-nez v2, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {v2}, Landroidx/camera/core/CameraEffect;->getTargets()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    :goto_1
    if-eqz p1, :cond_4

    .line 55
    .line 56
    or-int/lit8 v4, v4, 0x3

    .line 57
    .line 58
    :cond_4
    monitor-exit v0

    .line 59
    return v4

    .line 60
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1
.end method

.method private getStreamSharingChildren(Ljava/util/Collection;Z)Ljava/util/Set;
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;Z)",
            "Ljava/util/Set<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getSharingTargets(Z)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/camera/core/UseCase;

    .line 25
    .line 26
    invoke-static {v1}, Landroidx/camera/core/streamsharing/StreamSharing;->isStreamSharing(Landroidx/camera/core/UseCase;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    xor-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    const-string v3, "Only support one level of sharing for now."

    .line 33
    .line 34
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Landroidx/camera/core/UseCase;->isEffectTargetsSupported(I)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-object v0
.end method

.method private hasExtension()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-interface {v1, v2}, Landroidx/camera/core/impl/CameraConfig;->getSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/core/impl/SessionProcessor;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method private static hasImplementationOptionChanged(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/SessionConfig;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p0}, Landroidx/camera/core/impl/Config;->listOptions()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Landroidx/camera/core/impl/Config;->listOptions()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v2, 0x1

    .line 30
    if-eq v1, p1, :cond_0

    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    invoke-interface {p0}, Landroidx/camera/core/impl/Config;->listOptions()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/camera/core/impl/Config$Option;

    .line 52
    .line 53
    invoke-interface {v0, v1}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-interface {v0, v1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {p0, v1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v3, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    :cond_2
    return v2

    .line 74
    :cond_3
    const/4 p0, 0x0

    .line 75
    return p0
.end method

.method private static hasNonSdrConfig(Ljava/util/Collection;)Z
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/camera/core/UseCase;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageInputConfig;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->isNotSdr(Landroidx/camera/core/DynamicRange;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method private static hasUltraHdrImageCapture(Ljava/util/Collection;)Z
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/camera/core/ExperimentalImageCaptureOutputFormat;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/camera/core/UseCase;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->isImageCapture(Landroidx/camera/core/UseCase;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_OUTPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x1

    .line 53
    if-ne v0, v1, :cond_0

    .line 54
    .line 55
    return v1

    .line 56
    :cond_2
    const/4 p0, 0x0

    .line 57
    return p0
.end method

.method private static hasVideoCapture(Ljava/util/Collection;)Z
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/camera/core/UseCase;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->isVideoCapture(Landroidx/camera/core/UseCase;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method private isCoexistingPreviewImageCaptureRequired()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 5
    .line 6
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraConfig;->getUseCaseCombinationRequiredRule()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return v2

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method private static isExtraImageCaptureRequired(Ljava/util/Collection;)Z
    .locals 6
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v3, :cond_3

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroidx/camera/core/UseCase;

    .line 20
    .line 21
    invoke-static {v3}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->isPreview(Landroidx/camera/core/UseCase;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_2

    .line 26
    .line 27
    invoke-static {v3}, Landroidx/camera/core/streamsharing/StreamSharing;->isStreamSharing(Landroidx/camera/core/UseCase;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static {v3}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->isImageCapture(Landroidx/camera/core/UseCase;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    if-eqz v1, :cond_4

    .line 45
    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    :cond_4
    return v0
.end method

.method private static isExtraPreviewRequired(Ljava/util/Collection;)Z
    .locals 6
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v3, :cond_3

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroidx/camera/core/UseCase;

    .line 20
    .line 21
    invoke-static {v3}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->isPreview(Landroidx/camera/core/UseCase;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_2

    .line 26
    .line 27
    invoke-static {v3}, Landroidx/camera/core/streamsharing/StreamSharing;->isStreamSharing(Landroidx/camera/core/UseCase;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static {v3}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->isImageCapture(Landroidx/camera/core/UseCase;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    if-eqz v1, :cond_4

    .line 45
    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    :cond_4
    return v0
.end method

.method private static isImageCapture(Landroidx/camera/core/UseCase;)Z
    .locals 0
    .param p0    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of p0, p0, Landroidx/camera/core/ImageCapture;

    .line 2
    .line 3
    return p0
.end method

.method private static isNotSdr(Landroidx/camera/core/DynamicRange;)Z
    .locals 4
    .param p0    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_1
    if-nez v0, :cond_2

    .line 30
    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    :cond_2
    const/4 v2, 0x1

    .line 34
    :cond_3
    return v2
.end method

.method private static isPreview(Landroidx/camera/core/UseCase;)Z
    .locals 0
    .param p0    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of p0, p0, Landroidx/camera/core/Preview;

    .line 2
    .line 3
    return p0
.end method

.method public static isStreamSharingChildrenCombinationValid(Ljava/util/Collection;)Z
    .locals 8
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x1

    .line 4
    filled-new-array {v2, v0, v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroidx/camera/core/UseCase;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    :goto_0
    const/4 v6, 0x3

    .line 32
    if-ge v5, v6, :cond_0

    .line 33
    .line 34
    aget v6, v0, v5

    .line 35
    .line 36
    invoke-virtual {v3, v6}, Landroidx/camera/core/UseCase;->isEffectTargetsSupported(I)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_2

    .line 41
    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    return v4

    .line 53
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return v2
.end method

.method private static isVideoCapture(Landroidx/camera/core/UseCase;)Z
    .locals 3
    .param p0    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_CAPTURE_TYPE:Landroidx/camera/core/impl/Config$Option;

    .line 9
    .line 10
    invoke-interface {v1, v2}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-object v1, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 25
    .line 26
    if-ne p0, v1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    :cond_0
    return v0

    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    :cond_2
    return v0
.end method

.method private static synthetic lambda$createExtraPreview$0(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;Landroidx/camera/core/SurfaceRequest$Result;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static synthetic lambda$createExtraPreview$1(Landroidx/camera/core/SurfaceRequest;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 27
    .line 28
    .line 29
    new-instance v1, Landroid/view/Surface;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, L돶듻뎻듨딌딄땻될땯듌땃돶딄딽땹돳땹듨땐뒋들땅뒼딞뒾땝땳따듽딟뒈듬뒤땅따땋뎽딹뒵딌됐듰딌돛들딌둑딻둘딹땨딻뒀듔듌돳땅둡땀듬둣땡땳둠돼듌땻딄뎹도뎬디돠돸딠돵딹둬둡딞땧딤득딀뎻둘딐둣듽땔뒷딌뎡뒀뒘듨뒛땰둔돸뎽돶둘딄도딀땵뒬되따도딠뒤두땡뒈됴땥듽땃되땄돰딅뎽땲뎬돶땜땥;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-direct {v3, v1, v0, v4}, L돶듻뎻듨딌딄땻될땯듌땃돶딄딽땹돳땹듨땐뒋들땅뒼딞뒾땝땳따듽딟뒈듬뒤땅따땋뎽딹뒵딌됐듰딌돛들딌둑딻둘딹땨딻뒀듔듌돳땅둡땀듬둣땡땳둠돼듌땻딄뎹도뎬디돠돸딠돵딹둬둡딞땧딤득딀뎻둘딐둣듽땔뒷딌뎡뒀뒘듨뒛땰둔돸뎽돶둘딄도딀땵뒬되따도딠뒤두땡뒈됴땥듽땃되땄돰딅뎽땲뎬돶땜땥;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1, v2, v3}, Landroidx/camera/core/SurfaceRequest;->provideSurface(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private restoreInteropConfig()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mInteropConfig:Landroidx/camera/core/impl/Config;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 9
    .line 10
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mInteropConfig:Landroidx/camera/core/impl/Config;

    .line 15
    .line 16
    invoke-interface {v1, v2}, Landroidx/camera/core/impl/CameraControlInternal;->addInteropConfig(Landroidx/camera/core/impl/Config;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method private static setEffectsOnUseCases(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraEffect;",
            ">;",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraEffect;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/camera/core/UseCase;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2}, Landroidx/camera/core/UseCase;->setEffect(Landroidx/camera/core/CameraEffect;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroidx/camera/core/CameraEffect;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroidx/camera/core/CameraEffect;->getTargets()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {v1, v4}, Landroidx/camera/core/UseCase;->isEffectTargetsSupported(I)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v4, 0x0

    .line 61
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v6, " already has effect"

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v4, v5}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroidx/camera/core/UseCase;->setEffect(Landroidx/camera/core/CameraEffect;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    return-object v0
.end method

.method public static updateEffects(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraEffect;",
            ">;",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->setEffectsOnUseCases(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->setEffectsOnUseCases(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-lez p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p2, "Unused effects: "

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "CameraUseCaseAdapter"

    .line 38
    .line 39
    invoke-static {p1, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private updateViewPortAndSensorToBufferMatrix(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 9
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 15
    .line 16
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v3, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_0
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 32
    .line 33
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraControlInternal;->getSensorRect()Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/camera/core/ViewPort;->getAspectRatio()Landroid/util/Rational;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 48
    .line 49
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v5, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 54
    .line 55
    invoke-virtual {v5}, Landroidx/camera/core/ViewPort;->getRotation()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-interface {v1, v5}, Landroidx/camera/core/CameraInfo;->getSensorRotationDegrees(I)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroidx/camera/core/ViewPort;->getScaleType()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroidx/camera/core/ViewPort;->getLayoutDirection()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    move-object v8, p1

    .line 76
    invoke-static/range {v2 .. v8}, Landroidx/camera/core/internal/ViewPorts;->calculateViewPortRects(Landroid/graphics/Rect;ZLandroid/util/Rational;IIILjava/util/Map;)Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_1

    .line 89
    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Landroidx/camera/core/UseCase;

    .line 95
    .line 96
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Landroid/graphics/Rect;

    .line 101
    .line 102
    invoke-static {v4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Landroidx/camera/core/UseCase;->setViewPortCropRect(Landroid/graphics/Rect;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    goto :goto_3

    .line 114
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_2

    .line 123
    .line 124
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Landroidx/camera/core/UseCase;

    .line 129
    .line 130
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 131
    .line 132
    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-interface {v2}, Landroidx/camera/core/impl/CameraControlInternal;->getSensorRect()Landroid/graphics/Rect;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Landroidx/camera/core/impl/StreamSpec;

    .line 145
    .line 146
    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Landroidx/camera/core/impl/StreamSpec;

    .line 151
    .line 152
    invoke-virtual {v3}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-static {v2, v3}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->calculateSensorToBufferTransformMatrix(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Matrix;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v1, v2}, Landroidx/camera/core/UseCase;->setSensorToBufferTransformMatrix(Landroid/graphics/Matrix;)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_2
    monitor-exit v0

    .line 165
    return-void

    .line 166
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    throw p1
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->lambda$createExtraPreview$1(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;Landroidx/camera/core/SurfaceRequest$Result;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->lambda$createExtraPreview$0(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;Landroidx/camera/core/SurfaceRequest$Result;)V

    return-void
.end method


# virtual methods
.method public addUseCases(Ljava/util/Collection;)V
    .locals 5
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 7
    .line 8
    invoke-interface {v1, v2}, Landroidx/camera/core/impl/CameraInternal;->setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 16
    .line 17
    invoke-interface {v1, v2}, Landroidx/camera/core/impl/CameraInternal;->setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAppUseCases:Ljava/util/List;

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :try_start_1
    iget-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v4, 0x0

    .line 42
    :goto_1
    if-eqz p1, :cond_2

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    :cond_2
    invoke-virtual {p0, v1, v4, v2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->updateUseCases(Ljava/util/Collection;ZZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    :try_start_2
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catch_0
    move-exception p1

    .line 51
    new-instance v1, Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraException;

    .line 52
    .line 53
    invoke-direct {v1, p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    throw p1
.end method

.method public attachUseCases()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAttached:Z

    .line 5
    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraUseCases:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 19
    .line 20
    invoke-interface {v1, v2}, Landroidx/camera/core/impl/CameraInternal;->setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 28
    .line 29
    invoke-interface {v1, v2}, Landroidx/camera/core/impl/CameraInternal;->setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraUseCases:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1, v2}, Landroidx/camera/core/impl/CameraInternal;->attachUseCases(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraUseCases:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v1, v2}, Landroidx/camera/core/impl/CameraInternal;->attachUseCases(Ljava/util/Collection;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-direct {p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->restoreInteropConfig()V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraUseCases:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Landroidx/camera/core/UseCase;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroidx/camera/core/UseCase;->notifyState()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAttached:Z

    .line 78
    .line 79
    :cond_3
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw v1
.end method

.method public detachUseCases()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAttached:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraUseCases:Ljava/util/List;

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Landroidx/camera/core/impl/CameraInternal;->detachUseCases(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraUseCases:Ljava/util/List;

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v2}, Landroidx/camera/core/impl/CameraInternal;->detachUseCases(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->cacheInteropConfig()V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAttached:Z

    .line 42
    .line 43
    :cond_1
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw v1
.end method

.method public getCameraControl()Landroidx/camera/core/CameraControl;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAdapterCameraControl:Landroidx/camera/core/impl/RestrictedCameraControl;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCameraId()Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mId:Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCameraInfo()Landroidx/camera/core/CameraInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAdapterCameraInfo:Landroidx/camera/core/impl/RestrictedCameraInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCameraUseCases()Ljava/util/Collection;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraUseCases:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public getExtendedConfig()Landroidx/camera/core/impl/CameraConfig;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public getSecondaryCameraInfo()Landroidx/camera/core/CameraInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAdapterSecondaryCameraInfo:Landroidx/camera/core/impl/RestrictedCameraInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUseCases()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAppUseCases:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public isEquivalent(Landroidx/camera/core/internal/CameraUseCaseAdapter;)Z
    .locals 1
    .param p1    # Landroidx/camera/core/internal/CameraUseCaseAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getCameraId()Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getCameraId()Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public varargs isUseCasesCombinationSupported(Z[Landroidx/camera/core/UseCase;)Z
    .locals 7
    .param p2    # [Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p2, v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->createOrReuseStreamSharing(Ljava/util/Collection;Z)Landroidx/camera/core/streamsharing/StreamSharing;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-static {p2, v1, p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->calculateCameraUseCases(Ljava/util/Collection;Landroidx/camera/core/UseCase;Landroidx/camera/core/streamsharing/StreamSharing;)Ljava/util/Collection;

    move-result-object p2

    :cond_0
    move-object v4, p2

    .line 5
    iget-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 7
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraConfig;->getUseCaseConfigFactory()Landroidx/camera/core/impl/UseCaseConfigFactory;

    move-result-object p2

    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mUseCaseConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 8
    invoke-static {v4, p2, v1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getConfigs(Ljava/util/Collection;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/impl/UseCaseConfigFactory;)Ljava/util/Map;

    move-result-object v6

    .line 9
    invoke-direct {p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getCameraMode()I

    move-result v2

    iget-object p2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 10
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v3

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    .line 12
    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->calculateSuggestedStreamSpecs(ILandroidx/camera/core/impl/CameraInfoInternal;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    monitor-exit p1

    return v0

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 14
    :catch_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 15
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final varargs synthetic isUseCasesCombinationSupported([Landroidx/camera/core/UseCase;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, L돴뒻돸땯땥땯돳들도땻땜딟딌땟딐딹뎸뎸된땜땲뒀땟딻땻땄뎽딨딐돰된땵딝땧뒐됫듐딨딹딠돶딅땅땱두딌땦듽뎸돼뒝땳둥뒈딜들뒼땱딤뒙듬땠돝뒈돝돨땀땤둘둡뒐딜뒷딄듌돳됩뎡뒼돷뎽땠뒬뒷돶땋둔딅땄됐돝땃뎰땋둣뎠땤땥딠돰땧듟딤둬뒵딃땟도돨돠뎸땹땍뒹뒛땯됩듟딤따둠뒼뎸들돸둔땐땮땦땹;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/Camera;[Landroidx/camera/core/UseCase;)Z

    move-result p1

    return p1
.end method

.method public final varargs synthetic isUseCasesCombinationSupportedByFramework([Landroidx/camera/core/UseCase;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, L돴뒻돸땯땥땯돳들도땻땜딟딌땟딐딹뎸뎸된땜땲뒀땟딻땻땄뎽딨딐돰된땵딝땧뒐됫듐딨딹딠돶딅땅땱두딌땦듽뎸돼뒝땳둥뒈딜들뒼땱딤뒙듬땠돝뒈돝돨땀땤둘둡뒐딜뒷딄듌돳됩뎡뒼돷뎽땠뒬뒷돶땋둔딅땄됐돝땃뎰땋둣뎠땤땥딠돰땧듟딤둬뒵딃땟도돨돠뎸땹땍뒹뒛땯됩듟딤따둠뒼뎸들돸둔땐땮땦땹;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/Camera;[Landroidx/camera/core/UseCase;)Z

    move-result p1

    return p1
.end method

.method public removeUseCases(Ljava/util/Collection;)V
    .locals 5
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAppUseCases:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    :cond_1
    invoke-virtual {p0, v1, v4, v2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->updateUseCases(Ljava/util/Collection;ZZ)V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method

.method public setActiveResumingMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CameraInternal;->setActiveResumingMode(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEffects(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraEffect;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mEffects:Ljava/util/List;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public setViewPort(Landroidx/camera/core/ViewPort;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ViewPort;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public updateUseCases(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->updateUseCases(Ljava/util/Collection;ZZ)V

    return-void
.end method

.method public updateUseCases(Ljava/util/Collection;ZZ)V
    .locals 19
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    .line 2
    iget-object v10, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3
    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->checkUnsupportedFeatureCombinationAndThrow(Ljava/util/Collection;)V

    const/4 v11, 0x1

    if-nez p2, :cond_0

    .line 4
    invoke-direct/range {p0 .. p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->hasVideoCapture(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v7, v8, v11, v9}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->updateUseCases(Ljava/util/Collection;ZZ)V

    .line 6
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 7
    :cond_0
    invoke-direct/range {p0 .. p2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->createOrReuseStreamSharing(Ljava/util/Collection;Z)Landroidx/camera/core/streamsharing/StreamSharing;

    move-result-object v0

    .line 8
    invoke-direct {v7, v8, v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->calculatePlaceholderForExtensions(Ljava/util/Collection;Landroidx/camera/core/streamsharing/StreamSharing;)Landroidx/camera/core/UseCase;

    move-result-object v12

    .line 9
    invoke-static {v8, v12, v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->calculateCameraUseCases(Ljava/util/Collection;Landroidx/camera/core/UseCase;Landroidx/camera/core/streamsharing/StreamSharing;)Ljava/util/Collection;

    move-result-object v13

    .line 10
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraUseCases:Ljava/util/List;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 12
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraUseCases:Ljava/util/List;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 14
    new-instance v6, Ljava/util/ArrayList;

    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraUseCases:Ljava/util/List;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 16
    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 17
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraConfig;->getUseCaseConfigFactory()Landroidx/camera/core/impl/UseCaseConfigFactory;

    move-result-object v1

    iget-object v2, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mUseCaseConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 18
    invoke-static {v14, v1, v2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getConfigs(Ljava/util/Collection;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/impl/UseCaseConfigFactory;)Ljava/util/Map;

    move-result-object v5

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getCameraMode()I

    move-result v2

    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 21
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v3

    move-object/from16 v1, p0

    move-object v4, v14

    move-object/from16 v17, v5

    move-object v5, v15

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    .line 22
    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->calculateSuggestedStreamSpecs(ILandroidx/camera/core/impl/CameraInfoInternal;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 23
    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    if-eqz v1, :cond_1

    .line 24
    invoke-direct/range {p0 .. p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getCameraMode()I

    move-result v2

    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 25
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v3

    move-object/from16 v1, p0

    move-object v4, v14

    move-object v5, v15

    move-object v11, v6

    move-object/from16 v6, v17

    .line 26
    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->calculateSuggestedStreamSpecs(ILandroidx/camera/core/impl/CameraInfoInternal;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v16
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object/from16 v1, v16

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    move-object v11, v6

    goto :goto_0

    .line 27
    :goto_1
    :try_start_2
    invoke-direct {v7, v11, v13}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->updateViewPortAndSensorToBufferMatrix(Ljava/util/Map;Ljava/util/Collection;)V

    .line 28
    iget-object v2, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mEffects:Ljava/util/List;

    invoke-static {v2, v13, v8}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->updateEffects(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 29
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/UseCase;

    .line 30
    iget-object v4, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    invoke-virtual {v3, v4}, Landroidx/camera/core/UseCase;->unbindFromCamera(Landroidx/camera/core/impl/CameraInternal;)V

    goto :goto_2

    .line 31
    :cond_2
    iget-object v2, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    move-object/from16 v3, v18

    invoke-interface {v2, v3}, Landroidx/camera/core/impl/CameraInternal;->detachUseCases(Ljava/util/Collection;)V

    .line 32
    iget-object v2, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    if-eqz v2, :cond_4

    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/UseCase;

    .line 34
    iget-object v5, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v5, Landroidx/camera/core/impl/CameraInternal;

    invoke-virtual {v4, v5}, Landroidx/camera/core/UseCase;->unbindFromCamera(Landroidx/camera/core/impl/CameraInternal;)V

    goto :goto_3

    .line 35
    :cond_3
    iget-object v2, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroidx/camera/core/impl/CameraInternal;

    .line 36
    invoke-interface {v2, v3}, Landroidx/camera/core/impl/CameraInternal;->detachUseCases(Ljava/util/Collection;)V

    .line 37
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 38
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/UseCase;

    .line 39
    invoke-interface {v11, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 40
    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/StreamSpec;

    .line 41
    invoke-virtual {v4}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 42
    invoke-virtual {v3}, Landroidx/camera/core/UseCase;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v6

    .line 43
    invoke-static {v4, v6}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->hasImplementationOptionChanged(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/SessionConfig;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 44
    invoke-virtual {v3, v5}, Landroidx/camera/core/UseCase;->updateSuggestedStreamSpecImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 45
    iget-boolean v4, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAttached:Z

    if-eqz v4, :cond_5

    .line 46
    iget-object v4, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {v4, v3}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseUpdated(Landroidx/camera/core/UseCase;)V

    .line 47
    iget-object v4, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    if-eqz v4, :cond_5

    .line 48
    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Landroidx/camera/core/impl/CameraInternal;

    .line 49
    invoke-interface {v4, v3}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseUpdated(Landroidx/camera/core/UseCase;)V

    goto :goto_4

    .line 50
    :cond_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/UseCase;

    move-object/from16 v4, v17

    .line 51
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v6, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    if-eqz v6, :cond_7

    .line 53
    iget-object v9, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 54
    invoke-static {v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v6, Landroidx/camera/core/impl/CameraInternal;

    iget-object v15, v5, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mExtendedConfig:Landroidx/camera/core/impl/UseCaseConfig;

    iget-object v5, v5, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mCameraConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 55
    invoke-virtual {v3, v9, v6, v15, v5}, Landroidx/camera/core/UseCase;->bindToCamera(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 56
    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/impl/StreamSpec;

    invoke-static {v5}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/impl/StreamSpec;

    .line 57
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/StreamSpec;

    .line 58
    invoke-virtual {v3, v5, v6}, Landroidx/camera/core/UseCase;->updateSuggestedStreamSpec(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V

    goto :goto_6

    .line 59
    :cond_7
    iget-object v6, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    iget-object v9, v5, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mExtendedConfig:Landroidx/camera/core/impl/UseCaseConfig;

    iget-object v5, v5, Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;->mCameraConfig:Landroidx/camera/core/impl/UseCaseConfig;

    const/4 v15, 0x0

    invoke-virtual {v3, v6, v15, v9, v5}, Landroidx/camera/core/UseCase;->bindToCamera(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 60
    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/impl/StreamSpec;

    invoke-static {v5}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/impl/StreamSpec;

    .line 61
    invoke-virtual {v3, v5, v15}, Landroidx/camera/core/UseCase;->updateSuggestedStreamSpec(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V

    :goto_6
    move-object/from16 v17, v4

    goto :goto_5

    .line 62
    :cond_8
    iget-boolean v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAttached:Z

    if-eqz v1, :cond_9

    .line 63
    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {v1, v14}, Landroidx/camera/core/impl/CameraInternal;->attachUseCases(Ljava/util/Collection;)V

    .line 64
    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    if-eqz v1, :cond_9

    .line 65
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    .line 66
    invoke-interface {v1, v14}, Landroidx/camera/core/impl/CameraInternal;->attachUseCases(Ljava/util/Collection;)V

    .line 67
    :cond_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/UseCase;

    .line 68
    invoke-virtual {v2}, Landroidx/camera/core/UseCase;->notifyState()V

    goto :goto_7

    .line 69
    :cond_a
    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAppUseCases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 70
    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mAppUseCases:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraUseCases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 72
    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraUseCases:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    iput-object v12, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mPlaceholderForExtensions:Landroidx/camera/core/UseCase;

    .line 74
    iput-object v0, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mStreamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    .line 75
    monitor-exit v10

    return-void

    :goto_8
    if-nez p2, :cond_b

    .line 76
    invoke-direct/range {p0 .. p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->hasExtension()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v7, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 77
    invoke-interface {v1}, Landroidx/camera/core/concurrent/CameraCoordinator;->getCameraOperatingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v7, v8, v1, v9}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->updateUseCases(Ljava/util/Collection;ZZ)V

    .line 79
    monitor-exit v10

    return-void

    .line 80
    :cond_b
    throw v0

    .line 81
    :goto_9
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
