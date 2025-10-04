.class Landroidx/camera/video/Recorder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/Recorder;->updateEncoderCallbacks(Landroidx/camera/video/Recorder$RecordingRecord;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Ljava/util/List<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/video/Recorder;


# direct methods
.method public constructor <init>(Landroidx/camera/video/Recorder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/video/Recorder$6;->this$0:Landroidx/camera/video/Recorder;

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
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder$6;->this$0:Landroidx/camera/video/Recorder;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const-string v1, "In-progress recording shouldn\'t be null"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/camera/video/Recorder$6;->this$0:Landroidx/camera/video/Recorder;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/camera/video/Recorder$RecordingRecord;->isPersistent()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "Encodings end with error: "

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "Recorder"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Landroidx/camera/video/Recorder$6;->this$0:Landroidx/camera/video/Recorder;

    .line 45
    .line 46
    iget-object v1, v0, Landroidx/camera/video/Recorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    const/16 v1, 0x8

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v1, 0x6

    .line 54
    :goto_1
    invoke-virtual {v0, v1, p1}, Landroidx/camera/video/Recorder;->finalizeInProgressRecording(ILjava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder$6;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string p1, "Recorder"

    const-string v0, "Encodings end successfully."

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Landroidx/camera/video/Recorder$6;->this$0:Landroidx/camera/video/Recorder;

    iget v0, p1, Landroidx/camera/video/Recorder;->mRecordingStopError:I

    iget-object v1, p1, Landroidx/camera/video/Recorder;->mRecordingStopErrorCause:Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1}, Landroidx/camera/video/Recorder;->finalizeInProgressRecording(ILjava/lang/Throwable;)V

    return-void
.end method
