package androidx.camera.core.streamsharing;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Size;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.CameraEffect;
import androidx.camera.core.LayoutSettings;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.core.processing.concurrent.DualOutConfig;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode;
import androidx.camera.core.processing.util.OutConfig;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0634x5c1485ac;
import defpackage.AbstractC1275x4479f3e9;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class StreamSharing extends UseCase {
    private static final String TAG = "StreamSharing";

    @Nullable
    private SurfaceEdge mCameraEdge;

    @Nullable
    private SessionConfig.CloseableErrorListener mCloseableErrorListener;

    @NonNull
    private final StreamSharingConfig mDefaultConfig;

    @Nullable
    private DualSurfaceProcessorNode mDualSharingNode;

    @Nullable
    private SurfaceProcessorNode mEffectNode;

    @NonNull
    private final LayoutSettings mLayoutSettings;

    @Nullable
    private SurfaceEdge mSecondaryCameraEdge;

    @NonNull
    private final LayoutSettings mSecondaryLayoutSettings;
    SessionConfig.Builder mSecondarySessionConfigBuilder;

    @Nullable
    private SurfaceEdge mSecondarySharingInputEdge;
    SessionConfig.Builder mSessionConfigBuilder;

    @Nullable
    private SurfaceEdge mSharingInputEdge;

    @Nullable
    private SurfaceProcessorNode mSharingNode;

    @NonNull
    private final VirtualCameraAdapter mVirtualCameraAdapter;

    /* loaded from: classes.dex */
    public interface Control {
        @NonNull
        ListenableFuture<Void> jpegSnapshot(@IntRange(from = 0, to = 100) int i, @IntRange(from = 0, to = 359) int i2);
    }

    public StreamSharing(@NonNull CameraInternal cameraInternal, @Nullable CameraInternal cameraInternal2, @NonNull LayoutSettings layoutSettings, @NonNull LayoutSettings layoutSettings2, @NonNull Set<UseCase> set, @NonNull UseCaseConfigFactory useCaseConfigFactory) {
        super(getDefaultConfig(set));
        this.mDefaultConfig = getDefaultConfig(set);
        this.mLayoutSettings = layoutSettings;
        this.mSecondaryLayoutSettings = layoutSettings2;
        this.mVirtualCameraAdapter = new VirtualCameraAdapter(cameraInternal, cameraInternal2, set, useCaseConfigFactory, new Control() { // from class: androidx.camera.core.streamsharing.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸
            @Override // androidx.camera.core.streamsharing.StreamSharing.Control
            public final ListenableFuture jpegSnapshot(int i, int i2) {
                ListenableFuture lambda$new$0;
                lambda$new$0 = StreamSharing.this.lambda$new$0(i, i2);
                return lambda$new$0;
            }
        });
    }

    private void addCameraErrorListener(@NonNull SessionConfig.Builder builder, @NonNull final String str, @Nullable final String str2, @NonNull final UseCaseConfig<?> useCaseConfig, @NonNull final StreamSpec streamSpec, @Nullable final StreamSpec streamSpec2) {
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new SessionConfig.ErrorListener() { // from class: 땥돳땱딄딽뒀뒀돼됨됩딃딨뎬됐땮땃땯된땋듼땝듸땱돴들딝득땭땨돳듬듬둥땪땹뒨뎰듐되땫딤딃땄땋듔땀될땲두딸딁땰됩돠듐뎽돶땤딻딄돤드따듰돝뒘둡딤딻땰듽될땳뒙뒈돼돳딄뎽뒵든딞땥딜땀땝뒬땥디듨딸뒛땵뎻뒾뎸딸듰땥돷땸듟뎻땳둘뒙됨뎽된돼딸돸딃둣딝딽뒷돝땹땔둡듨땯뒼땐따뎨땨됨돼
            @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
            public final void onError(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
                StreamSharing.this.lambda$addCameraErrorListener$1(str, str2, useCaseConfig, streamSpec, streamSpec2, sessionConfig, sessionError);
            }
        });
        this.mCloseableErrorListener = closeableErrorListener2;
        builder.setErrorListener(closeableErrorListener2);
    }

    private void clearPipeline() {
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
            this.mCloseableErrorListener = null;
        }
        SurfaceEdge surfaceEdge = this.mCameraEdge;
        if (surfaceEdge != null) {
            surfaceEdge.close();
            this.mCameraEdge = null;
        }
        SurfaceEdge surfaceEdge2 = this.mSecondaryCameraEdge;
        if (surfaceEdge2 != null) {
            surfaceEdge2.close();
            this.mSecondaryCameraEdge = null;
        }
        SurfaceEdge surfaceEdge3 = this.mSharingInputEdge;
        if (surfaceEdge3 != null) {
            surfaceEdge3.close();
            this.mSharingInputEdge = null;
        }
        SurfaceEdge surfaceEdge4 = this.mSecondarySharingInputEdge;
        if (surfaceEdge4 != null) {
            surfaceEdge4.close();
            this.mSecondarySharingInputEdge = null;
        }
        SurfaceProcessorNode surfaceProcessorNode = this.mSharingNode;
        if (surfaceProcessorNode != null) {
            surfaceProcessorNode.release();
            this.mSharingNode = null;
        }
        DualSurfaceProcessorNode dualSurfaceProcessorNode = this.mDualSharingNode;
        if (dualSurfaceProcessorNode != null) {
            dualSurfaceProcessorNode.release();
            this.mDualSharingNode = null;
        }
        SurfaceProcessorNode surfaceProcessorNode2 = this.mEffectNode;
        if (surfaceProcessorNode2 != null) {
            surfaceProcessorNode2.release();
            this.mEffectNode = null;
        }
    }

    @NonNull
    @MainThread
    private List<SessionConfig> createPipelineAndUpdateChildrenSpecs(@NonNull String str, @Nullable String str2, @NonNull UseCaseConfig<?> useCaseConfig, @NonNull StreamSpec streamSpec, @Nullable StreamSpec streamSpec2) {
        boolean z;
        boolean z2;
        Threads.checkMainThread();
        if (streamSpec2 == null) {
            createPrimaryCamera(str, str2, useCaseConfig, streamSpec, null);
            CameraInternal camera = getCamera();
            Objects.requireNonNull(camera);
            this.mSharingNode = getSharingNode(camera, streamSpec);
            if (getViewPortCropRect() != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            Map<UseCase, OutConfig> childrenOutConfigs = this.mVirtualCameraAdapter.getChildrenOutConfigs(this.mSharingInputEdge, getTargetRotationInternal(), z2);
            SurfaceProcessorNode.Out transform = this.mSharingNode.transform(SurfaceProcessorNode.In.of(this.mSharingInputEdge, new ArrayList(childrenOutConfigs.values())));
            HashMap hashMap = new HashMap();
            for (Map.Entry<UseCase, OutConfig> entry : childrenOutConfigs.entrySet()) {
                hashMap.put(entry.getKey(), transform.get(entry.getValue()));
            }
            this.mVirtualCameraAdapter.setChildrenEdges(hashMap);
            Object[] objArr = {this.mSessionConfigBuilder.build()};
            ArrayList arrayList = new ArrayList(1);
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            arrayList.add(obj);
            return DesugarCollections.unmodifiableList(arrayList);
        }
        createPrimaryCamera(str, str2, useCaseConfig, streamSpec, streamSpec2);
        createSecondaryCamera(str, str2, useCaseConfig, streamSpec, streamSpec2);
        this.mDualSharingNode = getDualSharingNode(getCamera(), getSecondaryCamera(), streamSpec, this.mLayoutSettings, this.mSecondaryLayoutSettings);
        if (getViewPortCropRect() != null) {
            z = true;
        } else {
            z = false;
        }
        Map<UseCase, DualOutConfig> childrenOutConfigs2 = this.mVirtualCameraAdapter.getChildrenOutConfigs(this.mSharingInputEdge, this.mSecondarySharingInputEdge, getTargetRotationInternal(), z);
        DualSurfaceProcessorNode.Out transform2 = this.mDualSharingNode.transform(DualSurfaceProcessorNode.In.of(this.mSharingInputEdge, this.mSecondarySharingInputEdge, new ArrayList(childrenOutConfigs2.values())));
        HashMap hashMap2 = new HashMap();
        for (Map.Entry<UseCase, DualOutConfig> entry2 : childrenOutConfigs2.entrySet()) {
            hashMap2.put(entry2.getKey(), transform2.get(entry2.getValue()));
        }
        this.mVirtualCameraAdapter.setChildrenEdges(hashMap2);
        Object[] objArr2 = {this.mSessionConfigBuilder.build(), this.mSecondarySessionConfigBuilder.build()};
        ArrayList arrayList2 = new ArrayList(2);
        for (int i = 0; i < 2; i++) {
            Object obj2 = objArr2[i];
            Objects.requireNonNull(obj2);
            arrayList2.add(obj2);
        }
        return DesugarCollections.unmodifiableList(arrayList2);
    }

    private void createPrimaryCamera(@NonNull String str, @Nullable String str2, @NonNull UseCaseConfig<?> useCaseConfig, @NonNull StreamSpec streamSpec, @Nullable StreamSpec streamSpec2) {
        Matrix sensorToBufferTransformMatrix = getSensorToBufferTransformMatrix();
        CameraInternal camera = getCamera();
        Objects.requireNonNull(camera);
        boolean hasTransform = camera.getHasTransform();
        Rect cropRect = getCropRect(streamSpec.getResolution());
        Objects.requireNonNull(cropRect);
        CameraInternal camera2 = getCamera();
        Objects.requireNonNull(camera2);
        int relativeRotation = getRelativeRotation(camera2);
        CameraInternal camera3 = getCamera();
        Objects.requireNonNull(camera3);
        SurfaceEdge surfaceEdge = new SurfaceEdge(3, 34, streamSpec, sensorToBufferTransformMatrix, hasTransform, cropRect, relativeRotation, -1, isMirroringRequired(camera3));
        this.mCameraEdge = surfaceEdge;
        CameraInternal camera4 = getCamera();
        Objects.requireNonNull(camera4);
        this.mSharingInputEdge = getSharingInputEdge(surfaceEdge, camera4);
        SessionConfig.Builder createSessionConfigBuilder = createSessionConfigBuilder(this.mCameraEdge, useCaseConfig, streamSpec);
        this.mSessionConfigBuilder = createSessionConfigBuilder;
        addCameraErrorListener(createSessionConfigBuilder, str, str2, useCaseConfig, streamSpec, streamSpec2);
    }

    private void createSecondaryCamera(@NonNull String str, @Nullable String str2, @NonNull UseCaseConfig<?> useCaseConfig, @NonNull StreamSpec streamSpec, @Nullable StreamSpec streamSpec2) {
        Matrix sensorToBufferTransformMatrix = getSensorToBufferTransformMatrix();
        CameraInternal secondaryCamera = getSecondaryCamera();
        Objects.requireNonNull(secondaryCamera);
        boolean hasTransform = secondaryCamera.getHasTransform();
        Rect cropRect = getCropRect(streamSpec2.getResolution());
        Objects.requireNonNull(cropRect);
        CameraInternal secondaryCamera2 = getSecondaryCamera();
        Objects.requireNonNull(secondaryCamera2);
        int relativeRotation = getRelativeRotation(secondaryCamera2);
        CameraInternal secondaryCamera3 = getSecondaryCamera();
        Objects.requireNonNull(secondaryCamera3);
        SurfaceEdge surfaceEdge = new SurfaceEdge(3, 34, streamSpec2, sensorToBufferTransformMatrix, hasTransform, cropRect, relativeRotation, -1, isMirroringRequired(secondaryCamera3));
        this.mSecondaryCameraEdge = surfaceEdge;
        CameraInternal secondaryCamera4 = getSecondaryCamera();
        Objects.requireNonNull(secondaryCamera4);
        this.mSecondarySharingInputEdge = getSharingInputEdge(surfaceEdge, secondaryCamera4);
        SessionConfig.Builder createSessionConfigBuilder = createSessionConfigBuilder(this.mSecondaryCameraEdge, useCaseConfig, streamSpec2);
        this.mSecondarySessionConfigBuilder = createSessionConfigBuilder;
        addCameraErrorListener(createSessionConfigBuilder, str, str2, useCaseConfig, streamSpec, streamSpec2);
    }

    @NonNull
    private SessionConfig.Builder createSessionConfigBuilder(@NonNull SurfaceEdge surfaceEdge, @NonNull UseCaseConfig<?> useCaseConfig, @NonNull StreamSpec streamSpec) {
        SessionConfig.Builder createFrom = SessionConfig.Builder.createFrom(useCaseConfig, streamSpec.getResolution());
        propagateChildrenTemplate(createFrom);
        propagateChildrenCamera2Interop(streamSpec.getResolution(), createFrom);
        createFrom.addSurface(surfaceEdge.getDeferrableSurface(), streamSpec.getDynamicRange(), null, -1);
        createFrom.addRepeatingCameraCaptureCallback(this.mVirtualCameraAdapter.getParentMetadataCallback());
        if (streamSpec.getImplementationOptions() != null) {
            createFrom.addImplementationOptions(streamSpec.getImplementationOptions());
        }
        return createFrom;
    }

    @NonNull
    public static List<UseCaseConfigFactory.CaptureType> getCaptureTypes(@NonNull UseCase useCase) {
        ArrayList arrayList = new ArrayList();
        if (isStreamSharing(useCase)) {
            Iterator<UseCase> it = ((StreamSharing) useCase).getChildren().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getCurrentConfig().getCaptureType());
            }
        } else {
            arrayList.add(useCase.getCurrentConfig().getCaptureType());
        }
        return arrayList;
    }

    private static int getChildTemplate(@NonNull UseCase useCase) {
        return useCase.getCurrentConfig().getDefaultSessionConfig().getTemplateType();
    }

    @Nullable
    private Rect getCropRect(@NonNull Size size) {
        if (getViewPortCropRect() != null) {
            return getViewPortCropRect();
        }
        return new Rect(0, 0, size.getWidth(), size.getHeight());
    }

    private Rect getCropRectAppliedByEffect(SurfaceEdge surfaceEdge) {
        if (((CameraEffect) Preconditions.checkNotNull(getEffect())).getTransformation() == 1) {
            return TransformUtils.sizeToRect(surfaceEdge.getStreamSpec().getResolution());
        }
        return surfaceEdge.getCropRect();
    }

    private static StreamSharingConfig getDefaultConfig(Set<UseCase> set) {
        MutableConfig mutableConfig = new StreamSharingBuilder().getMutableConfig();
        mutableConfig.insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 34);
        ArrayList arrayList = new ArrayList();
        for (UseCase useCase : set) {
            if (useCase.getCurrentConfig().containsOption(UseCaseConfig.OPTION_CAPTURE_TYPE)) {
                arrayList.add(useCase.getCurrentConfig().getCaptureType());
            }
        }
        mutableConfig.insertOption(StreamSharingConfig.OPTION_CAPTURE_TYPES, arrayList);
        mutableConfig.insertOption(ImageOutputConfig.OPTION_MIRROR_MODE, 2);
        return new StreamSharingConfig(OptionsBundle.from(mutableConfig));
    }

    @NonNull
    private DualSurfaceProcessorNode getDualSharingNode(@NonNull CameraInternal cameraInternal, @NonNull CameraInternal cameraInternal2, @NonNull StreamSpec streamSpec, @NonNull LayoutSettings layoutSettings, @NonNull LayoutSettings layoutSettings2) {
        return new DualSurfaceProcessorNode(cameraInternal, cameraInternal2, DualSurfaceProcessor.Factory.newInstance(streamSpec.getDynamicRange(), layoutSettings, layoutSettings2));
    }

    private boolean getMirroringAppliedByEffect() {
        if (((CameraEffect) Preconditions.checkNotNull(getEffect())).getTransformation() != 1) {
            return false;
        }
        CameraInternal cameraInternal = (CameraInternal) Preconditions.checkNotNull(getCamera());
        if (!cameraInternal.isFrontFacing() || !cameraInternal.getHasTransform()) {
            return false;
        }
        return true;
    }

    private int getRotationAppliedByEffect() {
        if (((CameraEffect) Preconditions.checkNotNull(getEffect())).getTransformation() == 1) {
            return getRelativeRotation((CameraInternal) Preconditions.checkNotNull(getCamera()));
        }
        return 0;
    }

    @NonNull
    private SurfaceEdge getSharingInputEdge(@NonNull SurfaceEdge surfaceEdge, @NonNull CameraInternal cameraInternal) {
        if (getEffect() == null || getEffect().getTransformation() == 2 || getEffect().getOutputOption() == 1) {
            return surfaceEdge;
        }
        this.mEffectNode = new SurfaceProcessorNode(cameraInternal, getEffect().createSurfaceProcessorInternal());
        int rotationAppliedByEffect = getRotationAppliedByEffect();
        Rect cropRectAppliedByEffect = getCropRectAppliedByEffect(surfaceEdge);
        OutConfig of = OutConfig.of(surfaceEdge.getTargets(), surfaceEdge.getFormat(), cropRectAppliedByEffect, TransformUtils.getRotatedSize(cropRectAppliedByEffect, rotationAppliedByEffect), rotationAppliedByEffect, getMirroringAppliedByEffect(), true);
        SurfaceEdge surfaceEdge2 = this.mEffectNode.transform(SurfaceProcessorNode.In.of(surfaceEdge, Collections.singletonList(of))).get(of);
        Objects.requireNonNull(surfaceEdge2);
        return surfaceEdge2;
    }

    @NonNull
    private SurfaceProcessorNode getSharingNode(@NonNull CameraInternal cameraInternal, @NonNull StreamSpec streamSpec) {
        if (getEffect() != null && getEffect().getOutputOption() == 1) {
            SurfaceProcessorNode surfaceProcessorNode = new SurfaceProcessorNode(cameraInternal, getEffect().createSurfaceProcessorInternal());
            this.mEffectNode = surfaceProcessorNode;
            return surfaceProcessorNode;
        }
        return new SurfaceProcessorNode(cameraInternal, DefaultSurfaceProcessor.Factory.newInstance(streamSpec.getDynamicRange()));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static boolean isStreamSharing(@Nullable UseCase useCase) {
        return useCase instanceof StreamSharing;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addCameraErrorListener$1(String str, String str2, UseCaseConfig useCaseConfig, StreamSpec streamSpec, StreamSpec streamSpec2, SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        if (getCamera() == null) {
            return;
        }
        clearPipeline();
        updateSessionConfig(createPipelineAndUpdateChildrenSpecs(str, str2, useCaseConfig, streamSpec, streamSpec2));
        notifyReset();
        this.mVirtualCameraAdapter.resetChildren();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ListenableFuture lambda$new$0(int i, int i2) {
        SurfaceProcessorNode surfaceProcessorNode = this.mSharingNode;
        if (surfaceProcessorNode != null) {
            return surfaceProcessorNode.getSurfaceProcessor().snapshot(i, i2);
        }
        return Futures.immediateFailedFuture(new Exception("Failed to take picture: pipeline is not ready."));
    }

    private void propagateChildrenCamera2Interop(@NonNull Size size, @NonNull SessionConfig.Builder builder) {
        Iterator<UseCase> it = getChildren().iterator();
        while (it.hasNext()) {
            SessionConfig build = SessionConfig.Builder.createFrom(it.next().getCurrentConfig(), size).build();
            builder.addAllRepeatingCameraCaptureCallbacks(build.getRepeatingCameraCaptureCallbacks());
            builder.addAllCameraCaptureCallbacks(build.getSingleCameraCaptureCallbacks());
            builder.addAllSessionStateCallbacks(build.getSessionStateCallbacks());
            builder.addAllDeviceStateCallbacks(build.getDeviceStateCallbacks());
            builder.addImplementationOptions(build.getImplementationOptions());
        }
    }

    private void propagateChildrenTemplate(@NonNull SessionConfig.Builder builder) {
        Iterator<UseCase> it = getChildren().iterator();
        int i = -1;
        while (it.hasNext()) {
            i = SessionConfig.getHigherPriorityTemplateType(i, getChildTemplate(it.next()));
        }
        if (i != -1) {
            builder.setTemplateType(i);
        }
    }

    @Nullable
    @VisibleForTesting
    public SurfaceEdge getCameraEdge() {
        return this.mCameraEdge;
    }

    @NonNull
    public Set<UseCase> getChildren() {
        return this.mVirtualCameraAdapter.getChildren();
    }

    @Override // androidx.camera.core.UseCase
    @NonNull
    public Set<Integer> getSupportedEffectTargets() {
        HashSet hashSet = new HashSet();
        hashSet.add(3);
        return hashSet;
    }

    @Override // androidx.camera.core.UseCase
    @NonNull
    public UseCaseConfig.Builder<?, ?, ?> getUseCaseConfigBuilder(@NonNull Config config2) {
        return new StreamSharingBuilder(MutableOptionsBundle.from(config2));
    }

    @NonNull
    @VisibleForTesting
    public VirtualCameraAdapter getVirtualCameraAdapter() {
        return this.mVirtualCameraAdapter;
    }

    @Override // androidx.camera.core.UseCase
    public void onBind() {
        super.onBind();
        this.mVirtualCameraAdapter.bindChildren();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.camera.core.impl.UseCaseConfig, androidx.camera.core.impl.UseCaseConfig<?>] */
    @Override // androidx.camera.core.UseCase
    @NonNull
    public UseCaseConfig<?> onMergeConfig(@NonNull CameraInfoInternal cameraInfoInternal, @NonNull UseCaseConfig.Builder<?, ?, ?> builder) {
        this.mVirtualCameraAdapter.mergeChildrenConfigs(builder.getMutableConfig());
        return builder.getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    public void onStateAttached() {
        super.onStateAttached();
        this.mVirtualCameraAdapter.notifyStateAttached();
    }

    @Override // androidx.camera.core.UseCase
    public void onStateDetached() {
        super.onStateDetached();
        this.mVirtualCameraAdapter.notifyStateDetached();
    }

    @Override // androidx.camera.core.UseCase
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public StreamSpec onSuggestedStreamSpecImplementationOptionsUpdated(@NonNull Config config2) {
        this.mSessionConfigBuilder.addImplementationOptions(config2);
        Object[] objArr = {this.mSessionConfigBuilder.build()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
        return getAttachedStreamSpec().toBuilder().setImplementationOptions(config2).build();
    }

    @Override // androidx.camera.core.UseCase
    @NonNull
    public StreamSpec onSuggestedStreamSpecUpdated(@NonNull StreamSpec streamSpec, @Nullable StreamSpec streamSpec2) {
        updateSessionConfig(createPipelineAndUpdateChildrenSpecs(getCameraId(), getSecondaryCameraId(), getCurrentConfig(), streamSpec, streamSpec2));
        notifyActive();
        return streamSpec;
    }

    @Override // androidx.camera.core.UseCase
    public void onUnbind() {
        super.onUnbind();
        clearPipeline();
        this.mVirtualCameraAdapter.unbindChildren();
    }

    @Nullable
    @VisibleForTesting
    public SurfaceProcessorNode getSharingNode() {
        return this.mSharingNode;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.camera.core.impl.UseCaseConfig, androidx.camera.core.impl.UseCaseConfig<?>] */
    @Override // androidx.camera.core.UseCase
    @Nullable
    public UseCaseConfig<?> getDefaultConfig(boolean z, @NonNull UseCaseConfigFactory useCaseConfigFactory) {
        StreamSharingConfig streamSharingConfig = this.mDefaultConfig;
        streamSharingConfig.getClass();
        Config config2 = useCaseConfigFactory.getConfig(AbstractC1275x4479f3e9.m4243x1378447b(streamSharingConfig), 1);
        if (z) {
            config2 = AbstractC0634x5c1485ac.m3230x3271d0aa(config2, this.mDefaultConfig.getConfig());
        }
        if (config2 == null) {
            return null;
        }
        return getUseCaseConfigBuilder(config2).getUseCaseConfig();
    }

    @Nullable
    @VisibleForTesting
    public SurfaceEdge getSharingInputEdge() {
        return this.mSharingInputEdge;
    }
}
