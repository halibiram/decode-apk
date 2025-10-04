.class public final Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;,
        Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;,
        Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CaptureCallbackExecutorWrapper;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1c

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance p2, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompatApi28Impl;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompatApi28Impl;-><init>(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompatBaseImpl;->create(Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;

    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public static toCameraCaptureSessionCompat(Landroid/hardware/camera2/CameraCaptureSession;)Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;
    .locals 1
    .param p0    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/MainThreadAsyncHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;->toCameraCaptureSessionCompat(Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;

    move-result-object p0

    return-object p0
.end method

.method public static toCameraCaptureSessionCompat(Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;
    .locals 1
    .param p0    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;-><init>(Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;->captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public captureSingleRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 1
    .param p1    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;->captureSingleRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;->setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 1
    .param p1    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;->setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$CameraCaptureSessionCompatImpl;->unwrap()Landroid/hardware/camera2/CameraCaptureSession;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
