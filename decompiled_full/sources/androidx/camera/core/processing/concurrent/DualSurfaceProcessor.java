package androidx.camera.core.processing.concurrent;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.LayoutSettings;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.processing.ShaderProvider;
import androidx.camera.core.processing.SurfaceProcessorInternal;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.core.processing.util.GLUtils;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC1215x3cd429f2;
import defpackage.C0509xe34f69ff;
import defpackage.C0665x1dcd12c5;
import defpackage.RunnableC0371x742e2fda;
import defpackage.RunnableC0374x3cd97916;
import defpackage.RunnableC0384x149e5abd;
import defpackage.RunnableC0450xb2a4f6ac;
import defpackage.RunnableC0661x9a884b8a;
import defpackage.RunnableC0666x99196b8a;
import j$.util.Objects;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function3;

/* loaded from: classes.dex */
public class DualSurfaceProcessor implements SurfaceProcessorInternal, SurfaceTexture.OnFrameAvailableListener {
    private static final String TAG = "DualSurfaceProcessor";
    private final Executor mGlExecutor;

    @VisibleForTesting
    final Handler mGlHandler;
    private final DualOpenGlRenderer mGlRenderer;

    @VisibleForTesting
    final HandlerThread mGlThread;
    private int mInputSurfaceCount;
    private final AtomicBoolean mIsReleaseRequested;
    private boolean mIsReleased;
    final Map<SurfaceOutput, Surface> mOutputSurfaces;

    @Nullable
    private SurfaceTexture mPrimarySurfaceTexture;

    @Nullable
    private SurfaceTexture mSecondarySurfaceTexture;

    /* loaded from: classes.dex */
    public static class Factory {
        private static Function3<DynamicRange, LayoutSettings, LayoutSettings, SurfaceProcessorInternal> sSupplier = new Object();

        private Factory() {
        }

        @NonNull
        public static SurfaceProcessorInternal newInstance(@NonNull DynamicRange dynamicRange, @NonNull LayoutSettings layoutSettings, @NonNull LayoutSettings layoutSettings2) {
            return sSupplier.invoke(dynamicRange, layoutSettings, layoutSettings2);
        }

        @VisibleForTesting
        public static void setSupplier(@NonNull Function3<DynamicRange, LayoutSettings, LayoutSettings, SurfaceProcessorInternal> function3) {
            sSupplier = function3;
        }
    }

    public DualSurfaceProcessor(@NonNull DynamicRange dynamicRange, @NonNull LayoutSettings layoutSettings, @NonNull LayoutSettings layoutSettings2) {
        this(dynamicRange, Collections.emptyMap(), layoutSettings, layoutSettings2);
    }

    @WorkerThread
    private void checkReadyToRelease() {
        if (this.mIsReleased && this.mInputSurfaceCount == 0) {
            Iterator<SurfaceOutput> it = this.mOutputSurfaces.keySet().iterator();
            while (it.hasNext()) {
                it.next().close();
            }
            this.mOutputSurfaces.clear();
            this.mGlRenderer.release();
            this.mGlThread.quit();
        }
    }

    private void executeSafely(@NonNull Runnable runnable) {
        executeSafely(runnable, new RunnableC0374x3cd97916(4));
    }

    private void initGlRenderer(@NonNull DynamicRange dynamicRange, @NonNull Map<GLUtils.InputFormat, ShaderProvider> map) {
        try {
            CallbackToFutureAdapter.getFuture(new C0665x1dcd12c5(this, 1, dynamicRange, map)).get();
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

    public static /* synthetic */ void lambda$executeSafely$7() {
    }

    public /* synthetic */ void lambda$executeSafely$8(Runnable runnable, Runnable runnable2) {
        if (this.mIsReleased) {
            runnable.run();
        } else {
            runnable2.run();
        }
    }

    public /* synthetic */ void lambda$initGlRenderer$5(DynamicRange dynamicRange, Map map, CallbackToFutureAdapter.Completer completer) {
        try {
            this.mGlRenderer.init(dynamicRange, map);
            completer.set(null);
        } catch (RuntimeException e) {
            completer.setException(e);
        }
    }

    public /* synthetic */ Object lambda$initGlRenderer$6(DynamicRange dynamicRange, Map map, CallbackToFutureAdapter.Completer completer) {
        executeSafely(new RunnableC0666x99196b8a(1, this, dynamicRange, map, completer));
        return "Init GlRenderer";
    }

    public /* synthetic */ void lambda$onInputSurface$0(SurfaceTexture surfaceTexture, Surface surface, SurfaceRequest.Result result) {
        surfaceTexture.setOnFrameAvailableListener(null);
        surfaceTexture.release();
        surface.release();
        this.mInputSurfaceCount--;
        checkReadyToRelease();
    }

    public /* synthetic */ void lambda$onInputSurface$1(SurfaceRequest surfaceRequest) {
        this.mInputSurfaceCount++;
        final SurfaceTexture surfaceTexture = new SurfaceTexture(this.mGlRenderer.getTextureName(surfaceRequest.isPrimary()));
        surfaceTexture.setDefaultBufferSize(surfaceRequest.getResolution().getWidth(), surfaceRequest.getResolution().getHeight());
        final Surface surface = new Surface(surfaceTexture);
        surfaceRequest.provideSurface(surface, this.mGlExecutor, new Consumer() { // from class: 뒘뒷뎻땐둑뒘뎽땤땄뒈뎹뒙땬됩뎸땦두딃딁땧둥뎹돵땵딐들둣땃따땻될된땨땄딃들땧뒘됴땄됨땧뎡둡듌땸돵돠땸둘딸됩둔됴땯뒛뎽뎰뒉땔될땄듬딅딄땰듐땵든돶뒈땭되땐땯돛뎬들땬뎰뎠딎듔듌땋뒐딠뒐듻땟딄딄둑돝돤돶뒬디뒝딌뒋도됫둠딝득됫돰돴듬될땲뒙딠딝뒉딄됨땹땭뒹돨딐듌땜듻딎돴뎠돴
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                SurfaceTexture surfaceTexture2 = surfaceTexture;
                DualSurfaceProcessor.this.lambda$onInputSurface$0(surfaceTexture2, surface, (SurfaceRequest.Result) obj);
            }
        });
        if (surfaceRequest.isPrimary()) {
            this.mPrimarySurfaceTexture = surfaceTexture;
        } else {
            this.mSecondarySurfaceTexture = surfaceTexture;
            surfaceTexture.setOnFrameAvailableListener(this, this.mGlHandler);
        }
    }

    public /* synthetic */ void lambda$onOutputSurface$2(SurfaceOutput surfaceOutput, SurfaceOutput.Event event) {
        surfaceOutput.close();
        Surface remove = this.mOutputSurfaces.remove(surfaceOutput);
        if (remove != null) {
            this.mGlRenderer.unregisterOutputSurface(remove);
        }
    }

    public /* synthetic */ void lambda$onOutputSurface$3(SurfaceOutput surfaceOutput) {
        Surface surface = surfaceOutput.getSurface(this.mGlExecutor, new C0509xe34f69ff(this, surfaceOutput, 2));
        this.mGlRenderer.registerOutputSurface(surface);
        this.mOutputSurfaces.put(surfaceOutput, surface);
    }

    public /* synthetic */ void lambda$release$4() {
        this.mIsReleased = true;
        checkReadyToRelease();
    }

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤 */
    public static /* synthetic */ void m328x9e171bf9(DualSurfaceProcessor dualSurfaceProcessor, SurfaceOutput surfaceOutput) {
        dualSurfaceProcessor.lambda$onOutputSurface$3(surfaceOutput);
    }

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋 */
    public static /* synthetic */ void m329x34271fae(DualSurfaceProcessor dualSurfaceProcessor, SurfaceRequest surfaceRequest) {
        dualSurfaceProcessor.lambda$onInputSurface$1(surfaceRequest);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2;
        if (!this.mIsReleaseRequested.get() && (surfaceTexture2 = this.mPrimarySurfaceTexture) != null && this.mSecondarySurfaceTexture != null) {
            surfaceTexture2.updateTexImage();
            this.mSecondarySurfaceTexture.updateTexImage();
            for (Map.Entry<SurfaceOutput, Surface> entry : this.mOutputSurfaces.entrySet()) {
                Surface value = entry.getValue();
                SurfaceOutput key = entry.getKey();
                if (key.getFormat() == 34) {
                    try {
                        this.mGlRenderer.render(surfaceTexture.getTimestamp(), value, key, this.mPrimarySurfaceTexture, this.mSecondarySurfaceTexture);
                    } catch (RuntimeException e) {
                        Logger.e(TAG, "Failed to render with OpenGL.", e);
                    }
                }
            }
        }
    }

    @Override // androidx.camera.core.SurfaceProcessor
    public void onInputSurface(@NonNull SurfaceRequest surfaceRequest) {
        if (this.mIsReleaseRequested.get()) {
            surfaceRequest.willNotProvideSurface();
            return;
        }
        RunnableC0371x742e2fda runnableC0371x742e2fda = new RunnableC0371x742e2fda(this, surfaceRequest, 21);
        Objects.requireNonNull(surfaceRequest);
        executeSafely(runnableC0371x742e2fda, new RunnableC0661x9a884b8a(surfaceRequest, 0));
    }

    @Override // androidx.camera.core.SurfaceProcessor
    public void onOutputSurface(@NonNull SurfaceOutput surfaceOutput) {
        if (this.mIsReleaseRequested.get()) {
            surfaceOutput.close();
            return;
        }
        RunnableC0371x742e2fda runnableC0371x742e2fda = new RunnableC0371x742e2fda(this, surfaceOutput, 22);
        Objects.requireNonNull(surfaceOutput);
        executeSafely(runnableC0371x742e2fda, new RunnableC0450xb2a4f6ac(surfaceOutput, 13));
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public void release() {
        if (this.mIsReleaseRequested.getAndSet(true)) {
            return;
        }
        executeSafely(new RunnableC0450xb2a4f6ac(this, 15));
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public final /* synthetic */ ListenableFuture snapshot(int i, int i2) {
        return AbstractC1215x3cd429f2.m3960xfbe0c504(this, i, i2);
    }

    public DualSurfaceProcessor(@NonNull DynamicRange dynamicRange, @NonNull Map<GLUtils.InputFormat, ShaderProvider> map, @NonNull LayoutSettings layoutSettings, @NonNull LayoutSettings layoutSettings2) {
        this.mInputSurfaceCount = 0;
        this.mIsReleased = false;
        this.mIsReleaseRequested = new AtomicBoolean(false);
        this.mOutputSurfaces = new LinkedHashMap();
        HandlerThread handlerThread = new HandlerThread("GL Thread");
        this.mGlThread = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.mGlHandler = handler;
        this.mGlExecutor = CameraXExecutors.newHandlerExecutor(handler);
        this.mGlRenderer = new DualOpenGlRenderer(layoutSettings, layoutSettings2);
        try {
            initGlRenderer(dynamicRange, map);
        } catch (RuntimeException e) {
            release();
            throw e;
        }
    }

    private void executeSafely(@NonNull Runnable runnable, @NonNull Runnable runnable2) {
        try {
            this.mGlExecutor.execute(new RunnableC0384x149e5abd(this, 7, runnable2, runnable));
        } catch (RejectedExecutionException e) {
            Logger.w(TAG, "Unable to executor runnable", e);
            runnable2.run();
        }
    }
}
