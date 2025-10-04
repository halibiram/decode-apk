package androidx.camera.core.processing;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.arch.core.util.Function;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageProcessingUtil;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.MatrixExt;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.util.GLUtils;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.google.auto.value.AutoValue;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C0379x9172909e;
import defpackage.C0509xe34f69ff;
import defpackage.C0662x5574934e;
import defpackage.C0665x1dcd12c5;
import defpackage.C0667x7214e6ee;
import defpackage.RunnableC0371x742e2fda;
import defpackage.RunnableC0374x3cd97916;
import defpackage.RunnableC0384x149e5abd;
import defpackage.RunnableC0450xb2a4f6ac;
import defpackage.RunnableC0661x9a884b8a;
import defpackage.RunnableC0663x76906518;
import defpackage.RunnableC0666x99196b8a;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Triple;

/* loaded from: classes.dex */
public class DefaultSurfaceProcessor implements SurfaceProcessorInternal, SurfaceTexture.OnFrameAvailableListener {
    private static final String TAG = "DefaultSurfaceProcessor";
    private final Executor mGlExecutor;

    @VisibleForTesting
    final Handler mGlHandler;
    private final OpenGlRenderer mGlRenderer;

    @VisibleForTesting
    final HandlerThread mGlThread;
    private int mInputSurfaceCount;
    private final AtomicBoolean mIsReleaseRequested;
    private boolean mIsReleased;
    final Map<SurfaceOutput, Surface> mOutputSurfaces;
    private final List<PendingSnapshot> mPendingSnapshots;
    private final float[] mSurfaceOutputMatrix;
    private final float[] mTextureMatrix;

    /* loaded from: classes.dex */
    public static class Factory {
        private static Function<DynamicRange, SurfaceProcessorInternal> sSupplier = new C0667x7214e6ee(0);

        private Factory() {
        }

        @NonNull
        public static SurfaceProcessorInternal newInstance(@NonNull DynamicRange dynamicRange) {
            return sSupplier.apply(dynamicRange);
        }

        @VisibleForTesting
        public static void setSupplier(@NonNull Function<DynamicRange, SurfaceProcessorInternal> function) {
            sSupplier = function;
        }
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class PendingSnapshot {
        @NonNull
        public static AutoValue_DefaultSurfaceProcessor_PendingSnapshot of(@IntRange(from = 0, to = 100) int i, @IntRange(from = 0, to = 359) int i2, @NonNull CallbackToFutureAdapter.Completer<Void> completer) {
            return new AutoValue_DefaultSurfaceProcessor_PendingSnapshot(i, i2, completer);
        }

        @NonNull
        public abstract CallbackToFutureAdapter.Completer<Void> getCompleter();

        @IntRange(from = 0, to = 100)
        public abstract int getJpegQuality();

        @IntRange(from = 0, to = 359)
        public abstract int getRotationDegrees();
    }

    public DefaultSurfaceProcessor(@NonNull DynamicRange dynamicRange) {
        this(dynamicRange, Collections.emptyMap());
    }

    @WorkerThread
    private void checkReadyToRelease() {
        if (this.mIsReleased && this.mInputSurfaceCount == 0) {
            Iterator<SurfaceOutput> it = this.mOutputSurfaces.keySet().iterator();
            while (it.hasNext()) {
                it.next().close();
            }
            Iterator<PendingSnapshot> it2 = this.mPendingSnapshots.iterator();
            while (it2.hasNext()) {
                it2.next().getCompleter().setException(new Exception("Failed to snapshot: DefaultSurfaceProcessor is released."));
            }
            this.mOutputSurfaces.clear();
            this.mGlRenderer.release();
            this.mGlThread.quit();
        }
    }

    private void executeSafely(@NonNull Runnable runnable) {
        executeSafely(runnable, new RunnableC0374x3cd97916(3));
    }

    private void failAllPendingSnapshots(@NonNull Throwable th) {
        Iterator<PendingSnapshot> it = this.mPendingSnapshots.iterator();
        while (it.hasNext()) {
            it.next().getCompleter().setException(th);
        }
        this.mPendingSnapshots.clear();
    }

    @NonNull
    private Bitmap getBitmap(@NonNull Size size, @NonNull float[] fArr, int i) {
        float[] fArr2 = (float[]) fArr.clone();
        MatrixExt.preRotate(fArr2, i, 0.5f, 0.5f);
        MatrixExt.preVerticalFlip(fArr2, 0.5f);
        return this.mGlRenderer.snapshot(TransformUtils.rotateSize(size, i), fArr2);
    }

    private void initGlRenderer(@NonNull DynamicRange dynamicRange, @NonNull Map<GLUtils.InputFormat, ShaderProvider> map) {
        try {
            CallbackToFutureAdapter.getFuture(new C0665x1dcd12c5(this, 0, dynamicRange, map)).get();
        } catch (InterruptedException | ExecutionException e) {
            e = e;
            if (e instanceof ExecutionException) {
                e = e.getCause();
            }
            if (e instanceof RuntimeException) {
                throw ((RuntimeException) e);
            }
            throw new IllegalStateException("Failed to create DefaultSurfaceProcessor", e);
        }
    }

    public static /* synthetic */ void lambda$executeSafely$11() {
    }

    public /* synthetic */ void lambda$executeSafely$12(Runnable runnable, Runnable runnable2) {
        if (this.mIsReleased) {
            runnable.run();
        } else {
            runnable2.run();
        }
    }

    public /* synthetic */ Object lambda$initGlRenderer$10(DynamicRange dynamicRange, Map map, CallbackToFutureAdapter.Completer completer) {
        executeSafely(new RunnableC0666x99196b8a(0, this, dynamicRange, map, completer));
        return "Init GlRenderer";
    }

    public /* synthetic */ void lambda$initGlRenderer$9(DynamicRange dynamicRange, Map map, CallbackToFutureAdapter.Completer completer) {
        try {
            this.mGlRenderer.init(dynamicRange, map);
            completer.set(null);
        } catch (RuntimeException e) {
            completer.setException(e);
        }
    }

    public /* synthetic */ void lambda$onInputSurface$0(SurfaceRequest surfaceRequest, SurfaceRequest.TransformationInfo transformationInfo) {
        GLUtils.InputFormat inputFormat = GLUtils.InputFormat.DEFAULT;
        if (surfaceRequest.getDynamicRange().is10BitHdr() && transformationInfo.hasCameraTransform()) {
            inputFormat = GLUtils.InputFormat.YUV;
        }
        this.mGlRenderer.setInputFormat(inputFormat);
    }

    public /* synthetic */ void lambda$onInputSurface$1(SurfaceRequest surfaceRequest, SurfaceTexture surfaceTexture, Surface surface, SurfaceRequest.Result result) {
        surfaceRequest.clearTransformationInfoListener();
        surfaceTexture.setOnFrameAvailableListener(null);
        surfaceTexture.release();
        surface.release();
        this.mInputSurfaceCount--;
        checkReadyToRelease();
    }

    public /* synthetic */ void lambda$onInputSurface$2(final SurfaceRequest surfaceRequest) {
        this.mInputSurfaceCount++;
        final SurfaceTexture surfaceTexture = new SurfaceTexture(this.mGlRenderer.getTextureName());
        surfaceTexture.setDefaultBufferSize(surfaceRequest.getResolution().getWidth(), surfaceRequest.getResolution().getHeight());
        final Surface surface = new Surface(surfaceTexture);
        surfaceRequest.setTransformationInfoListener(this.mGlExecutor, new C0379x9172909e(this, surfaceRequest, 5));
        surfaceRequest.provideSurface(surface, this.mGlExecutor, new Consumer() { // from class: 뒈땃딀뎰된돳땱뒛뎻드땨드딁듨됫땬땮딽뎰뒘둬뒹뎹둣땋땨딻땜땃디딄땅딅뎡돤둥땩뒝땱땬뎽땱둣땜뒛땠딃뒻도뎬듰땮땔딄뒹땐땫따된딎될뎸땀뒋뎡땯땋뒐돼듌뒨둡땵땩듟땱돨뒨됩땵땭땍두딃돤딨뎻땤뎠뒬뒻땭땅딐디땲돳딀뒬땹된된땣듐땋뎻땣두돵딀땄땵돨딤뒙디듽뒨됨둘땥뒉뎸뒻돠듌들딃딟될
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                SurfaceTexture surfaceTexture2 = surfaceTexture;
                DefaultSurfaceProcessor.this.lambda$onInputSurface$1(surfaceRequest, surfaceTexture2, surface, (SurfaceRequest.Result) obj);
            }
        });
        surfaceTexture.setOnFrameAvailableListener(this, this.mGlHandler);
    }

    public /* synthetic */ void lambda$onOutputSurface$3(SurfaceOutput surfaceOutput, SurfaceOutput.Event event) {
        surfaceOutput.close();
        Surface remove = this.mOutputSurfaces.remove(surfaceOutput);
        if (remove != null) {
            this.mGlRenderer.unregisterOutputSurface(remove);
        }
    }

    public /* synthetic */ void lambda$onOutputSurface$4(SurfaceOutput surfaceOutput) {
        Surface surface = surfaceOutput.getSurface(this.mGlExecutor, new C0509xe34f69ff(this, surfaceOutput, 1));
        this.mGlRenderer.registerOutputSurface(surface);
        this.mOutputSurfaces.put(surfaceOutput, surface);
    }

    public /* synthetic */ void lambda$release$5() {
        this.mIsReleased = true;
        checkReadyToRelease();
    }

    public /* synthetic */ void lambda$snapshot$6(PendingSnapshot pendingSnapshot) {
        this.mPendingSnapshots.add(pendingSnapshot);
    }

    public static /* synthetic */ void lambda$snapshot$7(CallbackToFutureAdapter.Completer completer) {
        completer.setException(new Exception("Failed to snapshot: OpenGLRenderer not ready."));
    }

    public /* synthetic */ Object lambda$snapshot$8(int i, int i2, CallbackToFutureAdapter.Completer completer) {
        executeSafely(new RunnableC0082xfbe0c504(this, PendingSnapshot.of(i, i2, completer), 0), new RunnableC0663x76906518(0, completer));
        return "DefaultSurfaceProcessor#snapshot";
    }

    @WorkerThread
    private void takeSnapshotAndDrawJpeg(@Nullable Triple<Surface, Size, float[]> triple) {
        if (this.mPendingSnapshots.isEmpty()) {
            return;
        }
        if (triple == null) {
            failAllPendingSnapshots(new Exception("Failed to snapshot: no JPEG Surface."));
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                Iterator<PendingSnapshot> it = this.mPendingSnapshots.iterator();
                Bitmap bitmap = null;
                byte[] bArr = null;
                int i = -1;
                int i2 = -1;
                while (it.hasNext()) {
                    PendingSnapshot next = it.next();
                    if (i != next.getRotationDegrees() || bitmap == null) {
                        i = next.getRotationDegrees();
                        if (bitmap != null) {
                            bitmap.recycle();
                        }
                        bitmap = getBitmap(triple.getSecond(), triple.getThird(), i);
                        i2 = -1;
                    }
                    if (i2 != next.getJpegQuality()) {
                        byteArrayOutputStream.reset();
                        i2 = next.getJpegQuality();
                        bitmap.compress(Bitmap.CompressFormat.JPEG, i2, byteArrayOutputStream);
                        bArr = byteArrayOutputStream.toByteArray();
                    }
                    Surface first = triple.getFirst();
                    Objects.requireNonNull(bArr);
                    ImageProcessingUtil.writeJpegBytesToSurface(first, bArr);
                    next.getCompleter().set(null);
                    it.remove();
                }
                byteArrayOutputStream.close();
            } finally {
            }
        } catch (IOException e) {
            failAllPendingSnapshots(e);
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(@NonNull SurfaceTexture surfaceTexture) {
        boolean z;
        if (this.mIsReleaseRequested.get()) {
            return;
        }
        surfaceTexture.updateTexImage();
        surfaceTexture.getTransformMatrix(this.mTextureMatrix);
        Triple<Surface, Size, float[]> triple = null;
        for (Map.Entry<SurfaceOutput, Surface> entry : this.mOutputSurfaces.entrySet()) {
            Surface value = entry.getValue();
            SurfaceOutput key = entry.getKey();
            key.updateTransformMatrix(this.mSurfaceOutputMatrix, this.mTextureMatrix);
            if (key.getFormat() == 34) {
                try {
                    this.mGlRenderer.render(surfaceTexture.getTimestamp(), this.mSurfaceOutputMatrix, value);
                } catch (RuntimeException e) {
                    Logger.e(TAG, "Failed to render with OpenGL.", e);
                }
            } else {
                boolean z2 = false;
                if (key.getFormat() == 256) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkState(z, "Unsupported format: " + key.getFormat());
                if (triple == null) {
                    z2 = true;
                }
                Preconditions.checkState(z2, "Only one JPEG output is supported.");
                triple = new Triple<>(value, key.getSize(), (float[]) this.mSurfaceOutputMatrix.clone());
            }
        }
        try {
            takeSnapshotAndDrawJpeg(triple);
        } catch (RuntimeException e2) {
            failAllPendingSnapshots(e2);
        }
    }

    @Override // androidx.camera.core.SurfaceProcessor
    public void onInputSurface(@NonNull SurfaceRequest surfaceRequest) {
        if (this.mIsReleaseRequested.get()) {
            surfaceRequest.willNotProvideSurface();
            return;
        }
        RunnableC0371x742e2fda runnableC0371x742e2fda = new RunnableC0371x742e2fda(this, surfaceRequest, 17);
        Objects.requireNonNull(surfaceRequest);
        executeSafely(runnableC0371x742e2fda, new RunnableC0661x9a884b8a(surfaceRequest, 0));
    }

    @Override // androidx.camera.core.SurfaceProcessor
    public void onOutputSurface(@NonNull SurfaceOutput surfaceOutput) {
        if (this.mIsReleaseRequested.get()) {
            surfaceOutput.close();
            return;
        }
        RunnableC0371x742e2fda runnableC0371x742e2fda = new RunnableC0371x742e2fda(this, surfaceOutput, 18);
        Objects.requireNonNull(surfaceOutput);
        executeSafely(runnableC0371x742e2fda, new RunnableC0450xb2a4f6ac(surfaceOutput, 13));
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public void release() {
        if (this.mIsReleaseRequested.getAndSet(true)) {
            return;
        }
        executeSafely(new RunnableC0450xb2a4f6ac(this, 12));
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    @NonNull
    public ListenableFuture<Void> snapshot(@IntRange(from = 0, to = 100) int i, @IntRange(from = 0, to = 359) int i2) {
        return Futures.nonCancellationPropagating(CallbackToFutureAdapter.getFuture(new C0662x5574934e(this, i, i2)));
    }

    public DefaultSurfaceProcessor(@NonNull DynamicRange dynamicRange, @NonNull Map<GLUtils.InputFormat, ShaderProvider> map) {
        this.mIsReleaseRequested = new AtomicBoolean(false);
        this.mTextureMatrix = new float[16];
        this.mSurfaceOutputMatrix = new float[16];
        this.mOutputSurfaces = new LinkedHashMap();
        this.mInputSurfaceCount = 0;
        this.mIsReleased = false;
        this.mPendingSnapshots = new ArrayList();
        HandlerThread handlerThread = new HandlerThread("GL Thread");
        this.mGlThread = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.mGlHandler = handler;
        this.mGlExecutor = CameraXExecutors.newHandlerExecutor(handler);
        this.mGlRenderer = new OpenGlRenderer();
        try {
            initGlRenderer(dynamicRange, map);
        } catch (RuntimeException e) {
            release();
            throw e;
        }
    }

    private void executeSafely(@NonNull Runnable runnable, @NonNull Runnable runnable2) {
        try {
            this.mGlExecutor.execute(new RunnableC0384x149e5abd(this, 6, runnable2, runnable));
        } catch (RejectedExecutionException e) {
            Logger.w(TAG, "Unable to executor runnable", e);
            runnable2.run();
        }
    }
}
