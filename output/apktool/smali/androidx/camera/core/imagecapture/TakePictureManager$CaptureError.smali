.class abstract Landroidx/camera/core/imagecapture/TakePictureManager$CaptureError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/imagecapture/TakePictureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CaptureError"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static of(ILandroidx/camera/core/ImageCaptureException;)Landroidx/camera/core/imagecapture/TakePictureManager$CaptureError;
    .locals 1
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/camera/core/imagecapture/AutoValue_TakePictureManager_CaptureError;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/camera/core/imagecapture/AutoValue_TakePictureManager_CaptureError;-><init>(ILandroidx/camera/core/ImageCaptureException;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getImageCaptureException()Landroidx/camera/core/ImageCaptureException;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getRequestId()I
.end method
