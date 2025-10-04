.class Landroidx/camera/core/streamsharing/VirtualCameraAdapter$1;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->createCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;


# direct methods
.method public constructor <init>(Landroidx/camera/core/streamsharing/VirtualCameraAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter$1;->this$0:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 2
    .param p2    # Landroidx/camera/core/impl/CameraCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter$1;->this$0:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildren:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/camera/core/UseCase;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p2, v1, p1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->sendCameraCaptureResultToChild(Landroidx/camera/core/impl/CameraCaptureResult;Landroidx/camera/core/impl/SessionConfig;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
