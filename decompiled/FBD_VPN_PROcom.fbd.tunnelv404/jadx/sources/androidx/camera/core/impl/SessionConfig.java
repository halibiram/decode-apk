package androidx.camera.core.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.params.InputConfiguration;
import android.util.Range;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.AutoValue_SessionConfig_OutputConfig;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.internal.compat.workaround.SurfaceSorter;
import com.google.auto.value.AutoValue;
import defpackage.C0871x6413f5c1;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class SessionConfig {
    public static final int DEFAULT_SESSION_TYPE = 0;
    private static final List<Integer> SUPPORTED_TEMPLATE_PRIORITY = Arrays.asList(1, 5, 3);
    private final List<CameraDevice.StateCallback> mDeviceStateCallbacks;
    private final ErrorListener mErrorListener;

    @Nullable
    private InputConfiguration mInputConfiguration;
    private final List<OutputConfig> mOutputConfigs;
    private final OutputConfig mPostviewOutputConfig;
    private final CaptureConfig mRepeatingCaptureConfig;
    private final List<CameraCaptureSession.StateCallback> mSessionStateCallbacks;
    private final int mSessionType;
    private final List<CameraCaptureCallback> mSingleCameraCaptureCallbacks;

    /* loaded from: classes.dex */
    public static class BaseBuilder {

        @Nullable
        ErrorListener mErrorListener;

        @Nullable
        InputConfiguration mInputConfiguration;

        @Nullable
        OutputConfig mPostviewOutputConfig;
        final Set<OutputConfig> mOutputConfigs = new LinkedHashSet();
        final CaptureConfig.Builder mCaptureConfigBuilder = new CaptureConfig.Builder();
        final List<CameraDevice.StateCallback> mDeviceStateCallbacks = new ArrayList();
        final List<CameraCaptureSession.StateCallback> mSessionStateCallbacks = new ArrayList();
        final List<CameraCaptureCallback> mSingleCameraCaptureCallbacks = new ArrayList();
        int mSessionType = 0;
    }

    /* loaded from: classes.dex */
    public static class Builder extends BaseBuilder {
        @NonNull
        public static Builder createFrom(@NonNull UseCaseConfig<?> useCaseConfig, @NonNull Size size) {
            OptionUnpacker sessionOptionUnpacker = useCaseConfig.getSessionOptionUnpacker(null);
            if (sessionOptionUnpacker != null) {
                Builder builder = new Builder();
                sessionOptionUnpacker.unpack(size, useCaseConfig, builder);
                return builder;
            }
            throw new IllegalStateException("Implementation is missing option unpacker for " + useCaseConfig.getTargetName(useCaseConfig.toString()));
        }

        @NonNull
        public Builder addAllCameraCaptureCallbacks(@NonNull Collection<CameraCaptureCallback> collection) {
            for (CameraCaptureCallback cameraCaptureCallback : collection) {
                this.mCaptureConfigBuilder.addCameraCaptureCallback(cameraCaptureCallback);
                if (!this.mSingleCameraCaptureCallbacks.contains(cameraCaptureCallback)) {
                    this.mSingleCameraCaptureCallbacks.add(cameraCaptureCallback);
                }
            }
            return this;
        }

        @NonNull
        public Builder addAllDeviceStateCallbacks(@NonNull Collection<CameraDevice.StateCallback> collection) {
            Iterator<CameraDevice.StateCallback> it = collection.iterator();
            while (it.hasNext()) {
                addDeviceStateCallback(it.next());
            }
            return this;
        }

        @NonNull
        public Builder addAllRepeatingCameraCaptureCallbacks(@NonNull Collection<CameraCaptureCallback> collection) {
            this.mCaptureConfigBuilder.addAllCameraCaptureCallbacks(collection);
            return this;
        }

        @NonNull
        public Builder addAllSessionStateCallbacks(@NonNull List<CameraCaptureSession.StateCallback> list) {
            Iterator<CameraCaptureSession.StateCallback> it = list.iterator();
            while (it.hasNext()) {
                addSessionStateCallback(it.next());
            }
            return this;
        }

        @NonNull
        public Builder addCameraCaptureCallback(@NonNull CameraCaptureCallback cameraCaptureCallback) {
            this.mCaptureConfigBuilder.addCameraCaptureCallback(cameraCaptureCallback);
            if (!this.mSingleCameraCaptureCallbacks.contains(cameraCaptureCallback)) {
                this.mSingleCameraCaptureCallbacks.add(cameraCaptureCallback);
            }
            return this;
        }

        @NonNull
        public Builder addDeviceStateCallback(@NonNull CameraDevice.StateCallback stateCallback) {
            if (this.mDeviceStateCallbacks.contains(stateCallback)) {
                return this;
            }
            this.mDeviceStateCallbacks.add(stateCallback);
            return this;
        }

        @NonNull
        public Builder addImplementationOptions(@NonNull Config config2) {
            this.mCaptureConfigBuilder.addImplementationOptions(config2);
            return this;
        }

        @NonNull
        public Builder addNonRepeatingSurface(@NonNull DeferrableSurface deferrableSurface) {
            return addNonRepeatingSurface(deferrableSurface, DynamicRange.SDR);
        }

        @NonNull
        public Builder addOutputConfig(@NonNull OutputConfig outputConfig) {
            this.mOutputConfigs.add(outputConfig);
            this.mCaptureConfigBuilder.addSurface(outputConfig.getSurface());
            Iterator<DeferrableSurface> it = outputConfig.getSharedSurfaces().iterator();
            while (it.hasNext()) {
                this.mCaptureConfigBuilder.addSurface(it.next());
            }
            return this;
        }

        @NonNull
        public Builder addRepeatingCameraCaptureCallback(@NonNull CameraCaptureCallback cameraCaptureCallback) {
            this.mCaptureConfigBuilder.addCameraCaptureCallback(cameraCaptureCallback);
            return this;
        }

        @NonNull
        public Builder addSessionStateCallback(@NonNull CameraCaptureSession.StateCallback stateCallback) {
            if (this.mSessionStateCallbacks.contains(stateCallback)) {
                return this;
            }
            this.mSessionStateCallbacks.add(stateCallback);
            return this;
        }

        @NonNull
        public Builder addSurface(@NonNull DeferrableSurface deferrableSurface) {
            return addSurface(deferrableSurface, DynamicRange.SDR, null, -1);
        }

        @NonNull
        public Builder addTag(@NonNull String str, @NonNull Object obj) {
            this.mCaptureConfigBuilder.addTag(str, obj);
            return this;
        }

        @NonNull
        public SessionConfig build() {
            return new SessionConfig(new ArrayList(this.mOutputConfigs), new ArrayList(this.mDeviceStateCallbacks), new ArrayList(this.mSessionStateCallbacks), new ArrayList(this.mSingleCameraCaptureCallbacks), this.mCaptureConfigBuilder.build(), this.mErrorListener, this.mInputConfiguration, this.mSessionType, this.mPostviewOutputConfig);
        }

        @NonNull
        public Builder clearSurfaces() {
            this.mOutputConfigs.clear();
            this.mCaptureConfigBuilder.clearSurfaces();
            return this;
        }

        @NonNull
        public List<CameraCaptureCallback> getSingleCameraCaptureCallbacks() {
            return DesugarCollections.unmodifiableList(this.mSingleCameraCaptureCallbacks);
        }

        public boolean removeCameraCaptureCallback(@NonNull CameraCaptureCallback cameraCaptureCallback) {
            boolean removeCameraCaptureCallback = this.mCaptureConfigBuilder.removeCameraCaptureCallback(cameraCaptureCallback);
            boolean remove = this.mSingleCameraCaptureCallbacks.remove(cameraCaptureCallback);
            if (!removeCameraCaptureCallback && !remove) {
                return false;
            }
            return true;
        }

        @NonNull
        public Builder removeSurface(@NonNull DeferrableSurface deferrableSurface) {
            OutputConfig outputConfig;
            Iterator<OutputConfig> it = this.mOutputConfigs.iterator();
            while (true) {
                if (it.hasNext()) {
                    outputConfig = it.next();
                    if (outputConfig.getSurface().equals(deferrableSurface)) {
                        break;
                    }
                } else {
                    outputConfig = null;
                    break;
                }
            }
            if (outputConfig != null) {
                this.mOutputConfigs.remove(outputConfig);
            }
            this.mCaptureConfigBuilder.removeSurface(deferrableSurface);
            return this;
        }

        @NonNull
        public Builder setErrorListener(@NonNull ErrorListener errorListener) {
            this.mErrorListener = errorListener;
            return this;
        }

        @NonNull
        public Builder setExpectedFrameRateRange(@NonNull Range<Integer> range) {
            this.mCaptureConfigBuilder.setExpectedFrameRateRange(range);
            return this;
        }

        @NonNull
        public Builder setImplementationOptions(@NonNull Config config2) {
            this.mCaptureConfigBuilder.setImplementationOptions(config2);
            return this;
        }

        @NonNull
        public Builder setInputConfiguration(@Nullable InputConfiguration inputConfiguration) {
            this.mInputConfiguration = inputConfiguration;
            return this;
        }

        @NonNull
        public Builder setPostviewSurface(@NonNull DeferrableSurface deferrableSurface) {
            this.mPostviewOutputConfig = OutputConfig.builder(deferrableSurface).build();
            return this;
        }

        @NonNull
        public Builder setPreviewStabilization(int i) {
            if (i != 0) {
                this.mCaptureConfigBuilder.setPreviewStabilization(i);
            }
            return this;
        }

        @NonNull
        public Builder setSessionType(int i) {
            this.mSessionType = i;
            return this;
        }

        @NonNull
        public Builder setTemplateType(int i) {
            this.mCaptureConfigBuilder.setTemplateType(i);
            return this;
        }

        @NonNull
        public Builder setVideoStabilization(int i) {
            if (i != 0) {
                this.mCaptureConfigBuilder.setVideoStabilization(i);
            }
            return this;
        }

        @NonNull
        public Builder addNonRepeatingSurface(@NonNull DeferrableSurface deferrableSurface, @NonNull DynamicRange dynamicRange) {
            this.mOutputConfigs.add(OutputConfig.builder(deferrableSurface).setDynamicRange(dynamicRange).build());
            return this;
        }

        @NonNull
        public Builder addSurface(@NonNull DeferrableSurface deferrableSurface, @NonNull DynamicRange dynamicRange, @Nullable String str, int i) {
            this.mOutputConfigs.add(OutputConfig.builder(deferrableSurface).setPhysicalCameraId(str).setDynamicRange(dynamicRange).setMirrorMode(i).build());
            this.mCaptureConfigBuilder.addSurface(deferrableSurface);
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static final class CloseableErrorListener implements ErrorListener {
        private final ErrorListener mErrorListener;
        private final AtomicBoolean mIsClosed = new AtomicBoolean(false);

        public CloseableErrorListener(@NonNull ErrorListener errorListener) {
            this.mErrorListener = errorListener;
        }

        public void close() {
            this.mIsClosed.set(true);
        }

        @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
        public void onError(@NonNull SessionConfig sessionConfig, @NonNull SessionError sessionError) {
            if (!this.mIsClosed.get()) {
                this.mErrorListener.onError(sessionConfig, sessionError);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface ErrorListener {
        void onError(@NonNull SessionConfig sessionConfig, @NonNull SessionError sessionError);
    }

    /* loaded from: classes.dex */
    public interface OptionUnpacker {
        void unpack(@NonNull Size size, @NonNull UseCaseConfig<?> useCaseConfig, @NonNull Builder builder);
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class OutputConfig {
        public static final int SURFACE_GROUP_ID_NONE = -1;

        @AutoValue.Builder
        /* loaded from: classes.dex */
        public static abstract class Builder {
            @NonNull
            public abstract OutputConfig build();

            @NonNull
            public abstract Builder setDynamicRange(@NonNull DynamicRange dynamicRange);

            @NonNull
            public abstract Builder setMirrorMode(int i);

            @NonNull
            public abstract Builder setPhysicalCameraId(@Nullable String str);

            @NonNull
            public abstract Builder setSharedSurfaces(@NonNull List<DeferrableSurface> list);

            @NonNull
            public abstract Builder setSurface(@NonNull DeferrableSurface deferrableSurface);

            @NonNull
            public abstract Builder setSurfaceGroupId(int i);
        }

        @NonNull
        public static Builder builder(@NonNull DeferrableSurface deferrableSurface) {
            return new AutoValue_SessionConfig_OutputConfig.Builder().setSurface(deferrableSurface).setSharedSurfaces(Collections.emptyList()).setPhysicalCameraId(null).setMirrorMode(-1).setSurfaceGroupId(-1).setDynamicRange(DynamicRange.SDR);
        }

        @NonNull
        public abstract DynamicRange getDynamicRange();

        public abstract int getMirrorMode();

        @Nullable
        public abstract String getPhysicalCameraId();

        @NonNull
        public abstract List<DeferrableSurface> getSharedSurfaces();

        @NonNull
        public abstract DeferrableSurface getSurface();

        public abstract int getSurfaceGroupId();
    }

    /* loaded from: classes.dex */
    public enum SessionError {
        SESSION_ERROR_SURFACE_NEEDS_RESET,
        SESSION_ERROR_UNKNOWN
    }

    /* loaded from: classes.dex */
    public static final class ValidatingBuilder extends BaseBuilder {
        private static final String TAG = "ValidatingBuilder";
        private final SurfaceSorter mSurfaceSorter = new SurfaceSorter();
        private boolean mValid = true;
        private boolean mTemplateSet = false;
        private List<ErrorListener> mErrorListeners = new ArrayList();

        private List<DeferrableSurface> getSurfaces() {
            ArrayList arrayList = new ArrayList();
            for (OutputConfig outputConfig : this.mOutputConfigs) {
                arrayList.add(outputConfig.getSurface());
                Iterator<DeferrableSurface> it = outputConfig.getSharedSurfaces().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
            }
            return arrayList;
        }

        public /* synthetic */ void lambda$build$0(SessionConfig sessionConfig, SessionError sessionError) {
            Iterator<ErrorListener> it = this.mErrorListeners.iterator();
            while (it.hasNext()) {
                it.next().onError(sessionConfig, sessionError);
            }
        }

        private void setOrVerifyExpectFrameRateRange(@NonNull Range<Integer> range) {
            Range<Integer> range2 = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
            if (range.equals(range2)) {
                return;
            }
            if (this.mCaptureConfigBuilder.getExpectedFrameRateRange().equals(range2)) {
                this.mCaptureConfigBuilder.setExpectedFrameRateRange(range);
            } else if (!this.mCaptureConfigBuilder.getExpectedFrameRateRange().equals(range)) {
                this.mValid = false;
                Logger.d(TAG, "Different ExpectedFrameRateRange values");
            }
        }

        private void setPreviewStabilizationMode(int i) {
            if (i != 0) {
                this.mCaptureConfigBuilder.setPreviewStabilization(i);
            }
        }

        private void setVideoStabilizationMode(int i) {
            if (i != 0) {
                this.mCaptureConfigBuilder.setVideoStabilization(i);
            }
        }

        public void add(@NonNull SessionConfig sessionConfig) {
            CaptureConfig repeatingCaptureConfig = sessionConfig.getRepeatingCaptureConfig();
            if (repeatingCaptureConfig.getTemplateType() != -1) {
                this.mTemplateSet = true;
                this.mCaptureConfigBuilder.setTemplateType(SessionConfig.getHigherPriorityTemplateType(repeatingCaptureConfig.getTemplateType(), this.mCaptureConfigBuilder.getTemplateType()));
            }
            setOrVerifyExpectFrameRateRange(repeatingCaptureConfig.getExpectedFrameRateRange());
            setPreviewStabilizationMode(repeatingCaptureConfig.getPreviewStabilizationMode());
            setVideoStabilizationMode(repeatingCaptureConfig.getVideoStabilizationMode());
            this.mCaptureConfigBuilder.addAllTags(sessionConfig.getRepeatingCaptureConfig().getTagBundle());
            this.mDeviceStateCallbacks.addAll(sessionConfig.getDeviceStateCallbacks());
            this.mSessionStateCallbacks.addAll(sessionConfig.getSessionStateCallbacks());
            this.mCaptureConfigBuilder.addAllCameraCaptureCallbacks(sessionConfig.getRepeatingCameraCaptureCallbacks());
            this.mSingleCameraCaptureCallbacks.addAll(sessionConfig.getSingleCameraCaptureCallbacks());
            if (sessionConfig.getErrorListener() != null) {
                this.mErrorListeners.add(sessionConfig.getErrorListener());
            }
            if (sessionConfig.getInputConfiguration() != null) {
                this.mInputConfiguration = sessionConfig.getInputConfiguration();
            }
            this.mOutputConfigs.addAll(sessionConfig.getOutputConfigs());
            this.mCaptureConfigBuilder.getSurfaces().addAll(repeatingCaptureConfig.getSurfaces());
            if (!getSurfaces().containsAll(this.mCaptureConfigBuilder.getSurfaces())) {
                Logger.d(TAG, "Invalid configuration due to capture request surfaces are not a subset of surfaces");
                this.mValid = false;
            }
            if (sessionConfig.getSessionType() != this.mSessionType && sessionConfig.getSessionType() != 0 && this.mSessionType != 0) {
                Logger.d(TAG, "Invalid configuration due to that two non-default session types are set");
                this.mValid = false;
            } else if (sessionConfig.getSessionType() != 0) {
                this.mSessionType = sessionConfig.getSessionType();
            }
            if (sessionConfig.mPostviewOutputConfig != null) {
                if (this.mPostviewOutputConfig != sessionConfig.mPostviewOutputConfig && this.mPostviewOutputConfig != null) {
                    Logger.d(TAG, "Invalid configuration due to that two different postview output configs are set");
                    this.mValid = false;
                } else {
                    this.mPostviewOutputConfig = sessionConfig.mPostviewOutputConfig;
                }
            }
            this.mCaptureConfigBuilder.addImplementationOptions(repeatingCaptureConfig.getImplementationOptions());
        }

        public <T> void addImplementationOption(@NonNull Config.Option<T> option, @NonNull T t) {
            this.mCaptureConfigBuilder.addImplementationOption(option, t);
        }

        @NonNull
        public SessionConfig build() {
            C0871x6413f5c1 c0871x6413f5c1;
            if (this.mValid) {
                ArrayList arrayList = new ArrayList(this.mOutputConfigs);
                this.mSurfaceSorter.sort(arrayList);
                if (!this.mErrorListeners.isEmpty()) {
                    c0871x6413f5c1 = new C0871x6413f5c1(this, 3);
                } else {
                    c0871x6413f5c1 = null;
                }
                return new SessionConfig(arrayList, new ArrayList(this.mDeviceStateCallbacks), new ArrayList(this.mSessionStateCallbacks), new ArrayList(this.mSingleCameraCaptureCallbacks), this.mCaptureConfigBuilder.build(), c0871x6413f5c1, this.mInputConfiguration, this.mSessionType, this.mPostviewOutputConfig);
            }
            throw new IllegalArgumentException("Unsupported session configuration combination");
        }

        public void clearSurfaces() {
            this.mOutputConfigs.clear();
            this.mCaptureConfigBuilder.clearSurfaces();
        }

        public boolean isValid() {
            if (this.mTemplateSet && this.mValid) {
                return true;
            }
            return false;
        }
    }

    public SessionConfig(List<OutputConfig> list, List<CameraDevice.StateCallback> list2, List<CameraCaptureSession.StateCallback> list3, List<CameraCaptureCallback> list4, CaptureConfig captureConfig, @Nullable ErrorListener errorListener, @Nullable InputConfiguration inputConfiguration, int i, @Nullable OutputConfig outputConfig) {
        this.mOutputConfigs = list;
        this.mDeviceStateCallbacks = DesugarCollections.unmodifiableList(list2);
        this.mSessionStateCallbacks = DesugarCollections.unmodifiableList(list3);
        this.mSingleCameraCaptureCallbacks = DesugarCollections.unmodifiableList(list4);
        this.mErrorListener = errorListener;
        this.mRepeatingCaptureConfig = captureConfig;
        this.mInputConfiguration = inputConfiguration;
        this.mSessionType = i;
        this.mPostviewOutputConfig = outputConfig;
    }

    @NonNull
    public static SessionConfig defaultEmptySessionConfig() {
        return new SessionConfig(new ArrayList(), new ArrayList(0), new ArrayList(0), new ArrayList(0), new CaptureConfig.Builder().build(), null, null, 0, null);
    }

    public static int getHigherPriorityTemplateType(int i, int i2) {
        List<Integer> list = SUPPORTED_TEMPLATE_PRIORITY;
        if (list.indexOf(Integer.valueOf(i)) < list.indexOf(Integer.valueOf(i2))) {
            return i2;
        }
        return i;
    }

    @NonNull
    public List<CameraDevice.StateCallback> getDeviceStateCallbacks() {
        return this.mDeviceStateCallbacks;
    }

    @Nullable
    public ErrorListener getErrorListener() {
        return this.mErrorListener;
    }

    @NonNull
    public Range<Integer> getExpectedFrameRateRange() {
        return this.mRepeatingCaptureConfig.getExpectedFrameRateRange();
    }

    @NonNull
    public Config getImplementationOptions() {
        return this.mRepeatingCaptureConfig.getImplementationOptions();
    }

    @Nullable
    public InputConfiguration getInputConfiguration() {
        return this.mInputConfiguration;
    }

    @NonNull
    public List<OutputConfig> getOutputConfigs() {
        return this.mOutputConfigs;
    }

    @Nullable
    public OutputConfig getPostviewOutputConfig() {
        return this.mPostviewOutputConfig;
    }

    @NonNull
    public List<CameraCaptureCallback> getRepeatingCameraCaptureCallbacks() {
        return this.mRepeatingCaptureConfig.getCameraCaptureCallbacks();
    }

    @NonNull
    public CaptureConfig getRepeatingCaptureConfig() {
        return this.mRepeatingCaptureConfig;
    }

    @NonNull
    public List<CameraCaptureSession.StateCallback> getSessionStateCallbacks() {
        return this.mSessionStateCallbacks;
    }

    public int getSessionType() {
        return this.mSessionType;
    }

    @NonNull
    public List<CameraCaptureCallback> getSingleCameraCaptureCallbacks() {
        return this.mSingleCameraCaptureCallbacks;
    }

    @NonNull
    public List<DeferrableSurface> getSurfaces() {
        ArrayList arrayList = new ArrayList();
        for (OutputConfig outputConfig : this.mOutputConfigs) {
            arrayList.add(outputConfig.getSurface());
            Iterator<DeferrableSurface> it = outputConfig.getSharedSurfaces().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    public int getTemplateType() {
        return this.mRepeatingCaptureConfig.getTemplateType();
    }
}
