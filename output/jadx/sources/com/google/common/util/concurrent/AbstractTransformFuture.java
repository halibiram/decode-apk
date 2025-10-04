package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import com.google.errorprone.annotations.ForOverride;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
@GwtCompatible
/* loaded from: classes2.dex */
public abstract class AbstractTransformFuture<I, O, F, T> extends FluentFuture.TrustedFuture<O> implements Runnable {

    @CheckForNull
    F function;

    @CheckForNull
    ListenableFuture<? extends I> inputFuture;

    /* loaded from: classes2.dex */
    public static final class AsyncTransformFuture<I, O> extends AbstractTransformFuture<I, O, AsyncFunction<? super I, ? extends O>, ListenableFuture<? extends O>> {
        public AsyncTransformFuture(ListenableFuture<? extends I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction) {
            super(listenableFuture, asyncFunction);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.AbstractTransformFuture
        public /* bridge */ /* synthetic */ Object doTransform(Object obj, @ParametricNullness Object obj2) {
            return doTransform((AsyncFunction<? super AsyncFunction<? super I, ? extends O>, ? extends O>) obj, (AsyncFunction<? super I, ? extends O>) obj2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ListenableFuture<? extends O> doTransform(AsyncFunction<? super I, ? extends O> asyncFunction, @ParametricNullness I i) {
            ListenableFuture<? extends O> apply = asyncFunction.apply(i);
            Preconditions.checkNotNull(apply, new ObfuscatedString(new long[]{-3707223168007515282L, 4483769241179701511L, -3064671491770702561L, -4543907023718404588L, 6475162304372868664L, -5743086599083222076L, -7381856764080113057L, -5160703772813653727L, 7083073246350665048L, -723193689436964857L, -2468908376632068639L, -102408225394353227L, 1435975247657622027L, 2305787831610398988L}).toString(), asyncFunction);
            return apply;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.AbstractTransformFuture
        public void setResult(ListenableFuture<? extends O> listenableFuture) {
            setFuture(listenableFuture);
        }
    }

    /* loaded from: classes2.dex */
    public static final class TransformFuture<I, O> extends AbstractTransformFuture<I, O, Function<? super I, ? extends O>, O> {
        public TransformFuture(ListenableFuture<? extends I> listenableFuture, Function<? super I, ? extends O> function) {
            super(listenableFuture, function);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.AbstractTransformFuture
        @ParametricNullness
        public /* bridge */ /* synthetic */ Object doTransform(Object obj, @ParametricNullness Object obj2) {
            return doTransform((Function<? super Function<? super I, ? extends O>, ? extends O>) obj, (Function<? super I, ? extends O>) obj2);
        }

        @Override // com.google.common.util.concurrent.AbstractTransformFuture
        public void setResult(@ParametricNullness O o) {
            set(o);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @ParametricNullness
        public O doTransform(Function<? super I, ? extends O> function, @ParametricNullness I i) {
            return function.apply(i);
        }
    }

    public AbstractTransformFuture(ListenableFuture<? extends I> listenableFuture, F f) {
        this.inputFuture = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
        this.function = (F) Preconditions.checkNotNull(f);
    }

    public static <I, O> ListenableFuture<O> create(ListenableFuture<I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction, Executor executor) {
        Preconditions.checkNotNull(executor);
        AsyncTransformFuture asyncTransformFuture = new AsyncTransformFuture(listenableFuture, asyncFunction);
        listenableFuture.addListener(asyncTransformFuture, MoreExecutors.rejectionPropagatingExecutor(executor, asyncTransformFuture));
        return asyncTransformFuture;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        maybePropagateCancellationTo(this.inputFuture);
        this.inputFuture = null;
        this.function = null;
    }

    @ParametricNullness
    @ForOverride
    public abstract T doTransform(F f, @ParametricNullness I i);

    @Override // com.google.common.util.concurrent.AbstractFuture
    @CheckForNull
    public String pendingToString() {
        ListenableFuture<? extends I> listenableFuture = this.inputFuture;
        F f = this.function;
        String pendingToString = super.pendingToString();
        String obfuscatedString = new ObfuscatedString(new long[]{4778121461477974272L}).toString();
        if (listenableFuture != null) {
            String valueOf = String.valueOf(listenableFuture);
            StringBuilder sb = new StringBuilder(valueOf.length() + 16);
            sb.append(new ObfuscatedString(new long[]{2637731061029949812L, -3621624011595201922L, 6758476335167054226L}).toString());
            sb.append(valueOf);
            obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3203747278417953453L, -6568671568434177252L}), sb);
        }
        if (f != null) {
            String valueOf2 = String.valueOf(f);
            StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf2.length() + AbstractC1320xaf50c7e8.m4356x1378447b(11, obfuscatedString), obfuscatedString);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-5888889362588569075L, 1062068145999383068L, 4914378054442543152L}).toString());
            m2938x1aebc6d9.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4204840974008501543L, 3869244427582942844L}), m2938x1aebc6d9);
        }
        if (pendingToString != null) {
            String valueOf3 = String.valueOf(obfuscatedString);
            if (pendingToString.length() != 0) {
                return valueOf3.concat(pendingToString);
            }
            return new String(valueOf3);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        ListenableFuture<? extends I> listenableFuture = this.inputFuture;
        F f = this.function;
        boolean isCancelled = isCancelled();
        boolean z2 = true;
        if (listenableFuture == null) {
            z = true;
        } else {
            z = false;
        }
        boolean z3 = isCancelled | z;
        if (f != null) {
            z2 = false;
        }
        if (z3 | z2) {
            return;
        }
        this.inputFuture = null;
        if (listenableFuture.isCancelled()) {
            setFuture(listenableFuture);
            return;
        }
        try {
            try {
                Object doTransform = doTransform(f, Futures.getDone(listenableFuture));
                this.function = null;
                setResult(doTransform);
            } catch (Throwable th) {
                try {
                    setException(th);
                } finally {
                    this.function = null;
                }
            }
        } catch (Error e) {
            setException(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e2) {
            setException(e2);
        } catch (ExecutionException e3) {
            setException(e3.getCause());
        }
    }

    @ForOverride
    public abstract void setResult(@ParametricNullness T t);

    public static <I, O> ListenableFuture<O> create(ListenableFuture<I> listenableFuture, Function<? super I, ? extends O> function, Executor executor) {
        Preconditions.checkNotNull(function);
        TransformFuture transformFuture = new TransformFuture(listenableFuture, function);
        listenableFuture.addListener(transformFuture, MoreExecutors.rejectionPropagatingExecutor(executor, transformFuture));
        return transformFuture;
    }
}
