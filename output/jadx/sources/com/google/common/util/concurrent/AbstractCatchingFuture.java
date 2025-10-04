package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import com.google.common.util.concurrent.internal.InternalFutures;
import com.google.errorprone.annotations.ForOverride;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.lang.Throwable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
@GwtCompatible
/* loaded from: classes2.dex */
public abstract class AbstractCatchingFuture<V, X extends Throwable, F, T> extends FluentFuture.TrustedFuture<V> implements Runnable {

    @CheckForNull
    Class<X> exceptionType;

    @CheckForNull
    F fallback;

    @CheckForNull
    ListenableFuture<? extends V> inputFuture;

    /* loaded from: classes2.dex */
    public static final class AsyncCatchingFuture<V, X extends Throwable> extends AbstractCatchingFuture<V, X, AsyncFunction<? super X, ? extends V>, ListenableFuture<? extends V>> {
        public AsyncCatchingFuture(ListenableFuture<? extends V> listenableFuture, Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction) {
            super(listenableFuture, cls, asyncFunction);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.AbstractCatchingFuture
        public /* bridge */ /* synthetic */ Object doFallback(Object obj, Throwable th) {
            return doFallback((AsyncFunction<? super AsyncFunction<? super X, ? extends V>, ? extends V>) obj, (AsyncFunction<? super X, ? extends V>) th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ListenableFuture<? extends V> doFallback(AsyncFunction<? super X, ? extends V> asyncFunction, X x) {
            ListenableFuture<? extends V> apply = asyncFunction.apply(x);
            Preconditions.checkNotNull(apply, new ObfuscatedString(new long[]{6437544500498074435L, 1461239865785153810L, -3219647775426771702L, -7073032922501649658L, 8409078507315268762L, -8999400607713443226L, -3851043673319995142L, -7084420035876576092L, -2115718125194827743L, 7298685762632238924L, 5852301372258857309L, -6879824129348247299L, 5162565103519786767L, -8906622516770864890L}).toString(), asyncFunction);
            return apply;
        }

        @Override // com.google.common.util.concurrent.AbstractCatchingFuture
        public void setResult(ListenableFuture<? extends V> listenableFuture) {
            setFuture(listenableFuture);
        }
    }

    /* loaded from: classes2.dex */
    public static final class CatchingFuture<V, X extends Throwable> extends AbstractCatchingFuture<V, X, Function<? super X, ? extends V>, V> {
        public CatchingFuture(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function) {
            super(listenableFuture, cls, function);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.AbstractCatchingFuture
        @ParametricNullness
        public /* bridge */ /* synthetic */ Object doFallback(Object obj, Throwable th) {
            return doFallback((Function<? super Function<? super X, ? extends V>, ? extends V>) obj, (Function<? super X, ? extends V>) th);
        }

        @Override // com.google.common.util.concurrent.AbstractCatchingFuture
        public void setResult(@ParametricNullness V v) {
            set(v);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @ParametricNullness
        public V doFallback(Function<? super X, ? extends V> function, X x) {
            return function.apply(x);
        }
    }

    public AbstractCatchingFuture(ListenableFuture<? extends V> listenableFuture, Class<X> cls, F f) {
        this.inputFuture = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
        this.exceptionType = (Class) Preconditions.checkNotNull(cls);
        this.fallback = (F) Preconditions.checkNotNull(f);
    }

    public static <V, X extends Throwable> ListenableFuture<V> create(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function, Executor executor) {
        CatchingFuture catchingFuture = new CatchingFuture(listenableFuture, cls, function);
        listenableFuture.addListener(catchingFuture, MoreExecutors.rejectionPropagatingExecutor(executor, catchingFuture));
        return catchingFuture;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        maybePropagateCancellationTo(this.inputFuture);
        this.inputFuture = null;
        this.exceptionType = null;
        this.fallback = null;
    }

    @ParametricNullness
    @ForOverride
    public abstract T doFallback(F f, X x);

    @Override // com.google.common.util.concurrent.AbstractFuture
    @CheckForNull
    public String pendingToString() {
        ListenableFuture<? extends V> listenableFuture = this.inputFuture;
        Class<X> cls = this.exceptionType;
        F f = this.fallback;
        String pendingToString = super.pendingToString();
        String obfuscatedString = new ObfuscatedString(new long[]{-6607742705614053766L}).toString();
        if (listenableFuture != null) {
            String valueOf = String.valueOf(listenableFuture);
            StringBuilder sb = new StringBuilder(valueOf.length() + 16);
            sb.append(new ObfuscatedString(new long[]{-2392736948332527760L, -4583456432802057497L, 4321654917904462834L}).toString());
            sb.append(valueOf);
            obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1957941486702501840L, 4558441844414444261L}), sb);
        }
        if (cls != null && f != null) {
            String valueOf2 = String.valueOf(cls);
            String valueOf3 = String.valueOf(f);
            StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf3.length() + valueOf2.length() + AbstractC1320xaf50c7e8.m4356x1378447b(29, obfuscatedString), obfuscatedString);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-8455772353941082682L, 4086401935827635965L, -2635118658052090023L}).toString());
            m2938x1aebc6d9.append(valueOf2);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-2830100647758574238L, 726944596443360656L, 5723742352446611712L}).toString());
            m2938x1aebc6d9.append(valueOf3);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6809641108631574095L, 846847092748371006L}), m2938x1aebc6d9);
        }
        if (pendingToString != null) {
            String valueOf4 = String.valueOf(obfuscatedString);
            if (pendingToString.length() != 0) {
                return valueOf4.concat(pendingToString);
            }
            return new String(valueOf4);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ae  */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Class<X extends java.lang.Throwable>, F] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        boolean z;
        boolean z2;
        Throwable th;
        Object obj;
        ListenableFuture<? extends V> listenableFuture = this.inputFuture;
        Class<X> cls = this.exceptionType;
        F f = this.fallback;
        boolean z3 = false;
        if (listenableFuture == 0) {
            z = true;
        } else {
            z = false;
        }
        if (cls == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean z4 = z | z2;
        if (f == null) {
            z3 = true;
        }
        if (!(z3 | z4) && !isCancelled()) {
            ?? r4 = (Class<X>) null;
            this.inputFuture = null;
            try {
                if (listenableFuture instanceof InternalFutureFailureAccess) {
                    th = InternalFutures.tryInternalFastPathGetFailure((InternalFutureFailureAccess) listenableFuture);
                } else {
                    th = null;
                }
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                if (cause == null) {
                    String valueOf = String.valueOf(listenableFuture.getClass());
                    String valueOf2 = String.valueOf(e.getClass());
                    StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 35);
                    sb.append(new ObfuscatedString(new long[]{8864641011002941642L, -9180578745024453969L, -6495325728873530840L}).toString());
                    sb.append(valueOf);
                    sb.append(new ObfuscatedString(new long[]{-6230121961642561707L, 4014276323623522269L}).toString());
                    sb.append(valueOf2);
                    cause = new NullPointerException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1444938141394136286L, 5617444108020075389L, -8362210747764301865L}), sb));
                }
                th = cause;
            } catch (Throwable th2) {
                th = th2;
            }
            if (th == null) {
                obj = Futures.getDone(listenableFuture);
                if (th != null) {
                    set(NullnessCasts.uncheckedCastNullableTToT(obj));
                    return;
                }
                if (!Platform.isInstanceOfThrowableClass(th, cls)) {
                    setFuture(listenableFuture);
                    return;
                }
                try {
                    Object doFallback = doFallback(f, th);
                    this.exceptionType = null;
                    this.fallback = null;
                    setResult(doFallback);
                    return;
                } catch (Throwable th3) {
                    try {
                        setException(th3);
                        return;
                    } finally {
                        this.exceptionType = null;
                        this.fallback = null;
                    }
                }
            }
            obj = null;
            if (th != null) {
            }
        }
    }

    @ForOverride
    public abstract void setResult(@ParametricNullness T t);

    public static <X extends Throwable, V> ListenableFuture<V> create(ListenableFuture<? extends V> listenableFuture, Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction, Executor executor) {
        AsyncCatchingFuture asyncCatchingFuture = new AsyncCatchingFuture(listenableFuture, cls, asyncFunction);
        listenableFuture.addListener(asyncCatchingFuture, MoreExecutors.rejectionPropagatingExecutor(executor, asyncCatchingFuture));
        return asyncCatchingFuture;
    }
}
