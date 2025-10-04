package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
@GwtCompatible
/* loaded from: classes2.dex */
public class TrustedListenableFutureTask<V> extends FluentFuture.TrustedFuture<V> implements RunnableFuture<V> {

    @CheckForNull
    private volatile InterruptibleTask<?> task;

    /* loaded from: classes2.dex */
    public final class TrustedFutureInterruptibleAsyncTask extends InterruptibleTask<ListenableFuture<V>> {
        private final AsyncCallable<V> callable;

        public TrustedFutureInterruptibleAsyncTask(AsyncCallable<V> asyncCallable) {
            this.callable = (AsyncCallable) Preconditions.checkNotNull(asyncCallable);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public void afterRanInterruptiblyFailure(Throwable th) {
            TrustedListenableFutureTask.this.setException(th);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final boolean isDone() {
            return TrustedListenableFutureTask.this.isDone();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public String toPendingString() {
            return this.callable.toString();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public void afterRanInterruptiblySuccess(ListenableFuture<V> listenableFuture) {
            TrustedListenableFutureTask.this.setFuture(listenableFuture);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public ListenableFuture<V> runInterruptibly() {
            return (ListenableFuture) Preconditions.checkNotNull(this.callable.call(), new ObfuscatedString(new long[]{-6989940905359786041L, -2444515860549524988L, 3181158468956379942L, 1946077658924389093L, -4754074482253317787L, -6475560888903732027L, 3684673206198418272L, 7154044406364827329L, 2316631517695380049L, 981544988830632364L, 3935635989406708092L, -3246581933733107493L, -4054471619864990471L, -6534516037260517829L}).toString(), this.callable);
        }
    }

    /* loaded from: classes2.dex */
    public final class TrustedFutureInterruptibleTask extends InterruptibleTask<V> {
        private final Callable<V> callable;

        public TrustedFutureInterruptibleTask(Callable<V> callable) {
            this.callable = (Callable) Preconditions.checkNotNull(callable);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public void afterRanInterruptiblyFailure(Throwable th) {
            TrustedListenableFutureTask.this.setException(th);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public void afterRanInterruptiblySuccess(@ParametricNullness V v) {
            TrustedListenableFutureTask.this.set(v);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final boolean isDone() {
            return TrustedListenableFutureTask.this.isDone();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        @ParametricNullness
        public V runInterruptibly() {
            return this.callable.call();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public String toPendingString() {
            return this.callable.toString();
        }
    }

    public TrustedListenableFutureTask(Callable<V> callable) {
        this.task = new TrustedFutureInterruptibleTask(callable);
    }

    public static <V> TrustedListenableFutureTask<V> create(AsyncCallable<V> asyncCallable) {
        return new TrustedListenableFutureTask<>(asyncCallable);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public void afterDone() {
        InterruptibleTask<?> interruptibleTask;
        super.afterDone();
        if (wasInterrupted() && (interruptibleTask = this.task) != null) {
            interruptibleTask.interruptTask();
        }
        this.task = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    @CheckForNull
    public String pendingToString() {
        InterruptibleTask<?> interruptibleTask = this.task;
        if (interruptibleTask != null) {
            String valueOf = String.valueOf(interruptibleTask);
            StringBuilder sb = new StringBuilder(valueOf.length() + 7);
            sb.append(new ObfuscatedString(new long[]{-1608783913990577575L, 1855482274556321613L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8712805061910418991L, -5696361030459431916L}), sb);
        }
        return super.pendingToString();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        InterruptibleTask<?> interruptibleTask = this.task;
        if (interruptibleTask != null) {
            interruptibleTask.run();
        }
        this.task = null;
    }

    public static <V> TrustedListenableFutureTask<V> create(Callable<V> callable) {
        return new TrustedListenableFutureTask<>(callable);
    }

    public TrustedListenableFutureTask(AsyncCallable<V> asyncCallable) {
        this.task = new TrustedFutureInterruptibleAsyncTask(asyncCallable);
    }

    public static <V> TrustedListenableFutureTask<V> create(Runnable runnable, @ParametricNullness V v) {
        return new TrustedListenableFutureTask<>(Executors.callable(runnable, v));
    }
}
