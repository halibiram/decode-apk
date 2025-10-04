.class Landroidx/camera/camera2/internal/CaptureSession$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/internal/CaptureSession;->open(Landroidx/camera/core/impl/SessionConfig;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/SynchronizedCaptureSession$Opener;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/CaptureSession;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/CaptureSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/internal/CaptureSession$1;->this$0:Landroidx/camera/camera2/internal/CaptureSession;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "Opening session with fail "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/internal/CaptureSession$1;->this$0:Landroidx/camera/camera2/internal/CaptureSession;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/camera/camera2/internal/CaptureSession;->mSessionLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/internal/CaptureSession$1;->this$0:Landroidx/camera/camera2/internal/CaptureSession;

    .line 9
    .line 10
    iget-object v2, v2, Landroidx/camera/camera2/internal/CaptureSession;->mSessionOpener:Landroidx/camera/camera2/internal/SynchronizedCaptureSession$Opener;

    .line 11
    .line 12
    invoke-interface {v2}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$Opener;->stop()Z

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Landroidx/camera/camera2/internal/CaptureSession$1;->this$0:Landroidx/camera/camera2/internal/CaptureSession;

    .line 16
    .line 17
    iget-object v2, v2, Landroidx/camera/camera2/internal/CaptureSession;->mState:Landroidx/camera/camera2/internal/CaptureSession$State;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x3

    .line 24
    if-eq v2, v3, :cond_0

    .line 25
    .line 26
    const/4 v3, 0x5

    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x6

    .line 30
    if-eq v2, v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    const-string v2, "CaptureSession"

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Landroidx/camera/camera2/internal/CaptureSession$1;->this$0:Landroidx/camera/camera2/internal/CaptureSession;

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/camera/camera2/internal/CaptureSession;->mState:Landroidx/camera/camera2/internal/CaptureSession$State;

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v2, v0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Landroidx/camera/camera2/internal/CaptureSession$1;->this$0:Landroidx/camera/camera2/internal/CaptureSession;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/CaptureSession;->finishClose()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    monitor-exit v1

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/CaptureSession$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0
    .param p1    # Ljava/lang/Void;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
