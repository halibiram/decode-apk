.class public Landroidx/camera/video/internal/audio/BufferedAudioStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/audio/AudioStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;
    }
.end annotation


# static fields
.field private static final DATA_WAITING_TIME_MILLIS:I = 0x1

.field private static final DEFAULT_BUFFER_SIZE_IN_FRAME:I = 0x400

.field private static final DEFAULT_QUEUE_SIZE:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "BufferedAudioStream"


# instance fields
.field private mAudioDataNotFullyRead:Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mAudioDataQueue:Ljava/util/Queue;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;

.field private mBufferSize:I

.field private final mBytesPerFrame:I

.field private final mIsCollectingAudioData:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLock:Ljava/lang/Object;

.field private final mProducerExecutor:Ljava/util/concurrent/Executor;

.field private final mQueueMaxSize:I

.field private final mSampleRate:I


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/audio/AudioStream;Landroidx/camera/video/internal/audio/AudioSettings;)V
    .locals 7
    .param p1    # Landroidx/camera/video/internal/audio/AudioStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/internal/audio/AudioSettings;
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
    iput-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioDataQueue:Ljava/util/Queue;

    .line 25
    .line 26
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->audioExecutor()Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mProducerExecutor:Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/Object;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioDataNotFullyRead:Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;

    .line 45
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsCollectingAudioData:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    iput-object p1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroidx/camera/video/internal/audio/AudioSettings;->getBytesPerFrame()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mBytesPerFrame:I

    .line 60
    .line 61
    invoke-virtual {p2}, Landroidx/camera/video/internal/audio/AudioSettings;->getSampleRate()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iput p2, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mSampleRate:I

    .line 66
    .line 67
    int-to-long v2, p1

    .line 68
    const/4 v0, 0x1

    .line 69
    const-wide/16 v4, 0x0

    .line 70
    .line 71
    cmp-long v6, v2, v4

    .line 72
    .line 73
    if-lez v6, :cond_0

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/4 v2, 0x0

    .line 78
    :goto_0
    const-string v3, "mBytesPerFrame must be greater than 0."

    .line 79
    .line 80
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    int-to-long v2, p2

    .line 84
    cmp-long p2, v2, v4

    .line 85
    .line 86
    if-lez p2, :cond_1

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    :cond_1
    const-string p2, "mSampleRate must be greater than 0."

    .line 90
    .line 91
    invoke-static {v1, p2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const/16 p2, 0x1f4

    .line 95
    .line 96
    iput p2, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mQueueMaxSize:I

    .line 97
    .line 98
    mul-int/lit16 p1, p1, 0x400

    .line 99
    .line 100
    iput p1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mBufferSize:I

    .line 101
    .line 102
    return-void
.end method

.method private checkNotReleasedOrThrow()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    const-string v1, "AudioStream has been released."

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private checkStartedOrThrow()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "AudioStream has not been started."

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private collectAudioData()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsCollectingAudioData:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    return-void

    .line 10
    :cond_0
    iget v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mBufferSize:I

    .line 11
    .line 12
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;

    .line 17
    .line 18
    invoke-interface {v1, v0}, Landroidx/camera/video/internal/audio/AudioStream;->read(Ljava/nio/ByteBuffer;)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;

    .line 23
    .line 24
    iget v3, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mBytesPerFrame:I

    .line 25
    .line 26
    iget v4, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mSampleRate:I

    .line 27
    .line 28
    invoke-direct {v2, v0, v1, v3, v4}, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;-><init>(Ljava/nio/ByteBuffer;Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;II)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mQueueMaxSize:I

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v1

    .line 36
    :try_start_0
    iget-object v3, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioDataQueue:Ljava/util/Queue;

    .line 37
    .line 38
    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v2, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioDataQueue:Ljava/util/Queue;

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-le v2, v0, :cond_1

    .line 48
    .line 49
    iget-object v2, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioDataQueue:Ljava/util/Queue;

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string v2, "BufferedAudioStream"

    .line 55
    .line 56
    const-string v3, "Drop audio data due to full of queue."

    .line 57
    .line 58
    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsCollectingAudioData:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mProducerExecutor:Ljava/util/concurrent/Executor;

    .line 74
    .line 75
    new-instance v1, L돨땬땤뒼뒈듰땵듽땀뎬딎둑듔돳뎠딁딀들된돶땲돶든딅돠땄딞듰뒨땱땯돵딻땀돵딨뒬돰뒤뎹딐땁디땥딹듬땻딝됫땥뎸듌둥딞땋딃두땲듔듸땝둥땔땥땪돴드땹땄듬땍뒐뒹땹땐뒋뒈돨딜땵딜딨땠땋됴딁돸땁될뒹뒨될뒨듨됩딤돨딃뎽땻돰땱디딁뒋딸뒙두딻들땭될든땮땅땡땵도땣돛둥듼될땡드뒉따뒷땣땥;

    .line 76
    .line 77
    const/4 v2, 0x2

    .line 78
    invoke-direct {v1, p0, v2}, L돨땬땤뒼뒈듰땵듽땀뎬딎둑듔돳뎠딁딀들된돶땲돶든딅돠땄딞듰뒨땱땯돵딻땀돵딨뒬돰뒤뎹딐땁디땥딹듬땻딝됫땥뎸듌둥딞땋딃두땲듔듸땝둥땔땥땪돴드땹땄듬땍뒐뒹땹땐뒋뒈돨딜땵딜딨땠땋됴딁돸땁될뒹뒨될뒨듨됩딤돨딃뎽땻돰땱디딁뒋딸뒙두딻들땭될든땮땅땡땵도땣돛둥듼될땡드뒉따뒷땣땥;-><init>(Landroidx/camera/video/internal/audio/BufferedAudioStream;I)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    return-void

    .line 85
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw v0
.end method

.method private synthetic lambda$release$2()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsCollectingAudioData:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/camera/video/internal/audio/AudioStream;->release()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_0
    iput-object v1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioDataNotFullyRead:Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioDataQueue:Ljava/util/Queue;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method private synthetic lambda$setCallback$3(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/camera/video/internal/audio/AudioStream;->setCallback(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Ljava/util/concurrent/Executor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$start$0()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/video/internal/audio/AudioStream;->start()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->startCollectingAudioData()V
    :try_end_0
    .catch Landroidx/camera/video/internal/audio/AudioStream$AudioStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v1
.end method

.method private synthetic lambda$stop$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsCollectingAudioData:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/camera/video/internal/audio/AudioStream;->stop()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_0
    iput-object v1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioDataNotFullyRead:Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioDataQueue:Ljava/util/Queue;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method private synthetic lambda$updateCollectionBufferSizeAsync$4(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->updateCollectionBufferSize(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private startCollectingAudioData()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsCollectingAudioData:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->collectAudioData()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private updateCollectionBufferSize(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mBufferSize:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mBytesPerFrame:I

    .line 7
    .line 8
    div-int/2addr p1, v1

    .line 9
    mul-int p1, p1, v1

    .line 10
    .line 11
    iput p1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mBufferSize:I

    .line 12
    .line 13
    const-string p1, "Update buffer size from "

    .line 14
    .line 15
    const-string v1, " to "

    .line 16
    .line 17
    invoke-static {v0, p1, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mBufferSize:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "BufferedAudioStream"

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private updateCollectionBufferSizeAsync(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mProducerExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L돨땲듔땳둘땩둣뎠뒋땩뒹뎰두뒤땔땨딌뎽듽땤땜뎽듸딤듸땦땵뎹돠땍뒷땻땋땋땄딐둡뎬뒵땐딄뎬뒀땧득땨돰될듸뒼땯땡땜땍듼듌듼딁뒤땧뒹땝뒾뒀땣뎹땱돳둥뒛된드뒐땤땀땃땯땄딤뎽땠뒨땍둘듬될뒵됩돨둡뒻딌둬둔딸돸듰뎸듼뎠됨들땟듨둠두땯딟딜돰듟돵딽뎡뒉듐딠땪듐땣돸땥돛든뒼땣땅딽뒘땧;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, L돨땲듔땳둘땩둣뎠뒋땩뒹뎰두뒤땔땨딌뎽듽땤땜뎽듸딤듸땦땵뎹돠땍뒷땻땋땋땄딐둡뎬뒵땐딄뎬뒀땧득땨돰될듸뒼땯땡땜땍듼듌듼딁뒤땧뒹땝뒾뒀땣뎹땱돳둥뒛된드뒐땤땀땃땯땄딤뎽땠뒨땍둘듬될뒵됩돨둡뒻딌둬둔딸돸듰뎸듼뎠됨들땟듨둠두땯딟딜돰듟돵딽뎡뒉듐딠땪듐땣돸땥돛든뒼땣땅딽뒘땧;-><init>(Ljava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/video/internal/audio/BufferedAudioStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->lambda$stop$1()V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/video/internal/audio/BufferedAudioStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->lambda$start$0()V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/video/internal/audio/BufferedAudioStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->lambda$release$2()V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/video/internal/audio/BufferedAudioStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->lambda$updateCollectionBufferSizeAsync$4(I)V

    return-void
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/video/internal/audio/BufferedAudioStream;Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->lambda$setCallback$3(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/video/internal/audio/BufferedAudioStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->collectAudioData()V

    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;
    .locals 5
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanThreadSleep"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->checkNotReleasedOrThrow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->checkStartedOrThrow()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, v0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->updateCollectionBufferSizeAsync(I)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v2, v0, v1}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->of(IJ)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    iget-object v1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v3, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioDataNotFullyRead:Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    iput-object v4, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioDataNotFullyRead:Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioDataQueue:Ljava/util/Queue;

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_4

    .line 42
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->read(Ljava/nio/ByteBuffer;)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v3}, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->getRemainingBufferSizeInBytes()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-lez v4, :cond_2

    .line 53
    .line 54
    iput-object v3, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mAudioDataNotFullyRead:Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;

    .line 55
    .line 56
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getSizeInBytes()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-gtz v1, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_3

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/4 v1, 0x0

    .line 82
    :goto_1
    if-eqz v1, :cond_4

    .line 83
    .line 84
    const-wide/16 v3, 0x1

    .line 85
    .line 86
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catch_0
    move-exception p1

    .line 91
    const-string v1, "BufferedAudioStream"

    .line 92
    .line 93
    const-string v2, "Interruption while waiting for audio data"

    .line 94
    .line 95
    invoke-static {v1, v2, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    :goto_2
    if-nez v1, :cond_0

    .line 100
    .line 101
    :goto_3
    return-object v0

    .line 102
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    throw p1
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mProducerExecutor:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    new-instance v1, L돨땬땤뒼뒈듰땵듽땀뎬딎둑듔돳뎠딁딀들된돶땲돶든딅돠땄딞듰뒨땱땯돵딻땀돵딨뒬돰뒤뎹딐땁디땥딹듬땻딝됫땥뎸듌둥딞땋딃두땲듔듸땝둥땔땥땪돴드땹땄듬땍뒐뒹땹땐뒋뒈돨딜땵딜딨땠땋됴딁돸땁될뒹뒨될뒨듨됩딤돨딃뎽땻돰땱디딁뒋딸뒙두딻들땭될든땮땅땡땵도땣돛둥듼될땡드뒉따뒷땣땥;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {v1, p0, v2}, L돨땬땤뒼뒈듰땵듽땀뎬딎둑듔돳뎠딁딀들된돶땲돶든딅돠땄딞듰뒨땱땯돵딻땀돵딨뒬돰뒤뎹딐땁디땥딹듬땻딝됫땥뎸듌둥딞땋딃두땲듔듸땝둥땔땥땪돴드땹땄듬땍뒐뒹땹땐뒋뒈돨딜땵딜딨땠땋됴딁돸땁될뒹뒨될뒨듨됩딤돨딃뎽땻돰땱디딁뒋딸뒙두딻들땭될든땮땅땡땵도땣돛둥듼될땡드뒉따뒷땣땥;-><init>(Landroidx/camera/video/internal/audio/BufferedAudioStream;I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setCallback(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1    # Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    const-string v2, "AudioStream can not be started when setCallback."

    .line 10
    .line 11
    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->checkNotReleasedOrThrow()V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :cond_1
    :goto_0
    const-string v0, "executor can\'t be null with non-null callback."

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mProducerExecutor:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    new-instance v1, L뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵;

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-direct {v1, p0, v2, p1, p2}, L뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->checkNotReleasedOrThrow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    .line 15
    .line 16
    new-instance v1, L돨땬땤뒼뒈듰땵듽땀뎬딎둑듔돳뎠딁딀들된돶땲돶든딅돠땄딞듰뒨땱땯돵딻땀돵딨뒬돰뒤뎹딐땁디땥딹듬땻딝됫땥뎸듌둥딞땋딃두땲듔듸땝둥땔땥땪돴드땹땄듬땍뒐뒹땹땐뒋뒈돨딜땵딜딨땠땋됴딁돸땁될뒹뒨될뒨듨됩딤돨딃뎽땻돰땱디딁뒋딸뒙두딻들땭될든땮땅땡땵도땣돛둥듼될땡드뒉따뒷땣땥;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v1, p0, v2}, L돨땬땤뒼뒈듰땵듽땀뎬딎둑듔돳뎠딁딀들된돶땲돶든딅돠땄딞듰뒨땱땯돵딻땀돵딨뒬돰뒤뎹딐땁디땥딹듬땻딝됫땥뎸듌둥딞땋딃두땲듔듸땝둥땔땥땪돴드땹땄듬땍뒐뒹땹땐뒋뒈돨딜땵딜딨땠땋됴딁돸땁될뒹뒨될뒨듨됩딤돨딃뎽땻돰땱디딁뒋딸뒙두딻들땭될든땮땅땡땵도땣돛둥듼될땡드뒉따뒷땣땥;-><init>(Landroidx/camera/video/internal/audio/BufferedAudioStream;I)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mProducerExecutor:Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    :goto_0
    iget-object v1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Landroidx/camera/video/internal/audio/AudioStream$AudioStreamException;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Landroidx/camera/video/internal/audio/AudioStream$AudioStreamException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v1
.end method

.method public stop()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->checkNotReleasedOrThrow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;->mProducerExecutor:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    new-instance v1, L돨땬땤뒼뒈듰땵듽땀뎬딎둑듔돳뎠딁딀들된돶땲돶든딅돠땄딞듰뒨땱땯돵딻땀돵딨뒬돰뒤뎹딐땁디땥딹듬땻딝됫땥뎸듌둥딞땋딃두땲듔듸땝둥땔땥땪돴드땹땄듬땍뒐뒹땹땐뒋뒈돨딜땵딜딨땠땋됴딁돸땁될뒹뒨될뒨듨됩딤돨딃뎽땻돰땱디딁뒋딸뒙두딻들땭될든땮땅땡땵도땣돛둥듼될땡드뒉따뒷땣땥;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p0, v2}, L돨땬땤뒼뒈듰땵듽땀뎬딎둑듔돳뎠딁딀들된돶땲돶든딅돠땄딞듰뒨땱땯돵딻땀돵딨뒬돰뒤뎹딐땁디땥딹듬땻딝됫땥뎸듌둥딞땋딃두땲듔듸땝둥땔땥땪돴드땹땄듬땍뒐뒹땹땐뒋뒈돨딜땵딜딨땠땋됴딁돸땁될뒹뒨될뒨듨됩딤돨딃뎽땻돰땱디딁뒋딸뒙두딻들땭될든땮땅땡땵도땣돛둥듼될땡드뒉따뒷땣땥;-><init>(Landroidx/camera/video/internal/audio/BufferedAudioStream;I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
