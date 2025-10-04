.class abstract Landroidx/camera/core/imagecapture/CaptureNode$In;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/imagecapture/CaptureNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "In"
.end annotation


# instance fields
.field private mCameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mPostviewSurface:Landroidx/camera/core/impl/DeferrableSurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSurface:Landroidx/camera/core/impl/DeferrableSurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/camera/core/imagecapture/CaptureNode$In$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/camera/core/imagecapture/CaptureNode$In$1;-><init>(Landroidx/camera/core/imagecapture/CaptureNode$In;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mCameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mPostviewSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 13
    .line 14
    return-void
.end method

.method public static of(Landroid/util/Size;IIZLandroidx/camera/core/ImageReaderProxyProvider;)Landroidx/camera/core/imagecapture/CaptureNode$In;
    .locals 11
    .param p4    # Landroidx/camera/core/ImageReaderProxyProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v10, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;

    new-instance v8, Landroidx/camera/core/processing/Edge;

    invoke-direct {v8}, Landroidx/camera/core/processing/Edge;-><init>()V

    new-instance v9, Landroidx/camera/core/processing/Edge;

    invoke-direct {v9}, Landroidx/camera/core/processing/Edge;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x23

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v9}, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;-><init>(Landroid/util/Size;IIZLandroidx/camera/core/ImageReaderProxyProvider;Landroid/util/Size;ILandroidx/camera/core/processing/Edge;Landroidx/camera/core/processing/Edge;)V

    return-object v10
.end method

.method public static of(Landroid/util/Size;IIZLandroidx/camera/core/ImageReaderProxyProvider;Landroid/util/Size;I)Landroidx/camera/core/imagecapture/CaptureNode$In;
    .locals 11
    .param p4    # Landroidx/camera/core/ImageReaderProxyProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/util/Size;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v10, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;

    new-instance v8, Landroidx/camera/core/processing/Edge;

    invoke-direct {v8}, Landroidx/camera/core/processing/Edge;-><init>()V

    new-instance v9, Landroidx/camera/core/processing/Edge;

    invoke-direct {v9}, Landroidx/camera/core/processing/Edge;-><init>()V

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;-><init>(Landroid/util/Size;IIZLandroidx/camera/core/ImageReaderProxyProvider;Landroid/util/Size;ILandroidx/camera/core/processing/Edge;Landroidx/camera/core/processing/Edge;)V

    return-object v10
.end method


# virtual methods
.method public getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mCameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getErrorEdge()Landroidx/camera/core/processing/Edge;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/TakePictureManager$CaptureError;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getInputFormat()I
.end method

.method public abstract getOutputFormat()I
.end method

.method public abstract getPostviewImageFormat()I
.end method

.method public abstract getPostviewSize()Landroid/util/Size;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public getPostviewSurface()Landroidx/camera/core/impl/DeferrableSurface;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mPostviewSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getRequestEdge()Landroidx/camera/core/processing/Edge;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/ProcessingRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSize()Landroid/util/Size;
.end method

.method public getSurface()Landroidx/camera/core/impl/DeferrableSurface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public abstract isVirtualCamera()Z
.end method

.method public setCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/CameraCaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mCameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setPostviewSurface(Landroid/view/Surface;Landroid/util/Size;I)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/camera/core/impl/ImmediateSurface;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mPostviewSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 7
    .line 8
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v1, "The surface is already set."

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroidx/camera/core/impl/ImmediateSurface;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getSize()Landroid/util/Size;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getInputFormat()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-direct {v0, p1, v1, v2}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 27
    .line 28
    return-void
.end method
