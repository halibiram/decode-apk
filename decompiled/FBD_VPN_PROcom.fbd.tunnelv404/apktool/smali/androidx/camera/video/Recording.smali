.class public final Landroidx/camera/video/Recording;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final mCloseGuard:Landroidx/camera/core/impl/utils/CloseGuardHelper;

.field private final mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsPersistent:Z

.field private final mOutputOptions:Landroidx/camera/video/OutputOptions;

.field private final mRecorder:Landroidx/camera/video/Recorder;

.field private final mRecordingId:J


# direct methods
.method public constructor <init>(Landroidx/camera/video/Recorder;JLandroidx/camera/video/OutputOptions;ZZ)V
    .locals 2
    .param p1    # Landroidx/camera/video/Recorder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/video/OutputOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/camera/video/Recording;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-static {}, Landroidx/camera/core/impl/utils/CloseGuardHelper;->create()Landroidx/camera/core/impl/utils/CloseGuardHelper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Landroidx/camera/video/Recording;->mCloseGuard:Landroidx/camera/core/impl/utils/CloseGuardHelper;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/camera/video/Recording;->mRecorder:Landroidx/camera/video/Recorder;

    .line 19
    .line 20
    iput-wide p2, p0, Landroidx/camera/video/Recording;->mRecordingId:J

    .line 21
    .line 22
    iput-object p4, p0, Landroidx/camera/video/Recording;->mOutputOptions:Landroidx/camera/video/OutputOptions;

    .line 23
    .line 24
    iput-boolean p5, p0, Landroidx/camera/video/Recording;->mIsPersistent:Z

    .line 25
    .line 26
    if-eqz p6, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p1, "stop"

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Landroidx/camera/core/impl/utils/CloseGuardHelper;->open(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public static createFinalizedFrom(Landroidx/camera/video/PendingRecording;J)Landroidx/camera/video/Recording;
    .locals 8
    .param p0    # Landroidx/camera/video/PendingRecording;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "The given PendingRecording cannot be null."

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/camera/video/Recording;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/camera/video/PendingRecording;->getRecorder()Landroidx/camera/video/Recorder;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Landroidx/camera/video/PendingRecording;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {p0}, Landroidx/camera/video/PendingRecording;->isPersistent()Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    const/4 v7, 0x1

    .line 21
    move-object v1, v0

    .line 22
    move-wide v3, p1

    .line 23
    invoke-direct/range {v1 .. v7}, Landroidx/camera/video/Recording;-><init>(Landroidx/camera/video/Recorder;JLandroidx/camera/video/OutputOptions;ZZ)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static from(Landroidx/camera/video/PendingRecording;J)Landroidx/camera/video/Recording;
    .locals 8
    .param p0    # Landroidx/camera/video/PendingRecording;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "The given PendingRecording cannot be null."

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/camera/video/Recording;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/camera/video/PendingRecording;->getRecorder()Landroidx/camera/video/Recorder;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Landroidx/camera/video/PendingRecording;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {p0}, Landroidx/camera/video/PendingRecording;->isPersistent()Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v1, v0

    .line 22
    move-wide v3, p1

    .line 23
    invoke-direct/range {v1 .. v7}, Landroidx/camera/video/Recording;-><init>(Landroidx/camera/video/Recorder;JLandroidx/camera/video/OutputOptions;ZZ)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method private stopWithError(ILjava/lang/Throwable;)V
    .locals 2
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recording;->mCloseGuard:Landroidx/camera/core/impl/utils/CloseGuardHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/impl/utils/CloseGuardHelper;->close()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/video/Recording;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/Recording;->mRecorder:Landroidx/camera/video/Recorder;

    .line 17
    .line 18
    invoke-virtual {v0, p0, p1, p2}, Landroidx/camera/video/Recorder;->stop(Landroidx/camera/video/Recording;ILjava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/camera/video/Recording;->stopWithError(ILjava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/Recording;->mCloseGuard:Landroidx/camera/core/impl/utils/CloseGuardHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/impl/utils/CloseGuardHelper;->warnIfOpen()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    const-string v1, "Recording stopped due to being garbage collected."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    invoke-direct {p0, v1, v0}, Landroidx/camera/video/Recording;->stopWithError(ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public getOutputOptions()Landroidx/camera/video/OutputOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recording;->mOutputOptions:Landroidx/camera/video/OutputOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecordingId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/camera/video/Recording;->mRecordingId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recording;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isPersistent()Z
    .locals 1
    .annotation build Landroidx/camera/video/ExperimentalPersistentRecording;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/video/Recording;->mIsPersistent:Z

    .line 2
    .line 3
    return v0
.end method

.method public mute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recording;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/video/Recording;->mRecorder:Landroidx/camera/video/Recorder;

    .line 10
    .line 11
    invoke-virtual {v0, p0, p1}, Landroidx/camera/video/Recorder;->mute(Landroidx/camera/video/Recording;Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "The recording has been stopped."

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recording;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/video/Recording;->mRecorder:Landroidx/camera/video/Recorder;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/camera/video/Recorder;->pause(Landroidx/camera/video/Recording;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v1, "The recording has been stopped."

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public resume()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recording;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/video/Recording;->mRecorder:Landroidx/camera/video/Recorder;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/camera/video/Recorder;->resume(Landroidx/camera/video/Recording;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v1, "The recording has been stopped."

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public stop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/Recording;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
