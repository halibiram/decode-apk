package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.CollectionFuture;
import com.google.common.util.concurrent.ImmediateFuture;
import com.google.common.util.concurrent.Partially;
import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import com.google.common.util.concurrent.internal.InternalFutures;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
/* loaded from: classes2.dex */
public final class Futures extends GwtFuturesCatchingSpecialization {

    /* loaded from: classes2.dex */
    public static final class CallbackListener<V> implements Runnable {
        final FutureCallback<? super V> callback;
        final Future<V> future;

        public CallbackListener(Future<V> future, FutureCallback<? super V> futureCallback) {
            this.future = future;
            this.callback = futureCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable tryInternalFastPathGetFailure;
            Future<V> future = this.future;
            if ((future instanceof InternalFutureFailureAccess) && (tryInternalFastPathGetFailure = InternalFutures.tryInternalFastPathGetFailure((InternalFutureFailureAccess) future)) != null) {
                this.callback.onFailure(tryInternalFastPathGetFailure);
                return;
            }
            try {
                this.callback.onSuccess(Futures.getDone(this.future));
            } catch (Error e) {
                e = e;
                this.callback.onFailure(e);
            } catch (RuntimeException e2) {
                e = e2;
                this.callback.onFailure(e);
            } catch (ExecutionException e3) {
                this.callback.onFailure(e3.getCause());
            }
        }

        public String toString() {
            return MoreObjects.toStringHelper(this).addValue(this.callback).toString();
        }
    }

    @Beta
    @GwtCompatible
    @CanIgnoreReturnValue
    /* loaded from: classes2.dex */
    public static final class FutureCombiner<V> {
        private final boolean allMustSucceed;
        private final ImmutableList<ListenableFuture<? extends V>> futures;

        @CanIgnoreReturnValue
        public <C> ListenableFuture<C> call(Callable<C> callable, Executor executor) {
            return new CombinedFuture(this.futures, this.allMustSucceed, executor, callable);
        }

        public <C> ListenableFuture<C> callAsync(AsyncCallable<C> asyncCallable, Executor executor) {
            return new CombinedFuture(this.futures, this.allMustSucceed, executor, asyncCallable);
        }

        public ListenableFuture<?> run(final Runnable runnable, Executor executor) {
            return call(new Callable<Void>(this) { // from class: com.google.common.util.concurrent.Futures.FutureCombiner.1
                @Override // java.util.concurrent.Callable
                @CheckForNull
                public Void call() {
                    runnable.run();
                    return null;
                }
            }, executor);
        }

        private FutureCombiner(boolean z, ImmutableList<ListenableFuture<? extends V>> immutableList) {
            this.allMustSucceed = z;
            this.futures = immutableList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class InCompletionOrderFuture<T> extends AbstractFuture<T> {

        @CheckForNull
        private InCompletionOrderState<T> state;

        @Override // com.google.common.util.concurrent.AbstractFuture
        public void afterDone() {
            this.state = null;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public boolean cancel(boolean z) {
            InCompletionOrderState<T> inCompletionOrderState = this.state;
            if (super.cancel(z)) {
                Objects.requireNonNull(inCompletionOrderState);
                inCompletionOrderState.recordOutputCancellation(z);
                return true;
            }
            return false;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        @CheckForNull
        public String pendingToString() {
            InCompletionOrderState<T> inCompletionOrderState = this.state;
            if (inCompletionOrderState != null) {
                int length = ((InCompletionOrderState) inCompletionOrderState).inputFutures.length;
                int i = ((InCompletionOrderState) inCompletionOrderState).incompleteOutputCount.get();
                StringBuilder sb = new StringBuilder(49);
                sb.append(new ObfuscatedString(new long[]{826585955398033199L, 268747834288202970L, 7035745874909560893L}).toString());
                sb.append(length);
                sb.append(new ObfuscatedString(new long[]{6790787114688777270L, -639340392024934799L, 3816352928702176881L}).toString());
                sb.append(i);
                return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{35585859642581475L, -3028041928061614064L}), sb);
            }
            return null;
        }

        private InCompletionOrderFuture(InCompletionOrderState<T> inCompletionOrderState) {
            this.state = inCompletionOrderState;
        }
    }

    /* loaded from: classes2.dex */
    public static final class InCompletionOrderState<T> {
        private volatile int delegateIndex;
        private final AtomicInteger incompleteOutputCount;
        private final ListenableFuture<? extends T>[] inputFutures;
        private boolean shouldInterrupt;
        private boolean wasCancelled;

        private void recordCompletion() {
            if (this.incompleteOutputCount.decrementAndGet() == 0 && this.wasCancelled) {
                for (ListenableFuture<? extends T> listenableFuture : this.inputFutures) {
                    if (listenableFuture != null) {
                        listenableFuture.cancel(this.shouldInterrupt);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void recordInputCompletion(ImmutableList<AbstractFuture<T>> immutableList, int i) {
            ListenableFuture<? extends T> listenableFuture = this.inputFutures[i];
            Objects.requireNonNull(listenableFuture);
            ListenableFuture<? extends T> listenableFuture2 = listenableFuture;
            this.inputFutures[i] = null;
            for (int i2 = this.delegateIndex; i2 < immutableList.size(); i2++) {
                if (immutableList.get(i2).setFuture(listenableFuture2)) {
                    recordCompletion();
                    this.delegateIndex = i2 + 1;
                    return;
                }
            }
            this.delegateIndex = immutableList.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void recordOutputCancellation(boolean z) {
            this.wasCancelled = true;
            if (!z) {
                this.shouldInterrupt = false;
            }
            recordCompletion();
        }

        private InCompletionOrderState(ListenableFuture<? extends T>[] listenableFutureArr) {
            this.wasCancelled = false;
            this.shouldInterrupt = true;
            this.delegateIndex = 0;
            this.inputFutures = listenableFutureArr;
            this.incompleteOutputCount = new AtomicInteger(listenableFutureArr.length);
        }
    }

    /* loaded from: classes2.dex */
    public static final class NonCancellationPropagatingFuture<V> extends AbstractFuture.TrustedFuture<V> implements Runnable {

        @CheckForNull
        private ListenableFuture<V> delegate;

        public NonCancellationPropagatingFuture(ListenableFuture<V> listenableFuture) {
            this.delegate = listenableFuture;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public void afterDone() {
            this.delegate = null;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        @CheckForNull
        public String pendingToString() {
            ListenableFuture<V> listenableFuture = this.delegate;
            if (listenableFuture != null) {
                String valueOf = String.valueOf(listenableFuture);
                StringBuilder sb = new StringBuilder(valueOf.length() + 11);
                sb.append(new ObfuscatedString(new long[]{7374496574253358550L, -7334118616255371593L, -1066737691734479662L}).toString());
                sb.append(valueOf);
                return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8588365239023824557L, 916397801653432294L}), sb);
            }
            return null;
        }

        @Override // java.lang.Runnable
        public void run() {
            ListenableFuture<V> listenableFuture = this.delegate;
            if (listenableFuture != null) {
                setFuture(listenableFuture);
            }
        }
    }

    private Futures() {
    }

    public static <V> void addCallback(ListenableFuture<V> listenableFuture, FutureCallback<? super V> futureCallback, Executor executor) {
        Preconditions.checkNotNull(futureCallback);
        listenableFuture.addListener(new CallbackListener(listenableFuture, futureCallback), executor);
    }

    @SafeVarargs
    @Beta
    public static <V> ListenableFuture<List<V>> allAsList(ListenableFuture<? extends V>... listenableFutureArr) {
        return new CollectionFuture.ListFuture(ImmutableList.copyOf(listenableFutureArr), true);
    }

    @Partially.GwtIncompatible("AVAILABLE but requires exceptionType to be Throwable.class")
    @Beta
    public static <V, X extends Throwable> ListenableFuture<V> catching(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function, Executor executor) {
        return AbstractCatchingFuture.create(listenableFuture, cls, function, executor);
    }

    @Partially.GwtIncompatible("AVAILABLE but requires exceptionType to be Throwable.class")
    @Beta
    public static <V, X extends Throwable> ListenableFuture<V> catchingAsync(ListenableFuture<? extends V> listenableFuture, Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction, Executor executor) {
        return AbstractCatchingFuture.create(listenableFuture, cls, asyncFunction, executor);
    }

    @Beta
    @GwtIncompatible
    @CanIgnoreReturnValue
    @ParametricNullness
    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls) {
        return (V) FuturesGetChecked.getChecked(future, cls);
    }

    @CanIgnoreReturnValue
    @ParametricNullness
    public static <V> V getDone(Future<V> future) {
        Preconditions.checkState(future.isDone(), new ObfuscatedString(new long[]{-1650769455971550889L, -939325622450803637L, -1670187521192757521L, 8247620644370141506L, -7394187010210863601L, -7457575190589087095L}).toString(), future);
        return (V) Uninterruptibles.getUninterruptibly(future);
    }

    @CanIgnoreReturnValue
    @ParametricNullness
    public static <V> V getUnchecked(Future<V> future) {
        Preconditions.checkNotNull(future);
        try {
            return (V) Uninterruptibles.getUninterruptibly(future);
        } catch (ExecutionException e) {
            wrapAndThrowUnchecked(e.getCause());
            throw new AssertionError();
        }
    }

    private static <T> ListenableFuture<? extends T>[] gwtCompatibleToArray(Iterable<? extends ListenableFuture<? extends T>> iterable) {
        Collection copyOf;
        if (iterable instanceof Collection) {
            copyOf = (Collection) iterable;
        } else {
            copyOf = ImmutableList.copyOf(iterable);
        }
        return (ListenableFuture[]) copyOf.toArray(new ListenableFuture[0]);
    }

    public static <V> ListenableFuture<V> immediateCancelledFuture() {
        ImmediateFuture.ImmediateCancelledFuture<Object> immediateCancelledFuture = ImmediateFuture.ImmediateCancelledFuture.INSTANCE;
        if (immediateCancelledFuture != null) {
            return immediateCancelledFuture;
        }
        return new ImmediateFuture.ImmediateCancelledFuture();
    }

    public static <V> ListenableFuture<V> immediateFailedFuture(Throwable th) {
        Preconditions.checkNotNull(th);
        return new ImmediateFuture.ImmediateFailedFuture(th);
    }

    public static <V> ListenableFuture<V> immediateFuture(@ParametricNullness V v) {
        if (v == null) {
            return (ListenableFuture<V>) ImmediateFuture.NULL;
        }
        return new ImmediateFuture(v);
    }

    public static ListenableFuture<Void> immediateVoidFuture() {
        return ImmediateFuture.NULL;
    }

    public static <T> ImmutableList<ListenableFuture<T>> inCompletionOrder(Iterable<? extends ListenableFuture<? extends T>> iterable) {
        ListenableFuture[] gwtCompatibleToArray = gwtCompatibleToArray(iterable);
        final InCompletionOrderState inCompletionOrderState = new InCompletionOrderState(gwtCompatibleToArray);
        ImmutableList.Builder builderWithExpectedSize = ImmutableList.builderWithExpectedSize(gwtCompatibleToArray.length);
        for (int i = 0; i < gwtCompatibleToArray.length; i++) {
            builderWithExpectedSize.add((ImmutableList.Builder) new InCompletionOrderFuture(inCompletionOrderState));
        }
        final ImmutableList<ListenableFuture<T>> build = builderWithExpectedSize.build();
        for (final int i2 = 0; i2 < gwtCompatibleToArray.length; i2++) {
            gwtCompatibleToArray[i2].addListener(new Runnable() { // from class: com.google.common.util.concurrent.Futures.3
                @Override // java.lang.Runnable
                public void run() {
                    InCompletionOrderState.this.recordInputCompletion(build, i2);
                }
            }, MoreExecutors.directExecutor());
        }
        return build;
    }

    @Beta
    @GwtIncompatible
    public static <I, O> Future<O> lazyTransform(final Future<I> future, final Function<? super I, ? extends O> function) {
        Preconditions.checkNotNull(future);
        Preconditions.checkNotNull(function);
        return new Future<O>() { // from class: com.google.common.util.concurrent.Futures.2
            private O applyTransformation(I i) {
                try {
                    return (O) function.apply(i);
                } catch (Throwable th) {
                    throw new ExecutionException(th);
                }
            }

            @Override // java.util.concurrent.Future
            public boolean cancel(boolean z) {
                return future.cancel(z);
            }

            @Override // java.util.concurrent.Future
            public O get() {
                return applyTransformation(future.get());
            }

            @Override // java.util.concurrent.Future
            public boolean isCancelled() {
                return future.isCancelled();
            }

            @Override // java.util.concurrent.Future
            public boolean isDone() {
                return future.isDone();
            }

            @Override // java.util.concurrent.Future
            public O get(long j, TimeUnit timeUnit) {
                return applyTransformation(future.get(j, timeUnit));
            }
        };
    }

    public static <V> ListenableFuture<V> nonCancellationPropagating(ListenableFuture<V> listenableFuture) {
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        NonCancellationPropagatingFuture nonCancellationPropagatingFuture = new NonCancellationPropagatingFuture(listenableFuture);
        listenableFuture.addListener(nonCancellationPropagatingFuture, MoreExecutors.directExecutor());
        return nonCancellationPropagatingFuture;
    }

    @GwtIncompatible
    public static <O> ListenableFuture<O> scheduleAsync(AsyncCallable<O> asyncCallable, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        TrustedListenableFutureTask create = TrustedListenableFutureTask.create(asyncCallable);
        final ScheduledFuture<?> schedule = scheduledExecutorService.schedule(create, j, timeUnit);
        create.addListener(new Runnable() { // from class: com.google.common.util.concurrent.Futures.1
            @Override // java.lang.Runnable
            public void run() {
                schedule.cancel(false);
            }
        }, MoreExecutors.directExecutor());
        return create;
    }

    public static <O> ListenableFuture<O> submit(Callable<O> callable, Executor executor) {
        TrustedListenableFutureTask create = TrustedListenableFutureTask.create(callable);
        executor.execute(create);
        return create;
    }

    public static <O> ListenableFuture<O> submitAsync(AsyncCallable<O> asyncCallable, Executor executor) {
        TrustedListenableFutureTask create = TrustedListenableFutureTask.create(asyncCallable);
        executor.execute(create);
        return create;
    }

    @SafeVarargs
    @Beta
    public static <V> ListenableFuture<List<V>> successfulAsList(ListenableFuture<? extends V>... listenableFutureArr) {
        return new CollectionFuture.ListFuture(ImmutableList.copyOf(listenableFutureArr), false);
    }

    @Beta
    public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> listenableFuture, Function<? super I, ? extends O> function, Executor executor) {
        return AbstractTransformFuture.create(listenableFuture, function, executor);
    }

    @Beta
    public static <I, O> ListenableFuture<O> transformAsync(ListenableFuture<I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction, Executor executor) {
        return AbstractTransformFuture.create(listenableFuture, asyncFunction, executor);
    }

    @SafeVarargs
    @Beta
    public static <V> FutureCombiner<V> whenAllComplete(ListenableFuture<? extends V>... listenableFutureArr) {
        return new FutureCombiner<>(false, ImmutableList.copyOf(listenableFutureArr));
    }

    @SafeVarargs
    @Beta
    public static <V> FutureCombiner<V> whenAllSucceed(ListenableFuture<? extends V>... listenableFutureArr) {
        return new FutureCombiner<>(true, ImmutableList.copyOf(listenableFutureArr));
    }

    @Beta
    @GwtIncompatible
    public static <V> ListenableFuture<V> withTimeout(ListenableFuture<V> listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        return TimeoutFuture.create(listenableFuture, j, timeUnit, scheduledExecutorService);
    }

    private static void wrapAndThrowUnchecked(Throwable th) {
        if (th instanceof Error) {
            throw new ExecutionError((Error) th);
        }
        throw new UncheckedExecutionException(th);
    }

    @Beta
    @GwtIncompatible
    @CanIgnoreReturnValue
    @ParametricNullness
    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls, long j, TimeUnit timeUnit) {
        return (V) FuturesGetChecked.getChecked(future, cls, j, timeUnit);
    }

    @Beta
    public static <V> ListenableFuture<List<V>> successfulAsList(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new CollectionFuture.ListFuture(ImmutableList.copyOf(iterable), false);
    }

    @Beta
    public static <V> FutureCombiner<V> whenAllComplete(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new FutureCombiner<>(false, ImmutableList.copyOf(iterable));
    }

    @Beta
    public static <V> FutureCombiner<V> whenAllSucceed(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new FutureCombiner<>(true, ImmutableList.copyOf(iterable));
    }

    @Beta
    public static <V> ListenableFuture<List<V>> allAsList(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new CollectionFuture.ListFuture(ImmutableList.copyOf(iterable), true);
    }

    public static ListenableFuture<Void> submit(Runnable runnable, Executor executor) {
        TrustedListenableFutureTask create = TrustedListenableFutureTask.create(runnable, null);
        executor.execute(create);
        return create;
    }
}
