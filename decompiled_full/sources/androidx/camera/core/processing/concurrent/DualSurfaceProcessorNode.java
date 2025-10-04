package androidx.camera.core.processing.concurrent;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Size;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.Logger;
import androidx.camera.core.ProcessingException;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.Node;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorInternal;
import androidx.camera.core.processing.TargetUtils;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode;
import androidx.camera.core.processing.util.OutConfig;
import androidx.core.util.Preconditions;
import com.google.auto.value.AutoValue;
import defpackage.RunnableC0450xb2a4f6ac;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public class DualSurfaceProcessorNode implements Node<In, Out> {
    private static final String TAG = "DualSurfaceProcessorNode";

    @Nullable
    private In mInput;

    @Nullable
    private Out mOutput;

    @NonNull
    final CameraInternal mPrimaryCameraInternal;

    @NonNull
    final CameraInternal mSecondaryCameraInternal;

    @NonNull
    final SurfaceProcessorInternal mSurfaceProcessor;

    /* renamed from: androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FutureCallback<SurfaceOutput> {
        final /* synthetic */ SurfaceEdge val$outputEdge;

        public AnonymousClass1(SurfaceEdge surfaceEdge) {
            r2 = surfaceEdge;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            if (r2.getTargets() == 2 && (th instanceof CancellationException)) {
                Logger.d(DualSurfaceProcessorNode.TAG, "Downstream VideoCapture failed to provide Surface.");
                return;
            }
            Logger.w(DualSurfaceProcessorNode.TAG, "Downstream node failed to provide Surface. Target: " + TargetUtils.getHumanReadableName(r2.getTargets()), th);
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable SurfaceOutput surfaceOutput) {
            Preconditions.checkNotNull(surfaceOutput);
            try {
                DualSurfaceProcessorNode.this.mSurfaceProcessor.onOutputSurface(surfaceOutput);
            } catch (ProcessingException e) {
                Logger.e(DualSurfaceProcessorNode.TAG, "Failed to send SurfaceOutput to SurfaceProcessor.", e);
            }
        }
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class In {
        @NonNull
        public static In of(@NonNull SurfaceEdge surfaceEdge, @NonNull SurfaceEdge surfaceEdge2, @NonNull List<DualOutConfig> list) {
            return new AutoValue_DualSurfaceProcessorNode_In(surfaceEdge, surfaceEdge2, list);
        }

        @NonNull
        public abstract List<DualOutConfig> getOutConfigs();

        @NonNull
        public abstract SurfaceEdge getPrimarySurfaceEdge();

        @NonNull
        public abstract SurfaceEdge getSecondarySurfaceEdge();
    }

    /* loaded from: classes.dex */
    public static class Out extends HashMap<DualOutConfig, SurfaceEdge> {
    }

    public DualSurfaceProcessorNode(@NonNull CameraInternal cameraInternal, @NonNull CameraInternal cameraInternal2, @NonNull SurfaceProcessorInternal surfaceProcessorInternal) {
        this.mPrimaryCameraInternal = cameraInternal;
        this.mSecondaryCameraInternal = cameraInternal2;
        this.mSurfaceProcessor = surfaceProcessorInternal;
    }

    /* renamed from: createAndSendSurfaceOutput */
    public void lambda$sendSurfaceOutputs$0(@NonNull CameraInternal cameraInternal, @NonNull CameraInternal cameraInternal2, @NonNull SurfaceEdge surfaceEdge, @NonNull SurfaceEdge surfaceEdge2, Map.Entry<DualOutConfig, SurfaceEdge> entry) {
        SurfaceEdge value = entry.getValue();
        Size resolution = surfaceEdge.getStreamSpec().getResolution();
        Rect cropRect = entry.getKey().getPrimaryOutConfig().getCropRect();
        if (!surfaceEdge.hasCameraTransform()) {
            cameraInternal = null;
        }
        SurfaceOutput.CameraInputInfo of = SurfaceOutput.CameraInputInfo.of(resolution, cropRect, cameraInternal, entry.getKey().getPrimaryOutConfig().getRotationDegrees(), entry.getKey().getPrimaryOutConfig().isMirroring());
        Size resolution2 = surfaceEdge2.getStreamSpec().getResolution();
        Rect cropRect2 = entry.getKey().getSecondaryOutConfig().getCropRect();
        if (!surfaceEdge2.hasCameraTransform()) {
            cameraInternal2 = null;
        }
        Futures.addCallback(value.createSurfaceOutputFuture(entry.getKey().getPrimaryOutConfig().getFormat(), of, SurfaceOutput.CameraInputInfo.of(resolution2, cropRect2, cameraInternal2, entry.getKey().getSecondaryOutConfig().getRotationDegrees(), entry.getKey().getSecondaryOutConfig().isMirroring())), new FutureCallback<SurfaceOutput>() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.1
            final /* synthetic */ SurfaceEdge val$outputEdge;

            public AnonymousClass1(SurfaceEdge value2) {
                r2 = value2;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                if (r2.getTargets() == 2 && (th instanceof CancellationException)) {
                    Logger.d(DualSurfaceProcessorNode.TAG, "Downstream VideoCapture failed to provide Surface.");
                    return;
                }
                Logger.w(DualSurfaceProcessorNode.TAG, "Downstream node failed to provide Surface. Target: " + TargetUtils.getHumanReadableName(r2.getTargets()), th);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable SurfaceOutput surfaceOutput) {
                Preconditions.checkNotNull(surfaceOutput);
                try {
                    DualSurfaceProcessorNode.this.mSurfaceProcessor.onOutputSurface(surfaceOutput);
                } catch (ProcessingException e) {
                    Logger.e(DualSurfaceProcessorNode.TAG, "Failed to send SurfaceOutput to SurfaceProcessor.", e);
                }
            }
        }, CameraXExecutors.mainThreadExecutor());
    }

    public /* synthetic */ void lambda$release$1() {
        Out out = this.mOutput;
        if (out != null) {
            Iterator<SurfaceEdge> it = out.values().iterator();
            while (it.hasNext()) {
                it.next().close();
            }
        }
    }

    private void sendSurfaceOutputs(@NonNull final CameraInternal cameraInternal, @NonNull final CameraInternal cameraInternal2, @NonNull final SurfaceEdge surfaceEdge, @NonNull final SurfaceEdge surfaceEdge2, @NonNull Map<DualOutConfig, SurfaceEdge> map) {
        for (final Map.Entry<DualOutConfig, SurfaceEdge> entry : map.entrySet()) {
            lambda$sendSurfaceOutputs$0(cameraInternal, cameraInternal2, surfaceEdge, surfaceEdge2, entry);
            entry.getValue().addOnInvalidatedListener(new Runnable() { // from class: 뒘딃뎠땜둡뎸땱땄든땣듐둣둣됫땅됩뎹땥든땃돷딽됫될딠뎽땝돼땭뎽땡됩됐둘뒨듨듬땍됫땝땣땸딌땔듨뒻땲뎨땔돸뒼돼둥둑딨땟땩되돼돷딻땦땦뒝듽됨딃든듐딸될딌땤딎땋듨됩됩뎬드딁됫땅땸됫뒹돰듨됩뒾딜땱됨땋땜땨딻됴땸뒋딠땔땟두듽돳딌뒐듌됨돨딞돛둬딟땤땨뒬뒈돸뒼듻땱뎡둠땵듔돳땡뒉
                @Override // java.lang.Runnable
                public final void run() {
                    Map.Entry entry2 = entry;
                    DualSurfaceProcessorNode.this.lambda$sendSurfaceOutputs$0(cameraInternal, cameraInternal2, surfaceEdge, surfaceEdge2, entry2);
                }
            });
        }
    }

    private void sendSurfaceRequest(@NonNull CameraInternal cameraInternal, @NonNull SurfaceEdge surfaceEdge, @NonNull Map<DualOutConfig, SurfaceEdge> map, boolean z) {
        try {
            this.mSurfaceProcessor.onInputSurface(surfaceEdge.createSurfaceRequest(cameraInternal, z));
        } catch (ProcessingException e) {
            Logger.e(TAG, "Failed to send SurfaceRequest to SurfaceProcessor.", e);
        }
    }

    @NonNull
    private SurfaceEdge transformSingleOutput(@NonNull SurfaceEdge surfaceEdge, @NonNull OutConfig outConfig) {
        boolean z;
        Rect cropRect = outConfig.getCropRect();
        int rotationDegrees = outConfig.getRotationDegrees();
        boolean isMirroring = outConfig.isMirroring();
        Matrix matrix = new Matrix();
        Preconditions.checkArgument(TransformUtils.isAspectRatioMatchingWithRoundingError(TransformUtils.getRotatedSize(cropRect, rotationDegrees), outConfig.getSize()));
        Rect sizeToRect = TransformUtils.sizeToRect(outConfig.getSize());
        StreamSpec build = surfaceEdge.getStreamSpec().toBuilder().setResolution(outConfig.getSize()).build();
        int targets = outConfig.getTargets();
        int format = outConfig.getFormat();
        int rotationDegrees2 = surfaceEdge.getRotationDegrees() - rotationDegrees;
        if (surfaceEdge.isMirroring() != isMirroring) {
            z = true;
        } else {
            z = false;
        }
        return new SurfaceEdge(targets, format, build, matrix, false, sizeToRect, rotationDegrees2, -1, z);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ void m332xfbe0c504(DualSurfaceProcessorNode dualSurfaceProcessorNode) {
        dualSurfaceProcessorNode.lambda$release$1();
    }

    @Override // androidx.camera.core.processing.Node
    public void release() {
        this.mSurfaceProcessor.release();
        Threads.runOnMain(new RunnableC0450xb2a4f6ac(this, 16));
    }

    @Override // androidx.camera.core.processing.Node
    @NonNull
    @MainThread
    public Out transform(@NonNull In in) {
        Threads.checkMainThread();
        this.mInput = in;
        this.mOutput = new Out();
        SurfaceEdge primarySurfaceEdge = this.mInput.getPrimarySurfaceEdge();
        SurfaceEdge secondarySurfaceEdge = this.mInput.getSecondarySurfaceEdge();
        for (DualOutConfig dualOutConfig : this.mInput.getOutConfigs()) {
            this.mOutput.put(dualOutConfig, transformSingleOutput(primarySurfaceEdge, dualOutConfig.getPrimaryOutConfig()));
        }
        sendSurfaceRequest(this.mPrimaryCameraInternal, primarySurfaceEdge, this.mOutput, true);
        sendSurfaceRequest(this.mSecondaryCameraInternal, secondarySurfaceEdge, this.mOutput, false);
        sendSurfaceOutputs(this.mPrimaryCameraInternal, this.mSecondaryCameraInternal, primarySurfaceEdge, secondarySurfaceEdge, this.mOutput);
        return this.mOutput;
    }
}
