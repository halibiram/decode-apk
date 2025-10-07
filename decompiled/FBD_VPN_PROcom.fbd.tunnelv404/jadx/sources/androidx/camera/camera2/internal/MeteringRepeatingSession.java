package androidx.camera.camera2.internal;

import android.graphics.SurfaceTexture;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.workaround.SupportedRepeatingSurfaceSize;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.TargetConfig;
import defpackage.AbstractC0876x8cbbf918;
import defpackage.AbstractC1064x6e5ec593;
import defpackage.AbstractC1225xeeea649c;
import defpackage.AbstractC1275x4479f3e9;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MeteringRepeatingSession {
    private static final int IMAGE_FORMAT = 34;
    private static final String TAG = "MeteringRepeating";
    private DeferrableSurface mDeferrableSurface;

    @NonNull
    private final Size mMeteringRepeatingSize;

    @NonNull
    private SessionConfig mSessionConfig;

    @Nullable
    private final SurfaceResetCallback mSurfaceResetCallback;

    @NonNull
    private final SupportedRepeatingSurfaceSize mSupportedRepeatingSurfaceSize = new SupportedRepeatingSurfaceSize();

    @Nullable
    private SessionConfig.CloseableErrorListener mCloseableErrorListener = null;

    @NonNull
    private final MeteringRepeatingConfig mConfigWithDefaults = new MeteringRepeatingConfig();

    /* loaded from: classes.dex */
    public static class MeteringRepeatingConfig implements UseCaseConfig<UseCase> {

        @NonNull
        private final Config mConfig;

        public MeteringRepeatingConfig() {
            MutableOptionsBundle create = MutableOptionsBundle.create();
            create.insertOption(UseCaseConfig.OPTION_SESSION_CONFIG_UNPACKER, new Camera2SessionOptionUnpacker());
            create.insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 34);
            setTargetConfigs(create);
            this.mConfig = create;
        }

        private void setTargetConfigs(MutableOptionsBundle mutableOptionsBundle) {
            mutableOptionsBundle.insertOption(TargetConfig.OPTION_TARGET_CLASS, MeteringRepeatingSession.class);
            mutableOptionsBundle.insertOption(TargetConfig.OPTION_TARGET_NAME, MeteringRepeatingSession.class.getCanonicalName() + "-" + UUID.randomUUID());
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ boolean containsOption(Config.Option option) {
            return AbstractC1064x6e5ec593.m3774xfbe0c504(this, option);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ void findOptions(String str, Config.OptionMatcher optionMatcher) {
            AbstractC1064x6e5ec593.m3775x3271d0aa(this, str, optionMatcher);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ CaptureConfig.OptionUnpacker getCaptureOptionUnpacker() {
            return AbstractC1275x4479f3e9.m4241xfbe0c504(this);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        @NonNull
        public UseCaseConfigFactory.CaptureType getCaptureType() {
            return UseCaseConfigFactory.CaptureType.METERING_REPEATING;
        }

        @Override // androidx.camera.core.impl.ReadableConfig
        @NonNull
        public Config getConfig() {
            return this.mConfig;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ CaptureConfig getDefaultCaptureConfig() {
            return AbstractC1275x4479f3e9.m4244x75d576dc(this);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ SessionConfig getDefaultSessionConfig() {
            return AbstractC1275x4479f3e9.m4246x9e171bf9(this);
        }

        @Override // androidx.camera.core.impl.ImageInputConfig
        public final /* synthetic */ DynamicRange getDynamicRange() {
            return AbstractC0876x8cbbf918.m3440xfbe0c504(this);
        }

        @Override // androidx.camera.core.impl.ImageInputConfig
        public final /* synthetic */ int getInputFormat() {
            return AbstractC0876x8cbbf918.m3441x3271d0aa(this);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Config.OptionPriority getOptionPriority(Config.Option option) {
            return AbstractC1064x6e5ec593.m3776x1378447b(this, option);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ int getPreviewStabilizationMode() {
            return AbstractC1275x4479f3e9.m4248x95f25580(this);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Set getPriorities(Config.Option option) {
            return AbstractC1064x6e5ec593.m3777x75d576dc(this, option);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ SessionConfig.OptionUnpacker getSessionOptionUnpacker() {
            return AbstractC1275x4479f3e9.m4249x3db60231(this);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ int getSurfaceOccupancyPriority() {
            return AbstractC1275x4479f3e9.m4251x1db10c9d(this);
        }

        @Override // androidx.camera.core.internal.TargetConfig
        public final /* synthetic */ Class getTargetClass() {
            return AbstractC1225xeeea649c.m3968xfbe0c504(this);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ Range getTargetFrameRate() {
            return AbstractC1275x4479f3e9.m4253x8c6fc18a(this);
        }

        @Override // androidx.camera.core.internal.TargetConfig
        public final /* synthetic */ String getTargetName() {
            return AbstractC1225xeeea649c.m3970x1378447b(this);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ int getVideoStabilizationMode() {
            return AbstractC1275x4479f3e9.m4255xab142723(this);
        }

        @Override // androidx.camera.core.impl.ImageInputConfig
        public final /* synthetic */ boolean hasDynamicRange() {
            return AbstractC0876x8cbbf918.m3442x1378447b(this);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ boolean isHighResolutionDisabled(boolean z) {
            return AbstractC1275x4479f3e9.m4256x85f0360e(this, z);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ boolean isZslDisabled(boolean z) {
            return AbstractC1275x4479f3e9.m4257xad53da1a(this, z);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Set listOptions() {
            return AbstractC1064x6e5ec593.m3778x9738a56c(this);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Object retrieveOption(Config.Option option) {
            return AbstractC1064x6e5ec593.m3779x9e171bf9(this, option);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Object retrieveOptionWithPriority(Config.Option option, Config.OptionPriority optionPriority) {
            return AbstractC1064x6e5ec593.m3781x95f25580(this, option, optionPriority);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ CaptureConfig.OptionUnpacker getCaptureOptionUnpacker(CaptureConfig.OptionUnpacker optionUnpacker) {
            return AbstractC1275x4479f3e9.m4242x3271d0aa(this, optionUnpacker);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ CaptureConfig getDefaultCaptureConfig(CaptureConfig captureConfig) {
            return AbstractC1275x4479f3e9.m4245x9738a56c(this, captureConfig);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ SessionConfig getDefaultSessionConfig(SessionConfig sessionConfig) {
            return AbstractC1275x4479f3e9.m4247x34271fae(this, sessionConfig);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ SessionConfig.OptionUnpacker getSessionOptionUnpacker(SessionConfig.OptionUnpacker optionUnpacker) {
            return AbstractC1275x4479f3e9.m4250x9d12c1f4(this, optionUnpacker);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ int getSurfaceOccupancyPriority(int i) {
            return AbstractC1275x4479f3e9.m4252xd2bcb0cf(this, i);
        }

        @Override // androidx.camera.core.internal.TargetConfig
        public final /* synthetic */ Class getTargetClass(Class cls) {
            return AbstractC1225xeeea649c.m3969x3271d0aa(this, cls);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final /* synthetic */ Range getTargetFrameRate(Range range) {
            return AbstractC1275x4479f3e9.m4254x1aebc6d9(this, range);
        }

        @Override // androidx.camera.core.internal.TargetConfig
        public final /* synthetic */ String getTargetName(String str) {
            return AbstractC1225xeeea649c.m3971x75d576dc(this, str);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Object retrieveOption(Config.Option option, Object obj) {
            return AbstractC1064x6e5ec593.m3780x34271fae(this, option, obj);
        }
    }

    /* loaded from: classes.dex */
    public interface SurfaceResetCallback {
        void onSurfaceReset();
    }

    public MeteringRepeatingSession(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull DisplayInfoManager displayInfoManager, @Nullable SurfaceResetCallback surfaceResetCallback) {
        this.mSurfaceResetCallback = surfaceResetCallback;
        Size properPreviewSize = getProperPreviewSize(cameraCharacteristicsCompat, displayInfoManager);
        this.mMeteringRepeatingSize = properPreviewSize;
        Logger.d(TAG, "MeteringSession SurfaceTexture size: " + properPreviewSize);
        this.mSessionConfig = createSessionConfig();
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, java.util.Comparator] */
    @NonNull
    private Size getProperPreviewSize(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull DisplayInfoManager displayInfoManager) {
        Size[] outputSizes = cameraCharacteristicsCompat.getStreamConfigurationMapCompat().getOutputSizes(34);
        if (outputSizes == null) {
            Logger.e(TAG, "Can not get output size list.");
            return new Size(0, 0);
        }
        Size[] supportedSizes = this.mSupportedRepeatingSurfaceSize.getSupportedSizes(outputSizes);
        List asList = Arrays.asList(supportedSizes);
        Collections.sort(asList, new Object());
        Size previewSize = displayInfoManager.getPreviewSize();
        long min = Math.min(previewSize.getWidth() * previewSize.getHeight(), 307200L);
        int length = supportedSizes.length;
        Size size = null;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Size size2 = supportedSizes[i];
            long width = size2.getWidth() * size2.getHeight();
            if (width == min) {
                return size2;
            }
            if (width > min) {
                if (size != null) {
                    return size;
                }
            } else {
                i++;
                size = size2;
            }
        }
        return (Size) asList.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSessionConfig$0(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        this.mSessionConfig = createSessionConfig();
        SurfaceResetCallback surfaceResetCallback = this.mSurfaceResetCallback;
        if (surfaceResetCallback != null) {
            surfaceResetCallback.onSurfaceReset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getProperPreviewSize$1(Size size, Size size2) {
        return Long.signum((size.getWidth() * size.getHeight()) - (size2.getWidth() * size2.getHeight()));
    }

    public void clear() {
        Logger.d(TAG, "MeteringRepeating clear!");
        DeferrableSurface deferrableSurface = this.mDeferrableSurface;
        if (deferrableSurface != null) {
            deferrableSurface.close();
        }
        this.mDeferrableSurface = null;
    }

    @NonNull
    public SessionConfig createSessionConfig() {
        final SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.setDefaultBufferSize(this.mMeteringRepeatingSize.getWidth(), this.mMeteringRepeatingSize.getHeight());
        final Surface surface = new Surface(surfaceTexture);
        SessionConfig.Builder createFrom = SessionConfig.Builder.createFrom(this.mConfigWithDefaults, this.mMeteringRepeatingSize);
        createFrom.setTemplateType(1);
        ImmediateSurface immediateSurface = new ImmediateSurface(surface);
        this.mDeferrableSurface = immediateSurface;
        Futures.addCallback(immediateSurface.getTerminationFuture(), new FutureCallback<Void>() { // from class: androidx.camera.camera2.internal.MeteringRepeatingSession.1
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                throw new IllegalStateException("Future should never fail. Did it get completed by GC?", th);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Void r1) {
                surface.release();
                surfaceTexture.release();
            }
        }, CameraXExecutors.directExecutor());
        createFrom.addSurface(this.mDeferrableSurface);
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new SessionConfig.ErrorListener() { // from class: androidx.camera.camera2.internal.뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬
            @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
            public final void onError(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
                MeteringRepeatingSession.this.lambda$createSessionConfig$0(sessionConfig, sessionError);
            }
        });
        this.mCloseableErrorListener = closeableErrorListener2;
        createFrom.setErrorListener(closeableErrorListener2);
        return createFrom.build();
    }

    @NonNull
    public Size getMeteringRepeatingSize() {
        return this.mMeteringRepeatingSize;
    }

    @NonNull
    public String getName() {
        return TAG;
    }

    @NonNull
    public SessionConfig getSessionConfig() {
        return this.mSessionConfig;
    }

    @NonNull
    public UseCaseConfig<?> getUseCaseConfig() {
        return this.mConfigWithDefaults;
    }
}
