.class Landroidx/camera/video/Recorder$3;
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

.field final synthetic val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field final synthetic val$recordingToStart:Landroidx/camera/video/Recorder$RecordingRecord;


# direct methods
.method public constructor <init>(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/video/Recorder$3;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/camera/video/Recorder$3;->val$recordingToStart:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

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
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/camera/video/Recorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 4
    .line 5
    if-nez v1, :cond_7

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/camera/video/Recorder;->mInProgressRecordingStopping:Z

    .line 8
    .line 9
    const-string v2, "Recorder"

    .line 10
    .line 11
    if-nez v1, :cond_6

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->isKeyFrame()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    .line 35
    .line 36
    iput-object p1, v1, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/camera/video/Recorder;->isAudioEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    .line 45
    .line 46
    iget-object p1, p1, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    .line 47
    .line 48
    invoke-interface {p1}, Landroidx/camera/core/internal/utils/RingBuffer;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    if-eqz v0, :cond_2

    .line 56
    .line 57
    const-string p1, "Replaced cached video keyframe with newer keyframe."

    .line 58
    .line 59
    invoke-static {v2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const-string p1, "Cached video keyframe while we wait for first audio sample before starting muxer."

    .line 64
    .line 65
    invoke-static {v2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    :goto_1
    const-string p1, "Received video keyframe. Starting muxer..."

    .line 70
    .line 71
    invoke-static {v2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    .line 75
    .line 76
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->val$recordingToStart:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroidx/camera/video/Recorder;->setupAndStartMediaMuxer(Landroidx/camera/video/Recorder$RecordingRecord;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    if-eqz v0, :cond_5

    .line 83
    .line 84
    const-string v0, "Dropped cached keyframe since we have new video data and have not yet received audio data."

    .line 85
    .line 86
    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    const-string v0, "Dropped video data since muxer has not yet started and data is not a keyframe."

    .line 90
    .line 91
    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    .line 95
    .line 96
    iget-object v0, v0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 97
    .line 98
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/Encoder;->requestKeyFrame()V

    .line 99
    .line 100
    .line 101
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    const-string v0, "Drop video data since recording is stopping."

    .line 106
    .line 107
    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_7
    :try_start_0
    iget-object v1, p0, Landroidx/camera/video/Recorder$3;->val$recordingToStart:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 115
    .line 116
    invoke-virtual {v0, p1, v1}, Landroidx/camera/video/Recorder;->writeVideoData(Landroidx/camera/video/internal/encoder/EncodedData;Landroidx/camera/video/Recorder$RecordingRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    if-eqz p1, :cond_8

    .line 120
    .line 121
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    .line 122
    .line 123
    .line 124
    :cond_8
    :goto_2
    return-void

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    if-eqz p1, :cond_9

    .line 127
    .line 128
    :try_start_1
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :catchall_1
    move-exception p1

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :cond_9
    :goto_3
    throw v0
.end method

.method public onOutputConfigUpdate(Landroidx/camera/video/internal/encoder/OutputConfig;)V
    .locals 1
    .param p1    # Landroidx/camera/video/internal/encoder/OutputConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/camera/video/Recorder;->mVideoOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

    .line 4
    .line 5
    return-void
.end method
