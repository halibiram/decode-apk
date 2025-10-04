.class public Landroidx/camera/video/internal/audio/SilentAudioStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/audio/AudioStream;


# static fields
.field private static final TAG:Ljava/lang/String; = "SilentAudioStream"


# instance fields
.field private mAudioStreamCallback:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mBytesPerFrame:I

.field private mCallbackExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentReadTimeNs:J

.field private final mIsReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSampleRate:I

.field private mZeroBytes:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/audio/AudioSettings;)V
    .locals 2
    .param p1    # Landroidx/camera/video/internal/audio/AudioSettings;
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
    iput-object v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mIsReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/camera/video/internal/audio/AudioSettings;->getBytesPerFrame()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mBytesPerFrame:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/camera/video/internal/audio/AudioSettings;->getSampleRate()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mSampleRate:I

    .line 30
    .line 31
    return-void
.end method

.method private static blockUntilSystemTimeReached(J)V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/camera/video/internal/audio/SilentAudioStream;->currentSystemTimeNs()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr p0, v0

    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p0, v0

    .line 9
    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string p1, "SilentAudioStream"

    .line 24
    .line 25
    const-string v0, "Ignore interruption"

    .line 26
    .line 27
    invoke-static {p1, v0, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method private checkNotReleasedOrThrow()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mIsReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method private static currentSystemTimeNs()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private static synthetic lambda$notifySilenced$0(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, v0}, Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;->onSilenceStateChanged(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private notifySilenced()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mAudioStreamCallback:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    invoke-direct {v2, v0, v3}, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private writeSilenceToBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gt p2, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mZeroBytes:[B

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    array-length v0, v0

    .line 19
    if-ge v0, p2, :cond_2

    .line 20
    .line 21
    :cond_1
    new-array v0, p2, [B

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mZeroBytes:[B

    .line 24
    .line 25
    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v2, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mZeroBytes:[B

    .line 30
    .line 31
    invoke-virtual {p1, v2, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    add-int/2addr p2, v0

    .line 36
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/video/internal/audio/SilentAudioStream;->lambda$notifySilenced$0(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;)V

    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;
    .locals 6
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/SilentAudioStream;->checkNotReleasedOrThrow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/SilentAudioStream;->checkStartedOrThrow()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-long v0, v0

    .line 12
    iget v2, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mBytesPerFrame:I

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroidx/camera/video/internal/audio/AudioUtils;->sizeToFrameCount(JI)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iget v2, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mBytesPerFrame:I

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Landroidx/camera/video/internal/audio/AudioUtils;->frameCountToSize(JI)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    long-to-int v3, v2

    .line 25
    if-gtz v3, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iget-wide v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mCurrentReadTimeNs:J

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->of(IJ)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_0
    iget v2, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mSampleRate:I

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Landroidx/camera/video/internal/audio/AudioUtils;->frameCountToDurationNs(JI)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-wide v4, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mCurrentReadTimeNs:J

    .line 42
    .line 43
    add-long/2addr v4, v0

    .line 44
    invoke-static {v4, v5}, Landroidx/camera/video/internal/audio/SilentAudioStream;->blockUntilSystemTimeReached(J)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1, v3}, Landroidx/camera/video/internal/audio/SilentAudioStream;->writeSilenceToBuffer(Ljava/nio/ByteBuffer;I)V

    .line 48
    .line 49
    .line 50
    iget-wide v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mCurrentReadTimeNs:J

    .line 51
    .line 52
    invoke-static {v3, v0, v1}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->of(IJ)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-wide v4, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mCurrentReadTimeNs:J

    .line 57
    .line 58
    return-object p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mIsReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
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
    iget-object v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/SilentAudioStream;->checkNotReleasedOrThrow()V

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
    iput-object p1, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mAudioStreamCallback:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    .line 29
    .line 30
    iput-object p2, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/SilentAudioStream;->checkNotReleasedOrThrow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    invoke-static {}, Landroidx/camera/video/internal/audio/SilentAudioStream;->currentSystemTimeNs()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mCurrentReadTimeNs:J

    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/SilentAudioStream;->notifySilenced()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/SilentAudioStream;->checkNotReleasedOrThrow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/video/internal/audio/SilentAudioStream;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
