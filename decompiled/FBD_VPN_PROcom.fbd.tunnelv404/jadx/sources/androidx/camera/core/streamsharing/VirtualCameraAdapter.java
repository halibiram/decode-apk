package androidx.camera.core.streamsharing;

import android.graphics.Rect;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.concurrent.DualOutConfig;
import androidx.camera.core.processing.util.OutConfig;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.core.util.Preconditions;
import j$.util.Objects;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class VirtualCameraAdapter implements UseCase.StateChangeCallback {

    @NonNull
    final Set<UseCase> mChildren;

    @NonNull
    private final Set<UseCaseConfig<?>> mChildrenConfigs;

    @NonNull
    private final Map<UseCase, UseCaseConfig<?>> mChildrenConfigsMap;

    @NonNull
    private final CameraInternal mParentCamera;

    @NonNull
    private final ResolutionsMerger mResolutionsMerger;

    @Nullable
    private final CameraInternal mSecondaryParentCamera;

    @Nullable
    private ResolutionsMerger mSecondaryResolutionsMerger;

    @NonNull
    private final UseCaseConfigFactory mUseCaseConfigFactory;

    @NonNull
    final Map<UseCase, SurfaceEdge> mChildrenEdges = new HashMap();

    @NonNull
    private final Map<UseCase, VirtualCamera> mChildrenVirtualCameras = new HashMap();

    @NonNull
    final Map<UseCase, Boolean> mChildrenActiveState = new HashMap();

    @NonNull
    private final CameraCaptureCallback mParentMetadataCallback = createCameraCaptureCallback();

    public VirtualCameraAdapter(@NonNull CameraInternal cameraInternal, @Nullable CameraInternal cameraInternal2, @NonNull Set<UseCase> set, @NonNull UseCaseConfigFactory useCaseConfigFactory, @NonNull StreamSharing.Control control) {
        this.mParentCamera = cameraInternal;
        this.mSecondaryParentCamera = cameraInternal2;
        this.mUseCaseConfigFactory = useCaseConfigFactory;
        this.mChildren = set;
        Map<UseCase, UseCaseConfig<?>> childrenConfigsMap = toChildrenConfigsMap(cameraInternal, set, useCaseConfigFactory);
        this.mChildrenConfigsMap = childrenConfigsMap;
        HashSet hashSet = new HashSet(childrenConfigsMap.values());
        this.mChildrenConfigs = hashSet;
        this.mResolutionsMerger = new ResolutionsMerger(cameraInternal, hashSet);
        if (cameraInternal2 != null) {
            this.mSecondaryResolutionsMerger = new ResolutionsMerger(cameraInternal2, hashSet);
        }
        for (UseCase useCase : set) {
            this.mChildrenActiveState.put(useCase, Boolean.FALSE);
            this.mChildrenVirtualCameras.put(useCase, new VirtualCamera(cameraInternal, this, control));
        }
    }

    @NonNull
    private OutConfig calculateOutConfig(@NonNull UseCase useCase, @NonNull ResolutionsMerger resolutionsMerger, @NonNull CameraInternal cameraInternal, @Nullable SurfaceEdge surfaceEdge, int i, boolean z) {
        int sensorRotationDegrees = cameraInternal.getCameraInfo().getSensorRotationDegrees(i);
        boolean isMirrored = TransformUtils.isMirrored(surfaceEdge.getSensorToBufferTransform());
        UseCaseConfig<?> useCaseConfig = this.mChildrenConfigsMap.get(useCase);
        Objects.requireNonNull(useCaseConfig);
        Pair<Rect, Size> preferredChildSizePair = resolutionsMerger.getPreferredChildSizePair(useCaseConfig, surfaceEdge.getCropRect(), TransformUtils.getRotationDegrees(surfaceEdge.getSensorToBufferTransform()), z);
        Rect rect = (Rect) preferredChildSizePair.first;
        Size size = (Size) preferredChildSizePair.second;
        int childRotationDegrees = getChildRotationDegrees(useCase, this.mParentCamera);
        VirtualCamera virtualCamera = this.mChildrenVirtualCameras.get(useCase);
        Objects.requireNonNull(virtualCamera);
        virtualCamera.setRotationDegrees(childRotationDegrees);
        int within360 = TransformUtils.within360((surfaceEdge.getRotationDegrees() + childRotationDegrees) - sensorRotationDegrees);
        return OutConfig.of(getChildTargetType(useCase), getChildFormat(useCase), rect, TransformUtils.rotateSize(size, within360), within360, useCase.isMirroringRequired(cameraInternal) ^ isMirrored);
    }

    private static void forceSetProvider(@NonNull SurfaceEdge surfaceEdge, @NonNull DeferrableSurface deferrableSurface, @NonNull SessionConfig sessionConfig) {
        surfaceEdge.invalidate();
        try {
            surfaceEdge.setProvider(deferrableSurface);
        } catch (DeferrableSurface.SurfaceClosedException unused) {
            if (sessionConfig.getErrorListener() != null) {
                sessionConfig.getErrorListener().onError(sessionConfig, SessionConfig.SessionError.SESSION_ERROR_SURFACE_NEEDS_RESET);
            }
        }
    }

    private static int getChildFormat(@NonNull UseCase useCase) {
        if (useCase instanceof ImageCapture) {
            return 256;
        }
        return 34;
    }

    @IntRange(from = 0, to = 359)
    private int getChildRotationDegrees(@NonNull UseCase useCase, @NonNull CameraInternal cameraInternal) {
        return cameraInternal.getCameraInfo().getSensorRotationDegrees(((ImageOutputConfig) useCase.getCurrentConfig()).getTargetRotation(0));
    }

    @Nullable
    @VisibleForTesting
    public static DeferrableSurface getChildSurface(@NonNull UseCase useCase) {
        List<DeferrableSurface> surfaces;
        boolean z;
        if (useCase instanceof ImageCapture) {
            surfaces = useCase.getSessionConfig().getSurfaces();
        } else {
            surfaces = useCase.getSessionConfig().getRepeatingCaptureConfig().getSurfaces();
        }
        if (surfaces.size() <= 1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        if (surfaces.size() == 1) {
            return surfaces.get(0);
        }
        return null;
    }

    private static int getChildTargetType(@NonNull UseCase useCase) {
        if (useCase instanceof Preview) {
            return 1;
        }
        if (useCase instanceof ImageCapture) {
            return 4;
        }
        return 2;
    }

    private static int getHighestSurfacePriority(Set<UseCaseConfig<?>> set) {
        Iterator<UseCaseConfig<?>> it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = Math.max(i, it.next().getSurfaceOccupancyPriority(0));
        }
        return i;
    }

    @NonNull
    private SurfaceEdge getUseCaseEdge(@NonNull UseCase useCase) {
        SurfaceEdge surfaceEdge = this.mChildrenEdges.get(useCase);
        Objects.requireNonNull(surfaceEdge);
        return surfaceEdge;
    }

    private boolean isUseCaseActive(@NonNull UseCase useCase) {
        Boolean bool = this.mChildrenActiveState.get(useCase);
        Objects.requireNonNull(bool);
        return bool.booleanValue();
    }

    public static void sendCameraCaptureResultToChild(@NonNull CameraCaptureResult cameraCaptureResult, @NonNull SessionConfig sessionConfig, int i) {
        Iterator<CameraCaptureCallback> it = sessionConfig.getRepeatingCameraCaptureCallbacks().iterator();
        while (it.hasNext()) {
            it.next().onCaptureCompleted(i, new VirtualCameraCaptureResult(sessionConfig.getRepeatingCaptureConfig().getTagBundle(), cameraCaptureResult));
        }
    }

    @NonNull
    private static Map<UseCase, UseCaseConfig<?>> toChildrenConfigsMap(@NonNull CameraInternal cameraInternal, @NonNull Set<UseCase> set, @NonNull UseCaseConfigFactory useCaseConfigFactory) {
        HashMap hashMap = new HashMap();
        for (UseCase useCase : set) {
            hashMap.put(useCase, useCase.mergeConfigs(cameraInternal.getCameraInfoInternal(), null, useCase.getDefaultConfig(true, useCaseConfigFactory)));
        }
        return hashMap;
    }

    public void bindChildren() {
        for (UseCase useCase : this.mChildren) {
            VirtualCamera virtualCamera = this.mChildrenVirtualCameras.get(useCase);
            Objects.requireNonNull(virtualCamera);
            useCase.bindToCamera(virtualCamera, null, null, useCase.getDefaultConfig(true, this.mUseCaseConfigFactory));
        }
    }

    public CameraCaptureCallback createCameraCaptureCallback() {
        return new CameraCaptureCallback() { // from class: androidx.camera.core.streamsharing.VirtualCameraAdapter.1
            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public void onCaptureCompleted(int i, @NonNull CameraCaptureResult cameraCaptureResult) {
                super.onCaptureCompleted(i, cameraCaptureResult);
                Iterator<UseCase> it = VirtualCameraAdapter.this.mChildren.iterator();
                while (it.hasNext()) {
                    VirtualCameraAdapter.sendCameraCaptureResultToChild(cameraCaptureResult, it.next().getSessionConfig(), i);
                }
            }
        };
    }

    @NonNull
    public Set<UseCase> getChildren() {
        return this.mChildren;
    }

    @NonNull
    public Map<UseCase, OutConfig> getChildrenOutConfigs(@NonNull SurfaceEdge surfaceEdge, int i, boolean z) {
        HashMap hashMap = new HashMap();
        for (UseCase useCase : this.mChildren) {
            hashMap.put(useCase, calculateOutConfig(useCase, this.mResolutionsMerger, this.mParentCamera, surfaceEdge, i, z));
        }
        return hashMap;
    }

    @NonNull
    public CameraCaptureCallback getParentMetadataCallback() {
        return this.mParentMetadataCallback;
    }

    public void mergeChildrenConfigs(@NonNull MutableConfig mutableConfig) {
        mutableConfig.insertOption(ImageOutputConfig.OPTION_CUSTOM_ORDERED_RESOLUTIONS, this.mResolutionsMerger.getMergedResolutions(mutableConfig));
        mutableConfig.insertOption(UseCaseConfig.OPTION_SURFACE_OCCUPANCY_PRIORITY, Integer.valueOf(getHighestSurfacePriority(this.mChildrenConfigs)));
        DynamicRange resolveDynamicRange = DynamicRangeUtils.resolveDynamicRange(this.mChildrenConfigs);
        if (resolveDynamicRange != null) {
            mutableConfig.insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, resolveDynamicRange);
            for (UseCase useCase : this.mChildren) {
                if (useCase.getCurrentConfig().getVideoStabilizationMode() != 0) {
                    mutableConfig.insertOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE, Integer.valueOf(useCase.getCurrentConfig().getVideoStabilizationMode()));
                }
                if (useCase.getCurrentConfig().getPreviewStabilizationMode() != 0) {
                    mutableConfig.insertOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, Integer.valueOf(useCase.getCurrentConfig().getPreviewStabilizationMode()));
                }
            }
            return;
        }
        throw new IllegalArgumentException("Failed to merge child dynamic ranges, can not find a dynamic range that satisfies all children.");
    }

    public void notifyStateAttached() {
        for (UseCase useCase : this.mChildren) {
            useCase.onStateAttached();
            useCase.onCameraControlReady();
        }
    }

    public void notifyStateDetached() {
        Iterator<UseCase> it = this.mChildren.iterator();
        while (it.hasNext()) {
            it.next().onStateDetached();
        }
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    @MainThread
    public void onUseCaseActive(@NonNull UseCase useCase) {
        Threads.checkMainThread();
        if (isUseCaseActive(useCase)) {
            return;
        }
        this.mChildrenActiveState.put(useCase, Boolean.TRUE);
        DeferrableSurface childSurface = getChildSurface(useCase);
        if (childSurface != null) {
            forceSetProvider(getUseCaseEdge(useCase), childSurface, useCase.getSessionConfig());
        }
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    @MainThread
    public void onUseCaseInactive(@NonNull UseCase useCase) {
        Threads.checkMainThread();
        if (!isUseCaseActive(useCase)) {
            return;
        }
        this.mChildrenActiveState.put(useCase, Boolean.FALSE);
        getUseCaseEdge(useCase).disconnect();
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    @MainThread
    public void onUseCaseReset(@NonNull UseCase useCase) {
        DeferrableSurface childSurface;
        Threads.checkMainThread();
        SurfaceEdge useCaseEdge = getUseCaseEdge(useCase);
        if (isUseCaseActive(useCase) && (childSurface = getChildSurface(useCase)) != null) {
            forceSetProvider(useCaseEdge, childSurface, useCase.getSessionConfig());
        }
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    @MainThread
    public void onUseCaseUpdated(@NonNull UseCase useCase) {
        Threads.checkMainThread();
        if (!isUseCaseActive(useCase)) {
            return;
        }
        SurfaceEdge useCaseEdge = getUseCaseEdge(useCase);
        DeferrableSurface childSurface = getChildSurface(useCase);
        if (childSurface != null) {
            forceSetProvider(useCaseEdge, childSurface, useCase.getSessionConfig());
        } else {
            useCaseEdge.disconnect();
        }
    }

    public void resetChildren() {
        Threads.checkMainThread();
        Iterator<UseCase> it = this.mChildren.iterator();
        while (it.hasNext()) {
            onUseCaseReset(it.next());
        }
    }

    public void setChildrenEdges(@NonNull Map<UseCase, SurfaceEdge> map) {
        this.mChildrenEdges.clear();
        this.mChildrenEdges.putAll(map);
        for (Map.Entry<UseCase, SurfaceEdge> entry : this.mChildrenEdges.entrySet()) {
            UseCase key = entry.getKey();
            SurfaceEdge value = entry.getValue();
            key.setViewPortCropRect(value.getCropRect());
            key.setSensorToBufferTransformMatrix(value.getSensorToBufferTransform());
            key.updateSuggestedStreamSpec(value.getStreamSpec(), null);
            key.notifyState();
        }
    }

    public void unbindChildren() {
        for (UseCase useCase : this.mChildren) {
            VirtualCamera virtualCamera = this.mChildrenVirtualCameras.get(useCase);
            Objects.requireNonNull(virtualCamera);
            useCase.unbindFromCamera(virtualCamera);
        }
    }

    @NonNull
    public Map<UseCase, DualOutConfig> getChildrenOutConfigs(@NonNull SurfaceEdge surfaceEdge, @NonNull SurfaceEdge surfaceEdge2, int i, boolean z) {
        HashMap hashMap = new HashMap();
        for (UseCase useCase : this.mChildren) {
            OutConfig calculateOutConfig = calculateOutConfig(useCase, this.mResolutionsMerger, this.mParentCamera, surfaceEdge, i, z);
            ResolutionsMerger resolutionsMerger = this.mSecondaryResolutionsMerger;
            CameraInternal cameraInternal = this.mSecondaryParentCamera;
            Objects.requireNonNull(cameraInternal);
            hashMap.put(useCase, DualOutConfig.of(calculateOutConfig, calculateOutConfig(useCase, resolutionsMerger, cameraInternal, surfaceEdge2, i, z)));
        }
        return hashMap;
    }
}
