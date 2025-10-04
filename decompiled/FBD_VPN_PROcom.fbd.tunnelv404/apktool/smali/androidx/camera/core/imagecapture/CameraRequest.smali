.class public final Landroidx/camera/core/imagecapture/CameraRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCallback:Landroidx/camera/core/imagecapture/TakePictureCallback;

.field private final mCaptureConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/camera/core/imagecapture/TakePictureCallback;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/imagecapture/TakePictureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;",
            "Landroidx/camera/core/imagecapture/TakePictureCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/core/imagecapture/CameraRequest;->mCaptureConfigs:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/core/imagecapture/CameraRequest;->mCallback:Landroidx/camera/core/imagecapture/TakePictureCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCaptureConfigs()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CameraRequest;->mCaptureConfigs:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAborted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CameraRequest;->mCallback:Landroidx/camera/core/imagecapture/TakePictureCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/imagecapture/TakePictureCallback;->isAborted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
