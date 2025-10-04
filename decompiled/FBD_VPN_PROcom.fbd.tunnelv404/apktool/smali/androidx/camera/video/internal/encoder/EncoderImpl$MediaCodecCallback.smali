.class Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/encoder/EncoderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaCodecCallback"
.end annotation


# instance fields
.field private mHasEndData:Z

.field private mHasFirstData:Z

.field private mHasSendStartCallback:Z

.field private mIsKeyFrameRequired:Z

.field private mIsOutputBufferInPauseState:Z

.field private mLastPresentationTimeUs:J

.field private mLastSentAdjustedTimeUs:J

.field private mReachStopTimeAsEos:Z

.field private mStopped:Z

.field private final mVideoTimestampConverter:Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;)V
    .locals 5

    .line 1
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mReachStopTimeAsEos:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasSendStartCallback:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasFirstData:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasEndData:Z

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    iput-wide v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastPresentationTimeUs:J

    .line 19
    .line 20
    iput-wide v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastSentAdjustedTimeUs:J

    .line 21
    .line 22
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsOutputBufferInPauseState:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mStopped:Z

    .line 27
    .line 28
    iget-boolean v1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mIsVideoEncoder:Z

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    new-instance v1, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;

    .line 33
    .line 34
    iget-object v2, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

    .line 35
    .line 36
    iget-object v3, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mInputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 37
    .line 38
    const-class v4, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;

    .line 39
    .line 40
    invoke-static {v4}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;

    .line 45
    .line 46
    invoke-direct {v1, v2, v3, v4}, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;-><init>(Landroidx/camera/video/internal/encoder/TimeProvider;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mVideoTimestampConverter:Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mVideoTimestampConverter:Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;

    .line 54
    .line 55
    :goto_0
    const-class v1, Landroidx/camera/video/internal/compat/quirk/CodecStuckOnFlushQuirk;

    .line 56
    .line 57
    invoke-static {v1}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroidx/camera/video/internal/compat/quirk/CodecStuckOnFlushQuirk;

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-static {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->access$000(Landroidx/camera/video/internal/encoder/EncoderImpl;)Landroid/media/MediaFormat;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v2, "mime"

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1, p1}, Landroidx/camera/video/internal/compat/quirk/CodecStuckOnFlushQuirk;->isProblematicMimeType(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mReachStopTimeAsEos:Z

    .line 82
    .line 83
    :cond_1
    return-void
.end method

.method private checkBufferInfo(Landroid/media/MediaCodec$BufferInfo;)Z
    .locals 7
    .param p1    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasEndData:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "Drop buffer by already reach end of stream."

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 17
    .line 18
    if-gtz v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "Drop buffer by invalid buffer size."

    .line 25
    .line 26
    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 31
    .line 32
    and-int/lit8 v0, v0, 0x2

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "Drop buffer by codec config."

    .line 41
    .line 42
    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v1

    .line 46
    :cond_2
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mVideoTimestampConverter:Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 51
    .line 52
    invoke-virtual {v0, v2, v3}, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->convertToUptimeUs(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    iput-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 57
    .line 58
    :cond_3
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 59
    .line 60
    iget-wide v4, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastPresentationTimeUs:J

    .line 61
    .line 62
    cmp-long v0, v2, v4

    .line 63
    .line 64
    if-gtz v0, :cond_4

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 67
    .line 68
    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 69
    .line 70
    const-string v0, "Drop buffer by out of order buffer from MediaCodec."

    .line 71
    .line 72
    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    :cond_4
    iput-wide v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastPresentationTimeUs:J

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 79
    .line 80
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mStartStopTimeRangeUs:Landroid/util/Range;

    .line 81
    .line 82
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    const/4 v2, 0x1

    .line 91
    if-nez v0, :cond_7

    .line 92
    .line 93
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 94
    .line 95
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 96
    .line 97
    const-string v3, "Drop buffer by not in start-stop range."

    .line 98
    .line 99
    invoke-static {v0, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 103
    .line 104
    iget-boolean v3, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mPendingCodecStop:Z

    .line 105
    .line 106
    if-eqz v3, :cond_6

    .line 107
    .line 108
    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 109
    .line 110
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mStartStopTimeRangeUs:Landroid/util/Range;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/lang/Long;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 119
    .line 120
    .line 121
    move-result-wide v5

    .line 122
    cmp-long v0, v3, v5

    .line 123
    .line 124
    if-ltz v0, :cond_6

    .line 125
    .line 126
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 127
    .line 128
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mStopTimeoutFuture:Ljava/util/concurrent/Future;

    .line 129
    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 136
    .line 137
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 138
    .line 139
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iput-object p1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mLastDataStopTimestamp:Ljava/lang/Long;

    .line 144
    .line 145
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 146
    .line 147
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->signalCodecStop()V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 151
    .line 152
    iput-boolean v1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mPendingCodecStop:Z

    .line 153
    .line 154
    :cond_6
    return v1

    .line 155
    :cond_7
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->updatePauseRangeStateAndCheckIfBufferPaused(Landroid/media/MediaCodec$BufferInfo;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 162
    .line 163
    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 164
    .line 165
    const-string v0, "Drop buffer by pause."

    .line 166
    .line 167
    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return v1

    .line 171
    :cond_8
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 172
    .line 173
    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->getAdjustedTimeUs(Landroid/media/MediaCodec$BufferInfo;)J

    .line 174
    .line 175
    .line 176
    move-result-wide v3

    .line 177
    iget-wide v5, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastSentAdjustedTimeUs:J

    .line 178
    .line 179
    cmp-long v0, v3, v5

    .line 180
    .line 181
    if-gtz v0, :cond_a

    .line 182
    .line 183
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 184
    .line 185
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 186
    .line 187
    const-string v3, "Drop buffer by adjusted time is less than the last sent time."

    .line 188
    .line 189
    invoke-static {v0, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 193
    .line 194
    iget-boolean v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mIsVideoEncoder:Z

    .line 195
    .line 196
    if-eqz v0, :cond_9

    .line 197
    .line 198
    invoke-static {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->isKeyFrame(Landroid/media/MediaCodec$BufferInfo;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_9

    .line 203
    .line 204
    iput-boolean v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    .line 205
    .line 206
    :cond_9
    return v1

    .line 207
    :cond_a
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasFirstData:Z

    .line 208
    .line 209
    if-nez v0, :cond_b

    .line 210
    .line 211
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    .line 212
    .line 213
    if-nez v0, :cond_b

    .line 214
    .line 215
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 216
    .line 217
    iget-boolean v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mIsVideoEncoder:Z

    .line 218
    .line 219
    if-eqz v0, :cond_b

    .line 220
    .line 221
    iput-boolean v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    .line 222
    .line 223
    :cond_b
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    .line 224
    .line 225
    if-eqz v0, :cond_d

    .line 226
    .line 227
    invoke-static {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->isKeyFrame(Landroid/media/MediaCodec$BufferInfo;)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-nez p1, :cond_c

    .line 232
    .line 233
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 234
    .line 235
    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 236
    .line 237
    const-string v0, "Drop buffer by not a key frame."

    .line 238
    .line 239
    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 243
    .line 244
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->requestKeyFrameToMediaCodec()V

    .line 245
    .line 246
    .line 247
    return v1

    .line 248
    :cond_c
    iput-boolean v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    .line 249
    .line 250
    :cond_d
    return v2
.end method

.method private isEndOfStream(Landroid/media/MediaCodec$BufferInfo;)Z
    .locals 1
    .param p1    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->hasEndOfStreamFlag(Landroid/media/MediaCodec$BufferInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mReachStopTimeAsEos:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->isEosSignalledAndStopTimeReached(Landroid/media/MediaCodec$BufferInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method private isEosSignalledAndStopTimeReached(Landroid/media/MediaCodec$BufferInfo;)Z
    .locals 5
    .param p1    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mMediaCodecEosSignalled:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 8
    .line 9
    iget-object p1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mStartStopTimeRangeUs:Landroid/util/Range;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Long;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    cmp-long p1, v1, v3

    .line 22
    .line 23
    if-lez p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method private synthetic lambda$onError$4(Landroid/media/MediaCodec$CodecException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Unknown state: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->handleEncodeError(Landroid/media/MediaCodec$CodecException;)V

    .line 39
    .line 40
    .line 41
    :pswitch_1
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic lambda$onInputBufferAvailable$0(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mStopped:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "Receives input frame after codec is reset."

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Unknown state: "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 51
    .line 52
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mFreeInputBufferIndexQueue:Ljava/util/Queue;

    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->matchAcquisitionsAndFreeBufferIndexes()V

    .line 64
    .line 65
    .line 66
    :pswitch_1
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic lambda$onOutputBufferAvailable$1(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mStopped:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 8
    .line 9
    const-string p2, "Receives frame after codec is reset."

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p3, "Unknown state: "

    .line 31
    .line 32
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 36
    .line 37
    iget-object p3, p3, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 38
    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 51
    .line 52
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mLock:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 56
    .line 57
    iget-object v2, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallback:Landroidx/camera/video/internal/encoder/EncoderCallback;

    .line 58
    .line 59
    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 60
    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasSendStartCallback:Z

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    iput-boolean v3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasSendStartCallback:Z

    .line 68
    .line 69
    :try_start_1
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    new-instance v0, L뒛딻따둔땭듰뎬땜따듬들듻둣돴돵뒤땝돷들뒙듻땡뎽땅뎡땤땩도땁듬둣뎡둘땳듨딠딎뒈땹땩뒋땟땸드땦땋됐득땱땦뎬둑뒘돳둑디땫땀땐듸돴듐땭돨뒘뒐땄뎠뎨돠딝딹땸둠땝딟땃땀됫딅땮뎸땩뎠듼따뒤딎뒉뒬듽들땠땠땃돶땄땁뒬딃땸도딀땥뒘땰듰땪땭둔땵돠딤돸땄땸땳들돸듔뎡됴돝됫땥땅듔딝뎻땻;

    .line 73
    .line 74
    const/4 v4, 0x1

    .line 75
    invoke-direct {v0, v2, v4}, L뒛딻따둔땭듰뎬땜따듬들듻둣돴돵뒤땝돷들뒙듻땡뎽땅뎡땤땩도땁듬둣뎡둘땳듨딠딎뒈땹땩뒋땟땸드땦땋됐득땱땦뎬둑뒘돳둑디땫땀땐듸돴듐땭돨뒘뒐땄뎠뎨돠딝딹땸둠땝딟땃땀됫딅땮뎸땩뎠듼따뒤딎뒉뒬듽들땠땠땃돶땄땁뒬딃땸도딀땥뒘땰듰땪땭둔땵돠딤돸땄땸땳들돸듔뎡됴돝됫땥땅듔딝뎻땻;-><init>(Landroidx/camera/video/internal/encoder/EncoderCallback;I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    iget-object v4, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 84
    .line 85
    iget-object v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 86
    .line 87
    const-string v5, "Unable to post to the supplied executor."

    .line 88
    .line 89
    invoke-static {v4, v5, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->checkBufferInfo(Landroid/media/MediaCodec$BufferInfo;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasFirstData:Z

    .line 99
    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    iput-boolean v3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasFirstData:Z

    .line 103
    .line 104
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 105
    .line 106
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 107
    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v4, "data timestampUs = "

    .line 111
    .line 112
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-wide v4, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 116
    .line 117
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v4, ", data timebase = "

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v4, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 126
    .line 127
    iget-object v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->mInputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v4, ", current system uptimeMs = "

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 138
    .line 139
    .line 140
    move-result-wide v4

    .line 141
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v4, ", current system realtimeMs = "

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 150
    .line 151
    .line 152
    move-result-wide v4

    .line 153
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-static {v0, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_2
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->resolveOutputBufferInfo(Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaCodec$BufferInfo;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 168
    .line 169
    iput-wide v3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastSentAdjustedTimeUs:J

    .line 170
    .line 171
    :try_start_2
    new-instance v3, Landroidx/camera/video/internal/encoder/EncodedDataImpl;

    .line 172
    .line 173
    invoke-direct {v3, p2, p3, v0}, Landroidx/camera/video/internal/encoder/EncodedDataImpl;-><init>(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {p0, v3, v2, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->sendEncodedData(Landroidx/camera/video/internal/encoder/EncodedDataImpl;Landroidx/camera/video/internal/encoder/EncoderCallback;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :catch_1
    move-exception p1

    .line 181
    iget-object p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 182
    .line 183
    invoke-virtual {p2, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->handleEncodeError(Landroid/media/MediaCodec$CodecException;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_3
    :try_start_3
    iget-object p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 188
    .line 189
    iget-object p2, p2, Landroidx/camera/video/internal/encoder/EncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    .line 190
    .line 191
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p2, p3, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_3
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_3 .. :try_end_3} :catch_2

    .line 193
    .line 194
    .line 195
    :goto_1
    iget-boolean p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasEndData:Z

    .line 196
    .line 197
    if-nez p2, :cond_4

    .line 198
    .line 199
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->isEndOfStream(Landroid/media/MediaCodec$BufferInfo;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_4

    .line 204
    .line 205
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->reachEndData()V

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :catch_2
    move-exception p1

    .line 210
    iget-object p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 211
    .line 212
    invoke-virtual {p2, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->handleEncodeError(Landroid/media/MediaCodec$CodecException;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :catchall_0
    move-exception p1

    .line 217
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    throw p1

    .line 219
    :cond_4
    :goto_2
    :pswitch_1
    return-void

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static synthetic lambda$onOutputFormatChanged$5(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$onOutputFormatChanged$6(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroid/media/MediaFormat;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/video/internal/encoder/뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/camera/video/internal/encoder/뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/camera/video/internal/encoder/EncoderCallback;->onOutputConfigUpdate(Landroidx/camera/video/internal/encoder/OutputConfig;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$onOutputFormatChanged$7(Landroid/media/MediaFormat;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mStopped:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "Receives onOutputFormatChanged after codec is reset."

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Unknown state: "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 51
    .line 52
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mLock:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 56
    .line 57
    iget-object v2, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallback:Landroidx/camera/video/internal/encoder/EncoderCallback;

    .line 58
    .line 59
    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 60
    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    new-instance v0, Landroidx/camera/video/internal/encoder/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 63
    .line 64
    const/4 v3, 0x7

    .line 65
    invoke-direct {v0, v2, p1, v3}, Landroidx/camera/video/internal/encoder/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 74
    .line 75
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 76
    .line 77
    const-string v1, "Unable to post to the supplied executor."

    .line 78
    .line 79
    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw p1

    .line 86
    :goto_0
    :pswitch_1
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic lambda$reachEndData$2(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 4
    .line 5
    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->ERROR:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    new-instance v0, L뒛딻따둔땭듰뎬땜따듬들듻둣돴돵뒤땝돷들뒙듻땡뎽땅뎡땤땩도땁듬둣뎡둘땳듨딠딎뒈땹땩뒋땟땸드땦땋됐득땱땦뎬둑뒘돳둑디땫땀땐듸돴듐땭돨뒘뒐땄뎠뎨돠딝딹땸둠땝딟땃땀됫딅땮뎸땩뎠듼따뒤딎뒉뒬듽들땠땠땃돶땄땁뒬딃땸도딀땥뒘땰듰땪땭둔땵돠딤돸땄땸땳들돸듔뎡됴돝됫땥땅듔딝뎻땻;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p2, v1}, L뒛딻따둔땭듰뎬땜따듬들듻둣돴돵뒤땝돷들뒙듻땡뎽땅뎡땤땩도땁듬둣뎡둘땳듨딠딎뒈땹땩뒋땟땸드땦땋됐득땱땦뎬둑뒘돳둑디땫땀땐듸돴듐땭돨뒘뒐땄뎠뎨돠딝딹땸둠땝딟땃땀됫딅땮뎸땩뎠듼따뒤딎뒉뒬듽들땠땠땃돶땄땁뒬딃땸도딀땥뒘땰듰땪땭둔땵돠딤돸땄땸땳들돸듔뎡됴돝됫땥땅듔딝뎻땻;-><init>(Landroidx/camera/video/internal/encoder/EncoderCallback;I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    iget-object p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 25
    .line 26
    iget-object p2, p2, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "Unable to post to the supplied executor."

    .line 29
    .line 30
    invoke-static {p2, v0, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method private static synthetic lambda$sendEncodedData$3(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroidx/camera/video/internal/encoder/EncodedDataImpl;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderCallback;->onEncodedData(Landroidx/camera/video/internal/encoder/EncodedData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private resolveOutputBufferInfo(Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaCodec$BufferInfo;
    .locals 7
    .param p1    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->getAdjustedTimeUs(Landroid/media/MediaCodec$BufferInfo;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v4

    .line 7
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 8
    .line 9
    cmp-long v2, v0, v4

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-wide v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastSentAdjustedTimeUs:J

    .line 15
    .line 16
    cmp-long v2, v4, v0

    .line 17
    .line 18
    if-lez v2, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 29
    .line 30
    .line 31
    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 32
    .line 33
    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 34
    .line 35
    iget v6, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 36
    .line 37
    move-object v1, v0

    .line 38
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method private sendEncodedData(Landroidx/camera/video/internal/encoder/EncodedDataImpl;Landroidx/camera/video/internal/encoder/EncoderCallback;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1    # Landroidx/camera/video/internal/encoder/EncodedDataImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/internal/encoder/EncoderCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncodedDataSet:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->getClosedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$1;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$1;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroidx/camera/video/internal/encoder/EncodedDataImpl;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderExecutor:Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    new-instance v0, Landroidx/camera/video/internal/encoder/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 25
    .line 26
    const/4 v1, 0x6

    .line 27
    invoke-direct {v0, p2, p1, v1}, Landroidx/camera/video/internal/encoder/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p2

    .line 35
    iget-object p3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 36
    .line 37
    iget-object p3, p3, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "Unable to post to the supplied executor."

    .line 40
    .line 41
    invoke-static {p3, v0, p2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->close()V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method private updatePauseRangeStateAndCheckIfBufferPaused(Landroid/media/MediaCodec$BufferInfo;)Z
    .locals 6
    .param p1    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 2
    .line 3
    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl;->updateTotalPausedDuration(J)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 9
    .line 10
    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl;->isInPauseRange(J)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-boolean v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsOutputBufferInPauseState:Z

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-nez v1, :cond_5

    .line 21
    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "Switch to pause state"

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-boolean v3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsOutputBufferInPauseState:Z

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 36
    .line 37
    iget-object v4, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v4

    .line 40
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 41
    .line 42
    iget-object v1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallback:Landroidx/camera/video/internal/encoder/EncoderCallback;

    .line 45
    .line 46
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    new-instance v4, L뒛딻따둔땭듰뎬땜따듬들듻둣돴돵뒤땝돷들뒙듻땡뎽땅뎡땤땩도땁듬둣뎡둘땳듨딠딎뒈땹땩뒋땟땸드땦땋됐득땱땦뎬둑뒘돳둑디땫땀땐듸돴듐땭돨뒘뒐땄뎠뎨돠딝딹땸둠땝딟땃땀됫딅땮뎸땩뎠듼따뒤딎뒉뒬듽들땠땠땃돶땄땁뒬딃땸도딀땥뒘땰듰땪땭둔땵돠딤돸땄땸땳들돸듔뎡됴돝됫땥땅듔딝뎻땻;

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    invoke-direct {v4, v0, v5}, L뒛딻따둔땭듰뎬땜따듬들듻둣돴돵뒤땝돷들뒙듻땡뎽땅뎡땤땩도땁듬둣뎡둘땳듨딠딎뒈땹땩뒋땟땸드땦땋됐득땱땦뎬둑뒘돳둑디땫땀땐듸돴듐땭돨뒘뒐땄뎠뎨돠딝딹땸둠땝딟땃땀됫딅땮뎸땩뎠듼따뒤딎뒉뒬듽들땠땠땃돶땄땁뒬딃땸도딀땥뒘땰듰땪땭둔땵돠딤돸땄땸땳들돸듔뎡됴돝됫땥땅듔딝뎻땻;-><init>(Landroidx/camera/video/internal/encoder/EncoderCallback;I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 60
    .line 61
    iget-object v1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 62
    .line 63
    sget-object v4, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PAUSED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 64
    .line 65
    if-ne v1, v4, :cond_3

    .line 66
    .line 67
    iget-boolean v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mIsVideoEncoder:Z

    .line 68
    .line 69
    if-nez v0, :cond_0

    .line 70
    .line 71
    const-class v0, Landroidx/camera/video/internal/compat/quirk/AudioEncoderIgnoresInputTimestampQuirk;

    .line 72
    .line 73
    invoke-static {v0}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 81
    .line 82
    iget-boolean v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mIsVideoEncoder:Z

    .line 83
    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    const-class v0, Landroidx/camera/video/internal/compat/quirk/VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk;

    .line 87
    .line 88
    invoke-static {v0}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 96
    .line 97
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderInput:Landroidx/camera/video/internal/encoder/Encoder$EncoderInput;

    .line 98
    .line 99
    instance-of v1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;

    .line 100
    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    check-cast v0, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;->setActive(Z)V

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Landroidx/camera/video/internal/encoder/EncoderImpl;->setMediaCodecPaused(Z)V

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 114
    .line 115
    iget-wide v4, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 116
    .line 117
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mLastDataStopTimestamp:Ljava/lang/Long;

    .line 122
    .line 123
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 124
    .line 125
    iget-boolean v0, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mPendingCodecStop:Z

    .line 126
    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mStopTimeoutFuture:Ljava/util/concurrent/Future;

    .line 130
    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    invoke-interface {p1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 134
    .line 135
    .line 136
    :cond_4
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->signalCodecStop()V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 142
    .line 143
    iput-boolean v2, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mPendingCodecStop:Z

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catchall_0
    move-exception p1

    .line 147
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    throw p1

    .line 149
    :cond_5
    if-eqz v1, :cond_6

    .line 150
    .line 151
    if-nez v0, :cond_6

    .line 152
    .line 153
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 154
    .line 155
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    .line 156
    .line 157
    const-string v1, "Switch to resume state"

    .line 158
    .line 159
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iput-boolean v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsOutputBufferInPauseState:Z

    .line 163
    .line 164
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 165
    .line 166
    iget-boolean v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mIsVideoEncoder:Z

    .line 167
    .line 168
    if-eqz v0, :cond_6

    .line 169
    .line 170
    invoke-static {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->isKeyFrame(Landroid/media/MediaCodec$BufferInfo;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-nez p1, :cond_6

    .line 175
    .line 176
    iput-boolean v3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    .line 177
    .line 178
    :cond_6
    :goto_1
    iget-boolean p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsOutputBufferInPauseState:Z

    .line 179
    .line 180
    return p1
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$onOutputFormatChanged$5(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$reachEndData$2(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderCallback;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroidx/camera/video/internal/encoder/EncodedDataImpl;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$sendEncodedData$3(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroidx/camera/video/internal/encoder/EncodedDataImpl;)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$onOutputFormatChanged$6(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroid/media/MediaFormat;)V

    return-void
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$onOutputBufferAvailable$1(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V

    return-void
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$onOutputFormatChanged$7(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$onInputBufferAvailable$0(I)V

    return-void
.end method

.method public static synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$onError$4(Landroid/media/MediaCodec$CodecException;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaCodec$CodecException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v0, Landroidx/camera/video/internal/encoder/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-direct {v0, p0, p2, v1}, Landroidx/camera/video/internal/encoder/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v0, Landroidx/camera/video/internal/encoder/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;

    .line 6
    .line 7
    invoke-direct {v0, p0, p2}, Landroidx/camera/video/internal/encoder/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v1, Landroidx/camera/video/internal/encoder/뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;

    .line 6
    .line 7
    invoke-direct {v1, p0, p3, p1, p2}, Landroidx/camera/video/internal/encoder/뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v0, Landroidx/camera/video/internal/encoder/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-direct {v0, p0, p2, v1}, Landroidx/camera/video/internal/encoder/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public reachEndData()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasEndData:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasEndData:Z

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->access$100(Landroidx/camera/video/internal/encoder/EncoderImpl;)Ljava/util/concurrent/Future;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->access$100(Landroidx/camera/video/internal/encoder/EncoderImpl;)Ljava/util/concurrent/Future;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->access$102(Landroidx/camera/video/internal/encoder/EncoderImpl;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 39
    .line 40
    iget-object v2, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallback:Landroidx/camera/video/internal/encoder/EncoderCallback;

    .line 41
    .line 42
    iget-object v3, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    new-instance v0, Landroidx/camera/video/internal/encoder/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;

    .line 46
    .line 47
    invoke-direct {v0, p0, v3, v2}, Landroidx/camera/video/internal/encoder/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderCallback;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->stopMediaCodec(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw v1
.end method

.method public stop()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mStopped:Z

    .line 3
    .line 4
    return-void
.end method
