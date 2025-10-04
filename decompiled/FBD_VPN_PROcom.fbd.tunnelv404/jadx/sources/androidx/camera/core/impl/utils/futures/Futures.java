package androidx.camera.core.impl.utils.futures;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.util.Function;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.impl.utils.futures.ImmediateFuture;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C0840x1b46baae;
import defpackage.RunnableC0663x76906518;
import defpackage.RunnableC0842x5762f236;
import defpackage.RunnableC0843x6422089a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class Futures {
    private static final Function<?, ?> IDENTITY_FUNCTION = new Function<Object, Object>() { // from class: androidx.camera.core.impl.utils.futures.Futures.2
        @Override // androidx.arch.core.util.Function
        public Object apply(Object obj) {
            return obj;
        }
    };

    /* renamed from: androidx.camera.core.impl.utils.futures.Futures$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1<I, O> implements AsyncFunction<I, O> {
        public AnonymousClass1() {
        }

        @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
        @NonNull
        public ListenableFuture<O> apply(I i) {
            return Futures.immediateFuture(Function.this.apply(i));
        }
    }

    /* renamed from: androidx.camera.core.impl.utils.futures.Futures$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements Function<Object, Object> {
        @Override // androidx.arch.core.util.Function
        public Object apply(Object obj) {
            return obj;
        }
    }

    /* renamed from: androidx.camera.core.impl.utils.futures.Futures$3 */
    /* loaded from: classes.dex */
    public class AnonymousClass3<I> implements FutureCallback<I> {
        final /* synthetic */ Function val$function;

        public AnonymousClass3(Function function) {
            r2 = function;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            CallbackToFutureAdapter.Completer.this.setException(th);
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable I i) {
            try {
                CallbackToFutureAdapter.Completer.this.set(r2.apply(i));
            } catch (Throwable th) {
                CallbackToFutureAdapter.Completer.this.setException(th);
            }
        }
    }

    /* renamed from: androidx.camera.core.impl.utils.futures.Futures$4 */
    /* loaded from: classes.dex */
    public class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListenableFuture.this.cancel(true);
        }
    }

    /* loaded from: classes.dex */
    public static final class CallbackListener<V> implements Runnable {
        final FutureCallback<? super V> mCallback;
        final Future<V> mFuture;

        public CallbackListener(Future<V> future, FutureCallback<? super V> futureCallback) {
            this.mFuture = future;
            this.mCallback = futureCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.mCallback.onSuccess(Futures.getDone(this.mFuture));
            } catch (Error e) {
                e = e;
                this.mCallback.onFailure(e);
            } catch (RuntimeException e2) {
                e = e2;
                this.mCallback.onFailure(e);
            } catch (ExecutionException e3) {
                Throwable cause = e3.getCause();
                if (cause == null) {
                    this.mCallback.onFailure(e3);
                } else {
                    this.mCallback.onFailure(cause);
                }
            }
        }

        @NonNull
        public String toString() {
            return CallbackListener.class.getSimpleName() + "," + this.mCallback;
        }
    }

    private Futures() {
    }

    public static <V> void addCallback(@NonNull ListenableFuture<V> listenableFuture, @NonNull FutureCallback<? super V> futureCallback, @NonNull Executor executor) {
        Preconditions.checkNotNull(futureCallback);
        listenableFuture.addListener(new CallbackListener(listenableFuture, futureCallback), executor);
    }

    @NonNull
    public static <V> ListenableFuture<List<V>> allAsList(@NonNull Collection<? extends ListenableFuture<? extends V>> collection) {
        return new ListFuture(new ArrayList(collection), true, CameraXExecutors.directExecutor());
    }

    @Nullable
    public static <V> V getDone(@NonNull Future<V> future) {
        Preconditions.checkState(future.isDone(), "Future was expected to be done, " + future);
        return (V) getUninterruptibly(future);
    }

    @Nullable
    public static <V> V getUninterruptibly(@NonNull Future<V> future) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    @NonNull
    public static <V> ListenableFuture<V> immediateFailedFuture(@NonNull Throwable th) {
        return new ImmediateFuture.ImmediateFailedFuture(th);
    }

    @NonNull
    public static <V> ScheduledFuture<V> immediateFailedScheduledFuture(@NonNull Throwable th) {
        return new ImmediateFuture.ImmediateFailedScheduledFuture(th);
    }

    @NonNull
    public static <V> ListenableFuture<V> immediateFuture(@Nullable V v) {
        if (v == null) {
            return ImmediateFuture.nullFuture();
        }
        return new ImmediateFuture.ImmediateSuccessfulFuture(v);
    }

    public static /* synthetic */ Boolean lambda$makeTimeoutFuture$1(CallbackToFutureAdapter.Completer completer, ListenableFuture listenableFuture, long j) {
        return Boolean.valueOf(completer.setException(new TimeoutException("Future[" + listenableFuture + "] is not done within " + j + " ms.")));
    }

    public static /* synthetic */ Object lambda$makeTimeoutFuture$3(final ListenableFuture listenableFuture, ScheduledExecutorService scheduledExecutorService, final long j, final CallbackToFutureAdapter.Completer completer) {
        propagate(listenableFuture, completer);
        if (!listenableFuture.isDone()) {
            listenableFuture.addListener(new RunnableC0843x6422089a(scheduledExecutorService.schedule(new Callable() { // from class: 듨뒐딨딹딁뎹땁땸돤뒾듼둬됨뒀뎽땣돷딄도돰뎬뒈땄딌땮되땭돴땜디뒬뒻딁땯돤딽땨땥뒻뎨돳뒐뎨됫뒻뒤뎬딠딞뒼땩되둠땥둡땋딄땧둥듌듌땁디도땩둡땨딨땦드둠딨땭땀될땫돠뒉뎹뒤땄딹듔뎬도따땁돴듻뒵돶딽뒋돨딄땧땔땬돼땹됴될딞됐딞딠딐딃뒈따딁딟뒹뎻돼뒀듐딤땜땬땤뒷딅됫땬듔딝땍듌땋
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Boolean lambda$makeTimeoutFuture$1;
                    lambda$makeTimeoutFuture$1 = Futures.lambda$makeTimeoutFuture$1(CallbackToFutureAdapter.Completer.this, listenableFuture, j);
                    return lambda$makeTimeoutFuture$1;
                }
            }, j, TimeUnit.MILLISECONDS), 1), CameraXExecutors.directExecutor());
        }
        return "TimeoutFuture[" + listenableFuture + "]";
    }

    public static /* synthetic */ void lambda$makeTimeoutFuture$4(CallbackToFutureAdapter.Completer completer, Object obj, boolean z, ListenableFuture listenableFuture) {
        completer.set(obj);
        if (z) {
            listenableFuture.cancel(true);
        }
    }

    public static /* synthetic */ Object lambda$makeTimeoutFuture$6(ListenableFuture listenableFuture, ScheduledExecutorService scheduledExecutorService, Object obj, boolean z, long j, CallbackToFutureAdapter.Completer completer) {
        propagate(listenableFuture, completer);
        if (!listenableFuture.isDone()) {
            listenableFuture.addListener(new RunnableC0843x6422089a(scheduledExecutorService.schedule(new RunnableC0842x5762f236(completer, obj, z, listenableFuture), j, TimeUnit.MILLISECONDS), 0), CameraXExecutors.directExecutor());
        }
        return "TimeoutFuture[" + listenableFuture + "]";
    }

    public static /* synthetic */ Object lambda$nonCancellationPropagating$0(ListenableFuture listenableFuture, CallbackToFutureAdapter.Completer completer) {
        propagateTransform(false, listenableFuture, IDENTITY_FUNCTION, completer, CameraXExecutors.directExecutor());
        return "nonCancellationPropagating[" + listenableFuture + "]";
    }

    public static /* synthetic */ Object lambda$transformAsyncOnCompletion$8(ListenableFuture listenableFuture, CallbackToFutureAdapter.Completer completer) {
        listenableFuture.addListener(new RunnableC0663x76906518(1, completer), CameraXExecutors.directExecutor());
        return "transformVoidFuture [" + listenableFuture + "]";
    }

    @NonNull
    public static <V> ListenableFuture<V> makeTimeoutFuture(final long j, @NonNull final ScheduledExecutorService scheduledExecutorService, @NonNull final ListenableFuture<V> listenableFuture) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: 들땦따따듼딁뒻듬딨땻뒋뒾딨뒙돼돼땠듐듟됫뒛땬딟둘딝돰딹땜뒵뒵듻뎻돷듟뒨뎡뎠딎땧땻딎됩땸뒘딁땭뒘딅듽됨돝둔됐딄뎸돛됨딟뒝디돷땪땧땐듌둣돰땠돷둡됩돴뒹둘딝딹딠딟뒋딎듰땨든됩뎨땬딝땵딝땍듟딄땰딸땡땪땸땠뒼딟땀뎹땯딸땣따뎸돳땲땰뒹뒤딌듨됩듨딽딞뒉땥듰돝듟둘듟딟들돠뒾됩
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$makeTimeoutFuture$3;
                lambda$makeTimeoutFuture$3 = Futures.lambda$makeTimeoutFuture$3(listenableFuture, scheduledExecutorService, j, completer);
                return lambda$makeTimeoutFuture$3;
            }
        });
    }

    @NonNull
    public static <V> ListenableFuture<V> nonCancellationPropagating(@NonNull ListenableFuture<V> listenableFuture) {
        Preconditions.checkNotNull(listenableFuture);
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        return CallbackToFutureAdapter.getFuture(new C0840x1b46baae(listenableFuture, 1));
    }

    public static <V> void propagate(@NonNull ListenableFuture<V> listenableFuture, @NonNull CallbackToFutureAdapter.Completer<V> completer) {
        propagateTransform(listenableFuture, IDENTITY_FUNCTION, completer, CameraXExecutors.directExecutor());
    }

    public static <I, O> void propagateTransform(@NonNull ListenableFuture<I> listenableFuture, @NonNull Function<? super I, ? extends O> function, @NonNull CallbackToFutureAdapter.Completer<O> completer, @NonNull Executor executor) {
        propagateTransform(true, listenableFuture, function, completer, executor);
    }

    @NonNull
    public static <V> ListenableFuture<List<V>> successfulAsList(@NonNull Collection<? extends ListenableFuture<? extends V>> collection) {
        return new ListFuture(new ArrayList(collection), false, CameraXExecutors.directExecutor());
    }

    @NonNull
    public static <I, O> ListenableFuture<O> transform(@NonNull ListenableFuture<I> listenableFuture, @NonNull Function<? super I, ? extends O> function, @NonNull Executor executor) {
        Preconditions.checkNotNull(function);
        return transformAsync(listenableFuture, new AsyncFunction<I, O>() { // from class: androidx.camera.core.impl.utils.futures.Futures.1
            public AnonymousClass1() {
            }

            @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
            @NonNull
            public ListenableFuture<O> apply(I i) {
                return Futures.immediateFuture(Function.this.apply(i));
            }
        }, executor);
    }

    @NonNull
    public static <I, O> ListenableFuture<O> transformAsync(@NonNull ListenableFuture<I> listenableFuture, @NonNull AsyncFunction<? super I, ? extends O> asyncFunction, @NonNull Executor executor) {
        ChainingListenableFuture chainingListenableFuture = new ChainingListenableFuture(asyncFunction, listenableFuture);
        listenableFuture.addListener(chainingListenableFuture, executor);
        return chainingListenableFuture;
    }

    @NonNull
    public static <V> ListenableFuture<Void> transformAsyncOnCompletion(@NonNull ListenableFuture<V> listenableFuture) {
        return CallbackToFutureAdapter.getFuture(new C0840x1b46baae(listenableFuture, 0));
    }

    @NonNull
    public static <V> ListenableFuture<V> makeTimeoutFuture(final long j, @NonNull final ScheduledExecutorService scheduledExecutorService, @Nullable final V v, final boolean z, @NonNull final ListenableFuture<V> listenableFuture) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: 듨돶땭뒼돵들뒤둘될뒀들뒙돠듼딤땠딃든딹땮돼땀땪땤딐돶돤디딄딀듨됨디돴땡들땣땐딜둔듻듻땀딐뎻딹땐뒈땨뒷땳딠땝따땜듔돶땡뒙땤땃딐둬뒈땟딞딃돵땋둣듐됨듬돶돝듽뒀둣딸두땰들딸땄딤됫뒤딀뒾땣딻땔땳딠됐딃돨뎬듟땡둘딐땲딎뎹돛듬뎹뒉뎬된돝뒬땨둥돷땠둔땤딁딞땔땃뒉딝뎡돶딻뎬땯
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$makeTimeoutFuture$6;
                lambda$makeTimeoutFuture$6 = Futures.lambda$makeTimeoutFuture$6(listenableFuture, scheduledExecutorService, v, z, j, completer);
                return lambda$makeTimeoutFuture$6;
            }
        });
    }

    private static <I, O> void propagateTransform(boolean z, @NonNull ListenableFuture<I> listenableFuture, @NonNull Function<? super I, ? extends O> function, @NonNull CallbackToFutureAdapter.Completer<O> completer, @NonNull Executor executor) {
        Preconditions.checkNotNull(listenableFuture);
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(completer);
        Preconditions.checkNotNull(executor);
        addCallback(listenableFuture, new FutureCallback<I>() { // from class: androidx.camera.core.impl.utils.futures.Futures.3
            final /* synthetic */ Function val$function;

            public AnonymousClass3(Function function2) {
                r2 = function2;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                CallbackToFutureAdapter.Completer.this.setException(th);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable I i) {
                try {
                    CallbackToFutureAdapter.Completer.this.set(r2.apply(i));
                } catch (Throwable th) {
                    CallbackToFutureAdapter.Completer.this.setException(th);
                }
            }
        }, executor);
        if (z) {
            completer.addCancellationListener(new Runnable() { // from class: androidx.camera.core.impl.utils.futures.Futures.4
                public AnonymousClass4() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    ListenableFuture.this.cancel(true);
                }
            }, CameraXExecutors.directExecutor());
        }
    }
}
