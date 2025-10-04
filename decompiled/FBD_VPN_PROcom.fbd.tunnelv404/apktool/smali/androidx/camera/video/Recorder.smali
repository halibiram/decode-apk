.class public final Landroidx/camera/video/Recorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/VideoOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/Recorder$State;,
        Landroidx/camera/video/Recorder$RecordingRecord;,
        Landroidx/camera/video/Recorder$AudioState;,
        Landroidx/camera/video/Recorder$SetupVideoTask;,
        Landroidx/camera/video/Recorder$Builder;
    }
.end annotation


# static fields
.field private static final AUDIO_CACHE_SIZE:I = 0x3c

.field private static final AUDIO_EXECUTOR:Ljava/util/concurrent/Executor;

.field static final DEFAULT_ENCODER_FACTORY:Landroidx/camera/video/internal/encoder/EncoderFactory;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_QUALITY_SELECTOR:Landroidx/camera/video/QualitySelector;

.field private static final MEDIA_COLUMN:Ljava/lang/String; = "_data"

.field private static final MEDIA_SPEC_DEFAULT:Landroidx/camera/video/MediaSpec;

.field private static final NOT_PENDING:I = 0x0

.field private static final PENDING:I = 0x1

.field private static final PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE:Ljava/lang/Exception;

.field private static final PENDING_STATES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/video/Recorder$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final RETRY_SETUP_VIDEO_DELAY_MS:J = 0x3e8L

.field private static final RETRY_SETUP_VIDEO_MAX_COUNT:I = 0x3

.field private static final SOURCE_NON_STREAMING_TIMEOUT_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "Recorder"

.field private static final VALID_NON_PENDING_STATES_WHILE_PENDING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/video/Recorder$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_CAPABILITIES_SOURCE_CAMCORDER_PROFILE:I = 0x0

.field public static final VIDEO_CAPABILITIES_SOURCE_CODEC_CAPABILITIES:I = 0x1

.field private static final VIDEO_SPEC_DEFAULT:Landroidx/camera/video/VideoSpec;

.field static sRetrySetupVideoDelayMs:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static sRetrySetupVideoMaxCount:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mActiveSurface:Landroid/view/Surface;

.field mAudioAmplitude:D

.field mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

.field private final mAudioEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

.field mAudioErrorCause:Ljava/lang/Throwable;

.field mAudioOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

.field mAudioSource:Landroidx/camera/video/internal/audio/AudioSource;

.field mAudioState:Landroidx/camera/video/Recorder$AudioState;

.field mAudioTrackIndex:Ljava/lang/Integer;

.field mDurationLimitNs:J

.field private final mEncoderNotUsePersistentInputSurface:Z

.field final mEncodingFutures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mFileSizeLimitInBytes:J

.field mFirstRecordingAudioDataTimeUs:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mFirstRecordingVideoBitrate:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mFirstRecordingVideoDataTimeUs:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

.field mInProgressRecordingStopping:Z

.field private mInProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mIsAudioSourceSilenced:Z

.field private final mIsRecording:Landroidx/camera/core/impl/MutableStateObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/MutableStateObservable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastGeneratedRecordingId:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mLatestSurface:Landroid/view/Surface;

.field mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

.field private final mLock:Ljava/lang/Object;

.field mMediaMuxer:Landroid/media/MediaMuxer;

.field final mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/MutableStateObservable<",
            "Landroidx/camera/video/MediaSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsResetBeforeNextStart:Z

.field private mNonPendingState:Landroidx/camera/video/Recorder$State;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mOutputUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/internal/utils/RingBuffer<",
            "Landroidx/camera/video/internal/encoder/EncodedData;",
            ">;"
        }
    .end annotation
.end field

.field mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

.field mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mPreviousRecordingAudioDataTimeUs:J

.field mPreviousRecordingVideoDataTimeUs:J

.field mRecordingBytes:J

.field mRecordingDurationNs:J

.field mRecordingStopError:I

.field mRecordingStopErrorCause:Ljava/lang/Throwable;

.field private mResolvedEncoderProfiles:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

.field final mSequentialExecutor:Ljava/util/concurrent/Executor;

.field private mSetupVideoTask:Landroidx/camera/video/Recorder$SetupVideoTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mShouldSendResumeEvent:Z

.field mSourceNonStreamingTimeout:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

.field private mSourceTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mState:Landroidx/camera/video/Recorder$State;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mStreamId:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mStreamInfo:Landroidx/camera/core/impl/MutableStateObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/MutableStateObservable<",
            "Landroidx/camera/video/StreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserProvidedExecutor:Ljava/util/concurrent/Executor;

.field private final mVideoCapabilitiesSource:I

.field mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

.field mVideoEncoderBitrateRange:Landroid/util/Range;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

.field mVideoEncoderSession:Landroidx/camera/video/VideoEncoderSession;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mVideoEncoderSessionToRelease:Landroidx/camera/video/VideoEncoderSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mVideoOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

.field mVideoSourceTimebase:Landroidx/camera/core/impl/Timebase;

.field mVideoTrackIndex:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/video/Recorder$State;->PENDING_PAUSED:Landroidx/camera/video/Recorder$State;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Landroidx/camera/video/Recorder;->PENDING_STATES:Ljava/util/Set;

    .line 14
    .line 15
    sget-object v0, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    .line 16
    .line 17
    sget-object v1, Landroidx/camera/video/Recorder$State;->IDLING:Landroidx/camera/video/Recorder$State;

    .line 18
    .line 19
    sget-object v2, Landroidx/camera/video/Recorder$State;->RESETTING:Landroidx/camera/video/Recorder$State;

    .line 20
    .line 21
    sget-object v3, Landroidx/camera/video/Recorder$State;->STOPPING:Landroidx/camera/video/Recorder$State;

    .line 22
    .line 23
    sget-object v4, Landroidx/camera/video/Recorder$State;->ERROR:Landroidx/camera/video/Recorder$State;

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/camera/video/Recorder;->VALID_NON_PENDING_STATES_WHILE_PENDING:Ljava/util/Set;

    .line 34
    .line 35
    sget-object v0, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    new-array v2, v1, [Landroidx/camera/video/Quality;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    aput-object v0, v2, v3

    .line 42
    .line 43
    sget-object v3, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    aput-object v3, v2, v4

    .line 47
    .line 48
    sget-object v3, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    aput-object v3, v2, v4

    .line 52
    .line 53
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v0}, Landroidx/camera/video/FallbackStrategy;->higherQualityOrLowerThan(Landroidx/camera/video/Quality;)Landroidx/camera/video/FallbackStrategy;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v2, v0}, Landroidx/camera/video/QualitySelector;->fromOrderedList(Ljava/util/List;Landroidx/camera/video/FallbackStrategy;)Landroidx/camera/video/QualitySelector;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Landroidx/camera/video/Recorder;->DEFAULT_QUALITY_SELECTOR:Landroidx/camera/video/QualitySelector;

    .line 66
    .line 67
    invoke-static {}, Landroidx/camera/video/VideoSpec;->builder()Landroidx/camera/video/VideoSpec$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2, v0}, Landroidx/camera/video/VideoSpec$Builder;->setQualitySelector(Landroidx/camera/video/QualitySelector;)Landroidx/camera/video/VideoSpec$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v2, -0x1

    .line 76
    invoke-virtual {v0, v2}, Landroidx/camera/video/VideoSpec$Builder;->setAspectRatio(I)Landroidx/camera/video/VideoSpec$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec$Builder;->build()Landroidx/camera/video/VideoSpec;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Landroidx/camera/video/Recorder;->VIDEO_SPEC_DEFAULT:Landroidx/camera/video/VideoSpec;

    .line 85
    .line 86
    invoke-static {}, Landroidx/camera/video/MediaSpec;->builder()Landroidx/camera/video/MediaSpec$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3, v2}, Landroidx/camera/video/MediaSpec$Builder;->setOutputFormat(I)Landroidx/camera/video/MediaSpec$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2, v0}, Landroidx/camera/video/MediaSpec$Builder;->setVideoSpec(Landroidx/camera/video/VideoSpec;)Landroidx/camera/video/MediaSpec$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec$Builder;->build()Landroidx/camera/video/MediaSpec;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Landroidx/camera/video/Recorder;->MEDIA_SPEC_DEFAULT:Landroidx/camera/video/MediaSpec;

    .line 103
    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    .line 105
    .line 106
    const-string v2, "The video frame producer became inactive before any data was received."

    .line 107
    .line 108
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sput-object v0, Landroidx/camera/video/Recorder;->PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE:Ljava/lang/Exception;

    .line 112
    .line 113
    new-instance v0, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;

    .line 114
    .line 115
    const/16 v2, 0x16

    .line 116
    .line 117
    invoke-direct {v0, v2}, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;-><init>(I)V

    .line 118
    .line 119
    .line 120
    sput-object v0, Landroidx/camera/video/Recorder;->DEFAULT_ENCODER_FACTORY:Landroidx/camera/video/internal/encoder/EncoderFactory;

    .line 121
    .line 122
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Landroidx/camera/video/Recorder;->AUDIO_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 131
    .line 132
    sput v1, Landroidx/camera/video/Recorder;->sRetrySetupVideoMaxCount:I

    .line 133
    .line 134
    const-wide/16 v0, 0x3e8

    .line 135
    .line 136
    sput-wide v0, Landroidx/camera/video/Recorder;->sRetrySetupVideoDelayMs:J

    .line 137
    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/camera/video/MediaSpec;ILandroidx/camera/video/internal/encoder/EncoderFactory;Landroidx/camera/video/internal/encoder/EncoderFactory;)V
    .locals 7
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/MediaSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/video/internal/encoder/EncoderFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/video/internal/encoder/EncoderFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const-class v0, Landroidx/camera/video/internal/compat/quirk/EncoderNotUsePersistentInputSurfaceQuirk;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    iput-boolean v0, p0, Landroidx/camera/video/Recorder;->mEncoderNotUsePersistentInputSurface:Z

    .line 25
    .line 26
    sget-object v0, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    .line 32
    .line 33
    iput v2, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 36
    .line 37
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mLastGeneratedRecordingId:J

    .line 42
    .line 43
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 44
    .line 45
    iput-boolean v2, p0, Landroidx/camera/video/Recorder;->mInProgressRecordingStopping:Z

    .line 46
    .line 47
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 48
    .line 49
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mSourceTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 50
    .line 51
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mResolvedEncoderProfiles:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 52
    .line 53
    new-instance v5, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v5, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    .line 59
    .line 60
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioTrackIndex:Ljava/lang/Integer;

    .line 61
    .line 62
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoTrackIndex:Ljava/lang/Integer;

    .line 63
    .line 64
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurface:Landroid/view/Surface;

    .line 65
    .line 66
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mActiveSurface:Landroid/view/Surface;

    .line 67
    .line 68
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 69
    .line 70
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioSource:Landroidx/camera/video/internal/audio/AudioSource;

    .line 71
    .line 72
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 73
    .line 74
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

    .line 75
    .line 76
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 77
    .line 78
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

    .line 79
    .line 80
    sget-object v5, Landroidx/camera/video/Recorder$AudioState;->INITIALIZING:Landroidx/camera/video/Recorder$AudioState;

    .line 81
    .line 82
    iput-object v5, p0, Landroidx/camera/video/Recorder;->mAudioState:Landroidx/camera/video/Recorder$AudioState;

    .line 83
    .line 84
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 85
    .line 86
    iput-object v5, p0, Landroidx/camera/video/Recorder;->mOutputUri:Landroid/net/Uri;

    .line 87
    .line 88
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mRecordingBytes:J

    .line 89
    .line 90
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mRecordingDurationNs:J

    .line 91
    .line 92
    const-wide v5, 0x7fffffffffffffffL

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    iput-wide v5, p0, Landroidx/camera/video/Recorder;->mFirstRecordingVideoDataTimeUs:J

    .line 98
    .line 99
    iput v2, p0, Landroidx/camera/video/Recorder;->mFirstRecordingVideoBitrate:I

    .line 100
    .line 101
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderBitrateRange:Landroid/util/Range;

    .line 102
    .line 103
    iput-wide v5, p0, Landroidx/camera/video/Recorder;->mFirstRecordingAudioDataTimeUs:J

    .line 104
    .line 105
    iput-wide v5, p0, Landroidx/camera/video/Recorder;->mPreviousRecordingVideoDataTimeUs:J

    .line 106
    .line 107
    iput-wide v5, p0, Landroidx/camera/video/Recorder;->mPreviousRecordingAudioDataTimeUs:J

    .line 108
    .line 109
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mFileSizeLimitInBytes:J

    .line 110
    .line 111
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mDurationLimitNs:J

    .line 112
    .line 113
    iput v1, p0, Landroidx/camera/video/Recorder;->mRecordingStopError:I

    .line 114
    .line 115
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mRecordingStopErrorCause:Ljava/lang/Throwable;

    .line 116
    .line 117
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    .line 118
    .line 119
    new-instance v1, Landroidx/camera/core/internal/utils/ArrayRingBuffer;

    .line 120
    .line 121
    const/16 v3, 0x3c

    .line 122
    .line 123
    invoke-direct {v1, v3}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;-><init>(I)V

    .line 124
    .line 125
    .line 126
    iput-object v1, p0, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    .line 127
    .line 128
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioErrorCause:Ljava/lang/Throwable;

    .line 129
    .line 130
    iput-boolean v2, p0, Landroidx/camera/video/Recorder;->mIsAudioSourceSilenced:Z

    .line 131
    .line 132
    sget-object v1, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    .line 133
    .line 134
    iput-object v1, p0, Landroidx/camera/video/Recorder;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    .line 135
    .line 136
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mSourceNonStreamingTimeout:Ljava/util/concurrent/ScheduledFuture;

    .line 137
    .line 138
    iput-boolean v2, p0, Landroidx/camera/video/Recorder;->mNeedsResetBeforeNextStart:Z

    .line 139
    .line 140
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderSessionToRelease:Landroidx/camera/video/VideoEncoderSession;

    .line 141
    .line 142
    const-wide/16 v3, 0x0

    .line 143
    .line 144
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mAudioAmplitude:D

    .line 145
    .line 146
    iput-boolean v2, p0, Landroidx/camera/video/Recorder;->mShouldSendResumeEvent:Z

    .line 147
    .line 148
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mSetupVideoTask:Landroidx/camera/video/Recorder$SetupVideoTask;

    .line 149
    .line 150
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mUserProvidedExecutor:Ljava/util/concurrent/Executor;

    .line 151
    .line 152
    if-eqz p1, :cond_1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_1
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    :goto_1
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 160
    .line 161
    invoke-static {p1}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 166
    .line 167
    invoke-direct {p0, p2}, Landroidx/camera/video/Recorder;->composeRecorderMediaSpec(Landroidx/camera/video/MediaSpec;)Landroidx/camera/video/MediaSpec;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-static {p2}, Landroidx/camera/core/impl/MutableStateObservable;->withInitialState(Ljava/lang/Object;)Landroidx/camera/core/impl/MutableStateObservable;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    iput-object p2, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    .line 176
    .line 177
    iput p3, p0, Landroidx/camera/video/Recorder;->mVideoCapabilitiesSource:I

    .line 178
    .line 179
    iget p2, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    .line 180
    .line 181
    iget-object p3, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 182
    .line 183
    invoke-direct {p0, p3}, Landroidx/camera/video/Recorder;->internalStateToStreamState(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    invoke-static {p2, p3}, Landroidx/camera/video/StreamInfo;->of(ILandroidx/camera/video/StreamInfo$StreamState;)Landroidx/camera/video/StreamInfo;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-static {p2}, Landroidx/camera/core/impl/MutableStateObservable;->withInitialState(Ljava/lang/Object;)Landroidx/camera/core/impl/MutableStateObservable;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    iput-object p2, p0, Landroidx/camera/video/Recorder;->mStreamInfo:Landroidx/camera/core/impl/MutableStateObservable;

    .line 196
    .line 197
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 198
    .line 199
    invoke-static {p2}, Landroidx/camera/core/impl/MutableStateObservable;->withInitialState(Ljava/lang/Object;)Landroidx/camera/core/impl/MutableStateObservable;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    iput-object p2, p0, Landroidx/camera/video/Recorder;->mIsRecording:Landroidx/camera/core/impl/MutableStateObservable;

    .line 204
    .line 205
    iput-object p4, p0, Landroidx/camera/video/Recorder;->mVideoEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

    .line 206
    .line 207
    iput-object p5, p0, Landroidx/camera/video/Recorder;->mAudioEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

    .line 208
    .line 209
    new-instance p2, Landroidx/camera/video/VideoEncoderSession;

    .line 210
    .line 211
    invoke-direct {p2, p4, v0, p1}, Landroidx/camera/video/VideoEncoderSession;-><init>(Landroidx/camera/video/internal/encoder/EncoderFactory;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 212
    .line 213
    .line 214
    iput-object p2, p0, Landroidx/camera/video/Recorder;->mVideoEncoderSession:Landroidx/camera/video/VideoEncoderSession;

    .line 215
    .line 216
    return-void
.end method

.method public static synthetic access$000(Landroidx/camera/video/Recorder;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->safeToCloseVideoEncoder()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Landroidx/camera/video/Recorder;)Landroidx/camera/video/internal/encoder/EncoderFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Landroidx/camera/video/Recorder;)Landroidx/camera/core/impl/MutableStateObservable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/video/Recorder;->mIsRecording:Landroidx/camera/core/impl/MutableStateObservable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Landroidx/camera/video/Recorder;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/video/Recorder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Landroidx/camera/video/Recorder;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/video/Recorder;->mResolvedEncoderProfiles:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/video/Recorder;->scheduleTask(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private clearPendingAudioRingBuffer()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/internal/utils/RingBuffer;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/camera/core/internal/utils/RingBuffer;->dequeue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method private composeRecorderMediaSpec(Landroidx/camera/video/MediaSpec;)Landroidx/camera/video/MediaSpec;
    .locals 2
    .param p1    # Landroidx/camera/video/MediaSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/camera/video/MediaSpec;->toBuilder()Landroidx/camera/video/MediaSpec$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/camera/video/MediaSpec;->getVideoSpec()Landroidx/camera/video/VideoSpec;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroidx/camera/video/VideoSpec;->getAspectRatio()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne p1, v1, :cond_0

    .line 15
    .line 16
    new-instance p1, L뒋돨뒋딝땋땦딸돰땅땠되딽되땜돳땪딌듟됨땤됫뒋듰둠따땧둥땫뒙땵될뎹딨뒼돶땯득두둘돰듨땤듸땪돝둬뎹듰든됫딀딎두땮뎸뎠듐뎰뎠딝뒛땱될땧두뒛딻뒘뒉도듟땧뎨듬둡되뎹뒵뎰뎰땫땡둡뒙땯땪뎬딨땃돤땣땭돤뎸땱두땍도듟뎽됐딞돨듌땣딌뒨땋돴딅딌둬딅뒷둑딄땧돼딀둥되돠땩뎰돰됫돠딅딤듬;

    .line 17
    .line 18
    const/4 v1, 0x6

    .line 19
    invoke-direct {p1, v1}, L뒋돨뒋딝땋땦딸돰땅땠되딽되땜돳땪딌듟됨땤됫뒋듰둠따땧둥땫뒙땵될뎹딨뒼돶땯득두둘돰듨땤듸땪돝둬뎹듰든됫딀딎두땮뎸뎠듐뎰뎠딝뒛땱될땧두뒛딻뒘뒉도듟땧뎨듬둡되뎹뒵뎰뎰땫땡둡뒙땯땪뎬딨땃돤땣땭돤뎸땱두땍도듟뎽됐딞돨듌땣딌뒨땋돴딅딌둬딅뒷둑딄땧돼딀둥되돠땩뎰돰됫돠딅딤듬;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroidx/camera/video/MediaSpec$Builder;->configureVideo(Landroidx/core/util/Consumer;)Landroidx/camera/video/MediaSpec$Builder;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec$Builder;->build()Landroidx/camera/video/MediaSpec;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method private configureInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V
    .locals 7
    .param p1    # Landroidx/camera/core/SurfaceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/Timebase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->isServiced()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Recorder"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "Ignore the SurfaceRequest since it is already served."

    .line 10
    .line 11
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    new-instance v2, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;

    .line 18
    .line 19
    const/16 v3, 0x17

    .line 20
    .line 21
    invoke-direct {v2, p0, v3}, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v2}, Landroidx/camera/core/SurfaceRequest;->setTransformationInfoListener(Ljava/util/concurrent/Executor;Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v3}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3}, Landroidx/camera/video/Recorder;->getVideoCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v3, v0, v2}, Landroidx/camera/video/VideoCapabilities;->findNearestHigherSupportedQualityFor(Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/Quality;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v6, "Using supported quality of "

    .line 54
    .line 55
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v6, " for surface size "

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Landroidx/camera/video/Quality;->NONE:Landroidx/camera/video/Quality;

    .line 77
    .line 78
    if-eq v4, v0, :cond_2

    .line 79
    .line 80
    invoke-interface {v3, v4, v2}, Landroidx/camera/video/VideoCapabilities;->getProfiles(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mResolvedEncoderProfiles:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 85
    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 90
    .line 91
    const-string p2, "Camera advertised available quality but did not produce EncoderProfiles  for advertised quality."

    .line 92
    .line 93
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSetupVideoTask:Landroidx/camera/video/Recorder$SetupVideoTask;

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/camera/video/Recorder$SetupVideoTask;->cancelFailedRetry()V

    .line 102
    .line 103
    .line 104
    :cond_3
    new-instance v0, Landroidx/camera/video/Recorder$SetupVideoTask;

    .line 105
    .line 106
    if-eqz p3, :cond_4

    .line 107
    .line 108
    sget p3, Landroidx/camera/video/Recorder;->sRetrySetupVideoMaxCount:I

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    const/4 p3, 0x0

    .line 112
    :goto_1
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/video/Recorder$SetupVideoTask;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;I)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mSetupVideoTask:Landroidx/camera/video/Recorder$SetupVideoTask;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/camera/video/Recorder$SetupVideoTask;->start()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private finalizePendingRecording(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V
    .locals 6
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/camera/video/Recorder$RecordingRecord;->finalizeRecording(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mAudioErrorCause:Ljava/lang/Throwable;

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    invoke-static {v5, v2, v3, v4}, Landroidx/camera/video/AudioStats;->of(ILjava/lang/Throwable;D)Landroidx/camera/video/AudioStats;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-static {v3, v4, v3, v4, v2}, Landroidx/camera/video/RecordingStats;->of(JJLandroidx/camera/video/AudioStats;)Landroidx/camera/video/RecordingStats;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0}, Landroidx/camera/video/OutputResults;->of(Landroid/net/Uri;)Landroidx/camera/video/OutputResults;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v2, v0, p2, p3}, Landroidx/camera/video/VideoRecordEvent;->finalizeWithError(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;Landroidx/camera/video/OutputResults;ILjava/lang/Throwable;)Landroidx/camera/video/VideoRecordEvent$Finalize;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Landroidx/camera/video/Recorder$RecordingRecord;->updateVideoRecordEvent(Landroidx/camera/video/VideoRecordEvent;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private getAudioDataToWriteAndClearCache(J)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/camera/video/internal/encoder/EncodedData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    .line 7
    .line 8
    invoke-interface {v1}, Landroidx/camera/core/internal/utils/RingBuffer;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    .line 15
    .line 16
    invoke-interface {v1}, Landroidx/camera/core/internal/utils/RingBuffer;->dequeue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/camera/video/internal/encoder/EncodedData;

    .line 21
    .line 22
    invoke-interface {v1}, Landroidx/camera/video/internal/encoder/EncodedData;->getPresentationTimeUs()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    cmp-long v4, v2, p1

    .line 27
    .line 28
    if-ltz v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object v0
.end method

.method public static getVideoCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;
    .locals 1
    .param p0    # Landroidx/camera/core/CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroidx/camera/video/Recorder;->getVideoCapabilities(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/VideoCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoCapabilities(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/VideoCapabilities;
    .locals 2
    .param p0    # Landroidx/camera/core/CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/camera/video/RecorderVideoCapabilities;

    check-cast p0, Landroidx/camera/core/impl/CameraInfoInternal;

    sget-object v1, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->FINDER:Landroidx/arch/core/util/Function;

    invoke-direct {v0, p1, p0, v1}, Landroidx/camera/video/RecorderVideoCapabilities;-><init>(ILandroidx/camera/core/impl/CameraInfoInternal;Landroidx/arch/core/util/Function;)V

    return-object v0
.end method

.method private internalAudioStateToAudioStatsState(Landroidx/camera/video/Recorder$AudioState;)I
    .locals 4
    .param p1    # Landroidx/camera/video/Recorder$AudioState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_5

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq v0, v3, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Invalid internal audio state: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    return v3

    .line 41
    :cond_2
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->isMuted()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    return v2

    .line 52
    :cond_3
    iget-boolean p1, p0, Landroidx/camera/video/Recorder;->mIsAudioSourceSilenced:Z

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    return v1

    .line 57
    :cond_4
    const/4 p1, 0x0

    .line 58
    return p1

    .line 59
    :cond_5
    const/4 p1, 0x1

    .line 60
    return p1
.end method

.method private internalStateToStreamState(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;
    .locals 2
    .param p1    # Landroidx/camera/video/Recorder$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Landroidx/camera/video/internal/compat/quirk/DeactivateEncoderSurfaceBeforeStopEncoderQuirk;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/video/internal/compat/quirk/DeactivateEncoderSurfaceBeforeStopEncoderQuirk;

    .line 8
    .line 9
    sget-object v1, Landroidx/camera/video/Recorder$State;->RECORDING:Landroidx/camera/video/Recorder$State;

    .line 10
    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    .line 13
    sget-object v1, Landroidx/camera/video/Recorder$State;->STOPPING:Landroidx/camera/video/Recorder$State;

    .line 14
    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object p1, Landroidx/camera/video/StreamInfo$StreamState;->INACTIVE:Landroidx/camera/video/StreamInfo$StreamState;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    sget-object p1, Landroidx/camera/video/StreamInfo$StreamState;->ACTIVE:Landroidx/camera/video/StreamInfo$StreamState;

    .line 24
    .line 25
    :goto_1
    return-object p1
.end method

.method private static isSameRecording(Landroidx/camera/video/Recording;Landroidx/camera/video/Recorder$RecordingRecord;)Z
    .locals 4
    .param p0    # Landroidx/camera/video/Recording;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/video/Recording;->getRecordingId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getRecordingId()J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    cmp-long v3, v1, p0

    .line 14
    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_1
    return v0
.end method

.method private static synthetic lambda$composeRecorderMediaSpec$8(Landroidx/camera/video/VideoSpec$Builder;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/video/Recorder;->VIDEO_SPEC_DEFAULT:Landroidx/camera/video/VideoSpec;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec;->getAspectRatio()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/camera/video/VideoSpec$Builder;->setAspectRatio(I)Landroidx/camera/video/VideoSpec$Builder;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$configureInternal$7(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mSourceTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 2
    .line 3
    return-void
.end method

.method private synthetic lambda$mute$6(Landroidx/camera/video/Recorder$RecordingRecord;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/Recorder;->muteInternal(Landroidx/camera/video/Recorder$RecordingRecord;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onSourceStateChanged$1(Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->onSourceStateChangedInternal(Landroidx/camera/video/VideoOutput$SourceState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onSurfaceRequested$0(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/Recorder;->onSurfaceRequestedInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$pause$3(Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->pauseInternal(Landroidx/camera/video/Recorder$RecordingRecord;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$resume$4(Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->resumeInternal(Landroidx/camera/video/Recorder$RecordingRecord;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$scheduleTask$14(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setupAndStartMediaMuxer$9(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mOutputUri:Landroid/net/Uri;

    .line 2
    .line 3
    return-void
.end method

.method private synthetic lambda$start$2()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mVideoSourceTimebase:Landroidx/camera/core/impl/Timebase;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/video/Recorder;->configureInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    const-string v1, "surface request is required to retry initialization."

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method private synthetic lambda$stop$5(Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Landroidx/camera/video/Recorder;->stopInternal(Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$stopInternal$13(Landroidx/camera/video/internal/encoder/Encoder;)V
    .locals 2

    .line 1
    const-string v0, "Recorder"

    .line 2
    .line 3
    const-string v1, "The source didn\'t become non-streaming before timeout. Waited 1000ms"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v0, Landroidx/camera/video/internal/compat/quirk/DeactivateEncoderSurfaceBeforeStopEncoderQuirk;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/camera/video/Recorder;->notifyEncoderSourceStopped(Landroidx/camera/video/internal/encoder/Encoder;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private synthetic lambda$updateEncoderCallbacks$10(Landroidx/camera/video/Recorder$RecordingRecord;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 2
    .line 3
    new-instance v1, Landroidx/camera/video/Recorder$3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1}, Landroidx/camera/video/Recorder$3;-><init>(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/video/Recorder$RecordingRecord;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    invoke-interface {v0, v1, p1}, Landroidx/camera/video/internal/encoder/Encoder;->setEncoderCallback(Landroidx/camera/video/internal/encoder/EncoderCallback;Ljava/util/concurrent/Executor;)V

    .line 11
    .line 12
    .line 13
    const-string p1, "videoEncodingFuture"

    .line 14
    .line 15
    return-object p1
.end method

.method private synthetic lambda$updateEncoderCallbacks$11(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioErrorCause:Ljava/lang/Throwable;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p2, Landroidx/camera/video/internal/encoder/EncodeException;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->ERROR_ENCODER:Landroidx/camera/video/Recorder$AudioState;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setAudioState(Landroidx/camera/video/Recorder$AudioState;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->ERROR_SOURCE:Landroidx/camera/video/Recorder$AudioState;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setAudioState(Landroidx/camera/video/Recorder$AudioState;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iput-object p2, p0, Landroidx/camera/video/Recorder;->mAudioErrorCause:Ljava/lang/Throwable;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->updateInProgressStatusEvent()V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private synthetic lambda$updateEncoderCallbacks$12(Landroidx/camera/video/Recorder$RecordingRecord;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, L돶듻뎻듨딌딄땻될땯듌땃돶딄딽땹돳땹듨땐뒋들땅뒼딞뒾땝땳따듽딟뒈듬뒤땅따땋뎽딹뒵딌됐듰딌돛들딌둑딻둘딹땨딻뒀듔듌돳땅둡땀듬둣땡땳둠돼듌땻딄뎹도뎬디돠돸딠돵딹둬둡딞땧딤득딀뎻둘딐둣듽땔뒷딌뎡뒀뒘듨뒛땰둔돸뎽돶둘딄도딀땵뒬되따도딠뒤두땡뒈됴땥듽땃되땄돰딅뎽땲뎬돶땜땥;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, p2, v1}, L돶듻뎻듨딌딄땻될땯듌땃돶딄딽땹돳땹듨땐뒋들땅뒼딞뒾땝땳따듽딟뒈듬뒤땅따땋뎽딹뒵딌됐듰딌돛들딌둑딻둘딹땨딻뒀듔듌돳땅둡땀듬둣땡땳둠돼듌땻딄뎹도뎬디돠돸딠돵딹둬둡딞땧딤득딀뎻둘딐둣듽땔뒷딌뎡뒀뒘듨뒛땰둔돸뎽돶둘딄도딀땵뒬되따도딠뒤두땡뒈됴땥듽땃되땄돰딅뎽땲뎬돶땜땥;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mAudioSource:Landroidx/camera/video/internal/audio/AudioSource;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    new-instance v3, Landroidx/camera/video/Recorder$4;

    .line 12
    .line 13
    invoke-direct {v3, p0, v0}, Landroidx/camera/video/Recorder$4;-><init>(Landroidx/camera/video/Recorder;Landroidx/core/util/Consumer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Landroidx/camera/video/internal/audio/AudioSource;->setAudioSourceCallback(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 20
    .line 21
    new-instance v2, Landroidx/camera/video/Recorder$5;

    .line 22
    .line 23
    invoke-direct {v2, p0, p2, v0, p1}, Landroidx/camera/video/Recorder$5;-><init>(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/core/util/Consumer;Landroidx/camera/video/Recorder$RecordingRecord;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    invoke-interface {v1, v2, p1}, Landroidx/camera/video/internal/encoder/Encoder;->setEncoderCallback(Landroidx/camera/video/internal/encoder/EncoderCallback;Ljava/util/concurrent/Executor;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "audioEncodingFuture"

    .line 32
    .line 33
    return-object p1
.end method

.method private makePendingRecordingActiveLocked(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/Recorder$RecordingRecord;
    .locals 4
    .param p1    # Landroidx/camera/video/Recorder$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/video/Recorder$State;->PENDING_PAUSED:Landroidx/camera/video/Recorder$State;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    .line 8
    .line 9
    if-ne p1, v0, :cond_4

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/camera/video/Recorder$RecordingRecord;->getRecordingState()Landroidx/camera/core/impl/StateObservable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Landroidx/camera/video/Recorder$7;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Landroidx/camera/video/Recorder$7;-><init>(Landroidx/camera/video/Recorder;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Landroidx/camera/core/impl/StateObservable;->addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    sget-object p1, Landroidx/camera/video/Recorder$State;->PAUSED:Landroidx/camera/video/Recorder$State;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    sget-object p1, Landroidx/camera/video/Recorder$State;->RECORDING:Landroidx/camera/video/Recorder$State;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-object v0

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 56
    .line 57
    const-string v0, "Pending recording should exist when in a PENDING state."

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    .line 64
    .line 65
    const-string v0, "Cannot make pending recording active because another recording is already active."

    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    .line 72
    .line 73
    const-string v0, "makePendingRecordingActiveLocked() can only be called from a pending state."

    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method private muteInternal(Landroidx/camera/video/Recorder$RecordingRecord;Z)V
    .locals 1
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->isMuted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/camera/video/Recorder$RecordingRecord;->mute(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    iget-boolean p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecordingStopping:Z

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mAudioSource:Landroidx/camera/video/internal/audio/AudioSource;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroidx/camera/video/internal/audio/AudioSource;->mute(Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public static notifyEncoderSourceStopped(Landroidx/camera/video/internal/encoder/Encoder;)V
    .locals 1
    .param p0    # Landroidx/camera/video/internal/encoder/Encoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->signalSourceStopped()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private onRecordingFinalized(Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 8
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "Unexpected state on finalize of recording: "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 7
    .line 8
    if-ne v2, p1, :cond_b

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/camera/video/Recorder$RecordingRecord;->getRecordingState()Landroidx/camera/core/impl/StateObservable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/camera/core/impl/StateObservable;->removeObservers()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    packed-switch v2, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    goto :goto_3

    .line 32
    :pswitch_0
    move-object v2, p1

    .line 33
    move-object v3, v2

    .line 34
    const/4 v0, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x1

    .line 37
    :goto_0
    const/4 v7, 0x0

    .line 38
    goto/16 :goto_7

    .line 39
    .line 40
    :pswitch_1
    iget-boolean v0, p0, Landroidx/camera/video/Recorder;->mEncoderNotUsePersistentInputSurface:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mActiveSurface:Landroid/view/Surface;

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/camera/core/SurfaceRequest;->isServiced()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto/16 :goto_9

    .line 59
    .line 60
    :cond_0
    const/4 v3, 0x0

    .line 61
    :goto_1
    sget-object v0, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 64
    .line 65
    .line 66
    move-object v2, p1

    .line 67
    move v5, v3

    .line 68
    const/4 v0, 0x0

    .line 69
    :goto_2
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    move-object v3, v2

    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :cond_1
    sget-object v0, Landroidx/camera/video/Recorder$State;->IDLING:Landroidx/camera/video/Recorder$State;

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 77
    .line 78
    .line 79
    :goto_3
    move-object v2, p1

    .line 80
    move-object v3, v2

    .line 81
    const/4 v0, 0x0

    .line 82
    :goto_4
    const/4 v5, 0x0

    .line 83
    const/4 v6, 0x0

    .line 84
    goto :goto_0

    .line 85
    :pswitch_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :pswitch_3
    const/4 v0, 0x1

    .line 106
    goto :goto_5

    .line 107
    :pswitch_4
    const/4 v0, 0x0

    .line 108
    :goto_5
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    .line 109
    .line 110
    sget-object v5, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    .line 111
    .line 112
    if-ne v2, v5, :cond_2

    .line 113
    .line 114
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 115
    .line 116
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 117
    .line 118
    sget-object v3, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    .line 119
    .line 120
    invoke-virtual {p0, v3}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 121
    .line 122
    .line 123
    sget-object v3, Landroidx/camera/video/Recorder;->PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE:Ljava/lang/Exception;

    .line 124
    .line 125
    const/4 v5, 0x4

    .line 126
    const/4 v5, 0x0

    .line 127
    const/4 v6, 0x0

    .line 128
    const/4 v7, 0x4

    .line 129
    goto :goto_7

    .line 130
    :cond_2
    iget-boolean v2, p0, Landroidx/camera/video/Recorder;->mEncoderNotUsePersistentInputSurface:Z

    .line 131
    .line 132
    if-eqz v2, :cond_4

    .line 133
    .line 134
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mActiveSurface:Landroid/view/Surface;

    .line 135
    .line 136
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 137
    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    invoke-virtual {v2}, Landroidx/camera/core/SurfaceRequest;->isServiced()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_3

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_3
    const/4 v3, 0x0

    .line 148
    :goto_6
    sget-object v2, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    .line 149
    .line 150
    invoke-direct {p0, v2}, Landroidx/camera/video/Recorder;->updateNonPendingState(Landroidx/camera/video/Recorder$State;)V

    .line 151
    .line 152
    .line 153
    move-object v2, p1

    .line 154
    move v5, v3

    .line 155
    goto :goto_2

    .line 156
    :cond_4
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 157
    .line 158
    if-eqz v2, :cond_5

    .line 159
    .line 160
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 161
    .line 162
    invoke-direct {p0, v2}, Landroidx/camera/video/Recorder;->makePendingRecordingActiveLocked(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/Recorder$RecordingRecord;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move-object v3, p1

    .line 167
    const/4 v5, 0x0

    .line 168
    const/4 v6, 0x0

    .line 169
    const/4 v7, 0x0

    .line 170
    move-object p1, v2

    .line 171
    move-object v2, v3

    .line 172
    goto :goto_7

    .line 173
    :cond_5
    move-object v2, p1

    .line 174
    move-object v3, v2

    .line 175
    goto :goto_4

    .line 176
    :goto_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    if-eqz v5, :cond_6

    .line 178
    .line 179
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 180
    .line 181
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoSourceTimebase:Landroidx/camera/core/impl/Timebase;

    .line 182
    .line 183
    invoke-direct {p0, p1, v0, v4}, Landroidx/camera/video/Recorder;->configureInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    .line 184
    .line 185
    .line 186
    goto :goto_8

    .line 187
    :cond_6
    if-eqz v6, :cond_7

    .line 188
    .line 189
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->reset()V

    .line 190
    .line 191
    .line 192
    goto :goto_8

    .line 193
    :cond_7
    if-eqz p1, :cond_9

    .line 194
    .line 195
    iget-boolean v1, p0, Landroidx/camera/video/Recorder;->mEncoderNotUsePersistentInputSurface:Z

    .line 196
    .line 197
    if-nez v1, :cond_8

    .line 198
    .line 199
    invoke-direct {p0, p1, v0}, Landroidx/camera/video/Recorder;->startRecording(Landroidx/camera/video/Recorder$RecordingRecord;Z)V

    .line 200
    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    .line 204
    .line 205
    const-string v0, "Attempt to start a pending recording while the Recorder is waiting for a new surface request."

    .line 206
    .line 207
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    throw p1

    .line 211
    :cond_9
    if-eqz v2, :cond_a

    .line 212
    .line 213
    invoke-direct {p0, v2, v7, v3}, Landroidx/camera/video/Recorder;->finalizePendingRecording(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    :cond_a
    :goto_8
    return-void

    .line 217
    :cond_b
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 218
    .line 219
    const-string v0, "Active recording did not match finalized recording on finalize."

    .line 220
    .line 221
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    throw p1

    .line 225
    :goto_9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    throw p1

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onResetVideo()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isPersistentRecordingInProgress()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :pswitch_1
    sget-object v1, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v1, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    .line 32
    .line 33
    invoke-direct {p0, v1}, Landroidx/camera/video/Recorder;->updateNonPendingState(Landroidx/camera/video/Recorder$State;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    const/4 v1, 0x1

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iput-boolean v2, p0, Landroidx/camera/video/Recorder;->mNeedsResetBeforeNextStart:Z

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/camera/core/SurfaceRequest;->isServiced()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mVideoSourceTimebase:Landroidx/camera/core/impl/Timebase;

    .line 55
    .line 56
    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/video/Recorder;->configureInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw v1

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onSurfaceRequestedInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V
    .locals 1
    .param p1    # Landroidx/camera/core/SurfaceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/Timebase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/SurfaceRequest;->isServiced()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/camera/core/SurfaceRequest;->willNotProvideSurface()Z

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mLatestSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 17
    .line 18
    iput-object p2, p0, Landroidx/camera/video/Recorder;->mVideoSourceTimebase:Landroidx/camera/core/impl/Timebase;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, p1, p2, v0}, Landroidx/camera/video/Recorder;->configureInternal(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private pauseInternal(Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 2
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 2
    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecordingStopping:Z

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isAudioEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 16
    .line 17
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/Encoder;->pause()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 21
    .line 22
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/Encoder;->pause()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->getInProgressRecordingStats()Landroidx/camera/video/RecordingStats;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroidx/camera/video/VideoRecordEvent;->pause(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;)Landroidx/camera/video/VideoRecordEvent$Pause;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Landroidx/camera/video/Recorder$RecordingRecord;->updateVideoRecordEvent(Landroidx/camera/video/VideoRecordEvent;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method private prepareRecordingInternal(Landroid/content/Context;Landroidx/camera/video/OutputOptions;)Landroidx/camera/video/PendingRecording;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/OutputOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "The OutputOptions cannot be null."

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/camera/video/PendingRecording;

    .line 7
    .line 8
    invoke-direct {v0, p1, p0, p2}, Landroidx/camera/video/PendingRecording;-><init>(Landroid/content/Context;Landroidx/camera/video/Recorder;Landroidx/camera/video/OutputOptions;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private releaseCurrentAudioSource()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioSource:Landroidx/camera/video/internal/audio/AudioSource;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Landroidx/camera/video/Recorder;->mAudioSource:Landroidx/camera/video/internal/audio/AudioSource;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v1, v2, v3

    .line 21
    .line 22
    const-string v1, "Releasing audio source: 0x%x"

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "Recorder"

    .line 29
    .line 30
    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioSource;->release()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Landroidx/camera/video/Recorder$2;

    .line 38
    .line 39
    invoke-direct {v2, p0, v0}, Landroidx/camera/video/Recorder$2;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/internal/audio/AudioSource;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v2, v0}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 51
    .line 52
    const-string v1, "Cannot release null audio source."

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method private reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Recorder"

    .line 6
    .line 7
    const-string v1, "Releasing audio encoder."

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/Encoder;->release()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioSource:Landroidx/camera/video/internal/audio/AudioSource;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->releaseCurrentAudioSource()V

    .line 27
    .line 28
    .line 29
    :cond_1
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->INITIALIZING:Landroidx/camera/video/Recorder$AudioState;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setAudioState(Landroidx/camera/video/Recorder$AudioState;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->resetVideo()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private resetVideo()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Recorder"

    .line 6
    .line 7
    const-string v1, "Releasing video encoder."

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->tryReleaseVideoEncoder()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->onResetVideo()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private restoreNonPendingState()V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/video/Recorder;->PENDING_STATES:Ljava/util/Set;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Cannot restore non-pending state when in state "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method private resumeInternal(Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 2
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 2
    .line 3
    if-ne v0, p1, :cond_2

    .line 4
    .line 5
    iget-boolean p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecordingStopping:Z

    .line 6
    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isAudioEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 16
    .line 17
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/Encoder;->start()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/Encoder;->start()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->getInProgressRecordingStats()Landroidx/camera/video/RecordingStats;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroidx/camera/video/VideoRecordEvent;->resume(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;)Landroidx/camera/video/VideoRecordEvent$Resume;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Landroidx/camera/video/Recorder$RecordingRecord;->updateVideoRecordEvent(Landroidx/camera/video/VideoRecordEvent;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Landroidx/camera/video/Recorder;->mShouldSendResumeEvent:Z

    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method private safeToCloseVideoEncoder()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Try to safely release video encoder: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "Recorder"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderSession:Landroidx/camera/video/VideoEncoderSession;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/camera/video/VideoEncoderSession;->signalTermination()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method private static scheduleTask(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 3
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, L딌뎰뎡두땜디뒘딝딌땔듻땀돼따땨될되둬뒻땭돠뒋딄뒨돵땧땋듔뒉듐땐딸뒨드뎡됐듼땪땭듻두돴둔된뒐땍뒐땨딜뒉땠듟땍된디뎬두땍딁돝딤딌듐둑땦뎡뒷땠뒐됩디둬뒀될땵딤듌득딀뎡땹들돛돠땥땥딐뎨딟땤돰돝뒻둠땲돶땜둘듻득됩듼딀딜뒉딁듸듬땬둠듐듌돼땨듰디뒼땄땨뎡땠돵딨돴딽됴듬돠땮땵;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    invoke-direct {v1, p1, p0, v2}, L딌뎰뎡두땜디뒘딝딌땔듻땀돼따땨될되둬뒻땭돠뒋딄뒨돵땧땋듔뒉듐땐딸뒨드뎡됐듼땪땭듻두돴둔된뒐땍뒐땨딜뒉땠듟땍된디뎬두땍딁돝딤딌듐둑땦뎡뒷땠뒐됩디둬뒀될땵딤듌득딀뎡땹들돛돠땥땥딐뎨딟땤돰돝뒻둠땲돶땜둘듻득됩듼딀딜뒉딁듸듬땬둠듐듌돼땨듰디뒼땄땨뎡땠돵딨돴딽됴듬돠땮땵;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private setStreamId(I)V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget v0, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Transitioning streamId: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " --> "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "Recorder"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput p1, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mStreamInfo:Landroidx/camera/core/impl/MutableStateObservable;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 40
    .line 41
    invoke-direct {p0, v1}, Landroidx/camera/video/Recorder;->internalStateToStreamState(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mInProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 46
    .line 47
    invoke-static {p1, v1, v2}, Landroidx/camera/video/StreamInfo;->of(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)Landroidx/camera/video/StreamInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/MutableStateObservable;->setState(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private setupAudio(Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 6
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.RECORD_AUDIO"
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->getObservableData(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/video/MediaSpec;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mResolvedEncoderProfiles:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/camera/video/internal/config/AudioConfigUtil;->resolveAudioMimeInfo(Landroidx/camera/video/MediaSpec;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;)Landroidx/camera/video/internal/config/AudioMimeInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec;->getAudioSpec()Landroidx/camera/video/AudioSpec;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v1, v3}, Landroidx/camera/video/internal/config/AudioConfigUtil;->resolveAudioSettings(Landroidx/camera/video/internal/config/AudioMimeInfo;Landroidx/camera/video/AudioSpec;)Landroidx/camera/video/internal/audio/AudioSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Landroidx/camera/video/Recorder;->mAudioSource:Landroidx/camera/video/internal/audio/AudioSource;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->releaseCurrentAudioSource()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0, p1, v3}, Landroidx/camera/video/Recorder;->setupAudioSource(Landroidx/camera/video/Recorder$RecordingRecord;Landroidx/camera/video/internal/audio/AudioSettings;)Landroidx/camera/video/internal/audio/AudioSource;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mAudioSource:Landroidx/camera/video/internal/audio/AudioSource;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 v4, 0x1

    .line 47
    new-array v4, v4, [Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    aput-object p1, v4, v5

    .line 51
    .line 52
    const-string p1, "Set up new audio source: 0x%x"

    .line 53
    .line 54
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v4, "Recorder"

    .line 59
    .line 60
    invoke-static {v4, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec;->getAudioSpec()Landroidx/camera/video/AudioSpec;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v1, v2, v3, p1}, Landroidx/camera/video/internal/config/AudioConfigUtil;->resolveAudioEncoderConfig(Landroidx/camera/video/internal/config/AudioMimeInfo;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/internal/audio/AudioSettings;Landroidx/camera/video/AudioSpec;)Landroidx/camera/video/internal/encoder/AudioEncoderConfig;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioEncoderFactory:Landroidx/camera/video/internal/encoder/EncoderFactory;

    .line 72
    .line 73
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 74
    .line 75
    invoke-interface {v0, v1, p1}, Landroidx/camera/video/internal/encoder/EncoderFactory;->createEncoder(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderConfig;)Landroidx/camera/video/internal/encoder/Encoder;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 80
    .line 81
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/Encoder;->getInput()Landroidx/camera/video/internal/encoder/Encoder$EncoderInput;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    instance-of v0, p1, Landroidx/camera/video/internal/encoder/Encoder$ByteBufferInput;

    .line 86
    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioSource:Landroidx/camera/video/internal/audio/AudioSource;

    .line 90
    .line 91
    check-cast p1, Landroidx/camera/video/internal/encoder/Encoder$ByteBufferInput;

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/audio/AudioSource;->setBufferProvider(Landroidx/camera/video/internal/BufferProvider;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 98
    .line 99
    const-string v0, "The EncoderInput of audio isn\'t a ByteBufferInput."

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method

.method private setupAudioSource(Landroidx/camera/video/Recorder$RecordingRecord;Landroidx/camera/video/internal/audio/AudioSettings;)Landroidx/camera/video/internal/audio/AudioSource;
    .locals 1
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/internal/audio/AudioSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.RECORD_AUDIO"
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/video/Recorder;->AUDIO_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroidx/camera/video/Recorder$RecordingRecord;->performOneTimeAudioSourceCreation(Landroidx/camera/video/internal/audio/AudioSettings;Ljava/util/concurrent/Executor;)Landroidx/camera/video/internal/audio/AudioSource;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private startInternal(Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 7
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/camera/video/OutputOptions;->getFileSizeLimit()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-string v2, "Recorder"

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long v5, v0, v3

    .line 18
    .line 19
    if-lez v5, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/camera/video/OutputOptions;->getFileSizeLimit()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    long-to-double v0, v0

    .line 30
    const-wide v5, 0x3fee666666666666L    # 0.95

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    mul-double v0, v0, v5

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Landroidx/camera/video/Recorder;->mFileSizeLimitInBytes:J

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "File size limit in bytes: "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-wide v5, p0, Landroidx/camera/video/Recorder;->mFileSizeLimitInBytes:J

    .line 51
    .line 52
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mFileSizeLimitInBytes:J

    .line 64
    .line 65
    :goto_0
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroidx/camera/video/OutputOptions;->getDurationLimitMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    cmp-long v5, v0, v3

    .line 74
    .line 75
    if-lez v5, :cond_1

    .line 76
    .line 77
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroidx/camera/video/OutputOptions;->getDurationLimitMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    iput-wide v0, p0, Landroidx/camera/video/Recorder;->mDurationLimitNs:J

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v1, "Duration limit in nanoseconds: "

    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-wide v3, p0, Landroidx/camera/video/Recorder;->mDurationLimitNs:J

    .line 101
    .line 102
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mDurationLimitNs:J

    .line 114
    .line 115
    :goto_1
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 116
    .line 117
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioState:Landroidx/camera/video/Recorder$AudioState;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    const/4 v1, 0x1

    .line 126
    if-eq v0, v1, :cond_3

    .line 127
    .line 128
    const/4 v1, 0x2

    .line 129
    if-eq v0, v1, :cond_2

    .line 130
    .line 131
    const/4 v1, 0x3

    .line 132
    if-eq v0, v1, :cond_2

    .line 133
    .line 134
    const/4 v1, 0x4

    .line 135
    if-eq v0, v1, :cond_2

    .line 136
    .line 137
    const/4 v1, 0x5

    .line 138
    if-eq v0, v1, :cond_2

    .line 139
    .line 140
    goto/16 :goto_6

    .line 141
    .line 142
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v1, "Incorrectly invoke startInternal in audio state "

    .line 147
    .line 148
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mAudioState:Landroidx/camera/video/Recorder$AudioState;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_3
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->hasAudioEnabled()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_4

    .line 169
    .line 170
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->ENABLED:Landroidx/camera/video/Recorder$AudioState;

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_4
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->DISABLED:Landroidx/camera/video/Recorder$AudioState;

    .line 174
    .line 175
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setAudioState(Landroidx/camera/video/Recorder$AudioState;)V

    .line 176
    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_5
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->hasAudioEnabled()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_a

    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isAudioSupported()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_9

    .line 190
    .line 191
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroidx/camera/video/Recorder$RecordingRecord;->isPersistent()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_6

    .line 198
    .line 199
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 200
    .line 201
    if-nez v0, :cond_7

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :catch_0
    move-exception v0

    .line 205
    goto :goto_4

    .line 206
    :catch_1
    move-exception v0

    .line 207
    goto :goto_4

    .line 208
    :cond_6
    :goto_3
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->setupAudio(Landroidx/camera/video/Recorder$RecordingRecord;)V

    .line 209
    .line 210
    .line 211
    :cond_7
    sget-object v0, Landroidx/camera/video/Recorder$AudioState;->ENABLED:Landroidx/camera/video/Recorder$AudioState;

    .line 212
    .line 213
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setAudioState(Landroidx/camera/video/Recorder$AudioState;)V
    :try_end_0
    .catch Landroidx/camera/video/internal/audio/AudioSourceAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/camera/video/internal/encoder/InvalidConfigException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .line 215
    .line 216
    goto :goto_6

    .line 217
    :goto_4
    const-string v1, "Unable to create audio resource with error: "

    .line 218
    .line 219
    invoke-static {v2, v1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    instance-of v1, v0, Landroidx/camera/video/internal/encoder/InvalidConfigException;

    .line 223
    .line 224
    if-eqz v1, :cond_8

    .line 225
    .line 226
    sget-object v1, Landroidx/camera/video/Recorder$AudioState;->ERROR_ENCODER:Landroidx/camera/video/Recorder$AudioState;

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_8
    sget-object v1, Landroidx/camera/video/Recorder$AudioState;->ERROR_SOURCE:Landroidx/camera/video/Recorder$AudioState;

    .line 230
    .line 231
    :goto_5
    invoke-virtual {p0, v1}, Landroidx/camera/video/Recorder;->setAudioState(Landroidx/camera/video/Recorder$AudioState;)V

    .line 232
    .line 233
    .line 234
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mAudioErrorCause:Ljava/lang/Throwable;

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    .line 238
    .line 239
    const-string v0, "The Recorder doesn\'t support recording with audio"

    .line 240
    .line 241
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    throw p1

    .line 245
    :cond_a
    :goto_6
    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, p1, v0}, Landroidx/camera/video/Recorder;->updateEncoderCallbacks(Landroidx/camera/video/Recorder$RecordingRecord;Z)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isAudioEnabled()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_b

    .line 254
    .line 255
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioSource:Landroidx/camera/video/internal/audio/AudioSource;

    .line 256
    .line 257
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->isMuted()Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/audio/AudioSource;->start(Z)V

    .line 262
    .line 263
    .line 264
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 265
    .line 266
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/Encoder;->start()V

    .line 267
    .line 268
    .line 269
    :cond_b
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 270
    .line 271
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/Encoder;->start()V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 275
    .line 276
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->getInProgressRecordingStats()Landroidx/camera/video/RecordingStats;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Landroidx/camera/video/VideoRecordEvent;->start(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;)Landroidx/camera/video/VideoRecordEvent$Start;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {p1, v0}, Landroidx/camera/video/Recorder$RecordingRecord;->updateVideoRecordEvent(Landroidx/camera/video/VideoRecordEvent;)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    .line 293
    .line 294
    const-string v0, "Attempted to start a new recording while another was in progress."

    .line 295
    .line 296
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    throw p1
.end method

.method private startRecording(Landroidx/camera/video/Recorder$RecordingRecord;Z)V
    .locals 0
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->startInternal(Landroidx/camera/video/Recorder$RecordingRecord;)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->pauseInternal(Landroidx/camera/video/Recorder$RecordingRecord;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private static supportedMuxerFormatOrDefaultFrom(Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;I)I
    .locals 3
    .param p0    # Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq p0, v2, :cond_2

    .line 11
    .line 12
    if-eq p0, v1, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x9

    .line 15
    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v2

    .line 20
    :cond_1
    return v0

    .line 21
    :cond_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 p1, 0x1a

    .line 24
    .line 25
    if-ge p0, p1, :cond_3

    .line 26
    .line 27
    return v0

    .line 28
    :cond_3
    return v1

    .line 29
    :cond_4
    :goto_0
    return p1
.end method

.method private tryReleaseVideoEncoder()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderSessionToRelease:Landroidx/camera/video/VideoEncoderSession;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/camera/video/VideoEncoderSession;->getVideoEncoder()Landroidx/camera/video/internal/encoder/Encoder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Releasing video encoder: "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "Recorder"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderSessionToRelease:Landroidx/camera/video/VideoEncoderSession;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/camera/video/VideoEncoderSession;->terminateNow()V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderSessionToRelease:Landroidx/camera/video/VideoEncoderSession;

    .line 47
    .line 48
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 49
    .line 50
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setLatestSurface(Landroid/view/Surface;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->safeToCloseVideoEncoder()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method

.method private updateEncoderCallbacks(Landroidx/camera/video/Recorder$RecordingRecord;Z)V
    .locals 3
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->allAsList(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    .line 31
    .line 32
    new-instance v1, Landroidx/camera/video/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/video/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isAudioEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    if-nez p2, :cond_2

    .line 52
    .line 53
    iget-object p2, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    .line 54
    .line 55
    new-instance v0, Landroidx/camera/video/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-direct {v0, p0, p1, v1}, Landroidx/camera/video/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    .line 69
    .line 70
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->allAsList(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p2, Landroidx/camera/video/Recorder$6;

    .line 75
    .line 76
    invoke-direct {p2, p0}, Landroidx/camera/video/Recorder$6;-><init>(Landroidx/camera/video/Recorder;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {p1, p2, v0}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private updateNonPendingState(Landroidx/camera/video/Recorder$State;)V
    .locals 3
    .param p1    # Landroidx/camera/video/Recorder$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/video/Recorder;->PENDING_STATES:Ljava/util/Set;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    sget-object v0, Landroidx/camera/video/Recorder;->VALID_NON_PENDING_STATES_WHILE_PENDING:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    .line 20
    .line 21
    if-eq v0, p1, :cond_0

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mStreamInfo:Landroidx/camera/core/impl/MutableStateObservable;

    .line 26
    .line 27
    iget v1, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    .line 28
    .line 29
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->internalStateToStreamState(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mInProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 34
    .line 35
    invoke-static {v1, p1, v2}, Landroidx/camera/video/StreamInfo;->of(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)Landroidx/camera/video/StreamInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/MutableStateObservable;->setState(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "Invalid state transition. State is not a valid non-pending state while in a pending state: "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "Can only updated non-pending state from a pending state, but state is "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    throw p1
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/video/Recorder;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->lambda$setupAndStartMediaMuxer$9(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->lambda$pause$3(Landroidx/camera/video/Recorder$RecordingRecord;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/video/Recorder;->lambda$scheduleTask$14(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->lambda$resume$4(Landroidx/camera/video/Recorder$RecordingRecord;)V

    return-void
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/Recorder;->lambda$onSurfaceRequested$0(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    return-void
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/video/Recorder$RecordingRecord;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Landroidx/camera/video/Recorder;->lambda$updateEncoderCallbacks$12(Landroidx/camera/video/Recorder$RecordingRecord;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/video/Recorder;Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->lambda$onSourceStateChanged$1(Landroidx/camera/video/VideoOutput$SourceState;)V

    return-void
.end method

.method public static synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/camera/video/Recorder;->lambda$stop$5(Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/Recorder;->lambda$mute$6(Landroidx/camera/video/Recorder$RecordingRecord;Z)V

    return-void
.end method

.method public static synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Landroidx/camera/video/internal/encoder/Encoder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/video/Recorder;->lambda$stopInternal$13(Landroidx/camera/video/internal/encoder/Encoder;)V

    return-void
.end method

.method public static synthetic 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Landroidx/camera/video/Recorder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->lambda$start$2()V

    return-void
.end method

.method public static synthetic 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/Recorder;->lambda$updateEncoderCallbacks$11(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->lambda$configureInternal$7(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void
.end method

.method public static synthetic 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroidx/camera/video/VideoSpec$Builder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/video/Recorder;->lambda$composeRecorderMediaSpec$8(Landroidx/camera/video/VideoSpec$Builder;)V

    return-void
.end method

.method public static synthetic 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/video/Recorder$RecordingRecord;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Landroidx/camera/video/Recorder;->lambda$updateEncoderCallbacks$10(Landroidx/camera/video/Recorder$RecordingRecord;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public finalizeInProgressRecording(ILjava/lang/Throwable;)V
    .locals 6
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v4, "MediaMuxer failed to stop or release with error: "

    .line 24
    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v3, "Recorder"

    .line 40
    .line 41
    invoke-static {v3, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    :cond_0
    :goto_0
    iput-object v2, p0, Landroidx/camera/video/Recorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    if-nez p1, :cond_2

    .line 51
    .line 52
    const/16 p1, 0x8

    .line 53
    .line 54
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 55
    .line 56
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mOutputUri:Landroid/net/Uri;

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroidx/camera/video/Recorder$RecordingRecord;->finalizeRecording(Landroid/net/Uri;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/camera/video/Recorder$RecordingRecord;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->getInProgressRecordingStats()Landroidx/camera/video/RecordingStats;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget-object v4, p0, Landroidx/camera/video/Recorder;->mOutputUri:Landroid/net/Uri;

    .line 72
    .line 73
    invoke-static {v4}, Landroidx/camera/video/OutputResults;->of(Landroid/net/Uri;)Landroidx/camera/video/OutputResults;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iget-object v5, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 78
    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    invoke-static {v0, v3, v4}, Landroidx/camera/video/VideoRecordEvent;->finalize(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;Landroidx/camera/video/OutputResults;)Landroidx/camera/video/VideoRecordEvent$Finalize;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    invoke-static {v0, v3, v4, p1, p2}, Landroidx/camera/video/VideoRecordEvent;->finalizeWithError(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;Landroidx/camera/video/OutputResults;ILjava/lang/Throwable;)Landroidx/camera/video/VideoRecordEvent$Finalize;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :goto_2
    invoke-virtual {v5, p1}, Landroidx/camera/video/Recorder$RecordingRecord;->updateVideoRecordEvent(Landroidx/camera/video/VideoRecordEvent;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 94
    .line 95
    iput-object v2, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 96
    .line 97
    const/4 p2, 0x0

    .line 98
    iput-boolean p2, p0, Landroidx/camera/video/Recorder;->mInProgressRecordingStopping:Z

    .line 99
    .line 100
    iput-object v2, p0, Landroidx/camera/video/Recorder;->mAudioTrackIndex:Ljava/lang/Integer;

    .line 101
    .line 102
    iput-object v2, p0, Landroidx/camera/video/Recorder;->mVideoTrackIndex:Ljava/lang/Integer;

    .line 103
    .line 104
    iget-object p2, p0, Landroidx/camera/video/Recorder;->mEncodingFutures:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 107
    .line 108
    .line 109
    sget-object p2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 110
    .line 111
    iput-object p2, p0, Landroidx/camera/video/Recorder;->mOutputUri:Landroid/net/Uri;

    .line 112
    .line 113
    const-wide/16 v3, 0x0

    .line 114
    .line 115
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mRecordingBytes:J

    .line 116
    .line 117
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mRecordingDurationNs:J

    .line 118
    .line 119
    const-wide v3, 0x7fffffffffffffffL

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mFirstRecordingVideoDataTimeUs:J

    .line 125
    .line 126
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mFirstRecordingAudioDataTimeUs:J

    .line 127
    .line 128
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mPreviousRecordingVideoDataTimeUs:J

    .line 129
    .line 130
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mPreviousRecordingAudioDataTimeUs:J

    .line 131
    .line 132
    iput v1, p0, Landroidx/camera/video/Recorder;->mRecordingStopError:I

    .line 133
    .line 134
    iput-object v2, p0, Landroidx/camera/video/Recorder;->mRecordingStopErrorCause:Ljava/lang/Throwable;

    .line 135
    .line 136
    iput-object v2, p0, Landroidx/camera/video/Recorder;->mAudioErrorCause:Ljava/lang/Throwable;

    .line 137
    .line 138
    const-wide/16 v3, 0x0

    .line 139
    .line 140
    iput-wide v3, p0, Landroidx/camera/video/Recorder;->mAudioAmplitude:D

    .line 141
    .line 142
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->clearPendingAudioRingBuffer()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v2}, Landroidx/camera/video/Recorder;->setInProgressTransformationInfo(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    .line 146
    .line 147
    .line 148
    iget-object p2, p0, Landroidx/camera/video/Recorder;->mAudioState:Landroidx/camera/video/Recorder$AudioState;

    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eq p2, v1, :cond_6

    .line 155
    .line 156
    const/4 v0, 0x2

    .line 157
    if-eq p2, v0, :cond_5

    .line 158
    .line 159
    const/4 v0, 0x3

    .line 160
    if-eq p2, v0, :cond_5

    .line 161
    .line 162
    const/4 v0, 0x4

    .line 163
    if-eq p2, v0, :cond_4

    .line 164
    .line 165
    const/4 v0, 0x5

    .line 166
    if-eq p2, v0, :cond_4

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_4
    sget-object p2, Landroidx/camera/video/Recorder$AudioState;->INITIALIZING:Landroidx/camera/video/Recorder$AudioState;

    .line 170
    .line 171
    invoke-virtual {p0, p2}, Landroidx/camera/video/Recorder;->setAudioState(Landroidx/camera/video/Recorder$AudioState;)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    sget-object p2, Landroidx/camera/video/Recorder$AudioState;->IDLING:Landroidx/camera/video/Recorder$AudioState;

    .line 176
    .line 177
    invoke-virtual {p0, p2}, Landroidx/camera/video/Recorder;->setAudioState(Landroidx/camera/video/Recorder$AudioState;)V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Landroidx/camera/video/Recorder;->mAudioSource:Landroidx/camera/video/internal/audio/AudioSource;

    .line 181
    .line 182
    invoke-virtual {p2}, Landroidx/camera/video/internal/audio/AudioSource;->stop()V

    .line 183
    .line 184
    .line 185
    :goto_3
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->onRecordingFinalized(Landroidx/camera/video/Recorder$RecordingRecord;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    .line 190
    .line 191
    const-string p2, "Incorrectly finalize recording when audio state is IDLING"

    .line 192
    .line 193
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    throw p1

    .line 197
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    .line 198
    .line 199
    const-string p2, "Attempted to finalize in-progress recording, but no recording is in progress."

    .line 200
    .line 201
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    throw p1
.end method

.method public getAspectRatio()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->getObservableData(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/video/MediaSpec;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec;->getVideoSpec()Landroidx/camera/video/VideoSpec;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec;->getAspectRatio()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getAudioSource()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->getObservableData(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/video/MediaSpec;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec;->getAudioSpec()Landroidx/camera/video/AudioSpec;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec;->getSource()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mUserProvidedExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInProgressRecordingStats()Landroidx/camera/video/RecordingStats;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroidx/camera/video/Recorder;->mRecordingDurationNs:J

    .line 2
    .line 3
    iget-wide v2, p0, Landroidx/camera/video/Recorder;->mRecordingBytes:J

    .line 4
    .line 5
    iget-object v4, p0, Landroidx/camera/video/Recorder;->mAudioState:Landroidx/camera/video/Recorder$AudioState;

    .line 6
    .line 7
    invoke-direct {p0, v4}, Landroidx/camera/video/Recorder;->internalAudioStateToAudioStatsState(Landroidx/camera/video/Recorder$AudioState;)I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    iget-object v5, p0, Landroidx/camera/video/Recorder;->mAudioErrorCause:Ljava/lang/Throwable;

    .line 12
    .line 13
    iget-wide v6, p0, Landroidx/camera/video/Recorder;->mAudioAmplitude:D

    .line 14
    .line 15
    invoke-static {v4, v5, v6, v7}, Landroidx/camera/video/AudioStats;->of(ILjava/lang/Throwable;D)Landroidx/camera/video/AudioStats;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/camera/video/RecordingStats;->of(JJLandroidx/camera/video/AudioStats;)Landroidx/camera/video/RecordingStats;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public getMediaCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;
    .locals 1
    .param p1    # Landroidx/camera/core/CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/camera/video/Recorder;->mVideoCapabilitiesSource:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/camera/video/Recorder;->getVideoCapabilities(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/VideoCapabilities;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getMediaSpec()Landroidx/camera/core/impl/Observable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/impl/Observable<",
            "Landroidx/camera/video/MediaSpec;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getObservableData(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroidx/camera/core/impl/StateObservable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/impl/StateObservable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/impl/StateObservable;->fetchData()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :catch_1
    move-exception p1

    .line 13
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getQualitySelector()Landroidx/camera/video/QualitySelector;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->getObservableData(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/video/MediaSpec;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec;->getVideoSpec()Landroidx/camera/video/VideoSpec;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec;->getQualitySelector()Landroidx/camera/video/QualitySelector;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getStreamInfo()Landroidx/camera/core/impl/Observable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/impl/Observable<",
            "Landroidx/camera/video/StreamInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mStreamInfo:Landroidx/camera/core/impl/MutableStateObservable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTargetVideoEncodingBitRate()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->getObservableData(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/video/MediaSpec;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec;->getVideoSpec()Landroidx/camera/video/VideoSpec;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec;->getBitrate()Landroid/util/Range;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public getVideoCapabilitiesSource()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/Recorder;->mVideoCapabilitiesSource:I

    .line 2
    .line 3
    return v0
.end method

.method public isAudioEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mAudioState:Landroidx/camera/video/Recorder$AudioState;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/video/Recorder$AudioState;->ENABLED:Landroidx/camera/video/Recorder$AudioState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

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
    return v0
.end method

.method public isAudioSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->getObservableData(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/video/MediaSpec;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec;->getAudioSpec()Landroidx/camera/video/AudioSpec;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec;->getChannelCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public isPersistentRecordingInProgress()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/camera/video/Recorder$RecordingRecord;->isPersistent()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isSourceStreamRequired()Landroidx/camera/core/impl/Observable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/impl/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mIsRecording:Landroidx/camera/core/impl/MutableStateObservable;

    .line 2
    .line 3
    return-object v0
.end method

.method public mute(Landroidx/camera/video/Recording;Z)V
    .locals 3
    .param p1    # Landroidx/camera/video/Recording;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "mute() called on a recording that is no longer active: "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 7
    .line 8
    invoke-static {p1, v2}, Landroidx/camera/video/Recorder;->isSameRecording(Landroidx/camera/video/Recording;Landroidx/camera/video/Recorder$RecordingRecord;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 15
    .line 16
    invoke-static {p1, v2}, Landroidx/camera/video/Recorder;->isSameRecording(Landroidx/camera/video/Recording;Landroidx/camera/video/Recorder$RecordingRecord;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string p2, "Recorder"

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/camera/video/Recording;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 48
    .line 49
    invoke-static {p1, v0}, Landroidx/camera/video/Recorder;->isSameRecording(Landroidx/camera/video/Recording;Landroidx/camera/video/Recorder$RecordingRecord;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 59
    .line 60
    :goto_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 61
    .line 62
    new-instance v2, Landroidx/camera/video/뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨;

    .line 63
    .line 64
    invoke-direct {v2, p0, p1, p2}, Landroidx/camera/video/뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;Z)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p1
.end method

.method public onConfigured()V
    .locals 9

    .line 1
    const-string v0, "Incorrectly invoke onConfigured() in state "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :pswitch_0
    const-string v0, "Recorder"

    .line 21
    .line 22
    const-string v2, "onConfigured() was invoked when the Recorder had encountered error"

    .line 23
    .line 24
    invoke-static {v0, v2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    :pswitch_1
    iget-boolean v0, p0, Landroidx/camera/video/Recorder;->mEncoderNotUsePersistentInputSurface:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 38
    .line 39
    const-string v2, "Unexpectedly invoke onConfigured() in a STOPPING state when it\'s not waiting for a new surface."

    .line 40
    .line 41
    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :pswitch_2
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :pswitch_3
    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isPersistentRecordingInProgress()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const-string v6, "Unexpectedly invoke onConfigured() when there\'s a non-persistent in-progress recording"

    .line 53
    .line 54
    invoke-static {v2, v6}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    move-object v2, v4

    .line 58
    move-object v6, v2

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x1

    .line 61
    goto :goto_5

    .line 62
    :pswitch_4
    new-instance v2, Ljava/lang/AssertionError;

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 70
    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    throw v2

    .line 82
    :pswitch_5
    const/4 v0, 0x1

    .line 83
    goto :goto_1

    .line 84
    :pswitch_6
    const/4 v0, 0x0

    .line 85
    :goto_1
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 86
    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    move-object v2, v4

    .line 90
    move-object v6, v2

    .line 91
    :goto_2
    const/4 v7, 0x0

    .line 92
    :goto_3
    const/4 v8, 0x0

    .line 93
    goto :goto_5

    .line 94
    :cond_1
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    .line 95
    .line 96
    sget-object v6, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    .line 97
    .line 98
    if-ne v2, v6, :cond_2

    .line 99
    .line 100
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 101
    .line 102
    iput-object v4, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 103
    .line 104
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->restoreNonPendingState()V

    .line 105
    .line 106
    .line 107
    sget-object v6, Landroidx/camera/video/Recorder;->PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE:Ljava/lang/Exception;

    .line 108
    .line 109
    const/4 v7, 0x4

    .line 110
    goto :goto_3

    .line 111
    :cond_2
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 112
    .line 113
    invoke-direct {p0, v2}, Landroidx/camera/video/Recorder;->makePendingRecordingActiveLocked(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/Recorder$RecordingRecord;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    move-object v6, v4

    .line 118
    const/4 v7, 0x0

    .line 119
    const/4 v8, 0x0

    .line 120
    move-object v4, v2

    .line 121
    move-object v2, v6

    .line 122
    goto :goto_5

    .line 123
    :pswitch_7
    sget-object v0, Landroidx/camera/video/Recorder$State;->IDLING:Landroidx/camera/video/Recorder$State;

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 126
    .line 127
    .line 128
    :goto_4
    move-object v2, v4

    .line 129
    move-object v6, v2

    .line 130
    const/4 v0, 0x0

    .line 131
    goto :goto_2

    .line 132
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    if-eqz v8, :cond_4

    .line 134
    .line 135
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 136
    .line 137
    invoke-direct {p0, v1, v3}, Landroidx/camera/video/Recorder;->updateEncoderCallbacks(Landroidx/camera/video/Recorder$RecordingRecord;Z)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 141
    .line 142
    invoke-interface {v1}, Landroidx/camera/video/internal/encoder/Encoder;->start()V

    .line 143
    .line 144
    .line 145
    iget-boolean v1, p0, Landroidx/camera/video/Recorder;->mShouldSendResumeEvent:Z

    .line 146
    .line 147
    if-eqz v1, :cond_3

    .line 148
    .line 149
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 150
    .line 151
    invoke-virtual {v1}, Landroidx/camera/video/Recorder$RecordingRecord;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->getInProgressRecordingStats()Landroidx/camera/video/RecordingStats;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-static {v2, v3}, Landroidx/camera/video/VideoRecordEvent;->resume(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;)Landroidx/camera/video/VideoRecordEvent$Resume;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Landroidx/camera/video/Recorder$RecordingRecord;->updateVideoRecordEvent(Landroidx/camera/video/VideoRecordEvent;)V

    .line 164
    .line 165
    .line 166
    iput-boolean v5, p0, Landroidx/camera/video/Recorder;->mShouldSendResumeEvent:Z

    .line 167
    .line 168
    :cond_3
    if-eqz v0, :cond_6

    .line 169
    .line 170
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 171
    .line 172
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/Encoder;->pause()V

    .line 173
    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_4
    if-eqz v4, :cond_5

    .line 177
    .line 178
    invoke-direct {p0, v4, v0}, Landroidx/camera/video/Recorder;->startRecording(Landroidx/camera/video/Recorder$RecordingRecord;Z)V

    .line 179
    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_5
    if-eqz v2, :cond_6

    .line 183
    .line 184
    invoke-direct {p0, v2, v7, v6}, Landroidx/camera/video/Recorder;->finalizePendingRecording(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    :goto_6
    return-void

    .line 188
    :goto_7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    throw v0

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public onEncoderSetupError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "Encountered encoder setup error while in unexpected state "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    new-instance v2, Ljava/lang/AssertionError;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ": "

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw v2

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :pswitch_1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 48
    .line 49
    iput-object v3, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 50
    .line 51
    move-object v3, v0

    .line 52
    :pswitch_2
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0, v0}, Landroidx/camera/video/Recorder;->setStreamId(I)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Landroidx/camera/video/Recorder$State;->ERROR:Landroidx/camera/video/Recorder$State;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    if-eqz v3, :cond_0

    .line 63
    .line 64
    const/4 v0, 0x7

    .line 65
    invoke-direct {p0, v3, v0, p1}, Landroidx/camera/video/Recorder;->finalizePendingRecording(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void

    .line 69
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p1

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onInProgressRecordingInternalError(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V
    .locals 10
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "In-progress recording error occurred while in unexpected state: "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 4
    .line 5
    if-ne p1, v1, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    packed-switch v2, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :pswitch_0
    sget-object v0, Landroidx/camera/video/Recorder$State;->STOPPING:Landroidx/camera/video/Recorder$State;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :goto_0
    :pswitch_1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 31
    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const-wide/16 v6, -0x1

    .line 38
    .line 39
    move-object v4, p0

    .line 40
    move-object v5, p1

    .line 41
    move v8, p2

    .line 42
    move-object v9, p3

    .line 43
    invoke-virtual/range {v4 .. v9}, Landroidx/camera/video/Recorder;->stopInternal(Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 48
    .line 49
    const-string p2, "Internal error occurred for recording but it is not the active recording."

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :pswitch_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 56
    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p3, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 63
    .line 64
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 78
    .line 79
    const-string p2, "Internal error occurred on recording that is not the current in-progress recording."

    .line 80
    .line 81
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSourceStateChanged(Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 3
    .param p1    # Landroidx/camera/video/VideoOutput$SourceState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L딌뎰뎡두땜디뒘딝딌땔듻땀돼따땨될되둬뒻땭돠뒋딄뒨돵땧땋듔뒉듐땐딸뒨드뎡됐듼땪땭듻두돴둔된뒐땍뒐땨딜뒉땠듟땍된디뎬두땍딁돝딤딌듐둑땦뎡뒷땠뒐됩디둬뒀될땵딤듌득딀뎡땹들돛돠땥땥딐뎨딟땤돰돝뒻둠땲돶땜둘듻득됩듼딀딜뒉딁듸듬땬둠듐듌돼땨듰디뒼땄땨뎡땠돵딨돴딽됴듬돠땮땵;

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, v2}, L딌뎰뎡두땜디뒘딝딌땔듻땀돼따땨될되둬뒻땭돠뒋딄뒨돵땧땋듔뒉듐땐딸뒨드뎡됐듼땪땭듻두돴둔된뒐땍뒐땨딜뒉땠듟땍된디뎬두땍딁돝딤딌듐둑땦뎡뒷땠뒐됩디둬뒀될땵딤듌득딀뎡땹들돛돠땥땥딐뎨딟땤돰돝뒻둠땲돶땜둘듻득됩듼딀딜뒉딁듸듬땬둠듐듌돼땨듰디뒼땄땨뎡땠돵딨돴딽됴듬돠땮땵;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onSourceStateChangedInternal(Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 3
    .param p1    # Landroidx/camera/video/VideoOutput$SourceState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    .line 4
    .line 5
    const-string v1, "Recorder"

    .line 6
    .line 7
    if-eq v0, p1, :cond_4

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Video source has transitioned to state: "

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mActiveSurface:Landroid/view/Surface;

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    const/4 v2, 0x0

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mSetupVideoTask:Landroidx/camera/video/Recorder$SetupVideoTask;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$SetupVideoTask;->cancelFailedRetry()V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Landroidx/camera/video/Recorder;->mSetupVideoTask:Landroidx/camera/video/Recorder$SetupVideoTask;

    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0, v0, v2, v1}, Landroidx/camera/video/Recorder;->requestReset(ILjava/lang/Throwable;Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Landroidx/camera/video/Recorder;->mNeedsResetBeforeNextStart:Z

    .line 52
    .line 53
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->isPersistent()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 64
    .line 65
    invoke-virtual {p0, p1, v0, v2}, Landroidx/camera/video/Recorder;->onInProgressRecordingInternalError(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    sget-object v0, Landroidx/camera/video/VideoOutput$SourceState;->ACTIVE_NON_STREAMING:Landroidx/camera/video/VideoOutput$SourceState;

    .line 70
    .line 71
    if-ne p1, v0, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mSourceNonStreamingTimeout:Ljava/util/concurrent/ScheduledFuture;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-static {p1}, Landroidx/camera/video/Recorder;->notifyEncoderSourceStopped(Landroidx/camera/video/internal/encoder/Encoder;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_0
    return-void

    .line 91
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v2, "Video source transitions to the same state: "

    .line 94
    .line 95
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V
    .locals 1
    .param p1    # Landroidx/camera/core/SurfaceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    invoke-virtual {p0, p1, v0}, Landroidx/camera/video/Recorder;->onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    return-void
.end method

.method public onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V
    .locals 4
    .param p1    # Landroidx/camera/core/SurfaceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/Timebase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2
    const-string v0, "Surface is requested in state: "

    iget-object v1, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    const-string v2, "Recorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Current surface: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    sget-object v2, Landroidx/camera/video/Recorder$State;->ERROR:Landroidx/camera/video/Recorder$State;

    if-ne v0, v2, :cond_0

    .line 5
    sget-object v0, Landroidx/camera/video/Recorder$State;->CONFIGURING:Landroidx/camera/video/Recorder$State;

    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, L뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2, p1, p2}, L뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 8
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onVideoEncoderReady(Landroidx/camera/video/VideoEncoderSession;)V
    .locals 2
    .param p1    # Landroidx/camera/video/VideoEncoderSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/camera/video/VideoEncoderSession;->getVideoEncoder()Landroidx/camera/video/internal/encoder/Encoder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/Encoder;->getEncoderInfo()Landroidx/camera/video/internal/encoder/EncoderInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoderBitrateRange:Landroid/util/Range;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/Encoder;->getConfiguredBitrate()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Landroidx/camera/video/Recorder;->mFirstRecordingVideoBitrate:I

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/camera/video/VideoEncoderSession;->getActiveSurface()Landroid/view/Surface;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mActiveSurface:Landroid/view/Surface;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setLatestSurface(Landroid/view/Surface;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    new-instance v1, L땃땅딎땋둘둔둠땠땍됨땜돴디딃땡돴돛둡뒷둣땵땜땀뒤딎둔듐땁땥뒤딄땣땧된둠돷듽땣땪뒙뒨뒷땸뒻뒨땠땩뒀딄딄땣뎨뎬된돸듰듨뒬딟돵뒻도땟딤뒼땀땨땦딅된땡땤뒝땩뒨땔듰땀뎨땸돵땝둡되뒤딀뒐뒝돼듰돳땯딜땝들뒼땫땋됴둑땩됨뎨된뒷땅든땬든돤땹뒙딁둬듼뒉뒋돠땃뒐뎸돷됐뎰뒋돶딸둔되뎰;

    .line 39
    .line 40
    invoke-direct {v1, p0}, L땃땅딎땋둘둔둠땠땍됨땜돴디딃땡돴돛둡뒷둣땵땜땀뒤딎둔듐땁땥뒤딄땣땧된둠돷듽땣땪뒙뒨뒷땸뒻뒨땠땩뒀딄딄땣뎨뎬된돸듰듨뒬딟돵뒻도땟딤뒼땀땨땦딅된땡땤뒝땩뒨땔듰땀뎨땸돵땝둡되뒤딀뒐뒝돼듰돳땯딜땝들뒼땫땋됴둑땩됨뎨된뒷땅든땬든돤땹뒙딁둬듼뒉뒋돠땃뒐뎸돷됐뎰뒋돶딸둔되뎰;-><init>(Landroidx/camera/video/Recorder;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroidx/camera/video/VideoEncoderSession;->setOnSurfaceUpdateListener(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput$OnSurfaceUpdateListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/camera/video/VideoEncoderSession;->getReadyToReleaseFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Landroidx/camera/video/Recorder$1;

    .line 51
    .line 52
    invoke-direct {v1, p0, p1}, Landroidx/camera/video/Recorder$1;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/VideoEncoderSession;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 56
    .line 57
    invoke-static {v0, v1, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public pause(Landroidx/camera/video/Recording;)V
    .locals 4
    .param p1    # Landroidx/camera/video/Recording;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "Called pause() from invalid state: "

    .line 2
    .line 3
    const-string v1, "pause() called on a recording that is no longer active: "

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 9
    .line 10
    invoke-static {p1, v3}, Landroidx/camera/video/Recorder;->isSameRecording(Landroidx/camera/video/Recording;Landroidx/camera/video/Recorder$RecordingRecord;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 17
    .line 18
    invoke-static {p1, v3}, Landroidx/camera/video/Recorder;->isSameRecording(Landroidx/camera/video/Recording;Landroidx/camera/video/Recorder$RecordingRecord;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    const-string v0, "Recorder"

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/camera/video/Recording;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    monitor-exit v2

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    if-eq p1, v1, :cond_2

    .line 59
    .line 60
    const/4 v1, 0x3

    .line 61
    if-eq p1, v1, :cond_3

    .line 62
    .line 63
    const/4 v0, 0x4

    .line 64
    if-eq p1, v0, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    sget-object p1, Landroidx/camera/video/Recorder$State;->PAUSED:Landroidx/camera/video/Recorder$State;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 75
    .line 76
    new-instance v1, Landroidx/camera/video/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    invoke-direct {v1, p0, p1, v3}, Landroidx/camera/video/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    sget-object p1, Landroidx/camera/video/Recorder$State;->PENDING_PAUSED:Landroidx/camera/video/Recorder$State;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    monitor-exit v2

    .line 92
    return-void

    .line 93
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p1
.end method

.method public prepareRecording(Landroid/content/Context;Landroidx/camera/video/FileDescriptorOutputOptions;)Landroidx/camera/video/PendingRecording;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/FileDescriptorOutputOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/Recorder;->prepareRecordingInternal(Landroid/content/Context;Landroidx/camera/video/OutputOptions;)Landroidx/camera/video/PendingRecording;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "File descriptors as output destinations are not supported on pre-Android O (API 26) devices."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareRecording(Landroid/content/Context;Landroidx/camera/video/FileOutputOptions;)Landroidx/camera/video/PendingRecording;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/FileOutputOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/Recorder;->prepareRecordingInternal(Landroid/content/Context;Landroidx/camera/video/OutputOptions;)Landroidx/camera/video/PendingRecording;

    move-result-object p1

    return-object p1
.end method

.method public prepareRecording(Landroid/content/Context;Landroidx/camera/video/MediaStoreOutputOptions;)Landroidx/camera/video/PendingRecording;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/MediaStoreOutputOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/Recorder;->prepareRecordingInternal(Landroid/content/Context;Landroidx/camera/video/OutputOptions;)Landroidx/camera/video/PendingRecording;

    move-result-object p1

    return-object p1
.end method

.method public requestReset(ILjava/lang/Throwable;Z)V
    .locals 11
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "In-progress recording shouldn\'t be null when in state "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    packed-switch v2, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    :pswitch_0
    goto :goto_0

    .line 18
    :pswitch_1
    sget-object v0, Landroidx/camera/video/Recorder$State;->RESETTING:Landroidx/camera/video/Recorder$State;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    const/4 v3, 0x0

    .line 24
    goto :goto_2

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_4

    .line 27
    :pswitch_2
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 40
    .line 41
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 54
    .line 55
    if-ne v0, v2, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isPersistentRecordingInProgress()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    sget-object v0, Landroidx/camera/video/Recorder$State;->RESETTING:Landroidx/camera/video/Recorder$State;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 67
    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x1

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 73
    .line 74
    const-string p2, "In-progress recording does not match the active recording. Unable to reset encoder."

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :pswitch_3
    sget-object v0, Landroidx/camera/video/Recorder$State;->RESETTING:Landroidx/camera/video/Recorder$State;

    .line 81
    .line 82
    invoke-direct {p0, v0}, Landroidx/camera/video/Recorder;->updateNonPendingState(Landroidx/camera/video/Recorder$State;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    :pswitch_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    if-eqz p3, :cond_3

    .line 89
    .line 90
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->resetVideo()V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->reset()V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    if-eqz v4, :cond_5

    .line 99
    .line 100
    iget-object v6, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 101
    .line 102
    const-wide/16 v7, -0x1

    .line 103
    .line 104
    move-object v5, p0

    .line 105
    move v9, p1

    .line 106
    move-object v10, p2

    .line 107
    invoke-virtual/range {v5 .. v10}, Landroidx/camera/video/Recorder;->stopInternal(Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_3
    return-void

    .line 111
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p1

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public resume(Landroidx/camera/video/Recording;)V
    .locals 4
    .param p1    # Landroidx/camera/video/Recording;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "Called resume() from invalid state: "

    .line 2
    .line 3
    const-string v1, "resume() called on a recording that is no longer active: "

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 9
    .line 10
    invoke-static {p1, v3}, Landroidx/camera/video/Recorder;->isSameRecording(Landroidx/camera/video/Recording;Landroidx/camera/video/Recorder$RecordingRecord;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 17
    .line 18
    invoke-static {p1, v3}, Landroidx/camera/video/Recorder;->isSameRecording(Landroidx/camera/video/Recording;Landroidx/camera/video/Recorder$RecordingRecord;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    const-string v0, "Recorder"

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/camera/video/Recording;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    monitor-exit v2

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const/4 v1, 0x5

    .line 58
    if-eq p1, v1, :cond_2

    .line 59
    .line 60
    const/4 v1, 0x2

    .line 61
    if-eq p1, v1, :cond_1

    .line 62
    .line 63
    const/4 v1, 0x3

    .line 64
    if-eq p1, v1, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    sget-object p1, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    sget-object p1, Landroidx/camera/video/Recorder$State;->RECORDING:Landroidx/camera/video/Recorder$State;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 79
    .line 80
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 81
    .line 82
    new-instance v1, Landroidx/camera/video/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-direct {v1, p0, p1, v3}, Landroidx/camera/video/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    monitor-exit v2

    .line 92
    return-void

    .line 93
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p1
.end method

.method public setAudioState(Landroidx/camera/video/Recorder$AudioState;)V
    .locals 2
    .param p1    # Landroidx/camera/video/Recorder$AudioState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Transitioning audio state: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mAudioState:Landroidx/camera/video/Recorder$AudioState;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " --> "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "Recorder"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mAudioState:Landroidx/camera/video/Recorder$AudioState;

    .line 31
    .line 32
    return-void
.end method

.method public setInProgressTransformationInfo(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 4
    .param p1    # Landroidx/camera/core/SurfaceRequest$TransformationInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "Recorder"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Update stream transformation info: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mInProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mStreamInfo:Landroidx/camera/core/impl/MutableStateObservable;

    .line 26
    .line 27
    iget v2, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    .line 28
    .line 29
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 30
    .line 31
    invoke-direct {p0, v3}, Landroidx/camera/video/Recorder;->internalStateToStreamState(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v2, v3, p1}, Landroidx/camera/video/StreamInfo;->of(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)Landroidx/camera/video/StreamInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Landroidx/camera/core/impl/MutableStateObservable;->setState(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method

.method public setLatestSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLatestSurface:Landroid/view/Surface;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mLatestSurface:Landroid/view/Surface;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->setStreamId(I)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method public setState(Landroidx/camera/video/Recorder$State;)V
    .locals 3
    .param p1    # Landroidx/camera/video/Recorder$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 2
    .line 3
    if-eq v0, p1, :cond_4

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Transitioning Recorder internal state: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "Recorder"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Landroidx/camera/video/Recorder;->PENDING_STATES:Ljava/util/Set;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    sget-object v0, Landroidx/camera/video/Recorder;->VALID_NON_PENDING_STATES_WHILE_PENDING:Ljava/util/Set;

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 54
    .line 55
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 62
    .line 63
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    .line 64
    .line 65
    invoke-direct {p0, v0}, Landroidx/camera/video/Recorder;->internalStateToStreamState(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "Invalid state transition. Should not be transitioning to a PENDING state from state "

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    iput-object v2, p0, Landroidx/camera/video/Recorder;->mNonPendingState:Landroidx/camera/video/Recorder$State;

    .line 97
    .line 98
    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 99
    .line 100
    if-nez v2, :cond_3

    .line 101
    .line 102
    invoke-direct {p0, p1}, Landroidx/camera/video/Recorder;->internalStateToStreamState(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/StreamInfo$StreamState;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    :cond_3
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mStreamInfo:Landroidx/camera/core/impl/MutableStateObservable;

    .line 107
    .line 108
    iget v0, p0, Landroidx/camera/video/Recorder;->mStreamId:I

    .line 109
    .line 110
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mInProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 111
    .line 112
    invoke-static {v0, v2, v1}, Landroidx/camera/video/StreamInfo;->of(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)Landroidx/camera/video/StreamInfo;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/MutableStateObservable;->setState(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v2, "Attempted to transition to state "

    .line 125
    .line 126
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, ", but Recorder is already in state "

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    throw v0
.end method

.method public setupAndStartMediaMuxer(Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 12
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 4
    .line 5
    if-nez v2, :cond_a

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isAudioEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    .line 14
    .line 15
    invoke-interface {v2}, Landroidx/camera/core/internal/utils/RingBuffer;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 23
    .line 24
    const-string v0, "Audio is enabled but no audio sample is ready. Cannot start media muxer."

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    .line 31
    .line 32
    if-eqz v2, :cond_9

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    :try_start_0
    iput-object v3, p0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    .line 36
    .line 37
    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/EncodedData;->getPresentationTimeUs()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-direct {p0, v4, v5}, Landroidx/camera/video/Recorder;->getAudioDataToWriteAndClearCache(J)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/EncodedData;->size()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_2

    .line 58
    .line 59
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Landroidx/camera/video/internal/encoder/EncodedData;

    .line 64
    .line 65
    invoke-interface {v8}, Landroidx/camera/video/internal/encoder/EncodedData;->size()J

    .line 66
    .line 67
    .line 68
    move-result-wide v8

    .line 69
    add-long/2addr v5, v8

    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_2
    iget-wide v7, p0, Landroidx/camera/video/Recorder;->mFileSizeLimitInBytes:J

    .line 75
    .line 76
    const-wide/16 v9, 0x0

    .line 77
    .line 78
    cmp-long v11, v7, v9

    .line 79
    .line 80
    if-eqz v11, :cond_3

    .line 81
    .line 82
    cmp-long v9, v5, v7

    .line 83
    .line 84
    if-lez v9, :cond_3

    .line 85
    .line 86
    const-string v4, "Recorder"

    .line 87
    .line 88
    const-string v7, "Initial data exceeds file size limit %d > %d"

    .line 89
    .line 90
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    iget-wide v8, p0, Landroidx/camera/video/Recorder;->mFileSizeLimitInBytes:J

    .line 95
    .line 96
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    new-array v8, v1, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object v5, v8, v0

    .line 103
    .line 104
    const/4 v0, 0x1

    .line 105
    aput-object v6, v8, v0

    .line 106
    .line 107
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v4, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1, v1, v3}, Landroidx/camera/video/Recorder;->onInProgressRecordingInternalError(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_3
    const/4 v1, 0x5

    .line 122
    :try_start_1
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mMediaSpec:Landroidx/camera/core/impl/MutableStateObservable;

    .line 123
    .line 124
    invoke-virtual {p0, v3}, Landroidx/camera/video/Recorder;->getObservableData(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Landroidx/camera/video/MediaSpec;

    .line 129
    .line 130
    invoke-virtual {v3}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    const/4 v6, -0x1

    .line 135
    if-ne v5, v6, :cond_4

    .line 136
    .line 137
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mResolvedEncoderProfiles:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 138
    .line 139
    sget-object v5, Landroidx/camera/video/Recorder;->MEDIA_SPEC_DEFAULT:Landroidx/camera/video/MediaSpec;

    .line 140
    .line 141
    invoke-virtual {v5}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    invoke-static {v5}, Landroidx/camera/video/MediaSpec;->outputFormatToMuxerFormat(I)I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    invoke-static {v3, v5}, Landroidx/camera/video/Recorder;->supportedMuxerFormatOrDefaultFrom(Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;I)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    goto :goto_2

    .line 154
    :catch_0
    move-exception v0

    .line 155
    goto/16 :goto_5

    .line 156
    .line 157
    :cond_4
    invoke-virtual {v3}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-static {v3}, Landroidx/camera/video/MediaSpec;->outputFormatToMuxerFormat(I)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    :goto_2
    new-instance v5, L땄뒋땃딌땝둡둡딸듽뒐디딅땯돶땬됐듸뒤땭딹됴드딝뒹뎽딞됨딸땻됴딝땸뒋뎽뒐뎠뎸뒐땫돨뎹딀뎽둘땻땀땜뒀땤됨둣돵듨둠땟땬땁듼됨땫땦둬땄땄됐디땰드뎸뎰딐땠두뒬뒷땐땥듸됩땧둡땬뎻땄딸뎡땪둔딹뒹뎻뎡둘돸뎨딌땲듌됐됴땀땸듻돰뒹듸뒝돶듨땱뎡뒙땸돴돰둔되땝드돠돝둬땯뒘뒛뎬땠뎰딁뒻;

    .line 166
    .line 167
    invoke-direct {v5, p0, v0}, L땄뒋땃딌땝둡둡딸듽뒐디딅땯돶땬됐듸뒤땭딹됴드딝뒹뎽딞됨딸땻됴딝땸뒋뎽뒐뎠뎸뒐땫돨뎹딀뎽둘땻땀땜뒀땤됨둣돵듨둠땟땬땁듼됨땫땦둬땄땄됐디땰드뎸뎰딐땠두뒬뒷땐땥듸됩땧둡땬뎻땄딸뎡땪둔딹뒹뎻뎡둘돸뎨딌땲듌됐됴땀땸듻돰뒹듸뒝돶듨땱뎡뒙땸돴돰둔되땝드돠돝둬땯뒘뒛뎬땠뎰딁뒻;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v3, v5}, Landroidx/camera/video/Recorder$RecordingRecord;->performOneTimeMediaMuxerCreation(ILandroidx/core/util/Consumer;)Landroid/media/MediaMuxer;

    .line 171
    .line 172
    .line 173
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :try_start_2
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mSourceTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 175
    .line 176
    if-eqz v3, :cond_5

    .line 177
    .line 178
    invoke-virtual {p0, v3}, Landroidx/camera/video/Recorder;->setInProgressTransformationInfo(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->getRotationDegrees()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    invoke-virtual {v0, v3}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 186
    .line 187
    .line 188
    :cond_5
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v3}, Landroidx/camera/video/OutputOptions;->getLocation()Landroid/location/Location;

    .line 193
    .line 194
    .line 195
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    if-eqz v3, :cond_6

    .line 197
    .line 198
    :try_start_3
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    .line 199
    .line 200
    .line 201
    move-result-wide v5

    .line 202
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    .line 203
    .line 204
    .line 205
    move-result-wide v7

    .line 206
    invoke-static {v5, v6, v7, v8}, Landroidx/camera/video/internal/workaround/CorrectNegativeLatLongForMediaMuxer;->adjustGeoLocation(DD)Landroid/util/Pair;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v5, Ljava/lang/Double;

    .line 213
    .line 214
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 215
    .line 216
    .line 217
    move-result-wide v5

    .line 218
    double-to-float v5, v5

    .line 219
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v3, Ljava/lang/Double;

    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 224
    .line 225
    .line 226
    move-result-wide v6

    .line 227
    double-to-float v3, v6

    .line 228
    invoke-virtual {v0, v5, v3}, Landroid/media/MediaMuxer;->setLocation(FF)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :catch_1
    move-exception v3

    .line 233
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, p1, v1, v3}, Landroidx/camera/video/Recorder;->onInProgressRecordingInternalError(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 237
    .line 238
    .line 239
    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_6
    :goto_3
    :try_start_5
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mVideoOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

    .line 244
    .line 245
    invoke-interface {v1}, Landroidx/camera/video/internal/encoder/OutputConfig;->getMediaFormat()Landroid/media/MediaFormat;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    iput-object v1, p0, Landroidx/camera/video/Recorder;->mVideoTrackIndex:Ljava/lang/Integer;

    .line 258
    .line 259
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isAudioEnabled()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_7

    .line 264
    .line 265
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mAudioOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

    .line 266
    .line 267
    invoke-interface {v1}, Landroidx/camera/video/internal/encoder/OutputConfig;->getMediaFormat()Landroid/media/MediaFormat;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    iput-object v1, p0, Landroidx/camera/video/Recorder;->mAudioTrackIndex:Ljava/lang/Integer;

    .line 280
    .line 281
    :cond_7
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 282
    .line 283
    .line 284
    iput-object v0, p0, Landroidx/camera/video/Recorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 285
    .line 286
    invoke-virtual {p0, v2, p1}, Landroidx/camera/video/Recorder;->writeVideoData(Landroidx/camera/video/internal/encoder/EncodedData;Landroidx/camera/video/Recorder$RecordingRecord;)V

    .line 287
    .line 288
    .line 289
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_8

    .line 298
    .line 299
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    check-cast v1, Landroidx/camera/video/internal/encoder/EncodedData;

    .line 304
    .line 305
    invoke-virtual {p0, v1, p1}, Landroidx/camera/video/Recorder;->writeAudioData(Landroidx/camera/video/internal/encoder/EncodedData;Landroidx/camera/video/Recorder$RecordingRecord;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 306
    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_8
    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :goto_5
    :try_start_6
    invoke-virtual {p0, p1, v1, v0}, Landroidx/camera/video/Recorder;->onInProgressRecordingInternalError(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 314
    .line 315
    .line 316
    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :goto_6
    :try_start_7
    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :catchall_1
    move-exception v0

    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 326
    .line 327
    .line 328
    :goto_7
    throw p1

    .line 329
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    .line 330
    .line 331
    const-string v0, "Media muxer cannot be started without an encoded video frame."

    .line 332
    .line 333
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    throw p1

    .line 337
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    .line 338
    .line 339
    const-string v0, "Unable to set up media muxer when one already exists."

    .line 340
    .line 341
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    throw p1
.end method

.method public start(Landroidx/camera/video/PendingRecording;)Landroidx/camera/video/Recording;
    .locals 9
    .param p1    # Landroidx/camera/video/PendingRecording;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "The given PendingRecording cannot be null."

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-wide v1, p0, Landroidx/camera/video/Recorder;->mLastGeneratedRecordingId:J

    .line 10
    .line 11
    const-wide/16 v3, 0x1

    .line 12
    .line 13
    add-long/2addr v1, v3

    .line 14
    iput-wide v1, p0, Landroidx/camera/video/Recorder;->mLastGeneratedRecordingId:J

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    packed-switch v3, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :pswitch_0
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 30
    .line 31
    :goto_0
    move-object v8, v4

    .line 32
    move-object v4, v3

    .line 33
    move-object v3, v8

    .line 34
    goto :goto_4

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :pswitch_1
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 39
    .line 40
    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroidx/camera/video/Recorder$RecordingRecord;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_2
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 48
    .line 49
    sget-object v6, Landroidx/camera/video/Recorder$State;->IDLING:Landroidx/camera/video/Recorder$State;

    .line 50
    .line 51
    if-ne v3, v6, :cond_1

    .line 52
    .line 53
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 54
    .line 55
    if-nez v3, :cond_0

    .line 56
    .line 57
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 58
    .line 59
    if-nez v3, :cond_0

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const/4 v3, 0x0

    .line 64
    :goto_1
    const-string v7, "Expected recorder to be idle but a recording is either pending or in progress."

    .line 65
    .line 66
    invoke-static {v3, v7}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    :cond_1
    :try_start_1
    invoke-static {p1, v1, v2}, Landroidx/camera/video/Recorder$RecordingRecord;->from(Landroidx/camera/video/PendingRecording;J)Landroidx/camera/video/Recorder$RecordingRecord;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {p1}, Landroidx/camera/video/PendingRecording;->getApplicationContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v3, v7}, Landroidx/camera/video/Recorder$RecordingRecord;->initializeRecording(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    iput-object v3, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 81
    .line 82
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 83
    .line 84
    if-ne v3, v6, :cond_2

    .line 85
    .line 86
    sget-object v3, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    .line 87
    .line 88
    invoke-virtual {p0, v3}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 92
    .line 93
    new-instance v6, L땃딝땦딄듻뒋듰둘듼뎡듐뒬뒹뎨뒈딁딁돝땝됩뒨땄뒐땡땨땀딜딌되됴땩돠됫딤돳딀땠둬뒙돛둥됐돼딞딽됨드딟땠땤되딝땝땲돛딌둘땵땪든땠땐땪땅땤듟듌땁돷뒾뒀듬땪딄땨디땯땜땃들돠둡땠듔듌돵돼뒾딸디뒈뒻딨됫뒐뒨뒐딐땅돨땦땐뒙뒈디땮뎨뒬돶땰뒤뒹뒻딐땦듰땨뒘듻땵땯득돳뒝딟땋된땧딌땻;

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    invoke-direct {v6, p0, v7}, L땃딝땦딄듻뒋듰둘듼뎡듐뒬뒹뎨뒈딁딁돝땝됩뒨땄뒐땡땨땀딜딌되됴땩돠됫딤돳딀땠둬뒙돛둥됐돼딞딽됨드딟땠땤되딝땝땲돛딌둘땵땪든땠땐땪땅땤듟듌땁돷뒾뒀듬땪딄땨디땯땜땃들돠둡땠듔듌돵돼뒾딸디뒈뒻딨됫뒐뒨뒐딐땅돨땦땐뒙뒈디땮뎨뒬돶땰뒤뒹뒻딐땦듰땨뒘듻땵땯득돳뒝딟땋된땧딌땻;-><init>(Landroidx/camera/video/Recorder;I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catch_0
    move-exception v3

    .line 104
    goto :goto_3

    .line 105
    :cond_2
    sget-object v6, Landroidx/camera/video/Recorder$State;->ERROR:Landroidx/camera/video/Recorder$State;

    .line 106
    .line 107
    if-ne v3, v6, :cond_3

    .line 108
    .line 109
    sget-object v3, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    .line 110
    .line 111
    invoke-virtual {p0, v3}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 115
    .line 116
    new-instance v6, L땃딝땦딄듻뒋듰둘듼뎡듐뒬뒹뎨뒈딁딁돝땝됩뒨땄뒐땡땨땀딜딌되됴땩돠됫딤돳딀땠둬뒙돛둥됐돼딞딽됨드딟땠땤되딝땝땲돛딌둘땵땪든땠땐땪땅땤듟듌땁돷뒾뒀듬땪딄땨디땯땜땃들돠둡땠듔듌돵돼뒾딸디뒈뒻딨됫뒐뒨뒐딐땅돨땦땐뒙뒈디땮뎨뒬돶땰뒤뒹뒻딐땦듰땨뒘듻땵땯득돳뒝딟땋된땧딌땻;

    .line 117
    .line 118
    const/4 v7, 0x1

    .line 119
    invoke-direct {v6, p0, v7}, L땃딝땦딄듻뒋듰둘듼뎡듐뒬뒹뎨뒈딁딁돝땝됩뒨땄뒐땡땨땀딜딌되됴땩돠됫딤돳딀땠둬뒙돛둥됐돼딞딽됨드딟땠땤되딝땝땲돛딌둘땵땪든땠땐땪땅땤듟듌땁돷뒾뒀듬땪딄땨디땯땜땃들돠둡땠듔듌돵돼뒾딸디뒈뒻딨됫뒐뒨뒐딐땅돨땦땐뒙뒈디땮뎨뒬돶땰뒤뒹뒻딐땦듰땨뒘듻땵땯득돳뒝딟땋된땧딌땻;-><init>(Landroidx/camera/video/Recorder;I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    sget-object v3, Landroidx/camera/video/Recorder$State;->PENDING_RECORDING:Landroidx/camera/video/Recorder$State;

    .line 127
    .line 128
    invoke-virtual {p0, v3}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    .line 131
    :goto_2
    move-object v3, v4

    .line 132
    goto :goto_4

    .line 133
    :goto_3
    const/4 v5, 0x5

    .line 134
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    if-nez v4, :cond_5

    .line 136
    .line 137
    if-eqz v5, :cond_4

    .line 138
    .line 139
    const-string v0, "Recorder"

    .line 140
    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v6, "Recording was started when the Recorder had encountered error "

    .line 144
    .line 145
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {v0, v4}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-static {p1, v1, v2}, Landroidx/camera/video/Recorder$RecordingRecord;->from(Landroidx/camera/video/PendingRecording;J)Landroidx/camera/video/Recorder$RecordingRecord;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-direct {p0, v0, v5, v3}, Landroidx/camera/video/Recorder;->finalizePendingRecording(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v1, v2}, Landroidx/camera/video/Recording;->createFinalizedFrom(Landroidx/camera/video/PendingRecording;J)Landroidx/camera/video/Recording;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    return-object p1

    .line 170
    :cond_4
    invoke-static {p1, v1, v2}, Landroidx/camera/video/Recording;->from(Landroidx/camera/video/PendingRecording;J)Landroidx/camera/video/Recording;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    return-object p1

    .line 175
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    const-string v0, "A recording is already in progress. Previous recordings must be stopped before a new recording can be started."

    .line 178
    .line 179
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p1

    .line 183
    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    throw p1

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public stop(Landroidx/camera/video/Recording;ILjava/lang/Throwable;)V
    .locals 12
    .param p1    # Landroidx/camera/video/Recording;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "stop() called on a recording that is no longer active: "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 7
    .line 8
    invoke-static {p1, v2}, Landroidx/camera/video/Recorder;->isSameRecording(Landroidx/camera/video/Recording;Landroidx/camera/video/Recorder$RecordingRecord;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 15
    .line 16
    invoke-static {p1, v2}, Landroidx/camera/video/Recorder;->isSameRecording(Landroidx/camera/video/Recording;Landroidx/camera/video/Recorder$RecordingRecord;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string p2, "Recorder"

    .line 23
    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/camera/video/Recording;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v2, 0x0

    .line 54
    packed-switch v0, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 59
    .line 60
    invoke-static {p1, v0}, Landroidx/camera/video/Recorder;->isSameRecording(Landroidx/camera/video/Recording;Landroidx/camera/video/Recorder$RecordingRecord;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_1
    sget-object p1, Landroidx/camera/video/Recorder$State;->STOPPING:Landroidx/camera/video/Recorder$State;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->setState(Landroidx/camera/video/Recorder$State;)V

    .line 71
    .line 72
    .line 73
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    iget-object v7, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 84
    .line 85
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 86
    .line 87
    new-instance v0, Landroidx/camera/video/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;

    .line 88
    .line 89
    move-object v5, v0

    .line 90
    move-object v6, p0

    .line 91
    move v10, p2

    .line 92
    move-object v11, p3

    .line 93
    invoke-direct/range {v5 .. v11}, Landroidx/camera/video/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;-><init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_2
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 101
    .line 102
    invoke-static {p1, v0}, Landroidx/camera/video/Recorder;->isSameRecording(Landroidx/camera/video/Recording;Landroidx/camera/video/Recorder$RecordingRecord;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 110
    .line 111
    iput-object v2, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 112
    .line 113
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->restoreNonPendingState()V

    .line 114
    .line 115
    .line 116
    move-object v2, p1

    .line 117
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    const/16 p1, 0xa

    .line 121
    .line 122
    if-ne p2, p1, :cond_1

    .line 123
    .line 124
    const-string p1, "Recorder"

    .line 125
    .line 126
    const-string p2, "Recording was stopped due to recording being garbage collected before any valid data has been produced."

    .line 127
    .line 128
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 132
    .line 133
    const-string p2, "Recording was stopped before any data could be produced."

    .line 134
    .line 135
    invoke-direct {p1, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    const/16 p2, 0x8

    .line 139
    .line 140
    invoke-direct {p0, v2, p2, p1}, Landroidx/camera/video/Recorder;->finalizePendingRecording(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    :cond_2
    return-void

    .line 144
    :pswitch_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 145
    .line 146
    const-string p2, "Calling stop() while idling or initializing is invalid."

    .line 147
    .line 148
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    throw p1

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public stopInternal(Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V
    .locals 2
    .param p1    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 2
    .line 3
    if-ne v0, p1, :cond_3

    .line 4
    .line 5
    iget-boolean p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecordingStopping:Z

    .line 6
    .line 7
    if-nez p1, :cond_3

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroidx/camera/video/Recorder;->mInProgressRecordingStopping:Z

    .line 11
    .line 12
    iput p4, p0, Landroidx/camera/video/Recorder;->mRecordingStopError:I

    .line 13
    .line 14
    iput-object p5, p0, Landroidx/camera/video/Recorder;->mRecordingStopErrorCause:Ljava/lang/Throwable;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->isAudioEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->clearPendingAudioRingBuffer()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mAudioEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 26
    .line 27
    invoke-interface {p1, p2, p3}, Landroidx/camera/video/internal/encoder/Encoder;->stop(J)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    .line 41
    .line 42
    sget-object p4, Landroidx/camera/video/VideoOutput$SourceState;->ACTIVE_NON_STREAMING:Landroidx/camera/video/VideoOutput$SourceState;

    .line 43
    .line 44
    if-eq p1, p4, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 47
    .line 48
    new-instance p4, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;

    .line 49
    .line 50
    const/4 p5, 0x2

    .line 51
    invoke-direct {p4, p1, p5}, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;-><init>(Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mSequentialExecutor:Ljava/util/concurrent/Executor;

    .line 55
    .line 56
    const-wide/16 v0, 0x3e8

    .line 57
    .line 58
    sget-object p5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 59
    .line 60
    invoke-static {p4, p1, v0, v1, p5}, Landroidx/camera/video/Recorder;->scheduleTask(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Landroidx/camera/video/Recorder;->mSourceNonStreamingTimeout:Ljava/util/concurrent/ScheduledFuture;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 68
    .line 69
    invoke-static {p1}, Landroidx/camera/video/Recorder;->notifyEncoderSourceStopped(Landroidx/camera/video/internal/encoder/Encoder;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object p1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 73
    .line 74
    invoke-interface {p1, p2, p3}, Landroidx/camera/video/internal/encoder/Encoder;->stop(J)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public tryServicePendingRecording()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    if-eq v1, v5, :cond_1

    .line 17
    .line 18
    :goto_0
    move-object v1, v4

    .line 19
    move-object v2, v1

    .line 20
    const/4 v5, 0x0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :cond_1
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mActiveRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 24
    .line 25
    if-nez v1, :cond_4

    .line 26
    .line 27
    iget-boolean v1, p0, Landroidx/camera/video/Recorder;->mNeedsResetBeforeNextStart:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    .line 33
    .line 34
    sget-object v5, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    .line 35
    .line 36
    if-ne v1, v5, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 39
    .line 40
    iput-object v4, p0, Landroidx/camera/video/Recorder;->mPendingRecordingRecord:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 41
    .line 42
    invoke-direct {p0}, Landroidx/camera/video/Recorder;->restoreNonPendingState()V

    .line 43
    .line 44
    .line 45
    sget-object v3, Landroidx/camera/video/Recorder;->PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE:Ljava/lang/Exception;

    .line 46
    .line 47
    const/4 v5, 0x4

    .line 48
    move-object v6, v3

    .line 49
    move v3, v2

    .line 50
    move-object v2, v6

    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_4

    .line 54
    :cond_3
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/camera/video/Recorder;->mState:Landroidx/camera/video/Recorder$State;

    .line 59
    .line 60
    invoke-direct {p0, v1}, Landroidx/camera/video/Recorder;->makePendingRecordingActiveLocked(Landroidx/camera/video/Recorder$State;)Landroidx/camera/video/Recorder$RecordingRecord;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    move v3, v2

    .line 65
    move-object v2, v4

    .line 66
    const/4 v5, 0x0

    .line 67
    move-object v4, v1

    .line 68
    move-object v1, v2

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    :goto_1
    move v3, v2

    .line 71
    goto :goto_0

    .line 72
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    if-eqz v4, :cond_5

    .line 74
    .line 75
    invoke-direct {p0, v4, v3}, Landroidx/camera/video/Recorder;->startRecording(Landroidx/camera/video/Recorder$RecordingRecord;Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    if-eqz v1, :cond_6

    .line 80
    .line 81
    invoke-direct {p0, v1, v5, v2}, Landroidx/camera/video/Recorder;->finalizePendingRecording(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :cond_6
    :goto_3
    return-void

    .line 85
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw v1
.end method

.method public updateInProgressStatusEvent()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder;->mInProgressRecording:Landroidx/camera/video/Recorder$RecordingRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/camera/video/Recorder$RecordingRecord;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroidx/camera/video/Recorder;->getInProgressRecordingStats()Landroidx/camera/video/RecordingStats;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Landroidx/camera/video/VideoRecordEvent;->status(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;)Landroidx/camera/video/VideoRecordEvent$Status;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroidx/camera/video/Recorder$RecordingRecord;->updateVideoRecordEvent(Landroidx/camera/video/VideoRecordEvent;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public writeAudioData(Landroidx/camera/video/internal/encoder/EncodedData;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 19
    .param p1    # Landroidx/camera/video/internal/encoder/EncodedData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    iget-wide v5, v0, Landroidx/camera/video/Recorder;->mRecordingBytes:J

    .line 9
    .line 10
    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->size()J

    .line 11
    .line 12
    .line 13
    move-result-wide v7

    .line 14
    add-long/2addr v7, v5

    .line 15
    iget-wide v5, v0, Landroidx/camera/video/Recorder;->mFileSizeLimitInBytes:J

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    const-string v10, "Recorder"

    .line 19
    .line 20
    const-wide/16 v11, 0x0

    .line 21
    .line 22
    cmp-long v13, v5, v11

    .line 23
    .line 24
    if-eqz v13, :cond_0

    .line 25
    .line 26
    cmp-long v13, v7, v5

    .line 27
    .line 28
    if-lez v13, :cond_0

    .line 29
    .line 30
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    iget-wide v6, v0, Landroidx/camera/video/Recorder;->mFileSizeLimitInBytes:J

    .line 35
    .line 36
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    new-array v7, v4, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object v5, v7, v3

    .line 43
    .line 44
    aput-object v6, v7, v2

    .line 45
    .line 46
    const-string v2, "Reach file size limit %d > %d"

    .line 47
    .line 48
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v10, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v4, v9}, Landroidx/camera/video/Recorder;->onInProgressRecordingInternalError(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->getPresentationTimeUs()J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    iget-wide v13, v0, Landroidx/camera/video/Recorder;->mFirstRecordingAudioDataTimeUs:J

    .line 64
    .line 65
    const-wide v15, 0x7fffffffffffffffL

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    cmp-long v17, v13, v15

    .line 71
    .line 72
    if-nez v17, :cond_1

    .line 73
    .line 74
    iput-wide v5, v0, Landroidx/camera/video/Recorder;->mFirstRecordingAudioDataTimeUs:J

    .line 75
    .line 76
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-wide v11, v0, Landroidx/camera/video/Recorder;->mFirstRecordingAudioDataTimeUs:J

    .line 81
    .line 82
    invoke-static {v11, v12}, Landroidx/camera/video/internal/DebugUtils;->readableUs(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    new-array v4, v4, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object v1, v4, v3

    .line 89
    .line 90
    aput-object v9, v4, v2

    .line 91
    .line 92
    const-string v1, "First audio time: %d (%s)"

    .line 93
    .line 94
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v10, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    .line 104
    iget-wide v2, v0, Landroidx/camera/video/Recorder;->mFirstRecordingVideoDataTimeUs:J

    .line 105
    .line 106
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    sub-long v2, v5, v2

    .line 111
    .line 112
    invoke-virtual {v9, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    iget-wide v13, v0, Landroidx/camera/video/Recorder;->mPreviousRecordingAudioDataTimeUs:J

    .line 117
    .line 118
    cmp-long v18, v13, v15

    .line 119
    .line 120
    if-eqz v18, :cond_2

    .line 121
    .line 122
    const/4 v13, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    const/4 v13, 0x0

    .line 125
    :goto_0
    const-string v14, "There should be a previous data for adjusting the duration."

    .line 126
    .line 127
    invoke-static {v13, v14}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-wide v13, v0, Landroidx/camera/video/Recorder;->mPreviousRecordingAudioDataTimeUs:J

    .line 131
    .line 132
    sub-long v13, v5, v13

    .line 133
    .line 134
    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 135
    .line 136
    .line 137
    move-result-wide v13

    .line 138
    add-long/2addr v13, v2

    .line 139
    iget-wide v2, v0, Landroidx/camera/video/Recorder;->mDurationLimitNs:J

    .line 140
    .line 141
    cmp-long v9, v2, v11

    .line 142
    .line 143
    if-eqz v9, :cond_3

    .line 144
    .line 145
    cmp-long v9, v13, v2

    .line 146
    .line 147
    if-lez v9, :cond_3

    .line 148
    .line 149
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget-wide v5, v0, Landroidx/camera/video/Recorder;->mDurationLimitNs:J

    .line 154
    .line 155
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    new-array v4, v4, [Ljava/lang/Object;

    .line 160
    .line 161
    const/4 v5, 0x0

    .line 162
    aput-object v2, v4, v5

    .line 163
    .line 164
    const/4 v2, 0x1

    .line 165
    aput-object v3, v4, v2

    .line 166
    .line 167
    const-string v2, "Audio data reaches duration limit %d > %d"

    .line 168
    .line 169
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {v10, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const/16 v2, 0x9

    .line 177
    .line 178
    const/4 v3, 0x0

    .line 179
    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/video/Recorder;->onInProgressRecordingInternalError(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_3
    :goto_1
    iget-object v1, v0, Landroidx/camera/video/Recorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 184
    .line 185
    iget-object v2, v0, Landroidx/camera/video/Recorder;->mAudioTrackIndex:Ljava/lang/Integer;

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->getByteBuffer()Ljava/nio/ByteBuffer;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 200
    .line 201
    .line 202
    iput-wide v7, v0, Landroidx/camera/video/Recorder;->mRecordingBytes:J

    .line 203
    .line 204
    iput-wide v5, v0, Landroidx/camera/video/Recorder;->mPreviousRecordingAudioDataTimeUs:J

    .line 205
    .line 206
    return-void
.end method

.method public writeVideoData(Landroidx/camera/video/internal/encoder/EncodedData;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 19
    .param p1    # Landroidx/camera/video/internal/encoder/EncodedData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/Recorder$RecordingRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    iget-object v5, v0, Landroidx/camera/video/Recorder;->mVideoTrackIndex:Ljava/lang/Integer;

    .line 9
    .line 10
    if-eqz v5, :cond_4

    .line 11
    .line 12
    iget-wide v5, v0, Landroidx/camera/video/Recorder;->mRecordingBytes:J

    .line 13
    .line 14
    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->size()J

    .line 15
    .line 16
    .line 17
    move-result-wide v7

    .line 18
    add-long/2addr v7, v5

    .line 19
    iget-wide v5, v0, Landroidx/camera/video/Recorder;->mFileSizeLimitInBytes:J

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    const-string v10, "Recorder"

    .line 23
    .line 24
    const-wide/16 v11, 0x0

    .line 25
    .line 26
    cmp-long v13, v5, v11

    .line 27
    .line 28
    if-eqz v13, :cond_0

    .line 29
    .line 30
    cmp-long v13, v7, v5

    .line 31
    .line 32
    if-lez v13, :cond_0

    .line 33
    .line 34
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-wide v6, v0, Landroidx/camera/video/Recorder;->mFileSizeLimitInBytes:J

    .line 39
    .line 40
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    new-array v7, v4, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object v5, v7, v3

    .line 47
    .line 48
    aput-object v6, v7, v2

    .line 49
    .line 50
    const-string v2, "Reach file size limit %d > %d"

    .line 51
    .line 52
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v10, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v4, v9}, Landroidx/camera/video/Recorder;->onInProgressRecordingInternalError(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->getPresentationTimeUs()J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    iget-wide v13, v0, Landroidx/camera/video/Recorder;->mFirstRecordingVideoDataTimeUs:J

    .line 68
    .line 69
    const-wide v15, 0x7fffffffffffffffL

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    cmp-long v17, v13, v15

    .line 75
    .line 76
    if-nez v17, :cond_1

    .line 77
    .line 78
    iput-wide v5, v0, Landroidx/camera/video/Recorder;->mFirstRecordingVideoDataTimeUs:J

    .line 79
    .line 80
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-wide v13, v0, Landroidx/camera/video/Recorder;->mFirstRecordingVideoDataTimeUs:J

    .line 85
    .line 86
    invoke-static {v13, v14}, Landroidx/camera/video/internal/DebugUtils;->readableUs(J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    new-array v4, v4, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object v1, v4, v3

    .line 93
    .line 94
    aput-object v9, v4, v2

    .line 95
    .line 96
    const-string v1, "First video time: %d (%s)"

    .line 97
    .line 98
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v10, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    move-wide v15, v5

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 108
    .line 109
    iget-wide v2, v0, Landroidx/camera/video/Recorder;->mFirstRecordingAudioDataTimeUs:J

    .line 110
    .line 111
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 112
    .line 113
    .line 114
    move-result-wide v2

    .line 115
    sub-long v2, v5, v2

    .line 116
    .line 117
    invoke-virtual {v9, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    iget-wide v13, v0, Landroidx/camera/video/Recorder;->mPreviousRecordingVideoDataTimeUs:J

    .line 122
    .line 123
    cmp-long v18, v13, v15

    .line 124
    .line 125
    if-eqz v18, :cond_2

    .line 126
    .line 127
    const/4 v13, 0x1

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    const/4 v13, 0x0

    .line 130
    :goto_0
    const-string v14, "There should be a previous data for adjusting the duration."

    .line 131
    .line 132
    invoke-static {v13, v14}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-wide v13, v0, Landroidx/camera/video/Recorder;->mPreviousRecordingVideoDataTimeUs:J

    .line 136
    .line 137
    sub-long v13, v5, v13

    .line 138
    .line 139
    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 140
    .line 141
    .line 142
    move-result-wide v13

    .line 143
    add-long/2addr v13, v2

    .line 144
    move-wide v15, v5

    .line 145
    iget-wide v4, v0, Landroidx/camera/video/Recorder;->mDurationLimitNs:J

    .line 146
    .line 147
    cmp-long v9, v4, v11

    .line 148
    .line 149
    if-eqz v9, :cond_3

    .line 150
    .line 151
    cmp-long v9, v13, v4

    .line 152
    .line 153
    if-lez v9, :cond_3

    .line 154
    .line 155
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget-wide v3, v0, Landroidx/camera/video/Recorder;->mDurationLimitNs:J

    .line 160
    .line 161
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    const/4 v4, 0x2

    .line 166
    new-array v4, v4, [Ljava/lang/Object;

    .line 167
    .line 168
    const/4 v5, 0x0

    .line 169
    aput-object v2, v4, v5

    .line 170
    .line 171
    const/4 v2, 0x1

    .line 172
    aput-object v3, v4, v2

    .line 173
    .line 174
    const-string v2, "Video data reaches duration limit %d > %d"

    .line 175
    .line 176
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-static {v10, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const/16 v2, 0x9

    .line 184
    .line 185
    const/4 v3, 0x0

    .line 186
    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/video/Recorder;->onInProgressRecordingInternalError(Landroidx/camera/video/Recorder$RecordingRecord;ILjava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_3
    move-wide v11, v2

    .line 191
    :goto_1
    iget-object v1, v0, Landroidx/camera/video/Recorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 192
    .line 193
    iget-object v2, v0, Landroidx/camera/video/Recorder;->mVideoTrackIndex:Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->getByteBuffer()Ljava/nio/ByteBuffer;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-interface/range {p1 .. p1}, Landroidx/camera/video/internal/encoder/EncodedData;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 208
    .line 209
    .line 210
    iput-wide v7, v0, Landroidx/camera/video/Recorder;->mRecordingBytes:J

    .line 211
    .line 212
    iput-wide v11, v0, Landroidx/camera/video/Recorder;->mRecordingDurationNs:J

    .line 213
    .line 214
    move-wide v1, v15

    .line 215
    iput-wide v1, v0, Landroidx/camera/video/Recorder;->mPreviousRecordingVideoDataTimeUs:J

    .line 216
    .line 217
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/video/Recorder;->updateInProgressStatusEvent()V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    .line 222
    .line 223
    const-string v2, "Video data comes before the track is added to MediaMuxer."

    .line 224
    .line 225
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    throw v1
.end method
