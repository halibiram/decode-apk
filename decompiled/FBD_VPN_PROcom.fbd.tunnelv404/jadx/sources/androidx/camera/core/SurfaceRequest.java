package androidx.camera.core;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.google.auto.value.AutoValue;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0362x4440ab85;
import defpackage.C0379x9172909e;
import defpackage.RunnableC0661x9a884b8a;
import defpackage.RunnableC1216xc3cddcce;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class SurfaceRequest {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final Range<Integer> FRAME_RATE_RANGE_UNSPECIFIED = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
    private final CameraInternal mCamera;

    @NonNull
    private final DynamicRange mDynamicRange;
    private final Range<Integer> mExpectedFrameRate;
    private final DeferrableSurface mInternalDeferrableSurface;
    private final boolean mIsPrimary;
    private final Object mLock;
    private final CallbackToFutureAdapter.Completer<Void> mRequestCancellationCompleter;
    private final Size mResolution;
    private final ListenableFuture<Void> mSessionStatusFuture;
    private final CallbackToFutureAdapter.Completer<Surface> mSurfaceCompleter;
    final ListenableFuture<Surface> mSurfaceFuture;

    @NonNull
    private final CallbackToFutureAdapter.Completer<Void> mSurfaceRecreationCompleter;

    @Nullable
    @GuardedBy("mLock")
    private TransformationInfo mTransformationInfo;

    @Nullable
    @GuardedBy("mLock")
    private Executor mTransformationInfoExecutor;

    @Nullable
    @GuardedBy("mLock")
    private TransformationInfoListener mTransformationInfoListener;

    /* renamed from: androidx.camera.core.SurfaceRequest$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FutureCallback<Void> {
        final /* synthetic */ CallbackToFutureAdapter.Completer val$requestCancellationCompleter;
        final /* synthetic */ ListenableFuture val$requestCancellationFuture;

        public AnonymousClass1(CallbackToFutureAdapter.Completer completer, ListenableFuture listenableFuture) {
            r2 = completer;
            r3 = listenableFuture;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            if (th instanceof RequestCancelledException) {
                Preconditions.checkState(r3.cancel(false));
            } else {
                Preconditions.checkState(r2.set(null));
            }
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable Void r2) {
            Preconditions.checkState(r2.set(null));
        }
    }

    /* renamed from: androidx.camera.core.SurfaceRequest$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends DeferrableSurface {
        public AnonymousClass2(Size size, int i) {
            super(size, i);
        }

        @Override // androidx.camera.core.impl.DeferrableSurface
        @NonNull
        public ListenableFuture<Surface> provideSurface() {
            return SurfaceRequest.this.mSurfaceFuture;
        }
    }

    /* renamed from: androidx.camera.core.SurfaceRequest$3 */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements FutureCallback<Surface> {
        final /* synthetic */ CallbackToFutureAdapter.Completer val$sessionStatusCompleter;
        final /* synthetic */ String val$surfaceRequestString;
        final /* synthetic */ ListenableFuture val$terminationFuture;

        public AnonymousClass3(ListenableFuture listenableFuture, CallbackToFutureAdapter.Completer completer, String str) {
            r2 = listenableFuture;
            r3 = completer;
            r4 = str;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            if (th instanceof CancellationException) {
                Preconditions.checkState(r3.setException(new RequestCancelledException(AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), r4, " cancelled."), th)));
            } else {
                r3.set(null);
            }
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable Surface surface) {
            Futures.propagate(r2, r3);
        }
    }

    /* renamed from: androidx.camera.core.SurfaceRequest$4 */
    /* loaded from: classes.dex */
    public class AnonymousClass4 implements FutureCallback<Void> {
        final /* synthetic */ Consumer val$resultListener;
        final /* synthetic */ Surface val$surface;

        public AnonymousClass4(Consumer consumer, Surface surface) {
            r2 = consumer;
            r3 = surface;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            Preconditions.checkState(th instanceof RequestCancelledException, "Camera surface session should only fail with request cancellation. Instead failed due to:\n" + th);
            r2.accept(Result.of(1, r3));
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable Void r3) {
            r2.accept(Result.of(0, r3));
        }
    }

    /* renamed from: androidx.camera.core.SurfaceRequest$5 */
    /* loaded from: classes.dex */
    public class AnonymousClass5 implements FutureCallback<Void> {
        final /* synthetic */ Runnable val$runnable;

        public AnonymousClass5(Runnable runnable) {
            r2 = runnable;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable Void r1) {
            r2.run();
        }
    }

    /* loaded from: classes.dex */
    public static final class RequestCancelledException extends RuntimeException {
        public RequestCancelledException(@NonNull String str, @NonNull Throwable th) {
            super(str, th);
        }
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class Result {
        public static final int RESULT_INVALID_SURFACE = 2;
        public static final int RESULT_REQUEST_CANCELLED = 1;
        public static final int RESULT_SURFACE_ALREADY_PROVIDED = 3;
        public static final int RESULT_SURFACE_USED_SUCCESSFULLY = 0;
        public static final int RESULT_WILL_NOT_PROVIDE_SURFACE = 4;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes.dex */
        public @interface ResultCode {
        }

        @NonNull
        public static Result of(int i, @NonNull Surface surface) {
            return new AutoValue_SurfaceRequest_Result(i, surface);
        }

        public abstract int getResultCode();

        @NonNull
        public abstract Surface getSurface();
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class TransformationInfo {
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static TransformationInfo of(@NonNull Rect rect, int i, int i2, boolean z, @NonNull Matrix matrix, boolean z2) {
            return new AutoValue_SurfaceRequest_TransformationInfo(rect, i, i2, z, matrix, z2);
        }

        @NonNull
        public abstract Rect getCropRect();

        public abstract int getRotationDegrees();

        @NonNull
        public abstract Matrix getSensorToBufferTransform();

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public abstract int getTargetRotation();

        public abstract boolean hasCameraTransform();

        public abstract boolean isMirroring();
    }

    /* loaded from: classes.dex */
    public interface TransformationInfoListener {
        void onTransformationInfoUpdate(@NonNull TransformationInfo transformationInfo);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public SurfaceRequest(@NonNull Size size, @NonNull CameraInternal cameraInternal, @NonNull Runnable runnable) {
        this(size, cameraInternal, DynamicRange.SDR, FRAME_RATE_RANGE_UNSPECIFIED, runnable);
    }

    private CallbackToFutureAdapter.Completer<Void> initialSurfaceRecreationCompleter(@NonNull Executor executor, @NonNull Runnable runnable) {
        AtomicReference atomicReference = new AtomicReference(null);
        Futures.addCallback(CallbackToFutureAdapter.getFuture(new C0379x9172909e(this, atomicReference, 8)), new FutureCallback<Void>() { // from class: androidx.camera.core.SurfaceRequest.5
            final /* synthetic */ Runnable val$runnable;

            public AnonymousClass5(Runnable runnable2) {
                r2 = runnable2;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Void r1) {
                r2.run();
            }
        }, executor);
        return (CallbackToFutureAdapter.Completer) Preconditions.checkNotNull((CallbackToFutureAdapter.Completer) atomicReference.get());
    }

    public /* synthetic */ Object lambda$initialSurfaceRecreationCompleter$6(AtomicReference atomicReference, CallbackToFutureAdapter.Completer completer) {
        atomicReference.set(completer);
        return "SurfaceRequest-surface-recreation(" + hashCode() + ")";
    }

    public static /* synthetic */ Object lambda$new$0(AtomicReference atomicReference, String str, CallbackToFutureAdapter.Completer completer) {
        atomicReference.set(completer);
        return str + "-cancellation";
    }

    public static /* synthetic */ Object lambda$new$1(AtomicReference atomicReference, String str, CallbackToFutureAdapter.Completer completer) {
        atomicReference.set(completer);
        return str + "-status";
    }

    public static /* synthetic */ Object lambda$new$2(AtomicReference atomicReference, String str, CallbackToFutureAdapter.Completer completer) {
        atomicReference.set(completer);
        return str + "-Surface";
    }

    public /* synthetic */ void lambda$new$3() {
        this.mSurfaceFuture.cancel(true);
    }

    public static /* synthetic */ void lambda$provideSurface$4(Consumer consumer, Surface surface) {
        consumer.accept(Result.of(3, surface));
    }

    public static /* synthetic */ void lambda$provideSurface$5(Consumer consumer, Surface surface) {
        consumer.accept(Result.of(4, surface));
    }

    @SuppressLint({"PairedRegistration"})
    public void addRequestCancellationListener(@NonNull Executor executor, @NonNull Runnable runnable) {
        this.mRequestCancellationCompleter.addCancellationListener(runnable, executor);
    }

    public void clearTransformationInfoListener() {
        synchronized (this.mLock) {
            this.mTransformationInfoListener = null;
            this.mTransformationInfoExecutor = null;
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public CameraInternal getCamera() {
        return this.mCamera;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public DeferrableSurface getDeferrableSurface() {
        return this.mInternalDeferrableSurface;
    }

    @NonNull
    public DynamicRange getDynamicRange() {
        return this.mDynamicRange;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Range<Integer> getExpectedFrameRate() {
        return this.mExpectedFrameRate;
    }

    @NonNull
    public Size getResolution() {
        return this.mResolution;
    }

    public boolean invalidate() {
        willNotProvideSurface();
        return this.mSurfaceRecreationCompleter.set(null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isPrimary() {
        return this.mIsPrimary;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isServiced() {
        return this.mSurfaceFuture.isDone();
    }

    public void provideSurface(@NonNull final Surface surface, @NonNull Executor executor, @NonNull final Consumer<Result> consumer) {
        if (!this.mSurfaceCompleter.set(surface) && !this.mSurfaceFuture.isCancelled()) {
            Preconditions.checkState(this.mSurfaceFuture.isDone());
            try {
                this.mSurfaceFuture.get();
                final int i = 0;
                executor.execute(new Runnable() { // from class: 땨딹뒘뒛뎹듽뎻땟돵듰득뒛딠둑땫땦될둑땮들됫뒬땲딠딽땠뎸뎬둬드딨땐둣땍듐듐뒨땄뎡둡뒤딽둑딸땁듟둬둡됨둬딁땸둘뒹듼듔둔듽됩듰듟뎬도돰뎽됴딤뒾딎뒛돳듌땰땭됐뒐땲돠뎠땬땅딁딽뒹듟땝되들땻뒹둘뎰듸돠뎨뎡뒋땯뒤뒛두듬돰딤땵딟땟뒨땯듽딻딃돰따땭땩뎠딤든딎돼뎡딟됴땹땭돛뎸딅둣
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i) {
                            case 0:
                                SurfaceRequest.lambda$provideSurface$4(consumer, surface);
                                return;
                            default:
                                SurfaceRequest.lambda$provideSurface$5(consumer, surface);
                                return;
                        }
                    }
                });
                return;
            } catch (InterruptedException | ExecutionException unused) {
                final int i2 = 1;
                executor.execute(new Runnable() { // from class: 땨딹뒘뒛뎹듽뎻땟돵듰득뒛딠둑땫땦될둑땮들됫뒬땲딠딽땠뎸뎬둬드딨땐둣땍듐듐뒨땄뎡둡뒤딽둑딸땁듟둬둡됨둬딁땸둘뒹듼듔둔듽됩듰듟뎬도돰뎽됴딤뒾딎뒛돳듌땰땭됐뒐땲돠뎠땬땅딁딽뒹듟땝되들땻뒹둘뎰듸돠뎨뎡뒋땯뒤뒛두듬돰딤땵딟땟뒨땯듽딻딃돰따땭땩뎠딤든딎돼뎡딟됴땹땭돛뎸딅둣
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i2) {
                            case 0:
                                SurfaceRequest.lambda$provideSurface$4(consumer, surface);
                                return;
                            default:
                                SurfaceRequest.lambda$provideSurface$5(consumer, surface);
                                return;
                        }
                    }
                });
                return;
            }
        }
        Futures.addCallback(this.mSessionStatusFuture, new FutureCallback<Void>() { // from class: androidx.camera.core.SurfaceRequest.4
            final /* synthetic */ Consumer val$resultListener;
            final /* synthetic */ Surface val$surface;

            public AnonymousClass4(final Consumer consumer2, final Surface surface2) {
                r2 = consumer2;
                r3 = surface2;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                Preconditions.checkState(th instanceof RequestCancelledException, "Camera surface session should only fail with request cancellation. Instead failed due to:\n" + th);
                r2.accept(Result.of(1, r3));
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Void r3) {
                r2.accept(Result.of(0, r3));
            }
        }, executor);
    }

    public void setTransformationInfoListener(@NonNull Executor executor, @NonNull TransformationInfoListener transformationInfoListener) {
        TransformationInfo transformationInfo;
        synchronized (this.mLock) {
            this.mTransformationInfoListener = transformationInfoListener;
            this.mTransformationInfoExecutor = executor;
            transformationInfo = this.mTransformationInfo;
        }
        if (transformationInfo != null) {
            executor.execute(new RunnableC1216xc3cddcce(transformationInfoListener, transformationInfo, 1));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void updateTransformationInfo(@NonNull TransformationInfo transformationInfo) {
        TransformationInfoListener transformationInfoListener;
        Executor executor;
        synchronized (this.mLock) {
            this.mTransformationInfo = transformationInfo;
            transformationInfoListener = this.mTransformationInfoListener;
            executor = this.mTransformationInfoExecutor;
        }
        if (transformationInfoListener != null && executor != null) {
            executor.execute(new RunnableC1216xc3cddcce(transformationInfoListener, transformationInfo, 0));
        }
    }

    public boolean willNotProvideSurface() {
        return this.mSurfaceCompleter.setException(new DeferrableSurface.SurfaceUnavailableException("Surface request will not complete."));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public SurfaceRequest(@NonNull Size size, @NonNull CameraInternal cameraInternal, @NonNull DynamicRange dynamicRange, @NonNull Range<Integer> range, @NonNull Runnable runnable) {
        this(size, cameraInternal, true, dynamicRange, range, runnable);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public SurfaceRequest(@NonNull Size size, @NonNull CameraInternal cameraInternal, boolean z, @NonNull DynamicRange dynamicRange, @NonNull Range<Integer> range, @NonNull Runnable runnable) {
        this.mLock = new Object();
        this.mResolution = size;
        this.mCamera = cameraInternal;
        this.mIsPrimary = z;
        this.mDynamicRange = dynamicRange;
        this.mExpectedFrameRate = range;
        final String str = "SurfaceRequest[size: " + size + ", id: " + hashCode() + "]";
        final AtomicReference atomicReference = new AtomicReference(null);
        final int i = 0;
        ListenableFuture future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: 땨딻뒤딅됩뒛듨뎰둡뎸도땪땜땨뎬땅돨땍뒛뒐딐되딤둠딅될딁뎰듬땠딸뒝땝뒝됫뒀뒵뎻땔땮뒤듰땣땮뒨됫땰듽뒛뒀둘듬듽딞듌땻듬돠디뒻뒵딎뒤듰둡땃둠땧돨둔돨뒙땦딅돠땁땜땮둠뒹둡됨땥들듻딁뒝듰땮뒐땯땀뒻땨딤따둘땨뒨두뎰듸도딟돰됫딝땭딸딌땝딹땃땨땧땁디듻되뒨뒾뎠딜딹땵땡둬둣돶땭
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$new$0;
                Object lambda$new$1;
                Object lambda$new$2;
                switch (i) {
                    case 0:
                        lambda$new$0 = SurfaceRequest.lambda$new$0(atomicReference, str, completer);
                        return lambda$new$0;
                    case 1:
                        lambda$new$1 = SurfaceRequest.lambda$new$1(atomicReference, str, completer);
                        return lambda$new$1;
                    default:
                        lambda$new$2 = SurfaceRequest.lambda$new$2(atomicReference, str, completer);
                        return lambda$new$2;
                }
            }
        });
        CallbackToFutureAdapter.Completer<Void> completer = (CallbackToFutureAdapter.Completer) Preconditions.checkNotNull((CallbackToFutureAdapter.Completer) atomicReference.get());
        this.mRequestCancellationCompleter = completer;
        final AtomicReference atomicReference2 = new AtomicReference(null);
        final int i2 = 1;
        ListenableFuture<Void> future2 = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: 땨딻뒤딅됩뒛듨뎰둡뎸도땪땜땨뎬땅돨땍뒛뒐딐되딤둠딅될딁뎰듬땠딸뒝땝뒝됫뒀뒵뎻땔땮뒤듰땣땮뒨됫땰듽뒛뒀둘듬듽딞듌땻듬돠디뒻뒵딎뒤듰둡땃둠땧돨둔돨뒙땦딅돠땁땜땮둠뒹둡됨땥들듻딁뒝듰땮뒐땯땀뒻땨딤따둘땨뒨두뎰듸도딟돰됫딝땭딸딌땝딹땃땨땧땁디듻되뒨뒾뎠딜딹땵땡둬둣돶땭
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer2) {
                Object lambda$new$0;
                Object lambda$new$1;
                Object lambda$new$2;
                switch (i2) {
                    case 0:
                        lambda$new$0 = SurfaceRequest.lambda$new$0(atomicReference2, str, completer2);
                        return lambda$new$0;
                    case 1:
                        lambda$new$1 = SurfaceRequest.lambda$new$1(atomicReference2, str, completer2);
                        return lambda$new$1;
                    default:
                        lambda$new$2 = SurfaceRequest.lambda$new$2(atomicReference2, str, completer2);
                        return lambda$new$2;
                }
            }
        });
        this.mSessionStatusFuture = future2;
        Futures.addCallback(future2, new FutureCallback<Void>() { // from class: androidx.camera.core.SurfaceRequest.1
            final /* synthetic */ CallbackToFutureAdapter.Completer val$requestCancellationCompleter;
            final /* synthetic */ ListenableFuture val$requestCancellationFuture;

            public AnonymousClass1(CallbackToFutureAdapter.Completer completer2, ListenableFuture future3) {
                r2 = completer2;
                r3 = future3;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                if (th instanceof RequestCancelledException) {
                    Preconditions.checkState(r3.cancel(false));
                } else {
                    Preconditions.checkState(r2.set(null));
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Void r2) {
                Preconditions.checkState(r2.set(null));
            }
        }, CameraXExecutors.directExecutor());
        CallbackToFutureAdapter.Completer completer2 = (CallbackToFutureAdapter.Completer) Preconditions.checkNotNull((CallbackToFutureAdapter.Completer) atomicReference2.get());
        final AtomicReference atomicReference3 = new AtomicReference(null);
        final int i3 = 2;
        ListenableFuture<Surface> future3 = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: 땨딻뒤딅됩뒛듨뎰둡뎸도땪땜땨뎬땅돨땍뒛뒐딐되딤둠딅될딁뎰듬땠딸뒝땝뒝됫뒀뒵뎻땔땮뒤듰땣땮뒨됫땰듽뒛뒀둘듬듽딞듌땻듬돠디뒻뒵딎뒤듰둡땃둠땧돨둔돨뒙땦딅돠땁땜땮둠뒹둡됨땥들듻딁뒝듰땮뒐땯땀뒻땨딤따둘땨뒨두뎰듸도딟돰됫딝땭딸딌땝딹땃땨땧땁디듻되뒨뒾뎠딜딹땵땡둬둣돶땭
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer22) {
                Object lambda$new$0;
                Object lambda$new$1;
                Object lambda$new$2;
                switch (i3) {
                    case 0:
                        lambda$new$0 = SurfaceRequest.lambda$new$0(atomicReference3, str, completer22);
                        return lambda$new$0;
                    case 1:
                        lambda$new$1 = SurfaceRequest.lambda$new$1(atomicReference3, str, completer22);
                        return lambda$new$1;
                    default:
                        lambda$new$2 = SurfaceRequest.lambda$new$2(atomicReference3, str, completer22);
                        return lambda$new$2;
                }
            }
        });
        this.mSurfaceFuture = future3;
        this.mSurfaceCompleter = (CallbackToFutureAdapter.Completer) Preconditions.checkNotNull((CallbackToFutureAdapter.Completer) atomicReference3.get());
        AnonymousClass2 anonymousClass2 = new DeferrableSurface(size, 34) { // from class: androidx.camera.core.SurfaceRequest.2
            public AnonymousClass2(Size size2, int i4) {
                super(size2, i4);
            }

            @Override // androidx.camera.core.impl.DeferrableSurface
            @NonNull
            public ListenableFuture<Surface> provideSurface() {
                return SurfaceRequest.this.mSurfaceFuture;
            }
        };
        this.mInternalDeferrableSurface = anonymousClass2;
        ListenableFuture<Void> terminationFuture = anonymousClass2.getTerminationFuture();
        Futures.addCallback(future3, new FutureCallback<Surface>() { // from class: androidx.camera.core.SurfaceRequest.3
            final /* synthetic */ CallbackToFutureAdapter.Completer val$sessionStatusCompleter;
            final /* synthetic */ String val$surfaceRequestString;
            final /* synthetic */ ListenableFuture val$terminationFuture;

            public AnonymousClass3(ListenableFuture terminationFuture2, CallbackToFutureAdapter.Completer completer22, final String str2) {
                r2 = terminationFuture2;
                r3 = completer22;
                r4 = str2;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                if (th instanceof CancellationException) {
                    Preconditions.checkState(r3.setException(new RequestCancelledException(AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), r4, " cancelled."), th)));
                } else {
                    r3.set(null);
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Surface surface) {
                Futures.propagate(r2, r3);
            }
        }, CameraXExecutors.directExecutor());
        terminationFuture2.addListener(new RunnableC0661x9a884b8a(this, 1), CameraXExecutors.directExecutor());
        this.mSurfaceRecreationCompleter = initialSurfaceRecreationCompleter(CameraXExecutors.directExecutor(), runnable);
    }
}
