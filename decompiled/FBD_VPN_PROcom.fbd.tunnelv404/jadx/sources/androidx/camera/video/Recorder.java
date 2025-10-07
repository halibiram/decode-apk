package androidx.camera.video;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.location.Location;
import android.media.MediaMuxer;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.MutableStateObservable;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.StateObservable;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.utils.CloseGuardHelper;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.utils.ArrayRingBuffer;
import androidx.camera.core.internal.utils.RingBuffer;
import androidx.camera.video.MediaSpec;
import androidx.camera.video.Recorder;
import androidx.camera.video.StreamInfo;
import androidx.camera.video.VideoOutput;
import androidx.camera.video.VideoRecordEvent;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.DebugUtils;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.audio.AudioSettings;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.camera.video.internal.audio.AudioSourceAccessException;
import androidx.camera.video.internal.compat.Api26Impl;
import androidx.camera.video.internal.compat.quirk.DeactivateEncoderSurfaceBeforeStopEncoderQuirk;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.EncoderNotUsePersistentInputSurfaceQuirk;
import androidx.camera.video.internal.config.AudioConfigUtil;
import androidx.camera.video.internal.config.AudioMimeInfo;
import androidx.camera.video.internal.encoder.BufferCopiedEncodedData;
import androidx.camera.video.internal.encoder.EncodeException;
import androidx.camera.video.internal.encoder.EncodedData;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderCallback;
import androidx.camera.video.internal.encoder.EncoderFactory;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.camera.video.internal.encoder.InvalidConfigException;
import androidx.camera.video.internal.encoder.OutputConfig;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.encoder.VideoEncoderInfoImpl;
import androidx.camera.video.internal.utils.OutputUtil;
import androidx.camera.video.internal.workaround.CorrectNegativeLatLongForMediaMuxer;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.google.auto.value.AutoValue;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0430xb238ed15;
import defpackage.AbstractC0702x4f069aa2;
import defpackage.AbstractC0749x8313616e;
import defpackage.C0370x5ac5058d;
import defpackage.C0419x35cc9f53;
import defpackage.C0509xe34f69ff;
import defpackage.C0674xf27a772;
import defpackage.C1078xcc023a4b;
import defpackage.C1079x7750c2b2;
import defpackage.RunnableC0384x149e5abd;
import defpackage.RunnableC0938xaa9be1e3;
import defpackage.RunnableC1044x8c43c726;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class Recorder implements VideoOutput {
    private static final int AUDIO_CACHE_SIZE = 60;
    private static final Executor AUDIO_EXECUTOR;

    @VisibleForTesting
    static final EncoderFactory DEFAULT_ENCODER_FACTORY;
    public static final QualitySelector DEFAULT_QUALITY_SELECTOR;
    private static final String MEDIA_COLUMN = "_data";
    private static final MediaSpec MEDIA_SPEC_DEFAULT;
    private static final int NOT_PENDING = 0;
    private static final int PENDING = 1;
    private static final Exception PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE;
    private static final long RETRY_SETUP_VIDEO_DELAY_MS = 1000;
    private static final int RETRY_SETUP_VIDEO_MAX_COUNT = 3;
    private static final long SOURCE_NON_STREAMING_TIMEOUT_MS = 1000;
    private static final String TAG = "Recorder";
    public static final int VIDEO_CAPABILITIES_SOURCE_CAMCORDER_PROFILE = 0;
    public static final int VIDEO_CAPABILITIES_SOURCE_CODEC_CAPABILITIES = 1;
    private static final VideoSpec VIDEO_SPEC_DEFAULT;

    @VisibleForTesting
    static long sRetrySetupVideoDelayMs;

    @VisibleForTesting
    static int sRetrySetupVideoMaxCount;

    @GuardedBy("mLock")
    RecordingRecord mActiveRecordingRecord;
    Surface mActiveSurface;
    double mAudioAmplitude;
    Encoder mAudioEncoder;
    private final EncoderFactory mAudioEncoderFactory;
    Throwable mAudioErrorCause;
    OutputConfig mAudioOutputConfig;
    AudioSource mAudioSource;
    AudioState mAudioState;
    Integer mAudioTrackIndex;
    long mDurationLimitNs;
    private final boolean mEncoderNotUsePersistentInputSurface;
    final List<ListenableFuture<Void>> mEncodingFutures;
    private final Executor mExecutor;
    long mFileSizeLimitInBytes;

    @VisibleForTesting
    long mFirstRecordingAudioDataTimeUs;

    @VisibleForTesting
    int mFirstRecordingVideoBitrate;

    @VisibleForTesting
    long mFirstRecordingVideoDataTimeUs;
    RecordingRecord mInProgressRecording;
    boolean mInProgressRecordingStopping;

    @Nullable
    private SurfaceRequest.TransformationInfo mInProgressTransformationInfo;
    boolean mIsAudioSourceSilenced;
    private final MutableStateObservable<Boolean> mIsRecording;

    @GuardedBy("mLock")
    private long mLastGeneratedRecordingId;
    Surface mLatestSurface;
    SurfaceRequest mLatestSurfaceRequest;
    private final Object mLock = new Object();
    MediaMuxer mMediaMuxer;
    final MutableStateObservable<MediaSpec> mMediaSpec;
    private boolean mNeedsResetBeforeNextStart;

    @GuardedBy("mLock")
    private State mNonPendingState;

    @NonNull
    Uri mOutputUri;

    @NonNull
    final RingBuffer<EncodedData> mPendingAudioRingBuffer;
    EncodedData mPendingFirstVideoData;

    @GuardedBy("mLock")
    RecordingRecord mPendingRecordingRecord;
    long mPreviousRecordingAudioDataTimeUs;
    long mPreviousRecordingVideoDataTimeUs;
    long mRecordingBytes;
    long mRecordingDurationNs;
    int mRecordingStopError;
    Throwable mRecordingStopErrorCause;
    private VideoValidatedEncoderProfilesProxy mResolvedEncoderProfiles;
    final Executor mSequentialExecutor;

    @Nullable
    private SetupVideoTask mSetupVideoTask;
    private boolean mShouldSendResumeEvent;
    ScheduledFuture<?> mSourceNonStreamingTimeout;
    VideoOutput.SourceState mSourceState;

    @Nullable
    private SurfaceRequest.TransformationInfo mSourceTransformationInfo;

    @GuardedBy("mLock")
    private State mState;

    @GuardedBy("mLock")
    int mStreamId;
    private final MutableStateObservable<StreamInfo> mStreamInfo;
    private final Executor mUserProvidedExecutor;
    private final int mVideoCapabilitiesSource;
    Encoder mVideoEncoder;

    @VisibleForTesting
    Range<Integer> mVideoEncoderBitrateRange;
    private final EncoderFactory mVideoEncoderFactory;

    @NonNull
    VideoEncoderSession mVideoEncoderSession;

    @Nullable
    VideoEncoderSession mVideoEncoderSessionToRelease;
    OutputConfig mVideoOutputConfig;
    Timebase mVideoSourceTimebase;
    Integer mVideoTrackIndex;
    private static final Set<State> PENDING_STATES = DesugarCollections.unmodifiableSet(EnumSet.of(State.PENDING_RECORDING, State.PENDING_PAUSED));
    private static final Set<State> VALID_NON_PENDING_STATES_WHILE_PENDING = DesugarCollections.unmodifiableSet(EnumSet.of(State.CONFIGURING, State.IDLING, State.RESETTING, State.STOPPING, State.ERROR));

    /* renamed from: androidx.camera.video.Recorder$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FutureCallback<Encoder> {
        final /* synthetic */ VideoEncoderSession val$videoEncoderSession;

        public AnonymousClass1(VideoEncoderSession videoEncoderSession) {
            r2 = videoEncoderSession;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            Logger.d(Recorder.TAG, "Error in ReadyToReleaseFuture: " + th);
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable Encoder encoder) {
            Encoder encoder2;
            Logger.d(Recorder.TAG, "VideoEncoder can be released: " + encoder);
            if (encoder == null) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = Recorder.this.mSourceNonStreamingTimeout;
            if (scheduledFuture != null && scheduledFuture.cancel(false) && (encoder2 = Recorder.this.mVideoEncoder) != null && encoder2 == encoder) {
                Recorder.notifyEncoderSourceStopped(encoder2);
            }
            Recorder recorder = Recorder.this;
            recorder.mVideoEncoderSessionToRelease = r2;
            recorder.setLatestSurface(null);
            Recorder recorder2 = Recorder.this;
            recorder2.requestReset(4, null, recorder2.isPersistentRecordingInProgress());
        }
    }

    /* renamed from: androidx.camera.video.Recorder$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements FutureCallback<Void> {
        final /* synthetic */ AudioSource val$audioSource;

        public AnonymousClass2(AudioSource audioSource) {
            r2 = audioSource;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            Logger.d(Recorder.TAG, String.format("An error occurred while attempting to release audio source: 0x%x", Integer.valueOf(r2.hashCode())));
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable Void r3) {
            Logger.d(Recorder.TAG, String.format("Released audio source successfully: 0x%x", Integer.valueOf(r2.hashCode())));
        }
    }

    /* renamed from: androidx.camera.video.Recorder$3 */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements EncoderCallback {
        final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;
        final /* synthetic */ RecordingRecord val$recordingToStart;

        public AnonymousClass3(CallbackToFutureAdapter.Completer completer, RecordingRecord recordingRecord) {
            r2 = completer;
            r3 = recordingRecord;
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodeError(@NonNull EncodeException encodeException) {
            r2.setException(encodeException);
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public final /* synthetic */ void onEncodePaused() {
            AbstractC0702x4f069aa2.m3310xfbe0c504(this);
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodeStart() {
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodeStop() {
            r2.set(null);
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodedData(@NonNull EncodedData encodedData) {
            boolean z;
            Recorder recorder = Recorder.this;
            if (recorder.mMediaMuxer == null) {
                if (!recorder.mInProgressRecordingStopping) {
                    EncodedData encodedData2 = recorder.mPendingFirstVideoData;
                    if (encodedData2 != null) {
                        encodedData2.close();
                        Recorder.this.mPendingFirstVideoData = null;
                        z = true;
                    } else {
                        z = false;
                    }
                    if (encodedData.isKeyFrame()) {
                        Recorder recorder2 = Recorder.this;
                        recorder2.mPendingFirstVideoData = encodedData;
                        if (recorder2.isAudioEnabled() && Recorder.this.mPendingAudioRingBuffer.isEmpty()) {
                            if (z) {
                                Logger.d(Recorder.TAG, "Replaced cached video keyframe with newer keyframe.");
                                return;
                            } else {
                                Logger.d(Recorder.TAG, "Cached video keyframe while we wait for first audio sample before starting muxer.");
                                return;
                            }
                        }
                        Logger.d(Recorder.TAG, "Received video keyframe. Starting muxer...");
                        Recorder.this.setupAndStartMediaMuxer(r3);
                        return;
                    }
                    if (z) {
                        Logger.d(Recorder.TAG, "Dropped cached keyframe since we have new video data and have not yet received audio data.");
                    }
                    Logger.d(Recorder.TAG, "Dropped video data since muxer has not yet started and data is not a keyframe.");
                    Recorder.this.mVideoEncoder.requestKeyFrame();
                    encodedData.close();
                    return;
                }
                Logger.d(Recorder.TAG, "Drop video data since recording is stopping.");
                encodedData.close();
                return;
            }
            try {
                recorder.writeVideoData(encodedData, r3);
                if (encodedData != null) {
                    encodedData.close();
                }
            } catch (Throwable th) {
                if (encodedData != null) {
                    try {
                        encodedData.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onOutputConfigUpdate(@NonNull OutputConfig outputConfig) {
            Recorder.this.mVideoOutputConfig = outputConfig;
        }
    }

    /* renamed from: androidx.camera.video.Recorder$4 */
    /* loaded from: classes.dex */
    public class AnonymousClass4 implements AudioSource.AudioSourceCallback {
        final /* synthetic */ Consumer val$audioErrorConsumer;

        public AnonymousClass4(Consumer consumer) {
            r2 = consumer;
        }

        @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
        public void onAmplitudeValue(double d) {
            Recorder.this.mAudioAmplitude = d;
        }

        @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
        public void onError(@NonNull Throwable th) {
            Logger.e(Recorder.TAG, "Error occurred after audio source started.", th);
            if (th instanceof AudioSourceAccessException) {
                r2.accept(th);
            }
        }

        @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
        public void onSilenceStateChanged(boolean z) {
            Recorder recorder = Recorder.this;
            if (recorder.mIsAudioSourceSilenced != z) {
                recorder.mIsAudioSourceSilenced = z;
                recorder.updateInProgressStatusEvent();
            } else {
                Logger.w(Recorder.TAG, "Audio source silenced transitions to the same state " + z);
            }
        }

        @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
        public final /* synthetic */ void onSuspendStateChanged(boolean z) {
            AbstractC0430xb238ed15.m3080xfbe0c504(this, z);
        }
    }

    /* renamed from: androidx.camera.video.Recorder$5 */
    /* loaded from: classes.dex */
    public class AnonymousClass5 implements EncoderCallback {
        final /* synthetic */ Consumer val$audioErrorConsumer;
        final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;
        final /* synthetic */ RecordingRecord val$recordingToStart;

        public AnonymousClass5(CallbackToFutureAdapter.Completer completer, Consumer consumer, RecordingRecord recordingRecord) {
            r2 = completer;
            r3 = consumer;
            r4 = recordingRecord;
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodeError(@NonNull EncodeException encodeException) {
            if (Recorder.this.mAudioErrorCause == null) {
                r3.accept(encodeException);
            }
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public final /* synthetic */ void onEncodePaused() {
            AbstractC0702x4f069aa2.m3310xfbe0c504(this);
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodeStart() {
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodeStop() {
            r2.set(null);
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodedData(@NonNull EncodedData encodedData) {
            Recorder recorder = Recorder.this;
            if (recorder.mAudioState != AudioState.DISABLED) {
                if (recorder.mMediaMuxer == null) {
                    if (!recorder.mInProgressRecordingStopping) {
                        recorder.mPendingAudioRingBuffer.enqueue(new BufferCopiedEncodedData(encodedData));
                        if (Recorder.this.mPendingFirstVideoData != null) {
                            Logger.d(Recorder.TAG, "Received audio data. Starting muxer...");
                            Recorder.this.setupAndStartMediaMuxer(r4);
                        } else {
                            Logger.d(Recorder.TAG, "Cached audio data while we wait for video keyframe before starting muxer.");
                        }
                    } else {
                        Logger.d(Recorder.TAG, "Drop audio data since recording is stopping.");
                    }
                    encodedData.close();
                    return;
                }
                try {
                    recorder.writeAudioData(encodedData, r4);
                    if (encodedData != null) {
                        encodedData.close();
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    if (encodedData != null) {
                        try {
                            encodedData.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            encodedData.close();
            throw new AssertionError("Audio is not enabled but audio encoded data is being produced.");
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onOutputConfigUpdate(@NonNull OutputConfig outputConfig) {
            Recorder.this.mAudioOutputConfig = outputConfig;
        }
    }

    /* renamed from: androidx.camera.video.Recorder$6 */
    /* loaded from: classes.dex */
    public class AnonymousClass6 implements FutureCallback<List<Void>> {
        public AnonymousClass6() {
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            boolean z;
            int i;
            if (Recorder.this.mInProgressRecording != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, "In-progress recording shouldn't be null");
            if (!Recorder.this.mInProgressRecording.isPersistent()) {
                Logger.d(Recorder.TAG, "Encodings end with error: " + th);
                Recorder recorder = Recorder.this;
                if (recorder.mMediaMuxer == null) {
                    i = 8;
                } else {
                    i = 6;
                }
                recorder.finalizeInProgressRecording(i, th);
            }
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable List<Void> list) {
            Logger.d(Recorder.TAG, "Encodings end successfully.");
            Recorder recorder = Recorder.this;
            recorder.finalizeInProgressRecording(recorder.mRecordingStopError, recorder.mRecordingStopErrorCause);
        }
    }

    /* renamed from: androidx.camera.video.Recorder$7 */
    /* loaded from: classes.dex */
    public class AnonymousClass7 implements Observable.Observer<Boolean> {
        public AnonymousClass7() {
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onError(@NonNull Throwable th) {
            Recorder.this.mIsRecording.setError(th);
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onNewData(@Nullable Boolean bool) {
            Recorder.this.mIsRecording.setState(bool);
        }
    }

    /* loaded from: classes.dex */
    public enum AudioState {
        INITIALIZING,
        IDLING,
        DISABLED,
        ENABLED,
        ERROR_ENCODER,
        ERROR_SOURCE
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private EncoderFactory mAudioEncoderFactory;
        private final MediaSpec.Builder mMediaSpecBuilder;
        private EncoderFactory mVideoEncoderFactory;
        private int mVideoCapabilitiesSource = 0;
        private Executor mExecutor = null;

        public Builder() {
            EncoderFactory encoderFactory = Recorder.DEFAULT_ENCODER_FACTORY;
            this.mVideoEncoderFactory = encoderFactory;
            this.mAudioEncoderFactory = encoderFactory;
            this.mMediaSpecBuilder = MediaSpec.builder();
        }

        public static /* synthetic */ void lambda$setTargetVideoEncodingBitRate$1(int i, VideoSpec.Builder builder) {
            builder.setBitrate(new Range<>(Integer.valueOf(i), Integer.valueOf(i)));
        }

        @NonNull
        public Recorder build() {
            return new Recorder(this.mExecutor, this.mMediaSpecBuilder.build(), this.mVideoCapabilitiesSource, this.mVideoEncoderFactory, this.mAudioEncoderFactory);
        }

        @NonNull
        public Builder setAspectRatio(int i) {
            this.mMediaSpecBuilder.configureVideo(new C1079x7750c2b2(i, 2));
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public Builder setAudioEncoderFactory(@NonNull EncoderFactory encoderFactory) {
            this.mAudioEncoderFactory = encoderFactory;
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public Builder setAudioSource(int i) {
            this.mMediaSpecBuilder.configureAudio(new C1079x7750c2b2(i, 1));
            return this;
        }

        @NonNull
        public Builder setExecutor(@NonNull Executor executor) {
            Preconditions.checkNotNull(executor, "The specified executor can't be null.");
            this.mExecutor = executor;
            return this;
        }

        @NonNull
        public Builder setQualitySelector(@NonNull QualitySelector qualitySelector) {
            Preconditions.checkNotNull(qualitySelector, "The specified quality selector can't be null.");
            this.mMediaSpecBuilder.configureVideo(new C1078xcc023a4b(qualitySelector, 1));
            return this;
        }

        @NonNull
        public Builder setTargetVideoEncodingBitRate(@IntRange(from = 1) int i) {
            if (i > 0) {
                this.mMediaSpecBuilder.configureVideo(new C1079x7750c2b2(i, 0));
                return this;
            }
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "The requested target bitrate ", " is not supported. Target bitrate must be greater than 0."));
        }

        @NonNull
        public Builder setVideoCapabilitiesSource(int i) {
            boolean z = true;
            if (i != 0 && i != 1) {
                z = false;
            }
            Preconditions.checkArgument(z, "Not a supported video capabilities source: " + i);
            this.mVideoCapabilitiesSource = i;
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public Builder setVideoEncoderFactory(@NonNull EncoderFactory encoderFactory) {
            this.mVideoEncoderFactory = encoderFactory;
            return this;
        }
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class RecordingRecord implements AutoCloseable {
        private final CloseGuardHelper mCloseGuard = CloseGuardHelper.create();
        private final AtomicBoolean mInitialized = new AtomicBoolean(false);
        private final AtomicReference<MediaMuxerSupplier> mMediaMuxerSupplier = new AtomicReference<>(null);
        private final AtomicReference<AudioSourceSupplier> mAudioSourceSupplier = new AtomicReference<>(null);
        private final AtomicReference<Consumer<Uri>> mRecordingFinalizer = new AtomicReference<>(new Object());
        private final AtomicBoolean mMuted = new AtomicBoolean(false);

        @NonNull
        private final MutableStateObservable<Boolean> mRecordingState = MutableStateObservable.withInitialState(Boolean.FALSE);

        /* renamed from: androidx.camera.video.Recorder$RecordingRecord$1 */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements AudioSourceSupplier {
            final /* synthetic */ Context val$context;

            public AnonymousClass1(Context context) {
                r2 = context;
            }

            @Override // androidx.camera.video.Recorder.RecordingRecord.AudioSourceSupplier
            @NonNull
            @RequiresPermission("android.permission.RECORD_AUDIO")
            public AudioSource get(@NonNull AudioSettings audioSettings, @NonNull Executor executor) {
                return new AudioSource(audioSettings, executor, r2);
            }
        }

        /* renamed from: androidx.camera.video.Recorder$RecordingRecord$2 */
        /* loaded from: classes.dex */
        public class AnonymousClass2 implements AudioSourceSupplier {
            public AnonymousClass2() {
            }

            @Override // androidx.camera.video.Recorder.RecordingRecord.AudioSourceSupplier
            @NonNull
            @RequiresPermission("android.permission.RECORD_AUDIO")
            public AudioSource get(@NonNull AudioSettings audioSettings, @NonNull Executor executor) {
                return new AudioSource(audioSettings, executor, null);
            }
        }

        /* loaded from: classes.dex */
        public interface AudioSourceSupplier {
            @NonNull
            @RequiresPermission("android.permission.RECORD_AUDIO")
            AudioSource get(@NonNull AudioSettings audioSettings, @NonNull Executor executor);
        }

        /* loaded from: classes.dex */
        public interface MediaMuxerSupplier {
            @NonNull
            MediaMuxer get(int i, @NonNull Consumer<Uri> consumer);
        }

        private void finalizeRecordingInternal(@Nullable Consumer<Uri> consumer, @NonNull Uri uri) {
            if (consumer != null) {
                this.mCloseGuard.close();
                consumer.accept(uri);
            } else {
                throw new AssertionError("Recording " + this + " has already been finalized");
            }
        }

        @NonNull
        public static RecordingRecord from(@NonNull PendingRecording pendingRecording, long j) {
            return new AutoValue_Recorder_RecordingRecord(pendingRecording.getOutputOptions(), pendingRecording.getListenerExecutor(), pendingRecording.getEventListener(), pendingRecording.isAudioEnabled(), pendingRecording.isPersistent(), j);
        }

        public static /* synthetic */ MediaMuxer lambda$initializeRecording$1(OutputOptions outputOptions, ParcelFileDescriptor parcelFileDescriptor, int i, Consumer consumer) {
            MediaMuxer createMediaMuxer;
            MediaMuxer mediaMuxer;
            Uri uri = Uri.EMPTY;
            if (outputOptions instanceof FileOutputOptions) {
                File file = ((FileOutputOptions) outputOptions).getFile();
                if (!OutputUtil.createParentFolder(file)) {
                    Logger.w(Recorder.TAG, "Failed to create folder for " + file.getAbsolutePath());
                }
                mediaMuxer = new MediaMuxer(file.getAbsolutePath(), i);
                uri = Uri.fromFile(file);
            } else if (outputOptions instanceof FileDescriptorOutputOptions) {
                if (Build.VERSION.SDK_INT >= 26) {
                    mediaMuxer = Api26Impl.createMediaMuxer(parcelFileDescriptor.getFileDescriptor(), i);
                } else {
                    throw new IOException("MediaMuxer doesn't accept FileDescriptor as output destination.");
                }
            } else if (outputOptions instanceof MediaStoreOutputOptions) {
                MediaStoreOutputOptions mediaStoreOutputOptions = (MediaStoreOutputOptions) outputOptions;
                ContentValues contentValues = new ContentValues(mediaStoreOutputOptions.getContentValues());
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 29) {
                    contentValues.put("is_pending", (Integer) 1);
                }
                try {
                    Uri insert = mediaStoreOutputOptions.getContentResolver().insert(mediaStoreOutputOptions.getCollectionUri(), contentValues);
                    if (insert != null) {
                        if (i2 < 26) {
                            String absolutePathFromUri = OutputUtil.getAbsolutePathFromUri(mediaStoreOutputOptions.getContentResolver(), insert, Recorder.MEDIA_COLUMN);
                            if (absolutePathFromUri != null) {
                                if (!OutputUtil.createParentFolder(new File(absolutePathFromUri))) {
                                    Logger.w(Recorder.TAG, "Failed to create folder for ".concat(absolutePathFromUri));
                                }
                                createMediaMuxer = new MediaMuxer(absolutePathFromUri, i);
                            } else {
                                throw new IOException("Unable to get path from uri " + insert);
                            }
                        } else {
                            ParcelFileDescriptor openFileDescriptor = mediaStoreOutputOptions.getContentResolver().openFileDescriptor(insert, "rw");
                            createMediaMuxer = Api26Impl.createMediaMuxer(openFileDescriptor.getFileDescriptor(), i);
                            openFileDescriptor.close();
                        }
                        uri = insert;
                        mediaMuxer = createMediaMuxer;
                    } else {
                        throw new IOException("Unable to create MediaStore entry.");
                    }
                } catch (RuntimeException e) {
                    throw new IOException("Unable to create MediaStore entry by " + e, e);
                }
            } else {
                throw new AssertionError("Invalid output options type: ".concat(outputOptions.getClass().getSimpleName()));
            }
            consumer.accept(uri);
            return mediaMuxer;
        }

        public static /* synthetic */ void lambda$initializeRecording$2(MediaStoreOutputOptions mediaStoreOutputOptions, Uri uri) {
            if (uri.equals(Uri.EMPTY)) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_pending", (Integer) 0);
            mediaStoreOutputOptions.getContentResolver().update(uri, contentValues, null, null);
        }

        public static /* synthetic */ void lambda$initializeRecording$3(String str, Uri uri) {
            if (uri == null) {
                Logger.e(Recorder.TAG, "File scanning operation failed [path: " + str + "]");
                return;
            }
            Logger.d(Recorder.TAG, String.format("File scan completed successfully [path: %s, URI: %s]", str, uri));
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, android.media.MediaScannerConnection$OnScanCompletedListener] */
        public static /* synthetic */ void lambda$initializeRecording$4(MediaStoreOutputOptions mediaStoreOutputOptions, Context context, Uri uri) {
            if (uri.equals(Uri.EMPTY)) {
                return;
            }
            String absolutePathFromUri = OutputUtil.getAbsolutePathFromUri(mediaStoreOutputOptions.getContentResolver(), uri, Recorder.MEDIA_COLUMN);
            if (absolutePathFromUri != null) {
                MediaScannerConnection.scanFile(context, new String[]{absolutePathFromUri}, null, new Object());
                return;
            }
            Logger.d(Recorder.TAG, "Skipping media scanner scan. Unable to retrieve file path from URI: " + uri);
        }

        public static /* synthetic */ void lambda$initializeRecording$5(ParcelFileDescriptor parcelFileDescriptor, Uri uri) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException e) {
                Logger.e(Recorder.TAG, "Failed to close dup'd ParcelFileDescriptor", e);
            }
        }

        public static /* synthetic */ void lambda$new$0(Uri uri) {
        }

        public /* synthetic */ void lambda$updateVideoRecordEvent$6(VideoRecordEvent videoRecordEvent) {
            getEventListener().accept(videoRecordEvent);
        }

        private void updateRecordingState(@NonNull VideoRecordEvent videoRecordEvent) {
            if (!(videoRecordEvent instanceof VideoRecordEvent.Start) && !(videoRecordEvent instanceof VideoRecordEvent.Resume)) {
                if ((videoRecordEvent instanceof VideoRecordEvent.Pause) || (videoRecordEvent instanceof VideoRecordEvent.Finalize)) {
                    this.mRecordingState.setState(Boolean.FALSE);
                    return;
                }
                return;
            }
            this.mRecordingState.setState(Boolean.TRUE);
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            finalizeRecording(Uri.EMPTY);
        }

        public void finalize() {
            try {
                this.mCloseGuard.warnIfOpen();
                Consumer<Uri> andSet = this.mRecordingFinalizer.getAndSet(null);
                if (andSet != null) {
                    finalizeRecordingInternal(andSet, Uri.EMPTY);
                }
            } finally {
                super.finalize();
            }
        }

        public void finalizeRecording(@NonNull Uri uri) {
            if (!this.mInitialized.get()) {
                return;
            }
            finalizeRecordingInternal(this.mRecordingFinalizer.getAndSet(null), uri);
        }

        @Nullable
        public abstract Executor getCallbackExecutor();

        @Nullable
        public abstract Consumer<VideoRecordEvent> getEventListener();

        @NonNull
        public abstract OutputOptions getOutputOptions();

        public abstract long getRecordingId();

        @NonNull
        public StateObservable<Boolean> getRecordingState() {
            return this.mRecordingState;
        }

        public abstract boolean hasAudioEnabled();

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v5, types: [androidx.camera.video.뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두] */
        public void initializeRecording(@NonNull final Context context) {
            final ParcelFileDescriptor parcelFileDescriptor;
            if (!this.mInitialized.getAndSet(true)) {
                final OutputOptions outputOptions = getOutputOptions();
                boolean z = outputOptions instanceof FileDescriptorOutputOptions;
                C0110x34271fae c0110x34271fae = null;
                if (z) {
                    parcelFileDescriptor = ((FileDescriptorOutputOptions) outputOptions).getParcelFileDescriptor().dup();
                } else {
                    parcelFileDescriptor = null;
                }
                this.mCloseGuard.open("finalizeRecording");
                this.mMediaMuxerSupplier.set(new MediaMuxerSupplier() { // from class: androidx.camera.video.뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤
                    @Override // androidx.camera.video.Recorder.RecordingRecord.MediaMuxerSupplier
                    public final MediaMuxer get(int i, Consumer consumer) {
                        MediaMuxer lambda$initializeRecording$1;
                        lambda$initializeRecording$1 = Recorder.RecordingRecord.lambda$initializeRecording$1(OutputOptions.this, parcelFileDescriptor, i, consumer);
                        return lambda$initializeRecording$1;
                    }
                });
                if (hasAudioEnabled()) {
                    if (Build.VERSION.SDK_INT >= 31) {
                        this.mAudioSourceSupplier.set(new AudioSourceSupplier() { // from class: androidx.camera.video.Recorder.RecordingRecord.1
                            final /* synthetic */ Context val$context;

                            public AnonymousClass1(final Context context2) {
                                r2 = context2;
                            }

                            @Override // androidx.camera.video.Recorder.RecordingRecord.AudioSourceSupplier
                            @NonNull
                            @RequiresPermission("android.permission.RECORD_AUDIO")
                            public AudioSource get(@NonNull AudioSettings audioSettings, @NonNull Executor executor) {
                                return new AudioSource(audioSettings, executor, r2);
                            }
                        });
                    } else {
                        this.mAudioSourceSupplier.set(new AudioSourceSupplier() { // from class: androidx.camera.video.Recorder.RecordingRecord.2
                            public AnonymousClass2() {
                            }

                            @Override // androidx.camera.video.Recorder.RecordingRecord.AudioSourceSupplier
                            @NonNull
                            @RequiresPermission("android.permission.RECORD_AUDIO")
                            public AudioSource get(@NonNull AudioSettings audioSettings, @NonNull Executor executor) {
                                return new AudioSource(audioSettings, executor, null);
                            }
                        });
                    }
                }
                if (outputOptions instanceof MediaStoreOutputOptions) {
                    final MediaStoreOutputOptions mediaStoreOutputOptions = (MediaStoreOutputOptions) outputOptions;
                    if (Build.VERSION.SDK_INT >= 29) {
                        c0110x34271fae = new C0110x34271fae(mediaStoreOutputOptions, 0);
                    } else {
                        c0110x34271fae = new Consumer() { // from class: androidx.camera.video.뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두
                            @Override // androidx.core.util.Consumer
                            public final void accept(Object obj) {
                                Recorder.RecordingRecord.lambda$initializeRecording$4(mediaStoreOutputOptions, context2, (Uri) obj);
                            }
                        };
                    }
                } else if (z) {
                    c0110x34271fae = new C0110x34271fae(parcelFileDescriptor, 1);
                }
                if (c0110x34271fae != null) {
                    this.mRecordingFinalizer.set(c0110x34271fae);
                    return;
                }
                return;
            }
            throw new AssertionError("Recording " + this + " has already been initialized");
        }

        public boolean isMuted() {
            return this.mMuted.get();
        }

        public abstract boolean isPersistent();

        public void mute(boolean z) {
            this.mMuted.set(z);
        }

        @NonNull
        @RequiresPermission("android.permission.RECORD_AUDIO")
        public AudioSource performOneTimeAudioSourceCreation(@NonNull AudioSettings audioSettings, @NonNull Executor executor) {
            if (hasAudioEnabled()) {
                AudioSourceSupplier andSet = this.mAudioSourceSupplier.getAndSet(null);
                if (andSet != null) {
                    return andSet.get(audioSettings, executor);
                }
                throw new AssertionError("One-time audio source creation has already occurred for recording " + this);
            }
            throw new AssertionError("Recording does not have audio enabled. Unable to create audio source for recording " + this);
        }

        @NonNull
        public MediaMuxer performOneTimeMediaMuxerCreation(int i, @NonNull Consumer<Uri> consumer) {
            if (this.mInitialized.get()) {
                MediaMuxerSupplier andSet = this.mMediaMuxerSupplier.getAndSet(null);
                if (andSet != null) {
                    try {
                        return andSet.get(i, consumer);
                    } catch (RuntimeException e) {
                        throw new IOException("Failed to create MediaMuxer by " + e, e);
                    }
                }
                throw new AssertionError("One-time media muxer creation has already occurred for recording " + this);
            }
            throw new AssertionError("Recording " + this + " has not been initialized");
        }

        public void updateVideoRecordEvent(@NonNull VideoRecordEvent videoRecordEvent) {
            if (Objects.equals(videoRecordEvent.getOutputOptions(), getOutputOptions())) {
                String concat = "Sending VideoRecordEvent ".concat(videoRecordEvent.getClass().getSimpleName());
                if (videoRecordEvent instanceof VideoRecordEvent.Finalize) {
                    VideoRecordEvent.Finalize finalize = (VideoRecordEvent.Finalize) videoRecordEvent;
                    if (finalize.hasError()) {
                        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(concat);
                        m3341xc20437a5.append(" [error: " + VideoRecordEvent.Finalize.errorToString(finalize.getError()) + "]");
                        concat = m3341xc20437a5.toString();
                    }
                }
                Logger.d(Recorder.TAG, concat);
                updateRecordingState(videoRecordEvent);
                if (getCallbackExecutor() != null && getEventListener() != null) {
                    try {
                        getCallbackExecutor().execute(new RunnableC0114x1db10c9d(this, videoRecordEvent, 0));
                        return;
                    } catch (RejectedExecutionException e) {
                        Logger.e(Recorder.TAG, "The callback executor is invalid.", e);
                        return;
                    }
                }
                return;
            }
            throw new AssertionError("Attempted to update event listener with event from incorrect recording [Recording: " + videoRecordEvent.getOutputOptions() + ", Expected: " + getOutputOptions() + "]");
        }
    }

    /* loaded from: classes.dex */
    public class SetupVideoTask {
        private final int mMaxRetryCount;
        private final SurfaceRequest mSurfaceRequest;
        private final Timebase mTimebase;
        private boolean mIsFailedRetryCanceled = false;
        private int mRetryCount = 0;

        @Nullable
        private ScheduledFuture<?> mRetryFuture = null;

        /* renamed from: androidx.camera.video.Recorder$SetupVideoTask$1 */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements FutureCallback<Encoder> {
            final /* synthetic */ VideoEncoderSession val$videoEncoderSession;

            public AnonymousClass1(VideoEncoderSession videoEncoderSession) {
                this.val$videoEncoderSession = videoEncoderSession;
            }

            public /* synthetic */ void lambda$onFailure$0() {
                if (!SetupVideoTask.this.mIsFailedRetryCanceled) {
                    Logger.d(Recorder.TAG, "Retry setupVideo #" + SetupVideoTask.this.mRetryCount);
                    SetupVideoTask setupVideoTask = SetupVideoTask.this;
                    setupVideoTask.setupVideo(setupVideoTask.mSurfaceRequest, SetupVideoTask.this.mTimebase);
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                Logger.w(Recorder.TAG, "VideoEncoder Setup error: " + th, th);
                if (SetupVideoTask.this.mRetryCount < SetupVideoTask.this.mMaxRetryCount) {
                    SetupVideoTask.access$408(SetupVideoTask.this);
                    SetupVideoTask setupVideoTask = SetupVideoTask.this;
                    setupVideoTask.mRetryFuture = Recorder.scheduleTask(new RunnableC0116x8c6fc18a(this, 0), Recorder.this.mSequentialExecutor, Recorder.sRetrySetupVideoDelayMs, TimeUnit.MILLISECONDS);
                    return;
                }
                Recorder.this.onEncoderSetupError(th);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Encoder encoder) {
                Logger.d(Recorder.TAG, "VideoEncoder is created. " + encoder);
                if (encoder == null) {
                    return;
                }
                Preconditions.checkState(Recorder.this.mVideoEncoderSession == this.val$videoEncoderSession);
                Preconditions.checkState(Recorder.this.mVideoEncoder == null);
                Recorder.this.onVideoEncoderReady(this.val$videoEncoderSession);
                Recorder.this.onConfigured();
            }
        }

        public SetupVideoTask(@NonNull SurfaceRequest surfaceRequest, @NonNull Timebase timebase, int i) {
            this.mSurfaceRequest = surfaceRequest;
            this.mTimebase = timebase;
            this.mMaxRetryCount = i;
        }

        public static /* synthetic */ int access$408(SetupVideoTask setupVideoTask) {
            int i = setupVideoTask.mRetryCount;
            setupVideoTask.mRetryCount = i + 1;
            return i;
        }

        public /* synthetic */ void lambda$setupVideo$0(SurfaceRequest surfaceRequest, Timebase timebase) {
            if (!surfaceRequest.isServiced() && (!Recorder.this.mVideoEncoderSession.isConfiguredSurfaceRequest(surfaceRequest) || Recorder.this.isPersistentRecordingInProgress())) {
                EncoderFactory encoderFactory = Recorder.this.mVideoEncoderFactory;
                Recorder recorder = Recorder.this;
                VideoEncoderSession videoEncoderSession = new VideoEncoderSession(encoderFactory, recorder.mSequentialExecutor, recorder.mExecutor);
                Recorder recorder2 = Recorder.this;
                ListenableFuture<Encoder> configure = videoEncoderSession.configure(surfaceRequest, timebase, (MediaSpec) recorder2.getObservableData(recorder2.mMediaSpec), Recorder.this.mResolvedEncoderProfiles);
                Recorder.this.mVideoEncoderSession = videoEncoderSession;
                Futures.addCallback(configure, new AnonymousClass1(videoEncoderSession), Recorder.this.mSequentialExecutor);
                return;
            }
            Logger.w(Recorder.TAG, "Ignore the SurfaceRequest " + surfaceRequest + " isServiced: " + surfaceRequest.isServiced() + " VideoEncoderSession: " + Recorder.this.mVideoEncoderSession + " has been configured with a persistent in-progress recording.");
        }

        public void setupVideo(@NonNull final SurfaceRequest surfaceRequest, @NonNull final Timebase timebase) {
            Recorder.this.safeToCloseVideoEncoder().addListener(new Runnable() { // from class: androidx.camera.video.뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻
                @Override // java.lang.Runnable
                public final void run() {
                    Recorder.SetupVideoTask.this.lambda$setupVideo$0(surfaceRequest, timebase);
                }
            }, Recorder.this.mSequentialExecutor);
        }

        public void cancelFailedRetry() {
            if (this.mIsFailedRetryCanceled) {
                return;
            }
            this.mIsFailedRetryCanceled = true;
            ScheduledFuture<?> scheduledFuture = this.mRetryFuture;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                this.mRetryFuture = null;
            }
        }

        public void start() {
            setupVideo(this.mSurfaceRequest, this.mTimebase);
        }
    }

    /* loaded from: classes.dex */
    public enum State {
        CONFIGURING,
        PENDING_RECORDING,
        PENDING_PAUSED,
        IDLING,
        RECORDING,
        PAUSED,
        STOPPING,
        RESETTING,
        ERROR
    }

    static {
        Quality quality = Quality.FHD;
        QualitySelector fromOrderedList = QualitySelector.fromOrderedList(Arrays.asList(quality, Quality.HD, Quality.SD), FallbackStrategy.higherQualityOrLowerThan(quality));
        DEFAULT_QUALITY_SELECTOR = fromOrderedList;
        VideoSpec build = VideoSpec.builder().setQualitySelector(fromOrderedList).setAspectRatio(-1).build();
        VIDEO_SPEC_DEFAULT = build;
        MEDIA_SPEC_DEFAULT = MediaSpec.builder().setOutputFormat(-1).setVideoSpec(build).build();
        PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE = new RuntimeException("The video frame producer became inactive before any data was received.");
        DEFAULT_ENCODER_FACTORY = new C0370x5ac5058d(22);
        AUDIO_EXECUTOR = CameraXExecutors.newSequentialExecutor(CameraXExecutors.ioExecutor());
        sRetrySetupVideoMaxCount = 3;
        sRetrySetupVideoDelayMs = 1000L;
    }

    public Recorder(@Nullable Executor executor, @NonNull MediaSpec mediaSpec, int i, @NonNull EncoderFactory encoderFactory, @NonNull EncoderFactory encoderFactory2) {
        boolean z;
        if (DeviceQuirks.get(EncoderNotUsePersistentInputSurfaceQuirk.class) != null) {
            z = true;
        } else {
            z = false;
        }
        this.mEncoderNotUsePersistentInputSurface = z;
        this.mState = State.CONFIGURING;
        this.mNonPendingState = null;
        this.mStreamId = 0;
        this.mActiveRecordingRecord = null;
        this.mPendingRecordingRecord = null;
        this.mLastGeneratedRecordingId = 0L;
        this.mInProgressRecording = null;
        this.mInProgressRecordingStopping = false;
        this.mInProgressTransformationInfo = null;
        this.mSourceTransformationInfo = null;
        this.mResolvedEncoderProfiles = null;
        this.mEncodingFutures = new ArrayList();
        this.mAudioTrackIndex = null;
        this.mVideoTrackIndex = null;
        this.mLatestSurface = null;
        this.mActiveSurface = null;
        this.mMediaMuxer = null;
        this.mAudioSource = null;
        this.mVideoEncoder = null;
        this.mVideoOutputConfig = null;
        this.mAudioEncoder = null;
        this.mAudioOutputConfig = null;
        this.mAudioState = AudioState.INITIALIZING;
        this.mOutputUri = Uri.EMPTY;
        this.mRecordingBytes = 0L;
        this.mRecordingDurationNs = 0L;
        this.mFirstRecordingVideoDataTimeUs = Long.MAX_VALUE;
        this.mFirstRecordingVideoBitrate = 0;
        this.mVideoEncoderBitrateRange = null;
        this.mFirstRecordingAudioDataTimeUs = Long.MAX_VALUE;
        this.mPreviousRecordingVideoDataTimeUs = Long.MAX_VALUE;
        this.mPreviousRecordingAudioDataTimeUs = Long.MAX_VALUE;
        this.mFileSizeLimitInBytes = 0L;
        this.mDurationLimitNs = 0L;
        this.mRecordingStopError = 1;
        this.mRecordingStopErrorCause = null;
        this.mPendingFirstVideoData = null;
        this.mPendingAudioRingBuffer = new ArrayRingBuffer(60);
        this.mAudioErrorCause = null;
        this.mIsAudioSourceSilenced = false;
        this.mSourceState = VideoOutput.SourceState.INACTIVE;
        this.mSourceNonStreamingTimeout = null;
        this.mNeedsResetBeforeNextStart = false;
        this.mVideoEncoderSessionToRelease = null;
        this.mAudioAmplitude = 0.0d;
        this.mShouldSendResumeEvent = false;
        this.mSetupVideoTask = null;
        this.mUserProvidedExecutor = executor;
        executor = executor == null ? CameraXExecutors.ioExecutor() : executor;
        this.mExecutor = executor;
        Executor newSequentialExecutor = CameraXExecutors.newSequentialExecutor(executor);
        this.mSequentialExecutor = newSequentialExecutor;
        this.mMediaSpec = MutableStateObservable.withInitialState(composeRecorderMediaSpec(mediaSpec));
        this.mVideoCapabilitiesSource = i;
        this.mStreamInfo = MutableStateObservable.withInitialState(StreamInfo.of(this.mStreamId, internalStateToStreamState(this.mState)));
        this.mIsRecording = MutableStateObservable.withInitialState(Boolean.FALSE);
        this.mVideoEncoderFactory = encoderFactory;
        this.mAudioEncoderFactory = encoderFactory2;
        this.mVideoEncoderSession = new VideoEncoderSession(encoderFactory, newSequentialExecutor, executor);
    }

    private void clearPendingAudioRingBuffer() {
        while (!this.mPendingAudioRingBuffer.isEmpty()) {
            this.mPendingAudioRingBuffer.dequeue();
        }
    }

    @NonNull
    private MediaSpec composeRecorderMediaSpec(@NonNull MediaSpec mediaSpec) {
        MediaSpec.Builder builder = mediaSpec.toBuilder();
        if (mediaSpec.getVideoSpec().getAspectRatio() == -1) {
            builder.configureVideo(new C0674xf27a772(6));
        }
        return builder.build();
    }

    private void configureInternal(@NonNull SurfaceRequest surfaceRequest, @NonNull Timebase timebase, boolean z) {
        int i;
        if (surfaceRequest.isServiced()) {
            Logger.w(TAG, "Ignore the SurfaceRequest since it is already served.");
            return;
        }
        surfaceRequest.setTransformationInfoListener(this.mSequentialExecutor, new C0419x35cc9f53(this, 23));
        Size resolution = surfaceRequest.getResolution();
        DynamicRange dynamicRange = surfaceRequest.getDynamicRange();
        VideoCapabilities videoCapabilities = getVideoCapabilities(surfaceRequest.getCamera().getCameraInfo());
        Quality findNearestHigherSupportedQualityFor = videoCapabilities.findNearestHigherSupportedQualityFor(resolution, dynamicRange);
        Logger.d(TAG, "Using supported quality of " + findNearestHigherSupportedQualityFor + " for surface size " + resolution);
        if (findNearestHigherSupportedQualityFor != Quality.NONE) {
            VideoValidatedEncoderProfilesProxy profiles = videoCapabilities.getProfiles(findNearestHigherSupportedQualityFor, dynamicRange);
            this.mResolvedEncoderProfiles = profiles;
            if (profiles == null) {
                throw new AssertionError("Camera advertised available quality but did not produce EncoderProfiles  for advertised quality.");
            }
        }
        SetupVideoTask setupVideoTask = this.mSetupVideoTask;
        if (setupVideoTask != null) {
            setupVideoTask.cancelFailedRetry();
        }
        if (z) {
            i = sRetrySetupVideoMaxCount;
        } else {
            i = 0;
        }
        SetupVideoTask setupVideoTask2 = new SetupVideoTask(surfaceRequest, timebase, i);
        this.mSetupVideoTask = setupVideoTask2;
        setupVideoTask2.start();
    }

    private void finalizePendingRecording(@NonNull RecordingRecord recordingRecord, int i, @Nullable Throwable th) {
        Uri uri = Uri.EMPTY;
        recordingRecord.finalizeRecording(uri);
        recordingRecord.updateVideoRecordEvent(VideoRecordEvent.finalizeWithError(recordingRecord.getOutputOptions(), RecordingStats.of(0L, 0L, AudioStats.of(1, this.mAudioErrorCause, 0.0d)), OutputResults.of(uri), i, th));
    }

    @NonNull
    private List<EncodedData> getAudioDataToWriteAndClearCache(long j) {
        ArrayList arrayList = new ArrayList();
        while (!this.mPendingAudioRingBuffer.isEmpty()) {
            EncodedData dequeue = this.mPendingAudioRingBuffer.dequeue();
            if (dequeue.getPresentationTimeUs() >= j) {
                arrayList.add(dequeue);
            }
        }
        return arrayList;
    }

    @NonNull
    public static VideoCapabilities getVideoCapabilities(@NonNull CameraInfo cameraInfo) {
        return getVideoCapabilities(cameraInfo, 0);
    }

    private int internalAudioStateToAudioStatsState(@NonNull AudioState audioState) {
        int ordinal = audioState.ordinal();
        if (ordinal != 0 && ordinal != 2) {
            if (ordinal != 3) {
                if (ordinal == 4) {
                    return 3;
                }
                if (ordinal == 5) {
                    return 4;
                }
                throw new AssertionError("Invalid internal audio state: " + audioState);
            }
            RecordingRecord recordingRecord = this.mInProgressRecording;
            if (recordingRecord != null && recordingRecord.isMuted()) {
                return 5;
            }
            if (this.mIsAudioSourceSilenced) {
                return 2;
            }
            return 0;
        }
        return 1;
    }

    @NonNull
    private StreamInfo.StreamState internalStateToStreamState(@NonNull State state) {
        DeactivateEncoderSurfaceBeforeStopEncoderQuirk deactivateEncoderSurfaceBeforeStopEncoderQuirk = (DeactivateEncoderSurfaceBeforeStopEncoderQuirk) DeviceQuirks.get(DeactivateEncoderSurfaceBeforeStopEncoderQuirk.class);
        if (state != State.RECORDING && (state != State.STOPPING || deactivateEncoderSurfaceBeforeStopEncoderQuirk != null)) {
            return StreamInfo.StreamState.INACTIVE;
        }
        return StreamInfo.StreamState.ACTIVE;
    }

    private static boolean isSameRecording(@NonNull Recording recording, @Nullable RecordingRecord recordingRecord) {
        if (recordingRecord == null || recording.getRecordingId() != recordingRecord.getRecordingId()) {
            return false;
        }
        return true;
    }

    public static /* synthetic */ void lambda$composeRecorderMediaSpec$8(VideoSpec.Builder builder) {
        builder.setAspectRatio(VIDEO_SPEC_DEFAULT.getAspectRatio());
    }

    public /* synthetic */ void lambda$configureInternal$7(SurfaceRequest.TransformationInfo transformationInfo) {
        this.mSourceTransformationInfo = transformationInfo;
    }

    public /* synthetic */ void lambda$setupAndStartMediaMuxer$9(Uri uri) {
        this.mOutputUri = uri;
    }

    public /* synthetic */ void lambda$start$2() {
        SurfaceRequest surfaceRequest = this.mLatestSurfaceRequest;
        if (surfaceRequest != null) {
            configureInternal(surfaceRequest, this.mVideoSourceTimebase, false);
            return;
        }
        throw new AssertionError("surface request is required to retry initialization.");
    }

    public static /* synthetic */ void lambda$stopInternal$13(Encoder encoder) {
        Logger.d(TAG, "The source didn't become non-streaming before timeout. Waited 1000ms");
        if (DeviceQuirks.get(DeactivateEncoderSurfaceBeforeStopEncoderQuirk.class) != null) {
            notifyEncoderSourceStopped(encoder);
        }
    }

    public /* synthetic */ Object lambda$updateEncoderCallbacks$10(RecordingRecord recordingRecord, CallbackToFutureAdapter.Completer completer) {
        this.mVideoEncoder.setEncoderCallback(new EncoderCallback() { // from class: androidx.camera.video.Recorder.3
            final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;
            final /* synthetic */ RecordingRecord val$recordingToStart;

            public AnonymousClass3(CallbackToFutureAdapter.Completer completer2, RecordingRecord recordingRecord2) {
                r2 = completer2;
                r3 = recordingRecord2;
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeError(@NonNull EncodeException encodeException) {
                r2.setException(encodeException);
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public final /* synthetic */ void onEncodePaused() {
                AbstractC0702x4f069aa2.m3310xfbe0c504(this);
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeStart() {
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeStop() {
                r2.set(null);
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodedData(@NonNull EncodedData encodedData) {
                boolean z;
                Recorder recorder = Recorder.this;
                if (recorder.mMediaMuxer == null) {
                    if (!recorder.mInProgressRecordingStopping) {
                        EncodedData encodedData2 = recorder.mPendingFirstVideoData;
                        if (encodedData2 != null) {
                            encodedData2.close();
                            Recorder.this.mPendingFirstVideoData = null;
                            z = true;
                        } else {
                            z = false;
                        }
                        if (encodedData.isKeyFrame()) {
                            Recorder recorder2 = Recorder.this;
                            recorder2.mPendingFirstVideoData = encodedData;
                            if (recorder2.isAudioEnabled() && Recorder.this.mPendingAudioRingBuffer.isEmpty()) {
                                if (z) {
                                    Logger.d(Recorder.TAG, "Replaced cached video keyframe with newer keyframe.");
                                    return;
                                } else {
                                    Logger.d(Recorder.TAG, "Cached video keyframe while we wait for first audio sample before starting muxer.");
                                    return;
                                }
                            }
                            Logger.d(Recorder.TAG, "Received video keyframe. Starting muxer...");
                            Recorder.this.setupAndStartMediaMuxer(r3);
                            return;
                        }
                        if (z) {
                            Logger.d(Recorder.TAG, "Dropped cached keyframe since we have new video data and have not yet received audio data.");
                        }
                        Logger.d(Recorder.TAG, "Dropped video data since muxer has not yet started and data is not a keyframe.");
                        Recorder.this.mVideoEncoder.requestKeyFrame();
                        encodedData.close();
                        return;
                    }
                    Logger.d(Recorder.TAG, "Drop video data since recording is stopping.");
                    encodedData.close();
                    return;
                }
                try {
                    recorder.writeVideoData(encodedData, r3);
                    if (encodedData != null) {
                        encodedData.close();
                    }
                } catch (Throwable th) {
                    if (encodedData != null) {
                        try {
                            encodedData.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onOutputConfigUpdate(@NonNull OutputConfig outputConfig) {
                Recorder.this.mVideoOutputConfig = outputConfig;
            }
        }, this.mSequentialExecutor);
        return "videoEncodingFuture";
    }

    public /* synthetic */ void lambda$updateEncoderCallbacks$11(CallbackToFutureAdapter.Completer completer, Throwable th) {
        if (this.mAudioErrorCause == null) {
            if (th instanceof EncodeException) {
                setAudioState(AudioState.ERROR_ENCODER);
            } else {
                setAudioState(AudioState.ERROR_SOURCE);
            }
            this.mAudioErrorCause = th;
            updateInProgressStatusEvent();
            completer.set(null);
        }
    }

    public /* synthetic */ Object lambda$updateEncoderCallbacks$12(RecordingRecord recordingRecord, CallbackToFutureAdapter.Completer completer) {
        C0509xe34f69ff c0509xe34f69ff = new C0509xe34f69ff(this, completer, 3);
        this.mAudioSource.setAudioSourceCallback(this.mSequentialExecutor, new AudioSource.AudioSourceCallback() { // from class: androidx.camera.video.Recorder.4
            final /* synthetic */ Consumer val$audioErrorConsumer;

            public AnonymousClass4(Consumer c0509xe34f69ff2) {
                r2 = c0509xe34f69ff2;
            }

            @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
            public void onAmplitudeValue(double d) {
                Recorder.this.mAudioAmplitude = d;
            }

            @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
            public void onError(@NonNull Throwable th) {
                Logger.e(Recorder.TAG, "Error occurred after audio source started.", th);
                if (th instanceof AudioSourceAccessException) {
                    r2.accept(th);
                }
            }

            @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
            public void onSilenceStateChanged(boolean z) {
                Recorder recorder = Recorder.this;
                if (recorder.mIsAudioSourceSilenced != z) {
                    recorder.mIsAudioSourceSilenced = z;
                    recorder.updateInProgressStatusEvent();
                } else {
                    Logger.w(Recorder.TAG, "Audio source silenced transitions to the same state " + z);
                }
            }

            @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
            public final /* synthetic */ void onSuspendStateChanged(boolean z) {
                AbstractC0430xb238ed15.m3080xfbe0c504(this, z);
            }
        });
        this.mAudioEncoder.setEncoderCallback(new EncoderCallback() { // from class: androidx.camera.video.Recorder.5
            final /* synthetic */ Consumer val$audioErrorConsumer;
            final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;
            final /* synthetic */ RecordingRecord val$recordingToStart;

            public AnonymousClass5(CallbackToFutureAdapter.Completer completer2, Consumer c0509xe34f69ff2, RecordingRecord recordingRecord2) {
                r2 = completer2;
                r3 = c0509xe34f69ff2;
                r4 = recordingRecord2;
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeError(@NonNull EncodeException encodeException) {
                if (Recorder.this.mAudioErrorCause == null) {
                    r3.accept(encodeException);
                }
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public final /* synthetic */ void onEncodePaused() {
                AbstractC0702x4f069aa2.m3310xfbe0c504(this);
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeStart() {
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodeStop() {
                r2.set(null);
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onEncodedData(@NonNull EncodedData encodedData) {
                Recorder recorder = Recorder.this;
                if (recorder.mAudioState != AudioState.DISABLED) {
                    if (recorder.mMediaMuxer == null) {
                        if (!recorder.mInProgressRecordingStopping) {
                            recorder.mPendingAudioRingBuffer.enqueue(new BufferCopiedEncodedData(encodedData));
                            if (Recorder.this.mPendingFirstVideoData != null) {
                                Logger.d(Recorder.TAG, "Received audio data. Starting muxer...");
                                Recorder.this.setupAndStartMediaMuxer(r4);
                            } else {
                                Logger.d(Recorder.TAG, "Cached audio data while we wait for video keyframe before starting muxer.");
                            }
                        } else {
                            Logger.d(Recorder.TAG, "Drop audio data since recording is stopping.");
                        }
                        encodedData.close();
                        return;
                    }
                    try {
                        recorder.writeAudioData(encodedData, r4);
                        if (encodedData != null) {
                            encodedData.close();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        if (encodedData != null) {
                            try {
                                encodedData.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                }
                encodedData.close();
                throw new AssertionError("Audio is not enabled but audio encoded data is being produced.");
            }

            @Override // androidx.camera.video.internal.encoder.EncoderCallback
            public void onOutputConfigUpdate(@NonNull OutputConfig outputConfig) {
                Recorder.this.mAudioOutputConfig = outputConfig;
            }
        }, this.mSequentialExecutor);
        return "audioEncodingFuture";
    }

    @NonNull
    @GuardedBy("mLock")
    private RecordingRecord makePendingRecordingActiveLocked(@NonNull State state) {
        boolean z;
        if (state == State.PENDING_PAUSED) {
            z = true;
        } else if (state == State.PENDING_RECORDING) {
            z = false;
        } else {
            throw new AssertionError("makePendingRecordingActiveLocked() can only be called from a pending state.");
        }
        if (this.mActiveRecordingRecord == null) {
            RecordingRecord recordingRecord = this.mPendingRecordingRecord;
            if (recordingRecord != null) {
                this.mActiveRecordingRecord = recordingRecord;
                recordingRecord.getRecordingState().addObserver(CameraXExecutors.directExecutor(), new Observable.Observer<Boolean>() { // from class: androidx.camera.video.Recorder.7
                    public AnonymousClass7() {
                    }

                    @Override // androidx.camera.core.impl.Observable.Observer
                    public void onError(@NonNull Throwable th) {
                        Recorder.this.mIsRecording.setError(th);
                    }

                    @Override // androidx.camera.core.impl.Observable.Observer
                    public void onNewData(@Nullable Boolean bool) {
                        Recorder.this.mIsRecording.setState(bool);
                    }
                });
                this.mPendingRecordingRecord = null;
                if (z) {
                    setState(State.PAUSED);
                } else {
                    setState(State.RECORDING);
                }
                return recordingRecord;
            }
            throw new AssertionError("Pending recording should exist when in a PENDING state.");
        }
        throw new AssertionError("Cannot make pending recording active because another recording is already active.");
    }

    /* renamed from: muteInternal */
    public void lambda$mute$6(@NonNull RecordingRecord recordingRecord, boolean z) {
        AudioSource audioSource;
        if (recordingRecord.isMuted() == z) {
            return;
        }
        recordingRecord.mute(z);
        if (this.mInProgressRecording == recordingRecord && !this.mInProgressRecordingStopping && (audioSource = this.mAudioSource) != null) {
            audioSource.mute(z);
        }
    }

    public static void notifyEncoderSourceStopped(@NonNull Encoder encoder) {
        if (encoder instanceof EncoderImpl) {
            ((EncoderImpl) encoder).signalSourceStopped();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x001b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0071 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:4:0x0005, B:6:0x0009, B:7:0x001b, B:12:0x00af, B:32:0x0027, B:34:0x002b, B:36:0x0031, B:39:0x003c, B:42:0x0049, B:43:0x0054, B:44:0x0067, B:46:0x006b, B:48:0x0071, B:49:0x0081, B:51:0x0085, B:53:0x008b, B:56:0x0093, B:58:0x009b, B:60:0x009f, B:63:0x00d8, B:64:0x00df), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0081 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:4:0x0005, B:6:0x0009, B:7:0x001b, B:12:0x00af, B:32:0x0027, B:34:0x002b, B:36:0x0031, B:39:0x003c, B:42:0x0049, B:43:0x0054, B:44:0x0067, B:46:0x006b, B:48:0x0071, B:49:0x0081, B:51:0x0085, B:53:0x008b, B:56:0x0093, B:58:0x009b, B:60:0x009f, B:63:0x00d8, B:64:0x00df), top: B:3:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void onRecordingFinalized(@NonNull RecordingRecord recordingRecord) {
        RecordingRecord recordingRecord2;
        boolean z;
        RecordingRecord recordingRecord3;
        Throwable th;
        boolean z2;
        boolean z3;
        int i;
        synchronized (this.mLock) {
            try {
                RecordingRecord recordingRecord4 = this.mActiveRecordingRecord;
                if (recordingRecord4 == recordingRecord) {
                    recordingRecord4.getRecordingState().removeObservers();
                    recordingRecord2 = null;
                    this.mActiveRecordingRecord = null;
                    boolean z4 = true;
                    switch (this.mState.ordinal()) {
                        case 1:
                            z = false;
                            if (this.mSourceState != VideoOutput.SourceState.INACTIVE) {
                                recordingRecord3 = this.mPendingRecordingRecord;
                                this.mPendingRecordingRecord = null;
                                setState(State.CONFIGURING);
                                th = PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE;
                                z2 = false;
                                z3 = false;
                                i = 4;
                            } else if (this.mEncoderNotUsePersistentInputSurface) {
                                this.mActiveSurface = null;
                                SurfaceRequest surfaceRequest = this.mLatestSurfaceRequest;
                                if (surfaceRequest == null || surfaceRequest.isServiced()) {
                                    z4 = false;
                                }
                                updateNonPendingState(State.CONFIGURING);
                                recordingRecord3 = null;
                                z2 = z4;
                                z3 = false;
                                i = 0;
                                th = recordingRecord3;
                            } else if (this.mVideoEncoder != null) {
                                th = null;
                                z2 = false;
                                z3 = false;
                                i = 0;
                                recordingRecord2 = makePendingRecordingActiveLocked(this.mState);
                                recordingRecord3 = null;
                            } else {
                                recordingRecord3 = null;
                                th = null;
                                z2 = false;
                                z3 = false;
                                i = 0;
                            }
                            break;
                        case 2:
                            z = true;
                            if (this.mSourceState != VideoOutput.SourceState.INACTIVE) {
                            }
                            break;
                        case 3:
                            throw new AssertionError("Unexpected state on finalize of recording: " + this.mState);
                        case 4:
                        case 5:
                        case 6:
                            if (this.mEncoderNotUsePersistentInputSurface) {
                                this.mActiveSurface = null;
                                SurfaceRequest surfaceRequest2 = this.mLatestSurfaceRequest;
                                if (surfaceRequest2 == null || surfaceRequest2.isServiced()) {
                                    z4 = false;
                                }
                                setState(State.CONFIGURING);
                                recordingRecord3 = null;
                                z2 = z4;
                                z = false;
                                z3 = false;
                                i = 0;
                                th = recordingRecord3;
                                break;
                            } else {
                                setState(State.IDLING);
                                recordingRecord3 = null;
                                th = null;
                                z = false;
                                z2 = false;
                                z3 = false;
                                i = 0;
                            }
                            break;
                        case 7:
                            recordingRecord3 = null;
                            th = null;
                            z = false;
                            z2 = false;
                            z3 = true;
                            i = 0;
                            break;
                        default:
                            recordingRecord3 = null;
                            th = null;
                            z = false;
                            z2 = false;
                            z3 = false;
                            i = 0;
                            break;
                    }
                } else {
                    throw new AssertionError("Active recording did not match finalized recording on finalize.");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z2) {
            configureInternal(this.mLatestSurfaceRequest, this.mVideoSourceTimebase, false);
            return;
        }
        if (z3) {
            reset();
            return;
        }
        if (recordingRecord2 != null) {
            if (!this.mEncoderNotUsePersistentInputSurface) {
                startRecording(recordingRecord2, z);
                return;
            }
            throw new AssertionError("Attempt to start a pending recording while the Recorder is waiting for a new surface request.");
        }
        if (recordingRecord3 != null) {
            finalizePendingRecording(recordingRecord3, i, th);
        }
    }

    private void onResetVideo() {
        boolean z;
        SurfaceRequest surfaceRequest;
        synchronized (this.mLock) {
            try {
                switch (this.mState.ordinal()) {
                    case 1:
                    case 2:
                        updateNonPendingState(State.CONFIGURING);
                        z = true;
                        break;
                    case 4:
                    case 5:
                    case 8:
                        if (isPersistentRecordingInProgress()) {
                            z = false;
                            break;
                        }
                    case 3:
                    case 6:
                    case 7:
                        setState(State.CONFIGURING);
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mNeedsResetBeforeNextStart = false;
        if (z && (surfaceRequest = this.mLatestSurfaceRequest) != null && !surfaceRequest.isServiced()) {
            configureInternal(this.mLatestSurfaceRequest, this.mVideoSourceTimebase, false);
        }
    }

    /* renamed from: onSurfaceRequestedInternal */
    public void lambda$onSurfaceRequested$0(@NonNull SurfaceRequest surfaceRequest, @NonNull Timebase timebase) {
        SurfaceRequest surfaceRequest2 = this.mLatestSurfaceRequest;
        if (surfaceRequest2 != null && !surfaceRequest2.isServiced()) {
            this.mLatestSurfaceRequest.willNotProvideSurface();
        }
        this.mLatestSurfaceRequest = surfaceRequest;
        this.mVideoSourceTimebase = timebase;
        configureInternal(surfaceRequest, timebase, true);
    }

    /* renamed from: pauseInternal */
    public void lambda$pause$3(@NonNull RecordingRecord recordingRecord) {
        if (this.mInProgressRecording == recordingRecord && !this.mInProgressRecordingStopping) {
            if (isAudioEnabled()) {
                this.mAudioEncoder.pause();
            }
            this.mVideoEncoder.pause();
            RecordingRecord recordingRecord2 = this.mInProgressRecording;
            recordingRecord2.updateVideoRecordEvent(VideoRecordEvent.pause(recordingRecord2.getOutputOptions(), getInProgressRecordingStats()));
        }
    }

    @NonNull
    private PendingRecording prepareRecordingInternal(@NonNull Context context, @NonNull OutputOptions outputOptions) {
        Preconditions.checkNotNull(outputOptions, "The OutputOptions cannot be null.");
        return new PendingRecording(context, this, outputOptions);
    }

    private void releaseCurrentAudioSource() {
        AudioSource audioSource = this.mAudioSource;
        if (audioSource != null) {
            this.mAudioSource = null;
            Logger.d(TAG, String.format("Releasing audio source: 0x%x", Integer.valueOf(audioSource.hashCode())));
            Futures.addCallback(audioSource.release(), new FutureCallback<Void>() { // from class: androidx.camera.video.Recorder.2
                final /* synthetic */ AudioSource val$audioSource;

                public AnonymousClass2(AudioSource audioSource2) {
                    r2 = audioSource2;
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onFailure(@NonNull Throwable th) {
                    Logger.d(Recorder.TAG, String.format("An error occurred while attempting to release audio source: 0x%x", Integer.valueOf(r2.hashCode())));
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onSuccess(@Nullable Void r3) {
                    Logger.d(Recorder.TAG, String.format("Released audio source successfully: 0x%x", Integer.valueOf(r2.hashCode())));
                }
            }, CameraXExecutors.directExecutor());
            return;
        }
        throw new AssertionError("Cannot release null audio source.");
    }

    private void reset() {
        if (this.mAudioEncoder != null) {
            Logger.d(TAG, "Releasing audio encoder.");
            this.mAudioEncoder.release();
            this.mAudioEncoder = null;
            this.mAudioOutputConfig = null;
        }
        if (this.mAudioSource != null) {
            releaseCurrentAudioSource();
        }
        setAudioState(AudioState.INITIALIZING);
        resetVideo();
    }

    private void resetVideo() {
        if (this.mVideoEncoder != null) {
            Logger.d(TAG, "Releasing video encoder.");
            tryReleaseVideoEncoder();
        }
        onResetVideo();
    }

    @GuardedBy("mLock")
    private void restoreNonPendingState() {
        if (PENDING_STATES.contains(this.mState)) {
            setState(this.mNonPendingState);
        } else {
            throw new AssertionError("Cannot restore non-pending state when in state " + this.mState);
        }
    }

    /* renamed from: resumeInternal */
    public void lambda$resume$4(@NonNull RecordingRecord recordingRecord) {
        if (this.mInProgressRecording == recordingRecord && !this.mInProgressRecordingStopping) {
            if (isAudioEnabled()) {
                this.mAudioEncoder.start();
            }
            Encoder encoder = this.mVideoEncoder;
            if (encoder != null) {
                encoder.start();
                RecordingRecord recordingRecord2 = this.mInProgressRecording;
                recordingRecord2.updateVideoRecordEvent(VideoRecordEvent.resume(recordingRecord2.getOutputOptions(), getInProgressRecordingStats()));
                return;
            }
            this.mShouldSendResumeEvent = true;
        }
    }

    @NonNull
    public ListenableFuture<Void> safeToCloseVideoEncoder() {
        Logger.d(TAG, "Try to safely release video encoder: " + this.mVideoEncoder);
        return this.mVideoEncoderSession.signalTermination();
    }

    @NonNull
    public static ScheduledFuture<?> scheduleTask(@NonNull Runnable runnable, @NonNull Executor executor, long j, TimeUnit timeUnit) {
        return CameraXExecutors.mainThreadExecutor().schedule(new RunnableC0938xaa9be1e3(executor, runnable, 8), j, timeUnit);
    }

    @GuardedBy("mLock")
    private void setStreamId(int i) {
        if (this.mStreamId == i) {
            return;
        }
        Logger.d(TAG, "Transitioning streamId: " + this.mStreamId + " --> " + i);
        this.mStreamId = i;
        this.mStreamInfo.setState(StreamInfo.of(i, internalStateToStreamState(this.mState), this.mInProgressTransformationInfo));
    }

    @RequiresPermission("android.permission.RECORD_AUDIO")
    private void setupAudio(@NonNull RecordingRecord recordingRecord) {
        MediaSpec mediaSpec = (MediaSpec) getObservableData(this.mMediaSpec);
        AudioMimeInfo resolveAudioMimeInfo = AudioConfigUtil.resolveAudioMimeInfo(mediaSpec, this.mResolvedEncoderProfiles);
        Timebase timebase = Timebase.UPTIME;
        AudioSettings resolveAudioSettings = AudioConfigUtil.resolveAudioSettings(resolveAudioMimeInfo, mediaSpec.getAudioSpec());
        if (this.mAudioSource != null) {
            releaseCurrentAudioSource();
        }
        AudioSource audioSource = setupAudioSource(recordingRecord, resolveAudioSettings);
        this.mAudioSource = audioSource;
        Logger.d(TAG, String.format("Set up new audio source: 0x%x", Integer.valueOf(audioSource.hashCode())));
        Encoder createEncoder = this.mAudioEncoderFactory.createEncoder(this.mExecutor, AudioConfigUtil.resolveAudioEncoderConfig(resolveAudioMimeInfo, timebase, resolveAudioSettings, mediaSpec.getAudioSpec()));
        this.mAudioEncoder = createEncoder;
        Encoder.EncoderInput input = createEncoder.getInput();
        if (input instanceof Encoder.ByteBufferInput) {
            this.mAudioSource.setBufferProvider((Encoder.ByteBufferInput) input);
            return;
        }
        throw new AssertionError("The EncoderInput of audio isn't a ByteBufferInput.");
    }

    @NonNull
    @RequiresPermission("android.permission.RECORD_AUDIO")
    private AudioSource setupAudioSource(@NonNull RecordingRecord recordingRecord, @NonNull AudioSettings audioSettings) {
        return recordingRecord.performOneTimeAudioSourceCreation(audioSettings, AUDIO_EXECUTOR);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e4  */
    @SuppressLint({"MissingPermission"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void startInternal(@NonNull RecordingRecord recordingRecord) {
        AudioState audioState;
        AudioState audioState2;
        if (this.mInProgressRecording == null) {
            if (recordingRecord.getOutputOptions().getFileSizeLimit() > 0) {
                this.mFileSizeLimitInBytes = Math.round(recordingRecord.getOutputOptions().getFileSizeLimit() * 0.95d);
                Logger.d(TAG, "File size limit in bytes: " + this.mFileSizeLimitInBytes);
            } else {
                this.mFileSizeLimitInBytes = 0L;
            }
            if (recordingRecord.getOutputOptions().getDurationLimitMillis() > 0) {
                this.mDurationLimitNs = TimeUnit.MILLISECONDS.toNanos(recordingRecord.getOutputOptions().getDurationLimitMillis());
                Logger.d(TAG, "Duration limit in nanoseconds: " + this.mDurationLimitNs);
            } else {
                this.mDurationLimitNs = 0L;
            }
            this.mInProgressRecording = recordingRecord;
            int ordinal = this.mAudioState.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2 || ordinal == 3 || ordinal == 4 || ordinal == 5) {
                        throw new AssertionError("Incorrectly invoke startInternal in audio state " + this.mAudioState);
                    }
                } else {
                    if (recordingRecord.hasAudioEnabled()) {
                        audioState2 = AudioState.ENABLED;
                    } else {
                        audioState2 = AudioState.DISABLED;
                    }
                    setAudioState(audioState2);
                }
            } else if (recordingRecord.hasAudioEnabled()) {
                if (isAudioSupported()) {
                    try {
                        if (this.mInProgressRecording.isPersistent()) {
                            if (this.mAudioEncoder == null) {
                            }
                            setAudioState(AudioState.ENABLED);
                        }
                        setupAudio(recordingRecord);
                        setAudioState(AudioState.ENABLED);
                    } catch (AudioSourceAccessException e) {
                        e = e;
                        Logger.e(TAG, "Unable to create audio resource with error: ", e);
                        if (!(e instanceof InvalidConfigException)) {
                            audioState = AudioState.ERROR_ENCODER;
                        } else {
                            audioState = AudioState.ERROR_SOURCE;
                        }
                        setAudioState(audioState);
                        this.mAudioErrorCause = e;
                        updateEncoderCallbacks(recordingRecord, false);
                        if (isAudioEnabled()) {
                        }
                        this.mVideoEncoder.start();
                        RecordingRecord recordingRecord2 = this.mInProgressRecording;
                        recordingRecord2.updateVideoRecordEvent(VideoRecordEvent.start(recordingRecord2.getOutputOptions(), getInProgressRecordingStats()));
                        return;
                    } catch (InvalidConfigException e2) {
                        e = e2;
                        Logger.e(TAG, "Unable to create audio resource with error: ", e);
                        if (!(e instanceof InvalidConfigException)) {
                        }
                        setAudioState(audioState);
                        this.mAudioErrorCause = e;
                        updateEncoderCallbacks(recordingRecord, false);
                        if (isAudioEnabled()) {
                        }
                        this.mVideoEncoder.start();
                        RecordingRecord recordingRecord22 = this.mInProgressRecording;
                        recordingRecord22.updateVideoRecordEvent(VideoRecordEvent.start(recordingRecord22.getOutputOptions(), getInProgressRecordingStats()));
                        return;
                    }
                } else {
                    throw new AssertionError("The Recorder doesn't support recording with audio");
                }
            }
            updateEncoderCallbacks(recordingRecord, false);
            if (isAudioEnabled()) {
                this.mAudioSource.start(recordingRecord.isMuted());
                this.mAudioEncoder.start();
            }
            this.mVideoEncoder.start();
            RecordingRecord recordingRecord222 = this.mInProgressRecording;
            recordingRecord222.updateVideoRecordEvent(VideoRecordEvent.start(recordingRecord222.getOutputOptions(), getInProgressRecordingStats()));
            return;
        }
        throw new AssertionError("Attempted to start a new recording while another was in progress.");
    }

    private void startRecording(@NonNull RecordingRecord recordingRecord, boolean z) {
        startInternal(recordingRecord);
        if (z) {
            lambda$pause$3(recordingRecord);
        }
    }

    private static int supportedMuxerFormatOrDefaultFrom(@Nullable VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy, int i) {
        if (videoValidatedEncoderProfilesProxy != null) {
            int recommendedFileFormat = videoValidatedEncoderProfilesProxy.getRecommendedFileFormat();
            if (recommendedFileFormat != 1) {
                if (recommendedFileFormat == 2) {
                    return 0;
                }
                if (recommendedFileFormat == 9) {
                    return 1;
                }
            } else {
                if (Build.VERSION.SDK_INT < 26) {
                    return 0;
                }
                return 2;
            }
        }
        return i;
    }

    private void tryReleaseVideoEncoder() {
        boolean z;
        VideoEncoderSession videoEncoderSession = this.mVideoEncoderSessionToRelease;
        if (videoEncoderSession != null) {
            if (videoEncoderSession.getVideoEncoder() == this.mVideoEncoder) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z);
            Logger.d(TAG, "Releasing video encoder: " + this.mVideoEncoder);
            this.mVideoEncoderSessionToRelease.terminateNow();
            this.mVideoEncoderSessionToRelease = null;
            this.mVideoEncoder = null;
            this.mVideoOutputConfig = null;
            setLatestSurface(null);
            return;
        }
        safeToCloseVideoEncoder();
    }

    private void updateEncoderCallbacks(@NonNull final RecordingRecord recordingRecord, boolean z) {
        if (!this.mEncodingFutures.isEmpty()) {
            ListenableFuture allAsList = Futures.allAsList(this.mEncodingFutures);
            if (!allAsList.isDone()) {
                allAsList.cancel(true);
            }
            this.mEncodingFutures.clear();
        }
        final int i = 0;
        this.mEncodingFutures.add(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver(this) { // from class: androidx.camera.video.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ Recorder f254x3271d0aa;

            {
                this.f254x3271d0aa = this;
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$updateEncoderCallbacks$10;
                Object lambda$updateEncoderCallbacks$12;
                switch (i) {
                    case 0:
                        lambda$updateEncoderCallbacks$10 = this.f254x3271d0aa.lambda$updateEncoderCallbacks$10(recordingRecord, completer);
                        return lambda$updateEncoderCallbacks$10;
                    default:
                        lambda$updateEncoderCallbacks$12 = this.f254x3271d0aa.lambda$updateEncoderCallbacks$12(recordingRecord, completer);
                        return lambda$updateEncoderCallbacks$12;
                }
            }
        }));
        if (isAudioEnabled() && !z) {
            final int i2 = 1;
            this.mEncodingFutures.add(CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver(this) { // from class: androidx.camera.video.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫

                /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                public final /* synthetic */ Recorder f254x3271d0aa;

                {
                    this.f254x3271d0aa = this;
                }

                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                    Object lambda$updateEncoderCallbacks$10;
                    Object lambda$updateEncoderCallbacks$12;
                    switch (i2) {
                        case 0:
                            lambda$updateEncoderCallbacks$10 = this.f254x3271d0aa.lambda$updateEncoderCallbacks$10(recordingRecord, completer);
                            return lambda$updateEncoderCallbacks$10;
                        default:
                            lambda$updateEncoderCallbacks$12 = this.f254x3271d0aa.lambda$updateEncoderCallbacks$12(recordingRecord, completer);
                            return lambda$updateEncoderCallbacks$12;
                    }
                }
            }));
        }
        Futures.addCallback(Futures.allAsList(this.mEncodingFutures), new FutureCallback<List<Void>>() { // from class: androidx.camera.video.Recorder.6
            public AnonymousClass6() {
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                boolean z2;
                int i3;
                if (Recorder.this.mInProgressRecording != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Preconditions.checkState(z2, "In-progress recording shouldn't be null");
                if (!Recorder.this.mInProgressRecording.isPersistent()) {
                    Logger.d(Recorder.TAG, "Encodings end with error: " + th);
                    Recorder recorder = Recorder.this;
                    if (recorder.mMediaMuxer == null) {
                        i3 = 8;
                    } else {
                        i3 = 6;
                    }
                    recorder.finalizeInProgressRecording(i3, th);
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable List<Void> list) {
                Logger.d(Recorder.TAG, "Encodings end successfully.");
                Recorder recorder = Recorder.this;
                recorder.finalizeInProgressRecording(recorder.mRecordingStopError, recorder.mRecordingStopErrorCause);
            }
        }, CameraXExecutors.directExecutor());
    }

    @GuardedBy("mLock")
    private void updateNonPendingState(@NonNull State state) {
        if (PENDING_STATES.contains(this.mState)) {
            if (VALID_NON_PENDING_STATES_WHILE_PENDING.contains(state)) {
                if (this.mNonPendingState != state) {
                    this.mNonPendingState = state;
                    this.mStreamInfo.setState(StreamInfo.of(this.mStreamId, internalStateToStreamState(state), this.mInProgressTransformationInfo));
                    return;
                }
                return;
            }
            throw new AssertionError("Invalid state transition. State is not a valid non-pending state while in a pending state: " + state);
        }
        throw new AssertionError("Can only updated non-pending state from a pending state, but state is " + this.mState);
    }

    public void finalizeInProgressRecording(int i, @Nullable Throwable th) {
        VideoRecordEvent.Finalize finalizeWithError;
        if (this.mInProgressRecording != null) {
            MediaMuxer mediaMuxer = this.mMediaMuxer;
            if (mediaMuxer != null) {
                try {
                    mediaMuxer.stop();
                    this.mMediaMuxer.release();
                } catch (IllegalStateException e) {
                    Logger.e(TAG, "MediaMuxer failed to stop or release with error: " + e.getMessage());
                    if (i == 0) {
                        i = 1;
                    }
                }
                this.mMediaMuxer = null;
            } else if (i == 0) {
                i = 8;
            }
            this.mInProgressRecording.finalizeRecording(this.mOutputUri);
            OutputOptions outputOptions = this.mInProgressRecording.getOutputOptions();
            RecordingStats inProgressRecordingStats = getInProgressRecordingStats();
            OutputResults of = OutputResults.of(this.mOutputUri);
            RecordingRecord recordingRecord = this.mInProgressRecording;
            if (i == 0) {
                finalizeWithError = VideoRecordEvent.finalize(outputOptions, inProgressRecordingStats, of);
            } else {
                finalizeWithError = VideoRecordEvent.finalizeWithError(outputOptions, inProgressRecordingStats, of, i, th);
            }
            recordingRecord.updateVideoRecordEvent(finalizeWithError);
            RecordingRecord recordingRecord2 = this.mInProgressRecording;
            this.mInProgressRecording = null;
            this.mInProgressRecordingStopping = false;
            this.mAudioTrackIndex = null;
            this.mVideoTrackIndex = null;
            this.mEncodingFutures.clear();
            this.mOutputUri = Uri.EMPTY;
            this.mRecordingBytes = 0L;
            this.mRecordingDurationNs = 0L;
            this.mFirstRecordingVideoDataTimeUs = Long.MAX_VALUE;
            this.mFirstRecordingAudioDataTimeUs = Long.MAX_VALUE;
            this.mPreviousRecordingVideoDataTimeUs = Long.MAX_VALUE;
            this.mPreviousRecordingAudioDataTimeUs = Long.MAX_VALUE;
            this.mRecordingStopError = 1;
            this.mRecordingStopErrorCause = null;
            this.mAudioErrorCause = null;
            this.mAudioAmplitude = 0.0d;
            clearPendingAudioRingBuffer();
            setInProgressTransformationInfo(null);
            int ordinal = this.mAudioState.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2 && ordinal != 3) {
                    if (ordinal == 4 || ordinal == 5) {
                        setAudioState(AudioState.INITIALIZING);
                    }
                } else {
                    setAudioState(AudioState.IDLING);
                    this.mAudioSource.stop();
                }
                onRecordingFinalized(recordingRecord2);
                return;
            }
            throw new AssertionError("Incorrectly finalize recording when audio state is IDLING");
        }
        throw new AssertionError("Attempted to finalize in-progress recording, but no recording is in progress.");
    }

    public int getAspectRatio() {
        return ((MediaSpec) getObservableData(this.mMediaSpec)).getVideoSpec().getAspectRatio();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int getAudioSource() {
        return ((MediaSpec) getObservableData(this.mMediaSpec)).getAudioSpec().getSource();
    }

    @Nullable
    public Executor getExecutor() {
        return this.mUserProvidedExecutor;
    }

    @NonNull
    public RecordingStats getInProgressRecordingStats() {
        return RecordingStats.of(this.mRecordingDurationNs, this.mRecordingBytes, AudioStats.of(internalAudioStateToAudioStatsState(this.mAudioState), this.mAudioErrorCause, this.mAudioAmplitude));
    }

    @Override // androidx.camera.video.VideoOutput
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public VideoCapabilities getMediaCapabilities(@NonNull CameraInfo cameraInfo) {
        return getVideoCapabilities(cameraInfo, this.mVideoCapabilitiesSource);
    }

    @Override // androidx.camera.video.VideoOutput
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Observable<MediaSpec> getMediaSpec() {
        return this.mMediaSpec;
    }

    public <T> T getObservableData(@NonNull StateObservable<T> stateObservable) {
        try {
            return stateObservable.fetchData().get();
        } catch (InterruptedException | ExecutionException e) {
            throw new IllegalStateException(e);
        }
    }

    @NonNull
    public QualitySelector getQualitySelector() {
        return ((MediaSpec) getObservableData(this.mMediaSpec)).getVideoSpec().getQualitySelector();
    }

    @Override // androidx.camera.video.VideoOutput
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Observable<StreamInfo> getStreamInfo() {
        return this.mStreamInfo;
    }

    public int getTargetVideoEncodingBitRate() {
        return ((MediaSpec) getObservableData(this.mMediaSpec)).getVideoSpec().getBitrate().getLower().intValue();
    }

    public int getVideoCapabilitiesSource() {
        return this.mVideoCapabilitiesSource;
    }

    public boolean isAudioEnabled() {
        if (this.mAudioState == AudioState.ENABLED) {
            return true;
        }
        return false;
    }

    public boolean isAudioSupported() {
        if (((MediaSpec) getObservableData(this.mMediaSpec)).getAudioSpec().getChannelCount() != 0) {
            return true;
        }
        return false;
    }

    public boolean isPersistentRecordingInProgress() {
        RecordingRecord recordingRecord = this.mInProgressRecording;
        if (recordingRecord != null && recordingRecord.isPersistent()) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.video.VideoOutput
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Observable<Boolean> isSourceStreamRequired() {
        return this.mIsRecording;
    }

    public void mute(@NonNull Recording recording, final boolean z) {
        final RecordingRecord recordingRecord;
        synchronized (this.mLock) {
            try {
                if (!isSameRecording(recording, this.mPendingRecordingRecord) && !isSameRecording(recording, this.mActiveRecordingRecord)) {
                    Logger.d(TAG, "mute() called on a recording that is no longer active: " + recording.getOutputOptions());
                } else {
                    if (isSameRecording(recording, this.mPendingRecordingRecord)) {
                        recordingRecord = this.mPendingRecordingRecord;
                    } else {
                        recordingRecord = this.mActiveRecordingRecord;
                    }
                    this.mSequentialExecutor.execute(new Runnable() { // from class: androidx.camera.video.뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨
                        @Override // java.lang.Runnable
                        public final void run() {
                            Recorder.this.lambda$mute$6(recordingRecord, z);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x005d A[Catch: all -> 0x001c, TryCatch #0 {all -> 0x001c, blocks: (B:4:0x0005, B:5:0x000e, B:10:0x0083, B:27:0x0013, B:28:0x001f, B:31:0x0024, B:32:0x002b, B:34:0x002f, B:36:0x003d, B:37:0x0050, B:39:0x0054, B:42:0x005d, B:44:0x0063, B:45:0x006e, B:47:0x007a), top: B:3:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onConfigured() {
        RecordingRecord recordingRecord;
        boolean z;
        Exception exc;
        int i;
        boolean z2;
        RecordingRecord recordingRecord2;
        synchronized (this.mLock) {
            try {
                recordingRecord = null;
                switch (this.mState) {
                    case CONFIGURING:
                        setState(State.IDLING);
                        recordingRecord2 = null;
                        exc = null;
                        z = false;
                        i = 0;
                        z2 = false;
                        break;
                    case PENDING_RECORDING:
                        z = false;
                        if (this.mActiveRecordingRecord == null) {
                            recordingRecord2 = null;
                            exc = null;
                            i = 0;
                            z2 = false;
                            break;
                        } else if (this.mSourceState == VideoOutput.SourceState.INACTIVE) {
                            recordingRecord2 = this.mPendingRecordingRecord;
                            this.mPendingRecordingRecord = null;
                            restoreNonPendingState();
                            exc = PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE;
                            i = 4;
                            z2 = false;
                        } else {
                            exc = null;
                            i = 0;
                            z2 = false;
                            recordingRecord = makePendingRecordingActiveLocked(this.mState);
                            recordingRecord2 = null;
                        }
                    case PENDING_PAUSED:
                        z = true;
                        if (this.mActiveRecordingRecord == null) {
                        }
                        break;
                    case IDLING:
                    case RESETTING:
                        throw new AssertionError("Incorrectly invoke onConfigured() in state " + this.mState);
                    case RECORDING:
                        z = false;
                        Preconditions.checkState(isPersistentRecordingInProgress(), "Unexpectedly invoke onConfigured() when there's a non-persistent in-progress recording");
                        recordingRecord2 = null;
                        exc = null;
                        i = 0;
                        z2 = true;
                        break;
                    case PAUSED:
                        z = true;
                        Preconditions.checkState(isPersistentRecordingInProgress(), "Unexpectedly invoke onConfigured() when there's a non-persistent in-progress recording");
                        recordingRecord2 = null;
                        exc = null;
                        i = 0;
                        z2 = true;
                        break;
                    case STOPPING:
                        if (!this.mEncoderNotUsePersistentInputSurface) {
                            throw new AssertionError("Unexpectedly invoke onConfigured() in a STOPPING state when it's not waiting for a new surface.");
                        }
                        recordingRecord2 = null;
                        exc = null;
                        z = false;
                        i = 0;
                        z2 = false;
                        break;
                    case ERROR:
                        Logger.e(TAG, "onConfigured() was invoked when the Recorder had encountered error");
                        recordingRecord2 = null;
                        exc = null;
                        z = false;
                        i = 0;
                        z2 = false;
                        break;
                    default:
                        recordingRecord2 = null;
                        exc = null;
                        z = false;
                        i = 0;
                        z2 = false;
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2) {
            updateEncoderCallbacks(this.mInProgressRecording, true);
            this.mVideoEncoder.start();
            if (this.mShouldSendResumeEvent) {
                RecordingRecord recordingRecord3 = this.mInProgressRecording;
                recordingRecord3.updateVideoRecordEvent(VideoRecordEvent.resume(recordingRecord3.getOutputOptions(), getInProgressRecordingStats()));
                this.mShouldSendResumeEvent = false;
            }
            if (z) {
                this.mVideoEncoder.pause();
                return;
            }
            return;
        }
        if (recordingRecord != null) {
            startRecording(recordingRecord, z);
        } else if (recordingRecord2 != null) {
            finalizePendingRecording(recordingRecord2, i, exc);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000c. Please report as an issue. */
    public void onEncoderSetupError(@Nullable Throwable th) {
        RecordingRecord recordingRecord;
        synchronized (this.mLock) {
            try {
                recordingRecord = null;
                switch (this.mState) {
                    case PENDING_RECORDING:
                    case PENDING_PAUSED:
                        RecordingRecord recordingRecord2 = this.mPendingRecordingRecord;
                        this.mPendingRecordingRecord = null;
                        recordingRecord = recordingRecord2;
                    case CONFIGURING:
                        setStreamId(-1);
                        setState(State.ERROR);
                        break;
                    case IDLING:
                    case RECORDING:
                    case PAUSED:
                    case STOPPING:
                    case RESETTING:
                        throw new AssertionError("Encountered encoder setup error while in unexpected state " + this.mState + ": " + th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (recordingRecord != null) {
            finalizePendingRecording(recordingRecord, 7, th);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0010. Please report as an issue. */
    public void onInProgressRecordingInternalError(@NonNull RecordingRecord recordingRecord, int i, @Nullable Throwable th) {
        boolean z;
        if (recordingRecord == this.mInProgressRecording) {
            synchronized (this.mLock) {
                try {
                    z = false;
                    switch (this.mState) {
                        case CONFIGURING:
                        case IDLING:
                        case ERROR:
                            throw new AssertionError("In-progress recording error occurred while in unexpected state: " + this.mState);
                        case RECORDING:
                        case PAUSED:
                            setState(State.STOPPING);
                            z = true;
                        case PENDING_RECORDING:
                        case PENDING_PAUSED:
                        case STOPPING:
                        case RESETTING:
                            if (recordingRecord != this.mActiveRecordingRecord) {
                                throw new AssertionError("Internal error occurred for recording but it is not the active recording.");
                            }
                            break;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (z) {
                lambda$stop$5(recordingRecord, -1L, i, th);
                return;
            }
            return;
        }
        throw new AssertionError("Internal error occurred on recording that is not the current in-progress recording.");
    }

    @Override // androidx.camera.video.VideoOutput
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void onSourceStateChanged(@NonNull VideoOutput.SourceState sourceState) {
        this.mSequentialExecutor.execute(new RunnableC0938xaa9be1e3(this, sourceState, 9));
    }

    /* renamed from: onSourceStateChangedInternal */
    public void lambda$onSourceStateChanged$1(@NonNull VideoOutput.SourceState sourceState) {
        ScheduledFuture<?> scheduledFuture;
        Encoder encoder;
        VideoOutput.SourceState sourceState2 = this.mSourceState;
        this.mSourceState = sourceState;
        if (sourceState2 != sourceState) {
            Logger.d(TAG, "Video source has transitioned to state: " + sourceState);
            if (sourceState == VideoOutput.SourceState.INACTIVE) {
                if (this.mActiveSurface == null) {
                    SetupVideoTask setupVideoTask = this.mSetupVideoTask;
                    if (setupVideoTask != null) {
                        setupVideoTask.cancelFailedRetry();
                        this.mSetupVideoTask = null;
                    }
                    requestReset(4, null, false);
                    return;
                }
                this.mNeedsResetBeforeNextStart = true;
                RecordingRecord recordingRecord = this.mInProgressRecording;
                if (recordingRecord != null && !recordingRecord.isPersistent()) {
                    onInProgressRecordingInternalError(this.mInProgressRecording, 4, null);
                    return;
                }
                return;
            }
            if (sourceState == VideoOutput.SourceState.ACTIVE_NON_STREAMING && (scheduledFuture = this.mSourceNonStreamingTimeout) != null && scheduledFuture.cancel(false) && (encoder = this.mVideoEncoder) != null) {
                notifyEncoderSourceStopped(encoder);
                return;
            }
            return;
        }
        Logger.d(TAG, "Video source transitions to the same state: " + sourceState);
    }

    @Override // androidx.camera.video.VideoOutput
    public void onSurfaceRequested(@NonNull SurfaceRequest surfaceRequest) {
        onSurfaceRequested(surfaceRequest, Timebase.UPTIME);
    }

    public void onVideoEncoderReady(@NonNull VideoEncoderSession videoEncoderSession) {
        Encoder videoEncoder = videoEncoderSession.getVideoEncoder();
        this.mVideoEncoder = videoEncoder;
        this.mVideoEncoderBitrateRange = ((VideoEncoderInfo) videoEncoder.getEncoderInfo()).getSupportedBitrateRange();
        this.mFirstRecordingVideoBitrate = this.mVideoEncoder.getConfiguredBitrate();
        Surface activeSurface = videoEncoderSession.getActiveSurface();
        this.mActiveSurface = activeSurface;
        setLatestSurface(activeSurface);
        videoEncoderSession.setOnSurfaceUpdateListener(this.mSequentialExecutor, new Encoder.SurfaceInput.OnSurfaceUpdateListener() { // from class: 땃땅딎땋둘둔둠땠땍됨땜돴디딃땡돴돛둡뒷둣땵땜땀뒤딎둔듐땁땥뒤딄땣땧된둠돷듽땣땪뒙뒨뒷땸뒻뒨땠땩뒀딄딄땣뎨뎬된돸듰듨뒬딟돵뒻도땟딤뒼땀땨땦딅된땡땤뒝땩뒨땔듰땀뎨땸돵땝둡되뒤딀뒐뒝돼듰돳땯딜땝들뒼땫땋됴둑땩됨뎨된뒷땅든땬든돤땹뒙딁둬듼뒉뒋돠땃뒐뎸돷됐뎰뒋돶딸둔되뎰
            @Override // androidx.camera.video.internal.encoder.Encoder.SurfaceInput.OnSurfaceUpdateListener
            public final void onSurfaceUpdate(Surface surface) {
                Recorder.this.setLatestSurface(surface);
            }
        });
        Futures.addCallback(videoEncoderSession.getReadyToReleaseFuture(), new FutureCallback<Encoder>() { // from class: androidx.camera.video.Recorder.1
            final /* synthetic */ VideoEncoderSession val$videoEncoderSession;

            public AnonymousClass1(VideoEncoderSession videoEncoderSession2) {
                r2 = videoEncoderSession2;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                Logger.d(Recorder.TAG, "Error in ReadyToReleaseFuture: " + th);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Encoder encoder) {
                Encoder encoder2;
                Logger.d(Recorder.TAG, "VideoEncoder can be released: " + encoder);
                if (encoder == null) {
                    return;
                }
                ScheduledFuture<?> scheduledFuture = Recorder.this.mSourceNonStreamingTimeout;
                if (scheduledFuture != null && scheduledFuture.cancel(false) && (encoder2 = Recorder.this.mVideoEncoder) != null && encoder2 == encoder) {
                    Recorder.notifyEncoderSourceStopped(encoder2);
                }
                Recorder recorder = Recorder.this;
                recorder.mVideoEncoderSessionToRelease = r2;
                recorder.setLatestSurface(null);
                Recorder recorder2 = Recorder.this;
                recorder2.requestReset(4, null, recorder2.isPersistentRecordingInProgress());
            }
        }, this.mSequentialExecutor);
    }

    public void pause(@NonNull Recording recording) {
        synchronized (this.mLock) {
            try {
                if (!isSameRecording(recording, this.mPendingRecordingRecord) && !isSameRecording(recording, this.mActiveRecordingRecord)) {
                    Logger.d(TAG, "pause() called on a recording that is no longer active: " + recording.getOutputOptions());
                    return;
                }
                int ordinal = this.mState.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal != 3) {
                            if (ordinal == 4) {
                                setState(State.PAUSED);
                                this.mSequentialExecutor.execute(new RunnableC0106x1378447b(this, this.mActiveRecordingRecord, 1));
                            }
                        }
                    } else {
                        setState(State.PENDING_PAUSED);
                    }
                    return;
                }
                throw new IllegalStateException("Called pause() from invalid state: " + this.mState);
            } finally {
            }
        }
    }

    @NonNull
    public PendingRecording prepareRecording(@NonNull Context context, @NonNull FileOutputOptions fileOutputOptions) {
        return prepareRecordingInternal(context, fileOutputOptions);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000d. Please report as an issue. */
    public void requestReset(int i, @Nullable Throwable th, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        synchronized (this.mLock) {
            try {
                z2 = true;
                z3 = false;
                switch (this.mState) {
                    case CONFIGURING:
                    case IDLING:
                    case ERROR:
                        break;
                    case PENDING_RECORDING:
                    case PENDING_PAUSED:
                        updateNonPendingState(State.RESETTING);
                        break;
                    case RECORDING:
                    case PAUSED:
                        if (this.mInProgressRecording != null) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        Preconditions.checkState(z4, "In-progress recording shouldn't be null when in state " + this.mState);
                        if (this.mActiveRecordingRecord == this.mInProgressRecording) {
                            if (!isPersistentRecordingInProgress()) {
                                setState(State.RESETTING);
                                z2 = false;
                                z3 = true;
                            }
                            break;
                        } else {
                            throw new AssertionError("In-progress recording does not match the active recording. Unable to reset encoder.");
                        }
                    case STOPPING:
                        setState(State.RESETTING);
                        z2 = false;
                        break;
                    case RESETTING:
                    default:
                        z2 = false;
                        break;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z2) {
            if (z) {
                resetVideo();
                return;
            } else {
                reset();
                return;
            }
        }
        if (z3) {
            lambda$stop$5(this.mInProgressRecording, -1L, i, th);
        }
    }

    public void resume(@NonNull Recording recording) {
        synchronized (this.mLock) {
            try {
                if (!isSameRecording(recording, this.mPendingRecordingRecord) && !isSameRecording(recording, this.mActiveRecordingRecord)) {
                    Logger.d(TAG, "resume() called on a recording that is no longer active: " + recording.getOutputOptions());
                    return;
                }
                int ordinal = this.mState.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 5) {
                        if (ordinal != 2) {
                            if (ordinal != 3) {
                            }
                        } else {
                            setState(State.PENDING_RECORDING);
                        }
                    } else {
                        setState(State.RECORDING);
                        this.mSequentialExecutor.execute(new RunnableC0106x1378447b(this, this.mActiveRecordingRecord, 0));
                    }
                    return;
                }
                throw new IllegalStateException("Called resume() from invalid state: " + this.mState);
            } finally {
            }
        }
    }

    public void setAudioState(@NonNull AudioState audioState) {
        Logger.d(TAG, "Transitioning audio state: " + this.mAudioState + " --> " + audioState);
        this.mAudioState = audioState;
    }

    public void setInProgressTransformationInfo(@Nullable SurfaceRequest.TransformationInfo transformationInfo) {
        Logger.d(TAG, "Update stream transformation info: " + transformationInfo);
        this.mInProgressTransformationInfo = transformationInfo;
        synchronized (this.mLock) {
            this.mStreamInfo.setState(StreamInfo.of(this.mStreamId, internalStateToStreamState(this.mState), transformationInfo));
        }
    }

    public void setLatestSurface(@Nullable Surface surface) {
        int hashCode;
        if (this.mLatestSurface == surface) {
            return;
        }
        this.mLatestSurface = surface;
        synchronized (this.mLock) {
            if (surface != null) {
                try {
                    hashCode = surface.hashCode();
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                hashCode = 0;
            }
            setStreamId(hashCode);
        }
    }

    @GuardedBy("mLock")
    public void setState(@NonNull State state) {
        if (this.mState != state) {
            Logger.d(TAG, "Transitioning Recorder internal state: " + this.mState + " --> " + state);
            Set<State> set = PENDING_STATES;
            StreamInfo.StreamState streamState = null;
            if (set.contains(state)) {
                if (!set.contains(this.mState)) {
                    if (VALID_NON_PENDING_STATES_WHILE_PENDING.contains(this.mState)) {
                        State state2 = this.mState;
                        this.mNonPendingState = state2;
                        streamState = internalStateToStreamState(state2);
                    } else {
                        throw new AssertionError("Invalid state transition. Should not be transitioning to a PENDING state from state " + this.mState);
                    }
                }
            } else if (this.mNonPendingState != null) {
                this.mNonPendingState = null;
            }
            this.mState = state;
            if (streamState == null) {
                streamState = internalStateToStreamState(state);
            }
            this.mStreamInfo.setState(StreamInfo.of(this.mStreamId, streamState, this.mInProgressTransformationInfo));
            return;
        }
        throw new AssertionError("Attempted to transition to state " + state + ", but Recorder is already in state " + state);
    }

    public void setupAndStartMediaMuxer(@NonNull RecordingRecord recordingRecord) {
        int outputFormatToMuxerFormat;
        if (this.mMediaMuxer == null) {
            if (isAudioEnabled() && this.mPendingAudioRingBuffer.isEmpty()) {
                throw new AssertionError("Audio is enabled but no audio sample is ready. Cannot start media muxer.");
            }
            EncodedData encodedData = this.mPendingFirstVideoData;
            if (encodedData != null) {
                try {
                    this.mPendingFirstVideoData = null;
                    List<EncodedData> audioDataToWriteAndClearCache = getAudioDataToWriteAndClearCache(encodedData.getPresentationTimeUs());
                    long size = encodedData.size();
                    Iterator<EncodedData> it = audioDataToWriteAndClearCache.iterator();
                    while (it.hasNext()) {
                        size += it.next().size();
                    }
                    long j = this.mFileSizeLimitInBytes;
                    if (j != 0 && size > j) {
                        Logger.d(TAG, String.format("Initial data exceeds file size limit %d > %d", Long.valueOf(size), Long.valueOf(this.mFileSizeLimitInBytes)));
                        onInProgressRecordingInternalError(recordingRecord, 2, null);
                        encodedData.close();
                        return;
                    }
                    try {
                        MediaSpec mediaSpec = (MediaSpec) getObservableData(this.mMediaSpec);
                        if (mediaSpec.getOutputFormat() == -1) {
                            outputFormatToMuxerFormat = supportedMuxerFormatOrDefaultFrom(this.mResolvedEncoderProfiles, MediaSpec.outputFormatToMuxerFormat(MEDIA_SPEC_DEFAULT.getOutputFormat()));
                        } else {
                            outputFormatToMuxerFormat = MediaSpec.outputFormatToMuxerFormat(mediaSpec.getOutputFormat());
                        }
                        MediaMuxer performOneTimeMediaMuxerCreation = recordingRecord.performOneTimeMediaMuxerCreation(outputFormatToMuxerFormat, new C1078xcc023a4b(this, 0));
                        SurfaceRequest.TransformationInfo transformationInfo = this.mSourceTransformationInfo;
                        if (transformationInfo != null) {
                            setInProgressTransformationInfo(transformationInfo);
                            performOneTimeMediaMuxerCreation.setOrientationHint(transformationInfo.getRotationDegrees());
                        }
                        Location location = recordingRecord.getOutputOptions().getLocation();
                        if (location != null) {
                            try {
                                Pair<Double, Double> adjustGeoLocation = CorrectNegativeLatLongForMediaMuxer.adjustGeoLocation(location.getLatitude(), location.getLongitude());
                                performOneTimeMediaMuxerCreation.setLocation((float) ((Double) adjustGeoLocation.first).doubleValue(), (float) ((Double) adjustGeoLocation.second).doubleValue());
                            } catch (IllegalArgumentException e) {
                                performOneTimeMediaMuxerCreation.release();
                                onInProgressRecordingInternalError(recordingRecord, 5, e);
                                encodedData.close();
                                return;
                            }
                        }
                        this.mVideoTrackIndex = Integer.valueOf(performOneTimeMediaMuxerCreation.addTrack(this.mVideoOutputConfig.getMediaFormat()));
                        if (isAudioEnabled()) {
                            this.mAudioTrackIndex = Integer.valueOf(performOneTimeMediaMuxerCreation.addTrack(this.mAudioOutputConfig.getMediaFormat()));
                        }
                        performOneTimeMediaMuxerCreation.start();
                        this.mMediaMuxer = performOneTimeMediaMuxerCreation;
                        writeVideoData(encodedData, recordingRecord);
                        Iterator<EncodedData> it2 = audioDataToWriteAndClearCache.iterator();
                        while (it2.hasNext()) {
                            writeAudioData(it2.next(), recordingRecord);
                        }
                        encodedData.close();
                        return;
                    } catch (IOException e2) {
                        onInProgressRecordingInternalError(recordingRecord, 5, e2);
                        encodedData.close();
                        return;
                    }
                } catch (Throwable th) {
                    try {
                        encodedData.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            throw new AssertionError("Media muxer cannot be started without an encoded video frame.");
        }
        throw new AssertionError("Unable to set up media muxer when one already exists.");
    }

    @NonNull
    public Recording start(@NonNull PendingRecording pendingRecording) {
        long j;
        RecordingRecord recordingRecord;
        int i;
        boolean z;
        RecordingRecord recordingRecord2;
        Preconditions.checkNotNull(pendingRecording, "The given PendingRecording cannot be null.");
        synchronized (this.mLock) {
            try {
                j = this.mLastGeneratedRecordingId + 1;
                this.mLastGeneratedRecordingId = j;
                recordingRecord = null;
                i = 0;
                switch (this.mState) {
                    case CONFIGURING:
                    case IDLING:
                    case STOPPING:
                    case RESETTING:
                    case ERROR:
                        State state = this.mState;
                        State state2 = State.IDLING;
                        if (state == state2) {
                            if (this.mActiveRecordingRecord == null && this.mPendingRecordingRecord == null) {
                                z = true;
                            } else {
                                z = false;
                            }
                            Preconditions.checkState(z, "Expected recorder to be idle but a recording is either pending or in progress.");
                        }
                        try {
                            RecordingRecord from = RecordingRecord.from(pendingRecording, j);
                            from.initializeRecording(pendingRecording.getApplicationContext());
                            this.mPendingRecordingRecord = from;
                            State state3 = this.mState;
                            if (state3 == state2) {
                                setState(State.PENDING_RECORDING);
                                final int i2 = 0;
                                this.mSequentialExecutor.execute(new Runnable(this) { // from class: 땃딝땦딄듻뒋듰둘듼뎡듐뒬뒹뎨뒈딁딁돝땝됩뒨땄뒐땡땨땀딜딌되됴땩돠됫딤돳딀땠둬뒙돛둥됐돼딞딽됨드딟땠땤되딝땝땲돛딌둘땵땪든땠땐땪땅땤듟듌땁돷뒾뒀듬땪딄땨디땯땜땃들돠둡땠듔듌돵돼뒾딸디뒈뒻딨됫뒐뒨뒐딐땅돨땦땐뒙뒈디땮뎨뒬돶땰뒤뒹뒻딐땦듰땨뒘듻땵땯득돳뒝딟땋된땧딌땻

                                    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                                    public final /* synthetic */ Recorder f5363x3271d0aa;

                                    {
                                        this.f5363x3271d0aa = this;
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        switch (i2) {
                                            case 0:
                                                this.f5363x3271d0aa.tryServicePendingRecording();
                                                return;
                                            default:
                                                this.f5363x3271d0aa.lambda$start$2();
                                                return;
                                        }
                                    }
                                });
                            } else if (state3 == State.ERROR) {
                                setState(State.PENDING_RECORDING);
                                final int i3 = 1;
                                this.mSequentialExecutor.execute(new Runnable(this) { // from class: 땃딝땦딄듻뒋듰둘듼뎡듐뒬뒹뎨뒈딁딁돝땝됩뒨땄뒐땡땨땀딜딌되됴땩돠됫딤돳딀땠둬뒙돛둥됐돼딞딽됨드딟땠땤되딝땝땲돛딌둘땵땪든땠땐땪땅땤듟듌땁돷뒾뒀듬땪딄땨디땯땜땃들돠둡땠듔듌돵돼뒾딸디뒈뒻딨됫뒐뒨뒐딐땅돨땦땐뒙뒈디땮뎨뒬돶땰뒤뒹뒻딐땦듰땨뒘듻땵땯득돳뒝딟땋된땧딌땻

                                    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                                    public final /* synthetic */ Recorder f5363x3271d0aa;

                                    {
                                        this.f5363x3271d0aa = this;
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        switch (i3) {
                                            case 0:
                                                this.f5363x3271d0aa.tryServicePendingRecording();
                                                return;
                                            default:
                                                this.f5363x3271d0aa.lambda$start$2();
                                                return;
                                        }
                                    }
                                });
                            } else {
                                setState(State.PENDING_RECORDING);
                            }
                            e = null;
                            break;
                        } catch (IOException e) {
                            e = e;
                            i = 5;
                            break;
                        }
                    case PENDING_RECORDING:
                    case PENDING_PAUSED:
                        recordingRecord2 = (RecordingRecord) Preconditions.checkNotNull(this.mPendingRecordingRecord);
                        recordingRecord = recordingRecord2;
                        e = null;
                        break;
                    case RECORDING:
                    case PAUSED:
                        recordingRecord2 = this.mActiveRecordingRecord;
                        recordingRecord = recordingRecord2;
                        e = null;
                        break;
                    default:
                        e = null;
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (recordingRecord == null) {
            if (i != 0) {
                Logger.e(TAG, "Recording was started when the Recorder had encountered error " + e);
                finalizePendingRecording(RecordingRecord.from(pendingRecording, j), i, e);
                return Recording.createFinalizedFrom(pendingRecording, j);
            }
            return Recording.from(pendingRecording, j);
        }
        throw new IllegalStateException("A recording is already in progress. Previous recordings must be stopped before a new recording can be started.");
    }

    public void stop(@NonNull Recording recording, final int i, @Nullable final Throwable th) {
        synchronized (this.mLock) {
            try {
                if (!isSameRecording(recording, this.mPendingRecordingRecord) && !isSameRecording(recording, this.mActiveRecordingRecord)) {
                    Logger.d(TAG, "stop() called on a recording that is no longer active: " + recording.getOutputOptions());
                    return;
                }
                RecordingRecord recordingRecord = null;
                switch (this.mState) {
                    case CONFIGURING:
                    case IDLING:
                        throw new IllegalStateException("Calling stop() while idling or initializing is invalid.");
                    case PENDING_RECORDING:
                    case PENDING_PAUSED:
                        Preconditions.checkState(isSameRecording(recording, this.mPendingRecordingRecord));
                        RecordingRecord recordingRecord2 = this.mPendingRecordingRecord;
                        this.mPendingRecordingRecord = null;
                        restoreNonPendingState();
                        recordingRecord = recordingRecord2;
                        break;
                    case RECORDING:
                    case PAUSED:
                        setState(State.STOPPING);
                        final long micros = TimeUnit.NANOSECONDS.toMicros(System.nanoTime());
                        final RecordingRecord recordingRecord3 = this.mActiveRecordingRecord;
                        this.mSequentialExecutor.execute(new Runnable() { // from class: androidx.camera.video.뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨
                            @Override // java.lang.Runnable
                            public final void run() {
                                Recorder.this.lambda$stop$5(recordingRecord3, micros, i, th);
                            }
                        });
                        break;
                    case STOPPING:
                    case RESETTING:
                        Preconditions.checkState(isSameRecording(recording, this.mActiveRecordingRecord));
                        break;
                }
                if (recordingRecord != null) {
                    if (i == 10) {
                        Logger.e(TAG, "Recording was stopped due to recording being garbage collected before any valid data has been produced.");
                    }
                    finalizePendingRecording(recordingRecord, 8, new RuntimeException("Recording was stopped before any data could be produced.", th));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: stopInternal */
    public void lambda$stop$5(@NonNull RecordingRecord recordingRecord, long j, int i, @Nullable Throwable th) {
        if (this.mInProgressRecording == recordingRecord && !this.mInProgressRecordingStopping) {
            this.mInProgressRecordingStopping = true;
            this.mRecordingStopError = i;
            this.mRecordingStopErrorCause = th;
            if (isAudioEnabled()) {
                clearPendingAudioRingBuffer();
                this.mAudioEncoder.stop(j);
            }
            EncodedData encodedData = this.mPendingFirstVideoData;
            if (encodedData != null) {
                encodedData.close();
                this.mPendingFirstVideoData = null;
            }
            if (this.mSourceState != VideoOutput.SourceState.ACTIVE_NON_STREAMING) {
                this.mSourceNonStreamingTimeout = scheduleTask(new RunnableC1044x8c43c726(this.mVideoEncoder, 2), this.mSequentialExecutor, 1000L, TimeUnit.MILLISECONDS);
            } else {
                notifyEncoderSourceStopped(this.mVideoEncoder);
            }
            this.mVideoEncoder.stop(j);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
    
        if (r1 != 2) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void tryServicePendingRecording() {
        boolean z;
        RecordingRecord recordingRecord;
        Exception exc;
        int i;
        RecordingRecord recordingRecord2;
        synchronized (this.mLock) {
            try {
                int ordinal = this.mState.ordinal();
                boolean z2 = true;
                z = false;
                recordingRecord = null;
                if (ordinal == 1) {
                    z2 = false;
                }
                if (this.mActiveRecordingRecord == null && !this.mNeedsResetBeforeNextStart) {
                    if (this.mSourceState == VideoOutput.SourceState.INACTIVE) {
                        recordingRecord2 = this.mPendingRecordingRecord;
                        this.mPendingRecordingRecord = null;
                        restoreNonPendingState();
                        i = 4;
                        z = z2;
                        exc = PENDING_RECORDING_ERROR_CAUSE_SOURCE_INACTIVE;
                    } else if (this.mVideoEncoder != null) {
                        z = z2;
                        exc = null;
                        i = 0;
                        recordingRecord = makePendingRecordingActiveLocked(this.mState);
                        recordingRecord2 = null;
                    }
                }
                z = z2;
                recordingRecord2 = null;
                exc = null;
                i = 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (recordingRecord != null) {
            startRecording(recordingRecord, z);
        } else if (recordingRecord2 != null) {
            finalizePendingRecording(recordingRecord2, i, exc);
        }
    }

    public void updateInProgressStatusEvent() {
        RecordingRecord recordingRecord = this.mInProgressRecording;
        if (recordingRecord != null) {
            recordingRecord.updateVideoRecordEvent(VideoRecordEvent.status(recordingRecord.getOutputOptions(), getInProgressRecordingStats()));
        }
    }

    public void writeAudioData(@NonNull EncodedData encodedData, @NonNull RecordingRecord recordingRecord) {
        boolean z;
        long size = encodedData.size() + this.mRecordingBytes;
        long j = this.mFileSizeLimitInBytes;
        if (j != 0 && size > j) {
            Logger.d(TAG, String.format("Reach file size limit %d > %d", Long.valueOf(size), Long.valueOf(this.mFileSizeLimitInBytes)));
            onInProgressRecordingInternalError(recordingRecord, 2, null);
            return;
        }
        long presentationTimeUs = encodedData.getPresentationTimeUs();
        long j2 = this.mFirstRecordingAudioDataTimeUs;
        if (j2 == Long.MAX_VALUE) {
            this.mFirstRecordingAudioDataTimeUs = presentationTimeUs;
            Logger.d(TAG, String.format("First audio time: %d (%s)", Long.valueOf(presentationTimeUs), DebugUtils.readableUs(this.mFirstRecordingAudioDataTimeUs)));
        } else {
            TimeUnit timeUnit = TimeUnit.MICROSECONDS;
            long nanos = timeUnit.toNanos(presentationTimeUs - Math.min(this.mFirstRecordingVideoDataTimeUs, j2));
            if (this.mPreviousRecordingAudioDataTimeUs != Long.MAX_VALUE) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, "There should be a previous data for adjusting the duration.");
            long nanos2 = timeUnit.toNanos(presentationTimeUs - this.mPreviousRecordingAudioDataTimeUs) + nanos;
            long j3 = this.mDurationLimitNs;
            if (j3 != 0 && nanos2 > j3) {
                Logger.d(TAG, String.format("Audio data reaches duration limit %d > %d", Long.valueOf(nanos2), Long.valueOf(this.mDurationLimitNs)));
                onInProgressRecordingInternalError(recordingRecord, 9, null);
                return;
            }
        }
        this.mMediaMuxer.writeSampleData(this.mAudioTrackIndex.intValue(), encodedData.getByteBuffer(), encodedData.getBufferInfo());
        this.mRecordingBytes = size;
        this.mPreviousRecordingAudioDataTimeUs = presentationTimeUs;
    }

    public void writeVideoData(@NonNull EncodedData encodedData, @NonNull RecordingRecord recordingRecord) {
        boolean z;
        long j;
        if (this.mVideoTrackIndex != null) {
            long size = encodedData.size() + this.mRecordingBytes;
            long j2 = this.mFileSizeLimitInBytes;
            long j3 = 0;
            if (j2 != 0 && size > j2) {
                Logger.d(TAG, String.format("Reach file size limit %d > %d", Long.valueOf(size), Long.valueOf(this.mFileSizeLimitInBytes)));
                onInProgressRecordingInternalError(recordingRecord, 2, null);
                return;
            }
            long presentationTimeUs = encodedData.getPresentationTimeUs();
            long j4 = this.mFirstRecordingVideoDataTimeUs;
            if (j4 == Long.MAX_VALUE) {
                this.mFirstRecordingVideoDataTimeUs = presentationTimeUs;
                Logger.d(TAG, String.format("First video time: %d (%s)", Long.valueOf(presentationTimeUs), DebugUtils.readableUs(this.mFirstRecordingVideoDataTimeUs)));
                j = presentationTimeUs;
            } else {
                TimeUnit timeUnit = TimeUnit.MICROSECONDS;
                long nanos = timeUnit.toNanos(presentationTimeUs - Math.min(j4, this.mFirstRecordingAudioDataTimeUs));
                if (this.mPreviousRecordingVideoDataTimeUs != Long.MAX_VALUE) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkState(z, "There should be a previous data for adjusting the duration.");
                long nanos2 = timeUnit.toNanos(presentationTimeUs - this.mPreviousRecordingVideoDataTimeUs) + nanos;
                j = presentationTimeUs;
                long j5 = this.mDurationLimitNs;
                if (j5 != 0 && nanos2 > j5) {
                    Logger.d(TAG, String.format("Video data reaches duration limit %d > %d", Long.valueOf(nanos2), Long.valueOf(this.mDurationLimitNs)));
                    onInProgressRecordingInternalError(recordingRecord, 9, null);
                    return;
                }
                j3 = nanos;
            }
            this.mMediaMuxer.writeSampleData(this.mVideoTrackIndex.intValue(), encodedData.getByteBuffer(), encodedData.getBufferInfo());
            this.mRecordingBytes = size;
            this.mRecordingDurationNs = j3;
            this.mPreviousRecordingVideoDataTimeUs = j;
            updateInProgressStatusEvent();
            return;
        }
        throw new AssertionError("Video data comes before the track is added to MediaMuxer.");
    }

    @NonNull
    public static VideoCapabilities getVideoCapabilities(@NonNull CameraInfo cameraInfo, int i) {
        return new RecorderVideoCapabilities(i, (CameraInfoInternal) cameraInfo, VideoEncoderInfoImpl.FINDER);
    }

    @Override // androidx.camera.video.VideoOutput
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void onSurfaceRequested(@NonNull SurfaceRequest surfaceRequest, @NonNull Timebase timebase) {
        synchronized (this.mLock) {
            try {
                Logger.d(TAG, "Surface is requested in state: " + this.mState + ", Current surface: " + this.mStreamId);
                if (this.mState == State.ERROR) {
                    setState(State.CONFIGURING);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mSequentialExecutor.execute(new RunnableC0384x149e5abd(this, 14, surfaceRequest, timebase));
    }

    @NonNull
    @RequiresApi(26)
    public PendingRecording prepareRecording(@NonNull Context context, @NonNull FileDescriptorOutputOptions fileDescriptorOutputOptions) {
        if (Build.VERSION.SDK_INT >= 26) {
            return prepareRecordingInternal(context, fileDescriptorOutputOptions);
        }
        throw new UnsupportedOperationException("File descriptors as output destinations are not supported on pre-Android O (API 26) devices.");
    }

    @NonNull
    public PendingRecording prepareRecording(@NonNull Context context, @NonNull MediaStoreOutputOptions mediaStoreOutputOptions) {
        return prepareRecordingInternal(context, mediaStoreOutputOptions);
    }
}
