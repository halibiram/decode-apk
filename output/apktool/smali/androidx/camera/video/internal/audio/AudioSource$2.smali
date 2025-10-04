.class Landroidx/camera/video/internal/audio/AudioSource$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/internal/audio/AudioSource;->resetBufferProvider(Landroidx/camera/video/internal/BufferProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Landroidx/camera/video/internal/encoder/InputBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/video/internal/audio/AudioSource;

.field final synthetic val$bufferProvider:Landroidx/camera/video/internal/BufferProvider;


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/camera/video/internal/BufferProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->val$bufferProvider:Landroidx/camera/video/internal/BufferProvider;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProvider:Landroidx/camera/video/internal/BufferProvider;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->val$bufferProvider:Landroidx/camera/video/internal/BufferProvider;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "AudioSource"

    .line 11
    .line 12
    const-string v1, "Unable to get input buffer, the BufferProvider could be transitioning to INACTIVE state."

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/audio/AudioSource;->notifyError(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public onSuccess(Landroidx/camera/video/internal/encoder/InputBuffer;)V
    .locals 8

    .line 2
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    iget-boolean v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->mIsSendingAudio:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProvider:Landroidx/camera/video/internal/BufferProvider;

    iget-object v2, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->val$bufferProvider:Landroidx/camera/video/internal/BufferProvider;

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-boolean v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->mInSilentStartState:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioSource;->isStartRetryIntervalReached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioSource;->retryStartAudioStream()V

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioSource;->getCurrentAudioStream()Landroidx/camera/video/internal/audio/AudioStream;

    move-result-object v0

    .line 6
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/InputBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Landroidx/camera/video/internal/audio/AudioStream;->read(Ljava/nio/ByteBuffer;)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getSizeInBytes()I

    move-result v2

    if-lez v2, :cond_4

    .line 9
    iget-object v2, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    iget-boolean v3, v2, Landroidx/camera/video/internal/audio/AudioSource;->mMuted:Z

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getSizeInBytes()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroidx/camera/video/internal/audio/AudioSource;->overrideBySilence(Ljava/nio/ByteBuffer;I)V

    .line 11
    :cond_2
    iget-object v2, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    iget-object v2, v2, Landroidx/camera/video/internal/audio/AudioSource;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getTimestampNs()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    iget-wide v5, v4, Landroidx/camera/video/internal/audio/AudioSource;->mAmplitudeTimestamp:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0xc8

    cmp-long v7, v2, v5

    if-ltz v7, :cond_3

    .line 13
    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getTimestampNs()J

    move-result-wide v2

    iput-wide v2, v4, Landroidx/camera/video/internal/audio/AudioSource;->mAmplitudeTimestamp:J

    .line 14
    iget-object v2, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    invoke-virtual {v2, v1}, Landroidx/camera/video/internal/audio/AudioSource;->postMaxAmplitude(Ljava/nio/ByteBuffer;)V

    .line 15
    :cond_3
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getSizeInBytes()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 16
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getTimestampNs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    .line 18
    invoke-interface {p1, v0, v1}, Landroidx/camera/video/internal/encoder/InputBuffer;->setPresentationTimeUs(J)V

    .line 19
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/InputBuffer;->submit()Z

    goto :goto_0

    .line 20
    :cond_4
    const-string v0, "AudioSource"

    const-string v1, "Unable to read data from AudioStream."

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/InputBuffer;->cancel()Z

    .line 22
    :goto_0
    iget-object p1, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->this$0:Landroidx/camera/video/internal/audio/AudioSource;

    invoke-virtual {p1}, Landroidx/camera/video/internal/audio/AudioSource;->sendNextAudio()V

    return-void

    .line 23
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/InputBuffer;->cancel()Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/camera/video/internal/encoder/InputBuffer;

    invoke-virtual {p0, p1}, Landroidx/camera/video/internal/audio/AudioSource$2;->onSuccess(Landroidx/camera/video/internal/encoder/InputBuffer;)V

    return-void
.end method
