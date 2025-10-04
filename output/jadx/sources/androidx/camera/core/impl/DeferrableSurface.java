package androidx.camera.core.impl;

import android.util.Log;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.RunnableC0371x742e2fda;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class DeferrableSurface {

    @GuardedBy("mLock")
    private CallbackToFutureAdapter.Completer<Void> mCloseCompleter;
    private final ListenableFuture<Void> mCloseFuture;

    @GuardedBy("mLock")
    private boolean mClosed;

    @Nullable
    Class<?> mContainerClass;
    private final Object mLock;

    @NonNull
    private final Size mPrescribedSize;
    private final int mPrescribedStreamFormat;

    @GuardedBy("mLock")
    private CallbackToFutureAdapter.Completer<Void> mTerminationCompleter;
    private final ListenableFuture<Void> mTerminationFuture;

    @GuardedBy("mLock")
    private int mUseCount;
    public static final Size SIZE_UNDEFINED = new Size(0, 0);
    private static final String TAG = "DeferrableSurface";
    private static final boolean DEBUG = Logger.isDebugEnabled(TAG);
    private static final AtomicInteger USED_COUNT = new AtomicInteger(0);
    private static final AtomicInteger TOTAL_COUNT = new AtomicInteger(0);

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static final class SurfaceClosedException extends Exception {
        DeferrableSurface mDeferrableSurface;

        public SurfaceClosedException(@NonNull String str, @NonNull DeferrableSurface deferrableSurface) {
            super(str);
            this.mDeferrableSurface = deferrableSurface;
        }

        @NonNull
        public DeferrableSurface getDeferrableSurface() {
            return this.mDeferrableSurface;
        }
    }

    /* loaded from: classes.dex */
    public static final class SurfaceUnavailableException extends Exception {
        public SurfaceUnavailableException(@NonNull String str) {
            super(str);
        }
    }

    public DeferrableSurface() {
        this(SIZE_UNDEFINED, 0);
    }

    public /* synthetic */ Object lambda$new$0(CallbackToFutureAdapter.Completer completer) {
        synchronized (this.mLock) {
            this.mTerminationCompleter = completer;
        }
        return "DeferrableSurface-termination(" + this + ")";
    }

    public /* synthetic */ Object lambda$new$1(CallbackToFutureAdapter.Completer completer) {
        synchronized (this.mLock) {
            this.mCloseCompleter = completer;
        }
        return "DeferrableSurface-close(" + this + ")";
    }

    public /* synthetic */ void lambda$new$2(String str) {
        try {
            this.mTerminationFuture.get();
            printGlobalDebugCounts("Surface terminated", TOTAL_COUNT.decrementAndGet(), USED_COUNT.get());
        } catch (Exception e) {
            Logger.e(TAG, "Unexpected surface termination for " + this + "\nStack Trace:\n" + str);
            synchronized (this.mLock) {
                throw new IllegalArgumentException(String.format("DeferrableSurface %s [closed: %b, use_count: %s] terminated with unexpected exception.", this, Boolean.valueOf(this.mClosed), Integer.valueOf(this.mUseCount)), e);
            }
        }
    }

    private void printGlobalDebugCounts(@NonNull String str, int i, int i2) {
        if (!DEBUG && Logger.isDebugEnabled(TAG)) {
            Logger.d(TAG, "DeferrableSurface usage statistics may be inaccurate since debug logging was not enabled at static initialization time. App restart may be required to enable accurate usage statistics.");
        }
        Logger.d(TAG, str + "[total_surfaces=" + i + ", used_surfaces=" + i2 + "](" + this + "}");
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static /* synthetic */ void m264x1378447b(String str, DeferrableSurface deferrableSurface) {
        deferrableSurface.lambda$new$2(str);
    }

    public void close() {
        CallbackToFutureAdapter.Completer<Void> completer;
        synchronized (this.mLock) {
            try {
                if (!this.mClosed) {
                    this.mClosed = true;
                    this.mCloseCompleter.set(null);
                    if (this.mUseCount == 0) {
                        completer = this.mTerminationCompleter;
                        this.mTerminationCompleter = null;
                    } else {
                        completer = null;
                    }
                    if (Logger.isDebugEnabled(TAG)) {
                        Logger.d(TAG, "surface closed,  useCount=" + this.mUseCount + " closed=true " + this);
                    }
                } else {
                    completer = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (completer != null) {
            completer.set(null);
        }
    }

    public void decrementUseCount() {
        CallbackToFutureAdapter.Completer<Void> completer;
        synchronized (this.mLock) {
            try {
                int i = this.mUseCount;
                if (i != 0) {
                    int i2 = i - 1;
                    this.mUseCount = i2;
                    if (i2 == 0 && this.mClosed) {
                        completer = this.mTerminationCompleter;
                        this.mTerminationCompleter = null;
                    } else {
                        completer = null;
                    }
                    if (Logger.isDebugEnabled(TAG)) {
                        Logger.d(TAG, "use count-1,  useCount=" + this.mUseCount + " closed=" + this.mClosed + " " + this);
                        if (this.mUseCount == 0) {
                            printGlobalDebugCounts("Surface no longer in use", TOTAL_COUNT.get(), USED_COUNT.decrementAndGet());
                        }
                    }
                } else {
                    throw new IllegalStateException("Decrementing use count occurs more times than incrementing");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (completer != null) {
            completer.set(null);
        }
    }

    @NonNull
    public ListenableFuture<Void> getCloseFuture() {
        return Futures.nonCancellationPropagating(this.mCloseFuture);
    }

    @Nullable
    public Class<?> getContainerClass() {
        return this.mContainerClass;
    }

    @NonNull
    public Size getPrescribedSize() {
        return this.mPrescribedSize;
    }

    public int getPrescribedStreamFormat() {
        return this.mPrescribedStreamFormat;
    }

    @NonNull
    public final ListenableFuture<Surface> getSurface() {
        synchronized (this.mLock) {
            try {
                if (this.mClosed) {
                    return Futures.immediateFailedFuture(new SurfaceClosedException("DeferrableSurface already closed.", this));
                }
                return provideSurface();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    public ListenableFuture<Void> getTerminationFuture() {
        return Futures.nonCancellationPropagating(this.mTerminationFuture);
    }

    @VisibleForTesting
    public int getUseCount() {
        int i;
        synchronized (this.mLock) {
            i = this.mUseCount;
        }
        return i;
    }

    public void incrementUseCount() {
        synchronized (this.mLock) {
            try {
                int i = this.mUseCount;
                if (i == 0 && this.mClosed) {
                    throw new SurfaceClosedException("Cannot begin use on a closed surface.", this);
                }
                this.mUseCount = i + 1;
                if (Logger.isDebugEnabled(TAG)) {
                    if (this.mUseCount == 1) {
                        printGlobalDebugCounts("New surface in use", TOTAL_COUNT.get(), USED_COUNT.incrementAndGet());
                    }
                    Logger.d(TAG, "use count+1, useCount=" + this.mUseCount + " " + this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mClosed;
        }
        return z;
    }

    @NonNull
    public abstract ListenableFuture<Surface> provideSurface();

    public void setContainerClass(@NonNull Class<?> cls) {
        this.mContainerClass = cls;
    }

    public DeferrableSurface(@NonNull Size size, int i) {
        this.mLock = new Object();
        this.mUseCount = 0;
        this.mClosed = false;
        this.mPrescribedSize = size;
        this.mPrescribedStreamFormat = i;
        final int i2 = 0;
        ListenableFuture<Void> future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver(this) { // from class: 뒉뒵둣뎽돠드뒨땠딁됩따뒝뒷돷듸돷땅딄돵든땯돳땰디딞도뒉땟뒋돳둠뎽땅딅따땥땅듟땸됫뒨땹땡땄뎰땮땔두땯딻땩뒝딃뒻땔땟땻됩땄디땭땬듌듟돸둑땲딁뒋듟땳땄듽뎸듸돤뒝딄땐둠땫돰돰둘뒵돨뒉땹돴뎻딌뒬뒾땥뒨둠딻돨둣땸딽땄딝딎뒀땟뎸땋될따딁딝됫땭뒛듻땄딄뒾땃돴뒷땮듬딌돵돨땰땦딅

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ DeferrableSurface f4489x3271d0aa;

            {
                this.f4489x3271d0aa = this;
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$new$0;
                Object lambda$new$1;
                switch (i2) {
                    case 0:
                        lambda$new$0 = this.f4489x3271d0aa.lambda$new$0(completer);
                        return lambda$new$0;
                    default:
                        lambda$new$1 = this.f4489x3271d0aa.lambda$new$1(completer);
                        return lambda$new$1;
                }
            }
        });
        this.mTerminationFuture = future;
        final int i3 = 1;
        this.mCloseFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver(this) { // from class: 뒉뒵둣뎽돠드뒨땠딁됩따뒝뒷돷듸돷땅딄돵든땯돳땰디딞도뒉땟뒋돳둠뎽땅딅따땥땅듟땸됫뒨땹땡땄뎰땮땔두땯딻땩뒝딃뒻땔땟땻됩땄디땭땬듌듟돸둑땲딁뒋듟땳땄듽뎸듸돤뒝딄땐둠땫돰돰둘뒵돨뒉땹돴뎻딌뒬뒾땥뒨둠딻돨둣땸딽땄딝딎뒀땟뎸땋될따딁딝됫땭뒛듻땄딄뒾땃돴뒷땮듬딌돵돨땰땦딅

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ DeferrableSurface f4489x3271d0aa;

            {
                this.f4489x3271d0aa = this;
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$new$0;
                Object lambda$new$1;
                switch (i3) {
                    case 0:
                        lambda$new$0 = this.f4489x3271d0aa.lambda$new$0(completer);
                        return lambda$new$0;
                    default:
                        lambda$new$1 = this.f4489x3271d0aa.lambda$new$1(completer);
                        return lambda$new$1;
                }
            }
        });
        if (Logger.isDebugEnabled(TAG)) {
            printGlobalDebugCounts("Surface created", TOTAL_COUNT.incrementAndGet(), USED_COUNT.get());
            future.addListener(new RunnableC0371x742e2fda(this, Log.getStackTraceString(new Exception()), 19), CameraXExecutors.directExecutor());
        }
    }
}
