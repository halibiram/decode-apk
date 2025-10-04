.class Landroidx/camera/video/Recorder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/EncoderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/Recorder;->updateEncoderCallbacks(Landroidx/camera/video/Recorder$RecordingRecord;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/video/Recorder;

.field final synthetic val$audioErrorConsumer:Landroidx/core/util/Consumer;

.field final synthetic val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field final synthetic val$recordingToStart:Landroidx/camera/video/Recorder$RecordingRecord;


# direct methods
.method public constructor <init>(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/core/util/Consumer;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/video/Recorder$5;->this$0:Landroidx/camera/video/Recorder;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/video/Recorder$5;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/camera/video/Recorder$5;->val$audioErrorConsumer:Landroidx/core/util/Consumer;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/camera/video/Recorder$5;->val$recordingToStart:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onEncodeError(Landroidx/camera/video/internal/encoder/EncodeException;)V
    .locals 1
    .param p1    # Landroidx/camera/video/internal/encoder/EncodeException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder$5;->this$0:Landroidx/camera/video/Recorder;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/video/Recorder;->mAudioErrorCause:Ljava/lang/Throwable;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/video/Recorder$5;->val$audioErrorConsumer:Landroidx/core/util/Consumer;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final synthetic onEncodePaused()V
    .locals 0

    .line 1
    invoke-static {p0}, L뒙땻됫듻딁둥뎡땱땹뎽뒵땍돰듽땁듼딐뒙뒈딐뒈뒐뎻땡돶둠뒨돷뎻듨돴땔뒘땝뒘뎨돸딻듰된땧땳땰딜딁땫뒀뎠뎹땵뎸뒷땐될듟뎽딀딟듨뒝뒀뒾딎따땧듟뒬땐땳듽땅뒵땥들뒝땣되돵됩땄땣땲듌딹도딨딅되둥돷돷돵뒀땻딃땜딄뎹뒈딨드되돼땭땤땥뒀딤뎻딽뒉돤땯듐따도딀딄딞듔돤돨땥딄딐뎡도뒙뎡땋;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/video/internal/encoder/EncoderCallback;)V

    return-void
.end method

.method public onEncodeStart()V
    .locals 0

    return-void
.end method

.method public onEncodeStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder$5;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onEncodedData(Landroidx/camera/video/internal/encoder/EncodedData;)V
    .locals 3
    .param p1    # Landroidx/camera/video/internal/encoder/EncodedData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder$5;->this$0:Landroidx/camera/video/Recorder;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/camera/video/Recorder;->mAudioState:Landroidx/camera/video/Recorder$AudioState;

    .line 4
    .line 5
    sget-object v2, Landroidx/camera/video/Recorder$AudioState;->DISABLED:Landroidx/camera/video/Recorder$AudioState;

    .line 6
    .line 7
    if-eq v1, v2, :cond_5

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/camera/video/Recorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    iget-boolean v1, v0, Landroidx/camera/video/Recorder;->mInProgressRecordingStopping:Z

    .line 14
    .line 15
    const-string v2, "Recorder"

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    .line 20
    .line 21
    new-instance v1, Landroidx/camera/video/internal/encoder/BufferCopiedEncodedData;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Landroidx/camera/video/internal/encoder/BufferCopiedEncodedData;-><init>(Landroidx/camera/video/internal/encoder/EncodedData;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Landroidx/camera/core/internal/utils/RingBuffer;->enqueue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/camera/video/Recorder$5;->this$0:Landroidx/camera/video/Recorder;

    .line 30
    .line 31
    iget-object v0, v0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const-string v0, "Received audio data. Starting muxer..."

    .line 36
    .line 37
    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/camera/video/Recorder$5;->this$0:Landroidx/camera/video/Recorder;

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/camera/video/Recorder$5;->val$recordingToStart:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroidx/camera/video/Recorder;->setupAndStartMediaMuxer(Landroidx/camera/video/Recorder$RecordingRecord;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v0, "Cached audio data while we wait for video keyframe before starting muxer."

    .line 49
    .line 50
    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v0, "Drop audio data since recording is stopping."

    .line 55
    .line 56
    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/camera/video/Recorder$5;->val$recordingToStart:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 64
    .line 65
    invoke-virtual {v0, p1, v1}, Landroidx/camera/video/Recorder;->writeAudioData(Landroidx/camera/video/internal/encoder/EncodedData;Landroidx/camera/video/Recorder$RecordingRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_1
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    :try_start_1
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_2
    throw v0

    .line 86
    :cond_5
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    .line 87
    .line 88
    .line 89
    new-instance p1, Ljava/lang/AssertionError;

    .line 90
    .line 91
    const-string v0, "Audio is not enabled but audio encoded data is being produced."

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public onOutputConfigUpdate(Landroidx/camera/video/internal/encoder/OutputConfig;)V
    .locals 1
    .param p1    # Landroidx/camera/video/internal/encoder/OutputConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder$5;->this$0:Landroidx/camera/video/Recorder;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/camera/video/Recorder;->mAudioOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

    .line 4
    .line 5
    return-void
.end method
