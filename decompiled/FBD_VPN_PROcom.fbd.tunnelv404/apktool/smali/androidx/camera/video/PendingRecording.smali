.class public final Landroidx/camera/video/PendingRecording;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAudioEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mEventListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPersistent:Z

.field private mListenerExecutor:Ljava/util/concurrent/Executor;

.field private final mOutputOptions:Landroidx/camera/video/OutputOptions;

.field private final mRecorder:Landroidx/camera/video/Recorder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/camera/video/Recorder;Landroidx/camera/video/OutputOptions;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/Recorder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/video/OutputOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/camera/video/PendingRecording;->mAudioEnabled:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/camera/video/PendingRecording;->mIsPersistent:Z

    .line 8
    .line 9
    invoke-static {p1}, Landroidx/camera/core/impl/utils/ContextUtil;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/camera/video/PendingRecording;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/camera/video/PendingRecording;->mRecorder:Landroidx/camera/video/Recorder;

    .line 16
    .line 17
    iput-object p3, p0, Landroidx/camera/video/PendingRecording;->mOutputOptions:Landroidx/camera/video/OutputOptions;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public asPersistentRecording()Landroidx/camera/video/PendingRecording;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/camera/video/ExperimentalPersistentRecording;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/camera/video/PendingRecording;->mIsPersistent:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/PendingRecording;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventListener()Landroidx/core/util/Consumer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/PendingRecording;->mEventListener:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getListenerExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/PendingRecording;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOutputOptions()Landroidx/camera/video/OutputOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/PendingRecording;->mOutputOptions:Landroidx/camera/video/OutputOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecorder()Landroidx/camera/video/Recorder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/PendingRecording;->mRecorder:Landroidx/camera/video/Recorder;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAudioEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/video/PendingRecording;->mAudioEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/video/PendingRecording;->mIsPersistent:Z

    .line 2
    .line 3
    return v0
.end method

.method public start(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;)",
            "Landroidx/camera/video/Recording;"
        }
    .end annotation

    .line 1
    const-string v0, "Listener Executor can\'t be null."

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "Event listener can\'t be null"

    .line 7
    .line 8
    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/camera/video/PendingRecording;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/camera/video/PendingRecording;->mEventListener:Landroidx/core/util/Consumer;

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/camera/video/PendingRecording;->mRecorder:Landroidx/camera/video/Recorder;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroidx/camera/video/Recorder;->start(Landroidx/camera/video/PendingRecording;)Landroidx/camera/video/Recording;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public withAudioEnabled()Landroidx/camera/video/PendingRecording;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.RECORD_AUDIO"
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/PendingRecording;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/camera/video/PendingRecording;->mRecorder:Landroidx/camera/video/Recorder;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/camera/video/Recorder;->isAudioSupported()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-string v1, "The Recorder this recording is associated to doesn\'t support audio."

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Landroidx/camera/video/PendingRecording;->mAudioEnabled:Z

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 28
    .line 29
    const-string v1, "Attempted to enable audio for recording but application does not have RECORD_AUDIO permission granted."

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method
