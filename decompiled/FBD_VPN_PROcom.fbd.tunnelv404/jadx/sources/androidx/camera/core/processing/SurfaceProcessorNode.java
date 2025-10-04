package androidx.camera.core.processing;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.Logger;
import androidx.camera.core.ProcessingException;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.util.OutConfig;
import androidx.core.util.Preconditions;
import com.google.auto.value.AutoValue;
import defpackage.C1078xcc023a4b;
import defpackage.RunnableC0384x149e5abd;
import defpackage.RunnableC1044x8c43c726;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public class SurfaceProcessorNode implements Node<In, Out> {
    private static final String TAG = "SurfaceProcessorNode";

    @NonNull
    final CameraInternal mCameraInternal;

    @Nullable
    private In mInput;

    @Nullable
    private Out mOutput;

    @NonNull
    final SurfaceProcessorInternal mSurfaceProcessor;

    /* renamed from: androidx.camera.core.processing.SurfaceProcessorNode$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FutureCallback<SurfaceOutput> {
        final /* synthetic */ SurfaceEdge val$outputEdge;

        public AnonymousClass1(SurfaceEdge surfaceEdge) {
            r2 = surfaceEdge;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            if (r2.getTargets() == 2 && (th instanceof CancellationException)) {
                Logger.d(SurfaceProcessorNode.TAG, "Downstream VideoCapture failed to provide Surface.");
                return;
            }
            Logger.w(SurfaceProcessorNode.TAG, "Downstream node failed to provide Surface. Target: " + TargetUtils.getHumanReadableName(r2.getTargets()), th);
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable SurfaceOutput surfaceOutput) {
            Preconditions.checkNotNull(surfaceOutput);
            try {
                SurfaceProcessorNode.this.mSurfaceProcessor.onOutputSurface(surfaceOutput);
            } catch (ProcessingException e) {
                Logger.e(SurfaceProcessorNode.TAG, "Failed to send SurfaceOutput to SurfaceProcessor.", e);
            }
        }
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class In {
        @NonNull
        public static In of(@NonNull SurfaceEdge surfaceEdge, @NonNull List<OutConfig> list) {
            return new AutoValue_SurfaceProcessorNode_In(surfaceEdge, list);
        }

        @NonNull
        public abstract List<OutConfig> getOutConfigs();

        @NonNull
        public abstract SurfaceEdge getSurfaceEdge();
    }

    /* loaded from: classes.dex */
    public static class Out extends HashMap<OutConfig, SurfaceEdge> {
    }

    public SurfaceProcessorNode(@NonNull CameraInternal cameraInternal, @NonNull SurfaceProcessorInternal surfaceProcessorInternal) {
        this.mCameraInternal = cameraInternal;
        this.mSurfaceProcessor = surfaceProcessorInternal;
    }

    /* renamed from: createAndSendSurfaceOutput */
    public void lambda$sendSurfaceOutputs$0(@NonNull SurfaceEdge surfaceEdge, Map.Entry<OutConfig, SurfaceEdge> entry) {
        CameraInternal cameraInternal;
        SurfaceEdge value = entry.getValue();
        Size resolution = surfaceEdge.getStreamSpec().getResolution();
        Rect cropRect = entry.getKey().getCropRect();
        if (surfaceEdge.hasCameraTransform()) {
            cameraInternal = this.mCameraInternal;
        } else {
            cameraInternal = null;
        }
        Futures.addCallback(value.createSurfaceOutputFuture(entry.getKey().getFormat(), SurfaceOutput.CameraInputInfo.of(resolution, cropRect, cameraInternal, entry.getKey().getRotationDegrees(), entry.getKey().isMirroring()), null), new FutureCallback<SurfaceOutput>() { // from class: androidx.camera.core.processing.SurfaceProcessorNode.1
            final /* synthetic */ SurfaceEdge val$outputEdge;

            public AnonymousClass1(SurfaceEdge value2) {
                r2 = value2;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                if (r2.getTargets() == 2 && (th instanceof CancellationException)) {
                    Logger.d(SurfaceProcessorNode.TAG, "Downstream VideoCapture failed to provide Surface.");
                    return;
                }
                Logger.w(SurfaceProcessorNode.TAG, "Downstream node failed to provide Surface. Target: " + TargetUtils.getHumanReadableName(r2.getTargets()), th);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable SurfaceOutput surfaceOutput) {
                Preconditions.checkNotNull(surfaceOutput);
                try {
                    SurfaceProcessorNode.this.mSurfaceProcessor.onOutputSurface(surfaceOutput);
                } catch (ProcessingException e) {
                    Logger.e(SurfaceProcessorNode.TAG, "Failed to send SurfaceOutput to SurfaceProcessor.", e);
                }
            }
        }, CameraXExecutors.mainThreadExecutor());
    }

    public /* synthetic */ void lambda$release$2() {
        Out out = this.mOutput;
        if (out != null) {
            Iterator<SurfaceEdge> it = out.values().iterator();
            while (it.hasNext()) {
                it.next().close();
            }
        }
    }

    public static /* synthetic */ void lambda$setUpRotationUpdates$1(Map map, SurfaceRequest.TransformationInfo transformationInfo) {
        for (Map.Entry entry : map.entrySet()) {
            int rotationDegrees = transformationInfo.getRotationDegrees() - ((OutConfig) entry.getKey()).getRotationDegrees();
            if (((OutConfig) entry.getKey()).isMirroring()) {
                rotationDegrees = -rotationDegrees;
            }
            ((SurfaceEdge) entry.getValue()).updateTransformation(TransformUtils.within360(rotationDegrees), -1);
        }
    }

    private void sendSurfaceOutputs(@NonNull SurfaceEdge surfaceEdge, @NonNull Map<OutConfig, SurfaceEdge> map) {
        for (Map.Entry<OutConfig, SurfaceEdge> entry : map.entrySet()) {
            lambda$sendSurfaceOutputs$0(surfaceEdge, entry);
            entry.getValue().addOnInvalidatedListener(new RunnableC0384x149e5abd(this, 15, surfaceEdge, entry));
        }
    }

    private void sendSurfaceRequest(@NonNull SurfaceEdge surfaceEdge) {
        try {
            this.mSurfaceProcessor.onInputSurface(surfaceEdge.createSurfaceRequest(this.mCameraInternal));
        } catch (ProcessingException e) {
            Logger.e(TAG, "Failed to send SurfaceRequest to SurfaceProcessor.", e);
        }
    }

    @NonNull
    private SurfaceEdge transformSingleOutput(@NonNull SurfaceEdge surfaceEdge, @NonNull OutConfig outConfig) {
        Rect sizeToRect;
        boolean z;
        Rect cropRect = outConfig.getCropRect();
        int rotationDegrees = outConfig.getRotationDegrees();
        boolean isMirroring = outConfig.isMirroring();
        Matrix matrix = new Matrix(surfaceEdge.getSensorToBufferTransform());
        Matrix rectToRect = TransformUtils.getRectToRect(new RectF(cropRect), TransformUtils.sizeToRectF(outConfig.getSize()), rotationDegrees, isMirroring);
        matrix.postConcat(rectToRect);
        Preconditions.checkArgument(TransformUtils.isAspectRatioMatchingWithRoundingError(TransformUtils.getRotatedSize(cropRect, rotationDegrees), outConfig.getSize()));
        if (outConfig.shouldRespectInputCropRect()) {
            Preconditions.checkArgument(outConfig.getCropRect().contains(surfaceEdge.getCropRect()), "Output crop rect " + outConfig.getCropRect() + " must contain input crop rect " + surfaceEdge.getCropRect());
            sizeToRect = new Rect();
            RectF rectF = new RectF(surfaceEdge.getCropRect());
            rectToRect.mapRect(rectF);
            rectF.round(sizeToRect);
        } else {
            sizeToRect = TransformUtils.sizeToRect(outConfig.getSize());
        }
        Rect rect = sizeToRect;
        StreamSpec build = surfaceEdge.getStreamSpec().toBuilder().setResolution(outConfig.getSize()).build();
        int targets = outConfig.getTargets();
        int format = outConfig.getFormat();
        int rotationDegrees2 = surfaceEdge.getRotationDegrees() - rotationDegrees;
        if (surfaceEdge.isMirroring() != isMirroring) {
            z = true;
        } else {
            z = false;
        }
        return new SurfaceEdge(targets, format, build, matrix, false, rect, rotationDegrees2, -1, z);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ void m318xfbe0c504(SurfaceProcessorNode surfaceProcessorNode, SurfaceEdge surfaceEdge, Map.Entry entry) {
        surfaceProcessorNode.lambda$sendSurfaceOutputs$0(surfaceEdge, entry);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static /* synthetic */ void m320x1378447b(SurfaceProcessorNode surfaceProcessorNode) {
        surfaceProcessorNode.lambda$release$2();
    }

    @NonNull
    public SurfaceProcessorInternal getSurfaceProcessor() {
        return this.mSurfaceProcessor;
    }

    @Override // androidx.camera.core.processing.Node
    public void release() {
        this.mSurfaceProcessor.release();
        Threads.runOnMain(new RunnableC1044x8c43c726(this, 9));
    }

    public void setUpRotationUpdates(@NonNull SurfaceEdge surfaceEdge, @NonNull Map<OutConfig, SurfaceEdge> map) {
        surfaceEdge.addTransformationUpdateListener(new C1078xcc023a4b(map, 2));
    }

    @Override // androidx.camera.core.processing.Node
    @NonNull
    @MainThread
    public Out transform(@NonNull In in) {
        Threads.checkMainThread();
        this.mInput = in;
        this.mOutput = new Out();
        SurfaceEdge surfaceEdge = in.getSurfaceEdge();
        for (OutConfig outConfig : in.getOutConfigs()) {
            this.mOutput.put(outConfig, transformSingleOutput(surfaceEdge, outConfig));
        }
        sendSurfaceRequest(surfaceEdge);
        sendSurfaceOutputs(surfaceEdge, this.mOutput);
        setUpRotationUpdates(surfaceEdge, this.mOutput);
        return this.mOutput;
    }
}
